program SaxDemo1;

uses
  Forms,
  SaxForm in 'SaxForm.pas' {Form1},
  MSXML2_TLB in 'MSXML2_TLB.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
