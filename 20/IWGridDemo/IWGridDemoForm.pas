unit IWGridDemoForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, DB, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWGrids,
  IWDBGrids;

type
  TMainForm1 = class(TIWAppForm)
    IWDBGrid1: TIWDBGrid;
    DataSource1: TDataSource;
    procedure IWDBGrid1Columns1Click(ASender: TObject; const AValue: string);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, IWRecordForm;

procedure TMainForm1.IWAppFormCreate(Sender: TObject);
begin
  UserSession.SimpleDataSet1.Open;
  DataSource1.DataSet := UserSession.SimpleDataSet1;
end;

procedure TMainForm1.IWDBGrid1Columns1Click(ASender: TObject;
  const AValue: string);
begin
  with TRecordForm.Create (WebApplication) do
  begin
    StartID := AValue;
    Show;
  end;
end;

initialization
  TMainForm1.SetAsMainForm;

end.
