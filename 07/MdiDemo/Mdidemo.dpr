program Mdidemo;

{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.Drawing.dll'}
{%File 'ModelSupport\Frame\Frame.txvpck'}
{%File 'ModelSupport\Child\Child.txvpck'}
{%File 'ModelSupport\default.txvpck'}

uses
  Forms,
  Frame in 'Frame.pas' {MainForm},
  Child in 'Child.pas' {ChildForm};

{$R *.RES}

begin
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

