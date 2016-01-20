unit ChOwn2;

interface

{$WARN UNIT_PLATFORM OFF}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm2 = class(TForm)
    ButtonList: TButton;
    ListBox1: TListBox;
    procedure ButtonListClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}


procedure TForm2.ButtonListClick(Sender: TObject);
{var
 I: Integer;
begin
  ListBox1.Items.Clear;
  for I := 0 to ComponentCount - 1 do
    ListBox1.Items.Add (Components[I].Name);}

var
  aComp: TComponent;
begin
  ListBox1.Items.Clear;
  for aComp in self do
    ListBox1.Items.Add (aComp.Name);
end;

end.
