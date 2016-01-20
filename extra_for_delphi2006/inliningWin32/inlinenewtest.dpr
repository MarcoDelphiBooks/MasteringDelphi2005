program inlinenewtest;

uses
  Forms,
  inlinenewtest_form in 'inlinenewtest_form.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
