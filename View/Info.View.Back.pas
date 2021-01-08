unit Info.View.Back;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Types;

type
  TfrmBack = class(TForm)
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FRect: TRect;
    procedure ResetConfig;
    { Private declarations }
  public
    { Public declarations }
      property Rect : TRect read FRect write FRect;
  end;

var
  frmBack: TfrmBack;

implementation

{$R *.dfm}

procedure TfrmBack.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ResetConfig;
end;

procedure TfrmBack.FormHide(Sender: TObject);
begin
  ResetConfig;
end;

procedure TfrmBack.FormShow(Sender: TObject);
begin
  if not ((FRect.Height = 0) or (FRect.Width = 0)) then begin
    Self.WindowState := wsNormal;
    Self.Left        := FRect.Left;
    Self.Top         := FRect.Top;
    Self.Height      := FRect.Bottom;
    Self.Width       := FRect.Right;
  end
  else
    Self.WindowState := wsMaximized;
end;

procedure TfrmBack.ResetConfig;
begin
  FRect            := System.Types.Rect(0, 0, 0, 0);
  Self.WindowState := wsMaximized;
end;

end.
