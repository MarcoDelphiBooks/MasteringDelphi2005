unit IWTwoMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWGrids;

type
  TTwoMainForm = class(TIWAppForm)
    IWGrid1: TIWGrid;
    btnShowGraphic: TIWButton;
    btnCloseMain: TIWButton;
    procedure btnCloseMainClick(Sender: TObject);
    procedure btnShowGraphicClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IWHTMLControls, IWTwoAnotherForm;

procedure TTwoMainForm.IWAppFormCreate(Sender: TObject);
var
  i: Integer;
  link: TIWURL;
begin
  // set grid titles
  IWGrid1.Cell[0, 0].Text := 'Row';
  IWGrid1.Cell[0, 1].Text := 'Owner';
  IWGrid1.Cell[0, 2].Text := 'Web Site';
  // set grid contents
  for i := 1 to IWGrid1.RowCount - 1 do
  begin
    IWGrid1.Cell [i,0].Text := 'Row ' + IntToStr (i+1);
    IWGrid1.Cell [i,1].Text := 'IWTwoForms by Marco Cantu';
    link := TIWURL.Create(Self);
    link.Text := 'Click here';
    link.URL := 'http://www.marcocantu.com';
    IWGrid1.Cell [i,2].Control := link;
  end;
end;

procedure TTwoMainForm.btnShowGraphicClick(Sender: TObject);
var
  anotherform: TAnotherForm;
begin
  anotherform := TAnotherForm.Create(WebApplication);
  anotherform.Show;
end;

procedure TTwoMainForm.btnCloseMainClick(Sender: TObject);
begin
  // show a message
  // WebApplication.Terminate('Hello');
  // redirect user to another page/site
  WebApplication.TerminateAndRedirect('http://www.marcocantu.com');
end;

initialization
  TTwoMainForm.SetAsMainForm;

end.
