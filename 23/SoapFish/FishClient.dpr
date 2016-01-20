program FishClient;

uses
  Forms,
  FishClientForm in 'FishClientForm.pas' {Form1},
  SoapFish1 in 'SoapFish1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
