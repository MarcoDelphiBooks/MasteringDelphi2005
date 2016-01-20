unit StyleD;

interface

uses
  SysUtils, Windows, Classes, Graphics, Forms,
  Controls, Buttons, StdCtrls;

type
  TStyleDial = class(TForm)
    ItalicCheckBox: TCheckBox;
    BoldCheckBox: TCheckBox;
    UnderlineCheckBox: TCheckBox;
    LabelSample: TLabel;
    btnApply: TButton;
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure ItalicCheckBoxClick(Sender: TObject);
    procedure BoldCheckBoxClick(Sender: TObject);
    procedure UnderlineCheckBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StyleDial: TStyleDial;

implementation

{$R *.DFM}

{allow access to the main form}
uses Main;

procedure TStyleDial.ItalicCheckBoxClick(Sender: TObject);
begin
  if ItalicCheckBox.Checked then
    LabelSample.Font.Style := LabelSample.Font.Style + [fsItalic]
  else
    LabelSample.Font.Style := LabelSample.Font.Style - [fsItalic];
end;

procedure TStyleDial.BoldCheckBoxClick(Sender: TObject);
begin
  if BoldCheckBox.Checked then
    LabelSample.Font.Style := LabelSample.Font.Style + [fsBold]
  else
    LabelSample.Font.Style := LabelSample.Font.Style - [fsBold];
end;

procedure TStyleDial.UnderlineCheckBoxClick(Sender: TObject);
begin
  if UnderlineCheckBox.Checked then
    LabelSample.Font.Style := LabelSample.Font.Style + [fsUnderline]
  else
    LabelSample.Font.Style := LabelSample.Font.Style - [fsUnderline];
end;

procedure TStyleDial.btnApplyClick(Sender: TObject);
var
  I: Integer;
begin
  {copy the style from the sample label of the dialog box
  to the five labels of the main form}
  for I := 1 to 5 do
    (Form1.FindComponent ('Label' + IntToStr (I)) as TLabel).
       Font.Style := LabelSample.Font.Style;
end;

procedure TStyleDial.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.

