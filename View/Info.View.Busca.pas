unit Info.View.Busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Info.Controller.Clientes,
  Info.Model.Entity.Clientes;

type
  TfrmBusca = class(TForm)
    dbgClientes: TDBGrid;
    memClientes: TFDMemTable;
    memClientesId: TIntegerField;
    memClientesCPF: TStringField;
    memClientesNome: TStringField;
    pnlBack: TPanel;
    pnlBottom: TPanel;
    btnConImg: TImage;
    btnConLbl: TLabel;
    btnConSpb: TSpeedButton;
    btnConSph: TShape;
    btnCanImg: TImage;
    btnCanLbl: TLabel;
    btnCanSpb: TSpeedButton;
    btnCanSph: TShape;
    pnlTop: TPanel;
    shpPesquisa: TShape;
    edtPesquisa: TEdit;
    dtsClientes: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure edtPesquisaKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure dbgClientesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnConSpbClick(Sender: TObject);
    procedure btnCanSpbClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgClientesDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure CloseOk;
  public
    { Public declarations }
    FCtrlCliente : TCtlCliente;
  end;

var
  frmBusca: TfrmBusca;

implementation

uses
  System.Generics.Collections;

{$R *.dfm}

procedure TfrmBusca.btnCanSpbClick(Sender: TObject);
begin
  ModalResult := MrCancel;
end;

procedure TfrmBusca.btnConSpbClick(Sender: TObject);
begin
  CloseOk
end;

procedure TfrmBusca.CloseOk;
begin
  if memClientes.Active then begin
    if memClientes.RecordCount > 0 then
      ModalResult := MrOk
    else
      ModalResult := MrCancel;
  end
  else
    ModalResult := MrCancel;
end;

procedure TfrmBusca.dbgClientesDblClick(Sender: TObject);
begin
  CloseOk;
end;

procedure TfrmBusca.dbgClientesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    CloseOk;
  end
  else if Key = VK_ESCAPE then begin
    ModalResult := mrCancel;
  end;
end;

procedure TfrmBusca.edtPesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    dbgClientes.SetFocus
  else begin
    if memClientes.Active then begin
      if edtPesquisa.Text = EmptyStr then begin
        memClientes.Filtered := False;
        memClientes.First;
      end
      else begin
        memClientes.Filter   := 'UPPER(Nome) LIKE ''%' + UpperCase(Trim(edtPesquisa.Text)) + '%''' +
                                ' or UPPER(CPF) LIKE ''%' + UpperCase(Trim(edtPesquisa.Text)) + '%''';
        memClientes.Filtered := True
      end;
    end;
  end;
end;

procedure TfrmBusca.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then begin
    ModalResult := mrCancel;
  end;
end;

procedure TfrmBusca.FormShow(Sender: TObject);
var
  FClientes : TObjectList<TCliente>;
  FCliente  : TCliente;
begin
  if memClientes.Active then
    memClientes.Close;
  memClientes.CreateDataSet;

  if Assigned(FCtrlCliente) then begin

    FClientes := FCtrlCliente.Find;
    try
      for FCliente in FClientes do begin
        memClientes.Insert;
        memClientesId.AsInteger := FCliente.Id;
        memClientesCPF.AsString := FCliente.CPF;
        memClientesNome.AsString :=FCliente.Nome;
        memClientes.Post;
      end;
    finally
      FClientes.Free;
      FClientes := nil;
    end;
  end;
end;

end.
