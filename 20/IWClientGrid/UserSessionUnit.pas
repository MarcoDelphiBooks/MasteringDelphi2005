unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, DB, DBClient, SimpleDS;

type
  TIWUserSession = class(TIWUserSessionBase)
    SimpleDataSet1: TSimpleDataSet;
    SimpleDataSet1EMP_NO: TSmallintField;
    SimpleDataSet1FIRST_NAME: TStringField;
    SimpleDataSet1LAST_NAME: TStringField;
    SimpleDataSet1PHONE_EXT: TStringField;
    SimpleDataSet1DEPT_NO: TStringField;
    SimpleDataSet1JOB_CODE: TStringField;
    SimpleDataSet1JOB_GRADE: TSmallintField;
    SimpleDataSet1JOB_COUNTRY: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.