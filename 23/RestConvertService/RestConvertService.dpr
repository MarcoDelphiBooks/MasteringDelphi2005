program RestConvertService;

{$APPTYPE GUI}

uses
  Forms,
  SockApp,
  ConvertServiceForm in 'ConvertServiceForm.pas' {Form1},
  ConvertServiceModule in 'ConvertServiceModule.pas' {WebModule2: TWebModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TWebModule2, WebModule2);
  Application.Run;
end.
