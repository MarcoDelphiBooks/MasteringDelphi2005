
unit WebForm1;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  Borland.Data.Common, Borland.Data.Provider, System.Globalization, 
  System.Data.Common;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Literal1: System.Web.UI.WebControls.Literal;
    BdpConnection1: Borland.Data.Provider.BdpConnection;
    BdpDataAdapter1: Borland.Data.Provider.BdpDataAdapter;
    bdpSelectCommand1: Borland.Data.Provider.BdpCommand;
    bdpInsertCommand1: Borland.Data.Provider.BdpCommand;
    bdpUpdateCommand1: Borland.Data.Provider.BdpCommand;
    bdpDeleteCommand1: Borland.Data.Provider.BdpCommand;
    DataSet1: System.Data.DataSet;
    CustomerTable: System.Data.DataTable;
    DataColumn1: System.Data.DataColumn;
    DataColumn2: System.Data.DataColumn;
    DataColumn3: System.Data.DataColumn;
    DataColumn4: System.Data.DataColumn;
    DataColumn5: System.Data.DataColumn;
    DataColumn6: System.Data.DataColumn;
    DataColumn7: System.Data.DataColumn;
    DataColumn8: System.Data.DataColumn;
    DataColumn9: System.Data.DataColumn;
    DataColumn10: System.Data.DataColumn;
    DataColumn11: System.Data.DataColumn;
    DataColumn12: System.Data.DataColumn;
    DataColumn13: System.Data.DataColumn;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

implementation

uses
  System.XML, System.XML.XSL, System.IO, System.Collections.Specialized;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.InitializeComponent;
type
  TArrayOfSystem_Data_Common_DataTableMapping = array of System.Data.Common.DataTableMapping;
  TArrayOfSystem_Data_Common_DataColumnMapping = array of System.Data.Common.DataColumnMapping;
  TArrayOfSystem_Data_DataTable = array of System.Data.DataTable;
  TArrayOfSystem_Data_DataColumn = array of System.Data.DataColumn;
  TArrayOfSystem_Data_Constraint = array of System.Data.Constraint;
  TArrayOfString = array of string;
begin
  Self.BdpConnection1 := Borland.Data.Provider.BdpConnection.Create;
  Self.BdpDataAdapter1 := Borland.Data.Provider.BdpDataAdapter.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  Self.CustomerTable := System.Data.DataTable.Create;
  Self.DataColumn1 := System.Data.DataColumn.Create;
  Self.DataColumn2 := System.Data.DataColumn.Create;
  Self.DataColumn3 := System.Data.DataColumn.Create;
  Self.DataColumn4 := System.Data.DataColumn.Create;
  Self.DataColumn5 := System.Data.DataColumn.Create;
  Self.DataColumn6 := System.Data.DataColumn.Create;
  Self.DataColumn7 := System.Data.DataColumn.Create;
  Self.DataColumn8 := System.Data.DataColumn.Create;
  Self.DataColumn9 := System.Data.DataColumn.Create;
  Self.DataColumn10 := System.Data.DataColumn.Create;
  Self.DataColumn11 := System.Data.DataColumn.Create;
  Self.DataColumn12 := System.Data.DataColumn.Create;
  Self.DataColumn13 := System.Data.DataColumn.Create;
  Self.bdpDeleteCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpInsertCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpSelectCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpUpdateCommand1 := Borland.Data.Provider.BdpCommand.Create;
  (System.ComponentModel.ISupportInitialize(Self.BdpDataAdapter1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.CustomerTable)).BeginInit;
  // 
  // BdpConnection1
  // 
  Self.BdpConnection1.ConnectionOptions := 'waitonlocks=False;commitretain=F' +
  'alse;sqldialect=3;transaction isolation=ReadCommitted;servercharset=;role' +
  'name=myrole';
  Self.BdpConnection1.ConnectionString := 'database=C:\Program Files\Common ' +
  'Files\Borland Shared\Data\dbdemos.gdb;assembly=Borland.Data.Interbase,Ver' +
  'sion=2.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b;vendorclient' +
  '=gds32.dll;provider=Interbase;username=sysdba;password=masterkey';
  // 
  // BdpDataAdapter1
  // 
  Self.BdpDataAdapter1.Active := False;
  Self.BdpDataAdapter1.DataSet := Self.DataSet1;
  Self.BdpDataAdapter1.DataTable := Self.CustomerTable;
  Self.BdpDataAdapter1.DeleteCommand := Self.bdpDeleteCommand1;
  Self.BdpDataAdapter1.InsertCommand := Self.bdpInsertCommand1;
  Self.BdpDataAdapter1.SelectCommand := Self.bdpSelectCommand1;
  Self.BdpDataAdapter1.StartRecord := 0;
  Self.BdpDataAdapter1.TableMappings.AddRange(TArrayOfSystem_Data_Common_DataTableMapping.Create(System.Data.Common.DataTableMapping.Create('T' +
          'able', 'CUSTOMER', TArrayOfSystem_Data_Common_DataColumnMapping.Create(System.Data.Common.DataColumnMapping.Create('C' +
                'USTNO', 'CUSTNO'), System.Data.Common.DataColumnMapping.Create('C' +
                'OMPANY', 'COMPANY'), System.Data.Common.DataColumnMapping.Create('A' +
                'DDR1', 'ADDR1'), System.Data.Common.DataColumnMapping.Create('A' +
                'DDR2', 'ADDR2'), System.Data.Common.DataColumnMapping.Create('C' +
                'ITY', 'CITY'), System.Data.Common.DataColumnMapping.Create('S' +
                'TATE', 'STATE'), System.Data.Common.DataColumnMapping.Create('Z' +
                'IP', 'ZIP'), System.Data.Common.DataColumnMapping.Create('C' +
                'OUNTRY', 'COUNTRY'), System.Data.Common.DataColumnMapping.Create('P' +
                'HONE', 'PHONE'), System.Data.Common.DataColumnMapping.Create('F' +
                'AX', 'FAX'), System.Data.Common.DataColumnMapping.Create('T' +
                'AXRATE', 'TAXRATE'), System.Data.Common.DataColumnMapping.Create('C' +
                'ONTACT', 'CONTACT'), System.Data.Common.DataColumnMapping.Create('L' +
                'ASTINVOICEDATE', 'LASTINVOICEDATE')))));
  Self.BdpDataAdapter1.UpdateCommand := Self.bdpUpdateCommand1;
  // 
  // DataSet1
  // 
  Self.DataSet1.DataSetName := 'NewDataSet';
  Self.DataSet1.Locale := System.Globalization.CultureInfo.Create('en-US');
  Self.DataSet1.Tables.AddRange(TArrayOfSystem_Data_DataTable.Create(Self.CustomerTable));
  // 
  // CustomerTable
  // 
  Self.CustomerTable.Columns.AddRange(TArrayOfSystem_Data_DataColumn.Create(Self.DataColumn1, 
          Self.DataColumn2, Self.DataColumn3, Self.DataColumn4, Self.DataColumn5, 
          Self.DataColumn6, Self.DataColumn7, Self.DataColumn8, Self.DataColumn9, 
          Self.DataColumn10, Self.DataColumn11, Self.DataColumn12, Self.DataColumn13));
  Self.CustomerTable.Constraints.AddRange(TArrayOfSystem_Data_Constraint.Create(System.Data.UniqueConstraint.Create('C' +
          'onstraint1', TArrayOfString.Create('CUSTNO'), True)));
  Self.CustomerTable.PrimaryKey := TArrayOfSystem_Data_DataColumn.Create(Self.DataColumn1);
  Self.CustomerTable.TableName := 'CUSTOMER';
  // 
  // DataColumn1
  // 
  Self.DataColumn1.AllowDBNull := False;
  Self.DataColumn1.ColumnName := 'CUSTNO';
  Self.DataColumn1.DataType := TypeOf(System.Double);
  // 
  // DataColumn2
  // 
  Self.DataColumn2.ColumnName := 'COMPANY';
  Self.DataColumn2.MaxLength := 31;
  // 
  // DataColumn3
  // 
  Self.DataColumn3.ColumnName := 'ADDR1';
  Self.DataColumn3.MaxLength := 31;
  // 
  // DataColumn4
  // 
  Self.DataColumn4.ColumnName := 'ADDR2';
  Self.DataColumn4.MaxLength := 31;
  // 
  // DataColumn5
  // 
  Self.DataColumn5.ColumnName := 'CITY';
  Self.DataColumn5.MaxLength := 16;
  // 
  // DataColumn6
  // 
  Self.DataColumn6.ColumnName := 'STATE';
  Self.DataColumn6.MaxLength := 21;
  // 
  // DataColumn7
  // 
  Self.DataColumn7.ColumnName := 'ZIP';
  Self.DataColumn7.MaxLength := 11;
  // 
  // DataColumn8
  // 
  Self.DataColumn8.ColumnName := 'COUNTRY';
  Self.DataColumn8.MaxLength := 21;
  // 
  // DataColumn9
  // 
  Self.DataColumn9.ColumnName := 'PHONE';
  Self.DataColumn9.MaxLength := 16;
  // 
  // DataColumn10
  // 
  Self.DataColumn10.ColumnName := 'FAX';
  Self.DataColumn10.MaxLength := 16;
  // 
  // DataColumn11
  // 
  Self.DataColumn11.ColumnName := 'TAXRATE';
  Self.DataColumn11.DataType := TypeOf(System.Double);
  // 
  // DataColumn12
  // 
  Self.DataColumn12.ColumnName := 'CONTACT';
  Self.DataColumn12.MaxLength := 21;
  // 
  // DataColumn13
  // 
  Self.DataColumn13.ColumnName := 'LASTINVOICEDATE';
  Self.DataColumn13.DataType := TypeOf(System.DateTime);
  // 
  // bdpDeleteCommand1
  // 
  Self.bdpDeleteCommand1.CommandOptions := nil;
  Self.bdpDeleteCommand1.CommandText := 'DELETE FROM CUSTOMER WHERE CUSTNO =' +
  ' ? AND COMPANY = ? AND ADDR1 = ? AND ADDR2 = ? AND CITY = ? AND STATE = ?' +
  ' AND ZIP = ? AND COUNTRY = ? AND PHONE = ? AND FAX = ? AND TAXRATE = ? AN' +
  'D CONTACT = ? AND LASTINVOICEDATE = ?';
  Self.bdpDeleteCommand1.CommandType := System.Data.CommandType.Text;
  Self.bdpDeleteCommand1.Connection := Self.BdpConnection1;
  Self.bdpDeleteCommand1.ParameterCount := (SmallInt(13));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'USTNOOriginal', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(0)), 
        8, 'CUSTNO', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'OMPANYOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'COMPANY', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('A' +
      'DDR1Original', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'ADDR1', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('A' +
      'DDR2Original', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'ADDR2', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'ITYOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'CITY', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('S' +
      'TATEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'STATE', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('Z' +
      'IPOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        11, System.Data.ParameterDirection.Input, False, (Byte(10)), (Byte(0)), 
        10, 'ZIP', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'OUNTRYOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'COUNTRY', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('P' +
      'HONEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'PHONE', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'AXOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'FAX', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('T' +
      'AXRATEOriginal', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(0)), 
        8, 'TAXRATE', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'ONTACTOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'CONTACT', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('L' +
      'ASTINVOICEDATEOriginal', Borland.Data.Common.BdpType.DateTime, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(16)), (Byte(0)), 
        16, 'LASTINVOICEDATE', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.SchemaName := nil;
  Self.bdpDeleteCommand1.Transaction := nil;
  Self.bdpDeleteCommand1.UpdatedRowSource := System.Data.UpdateRowSource.None;
  // 
  // bdpInsertCommand1
  // 
  Self.bdpInsertCommand1.CommandOptions := nil;
  Self.bdpInsertCommand1.CommandText := 'INSERT INTO CUSTOMER (CUSTNO, COMPA' +
  'NY, ADDR1, ADDR2, CITY, STATE, ZIP, COUNTRY, PHONE, FAX, TAXRATE, CONTACT' +
  ', LASTINVOICEDATE ) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
  Self.bdpInsertCommand1.CommandType := System.Data.CommandType.Text;
  Self.bdpInsertCommand1.Connection := Self.BdpConnection1;
  Self.bdpInsertCommand1.ParameterCount := (SmallInt(13));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'USTNO', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(0)), 
        8, 'CUSTNO', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'OMPANY', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'COMPANY', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('A' +
      'DDR1', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'ADDR1', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('A' +
      'DDR2', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'ADDR2', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'ITY', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'CITY', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('S' +
      'TATE', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'STATE', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('Z' +
      'IP', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        11, System.Data.ParameterDirection.Input, False, (Byte(10)), (Byte(0)), 
        10, 'ZIP', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'OUNTRY', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'COUNTRY', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('P' +
      'HONE', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'PHONE', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'AX', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'FAX', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('T' +
      'AXRATE', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(0)), 
        8, 'TAXRATE', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'ONTACT', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'CONTACT', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('L' +
      'ASTINVOICEDATE', Borland.Data.Common.BdpType.DateTime, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(16)), (Byte(0)), 
        16, 'LASTINVOICEDATE', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.SchemaName := nil;
  Self.bdpInsertCommand1.Transaction := nil;
  Self.bdpInsertCommand1.UpdatedRowSource := System.Data.UpdateRowSource.None;
  // 
  // bdpSelectCommand1
  // 
  Self.bdpSelectCommand1.CommandOptions := nil;
  Self.bdpSelectCommand1.CommandText := 'SELECT * FROM CUSTOMER';
  Self.bdpSelectCommand1.CommandType := System.Data.CommandType.Text;
  Self.bdpSelectCommand1.Connection := Self.BdpConnection1;
  Self.bdpSelectCommand1.ParameterCount := (SmallInt(0));
  Self.bdpSelectCommand1.SchemaName := nil;
  Self.bdpSelectCommand1.Transaction := nil;
  Self.bdpSelectCommand1.UpdatedRowSource := System.Data.UpdateRowSource.None;
  // 
  // bdpUpdateCommand1
  // 
  Self.bdpUpdateCommand1.CommandOptions := nil;
  Self.bdpUpdateCommand1.CommandText := 'UPDATE CUSTOMER SET CUSTNO = ?, COM' +
  'PANY = ?, ADDR1 = ?, ADDR2 = ?, CITY = ?, STATE = ?, ZIP = ?, COUNTRY = ?' +
  ', PHONE = ?, FAX = ?, TAXRATE = ?, CONTACT = ?, LASTINVOICEDATE = ? WHERE' +
  ' CUSTNO = ? AND COMPANY = ? AND ADDR1 = ? AND ADDR2 = ? AND CITY = ? AND ' +
  'STATE = ? AND ZIP = ? AND COUNTRY = ? AND PHONE = ? AND FAX = ? AND TAXRA' +
  'TE = ? AND CONTACT = ? AND LASTINVOICEDATE = ?';
  Self.bdpUpdateCommand1.CommandType := System.Data.CommandType.Text;
  Self.bdpUpdateCommand1.Connection := Self.BdpConnection1;
  Self.bdpUpdateCommand1.ParameterCount := (SmallInt(26));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'USTNO', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(0)), 
        8, 'CUSTNO', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'OMPANY', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'COMPANY', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('A' +
      'DDR1', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'ADDR1', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('A' +
      'DDR2', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'ADDR2', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'ITY', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'CITY', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('S' +
      'TATE', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'STATE', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('Z' +
      'IP', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        11, System.Data.ParameterDirection.Input, False, (Byte(10)), (Byte(0)), 
        10, 'ZIP', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'OUNTRY', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'COUNTRY', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('P' +
      'HONE', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'PHONE', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'AX', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'FAX', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('T' +
      'AXRATE', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(0)), 
        8, 'TAXRATE', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'ONTACT', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'CONTACT', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('L' +
      'ASTINVOICEDATE', Borland.Data.Common.BdpType.DateTime, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(16)), (Byte(0)), 
        16, 'LASTINVOICEDATE', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'USTNOOriginal', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(0)), 
        8, 'CUSTNO', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'OMPANYOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'COMPANY', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('A' +
      'DDR1Original', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'ADDR1', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('A' +
      'DDR2Original', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        31, System.Data.ParameterDirection.Input, False, (Byte(30)), (Byte(0)), 
        30, 'ADDR2', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'ITYOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'CITY', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('S' +
      'TATEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'STATE', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('Z' +
      'IPOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        11, System.Data.ParameterDirection.Input, False, (Byte(10)), (Byte(0)), 
        10, 'ZIP', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'OUNTRYOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'COUNTRY', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('P' +
      'HONEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'PHONE', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'AXOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'FAX', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('T' +
      'AXRATEOriginal', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(0)), 
        8, 'TAXRATE', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('C' +
      'ONTACTOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'CONTACT', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('L' +
      'ASTINVOICEDATEOriginal', Borland.Data.Common.BdpType.DateTime, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(16)), (Byte(0)), 
        16, 'LASTINVOICEDATE', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.SchemaName := nil;
  Self.bdpUpdateCommand1.Transaction := nil;
  Self.bdpUpdateCommand1.UpdatedRowSource := System.Data.UpdateRowSource.None;
  Include(Self.Load, Self.Page_Load);
  (System.ComponentModel.ISupportInitialize(Self.BdpDataAdapter1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.CustomerTable)).EndInit;
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
var
  XmlDoc: XmlDocument;
  xslfile: string;
  XslDoc: XslTransform;
  writer: StringWriter;
begin
  // load XML
  XmlDoc :=  XmlDocument.Create;
  BdpDataAdapter1.Active := True;
  XmlDoc.LoadXml(DataSet1.GetXml);

  // load XSL
  XslDoc := XslTransform.Create;
  xslfile := Request.QueryString.Item ['style'];
  if xslfile = '' then
    xslfile := 'customer.xsl';
  XslDoc.Load(MapPath ('.') + '/' + xslfile);

  // produce output
  writer := StringWriter.Create;
  XslDoc.Transform (XmlDoc, nil, writer);
  Literal1.Text := writer.ToString;
end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

end.

