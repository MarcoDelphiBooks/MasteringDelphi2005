unit FLookupDm;

interface

uses
  SysUtils, Classes, DB, DBTables, DBClient;

type
  TDataModule1 = class(TDataModule)
    cdsOrders: TClientDataSet;
    cdsEmployee: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cdsOrdersOrderNo: TFloatField;
    cdsOrdersCustNo: TFloatField;
    cdsOrdersSaleDate: TDateTimeField;
    cdsOrdersShipDate: TDateTimeField;
    cdsOrdersEmpNo: TIntegerField;
    cdsOrdersShipToContact: TStringField;
    cdsOrdersShipToAddr1: TStringField;
    cdsOrdersShipToAddr2: TStringField;
    cdsOrdersShipToCity: TStringField;
    cdsOrdersShipToState: TStringField;
    cdsOrdersShipToZip: TStringField;
    cdsOrdersShipToCountry: TStringField;
    cdsOrdersShipToPhone: TStringField;
    cdsOrdersShipVIA: TStringField;
    cdsOrdersPO: TStringField;
    cdsOrdersTerms: TStringField;
    cdsOrdersPaymentMethod: TStringField;
    cdsOrdersItemsTotal: TCurrencyField;
    cdsOrdersTaxRate: TFloatField;
    cdsOrdersFreight: TCurrencyField;
    cdsOrdersAmountPaid: TCurrencyField;
    cdsOrdersEmployee: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  cdsOrders.Open;
  cdsEmployee.Open;
end;

end.
