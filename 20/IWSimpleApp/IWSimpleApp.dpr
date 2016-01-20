program IWSimpleApp;

{%DeployDocTool 'IWSimpleAppDeployment.bdsdeploy'}

uses
  Forms,
  IWMain,
  IWSimpleAppForm in 'IWSimpleAppForm.pas' {MainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
