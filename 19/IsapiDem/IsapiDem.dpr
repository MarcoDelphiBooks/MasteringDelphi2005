library IsapiDem;

uses
  SysUtils, Classes, Windows, Isapi2;

function GetExtensionVersion (
  var Ver: THSE_VERSION_INFO): BOOL; stdcall;
begin
  with Ver do
  begin
    dwExtensionVersion := $00010000;
    StrCopy (lpszExtensionDesc, 'Low-level Isapi Demo');
  end;
  Result := True;
end;

function HttpExtensionProc (
  var ECB: TEXTENSION_CONTROL_BLOCK): DWORD; stdcall;
var
  OutStr: string;
  StrLength: Cardinal;
begin
  with ECB do
  begin
    OutStr :=
      '<html><head><title>First Isapi Demo</title></head><body>' +
      '<h2><center>First Isapi Demo</center></h2>' +
      '<p>Hello Mastering Delphi Readers...</p><hr>' +
      '<p><b>Activated by ' + PChar(@lpszPathInfo[1]) + '</b></p>' +
      '<p><i>From IsapiDLL on ' + DateToStr(Now) + ' at ' + TimeToStr(Now) +
      '</i></p></body></html>';
    StrLength := Length (OutStr);
    WriteClient(ConnID, PChar (OutStr), StrLength, 0);
  end;
  Result := HSE_STATUS_SUCCESS;
end;

exports
  GetExtensionVersion,
  HttpExtensionProc;

end.

