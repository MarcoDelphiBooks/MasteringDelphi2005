program InlineWin32;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

function MyLength (const s: AnsiString): Longint; inline;
begin
  Result := Longint(S);
  if Result <> 0 then
    Result := PLongint(Result-4)^;
end;

const
  LoopCount = 100000000;
var
  t: Cardinal;
  I, J: Integer;
  ssample: string;
begin
  ssample:= 'sample string';
  J := 0;
  t := GetTickCount;
  for I := 0 to LoopCount do
    Inc (J, MyLength (ssample));
  WriteLn ('[' + IntToStr (J) + '] - '+  IntToStr(GetTickCount - t) +
'ms');
  ReadLn;

end.
