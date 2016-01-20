unit ConvertClientNetForm;

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
    btnList: System.Windows.Forms.Button;
    TextBox1: System.Windows.Forms.TextBox;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure btnList_Click(sender: System.Object; e: System.EventArgs);
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
  SysUtils, localhost.IConvertservice;

{$AUTOBOX ON}

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWinForm.InitializeComponent;
begin
  Self.btnList := System.Windows.Forms.Button.Create;
  Self.TextBox1 := System.Windows.Forms.TextBox.Create;
  Self.SuspendLayout;
  // 
  // btnList
  // 
  Self.btnList.Location := System.Drawing.Point.Create(24, 16);
  Self.btnList.Name := 'btnList';
  Self.btnList.TabIndex := 0;
  Self.btnList.Text := 'List';
  Include(Self.btnList.Click, Self.btnList_Click);
  // 
  // TextBox1
  // 
  Self.TextBox1.Location := System.Drawing.Point.Create(24, 56);
  Self.TextBox1.Multiline := True;
  Self.TextBox1.Name := 'TextBox1';
  Self.TextBox1.Size := System.Drawing.Size.Create(208, 184);
  Self.TextBox1.TabIndex := 1;
  Self.TextBox1.Text := '';
  // 
  // TWinForm
  // 
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(292, 266);
  Self.Controls.Add(Self.TextBox1);
  Self.Controls.Add(Self.btnList);
  Self.Name := 'TWinForm';
  Self.Text := 'ConvertClientNet';
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

procedure TWinForm.btnList_Click(sender: System.Object; e: System.EventArgs);
var
  convert: IConvertservice;
  strCurr: string;
begin
  convert := IConvertservice.Create;
  strCurr := convert.TypesList;
  strCurr := StringReplace (strCurr, ';', sLineBreak, [rfReplaceAll]);
  TextBox1.Text := strCurr;
end;

end.
