object IWUserSession: TIWUserSession
  OldCreateOrder = False
  Height = 150
  Width = 215
  object SimpleDataSet1: TSimpleDataSet
    Aggregates = <>
    Connection.ConnectionName = 'IBConnection'
    Connection.DriverName = 'Interbase'
    Connection.GetDriverFunc = 'getSQLDriverINTERBASE'
    Connection.LibraryName = 'dbexpint.dll'
    Connection.LoginPrompt = False
    Connection.Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Program Files\Common Files\Borland Shared\Data\emplo' +
        'yee.gdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    Connection.VendorLib = 'GDS32.DLL'
    Connection.Connected = True
    DataSet.CommandText = 'select * from EMPLOYEE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 56
    Top = 32
  end
end
