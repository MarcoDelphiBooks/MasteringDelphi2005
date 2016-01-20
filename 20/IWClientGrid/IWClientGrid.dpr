program IWClientGrid;

{%DeployDocTool 'IWClientGridDeployment.bdsdeploy'}

uses
  Forms,
  IWMain,
  IWClientGridForm in 'IWClientGridForm.pas' {MainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
