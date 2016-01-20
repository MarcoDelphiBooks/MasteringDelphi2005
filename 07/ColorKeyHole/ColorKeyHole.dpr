program ColorKeyHole;

{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.Drawing.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.Delphi.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.Vcl.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclActnBand.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclAdoNet.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclBdeRtl.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclDbCtrls.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclDbExpress.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclDbRtl.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclDSnap.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclDSnapCon.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclIBXpress.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclInterop.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclRtl.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclX.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\program files\common files\borland shared\bds\shared assemblies\2.0\Borland.VclXmlRtl.dll'}

uses
  Forms,
  CkForm in 'CkForm.pas' {Form1},
  AlphaForm in 'AlphaForm.pas' {Form2},
  PlainForm in 'PlainForm.pas' {Form3};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
