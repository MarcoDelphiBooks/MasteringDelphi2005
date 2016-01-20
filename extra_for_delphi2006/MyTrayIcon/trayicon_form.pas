unit trayicon_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus;

type
  TForm4 = class(TForm)
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    one1: TMenuItem;
    two1: TMenuItem;
    three1: TMenuItem;
    four1: TMenuItem;
    procedure one1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.one1Click(Sender: TObject);
begin
  Show;
end;

end.
