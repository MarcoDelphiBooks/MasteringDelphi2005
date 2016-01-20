program IWGridDemo;

{%DeployDocTool 'IWCridDemoDeployment.bdsdeploy'}

uses
  Forms,
  IWMain,
  IWGridDemoForm in 'IWGridDemoForm.pas' {MainForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  IWRecordForm in 'IWRecordForm.pas' {RecordForm: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
