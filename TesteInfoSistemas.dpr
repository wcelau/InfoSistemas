program TesteInfoSistemas;

uses
  Vcl.Forms,
  Info.View.Main in 'View\Info.View.Main.pas' {frmMain},
  Info.View.Back in 'View\Info.View.Back.pas' {frmBack},
  Info.View.Dialogo in 'View\Info.View.Dialogo.pas' {frmDialog},
  Info.View.Clientes in 'View\Info.View.Clientes.pas' {frmClientes},
  Info.Model.Entity.Clientes in 'Model\Info.Model.Entity.Clientes.pas',
  Info.Model.DAO.Clientes in 'Model\Info.Model.DAO.Clientes.pas',
  Info.Controller.Clientes in 'Controller\Info.Controller.Clientes.pas',
  Info.Model.Entity.Cep in 'Model\Info.Model.Entity.Cep.pas',
  Info.Model.DAO.Cep in 'Model\Info.Model.DAO.Cep.pas',
  Info.View.Busca in 'View\Info.View.Busca.pas' {frmBusca},
  Info.SendMail in 'Lib\Info.SendMail.pas',
  Info.Model.Entity.Usuarios in 'Model\Info.Model.Entity.Usuarios.pas',
  uFuncoes in 'Lib\uFuncoes.pas';

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Teste Wenceslau';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmBack, frmBack);
  Application.Run;
end.
