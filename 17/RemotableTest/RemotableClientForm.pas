unit RemotableClientForm;

interface

uses
  System.Drawing, System.Collections, System.ComponentModel,
  System.Windows.Forms, System.Data,
  System.Runtime.Remoting.Channels.Tcp;

type
  TWinForm = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    Button1: System.Windows.Forms.Button;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  private
    aChannel: TcpClientChannel;
  public
    constructor Create;
  end;

  [assembly: RuntimeRequiredAttribute(TypeOf(TWinForm))]

implementation

uses
  RemotableUnit, System.Runtime.Remoting.Channels,
  System.Runtime.Remoting;

{$AUTOBOX ON}

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWinForm.InitializeComponent;
begin
  Self.Button1 := System.Windows.Forms.Button.Create;
  Self.SuspendLayout;
  // 
  // Button1
  // 
  Self.Button1.Location := System.Drawing.Point.Create(88, 64);
  Self.Button1.Name := 'Button1';
  Self.Button1.Size := System.Drawing.Size.Create(128, 23);
  Self.Button1.TabIndex := 0;
  Self.Button1.Text := 'Use Server Obj';
  Include(Self.Button1.Click, Self.Button1_Click);
  // 
  // TWinForm
  // 
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(320, 166);
  Self.Controls.Add(Self.Button1);
  Self.Name := 'TWinForm';
  Self.Text := 'RemotableClient';
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

procedure TWinForm.Button1_Click(sender: System.Object; e: System.EventArgs);
var
  test: TRemotableTest;
  I: Integer;
begin
  // create a channel only the first time (not in the
  // Load event as the server might not be running yet)
  if not Assigned (aChannel) then
  begin
    aChannel := TcpClientChannel.Create;
    ChannelServices.RegisterChannel(aChannel);
//    RemotingConfiguration.RegisterWellKnownClientType(
//      typeof(TRemotableTest), 'tcp://localhost:6066/tremotabletest');
    RemotingConfiguration.RegisterActivatedClientType(
      typeof(TRemotableTest), 'tcp://localhost:6066');
  end;

  test := TRemotableTest.Create;
  try
    test.SetValue(5);
    for I := 0 to 100 do
      test.Increase;
    MessageBox.Show(test.ToString);
  finally
    test.Free;
  end;
end;

end.
