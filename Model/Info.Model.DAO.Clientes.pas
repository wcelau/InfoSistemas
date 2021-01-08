unit Info.Model.DAO.Clientes;


interface

uses
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  System.JSON,
  REST.Json,


  System.Generics.Collections,
  Info.Model.Entity.Clientes;

type

  iDAO = interface
    ['{2A6C6ED9-40BC-4AF5-A635-26615D8DD321}']
    function Find : TObjectList<TCliente>; overload;
    function FindById(const aID : Integer) : TCliente; overload;
    function FindByCpf(const aCpf : String) : TCliente; overload;
    function FindByNome(const aNome : String) : TObjectList<TCliente>; overload;
    function Insert(const aCliente : TCliente) : Boolean; overload;
    function Update(const aCliente : TCliente) : Boolean; overload;
    function Delete(const aID : Integer) : Boolean; overload;
    function Exist(const aCpf : String) : Boolean; overload;
  end;

  TDAO = class(TInterfacedObject, iDAO)

  private
    FMemTable : TFDMemTable;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : TDAO;
    function Find : TObjectList<TCliente>; overload;
    function FindById(const aID : Integer) : TCliente; overload;
    function FindByCpf(const aCpf : String) : TCliente; overload;
    function FindByNome(const aNome : String) : TObjectList<TCliente>; overload;
    function Insert(const aCliente : TCliente) : Boolean; overload;
    function Update (const aCliente : TCliente) : Boolean; overload;
    function Delete (const aID : Integer) : Boolean; overload;
    function Exist(const aCpf : String) : Boolean; overload;
  end;

implementation

{ TDAO }

uses System.SysUtils;

constructor TDAO.Create;
begin
  FMemTable := TFDMemTable.Create(nil);
  FMemTable.Close;
  FMemTable.FieldDefs.Clear;
  FMemTable.FieldDefs.Add('Id',         ftAutoInc);
  FMemTable.FieldDefs.Add('Nome',       ftString, 100);
  FMemTable.FieldDefs.Add('Identidade', ftString, 20);
  FMemTable.FieldDefs.Add('CPF',        ftString, 14);
  FMemTable.FieldDefs.Add('Telefone',   ftString, 14);
  FMemTable.FieldDefs.Add('Email',      ftString, 100);
  FMemTable.FieldDefs.Add('Cep',        ftString, 10);
  FMemTable.FieldDefs.Add('Logradouro', ftString, 100);
  FMemTable.FieldDefs.Add('Numero',     ftString, 20);
  FMemTable.FieldDefs.Add('Complemento',ftString, 50);
  FMemTable.FieldDefs.Add('Bairro',     ftString, 100);
  FMemTable.FieldDefs.Add('Cidade',     ftString, 100);
  FMemTable.FieldDefs.Add('Estado',     ftString, 2);
  FMemTable.FieldDefs.Add('Pais',       ftString, 20);

  FMemTable.CreateDataSet;
end;

destructor TDAO.Destroy;
begin
  FMemTable.Close;
  FMemTable.Free;
  FMemTable := nil;
  inherited;
end;

function TDAO.Exist(const aCpf: String): Boolean;
begin
  if Assigned(FMemTable) then begin
    if aCpf.IsEmpty then begin
      if FMemTable.Active then
        Result := FMemTable.RecordCount > 0
      else
        Result := False;
    end
    else
      Result := FMemTable.Locate('CPF', aCpf.Trim, [])
  end
  else
    Result := False;
end;

class function TDAO.New: TDAO;
begin
  Result := Self.Create;
end;

function TDAO.Find: TObjectList<TCliente>;
var
  I : Integer;
begin
  Result := nil;
  if not Assigned(Result) then
    Result := TObjectList<TCliente>.Create;

  FMemTable.First;
  while not FMemTable.Eof do begin
    Result.Add(TCliente.Create);
    I := Pred(Result.Count);
    Result.Items[I].Id          := FMemTable.FieldByName('Id').asInteger;
    Result.Items[I].Nome        := FMemTable.FieldByName('Nome').asString;
    Result.Items[I].Identidade  := FMemTable.FieldByName('Identidade').asString;
    Result.Items[I].CPF         := FMemTable.FieldByName('CPF').asString;
    Result.Items[I].Telefone    := FMemTable.FieldByName('Telefone').asString;
    Result.Items[I].Email       := FMemTable.FieldByName('Email').asString;
    Result.Items[I].Cep         := FMemTable.FieldByName('Cep').asString;
    Result.Items[I].Logradouro  := FMemTable.FieldByName('Logradouro').asString;
    Result.Items[I].Numero      := FMemTable.FieldByName('Numero').asString;
    Result.Items[I].Complemento := FMemTable.FieldByName('Complemento').asString;
    Result.Items[I].Bairro      := FMemTable.FieldByName('Bairro').asString;
    Result.Items[I].Cidade      := FMemTable.FieldByName('Cidade').asString;
    Result.Items[I].Estado      := FMemTable.FieldByName('Estado').asString;
    Result.Items[I].Pais        := FMemTable.FieldByName('Pais').asString;
    FMemTable.Next;
  end;
  FMemTable.Filtered := False;

end;

function TDAO.FindByCpf(const aCpf : String) : TCliente;
begin
  Result := TCliente.Create;
  if aCpf.Trim <> EmptyStr then begin
    if FMemTable.Locate('CPF', aCpf.Trim, []) then begin
      Result.Id          := FMemTable.FieldByName('Id').asInteger;
      Result.Nome        := FMemTable.FieldByName('Nome').asString;
      Result.Identidade  := FMemTable.FieldByName('Identidade').asString;
      Result.CPF         := FMemTable.FieldByName('CPF').asString;
      Result.Telefone    := FMemTable.FieldByName('Telefone').asString;
      Result.Email       := FMemTable.FieldByName('Email').asString;
      Result.Cep         := FMemTable.FieldByName('Cep').asString;
      Result.Logradouro  := FMemTable.FieldByName('Logradouro').asString;
      Result.Numero      := FMemTable.FieldByName('Numero').asString;
      Result.Complemento := FMemTable.FieldByName('Complemento').asString;
      Result.Bairro      := FMemTable.FieldByName('Bairro').asString;
      Result.Cidade      := FMemTable.FieldByName('Cidade').asString;
      Result.Estado      := FMemTable.FieldByName('Estado').asString;
      Result.Pais        := FMemTable.FieldByName('Pais').asString;
    end
  end;
end;

function TDAO.FindById(const aID: Integer): TCliente;
begin
  Result := TCliente.Create;
  if aID > 0 then begin
    if FMemTable.Locate('Id', aID, []) then begin
      Result.Id          := FMemTable.FieldByName('Id').asInteger;
      Result.Nome        := FMemTable.FieldByName('Nome').asString;
      Result.Identidade  := FMemTable.FieldByName('Identidade').asString;
      Result.CPF         := FMemTable.FieldByName('CPF').asString;
      Result.Telefone    := FMemTable.FieldByName('Telefone').asString;
      Result.Email       := FMemTable.FieldByName('Email').asString;
      Result.Cep         := FMemTable.FieldByName('Cep').asString;
      Result.Logradouro  := FMemTable.FieldByName('Logradouro').asString;
      Result.Numero      := FMemTable.FieldByName('Numero').asString;
      Result.Complemento := FMemTable.FieldByName('Complemento').asString;
      Result.Bairro      := FMemTable.FieldByName('Bairro').asString;
      Result.Cidade      := FMemTable.FieldByName('Cidade').asString;
      Result.Estado      := FMemTable.FieldByName('Estado').asString;
      Result.Pais        := FMemTable.FieldByName('Pais').asString;
    end
  end;
end;

function TDAO.FindByNome(const aNome : String) : TObjectList<TCliente>;
var
  I : Integer;
begin
  Result := nil;
  if not Assigned(Result) then
   Result := TObjectList<TCliente>.Create;
  if aNome.Trim <> EmptyStr then begin
    FMemTable.Filter   := 'UPPER(Nome) LIKE ''%' + UpperCase(aNome.Trim) + '%''';
    FMemTable.Filtered := True;
    FMemTable.First;
    while not FMemTable.Eof do begin
      Result.Add(TCliente.Create);
      I := Pred(Result.Count);
      Result.Items[I].Id          := FMemTable.FieldByName('Id').asInteger;
      Result.Items[I].Nome        := FMemTable.FieldByName('Nome').asString;
      Result.Items[I].Identidade  := FMemTable.FieldByName('Identidade').asString;
      Result.Items[I].CPF         := FMemTable.FieldByName('CPF').asString;
      Result.Items[I].Telefone    := FMemTable.FieldByName('Telefone').asString;
      Result.Items[I].Email       := FMemTable.FieldByName('Email').asString;
      Result.Items[I].Cep         := FMemTable.FieldByName('Cep').asString;
      Result.Items[I].Logradouro  := FMemTable.FieldByName('Logradouro').asString;
      Result.Items[I].Numero      := FMemTable.FieldByName('Numero').asString;
      Result.Items[I].Complemento := FMemTable.FieldByName('Complemento').asString;
      Result.Items[I].Bairro      := FMemTable.FieldByName('Bairro').asString;
      Result.Items[I].Cidade      := FMemTable.FieldByName('Cidade').asString;
      Result.Items[I].Estado      := FMemTable.FieldByName('Estado').asString;
      Result.Items[I].Pais        := FMemTable.FieldByName('Pais').asString;
    end;
    FMemTable.Filtered := False;
  end;
end;

function TDAO.Insert(const aCliente : TCliente) : Boolean;
begin
  if aCliente <> nil then begin
    try
      FMemTable.Insert;
      //FMemTable.FieldByName('Id').asInteger         := lId;
      FMemTable.FieldByName('Nome').asString        := aCliente.Nome.Trim;
      FMemTable.FieldByName('Identidade').asString  := aCliente.Identidade.Trim;
      FMemTable.FieldByName('CPF').asString         := aCliente.CPF.Trim;
      FMemTable.FieldByName('Telefone').asString    := aCliente.Telefone.Trim;
      FMemTable.FieldByName('Email').asString       := aCliente.Email.Trim;
      FMemTable.FieldByName('Cep').asString         := aCliente.Cep.Trim;
      FMemTable.FieldByName('Logradouro').asString  := aCliente.Logradouro.Trim;
      FMemTable.FieldByName('Numero').asString      := aCliente.Numero.Trim;
      FMemTable.FieldByName('Complemento').asString := aCliente.Complemento.Trim;
      FMemTable.FieldByName('Bairro').asString      := aCliente.Bairro.Trim;
      FMemTable.FieldByName('Cidade').asString      := aCliente.Cidade.Trim;
      FMemTable.FieldByName('Estado').asString      := aCliente.Estado.Trim;
      FMemTable.FieldByName('Pais').asString        := aCliente.Pais.Trim;
      FMemTable.Post;
      Result := True;
    except
      Result := False
    end;
  end
  else
    Result := False;
end;

function TDAO.Delete (const aID : Integer) : Boolean;
begin
  if aID > 0 then begin
    try
      if FMemTable.Locate('Id', aID, []) then begin
        FMemTable.Delete;
        Result := True;
      end
      else
        Result := False;
    except
      Result := False;
    end;
  end
  else
    Result := False;
end;

function TDAO.Update (const aCliente : TCliente) : Boolean;
begin
  if aCliente <> nil then begin
    try
      if FMemTable.Locate('CPF', aCliente.CPF.Trim, []) then begin
        FMemTable.Edit;
        FMemTable.FieldByName('Nome').asString        := aCliente.Nome.Trim;
        FMemTable.FieldByName('Identidade').asString  := aCliente.Identidade.Trim;
        FMemTable.FieldByName('CPF').asString         := aCliente.CPF.Trim;
        FMemTable.FieldByName('Telefone').asString    := aCliente.Telefone.Trim;
        FMemTable.FieldByName('Email').asString       := aCliente.Email.Trim;
        FMemTable.FieldByName('Cep').asString         := aCliente.Cep.Trim;
        FMemTable.FieldByName('Logradouro').asString  := aCliente.Logradouro.Trim;
        FMemTable.FieldByName('Numero').asString      := aCliente.Numero.Trim;
        FMemTable.FieldByName('Complemento').asString := aCliente.Complemento.Trim;
        FMemTable.FieldByName('Bairro').asString      := aCliente.Bairro.Trim;
        FMemTable.FieldByName('Cidade').asString      := aCliente.Cidade.Trim;
        FMemTable.FieldByName('Estado').asString      := aCliente.Estado.Trim;
        FMemTable.FieldByName('Pais').asString        := aCliente.Pais.Trim;
        FMemTable.Post;
      end;
      Result := True;
    except
      Result := False;
    end;
  end
  else
    Result := False;
end;

end.
