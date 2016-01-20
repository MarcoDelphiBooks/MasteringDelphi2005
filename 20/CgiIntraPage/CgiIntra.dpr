program CgiIntra;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  CgiIntraWm in 'CgiIntraWm.pas' {WebModule1: TWebModule},
  CgiPageForm in 'CgiPageForm.pas' {MainForm: TIWPageForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.
