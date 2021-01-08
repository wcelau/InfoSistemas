unit Info.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.CategoryButtons,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.AppEvnts, Info.Model.Entity.Usuarios;

type
  TfrmMain = class(TForm)
    pnlMenu: TPanel;
    pnlTop: TPanel;
    imlLogo: TImage;
    pnlMenuCad_: TPanel;
    pnlMenuCad_Img: TImage;
    pnlMenuCad_Label: TLabel;
    pnlMenuCad_Left: TPanel;
    pnlMenuCad_Bevel: TBevel;
    shpIndicador: TShape;
    pnlMenuCad_Btn: TSpeedButton;
    pnlMenuCad_Sub: TPanel;
    imgIndicator: TImage;
    imlIcons: TImageList;
    aclSubmenu: TActionList;
    actCadClientes: TAction;
    pnlMenuCad_SubItens: TCategoryButtons;
    pnlMenuSize: TPanel;
    pnlMenuSizeImgBig: TImage;
    pnlMenuSizeLeft: TPanel;
    pnlMenuSizeBtn: TSpeedButton;
    shpDivTop: TShape;
    pnlMenuSizeImgSmall: TImage;
    BalloonHint: TBalloonHint;
    pnlTopBlue: TPanel;
    shpDivTopBottom: TShape;
    pnlMenuSair: TPanel;
    pnlMenuSairImg: TImage;
    pnlMenuSairLabel: TLabel;
    pnlMenuSairBevel: TBevel;
    pnlMenuSairBtn: TSpeedButton;
    Panel3: TPanel;
    imgMailBox: TImage;
    shpMailBox: TShape;
    lblMailBox: TLabel;
    shpSepMailBox: TShape;
    imgMenuSearch: TImage;
    shpSepMenuSearch: TShape;
    lblTodayTitle: TLabel;
    lblTodayDesc: TLabel;
    shpSepShortcut: TShape;
    imgUser: TImage;
    lblUserTitle: TLabel;
    lblUserDesc: TLabel;
    shpSepToday: TShape;
    lblShortcutTitle: TLabel;
    btnshortcut: TCategoryButtons;
    imlPnlMenu: TImageList;
    shpSepInfo: TShape;
    imgInfo: TImage;
    spbInfo: TSpeedButton;
    spbMailBox: TSpeedButton;
    spbShortCut: TSpeedButton;
    spbUser: TSpeedButton;
    actBtnInfo: TAction;
    actBtnUser: TAction;
    procedure FormCreate(Sender: TObject);
    procedure MenuMouseEnter(Sender: TObject);
    procedure MenuMouseLeave(Sender: TObject);
    procedure MenuBtnClick(Sender: TObject);
    procedure pnlMenuClick(Sender: TObject);
    procedure pnlMenuSizeBtnClick(Sender: TObject);
    procedure pnlMenuSairBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actCadClientesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actBtnInfoExecute(Sender: TObject);
    procedure actBtnUserExecute(Sender: TObject);
  private
    { Private declarations }
    lBlnMenuPressed : Boolean;
    lStrMenuPressed : String;
    lArrySub        : array of TPanel;
    procedure EnableHint(Value : Boolean);
    procedure ConfigSubmenu(Sender : TObject);
    procedure AdjustSubmenu;
    procedure ShowSubmenu(Sender : TObject);
    procedure HideSubmenu;
    procedure SetInfo;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  System.SysUtils, uFuncoes, Info.View.Clientes;

{$R *.dfm}

procedure TfrmMain.actBtnInfoExecute(Sender: TObject);
begin
  MessageDialog('Wenceslau Miranda' + #13 +
                'Teste Infosistemas', itInfo, Self);
end;

procedure TfrmMain.actBtnUserExecute(Sender: TObject);
begin
  MessageDialog('ID: ' + TParamUser.GetInstance.ID.ToString + #13 +
                'Usuário: ' + TParamUser.GetInstance.Name.Trim + #13 +
                'Ultimo login realizado em : ' + #13 +FormatDateTime('dddddd às hh:nn', TParamUser.GetInstance.DateTimeLogin ), itInfo, Self);
end;

procedure TfrmMain.actCadClientesExecute(Sender: TObject);
begin
  HideSubmenu;
  Application.CreateForm(TfrmClientes, frmClientes);
  try
    OpenModal(frmClientes, Self);
  finally
    FreeAndNil(frmClientes)
  end;
end;

procedure TfrmMain.AdjustSubmenu;
var
  I, J     : Integer;
  objName  : String;
  CategBtn : TCategoryButtons;
  MaxLen   : Integer;
begin
  CategBtn          := nil;
  imgIndicator.Left := pnlMenu.Width - 10;
  SetLength(lArrySub, 1);
  lArrySub[0] := pnlMenuCad_Sub;

  for I := Low(lArrySub) to High(lArrySub) do begin
    MaxLen  := 0;
    objName := lArrySub[I].Name;
    objName := objName + 'Itens';
    if Self.FindComponent(ObjName) <> nil then begin
      if Self.FindComponent(ObjName) is TCategoryButtons then begin
        CategBtn := Self.FindComponent(ObjName) as TCategoryButtons;
        lArrySub[I].Height := CategBtn.Categories.Items[0].Items.Count * 41;
        for J := 0 to CategBtn.Categories.Items[0].Items.Count - 1 do begin
          if MaxLen < Length(CategBtn.Categories.Items[0].Items[J].Caption) then
            MaxLen :=  Length(CategBtn.Categories.Items[0].Items[J].Caption);
        end;
        if MaxLen > 0 then begin
          if (Round(MaxLen * 7.25) + 32) >  lArrySub[I].Width then
            lArrySub[I].Width := Round(MaxLen * 7.25) + 32
        end;
      end;
    end;
    lArrySub[I].Height := CategBtn.Categories.Items[0].Items.Count * 41;
    lArrySub[I].Height := lArrySub[I].Height + 13;
    lArrySub[I].Top    := -17;
    lArrySub[I].Left   := imgIndicator.Left + imgIndicator.Width - 5;
    MakeRounded(lArrySub[I]);
  end;
end;

procedure TfrmMain.ConfigSubmenu(Sender : TObject);
begin
  imgIndicator.Left    := pnlMenu.Width - 10;
  if (Sender as TSpeedButton).Parent is TPanel then begin
    imgIndicator.Top     := ((Sender as TSpeedButton).Parent as TPanel).Top + 84;
    imgIndicator.Visible := True;
  end;
  lBlnMenuPressed := True;
  lStrMenuPressed := (Sender as TSpeedButton).Name;

  ShowSubmenu(Sender);
end;

procedure TfrmMain.EnableHint(Value: Boolean);
begin
  pnlMenuCad_Btn.ShowHint  := Value;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TParamUser.FreeInstance;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  AdjustSubmenu;
  TParamUser.GetInstance.ID            := 123;
  TParamUser.GetInstance.Name          := 'USUARIO.TESTE';
  TParamUser.GetInstance.DateTimeLogin := Now;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  MakeRounded(pnlTopBlue, 10, 10);
  MakeRounded(pnlMenu,    10, 10);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  SetInfo;
end;

procedure TfrmMain.MenuMouseEnter(Sender: TObject);
var
  ObjName : String;
  pnlIndicador : TPanel;
  lblIndicador : TLabel;
begin
  shpIndicador.Visible := False;

  if Sender is TSpeedButton then
    objName := (Sender as TSpeedButton).Name;

  if Trim(ObjName) <> EmptyStr then begin
    if ((Pos('_', ObjName) > 0) and (Pos('pnlMenu', ObjName) > 0)) then begin
      ObjName := Copy(ObjName, 1, Pos('_', ObjName));
      ObjName := ObjName + 'Left';
      pnlIndicador := Self.FindComponent(ObjName) as TPanel;
      if pnlIndicador <> Nil then begin
        shpIndicador.Parent  := pnlIndicador;
        shpIndicador.Visible := True;
        ObjName := StringReplace(ObjName, 'Left','Label', []);
        lblIndicador := Self.FindComponent(ObjName) as TLabel;
        if lblIndicador <> nil then
          lblIndicador.Font.Color := clWhite;
      end;
      if ((lStrMenuPressed <> (Sender as TSpeedButton).Name) and (lBlnMenuPressed)) then begin
        ConfigSubmenu(Sender);
      end;
    end;
  end;
end;

procedure TfrmMain.MenuMouseLeave(Sender: TObject);
var
  ObjName : String;
  lblIndicador : TLabel;
begin
  if Sender is TSpeedButton then begin
    ObjName := (Sender as TSpeedButton).Name;
    ObjName := StringReplace(ObjName, 'Btn','Label', []);
    lblIndicador := Self.FindComponent(ObjName) as TLabel;
    if lblIndicador <> nil then
      lblIndicador.Font.Color := $00A19189;
  end;
  if not lBlnMenuPressed then begin
    HideSubmenu;
  end
end;

procedure TfrmMain.pnlMenuClick(Sender: TObject);
begin
  HideSubmenu;
end;

procedure TfrmMain.pnlMenuSairBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.pnlMenuSizeBtnClick(Sender: TObject);
var
  I : Integer;
begin
  case pnlMenuSizeBtn.Tag of
    0 : begin
          pnlMenuSizeBtn.Tag          := 1;
          pnlMenu.Width               := 193;
          pnlMenuSizeImgSmall.Visible := False;
          pnlMenuSizeImgBig.Visible   := True;
          EnableHint(False);
        end;
    1 : begin
          pnlMenuSizeBtn.Tag := 0;
          pnlMenu.Width      := 52;
          pnlMenuSizeImgBig.Visible   := False;
          pnlMenuSizeImgSmall.Visible := True;
          EnableHint(True);
        end;
  end;
  imgIndicator.Left    := pnlMenu.Width - 10;
  for I := Low(lArrySub) to High(lArrySub) do
    lArrySub[I].Left := imgIndicator.Left + imgIndicator.Width - 5;
   MakeRounded(pnlMenu, 10, 10);
end;

procedure TfrmMain.SetInfo;
begin
  lblTodayDesc.Caption :=  Format('%S %S, %S', [FormatDateTime('dd', TParamUser.GetInstance.DateTimeLogin ),
                                                FirstUpper(FormatDateTime('mmmm', TParamUser.GetInstance.DateTimeLogin)),
                                                FormatDateTime('yyyy', TParamUser.GetInstance.DateTimeLogin)]) ;
  lblUserDesc.Caption  := TParamUser.GetInstance.Name;
end;

procedure TfrmMain.ShowSubmenu(Sender: TObject);
var
  I : Integer;
  SpeedBtn : TSpeedButton;
begin
  if lBlnMenuPressed then begin
    if (Sender is TSpeedButton) then begin
      SpeedBtn := (Sender as TSpeedButton);
      if ((SpeedBtn.Tag > 19) and (SpeedBtn.Tag < 100)) then begin
        for I := Low(lArrySub) to High(lArrySub) do begin
          lArrySub[I].Visible := lArrySub[I].Tag = SpeedBtn.Tag * 10;
          if lArrySub[I].Visible then begin
            lArrySub[I].Top := imgIndicator.Top - 14;
            if Self.Height <  lArrySub[I].Top + lArrySub[I].Height then begin
              lArrySub[I].Top := (lArrySub[I].Top + lArrySub[I].Height - Self.Height)
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.HideSubmenu;
var
  I : Integer;
begin
  shpIndicador.Visible := False;
  imgIndicator.Visible := False;
  lBlnMenuPressed      := False;
  for I := Low(lArrySub) to High(lArrySub) do
    lArrySub[I].Visible := False;
end;

procedure TfrmMain.MenuBtnClick(Sender: TObject);
begin
  if ((lBlnMenuPressed) and (lStrMenuPressed = (Sender as TSpeedButton).Name)) then begin
    HideSubmenu;
  end
  else begin
    imgIndicator.Left      := pnlMenu.Width - 10;
    if (Sender as TSpeedButton).Parent is TPanel then begin
      imgIndicator.Top     := ((Sender as TSpeedButton).Parent as TPanel).Top + 84;
      imgIndicator.Visible := True;
    end;
    lBlnMenuPressed := True;
    lStrMenuPressed := (Sender as TSpeedButton).Name;

    ShowSubmenu(Sender);
  end;
end;

end.
