unit AppSRDM;

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, AppSPlus_TLB, StdVcl, Db, Provider, DBTables, Variants,
  DBXpress, SqlExpr, FMTBcd, WideStrings;

type
  TAppServerPlus = class(TRemoteDataModule, IAppServerPlus)
    DataSourceDept: TDataSource;
    ProviderDepartments: TDataSetProvider;
    ProviderQuery: TDataSetProvider;
    SQLMonitor1: TSQLMonitor;
    SQLConnection1: TSQLConnection;
    SQLWithParams: TSQLDataSet;
    SQLDepartments: TSQLDataSet;
    SQLEmployees: TSQLDataSet;
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure ProviderQueryGetDataSetProperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure ProviderDepartmentsUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure ProviderDepartmentsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ProviderDepartmentsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure ProviderEmployeeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ProviderEmployeeAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure ProviderEmployeeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure Login(const Name, Password: WideString); safecall;
  public
    { Public declarations }
  end;

implementation

uses AppSForm;

{$R *.DFM}

class procedure TAppServerPlus.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TAppServerPlus.Login(const Name, Password: WideString);
begin
  if Password <> Name then
    raise Exception.Create ('Wrong name/password combination received');
  ProviderDepartments.Exported := True;
  ServerForm.Add ('Login:' + Name + '/' + Password);
end;

procedure TAppServerPlus.ProviderQueryGetDataSetProperties(Sender: TObject;
  DataSet: TDataSet; out Properties: OleVariant);
begin
  Properties := VarArrayCreate([0,1], varVariant);
  Properties[0] := VarArrayOf(['Time', Now, True]);
  Properties[1] := VarArrayOf(['Param', SQLWithParams.Params[0].AsString, False]);
end;

procedure TAppServerPlus.ProviderDepartmentsUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  ServerForm.Add ('ProviderCustomer.OnUpdateData');
end;

procedure TAppServerPlus.ProviderDepartmentsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  ServerForm.Add ('ProviderCustomer.UpdateRecord');
end;

procedure TAppServerPlus.ProviderDepartmentsBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  ServerForm.Add ('ProviderCustomer.BeforeGetRecords: ' + string(OwnerData));
end;


procedure TAppServerPlus.ProviderEmployeeBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  ServerForm.Add ('fix hire date');
  DeltaDS.FieldByName('HIRE_DATE').NewValue := Now;
end;

procedure TAppServerPlus.ProviderEmployeeAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  ServerForm.Add ('after apply...');
end;

procedure TAppServerPlus.ProviderEmployeeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  ServerForm.Add ('Error: ' + E.Message);
end;

procedure TAppServerPlus.RemoteDataModuleCreate(Sender: TObject);
begin
  ProviderDepartments.Exported := False;
end;

initialization
  TComponentFactory.Create(ComServer, TAppServerPlus,
    Class_AppServerPlus, ciMultiInstance, tmApartment);
end.
