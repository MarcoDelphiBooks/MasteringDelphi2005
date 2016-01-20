unit IWScrollDataForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWGrids,
  IWDBGrids, DB, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompButton;

type
  TMainForm = class(TIWAppForm)
    btnPrevius: TIWButton;
    DataSource1: TDataSource;
    btnNext: TIWButton;
    IWDBGrid1: TIWDBGrid;
    procedure btnPreviusClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  private
    nPos: Integer;
  end;

implementation

uses
  UserSessionUnit, ServerController;

{$R *.dfm}


procedure TMainForm.IWAppFormCreate(Sender: TObject);
begin
  DataSource1.DataSet := UserSession.SimpleDataSet1;
  DataSource1.DataSet.Open;
end;

procedure TMainForm.btnNextClick(Sender: TObject);
var
  i: Integer;
begin
  nPos := nPos + 10;
  if nPos > DataSource1.DataSet.RecordCount - 10 then
    nPos := DataSource1.DataSet.RecordCount - 10;
  DataSource1.DataSet.First;
  for i := 0 to nPos do
    DataSource1.DataSet.Next;
end;

procedure TMainForm.btnPreviusClick(Sender: TObject);
var
  i: Integer;
begin
  nPos := nPos - 10;
  if nPos < 0 then
    nPos := 0;
  DataSource1.DataSet.First;
  for i := 0 to nPos do
    DataSource1.DataSet.Next;
end;

initialization
  TMainForm.SetAsMainForm;

end.
