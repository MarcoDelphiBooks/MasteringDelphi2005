unit inlinenewtest_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

const
  LoopCount = 10000000;

var
  ssample : string;

type
  another = class
    procedure test;
  end;

function MyLengthInline (const s: AnsiString): Longint; inline;
begin
  Result := Longint(S);
  if Result <> 0 then
    Result := PLongint(Result-4)^;
end;

function MyLength (const s: AnsiString): Longint;
begin
  Result := Longint(S);
  if Result <> 0 then
    Result := PLongint(Result-4)^;
end;


procedure TForm4.Button1Click(Sender: TObject);
var
  t: Cardinal;
  I, J: Integer;
begin
  ssample:= 'sample string';
  J := 0;
  t := GetTickCount;
  for I := 0 to LoopCount do
    Inc (J, MyLength (ssample));
  memo1.Lines.Add ('Length ' + IntToStr(GetTickCount - t)  + '[' + IntToStr (J) + ']');
end;

procedure TForm4.Button2Click(Sender: TObject);
var
  t: Cardinal;
  I, J: Integer;
begin
  ssample:= 'sample string';
  J := 0;
  t := GetTickCount;
  for I := 0 to LoopCount do
    Inc (J, MyLengthInline (ssample));
  memo1.Lines.Add ('Inline ' + IntToStr(GetTickCount - t)  + '[' + IntToStr (J) + ']');
end;

{ another }

procedure another.test;
begin

end;

end.
