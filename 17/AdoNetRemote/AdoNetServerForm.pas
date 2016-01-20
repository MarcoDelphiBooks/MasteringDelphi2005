unit AdoNetServerForm;

interface

uses
  System.Drawing, System.Collections, System.ComponentModel,
  System.Windows.Forms, System.Data, Borland.Data.Common, Borland.Data.Provider, 
  System.Data.Common, Borland.Data.Remoting;

type
  TWinForm = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    BdpConnection1: Borland.Data.Provider.BdpConnection;
    BdpDataAdapter1: Borland.Data.Provider.BdpDataAdapter;
    bdpSelectCommand1: Borland.Data.Provider.BdpCommand;
    bdpInsertCommand1: Borland.Data.Provider.BdpCommand;
    bdpUpdateCommand1: Borland.Data.Provider.BdpCommand;
    bdpDeleteCommand1: Borland.Data.Provider.BdpCommand;
    RemoteServer1: Borland.Data.Remoting.RemoteServer;
    DataSync1: Borland.Data.Provider.DataSync;
    ListBox1: System.Windows.Forms.ListBox;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure RemoteServer1_OnGetDataProvider(sender: System.Object; e: Borland.Data.Remoting.ConnectionEventArgs);
    procedure TWinForm_Load(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  private
    { Private Declarations }
  public
    constructor Create;
  end;

  [assembly: RuntimeRequiredAttribute(TypeOf(TWinForm))]

implementation

{$AUTOBOX ON}

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWinForm.InitializeComponent;
type
  TArrayOfSystem_Data_Common_DataTableMapping = array of System.Data.Common.DataTableMapping;
  TArrayOfSystem_Data_Common_DataColumnMapping = array of System.Data.Common.DataColumnMapping;
begin
  Self.BdpConnection1 := Borland.Data.Provider.BdpConnection.Create;
  Self.BdpDataAdapter1 := Borland.Data.Provider.BdpDataAdapter.Create;
  Self.bdpDeleteCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpInsertCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpSelectCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpUpdateCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.RemoteServer1 := Borland.Data.Remoting.RemoteServer.Create;
  Self.DataSync1 := Borland.Data.Provider.DataSync.Create;
  Self.ListBox1 := System.Windows.Forms.ListBox.Create;
  (System.ComponentModel.ISupportInitialize(Self.BdpDataAdapter1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.RemoteServer1)).BeginInit;
  Self.SuspendLayout;
  // 
  // BdpConnection1
  // 
  Self.BdpConnection1.ConnectionOptions := 'waitonlocks=False;transaction is' +
  'olation=ReadCommitted;commitretain=False;sqldialect=3;servercharset=;role' +
  'name=myrole';
  Self.BdpConnection1.ConnectionString := 'assembly=Borland.Data.Interbase,V' +
  'ersion=2.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b;vendorclie' +
  'nt=gds32.dll;database=C:\Program Files\Borland\InterBase\examples\Databas' +
  'e\EMPLOYEE.GDB;provider=Interbase;username=sysdba;password=masterkey';
  // 
  // BdpDataAdapter1
  // 
  Self.BdpDataAdapter1.Active := False;
  Self.BdpDataAdapter1.DataSet := nil;
  Self.BdpDataAdapter1.DataTable := nil;
  Self.BdpDataAdapter1.DeleteCommand := Self.bdpDeleteCommand1;
  Self.BdpDataAdapter1.InsertCommand := Self.bdpInsertCommand1;
  Self.BdpDataAdapter1.SelectCommand := Self.bdpSelectCommand1;
  Self.BdpDataAdapter1.StartRecord := 0;
  Self.BdpDataAdapter1.TableMappings.AddRange(TArrayOfSystem_Data_Common_DataTableMapping.Create(System.Data.Common.DataTableMapping.Create('T' +
          'able', 'EMPLOYEE', TArrayOfSystem_Data_Common_DataColumnMapping.Create(System.Data.Common.DataColumnMapping.Create('E' +
                'MP_NO', 'EMP_NO'), System.Data.Common.DataColumnMapping.Create('F' +
                'IRST_NAME', 'FIRST_NAME'), System.Data.Common.DataColumnMapping.Create('L' +
                'AST_NAME', 'LAST_NAME'), System.Data.Common.DataColumnMapping.Create('P' +
                'HONE_EXT', 'PHONE_EXT'), System.Data.Common.DataColumnMapping.Create('H' +
                'IRE_DATE', 'HIRE_DATE'), System.Data.Common.DataColumnMapping.Create('D' +
                'EPT_NO', 'DEPT_NO'), System.Data.Common.DataColumnMapping.Create('J' +
                'OB_CODE', 'JOB_CODE'), System.Data.Common.DataColumnMapping.Create('J' +
                'OB_GRADE', 'JOB_GRADE'), System.Data.Common.DataColumnMapping.Create('J' +
                'OB_COUNTRY', 'JOB_COUNTRY'), System.Data.Common.DataColumnMapping.Create('S' +
                'ALARY', 'SALARY'), System.Data.Common.DataColumnMapping.Create('F' +
                'ULL_NAME', 'FULL_NAME')))));
  Self.BdpDataAdapter1.UpdateCommand := Self.bdpUpdateCommand1;
  // 
  // bdpDeleteCommand1
  // 
  Self.bdpDeleteCommand1.CommandOptions := nil;
  Self.bdpDeleteCommand1.CommandText := 'DELETE FROM EMPLOYEE WHERE EMP_NO =' +
  ' ? AND FIRST_NAME = ? AND LAST_NAME = ? AND PHONE_EXT = ? AND HIRE_DATE =' +
  ' ? AND DEPT_NO = ? AND JOB_CODE = ? AND JOB_GRADE = ? AND JOB_COUNTRY = ?' +
  ' AND SALARY = ? AND FULL_NAME = ?';
  Self.bdpDeleteCommand1.CommandType := System.Data.CommandType.Text;
  Self.bdpDeleteCommand1.Connection := Self.BdpConnection1;
  Self.bdpDeleteCommand1.ParameterCount := (SmallInt(11));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('E' +
      'MP_NOOriginal', Borland.Data.Common.BdpType.Int16, Borland.Data.Common.BdpType.Unknown, 
        2, System.Data.ParameterDirection.Input, False, (Byte(2)), (Byte(0)), 
        2, 'EMP_NO', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'IRST_NAMEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'FIRST_NAME', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('L' +
      'AST_NAMEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'LAST_NAME', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('P' +
      'HONE_EXTOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        5, System.Data.ParameterDirection.Input, False, (Byte(4)), (Byte(0)), 
        4, 'PHONE_EXT', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('H' +
      'IRE_DATEOriginal', Borland.Data.Common.BdpType.DateTime, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(16)), (Byte(0)), 
        16, 'HIRE_DATE', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('D' +
      'EPT_NOOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.stFixed, 
        4, System.Data.ParameterDirection.Input, False, (Byte(3)), (Byte(0)), 
        3, 'DEPT_NO', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_CODEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        6, System.Data.ParameterDirection.Input, False, (Byte(5)), (Byte(0)), 
        5, 'JOB_CODE', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_GRADEOriginal', Borland.Data.Common.BdpType.Int16, Borland.Data.Common.BdpType.Unknown, 
        2, System.Data.ParameterDirection.Input, False, (Byte(2)), (Byte(0)), 
        2, 'JOB_GRADE', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_COUNTRYOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'JOB_COUNTRY', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('S' +
      'ALARYOriginal', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(2)), 
        8, 'SALARY', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'ULL_NAMEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        38, System.Data.ParameterDirection.Input, False, (Byte(37)), (Byte(0)), 
        37, 'FULL_NAME', System.Data.DataRowVersion.Original, nil));
  Self.bdpDeleteCommand1.SchemaName := nil;
  Self.bdpDeleteCommand1.Transaction := nil;
  Self.bdpDeleteCommand1.UpdatedRowSource := System.Data.UpdateRowSource.None;
  // 
  // bdpInsertCommand1
  // 
  Self.bdpInsertCommand1.CommandOptions := nil;
  Self.bdpInsertCommand1.CommandText := 'INSERT INTO EMPLOYEE (EMP_NO, FIRST' +
  '_NAME, LAST_NAME, PHONE_EXT, HIRE_DATE, DEPT_NO, JOB_CODE, JOB_GRADE, JOB' +
  '_COUNTRY, SALARY ) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
  Self.bdpInsertCommand1.CommandType := System.Data.CommandType.Text;
  Self.bdpInsertCommand1.Connection := Self.BdpConnection1;
  Self.bdpInsertCommand1.ParameterCount := (SmallInt(10));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('E' +
      'MP_NO', Borland.Data.Common.BdpType.Int16, Borland.Data.Common.BdpType.Unknown, 
        2, System.Data.ParameterDirection.Input, False, (Byte(2)), (Byte(0)), 
        2, 'EMP_NO', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'IRST_NAME', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'FIRST_NAME', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('L' +
      'AST_NAME', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'LAST_NAME', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('P' +
      'HONE_EXT', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        5, System.Data.ParameterDirection.Input, False, (Byte(4)), (Byte(0)), 
        4, 'PHONE_EXT', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('H' +
      'IRE_DATE', Borland.Data.Common.BdpType.DateTime, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(16)), (Byte(0)), 
        16, 'HIRE_DATE', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('D' +
      'EPT_NO', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.stFixed, 
        4, System.Data.ParameterDirection.Input, False, (Byte(3)), (Byte(0)), 
        3, 'DEPT_NO', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_CODE', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        6, System.Data.ParameterDirection.Input, False, (Byte(5)), (Byte(0)), 
        5, 'JOB_CODE', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_GRADE', Borland.Data.Common.BdpType.Int16, Borland.Data.Common.BdpType.Unknown, 
        2, System.Data.ParameterDirection.Input, False, (Byte(2)), (Byte(0)), 
        2, 'JOB_GRADE', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_COUNTRY', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'JOB_COUNTRY', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('S' +
      'ALARY', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(2)), 
        8, 'SALARY', System.Data.DataRowVersion.Current, nil));
  Self.bdpInsertCommand1.SchemaName := nil;
  Self.bdpInsertCommand1.Transaction := nil;
  Self.bdpInsertCommand1.UpdatedRowSource := System.Data.UpdateRowSource.None;
  // 
  // bdpSelectCommand1
  // 
  Self.bdpSelectCommand1.CommandOptions := nil;
  Self.bdpSelectCommand1.CommandText := 'SELECT * FROM EMPLOYEE';
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
  Self.bdpUpdateCommand1.CommandText := 'UPDATE EMPLOYEE SET EMP_NO = ?, FIR' +
  'ST_NAME = ?, LAST_NAME = ?, PHONE_EXT = ?, HIRE_DATE = ?, DEPT_NO = ?, JO' +
  'B_CODE = ?, JOB_GRADE = ?, JOB_COUNTRY = ?, SALARY = ? WHERE EMP_NO = ? A' +
  'ND FIRST_NAME = ? AND LAST_NAME = ? AND PHONE_EXT = ? AND HIRE_DATE = ? A' +
  'ND DEPT_NO = ? AND JOB_CODE = ? AND JOB_GRADE = ? AND JOB_COUNTRY = ? AND' +
  ' SALARY = ? AND FULL_NAME = ?';
  Self.bdpUpdateCommand1.CommandType := System.Data.CommandType.Text;
  Self.bdpUpdateCommand1.Connection := Self.BdpConnection1;
  Self.bdpUpdateCommand1.ParameterCount := (SmallInt(21));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('E' +
      'MP_NO', Borland.Data.Common.BdpType.Int16, Borland.Data.Common.BdpType.Unknown, 
        2, System.Data.ParameterDirection.Input, False, (Byte(2)), (Byte(0)), 
        2, 'EMP_NO', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'IRST_NAME', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'FIRST_NAME', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('L' +
      'AST_NAME', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'LAST_NAME', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('P' +
      'HONE_EXT', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        5, System.Data.ParameterDirection.Input, False, (Byte(4)), (Byte(0)), 
        4, 'PHONE_EXT', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('H' +
      'IRE_DATE', Borland.Data.Common.BdpType.DateTime, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(16)), (Byte(0)), 
        16, 'HIRE_DATE', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('D' +
      'EPT_NO', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.stFixed, 
        4, System.Data.ParameterDirection.Input, False, (Byte(3)), (Byte(0)), 
        3, 'DEPT_NO', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_CODE', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        6, System.Data.ParameterDirection.Input, False, (Byte(5)), (Byte(0)), 
        5, 'JOB_CODE', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_GRADE', Borland.Data.Common.BdpType.Int16, Borland.Data.Common.BdpType.Unknown, 
        2, System.Data.ParameterDirection.Input, False, (Byte(2)), (Byte(0)), 
        2, 'JOB_GRADE', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_COUNTRY', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'JOB_COUNTRY', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('S' +
      'ALARY', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(2)), 
        8, 'SALARY', System.Data.DataRowVersion.Current, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('E' +
      'MP_NOOriginal', Borland.Data.Common.BdpType.Int16, Borland.Data.Common.BdpType.Unknown, 
        2, System.Data.ParameterDirection.Input, False, (Byte(2)), (Byte(0)), 
        2, 'EMP_NO', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'IRST_NAMEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'FIRST_NAME', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('L' +
      'AST_NAMEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        21, System.Data.ParameterDirection.Input, False, (Byte(20)), (Byte(0)), 
        20, 'LAST_NAME', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('P' +
      'HONE_EXTOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        5, System.Data.ParameterDirection.Input, False, (Byte(4)), (Byte(0)), 
        4, 'PHONE_EXT', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('H' +
      'IRE_DATEOriginal', Borland.Data.Common.BdpType.DateTime, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(16)), (Byte(0)), 
        16, 'HIRE_DATE', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('D' +
      'EPT_NOOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.stFixed, 
        4, System.Data.ParameterDirection.Input, False, (Byte(3)), (Byte(0)), 
        3, 'DEPT_NO', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_CODEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        6, System.Data.ParameterDirection.Input, False, (Byte(5)), (Byte(0)), 
        5, 'JOB_CODE', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_GRADEOriginal', Borland.Data.Common.BdpType.Int16, Borland.Data.Common.BdpType.Unknown, 
        2, System.Data.ParameterDirection.Input, False, (Byte(2)), (Byte(0)), 
        2, 'JOB_GRADE', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('J' +
      'OB_COUNTRYOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        16, System.Data.ParameterDirection.Input, False, (Byte(15)), (Byte(0)), 
        15, 'JOB_COUNTRY', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('S' +
      'ALARYOriginal', Borland.Data.Common.BdpType.Double, Borland.Data.Common.BdpType.Unknown, 
        8, System.Data.ParameterDirection.Input, False, (Byte(8)), (Byte(2)), 
        8, 'SALARY', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.Parameters.Add(Borland.Data.Common.BdpParameter.Create('F' +
      'ULL_NAMEOriginal', Borland.Data.Common.BdpType.&String, Borland.Data.Common.BdpType.Unknown, 
        38, System.Data.ParameterDirection.Input, False, (Byte(37)), (Byte(0)), 
        37, 'FULL_NAME', System.Data.DataRowVersion.Original, nil));
  Self.bdpUpdateCommand1.SchemaName := nil;
  Self.bdpUpdateCommand1.Transaction := nil;
  Self.bdpUpdateCommand1.UpdatedRowSource := System.Data.UpdateRowSource.None;
  // 
  // RemoteServer1
  // 
  Self.RemoteServer1.AutoStart := True;
  Self.RemoteServer1.ChannelType := Borland.Data.Remoting.ChannelType.Tcp;
  Self.RemoteServer1.ClientProperties := nil;
  Self.RemoteServer1.DataSync := Self.DataSync1;
  Self.RemoteServer1.Port := 8000;
  Self.RemoteServer1.Tracing := False;
  Self.RemoteServer1.TrackingHandler := nil;
  Self.RemoteServer1.URI := 'AdoNetServer';
  Include(Self.RemoteServer1.OnGetDataProvider, Self.RemoteServer1_OnGetDataProvider);
  // 
  // DataSync1
  // 
  Self.DataSync1.CommitBehavior := Borland.Data.Provider.CommitBehaviorType.Atomic;
  Self.DataSync1.InitialLeaseTime := 40;
  Self.DataSync1.Providers.Add(Borland.Data.Common.DataProvider.Create('Prov' +
      'iderEmployee', Self.BdpDataAdapter1, 'EmployeeTable', Borland.Data.Common.BdpUpdateMode.Key, 
        nil, nil));
  Self.DataSync1.RenewOnCallTime := 40;
  Self.DataSync1.SponsorShipTimeout := 30;
  // 
  // ListBox1
  // 
  Self.ListBox1.Location := System.Drawing.Point.Create(16, 16);
  Self.ListBox1.Name := 'ListBox1';
  Self.ListBox1.Size := System.Drawing.Size.Create(256, 212);
  Self.ListBox1.TabIndex := 0;
  // 
  // TWinForm
  // 
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(292, 266);
  Self.Controls.Add(Self.ListBox1);
  Self.Name := 'TWinForm';
  Self.Text := 'AdoNetServer';
  Include(Self.Load, Self.TWinForm_Load);
  (System.ComponentModel.ISupportInitialize(Self.BdpDataAdapter1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.RemoteServer1)).EndInit;
  Self.ResumeLayout(False);
end;
{$ENDREGION}

procedure TWinForm.Dispose(Disposing: Boolean);
begin
  if Disposing then
  begin
    if Components <> nil then
      Components.Dispose();
  end;
  inherited Dispose(Disposing);
end;

constructor TWinForm.Create;
begin
  inherited Create;
  //
  // Required for Windows Form Designer support
  //
  InitializeComponent;
  //
  // TODO: Add any constructor code after InitializeComponent call
  //
end;

procedure TWinForm.TWinForm_Load(sender: System.Object; e: System.EventArgs);
begin
  BdpDataAdapter1.Active := True;
end;

procedure TWinForm.RemoteServer1_OnGetDataProvider(sender: System.Object; e: Borland.Data.Remoting.ConnectionEventArgs);
begin
  Listbox1.Items.Add ('Data requested');
end;

end.
