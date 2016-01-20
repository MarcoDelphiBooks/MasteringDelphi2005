unit AdoNetClientForm;

interface

uses
  System.Drawing, System.Collections, System.ComponentModel,
  System.Windows.Forms, System.Data, Borland.Data.Common, Borland.Data.Provider, 
  System.Data.Common, Borland.Data.Remoting, System.Globalization;

type
  TWinForm = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    RemoteConnection1: Borland.Data.Remoting.RemoteConnection;
    DataHub1: Borland.Data.Provider.DataHub;
    DataSet1: System.Data.DataSet;
    DataGrid1: System.Windows.Forms.DataGrid;
    btnOpen: System.Windows.Forms.Button;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure btnOpen_Click(sender: System.Object; e: System.EventArgs);
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
begin
  Self.RemoteConnection1 := Borland.Data.Remoting.RemoteConnection.Create;
  Self.DataHub1 := Borland.Data.Provider.DataHub.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  Self.DataGrid1 := System.Windows.Forms.DataGrid.Create;
  Self.btnOpen := System.Windows.Forms.Button.Create;
  (System.ComponentModel.ISupportInitialize(Self.RemoteConnection1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataHub1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataGrid1)).BeginInit;
  Self.SuspendLayout;
  // 
  // RemoteConnection1
  // 
  Self.RemoteConnection1.ChannelType := Borland.Data.Remoting.ChannelType.Tcp;
  Self.RemoteConnection1.ClientProperties := nil;
  Self.RemoteConnection1.Host := 'localhost';
  Self.RemoteConnection1.Port := 8000;
  Self.RemoteConnection1.Providers := nil;
  Self.RemoteConnection1.ProviderType := 'Borland.Data.Provider.DataSync';
  Self.RemoteConnection1.URI := 'AdoNetServer';
  // 
  // DataHub1
  // 
  Self.DataHub1.Active := False;
  Self.DataHub1.DataPort := Self.RemoteConnection1;
  Self.DataHub1.DataSet := nil;
  Self.DataHub1.Providers := nil;
  // 
  // DataSet1
  // 
  Self.DataSet1.DataSetName := 'NewDataSet';
  Self.DataSet1.Locale := System.Globalization.CultureInfo.Create('en-US');
  // 
  // DataGrid1
  // 
  Self.DataGrid1.Anchor := (System.Windows.Forms.AnchorStyles((((System.Windows.Forms.AnchorStyles.Top 
    or System.Windows.Forms.AnchorStyles.Bottom) or System.Windows.Forms.AnchorStyles.Left) 
    or System.Windows.Forms.AnchorStyles.Right)));
  Self.DataGrid1.DataMember := '';
  Self.DataGrid1.HeaderForeColor := System.Drawing.SystemColors.ControlText;
  Self.DataGrid1.Location := System.Drawing.Point.Create(8, 40);
  Self.DataGrid1.Name := 'DataGrid1';
  Self.DataGrid1.Size := System.Drawing.Size.Create(576, 248);
  Self.DataGrid1.TabIndex := 0;
  // 
  // btnOpen
  // 
  Self.btnOpen.Location := System.Drawing.Point.Create(8, 8);
  Self.btnOpen.Name := 'btnOpen';
  Self.btnOpen.Size := System.Drawing.Size.Create(104, 24);
  Self.btnOpen.TabIndex := 1;
  Self.btnOpen.Text := 'Open';
  Include(Self.btnOpen.Click, Self.btnOpen_Click);
  // 
  // TWinForm
  // 
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(592, 294);
  Self.Controls.Add(Self.btnOpen);
  Self.Controls.Add(Self.DataGrid1);
  Self.Name := 'TWinForm';
  Self.Text := 'AdoNetClient';
  (System.ComponentModel.ISupportInitialize(Self.RemoteConnection1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataHub1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataGrid1)).EndInit;
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

procedure TWinForm.btnOpen_Click(sender: System.Object; e: System.EventArgs);
begin
  DataHub1.DataSet := DataSet1;
  DataHub1.Active := True;
  DataGrid1.DataSource := DataSet1;
  DataGrid1.DataMember := 'EmployeeTable';
end;



end.
