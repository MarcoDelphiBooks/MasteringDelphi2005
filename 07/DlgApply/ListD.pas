unit ListD;

interface

uses Windows, Classes, Graphics, Forms,
  Controls, Buttons, StdCtrls;

type
  TListDial = class(TForm)
    ListBox1: TListBox;
    btnOK: TButton;
    btnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListDial: TListDial;

implementation

{$R *.DFM}

end.

