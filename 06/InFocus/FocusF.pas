unit FocusF;

interface

{$WARN UNIT_PLATFORM OFF}

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ComCtrls;

type
  TFocusForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditFirstName: TEdit;
    EditLastName: TEdit;
    EditPassword: TEdit;
    StatusBar1: TStatusBar;
    procedure GlobalEnter(Sender: TObject);
    procedure EditFirstNameExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FocusForm: TFocusForm;

implementation

{$R *.DFM}

uses
  Menus; // for StripHotKey

procedure TFocusForm.GlobalEnter(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to ControlCount - 1 do
    // if the control is a label
    if (Controls [I] is TLabel) and
      // and the label is connected to the current edit box
      (TLabel(Controls[I]).FocusControl = Sender) then
    begin
      // remove the & used for the accelerator key
      StatusBar1.SimpleText := 'Enter ' + StripHotKey (
        TLabel(Controls[I]).Caption);
    end;
end;

procedure TFocusForm.EditFirstNameExit(Sender: TObject);
begin
  if EditFirstName.Text = '' then
  begin
    // don't let the user get out
    EditFirstName.SetFocus;
    MessageDlg ('First name is required',
      mtError, [mbOK], 0);
  end
  else if EditFirstName.Text = 'Admin' then
  begin
    // fill the second edit and jump to the third
    EditLastName.Text := 'Admin';
    EditPassword.SetFocus;
  end;
end;

end.

 