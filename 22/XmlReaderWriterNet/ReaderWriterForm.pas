unit ReaderWriterForm;

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
    btnRead: System.Windows.Forms.Button;
    TextBox1: System.Windows.Forms.TextBox;
    btnWrite: System.Windows.Forms.Button;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure btnRead_Click(sender: System.Object; e: System.EventArgs);
    procedure btnWrite_Click(sender: System.Object; e: System.EventArgs);
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

uses
  System.Xml, System.IO, System.Text;

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWinForm.InitializeComponent;
begin
  Self.btnRead := System.Windows.Forms.Button.Create;
  Self.TextBox1 := System.Windows.Forms.TextBox.Create;
  Self.btnWrite := System.Windows.Forms.Button.Create;
  Self.SuspendLayout;
  // 
  // btnRead
  // 
  Self.btnRead.Location := System.Drawing.Point.Create(24, 16);
  Self.btnRead.Name := 'btnRead';
  Self.btnRead.TabIndex := 0;
  Self.btnRead.Text := 'Read';
  Include(Self.btnRead.Click, Self.btnRead_Click);
  // 
  // TextBox1
  // 
  Self.TextBox1.Location := System.Drawing.Point.Create(24, 64);
  Self.TextBox1.Multiline := True;
  Self.TextBox1.Name := 'TextBox1';
  Self.TextBox1.Size := System.Drawing.Size.Create(376, 248);
  Self.TextBox1.TabIndex := 1;
  Self.TextBox1.Text := 'TextBox1';
  // 
  // btnWrite
  // 
  Self.btnWrite.Location := System.Drawing.Point.Create(112, 16);
  Self.btnWrite.Name := 'btnWrite';
  Self.btnWrite.TabIndex := 2;
  Self.btnWrite.Text := 'Write';
  Include(Self.btnWrite.Click, Self.btnWrite_Click);
  // 
  // TWinForm
  // 
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(432, 350);
  Self.Controls.Add(Self.btnWrite);
  Self.Controls.Add(Self.TextBox1);
  Self.Controls.Add(Self.btnRead);
  Self.Name := 'TWinForm';
  Self.Text := 'WinForm';
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

procedure TWinForm.btnWrite_Click(sender: System.Object; e: System.EventArgs);
var
  aWriter: XmlTextWriter;
begin
  aWriter := XmlTextWriter.Create('another.xml', UTF8Encoding.Create);
  aWriter.Formatting := Formatting.Indented;
  aWriter.Indentation := 2;
  aWriter.WriteStartDocument;

  aWriter.WriteStartElement('book');
  aWriter.WriteStartElement('author');
  aWriter.WriteString('Marco');
  aWriter.WriteEndElement;
  aWriter.WriteStartElement('title');
  aWriter.WriteAttributeString('series', 'Mastering');
  aWriter.WriteString('Mastering Delphi 2005');
  aWriter.WriteEndElement;
  aWriter.WriteStartElement('publisher');
  aWriter.WriteString('Sybex');
  aWriter.WriteEndElement;
  aWriter.WriteEndElement;

  aWriter.WriteEndDocument;
  aWriter.Close;
end;

procedure TWinForm.btnRead_Click(sender: System.Object; e: System.EventArgs);
var
  aReader: XmlTextReader;
  aStream: StreamReader;
  nodeStack: ArrayList;
begin
  aStream := StreamReader.Create ('books.xml');
  aReader := XmlTextReader.Create (aStream);
  nodeStack := ArrayList.Create;
  Textbox1.Clear;

  while aReader.Read do
  begin
    case aReader.NodeType of
      XmlNodeType.Element:
        nodeStack.Add (aReader.Name);
      XmlNodeType.EndElement:
        nodeStack.RemoveAt(NodeStack.Count-1);
      XmlNodeType.Text:
        if string(nodeStack.Item[NodeStack.Count-1])='author' then
          Textbox1.AppendText(aReader.Value + sLinebreak);
    end;
  end;
end;

end.
