unit Info.View.Dialogo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, uFuncoes;

type
  TfrmDialog = class(TForm)
    pnlDialogFront: TPanel;
    pnlDialogShadow: TPanel;
    imgIconBack: TImage;
    imgIconFront: TImage;
    shpBorderTopLeft: TShape;
    shpBorderBottom: TShape;
    shpBorderTopRight: TShape;
    lblTitle: TLabel;
    shpTitle: TShape;
    bvlButtons: TBevel;
    lblMessage: TLabel;
    shpIconBack: TShape;
    imgSucess: TImage;
    imgError: TImage;
    imgInfo: TImage;
    imgWarning: TImage;
    imgConfirm: TImage;
    pnlYes: TPanel;
    spbYes: TSpeedButton;
    pnlNo: TPanel;
    spbNo: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ClickMrOk(Sender: TObject);
    procedure ClickMrCancel(Sender: TObject);
    procedure ClickMrClose(Sender: TObject);
    procedure ClickMrYes(Sender: TObject);
    procedure ClickMrNo(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Const
      ColorSucess  = $00A6D396;
      ColorError   = $003A51EF;
      ColorConfirm = $005E5EF1;
      ColorWarning = $004DADEF;
      ColorInfo    = $004B2B18;
    procedure AdjustDialog;
    procedure ConfigSucess(aMessage : String);
    procedure ConfigError(aMessage : String);
    procedure ConfigConfirm(aMessage : String);
    procedure ConfigWarning(aMessage : String);
    procedure ConfigInfo(aMessage : String);
  public
    { Public declarations }
    procedure ShowDialog(aMessage : String; aInfoTyp : TInfoType);
  end;

var
  frmDialog: TfrmDialog;

implementation

{$R *.dfm}

uses Info.View.Back;

procedure TfrmDialog.AdjustDialog;
begin
  if frmBack <> nil then begin
    Self.Top    := Trunc((frmBack.Height  - Self.Height) / 2);
    Self.Left   := Trunc((frmBack.Width - Self.Width)  / 2);
  end;
end;

procedure TfrmDialog.ShowDialog(aMessage : String; aInfoTyp: TInfoType);
begin
  case aInfoTyp of
    itSucess  : ConfigSucess(aMessage);
    itError   : ConfigError(aMessage);
    itConfirm : ConfigConfirm(aMessage);
    itWarning : ConfigWarning(aMessage);
    itInfo    : ConfigInfo(aMessage);
  end;
end;

procedure TfrmDialog.ClickMrCancel(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmDialog.ClickMrClose(Sender: TObject);
begin
  ModalResult := mrClose;
end;

procedure TfrmDialog.ClickMrNo(Sender: TObject);
begin
  ModalResult := mrNo;
end;

procedure TfrmDialog.ClickMrOk(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmDialog.ClickMrYes(Sender: TObject);
begin
  ModalResult := mrYes;
end;

procedure TfrmDialog.ConfigError(aMessage : String);
begin
  shpIconBack.Top               := 33;
  shpIconBack.Width             := 35;
  shpIconBack.Left              := 317;
  shpIconBack.Height            := 40;
  shpBorderBottom.Brush.Color   := ColorError;
  shpBorderTopLeft.Brush.Color  := ColorError;
  shpBorderTopRight.Brush.Color := ColorError;
  shpTitle.Brush.Color          := ColorError;
  lblTitle.Font.Color           := ColorError;
  pnlYes.Color                  := ColorError;
  imgIconFront.Picture          := imgError.Picture;
  imgIconBack.Picture           := imgError.Picture;

  lblTitle.Caption              := 'Desculpe!';
  lblMessage.Caption            := aMessage;

  spbYes.OnClick                := ClickMrOk;
  pnlYes.Left                   := 149;
  pnlYes.Caption                := 'Fechar';
  pnlYes.Visible                := True;

  pnlNo.Visible                 := False;
end;

procedure TfrmDialog.ConfigInfo(aMessage : String);
begin
  shpIconBack.Top               := 33;
  shpIconBack.Width             := 35;
  shpIconBack.Left              := 317;
  shpIconBack.Height            := 40;
  shpBorderBottom.Brush.Color   := ColorInfo;
  shpBorderTopLeft.Brush.Color  := ColorInfo;
  shpBorderTopRight.Brush.Color := ColorInfo;
  shpTitle.Brush.Color          := ColorInfo;
  lblTitle.Font.Color           := ColorInfo;
  pnlYes.Color                  := ColorInfo;
  imgIconFront.Picture          := imgInfo.Picture;
  imgIconBack.Picture           := imgInfo.Picture;

  lblTitle.Caption              := 'Informação!';
  lblMessage.Caption            := aMessage;

  spbYes.OnClick                := ClickMrOk;
  pnlYes.Left                   := 149;
  pnlYes.Caption                := 'Fechar';
  pnlYes.Visible                := True;

  pnlNo.Visible                 := False;
end;

procedure TfrmDialog.ConfigSucess(aMessage : String);
begin
  shpIconBack.Top               := 33;
  shpIconBack.Width             := 35;
  shpIconBack.Left              := 317;
  shpIconBack.Height            := 40;
  shpBorderBottom.Brush.Color   := ColorSucess;
  shpBorderTopLeft.Brush.Color  := ColorSucess;
  shpBorderTopRight.Brush.Color := ColorSucess;
  shpTitle.Brush.Color          := ColorSucess;
  lblTitle.Font.Color           := ColorSucess;
  pnlYes.Color                  := ColorSucess;
  imgIconFront.Picture          := imgSucess.Picture;
  imgIconBack.Picture           := imgSucess.Picture;

  lblTitle.Caption              := 'Sucesso!';
  lblMessage.Caption            := aMessage;

  spbYes.OnClick                := ClickMrOk;
  pnlYes.Left                   := 149;
  pnlYes.Caption                := 'Fechar';
  pnlYes.Visible                := True;

  pnlNo.Visible                 := False;
end;

procedure TfrmDialog.ConfigConfirm(aMessage : String);
begin
  shpIconBack.Top               := 33;
  shpIconBack.Width             := 35;
  shpIconBack.Left              := 317;
  shpIconBack.Height            := 40;
  shpBorderBottom.Brush.Color   := ColorConfirm;
  shpBorderTopLeft.Brush.Color  := ColorConfirm;
  shpBorderTopRight.Brush.Color := ColorConfirm;
  shpTitle.Brush.Color          := ColorConfirm;
  lblTitle.Font.Color           := ColorConfirm;
  pnlYes.Color                  := ColorConfirm;
  imgIconFront.Picture          := imgConfirm.Picture;
  imgIconBack.Picture           := imgConfirm.Picture;

  lblTitle.Caption              := 'Você tem certeza?';
  lblMessage.Caption            := aMessage;

  spbYes.OnClick                := ClickMrOk;

  pnlYes.Caption                := 'Sim';
  pnlYes.Visible                := True;

  spbNo.OnClick                 := ClickMrCancel;
  pnlNo.Left                    := 229;
  pnlNo.Caption                 := 'Não';
  pnlNo.Visible                 := True;
end;

procedure TfrmDialog.ConfigWarning(aMessage : String);
begin
  shpIconBack.Top               := 33;
  shpIconBack.Width             := 16;
  shpIconBack.Left              := 328;
  shpIconBack.Height            := 40;
  shpBorderBottom.Brush.Color   := ColorWarning;
  shpBorderTopLeft.Brush.Color  := ColorWarning;
  shpBorderTopRight.Brush.Color := ColorWarning;
  shpTitle.Brush.Color          := ColorWarning;
  lblTitle.Font.Color           := ColorWarning;
  pnlYes.Color                  := ColorWarning;
  imgIconFront.Picture          := imgWarning.Picture;
  imgIconBack.Picture           := imgWarning.Picture;

  lblTitle.Caption              := 'Atenção!';
  lblMessage.Caption            := aMessage;

  spbYes.OnClick                := ClickMrOk;
  pnlYes.Left                   := 149;
  pnlYes.Caption                := 'Fechar';
  pnlYes.Visible                := True;

  pnlNo.Visible                 := False;
end;

procedure TfrmDialog.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    if pnlYes.Visible then
      ClickMrOk(Self)
  end
  else if Key = VK_ESCAPE then
    ClickMrClose(Self);

end;

procedure TfrmDialog.FormResize(Sender: TObject);
begin
  AdjustDialog
end;

procedure TfrmDialog.FormShow(Sender: TObject);
begin
  AdjustDialog;
  MakeRounded(pnlDialogFront,  10, 10);
  MakeRounded(pnlDialogShadow, 10, 10);
  MakeRounded(pnlYes,          10, 10);
  MakeRounded(pnlNo,           10, 10);
end;

end.
