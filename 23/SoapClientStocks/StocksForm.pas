unit StocksForm;

// WARNING: you might see a long delay or an error message
// from time to time: there are problems with the web service!

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, InvokeRegistry, Rio, SOAPHTTPClient;

type
  TForm1 = class(TForm)
    edTicker: TEdit;
    btnCheck: TButton;
    memoOutput: TMemo;
    HTTPRIO1: THTTPRIO;
    HTTPRIO2: THTTPRIO;
    btnRio1: TButton;
    btnRio2: TButton;
    procedure btnRio2Click(Sender: TObject);
    procedure btnRio1Click(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  xmethods_delayed_quotes;

{$R *.dfm}

procedure TForm1.btnCheckClick(Sender: TObject);
begin
  memoOutput.Lines.Add (edTicker.Text + ': ' + FloatToStr (
    Get_StockQuotePortType.getQuote(edTicker.Text)));
end;

procedure TForm1.btnRio1Click(Sender: TObject);
begin
  // via function
//  memoOutput.Lines.Add (edTicker.Text + ': ' + FloatToStr (
//    Get_StockQuotePortType (True, '', HTTPRIO1).
//      getQuote(edTicker.Text)));
  // direct
  memoOutput.Lines.Add (edTicker.Text + ': ' + FloatToStr (
    (HTTPRIO1 as StockQuotePortType).getQuote(edTicker.Text)));
end;

procedure TForm1.btnRio2Click(Sender: TObject);
begin
  memoOutput.Lines.Add (edTicker.Text + ': ' + FloatToStr (
    Get_StockQuotePortType (False, '', HTTPRIO2).
      getQuote(edTicker.Text)));
end;

end.
