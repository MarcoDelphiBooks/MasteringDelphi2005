unit IWSimpleAppForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompButton, IWCompListbox, IWCompEdit, Controls;

type
  TMainForm = class(TIWAppForm)
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWListbox1: TIWListbox;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$IFDEF CLR}
  {$R *.nfm}
{$ELSE}
  {$R *.dfm}
{$ENDIF}

procedure TMainForm.IWButton1Click(Sender: TObject);
begin
  IWListBox1.Items.Add (IWEdit1.Text);
end;

procedure TMainForm.IWButton2Click(Sender: TObject);
var
  nItem: Integer;
begin
  nItem := IWListbox1.ItemIndex;
  if nItem >= 0 then
    WebApplication.ShowMessage (IWListBox1.Items [nItem])
  else
    WebApplication.ShowMessage ('No item selected');
end;

initialization
{$IFDEF CLR}
  TMainForm.SetAsMainForm(typeof(TMainForm));
{$ELSE}
  TMainForm.SetAsMainForm;
{$ENDIF}
end.
