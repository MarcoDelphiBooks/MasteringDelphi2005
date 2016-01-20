program TLibCli;

uses
  Forms,
  TLibCliF in 'TLibCliF.pas' {ClientForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TClientForm, ClientForm);
  Application.Run;
end.
