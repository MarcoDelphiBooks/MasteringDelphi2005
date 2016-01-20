program SoapClientStocks;

uses
  Forms,
  StocksForm in 'StocksForm.pas' {Form1},
  xmethods_delayed_quotes in 'xmethods_delayed_quotes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
