unit SampleRefactoringForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnTest: TButton;
    CheckBox1: TCheckBox;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
  private
    FAnyString: string;
    procedure NumberToString(i: Integer);
    procedure AddToList(i: Integer; var nTotal: Integer);
    procedure SetAnyString(const Value: string);
    procedure ToListBox(const outStr: string);
    { Private declarations }
  public
    { Public declarations }
    property AnyOtherString: string read FAnyString write SetAnyString;
  end;

var
  Form1: TForm1;

implementation

uses
  DateUtils;

resourcestring
  StrThisIsAVeryLong = 'This is a very long string that won''t even fit in a' +
  ' line of code after I refactor it';

{$R *.dfm}

procedure DisplayHello;
begin
  ShowMessage ('hello');
end;

procedure TForm1.btnTestClick(Sender: TObject);
var
  strTest: string;
begin
  strTest := 'Hello';
  strTest := StrThisIsAVeryLong;
  strTest := 'This is a multiple'#13#10#13#10'Resource String';
  DisplayHello;
end;

procedure TForm1.NumberToString(i: Integer);
var
  outStr: string;
begin
  begin
    outStr := IntToStr(i);
    ToListBox(outStr);
  end;
end;

procedure TForm1.AddToList(i: Integer; var nTotal: Integer);
begin
  begin
    nTotal := nTotal + I;
    ListBox1.Items.Add(IntToStr(i));
  end;
end;


procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  btnTest.Enabled := CheckBox1.Checked;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to 10 do
    NumberToString(i);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
  nTotal: Integer;
begin
  nTotal := 0;
  for i := 1 to 10 do
    AddToList(i, nTotal);
  ListBox1.Items.Add (IntToStr (nTotal));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Caption := IntToStr (MinuteOf (Now));
end;

procedure TForm1.SetAnyString(const Value: string);
begin
  FAnyString := Value;
end;

procedure TForm1.ToListBox(const outStr: string); // const added manually
begin
  ListBox1.Items.Add(outStr);
end;

end.
