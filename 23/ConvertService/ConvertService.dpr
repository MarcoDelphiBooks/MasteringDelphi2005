program ConvertService;

{$APPTYPE GUI}

uses
  Forms,
  SockApp,
  ConvertForm in 'ConvertForm.pas' {Form1},
  ConvertModule in 'ConvertModule.pas' {WebModule2: TWebModule},
  ConvertImpl in 'ConvertImpl.pas',
  ConvertIntf in 'ConvertIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TWebModule2, WebModule2);
  Application.Run;
end.
