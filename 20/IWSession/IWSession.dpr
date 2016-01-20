program IWSession;

{%DeployDocTool 'IWSessionDeployment.bdsdeploy'}

uses
  Forms,
  IWMain,
  IWSessionForm in 'IWSessionForm.pas' {MainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
