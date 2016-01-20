program SoapDataClient;

uses
  Forms,
  SoapDataForm in 'SoapDataForm.pas' {FormSDC},
  ISampleDataModule1 in 'Isampledatamodule1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSDC, FormSDC);
  Application.Run;
end.
