library Firstdll;

uses
  FirstDllCode in 'FirstDllCode.pas';

exports
  Triple (N: Integer),
  Triple (C: Char) name 'TripleChar', // overlaoded!
  Double, DoubleString, DoublePChar;

end.
