program VclClient;

uses
  Forms,
  VclClientForm in 'VclClientForm.pas' {Form1},
  WebServiceImport in 'WebServiceImport.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
