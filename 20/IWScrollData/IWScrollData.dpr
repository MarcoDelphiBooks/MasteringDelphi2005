program IWScrollData;

{%DeployDocTool 'IWScrollDataDeployment.bdsdeploy'}

uses
  Forms,
  IWMain,
  IWScrollDataForm in 'IWScrollDataForm.pas' {MainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
