unit DynaMemo;

interface

procedure ShowStringForm (str: string);

implementation

uses
  Forms, Controls, StdCtrls;

procedure ShowStringForm (str: string);
var
  form: TForm;
begin
  Application.CreateForm(TForm, form);
  form.caption := 'DynaForm';
  form.Position := poScreenCenter;
  with TMemo.Create (form) do
  begin
    Align := alClient;
    Scrollbars := ssVertical;
    ReadOnly := True;
    Color := form.Color;
    BorderStyle := bsNone;
    WordWrap := True;
    Text := str;
    Parent := form;
  end;
  form.Show;
end;

end.
