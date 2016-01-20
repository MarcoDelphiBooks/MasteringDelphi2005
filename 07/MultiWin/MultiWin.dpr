program MultiWin;

{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\system.drawing.dll'}

uses
  Forms,
  MainForm in 'MainForm.pas' {Form1},
  MWForm2 in 'MWForm2.pas' {Form2},
  MWForm3 in 'MWForm3.pas' {Form3},
  MWForm4 in 'MWForm4.pas' {Form4};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
