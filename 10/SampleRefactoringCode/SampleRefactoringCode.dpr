program SampleRefactoringCode;

uses
  Forms,
  DateUtils,
  Dialogs,
  SysUtils,
  SampleRefactoringForm in 'SampleRefactoringForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  ShowMessage (IntToStr (MinuteOf (Now)));
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
