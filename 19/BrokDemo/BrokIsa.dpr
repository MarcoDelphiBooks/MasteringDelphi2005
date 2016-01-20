library BrokIsa;

uses
  WebBroker,
  ISAPIApp,
  BrokWm in 'BrokWm.pas';

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.
