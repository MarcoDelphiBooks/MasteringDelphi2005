unit LogDemoForm;

interface

uses
  System.Drawing, System.Collections, System.ComponentModel,
  System.Windows.Forms, System.Data, Borland.Data.Provider, Borland.Data.Common, 
  System.Data.Common, System.Globalization, System.Text;

type
  TWinForm1 = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    BdpConnection1: Borland.Data.Provider.BdpConnection;
    TextBox1: System.Windows.Forms.TextBox;
    BdpDataAdapter1: Borland.Data.Provider.BdpDataAdapter;
    bdpSelectCommand1: Borland.Data.Provider.BdpCommand;
    bdpInsertCommand1: Borland.Data.Provider.BdpCommand;
    bdpUpdateCommand1: Borland.Data.Provider.BdpCommand;
    bdpDeleteCommand1: Borland.Data.Provider.BdpCommand;
    DataSet1: System.Data.DataSet;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure BdpConnection1_Tracing(sender: System.Object; e: Borland.Data.Common.BdpTracingEventArgs);
    procedure TWinForm1_Load(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  private
    LogData: StringBuilder;
  public
    constructor Create;
  end;

  [assembly: RuntimeRequiredAttribute(TypeOf(TWinForm1))]

implementation

{$AUTOBOX ON}

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWinForm1.InitializeComponent;
type
  TArrayOfSystem_Data_Common_DataTableMapping = array of System.Data.Common.DataTableMapping;
  TArrayOfSystem_Data_Common_DataColumnMapping = array of System.Data.Common.DataColumnMapping;
begin
  Self.BdpConnection1 := Borland.Data.Provider.BdpConnection.Create;
  Self.TextBox1 := System.Windows.Forms.TextBox.Create;
  Self.BdpDataAdapter1 := Borland.Data.Provider.BdpDataAdapter.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  Self.bdpDeleteCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpInsertCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpSelectCommand1 := Borland.Data.Provider.BdpCommand.Create;
  Self.bdpUpdateCommand1 := Borland.Data.Provider.BdpCommand.Create;
  (System.ComponentModel.ISupportInitialize(Self.BdpDataAdapter1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  Self.SuspendLayout;
  // 
  // BdpConnection1
  // 
  Self.BdpConnection1.ConnectionOptions := 'waitonlocks=False;commitretain=F' +
  'alse;tracing=True;sqldialect=3;transaction isolation=ReadCommitted;server' +
  'charset=;rolename=';
  Self.BdpConnection1.ConnectionString := 'assembly=Borland.Data.Interbase,V' +
  'ersion=2.5.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b;vendorclie' +
  'nt=gds32.dll;pooling=True;grow on demand=True;database=C:\Program Files\C' +
  'ommon Files\Borland Shared\Data\EMPLOYEE.GDB;username=sysdba;max pool siz' +
  'e=100;password=masterkey;provider=Interbase';
  Include(Self.BdpConnection1.Tracing, Self.BdpConnection1_Tracing);
  // 
  // TextBox1
  // 
  Self.TextBox1.Location := System.Drawing.Point.Create(8, 16);
  Self.TextBox1.Multiline := True;
  Self.TextBox1.Name := 'TextBox1';
  Self.TextBox1.Size := System.Drawing.Size.Create(440, 272);
  Self.TextBox1.TabIndex := 0;
  Self.TextBox1.Text := '';
  // 
  // BdpDataAdapter1
  // 
  Self.BdpDataAdapter1.Active := False;
  Self.BdpDataAdapter1.DataSet := Self.DataSet1;
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
  // DataSet1
  // 
  Self.DataSet1.DataSetName := 'NewDataSet';
  Self.DataSet1.Locale := System.Globalization.CultureInfo.Create('en-US');
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
  // TWinForm1
  // 
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(464, 326);
  Self.Controls.Add(Self.TextBox1);
  Self.Name := 'TWinForm1';
  Self.Text := 'BdpLogDemo';
  Include(Self.Load, Self.TWinForm1_Load);
  (System.ComponentModel.ISupportInitialize(Self.BdpDataAdapter1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).EndInit;
  Self.ResumeLayout(False);
end;

procedure TWinForm1.TWinForm1_Load(sender: TObject; e: System.EventArgs);
begin
  LogData := StringBuilder.Create;
  BdpConnection1.Open;
  BdpDataAdapter1.Active := True;
end;

{$ENDREGION}

procedure TWinForm1.Dispose(Disposing: Boolean);
begin
  if Disposing then
  begin
    if Components <> nil then
      Components.Dispose();
  end;
  inherited Dispose(Disposing);
end;

constructor TWinForm1.Create;
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

procedure TWinForm1.BdpConnection1_Tracing(
  sender: System.Object;
  e: Borland.Data.Common.BdpTracingEventArgs);
begin
  LogData.Append(e.Message + sLineBreak);
  TextBox1.Text := LogData.ToString;
end;

end.
