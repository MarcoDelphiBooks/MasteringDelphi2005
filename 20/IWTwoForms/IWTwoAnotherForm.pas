unit IWTwoAnotherForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Graphics,
  IWExtCtrls, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompButton;

type
  TAnotherForm = class(TIWAppForm)
    IWButton1: TIWButton;
    IWImage1: TIWImage;
    procedure IWImage1MouseDown(ASender: TObject; const AX, AY: Integer);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TAnotherForm.IWButton1Click(Sender: TObject);
begin
  Release;
end;

procedure TAnotherForm.IWImage1MouseDown(ASender: TObject; const AX,
  AY: Integer);
var
  aCanvas: TCanvas;
begin
  aCanvas := IWImage1.Picture.Bitmap.Canvas;
  aCanvas.Pen.Width := 8;
  aCanvas.Pen.Color := clGreen;
  aCanvas.Ellipse(Ax - 10, Ay - 10, Ax + 10, Ay + 10);
end;

end.
