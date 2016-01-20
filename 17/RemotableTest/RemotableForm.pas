unit RemotableForm;

interface

uses
  System.Drawing, System.Collections, System.ComponentModel,
  System.Windows.Forms, System.Data;

type
  TWinForm = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    ListBox1: System.Windows.Forms.ListBox;
    btnCount: System.Windows.Forms.Button;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure TWinForm_Load(sender: System.Object; e: System.EventArgs);
    procedure btnCount_Click(sender: System.Object; e: System.EventArgs);
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

uses
  RemotableUnit, System.Runtime.Remoting,
  System.Runtime.Remoting.Channels.Tcp,
  System.Runtime.Remoting.Channels;

{$AUTOBOX ON}

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWinForm.InitializeComponent;
begin
  Self.ListBox1 := System.Windows.Forms.ListBox.Create;
  Self.btnCount := System.Windows.Forms.Button.Create;
  Self.SuspendLayout;
  // 
  // ListBox1
  // 
  Self.ListBox1.Location := System.Drawing.Point.Create(16, 48);
  Self.ListBox1.Name := 'ListBox1';
  Self.ListBox1.Size := System.Drawing.Size.Create(256, 199);
  Self.ListBox1.TabIndex := 0;
  // 
  // btnCount
  // 
  Self.btnCount.Location := System.Drawing.Point.Create(16, 16);
  Self.btnCount.Name := 'btnCount';
  Self.btnCount.TabIndex := 1;
  Self.btnCount.Text := 'Obj Count';
  Include(Self.btnCount.Click, Self.btnCount_Click);
  // 
  // TWinForm
  // 
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(292, 266);
  Self.Controls.Add(Self.btnCount);
  Self.Controls.Add(Self.ListBox1);
  Self.Name := 'TWinForm';
  Self.Text := 'Remotable Test (Server)';
  Include(Self.Load, Self.TWinForm_Load);
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

procedure TWinForm.btnCount_Click(sender: System.Object; e: System.EventArgs);
begin
  ListBox1.Items.Add (TRemotableTest.RemotableObjCount);
end;

procedure TWinForm.TWinForm_Load(sender: System.Object; e: System.EventArgs);
var
  aChannel: TcpServerChannel;
begin
  aChannel := TcpServerChannel.Create(6066);
  ChannelServices.RegisterChannel(aChannel);
//   RemotingConfiguration.RegisterWellKnownServiceType(
//    typeof(TRemotableTest), 'tremotabletest',
//    WellKnownObjectMode.SingleCall);
  RemotingConfiguration.RegisterActivatedServiceType (
    typeof(TRemotableTest));
end;

end.
