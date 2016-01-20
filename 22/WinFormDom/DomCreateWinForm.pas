unit DomCreateWinForm;

interface

uses
  System.Drawing, System.Collections, System.ComponentModel,
  System.Windows.Forms, System.Data, System.XML;

type
  TWinForm = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    TextBox1: System.Windows.Forms.TextBox;
    TreeView1: System.Windows.Forms.TreeView;
    btnLoad: System.Windows.Forms.Button;
    OpenFileDialog1: System.Windows.Forms.OpenFileDialog;
    btnCreate: System.Windows.Forms.Button;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure btnLoad_Click(sender: System.Object; e: System.EventArgs);
    procedure btnCreate_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  private
    { Private Declarations }
    xmlDom: XmlDocument;
    procedure DomToTree(aXmlNode: XMLNode; aTreeNode: TreeNode);
    procedure ShowDocument;
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
  Self.TextBox1 := System.Windows.Forms.TextBox.Create;
  Self.TreeView1 := System.Windows.Forms.TreeView.Create;
  Self.btnLoad := System.Windows.Forms.Button.Create;
  Self.OpenFileDialog1 := System.Windows.Forms.OpenFileDialog.Create;
  Self.btnCreate := System.Windows.Forms.Button.Create;
  Self.SuspendLayout;
  // 
  // TextBox1
  // 
  Self.TextBox1.Location := System.Drawing.Point.Create(32, 40);
  Self.TextBox1.Multiline := True;
  Self.TextBox1.Name := 'TextBox1';
  Self.TextBox1.Size := System.Drawing.Size.Create(440, 152);
  Self.TextBox1.TabIndex := 0;
  Self.TextBox1.Text := '';
  // 
  // TreeView1
  // 
  Self.TreeView1.ImageIndex := -1;
  Self.TreeView1.Location := System.Drawing.Point.Create(32, 208);
  Self.TreeView1.Name := 'TreeView1';
  Self.TreeView1.SelectedImageIndex := -1;
  Self.TreeView1.Size := System.Drawing.Size.Create(440, 176);
  Self.TreeView1.TabIndex := 1;
  // 
  // btnLoad
  // 
  Self.btnLoad.Location := System.Drawing.Point.Create(32, 8);
  Self.btnLoad.Name := 'btnLoad';
  Self.btnLoad.TabIndex := 2;
  Self.btnLoad.Text := 'Load';
  Include(Self.btnLoad.Click, Self.btnLoad_Click);
  // 
  // OpenFileDialog1
  // 
  Self.OpenFileDialog1.Filter := 'File XML (*.xml)|*.xml';
  // 
  // btnCreate
  // 
  Self.btnCreate.Location := System.Drawing.Point.Create(120, 8);
  Self.btnCreate.Name := 'btnCreate';
  Self.btnCreate.TabIndex := 3;
  Self.btnCreate.Text := 'Create';
  Include(Self.btnCreate.Click, Self.btnCreate_Click);
  // 
  // TWinForm
  // 
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(496, 406);
  Self.Controls.Add(Self.btnCreate);
  Self.Controls.Add(Self.btnLoad);
  Self.Controls.Add(Self.TreeView1);
  Self.Controls.Add(Self.TextBox1);
  Self.Name := 'TWinForm';
  Self.Text := 'WinFormDom';
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
  xmlDom := XMLDocument.Create;
end;

procedure TWinForm.btnCreate_Click(sender: System.Object; e: System.EventArgs);
var
  aXmlNode: XmlElement;
begin
  xmlDom.AppendChild(xmlDom.CreateElement('root'));
  xmlDom.DocumentElement.AppendChild(xmlDom.CreateElement('test'));
  aXmlNode := xmlDom.CreateElement('test2');
  xmlDom.DocumentElement.AppendChild(aXmlNode);
  aXmlNode.SetAttribute ('value', '100');
  aXmlNode.AppendChild(xmlDom.CreateElement('subnode'));
  xmlDom.DocumentElement.AppendChild(xmlDom.CreateElement('test3'));
  ShowDocument;
end;

procedure TWinForm.btnLoad_Click(sender: System.Object; e: System.EventArgs);
begin
  if OpenFileDialog1.ShowDialog = System.Windows.Forms.DialogResult.OK then
  begin
    xmlDom.PreserveWhitespace := True;
    xmlDom.Load(OpenFileDialog1.FileName);
    ShowDocument;
  end;
end;

procedure TWinForm.DomToTree (
  aXmlNode: XMLNode; aTreeNode: TreeNode);
var
  I: Integer;
  NewTreeNode, AttrTreeNode: TreeNode;
  NodeText: string;
  AttrNode: XMLNode;
begin
  // skip text nodes and other special cases
  if aXmlNode.NodeType = XmlNodeType.Element then
    // add the node itself
    NodeText := aXmlNode.Name
  else if aXmlNode.NodeType = XmlNodeType.Text then
    NodeText := aXmlNode.Value
  else
    Exit; // skip other types

  NewTreeNode := TreeNode.Create;
  NewTreeNode.Text := NodeText;
  if aTreeNode = nil then
    TreeView1.Nodes.Add (NewTreeNode)
  else
    aTreeNode.Nodes.Add (NewTreeNode);
  // add attributes
  if Assigned (aXmlNode.Attributes) then
  for I := 0 to aXmlNode.Attributes.Count - 1 do
  begin
    AttrNode := aXmlNode.Attributes.ItemOf[I];
    AttrTreeNode := TreeNode.Create;
    AttrTreeNode.Text := '[' + AttrNode.Name +
      ' = "' + AttrNode.ToString + '"]';
    NewTreeNode.Nodes.Add (AttrTreeNode);
  end;
  // add each child node
  if aXmlNode.HasChildNodes then
    for I := 0 to aXmlNode.ChildNodes.Count - 1 do
      DomToTree (aXmlNode.ChildNodes[I], NewTreeNode);
end;


procedure TWinForm.ShowDocument;
begin
  TextBox1.Text := xmlDom.InnerXml;

  TreeView1.Nodes.Clear;
  DomToTree (xmlDom.DocumentElement, nil);
end;

end.

