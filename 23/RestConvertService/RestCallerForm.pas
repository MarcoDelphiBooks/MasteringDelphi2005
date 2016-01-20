unit RestCallerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    btnConvert: TButton;
    btnFill: TButton;
    EditAmount: TEdit;
    ComboBoxFrom: TComboBox;
    ComboBoxTo: TComboBox;
    LabelResult: TLabel;
    IdHTTP1: TIdHTTP;
    procedure btnConvertClick(Sender: TObject);
    procedure btnFillClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  StrUtils;

const
  baseUrl = 'http://localhost:1024/RestConvertService.RestCurrency';
  resultTag = '<result>';
  resTagLenght = Length (resultTag);

procedure TForm1.btnConvertClick(Sender: TObject);
var
  strResult: string;
begin
  strResult := IdHTTP1.Get(baseUrl +
    '/convertcurrency?from=' + ComboBoxFrom.Text +
    '&dest=' + ComboBoxTo.Text +
    '&amount=' + EditAmount.Text);
  LabelResult.Caption := copy (strResult, resTagLenght + 1,
    Length (strResult) - (resTagLenght * 2 + 1));
end;

procedure TForm1.btnFillClick(Sender: TObject);
var
  strTypeNames: string;
  nPos, nInit, nEnd: Integer;
begin
  strTypeNames := IdHTTP1.Get(baseUrl + '/typeslist');
  ComboBoxFrom.Items.Clear;
  nPos := Pos ('<type>', strTypeNames);
  while nPos > 0 do
  begin
    nInit := nPos + 6;
    nEnd := PosEx ('</type>', strTypeNames, nPos);
    ComboBoxFrom.Items.Add (Copy (strTypeNames, nInit, nEnd - nInit));
    nPos := PosEx ('<type>', strTypeNames, nEnd);
  end;
  ComboBoxTo.Items := ComboBoxFrom.Items;
end;

end.
