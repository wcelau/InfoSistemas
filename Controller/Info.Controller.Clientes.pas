unit Info.Controller.Clientes;

interface

uses
  System.JSON,
  Info.Model.Entity.Clientes,
  Info.Model.DAO.Clientes,
  Info.Model.DAO.Cep,
  Info.Model.Entity.Cep,
  System.Generics.Collections,
  Xml.xmldom,
  Xml.XMLIntf,
  Xml.XMLDoc, Info.SendMail;

type
  iCtlCliente = interface
    ['{BB5E8C7C-ACD5-4513-B6F3-BE458F644958}']
    function Find : TObjectList<TCliente>; overload;
    function FindByCpf(const aCpf : String) : TCliente; overload;
    function FindByCep(const aCep : String) : TCep; overload;
    function Insert(const aCliente : TCliente) : Boolean; overload;
    function Update(const aCliente : TCliente) : Boolean; overload;
    function Delete (const aID : Integer) : Boolean; overload;
    function Exist(const aCpf : String) : Boolean; overload;
    function GenerateXmlEmail(const aEmail : String): Boolean; overload;
    function SendMail(const aCliente : TCliente; aXML : String; const aEmail : String) : Boolean; overload;

  end;

  TCtlCliente = class(TInterfacedObject, iCtlCliente)
  strict private
    class var FInstance : TCtlCliente;
  private
    FDAO : TDAO;
  public
    constructor Create;
    destructor Destroy; override;
    class function GetInstance : TCtlCliente;
    function Find : TObjectList<TCliente>; overload;
    function FindById(const aID : Integer) : TCliente; overload;
    function FindByCpf(const aCpf : String) : TCliente; overload;
    function FindByCep(const aCep : String) : TCep; overload;
    function Insert(const aCliente : TCliente) : Boolean; overload;
    function Update(const aCliente : TCliente) : Boolean; overload;
    function Delete (const aID : Integer) : Boolean; overload;
    function Exist(const aCpf : String) : Boolean; overload;
    function GenerateXmlEmail(const aEmail : String) : Boolean; overload;
    function SendMail(const aCliente : TCliente; aXML : String; const aEmail : String) : Boolean; overload;
  end;

implementation

uses System.SysUtils,  Info.View.Clientes, System.Classes, Vcl.Forms,
  Winapi.ActiveX;


{ TiCtlCliente }

constructor TCtlCliente.Create;
begin
  FDAO := TDAO.New;
end;

function TCtlCliente.Delete(const aID: Integer): Boolean;
begin
  Result := FDAO.Delete(aId);
end;

destructor TCtlCliente.Destroy;
begin
  FInstance := nil;
  FDAO.Free;
  FDAO := nil;
  inherited;
end;

function TCtlCliente.Exist(const aCpf: String): Boolean;
begin
  Result := FDAO.Exist(aCpf);
end;

function TCtlCliente.Find: TObjectList<TCliente>;
begin
  Result := FDAO.Find;
end;

function TCtlCliente.FindByCep(const aCep: String) : TCep;
var
  FDAOCep : TDAOCep;
begin
  FDAOCep := TDAOCep.New;
  try
    Result := FDAOCep.FindByCep(aCep)

  finally
    if Assigned(FDAOCep) then
      FDAOCep.Free;
  end;
end;

function TCtlCliente.FindByCpf(const aCpf: String) : TCliente;
begin
  Result := nil;
  if aCpf <> EmptyStr then
    Result := FDAO.FindByCpf(aCpf);
end;

function TCtlCliente.FindById(const aID: Integer): TCliente;
begin
  Result := nil;
  if aID > 0 then
    Result := FDAO.FindById(aID);
end;

function TCtlCliente.GenerateXmlEmail(const aEmail : String) : Boolean;
var
  XmlDoc      : TXMLDocument;
  RootNode    : IXMLNode;
  ClienteNode : IXMLNode;
  EnderecoNode: IXMLNode;

  FClientes   : TObjectList<TCliente>;
  aCliente    : TCliente;

  sXML        : string;
begin
  Result    := False;
  FClientes := Self.Find;
  aCliente  := nil;
  CoInitialize(nil);
  try
    XmlDoc := TXMLDocument.Create(nil);
    try
      XmlDoc.Active        := True;
      XmlDoc.Version       := '1.0';
      XmlDoc.Encoding      := 'UTF-16';
      XmlDoc.Options       := [];
      RootNode := XmlDoc.AddChild('Clientes');

      for aCliente in FClientes do begin
        ClienteNode := XmlDoc.CreateNode('Cliente');
        ClienteNode.AddChild('Id').Text := aCliente.Id.ToString;
        ClienteNode.AddChild('Nome').Text := aCliente.Nome;
        ClienteNode.AddChild('Identidade').Text := aCliente.Identidade;
        ClienteNode.AddChild('CPF').Text := aCliente.CPF;
        ClienteNode.AddChild('Telefone').Text := aCliente.Telefone;
        ClienteNode.AddChild('Email').Text := aCliente.Email;

        EnderecoNode := ClienteNode.AddChild('Endereco');
        EnderecoNode.AddChild('Cep').Text := aCliente.Cep;
        EnderecoNode.AddChild('Logradouro').Text := aCliente.Logradouro;
        EnderecoNode.AddChild('Numero').Text := aCliente.Numero;
        EnderecoNode.AddChild('Complemento').Text := aCliente.Complemento;
        EnderecoNode.AddChild('Bairro').Text := aCliente.Bairro;
        EnderecoNode.AddChild('Cidade').Text := aCliente.Cidade;
        EnderecoNode.AddChild('Estado').Text := aCliente.Estado;
        EnderecoNode.AddChild('Pais').Text := aCliente.Pais;
        RootNode.ChildNodes.Add(ClienteNode);
      end;
      sXML := StringReplace(XmlDoc.XML.Text,'UTF-16','UTF-8',[rfReplaceAll]);

      sXML := StringReplace(StringReplace(sXML, #10, '', [rfReplaceAll]), #13, '', [rfReplaceAll]);

      if FClientes.Count = 1 then
        Result := SendMail(aCliente, sXML, aEmail)
      else
        Result := SendMail(nil, sXML, aEmail);
    finally
      XmlDoc.Active := False;
     // XmlDoc.Free;
    end;
  finally
    FClientes.Free;
    FClientes := nil;
  end;
end;

class function TCtlCliente.GetInstance: TCtlCliente;
begin
  if not Assigned(FInstance) then
    FInstance := TCtlCliente.Create;
  Result := FInstance;
end;

function TCtlCliente.Insert(const aCliente: TCliente): Boolean;
begin
  if Assigned(aCliente) then begin
    Result := FDAO.Insert(aCliente);
  end
  else
    Result := False;
end;

function TCtlCliente.SendMail(const aCliente: TCliente; aXML : String; const aEmail : String): Boolean;
var
  FSendMail : TSendEmail;
  FMensagem : TStrings;
  sFile     : String;
begin
  Result := False;
  sFile     := ExtractFilePath(Application.ExeName) + 'Clientes_' + FormatDateTime('yyyymmddhhnnsszzz',Now) + '.xml';
  FMensagem := TStringList.Create;
  FMensagem.Clear;
  if not aXML.IsEmpty then begin
    FMensagem.Text := aXML;
  FMensagem.SaveToFile(sFile);
  FMensagem.Clear;
  end;
  try
    FMensagem.Add('<p><strong><font size="4" face="Arial, Helvetica, sans-serif"><u>Cadastro de Clientes</u></font></strong></p>');
    FMensagem.Add('Clientes cadastrados via aplicação de testes');
    if Assigned(aCliente) then begin
      FMensagem.Add('<br><strong>Id:</strong>&nbsp;&nbsp; '+ aCliente.Id.ToString);
      FMensagem.Add('<br><strong>Nome:</strong>&nbsp;&nbsp; '+ aCliente.Nome);
      FMensagem.Add('<br><strong>Identidade:</strong>&nbsp;&nbsp; '+ aCliente.Identidade);
      FMensagem.Add('<br><strong>CPF:</strong>&nbsp;&nbsp; '+ aCliente.CPF);
      FMensagem.Add('<br><strong>Telefone:</strong>&nbsp;&nbsp; '+ aCliente.Telefone);
      FMensagem.Add('<br><strong>Email:</strong>&nbsp;&nbsp; '+ aCliente.Email);
      FMensagem.Add('<br><br><strong>Endereco</strong>');
      FMensagem.Add('<br><strong>Cep:</strong>&nbsp;&nbsp; '+ aCliente.Cep);
      FMensagem.Add('<br><strong>Logradouro:</strong>&nbsp;&nbsp; '+ aCliente.Logradouro);
      FMensagem.Add('<br><strong>Numero:</strong>&nbsp;&nbsp; '+ aCliente.Numero);
      FMensagem.Add('<br><strong>Complemento:</strong>&nbsp;&nbsp; '+ aCliente.Complemento);
      FMensagem.Add('<br><strong>Bairro:</strong>&nbsp;&nbsp; '+ aCliente.Bairro);
      FMensagem.Add('<br><strong>Cidade:</strong>&nbsp;&nbsp; '+ aCliente.Cidade);
      FMensagem.Add('<br><strong>Estado:</strong>&nbsp;&nbsp; '+ aCliente.Estado);
      FMensagem.Add('<br><strong>Pais:</strong>&nbsp;&nbsp; '+ aCliente.Pais);
      FMensagem.Add('');
    end;

     FSendMail := TSendEmail.Create(nil);
     try
       //Configurei duas possibilidades de email
       //Google
       FSendMail.Host     := 'smtp.gmail.com';
       FSendMail.De       := 'testeinfowcelau@gmail.com';
       FSendMail.Usuario  := 'testeinfowcelau@gmail.com' ;
       FSendMail.Senha    := '@testeInfo' ;
       //Yahoo
      { FSendMail.Host     := 'smtp.mail.yahoo.com';
       FSendMail.De       := 'testeinfowcmg@yahoo.com';
       FSendMail.Usuario  := 'testeinfowcmg@yahoo.com' ;
       FSendMail.Senha    := 'jnfcrrsmjcymrsla';   }

       FSendMail.Para     := aEmail.Trim;
       FSendMail.Assunto  :=  'Teste Wenceslau';
       FSendMail.Mensagem := FMensagem;
       FSendMail.Porta    := 587;
       if FileExists(sFile) then
         FSendMail.Anexo  := sFile
       else
         FSendMail.Anexo  := EmptyStr;
       if ((FSendMail.Host = EmptyStr) or (FSendMail.De = EmptyStr) or (FSendMail.Usuario = EmptyStr) or
           (FSendMail.Senha = EmptyStr) or (FSendMail.Porta = 0)) then begin
         Result := False;
         raise Exception.Create('Favor configurar a conta para envio de email antes de prosseguir.'+#13
                               +'A Configuração se encontra na Unit Info.Controller.Clientes');
       end;

       Result := FSendMail.Enviar()
     finally
       FSendMail.Free;
       FSendMail := nil;
     end;
  finally
    FMensagem.Free;
    FMensagem := nil;
  end;
end;

function TCtlCliente.Update(const aCliente: TCliente): Boolean;
begin
  if Assigned(aCliente) then begin
    Result := FDAO.Update(aCliente);
  end
  else
    Result := False;
end;

end.
