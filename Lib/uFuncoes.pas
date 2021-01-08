unit uFuncoes;

interface

uses
  Vcl.Controls, Vcl.Graphics, Vcl.ExtCtrls, Vcl.ActnList,
  Winapi.Windows, Winapi.Messages, System.SysUtils, Vcl.Forms,
  System.Classes, System.MaskUtils;

type TOperType = (opInsert, opUpdate, opDelete, opBrownser, opNone);
type TInfoType = (itSucess, itError, itConfirm, itWarning, itInfo);

procedure OpenModal(openForm : TForm; toForm : TForm = nil);
procedure MakeRounded(Control: TWinControl; XRadius : Integer = 20; YRadius : Integer = 20);
procedure MakeShadow(Canvas: TCanvas; Painel: TPanel; Cor: TColor = clBlack);
function MessageDialog(aMessage : String; aType : TInfoType = itSucess; aForm : TForm = nil) : TModalResult;
function FirstUpper(aValue : String) : String;
function FormatClear(aValue : String): String;
function FormatCpf(aValue : String): String;
function FormatTel(aValue : String): String;
function FormatCep(aValue : String): String;

function isValidCPF(aValue: String): Boolean;
function IsValidEmail(const aValue: String): Boolean;

implementation

uses
  Info.View.Back, Info.View.Dialogo;


procedure OpenModal(openForm : TForm; toForm : TForm = nil);
var
  aRect : TRect;
  FBack : TfrmBack;
begin
  FBack := Nil;
  try
    if toForm <> nil then begin
      aRect := Rect(toForm.Left, toForm.Top, toForm.Width, toForm.Height);
      FBack := TfrmBack.Create(Application);
      FBack.Rect := aRect;
      FBack.Show;
    end;

    if Assigned(openForm) then
      openForm.ShowModal;
  finally
    if Assigned(FBack) then
      FBack.Hide;
  end;
end;

procedure MakeRounded(Control: TWinControl; XRadius : Integer = 20; YRadius : Integer = 20);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, XRadius, YRadius);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;

procedure MakeShadow(Canvas: TCanvas; Painel: TPanel; Cor: TColor = clBlack);
var
  r: TRect;
begin
  r.Top      := Painel.Top  + 5;
  r.Left     := Painel.Left + 5;
  r.Right    := Painel.Left + Painel.Width  + 5;
  r.Bottom   := Painel.Top  + Painel.Height + 5;
  Canvas.Pen.Color   := Cor;
  Canvas.Brush.Color := Cor;
  Canvas.Rectangle(r);
end;

function MessageDialog(aMessage : String; aType : TInfoType = itSucess; aForm : TForm = nil) : TModalResult;
var
  aRect : TRect;
begin
  if aForm <> nil then
    aRect := Rect(aForm.Left, aForm.Top, aForm.Width, aForm.Height)
  else
    aRect := Rect(0, 0, 0, 0);

  frmBack.Rect := aRect;
  frmBack.Show;
  Application.CreateForm(TfrmDialog, frmDialog);
  frmDialog.ShowDialog(aMessage, aType);
  frmDialog.ShowModal;
  Result := frmDialog.ModalResult;
  FreeAndNil(frmDialog);
  frmBack.Hide;
end;

function FirstUpper(aValue : String) : String;
begin
  Result := UpperCase(Copy(aValue, 1, 1)) + Copy(aValue, 2, Length(aValue));
end;

function FormatClear(aValue : String): String;
begin
  aValue := StringReplace(aValue, '.', EmptyStr, [rfReplaceAll]);
  aValue := StringReplace(aValue, '-', EmptyStr, [rfReplaceAll]);
  aValue := StringReplace(aValue, '/', EmptyStr, [rfReplaceAll]);
  aValue := StringReplace(aValue, '(', EmptyStr, [rfReplaceAll]);
  aValue := StringReplace(aValue, ')', EmptyStr, [rfReplaceAll]);
  Result := aValue;
end;

function FormatCpf(aValue : String): String;
begin
  Delete(aValue, AnsiPos('.', aValue), 1);
  Delete(aValue, AnsiPos('.', aValue), 1);
  Delete(aValue, AnsiPos('-', aValue), 1);
  Delete(aValue, AnsiPos('/', aValue), 1);
  Result := FormatmaskText('000\.000\.000\-00;0;', aValue);
end;

function FormatTel(aValue : String): String;
begin
  aValue := FormatClear(aValue);
  if Length(aValue) = 10 then
    Result := FormatmaskText('\(00\)0000\-0000;0;', aValue)
  else
    Result := FormatmaskText('\(00\)00000\-0000;0;', aValue)
end;

function FormatCep(aValue : String): String;
begin
  aValue := FormatClear(aValue);
  Result := FormatmaskText('99999\-999;0;', aValue)
end;

function isValidCPF(aValue: String): Boolean;
var
  dig10, dig11: String;
  s, i, r, peso: integer;
begin
  aValue := FormatClear(aValue);
  if ((aValue = '00000000000') or (aValue = '11111111111') or
      (aValue = '22222222222') or (aValue = '33333333333') or
      (aValue = '44444444444') or (aValue = '55555555555') or
      (aValue = '66666666666') or (aValue = '77777777777') or
      (aValue = '88888888888') or (aValue = '99999999999') or
      (length(aValue) <> 11)) then
  begin
    Result := false;
    Exit;
  end;

  try
    s     := 0;
    peso  := 10;
    for i := 1 to 9 do begin
      s := s + (StrToInt(aValue[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
      dig10 := '0'
    else
      str(r:1, dig10);
    s     := 0;
    peso  := 11;
    for i := 1 to 10 do begin
      s := s + (StrToInt(aValue[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
      dig11 := '0'
    else
      str(r:1, dig11);

    if ((dig10 = aValue[10]) and (dig11 = aValue[11])) then
      Result := true
    else
      Result := false;
  except
    Result := false
  end;
end;

function IsValidEmail(const aValue: String): Boolean;
  function CheckAllowed(const s: string): Boolean;
  var
    i: Integer;
  begin
    Result := False;
    for i := 1 to Length(s) do
      //if not(s[i] in ['a' .. 'z', 'A' .. 'Z', '0' .. '9', '_', '-', '.']) then
      if not CharInSet(s[i], ['a' .. 'z', 'A' .. 'Z', '0' .. '9', '_', '-', '.']) then
        Exit;
    Result := true;
  end;
var
  i: Integer;
  NamePart, ServerPart: string;
begin
  Result := False;
  i := Pos('@', aValue);
  if i = 0 then
    Exit;
  NamePart := Copy(aValue, 1, i - 1);
  ServerPart := Copy(aValue, i + 1, Length(aValue));
  if (Length(NamePart) = 0) or ((Length(ServerPart) < 5)) then
    Exit;
  i := Pos('.', ServerPart);
  if (i = 0) or (i > (Length(ServerPart) - 2)) then
    Exit;
  Result := CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;


end.
