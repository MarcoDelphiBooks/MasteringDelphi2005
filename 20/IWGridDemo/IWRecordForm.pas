unit IWRecordForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, DB,
  IWCompButton, IWCompLabel, IWDBStdCtrls, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompEdit;

type
  TRecordForm = class(TIWAppForm)
    IWDBEdit1: TIWDBEdit;
    IWDBEdit2: TIWDBEdit;
    IWDBEdit3: TIWDBEdit;
    IWDBEdit4: TIWDBEdit;
    IWDBNavigator1: TIWDBNavigator;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWButton1: TIWButton;
    DataSource1: TDataSource;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  private
    FStartID: string;
    procedure SetStartID(const Value: string);
  public
    property StartID: string read FStartID write SetStartID;
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TRecordForm.IWButton1Click(Sender: TObject);
begin
  Release;
end;

procedure TRecordForm.IWAppFormCreate(Sender: TObject);
begin
  UserSession.SimpleDataSet1.Open;
  DataSource1.DataSet := UserSession.SimpleDataSet1;
end;

procedure TRecordForm.SetStartID(const Value: string);
begin
  FStartID := Value;
  DataSource1.DataSet.Locate('EMP_NO', Value, []);
end;

end.
