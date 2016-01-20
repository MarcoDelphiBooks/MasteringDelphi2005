program ToDoTest;

{%ToDo 'ToDoTest.todo'}
{%File 'ModelSupport\ToDoForm\ToDoForm.txvpck'}
{%File 'ModelSupport\default.txvpck'}

uses
  Forms,
  ToDoForm in 'ToDoForm.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
