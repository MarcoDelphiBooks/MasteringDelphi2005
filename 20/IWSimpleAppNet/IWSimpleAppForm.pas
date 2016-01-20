unit IWSimpleAppForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  System.ComponentModel, Borland.Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton, IWCompListbox, IWCompEdit;

type
  TIWForm1 = class(TIWAppForm)
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

{$R *.nfm}

procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  IWListBox1.Items.Add (IWEdit1.Text);
end;

procedure TIWForm1.IWButton2Click(Sender: TObject);
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
  TIWForm1.SetAsMainForm(typeof(TIWForm1));


end.
