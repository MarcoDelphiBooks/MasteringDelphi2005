unit ForInContainerForm;

interface

{$WARN UNIT_PLATFORM OFF}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TContainerForm = class(TForm)
    btnTest: TButton;
    procedure btnTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContainerForm: TContainerForm;

implementation

{$R *.dfm}

uses
  Contnrs;

procedure TContainerForm.btnTestClick(Sender: TObject);
var
  anObjectList: TObjectList;
{$IFDEF WIN32}
  pt: Pointer;
{$ELSE}
  pt: TObject;
{$ENDIF}
begin
  anObjectList := TObjectList.Create (False); // was missing and crashing on exit
  try
    anObjectList.Add (self);
    anObjectList.Add (Sender);

    for pt in anObjectList do
      ShowMessage (TObject(pt).ClassName);
  finally
    anObjectList.Free;
  end;
end;

end.
