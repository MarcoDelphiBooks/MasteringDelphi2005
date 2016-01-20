unit VariantCompForm;

interface

{$WARN UNIT_PLATFORM OFF}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    btnEqual: TButton;
    btnCompare: TButton;
    radRules: TRadioGroup;
    btnCompare2: TButton;
    procedure btnEqualClick(Sender: TObject);
    procedure radRulesClick(Sender: TObject);
    procedure btnCompareClick(Sender: TObject);
    procedure btnCompare2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnEqualClick(Sender: TObject);
var
  a, b: variant;
begin
  a := 0;
  b := NULL;
  if a = b then
    ShowMessage ('0 and 5 are equal')
  else
    ShowMessage ('0 and 5 are different')
end;

procedure TForm1.radRulesClick(Sender: TObject);
begin
{$IFDEF WIN32}
  case radRules.ItemIndex of
    0: begin
      NullEqualityRule := ncrLoose;
      NullMagnitudeRule := ncrLoose;
    end;
    1: begin
      NullEqualityRule := ncrStrict;
      NullMagnitudeRule := ncrStrict;
    end;
    2: begin
      NullEqualityRule := ncrError;
      NullMagnitudeRule := ncrError;
    end;
  end;
{$ELSE}
  case radRules.ItemIndex of
    0: begin
      Variant.NullEqualityRule := ncrLoose;
      Variant.NullMagnitudeRule := ncrLoose;
    end;
    1: begin
      Variant.NullEqualityRule := ncrStrict;
      Variant.NullMagnitudeRule := ncrStrict;
    end;
    2: begin
      Variant.NullEqualityRule := ncrError;
      Variant.NullMagnitudeRule := ncrError;
    end;
  end;
{$ENDIF}
end;

procedure TForm1.btnCompareClick(Sender: TObject);
var
  a, b: variant;
begin
  a := 5;
  b := NULL;
  if a > b then
    ShowMessage ('5 is larger than Null')
  else
    ShowMessage ('5 is smaller than Null')
end;

procedure TForm1.btnCompare2Click(Sender: TObject);
var
  a, b: variant;
begin
  a := -5;
  b := NULL;
  if a > b then
    ShowMessage ('-5 is larger than Null')
  else
    ShowMessage ('-5 is smaller than Null')
end;

end.
