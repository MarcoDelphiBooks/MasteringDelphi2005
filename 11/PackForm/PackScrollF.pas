unit PackScrollF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TFormScroll = class(TForm)
    ScrollBarRed: TScrollBar;
    ScrollBarGreen: TScrollBar;
    ScrollBarBlue: TScrollBar;
    LabelRed: TLabel;
    LabelGreen: TLabel;
    LabelBlue: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    LabelScroll: TLabel;
    TrackBar1: TTrackBar;
    Panel1: TPanel;
    sbRed: TSpeedButton;
    sbBlue: TSpeedButton;
    sbGreen: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure ScrollBarsScroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbRedClick(Sender: TObject);
    procedure sbBlueClick(Sender: TObject);
    procedure sbGreenClick(Sender: TObject);
  private
    procedure SetSelColor (Col: TColor);
    function GetSelColor: TColor;
  public
    procedure ApplyClick (Sender: TObject);
  published  
    property SelectedColor: TColor
      read GetSelColor write SetSelColor;
  end;

implementation

{$R *.DFM}

procedure TFormScroll.ScrollBarsScroll(Sender: TObject;
  ScrollCode: TScrollCode; var ScrollPos: Integer);
begin
  (Sender as TScrollBar).Hint := IntToStr(ScrollPos);

  Shape1.Brush.Color := RGB (ScrollBarRed.Position,
    ScrollBarGreen.Position, ScrollBarBlue.Position);
end;

procedure TFormScroll.TrackBar1Change(Sender: TObject);
begin
  LabelScroll.Caption := 'Scroll by ' + IntToStr(TrackBar1.Position);
  ScrollBarGreen.LargeChange := TrackBar1.Position;
  ScrollBarRed.LargeChange := TrackBar1.Position;
  ScrollBarBlue.LargeChange := TrackBar1.Position;
end;

procedure TFormScroll.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // used by the modeless form
  Action := caFree;
end;

procedure TFormScroll.ApplyClick(Sender: TObject);
begin
  // set the color of the main form
  Application.MainForm.Color := SelectedColor;
end;

procedure TFormScroll.sbRedClick(Sender: TObject);
begin
  SelectedColor := clRed;
end;

// set and get properties

function TFormScroll.GetSelColor: TColor;
begin
  Result := RGB (ScrollBarRed.Position,
    ScrollBarGreen.Position, ScrollBarBlue.Position);
end;

procedure TFormScroll.SetSelColor (Col: TColor);
var
  RGBCol: Integer;
begin
  RGBCol := ColorToRGB (Col);
  ScrollBarRed.Position := GetRValue (RGBCol);
  ScrollBarGreen.Position := GetGValue (RGBCol);
  ScrollBarBlue.Position := GetBValue (RGBCol);
  Shape1.Brush.Color := Col;
end;

procedure TFormScroll.sbBlueClick(Sender: TObject);
begin
  SelectedColor := clBlue;
end;

procedure TFormScroll.sbGreenClick(Sender: TObject);
begin
  SelectedColor := clGreen;
end;

initialization
  RegisterClass (TFormScroll);

end.
