unit Info.View.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Mask,
  uFuncoes, System.Actions, Vcl.ActnList,
  Info.Model.Entity.Cep,
  Info.Controller.Clientes,
  Info.Model.Entity.Clientes, Info.View.Busca, Vcl.WinXCtrls;

type
  TfrmClientes = class(TForm)
    pnlBack: TPanel;
    pnlNome: TPanel;
    shpNome: TShape;
    edtNome: TEdit;
    pnlRg: TPanel;
    shpRg: TShape;
    lblRg: TLabel;
    edtRG: TEdit;
    pnlCpf: TPanel;
    shpCpf: TShape;
    lblCpf: TLabel;
    pnlTelefone: TPanel;
    shpTelefone: TShape;
    lblTelefone: TLabel;
    pnlEmal: TPanel;
    shpEmal: TShape;
    lblEmal: TLabel;
    edtEmail: TEdit;
    edtPais: TMaskEdit;
    lblNome: TLabel;
    lblEnderco: TLabel;
    pnlCep: TPanel;
    shpCep: TShape;
    lblCep: TLabel;
    shpCepSearch: TShape;
    spbShortCut: TSpeedButton;
    imgMenuSearch: TImage;
    pnlLogradouro: TPanel;
    shpLogradouro: TShape;
    lblLogradouro: TLabel;
    edtLogradouro: TEdit;
    pnlNumero: TPanel;
    shpNumero: TShape;
    lblNumero: TLabel;
    edtNumero: TEdit;
    pnlComplemento: TPanel;
    shpComplemento: TShape;
    lblComplemento: TLabel;
    edtComplemento: TEdit;
    pnlBairro: TPanel;
    shpBairro: TShape;
    lblBairro: TLabel;
    edtBairro: TEdit;
    pnlCidade: TPanel;
    shpCidade: TShape;
    lblCidade: TLabel;
    edtCidade: TMaskEdit;
    pnlEstado: TPanel;
    shpEstado: TShape;
    lblEstado: TLabel;
    pnlPais: TPanel;
    shpPais: TShape;
    lblPais: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    btnIncShp: TShape;
    btnAltShp: TShape;
    btnExcSph: TShape;
    btnConSph: TShape;
    btnLocSph: TShape;
    btnIncImg: TImage;
    btnIncLbl: TLabel;
    btnAltImg: TImage;
    btnAltLbl: TLabel;
    btnExcImg: TImage;
    btnExcLbl: TLabel;
    btnConImg: TImage;
    btnConLbl: TLabel;
    btnLocLbl: TLabel;
    btnLocImg: TImage;
    btnCanLbl: TLabel;
    btnCanSph: TShape;
    btnCanImg: TImage;
    btnSaiLbl: TLabel;
    btnSaiSph: TShape;
    btnSaiImg: TImage;
    btnIncSpb: TSpeedButton;
    btnAltSpb: TSpeedButton;
    btnExcSpb: TSpeedButton;
    btnCanSpb: TSpeedButton;
    btnConSpb: TSpeedButton;
    btnLocSpb: TSpeedButton;
    btnSaiSpb: TSpeedButton;
    pnlButtons: TPanel;
    aclClientes: TActionList;
    actIncluir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actConfirmar: TAction;
    actLocalizar: TAction;
    actSair: TAction;
    edtCpf: TEdit;
    edtTelefone: TEdit;
    edtCep: TEdit;
    actBuscaCep: TAction;
    btnMailSpb: TSpeedButton;
    btnMailShp: TShape;
    btnMailLbl: TLabel;
    btnMailImg: TImage;
    actEmailSend: TAction;
    edtEstado: TMaskEdit;
    pnlLoading: TPanel;
    ActivityIndicator: TActivityIndicator;
    lblLoadingMgs: TLabel;
    lblLoadingMgsInfo: TLabel;
    emailSendPnl: TPanel;
    emailSendShp: TShape;
    emailSendLbl: TLabel;
    emailSendEdt: TEdit;
    emailSendSpbCan: TSpeedButton;
    emailSendLblCan: TLabel;
    emailSendImgCan: TImage;
    emailSendSpbSend: TSpeedButton;
    emailSendLblSend: TLabel;
    emailSendImgSend: TImage;
    actEmail: TAction;
    actEmailCanc: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure edtCpfKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtTelefoneKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtTelefoneExit(Sender: TObject);
    procedure edtCpfExit(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCepKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCepExit(Sender: TObject);
    procedure actBuscaCepExecute(Sender: TObject);
    procedure actEmailSendExecute(Sender: TObject);
    procedure actEmailExecute(Sender: TObject);
    procedure actEmailCancExecute(Sender: TObject);
  private
    { Private declarations }
    FCliente    : TCliente;
    FCtlCliente : TCtlCliente;
    OperType    : TOperType;
    procedure ClearObj;
    procedure EnableObj(Value : Boolean);
    function Validate(aCliente : TCliente) : Boolean;
    function ValidateUf(aUF : String) : Boolean;
    procedure SetCliente;
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}



{ TfrmClientes }

procedure TfrmClientes.actAlterarExecute(Sender: TObject);
begin
  emailSendPnl.Visible := False;
  emailSendEdt.Clear;
  OperType := opUpdate;
  EnableObj(True);
  edtNome.SetFocus;
end;

procedure TfrmClientes.actCancelarExecute(Sender: TObject);
begin
  emailSendPnl.Visible := False;
  emailSendEdt.Clear;
  if OperType = opInsert then begin
    ClearObj;
    OperType := opNone;
  end
  else
    OperType := opBrownser;
  EnableObj(False);
end;

procedure TfrmClientes.actConfirmarExecute(Sender: TObject);
begin
  emailSendPnl.Visible := False;
  emailSendEdt.Clear;
  if not Assigned(FCliente) then
    FCliente := TCliente.Create;

  if OperType = opInsert then
    FCliente.Id          := 0;
  FCliente.Nome        := Trim(edtNome.Text);
  FCliente.Identidade  := Trim(edtRG.Text);
  FCliente.CPF         := Trim(edtCpf.Text);
  FCliente.Telefone    := Trim(edtTelefone.Text);
  FCliente.Email       := Trim(edtEmail.Text);
  FCliente.Cep         := Trim(edtCep.Text);
  FCliente.Logradouro  := Trim(edtLogradouro.Text);
  FCliente.Numero      := Trim(edtNumero.Text);
  FCliente.Complemento := Trim(edtComplemento.Text);
  FCliente.Bairro      := Trim(edtBairro.Text);
  FCliente.Cidade      := Trim(edtCidade.Text);
  FCliente.Estado      := Trim(edtEstado.Text);
  FCliente.Pais        := Trim(edtPais.Text);

  if Validate(FCliente) then begin
    case OperType of
      opInsert: begin
        if FCtlCliente.Insert(FCliente) then begin
          MessageDialog('Cliente INSERIDO com sucesso.',itSucess, Application.MainForm);
          //Enviar o email
          OperType := opNone;
          ClearObj;
          EnableObj(False)
        end
        else
          MessageDialog('Erro ao inserir o cliente.' + #13 + 'Tente novamente em alguns instantes.',itError, Application.MainForm);
      end;
      opUpdate: begin
        if FCtlCliente.Update(FCliente) then begin
          MessageDialog('Cliente ALTERADO com sucesso.',itSucess, Application.MainForm);
          //Enviar o email
          OperType := opNone;
          ClearObj;
          EnableObj(False)
        end
        else
          MessageDialog('Erro ao alterar o cliente.' + #13 + 'Tente novamente em alguns instantes.',itError, Application.MainForm);
      end;
    end;
  end;
end;

procedure TfrmClientes.actEmailCancExecute(Sender: TObject);
begin
  emailSendPnl.Visible     := False;
  emailSendEdt.Clear
end;

procedure TfrmClientes.actEmailExecute(Sender: TObject);
begin
  emailSendPnl.Visible     := True;
  emailSendEdt.Enabled     := True;
  emailSendSpbSend.Enabled := True;
  emailSendSpbCan.Enabled  := True;
  if Trim(edtEmail.Text) <> EmptyStr then
    emailSendEdt.Text := Trim(edtEmail.Text);
  emailSendEdt.SetFocus;
end;

procedure TfrmClientes.actEmailSendExecute(Sender: TObject);
begin
  if not IsValidEmail(Trim(emailSendEdt.Text)) then begin
    MessageDialog('E-mail de destino inválido .', itSucess, Application.MainForm);
    emailSendEdt.SetFocus;
    Exit;
  end;

  emailSendPnl.Visible      := False;
  ActivityIndicator.Animate := True;
  pnlLoading.Visible        := True;
  lblLoadingMgsInfo.Caption := 'Enviando e-mail.';

  TThread.CreateAnonymousThread(procedure begin
    try
      if FCtlCliente.GenerateXmlEmail(Trim(emailSendEdt.Text)) then begin
        TThread.Synchronize(TThread.CurrentThread, procedure
          begin
            ActivityIndicator.Animate := False;
            pnlLoading.Visible       := False;
            MessageDialog('E-mail enviado com sucesso.', itSucess, Application.MainForm);
          end);
      end
      else begin
        TThread.Synchronize(TThread.CurrentThread, procedure
          begin
            ActivityIndicator.Animate := False;
            pnlLoading.Visible        := False;
          end);
      end;

    except on E: Exception do
      TThread.Synchronize(TThread.CurrentThread, procedure
        begin
          ActivityIndicator.Animate := False;
          pnlLoading.Visible        := False;
          MessageDialog(e.Message, itError, Application.MainForm)
        end);
    end;
  end).Start;

end;

procedure TfrmClientes.actExcluirExecute(Sender: TObject);
begin
  emailSendPnl.Visible := False;
  emailSendEdt.Clear;
  if Assigned(FCliente) then begin
    if FCliente.Id > 0 then begin
      if MessageDialog('Deseja mesmo excluir este cliente?'+#13+'Este processo é irreverssível.',itConfirm, Application.MainForm) = mrOk then begin
        OperType := opDelete;
        FCtlCliente.Delete(FCliente.Id);
        OperType := opNone;
        ClearObj;
        EnableObj(False);
        MessageDialog('Cliente EXCLUÍDO com sucesso.', itSucess, Application.MainForm);
      end
      else begin
        MessageDialog('Exclusão cancelada.', itInfo, Application.MainForm);
        OperType := opBrownser;
      end;
    end
    else
      MessageDialog('Não foi localizado cliente para a exlusão.', itInfo, Application.MainForm);
  end;
end;

procedure TfrmClientes.actIncluirExecute(Sender: TObject);
begin
  emailSendPnl.Visible := False;
  emailSendEdt.Clear;
  ClearObj;
  OperType := opInsert;
  EnableObj(True);
  edtNome.SetFocus;
end;

procedure TfrmClientes.actLocalizarExecute(Sender: TObject);
var
  lCliente : TCliente;
begin
  emailSendPnl.Visible := False;
  emailSendEdt.Clear;
  Application.CreateForm(TfrmBusca, frmBusca);
  frmBusca.FCtrlCliente := FCtlCliente;
  OpenModal(frmBusca, Self);
  try
    if frmBusca.ModalResult = mrOk then begin
      ClearObj;
      lCliente := FCtlCliente.FindByCpf(frmBusca.memClientesCPF.AsString);
      if Assigned(lCliente) then begin
        FCliente.Id          := lCliente.Id;
        FCliente.Nome        := lCliente.Nome;
        FCliente.Identidade  := lCliente.Identidade;
        FCliente.CPF         := lCliente.CPF;
        FCliente.Telefone    := lCliente.Telefone;
        FCliente.Email       := lCliente.Email;
        FCliente.Cep         := lCliente.Cep;
        FCliente.Logradouro  := lCliente.Logradouro;
        FCliente.Numero      := lCliente.Numero;
        FCliente.Complemento := lCliente.Complemento;
        FCliente.Bairro      := lCliente.Bairro;
        FCliente.Cidade      := lCliente.Cidade;
        FCliente.Estado      := lCliente.Estado;
        FCliente.Pais        := lCliente.Pais;
        lCliente.Free;
        lCliente := nil;
        SetCliente;
      end;
      OperType := opBrownser;
      EnableObj(False);
    end;
  finally
    if Assigned(frmBusca) then
      FreeAndNil(frmBusca);
  end;
end;

procedure TfrmClientes.actSairExecute(Sender: TObject);
begin
  emailSendPnl.Visible := False;
  emailSendEdt.Clear;
  ClearObj;
  OperType := opBrownser;
  Close;
end;

procedure TfrmClientes.ClearObj;
var
  I: Integer;
  Comp : TComponent;
begin
  for I := 0 to Pred(Self.ComponentCount) do begin
    Comp := Self.Components[I];
    if Comp is TEdit then
      TEdit(Comp).Clear
    else if Comp is TMaskEdit then
      TMaskEdit(Comp).Clear
    else if Comp is TComboBox then
      TComboBox(Comp).ItemIndex := 0;
  end;
  OperType := opNone;

  if Assigned(FCliente) then begin
    FCliente.Id          := 0;
    FCliente.Nome        := EmptyStr;
    FCliente.Identidade  := EmptyStr;
    FCliente.CPF         := EmptyStr;
    FCliente.Telefone    := EmptyStr;
    FCliente.Email       := EmptyStr;
    FCliente.Cep         := EmptyStr;
    FCliente.Logradouro  := EmptyStr;
    FCliente.Numero      := EmptyStr;
    FCliente.Complemento := EmptyStr;
    FCliente.Bairro      := EmptyStr;
    FCliente.Cidade      := EmptyStr;
    FCliente.Estado      := EmptyStr;
    FCliente.Pais        := EmptyStr;
  end;

end;

procedure TfrmClientes.edtCepExit(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) in [8, 9] then begin
    (Sender as TEdit).Text := FormatCep((Sender as TEdit).Text);
    if OperType in [opInsert, opUpdate] then begin
      if Trim(edtLogradouro.Text) <> EmptyStr then begin
        if MessageDialog('Deseja atualizar os dados de endereço?',itConfirm, Application.MainForm) = mrOk then
          actBuscaCep.Execute;
      end
      else
        actBuscaCep.Execute;
    end;
  end
  else if Length((Sender as TEdit).Text) > 0 then begin
    MessageDialog('CEP inválido.', itWarning, Application.MainForm);
    (Sender as TEdit).SetFocus;
  end;
end;

procedure TfrmClientes.edtCepKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length(FormatClear((Sender as TEdit).Text)) = 8 then begin
    (Sender as TEdit).Text := FormatCep((Sender as TEdit).Text);
    SendMessage(Self.Handle, WM_NEXTDLGCTL, 0, 0);
  end
  else
    (Sender as TEdit).Text := FormatClear((Sender as TEdit).Text);
end;

procedure TfrmClientes.edtCpfExit(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) > 0 then begin
    if not isValidCPF((Sender as TEdit).Text) then begin
      MessageDialog('CPF inválido.', itWarning, Application.MainForm);
      (Sender as TEdit).SetFocus;
    end;
  end;
end;

procedure TfrmClientes.edtCpfKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length((Sender as TEdit).Text) = 11 then begin
    (Sender as TEdit).Text := FormatCpf((Sender as TEdit).Text);
    SendMessage(Self.Handle, WM_NEXTDLGCTL, 0, 0);
  end
  else
    (Sender as TEdit).Text := FormatClear((Sender as TEdit).Text);
end;

procedure TfrmClientes.edtEmailExit(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) > 0 then begin
    if not IsValidEmail((Sender as TEdit).Text) then begin
      MessageDialog('e-mail inválido.', itWarning, Application.MainForm);
      (Sender as TEdit).SetFocus;
    end;
  end;
end;

procedure TfrmClientes.edtTelefoneExit(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) > 9 then begin
    (Sender as TEdit).Text := FormatTel((Sender as TEdit).Text)
  end
  else if Length((Sender as TEdit).Text) > 0 then begin
    MessageDialog('Telefone inválido.', itWarning, Application.MainForm);
    (Sender as TEdit).SetFocus;
  end;
end;

procedure TfrmClientes.edtTelefoneKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Length((Sender as TEdit).Text) = 11 then begin
    (Sender as TEdit).Text := FormatTel((Sender as TEdit).Text);
    SendMessage(Self.Handle, WM_NEXTDLGCTL, 0, 0);
  end
  else
    (Sender as TEdit).Text := FormatClear((Sender as TEdit).Text);
end;

procedure TfrmClientes.EnableObj(Value : Boolean);
var
  I: Integer;
  Comp : TComponent;
begin
  for I := 0 to Pred(Self.ComponentCount) do begin
    Comp := Self.Components[I];
    if Comp is TPanel then begin
      if TPanel(Comp).Tag = 100 then
      TPanel(Comp).Enabled := Value
    end;
  end;
  case OperType of
    opInsert, opUpdate, opDelete  :
      begin
        btnIncSpb.Enabled := False;
        btnAltSpb.Enabled := False;
        btnExcSpb.Enabled := False;
        btnCanSpb.Enabled := True;
        btnConSpb.Enabled := True;
        btnLocSpb.Enabled := False;
        btnSaiSpb.Enabled := False;

        btnIncShp.Brush.Color := $00C1C1C1;
        btnAltShp.Brush.Color := $00C1C1C1;
        btnExcSph.Brush.Color := $00C1C1C1;
        btnCanSph.Brush.Color := $004B2B18;
        btnConSph.Brush.Color := $004B2B18;
        btnLocSph.Brush.Color := $00C1C1C1;
        btnSaiSph.Brush.Color := $00C1C1C1;
      end ;
    opBrownser:
      begin
        btnIncSpb.Enabled := True;
        btnAltSpb.Enabled := True;
        btnExcSpb.Enabled := True;
        btnCanSpb.Enabled := False;
        btnConSpb.Enabled := False;
        btnLocSpb.Enabled := True;
        btnSaiSpb.Enabled := True;

        btnIncShp.Brush.Color := $004B2B18;
        btnAltShp.Brush.Color := $004B2B18;
        btnExcSph.Brush.Color := $004B2B18;
        btnCanSph.Brush.Color := $00C1C1C1;
        btnConSph.Brush.Color := $00C1C1C1;
        btnLocSph.Brush.Color := $004B2B18;
        btnSaiSph.Brush.Color := $004B2B18;
      end ;
    opNone:
      begin
        btnIncSpb.Enabled := True;
        btnAltSpb.Enabled := False;
        btnExcSpb.Enabled := False;
        btnCanSpb.Enabled := False;
        btnConSpb.Enabled := False;
        btnLocSpb.Enabled := True;
        btnSaiSpb.Enabled := True;

        btnIncShp.Brush.Color := $004B2B18;
        btnAltShp.Brush.Color := $00C1C1C1;
        btnExcSph.Brush.Color := $00C1C1C1;
        btnCanSph.Brush.Color := $00C1C1C1;
        btnConSph.Brush.Color := $00C1C1C1;
        btnLocSph.Brush.Color := $004B2B18;
        btnSaiSph.Brush.Color := $004B2B18;
      end ;
  end;

  if Assigned(FCtlCliente) then begin
    if OperType in [opBrownser, opNone] then begin
      if FCtlCliente.Exist(EmptyStr) then begin
        btnMailSpb.Enabled     := True;
        btnMailShp.Brush.Color := $004B2B18;
      end
      else begin
        btnMailSpb.Enabled     := False;
        btnMailShp.Brush.Color := $00C1C1C1;
      end;
    end
    else begin
      btnMailSpb.Enabled     := False;
      btnMailShp.Brush.Color := $00C1C1C1;
    end;
  end
  else begin
    btnMailSpb.Enabled     := False;
    btnMailShp.Brush.Color := $00C1C1C1;
  end;
end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Assigned(FCtlCliente) then
   FCtlCliente.Free;
 if Assigned(FCliente) then
   FCliente.Free;
 FCliente := nil;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  pnlLoading.Top  := Trunc((Self.Height - pnlLoading.Height) /2);
  pnlLoading.Left := Trunc((Self.Width  - pnlLoading.Width)  /2);

  MakeRounded(pnlLoading, 10, 10);
  MakeRounded(emailSendPnl, 10, 10);

  ClearObj;
  EnableObj(False);
  FCtlCliente := TCtlCliente.GetInstance;
end;

procedure TfrmClientes.SetCliente;
begin
  if Assigned(FCliente) then begin
    Self.edtNome.Text        := FCliente.Nome;
    Self.edtRG.Text          := FCliente.Identidade;
    Self.edtCpf.Text         := FCliente.CPF;
    Self.edtTelefone.Text    := FCliente.Telefone;
    Self.edtEmail.Text       := FCliente.Email;
    Self.edtCep.Text         := FCliente.Cep;
    Self.edtLogradouro.Text  := FCliente.Logradouro;
    Self.edtNumero.Text      := FCliente.Numero;
    Self.edtComplemento.Text := FCliente.Complemento;
    Self.edtBairro.Text      := FCliente.Bairro;
    Self.edtCidade.Text      := FCliente.Cidade;
    Self.edtEstado.Text      := FCliente.Estado;
    Self.edtPais.Text        := FCliente.Pais;
  end;
end;

function TfrmClientes.Validate(aCliente: TCliente): Boolean;
var
  lErros   : String;
  lCliente : TCliente;
begin
  if OperType = opInsert then begin
    if not aCliente.CPF.IsEmpty then begin
      if FCtlCliente.Exist(aCliente.CPF.Trim) then begin
        lErros := 'Já existe um cliente registrado com este CPF.' + #13
                + 'Não será possível inserir um registro em duplicidade.';
        MessageDialog(lErros, itWarning, Application.MainForm);
        Result := lErros.IsEmpty;
        Exit;
      end;
    end;
  end
  else if ((OperType = opUpdate) and (aCliente.Id > 0)) then begin
    if not aCliente.CPF.IsEmpty then begin
      lCliente := FCtlCliente.FindById(aCliente.Id);
      try
        if lCliente.CPF.Trim <> aCliente.CPF.Trim then begin
          if FCtlCliente.Exist(aCliente.CPF.Trim) then begin
            lErros := 'Já existe um cliente registrado com este CPF.' + #13
                    + 'Não será possível inserir um registro em duplicidade.';
            MessageDialog(lErros, itWarning, Application.MainForm);
            Result := lErros.IsEmpty;
            Exit;
          end;
        end;
      finally
        lCliente.Free;
        lCliente := nil;
      end;
    end;
  end;

  if FCliente.Nome.IsEmpty then
    lErros := lErros + 'Nome' + #13;
  if FCliente.CPF.IsEmpty then
    lErros := lErros + 'CPF' + #13;
  if not FCliente.Email.IsEmpty then begin
    if not IsValidEmail(FCliente.Email.Trim) then
      lErros := lErros + 'E-mail inválido' + #13;
  end;
  if not ValidateUf(FCliente.Estado) then
    lErros := lErros + 'Estado inválido' + #13;
  if not lErros.IsEmpty then begin
    lErros := 'Campos obrigatórios' + #13 + Trim(lErros);
    MessageDialog(lErros+#13+'Reveja estes dados.', itWarning, Application.MainForm);
  end;

  Result := lErros.IsEmpty;
end;

function TfrmClientes.ValidateUf(aUF: String): Boolean;
const
  Estados = 'AC AL AP AM BA CE DF ES GO MA MT MS MG PA PB PR PE PI RJ RN RS RO RR SC SP SE TO';
begin
  if Length(aUF) = 0 then
    Result := True
  else if Length(aUF) <> 2 then
    Result := False
  else if Pos(UpperCase(aUF), Estados) = 0 then
    Result := False
  else
    Result := True;
end;

procedure TfrmClientes.actBuscaCepExecute(Sender: TObject);
var
  lCep : String;
  FCep : TCep;
begin
  lCep := Trim(FormatClear(edtCep.Text));
  if Length(lCep) <> 8 then begin
    MessageDialog('Favor informar um CEP válido.', itWarning, Application.MainForm);
    Exit;
  end;

  ActivityIndicator.Animate := True;
  pnlLoading.Visible := True;
  lblLoadingMgsInfo.Caption := 'Localizando CEP';

  TThread.CreateAnonymousThread(procedure begin
    try
      FCep := FCtlCliente.FindByCep(lCep);
      try
        if Assigned(FCep) then begin
          if FCep.cep <> EmptyStr then begin
            Self.edtLogradouro.Text  := FCep.logradouro;
            Self.edtNumero.Clear;
            Self.edtComplemento.Text := FCep.complemento;
            Self.edtBairro.Text      := FCep.bairro;
            Self.edtCidade.Text      := FCep.localidade;
            Self.edtEstado.Text      := FCep.uf;
            Self.edtPais.Text        := 'Brasil';
            Self.edtNumero.SetFocus;
          end
          else begin
            Self.edtLogradouro.Clear;
            Self.edtNumero.Clear;
            Self.edtComplemento.Clear;
            Self.edtBairro.Clear;
            Self.edtCidade.Clear;
            Self.edtEstado.Clear;
            Self.edtPais.Clear;
            Self.edtCep.SetFocus;
            TThread.Synchronize(TThread.CurrentThread, procedure
              begin
                ActivityIndicator.Animate := False;
                pnlLoading.Visible        := False;

                MessageDialog('CEP não localizado.', itWarning, Application.MainForm);
                Self.edtCep.SetFocus;
              end);
          end;
        end
        else begin
          TThread.Synchronize(TThread.CurrentThread, procedure
              begin
                ActivityIndicator.Animate := False;
                pnlLoading.Visible        := False;
                MessageDialog('CEP não localizado.', itWarning, Application.MainForm);
                Self.edtCep.SetFocus;
              end);
        end;
      finally
        FCep.Free;
        FCep := nil;
        ActivityIndicator.Animate := False;
        pnlLoading.Visible        := False;
      end;
    except on E: Exception do
      TThread.Synchronize(TThread.CurrentThread, procedure
        begin
          ActivityIndicator.Animate := False;
          pnlLoading.Visible        := False;
          MessageDialog(e.Message, itError, Application.MainForm)
        end);
    end;
  end).Start;
end;


end.
