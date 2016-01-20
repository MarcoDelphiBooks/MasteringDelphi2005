program IWTwoForms;

{%DeployDocTool 'IWTwoFormsDeployment.bdsdeploy'}

uses
  Forms,
  IWMain,
  IWTwoMainForm in 'IWTwoMainForm.pas' {TwoMainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  IWTwoAnotherForm in 'IWTwoAnotherForm.pas' {AnotherForm: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
