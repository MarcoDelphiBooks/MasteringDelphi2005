unit MainForm;

interface

uses
  System.Drawing, System.Collections, System.ComponentModel,
  System.Windows.Forms, System.Data;

type
  TWinForm1 = class(System.Windows.Forms.Form)
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    Label1: System.Windows.Forms.Label;
    Button1: System.Windows.Forms.Button;
    Button2: System.Windows.Forms.Button;
    Button3: System.Windows.Forms.Button;
    ListView1: System.Windows.Forms.ListView;
    menuListView: System.Windows.Forms.ContextMenu;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure Loaded (sender: System.Object; e: System.EventArgs);
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
    procedure Button3_Click(sender: System.Object; e: System.EventArgs);
    procedure Modify_Click (sender: System.Object; e: System.EventArgs);
    procedure WebResponseDone(ar: IAsyncResult);
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  private
    strCurrentFolder: string;
  public
    constructor Create;
  end;

  [assembly: RuntimeRequiredAttribute(TypeOf(TWinForm1))]

implementation

{$AUTOBOX ON}

uses
  System.Xml, System.IO, System.Reflection, System.Net;

procedure TWinForm1.InitializeComponent;
var
  aMenuItem: System.Windows.Forms.MenuItem;
begin
  Label1 := System.Windows.Forms.Label.Create;
  Button1 := System.Windows.Forms.Button.Create;
  Button2 := System.Windows.Forms.Button.Create;
  Button3 := System.Windows.Forms.Button.Create;
  Listview1 := System.Windows.Forms.Listview.Create;
  //
  // Label1
  //
  Self.Label1.Location := System.Drawing.Point.Create(10, 10);
  Self.Label1.Size := System.Drawing.Size.Create(220, 20);
  Self.Label1.Text := 'XML load file test';
  //
  // Button1
  //
  Self.Button1.Location := System.Drawing.Point.Create(10, 34);
  Self.Button1.Text := 'Fill List';
  Include(Self.Button1.Click, Self.Button1_Click);
  //
  // Button2
  //
  Self.Button2.Location := System.Drawing.Point.Create(90, 34);
  Self.Button2.Text := 'Close';
  Include(Self.Button2.Click, Self.Button2_Click);

  //
  // Button3
  //
  Self.Button3.Location := System.Drawing.Point.Create(170, 34);
  Self.Button3.Text := 'Download';
  Include(Self.Button3.Click, Self.Button3_Click);


  // ListView1
  Listview1.Location := System.Drawing.Point.Create(10, 64);
  ListView1.Size := System.Drawing.Size.Create(220, 220);
  menuListView := System.Windows.Forms.ContextMenu.Create;
  aMenuItem := System.Windows.Forms.MenuItem.Create;
  aMenuItem.Text := 'modifica';
  Include (aMenuItem.Click, Modify_Click);
  menuListView.MenuItems.Add (aMenuItem);
  ListView1.ContextMenu := menuListView;
  //
  // TWinForm1
  //
//  Self.ClientSize := System.Drawing.Size.Create(208, 254);
  Self.Controls.Add(Self.Button1);
  Self.Controls.Add(Self.Button2);
  Self.Controls.Add(Self.Button3);
  Self.Controls.Add(Self.Label1);
  Self.Controls.Add(Self.Listview1);
  Include (Self.Load, Self.Loaded);
end;

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
  InitializeComponent;
end;

procedure TWinForm1.Button1_Click(sender: System.Object; e: System.EventArgs);
var
  aReader: XmlTextReader;
  aStream: StreamReader;
  nodeStack: ArrayList;
  strFilename: string;
  item: ListViewItem;
begin
  // replaces application.StartupPath
  strFilename := strCurrentFolder + 'books.xml';

  Label1.Text := strFilename;
  aStream := StreamReader.Create (strFilename);
  aReader := XmlTextReader.Create (aStream);
  nodeStack := ArrayList.Create;
  ListView1.Items.Clear;
  ListView1.View := View.Details;
  ListView1.CheckBoxes := True;
  ListView1.FullRowSelect := True;
  // ListView1.Sorting := SortOrder.Ascending;
  listView1.Columns.Add('prodotto', 100, HorizontalAlignment.Left);
  listView1.Columns.Add('quantità', 20, HorizontalAlignment.Left);
  listView1.Columns.Add('prezzo', 50, HorizontalAlignment.Left);

  while aReader.Read do
  begin
    case aReader.NodeType of
      XmlNodeType.Element:
        nodeStack.Add (aReader.Name);
      XmlNodeType.EndElement:
        nodeStack.RemoveAt(NodeStack.Count-1);
      XmlNodeType.Text:
      begin
        if string(nodeStack.Item[NodeStack.Count-1])='author' then
        begin
          item := ListViewItem.Create (aReader.Value);
          ListView1.Items.Add (item);
        end;
      end;
    end;
  end;

end;

procedure TWinForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
  Close;
end;

procedure TWinForm1.Button3_Click(sender: TObject; e: System.EventArgs);
var
  Req: WebRequest;
  ar: IAsyncResult;
begin
  // load from the web
  try

    Req := WebRequest.CreateDefault(
      Uri.Create('http://www.marcocantu.com/xml/links.xml'));
    Req.Method := 'GET';
    Cursor.Current := Cursors.WaitCursor;
    ar := req.BeginGetResponse(WebResponseDone, req);

  except
   on E: Exception do
    begin
      Cursor.Current := Cursors.Default;
      MessageBox.Show(e.Message, 'Exception');
    end;
   end;
end;

procedure TWinForm1.WebResponseDone(ar: IAsyncResult);
var
  rsp: WebResponse;
  st: Stream;
  cbRead: Integer;
  wrt: FileStream;
  buffer: array [1..1024] of Byte;
begin
  try

  // Get the web response. If connection to the web server has failed, this is where we will get the exception
  try
    rsp := (ar.AsyncState as HttpWebRequest).EndGetResponse(ar);
  except
    on E: Exception do
    begin
      MessageBox.Show(e.Message, 'Exception');
      Exit;
    end;
  end;
  finally
    Cursor.Current := Cursors.Default;
  end;  

  MessageBox.Show(System.String.Format('Received response. Type: %s, Length: %d', rsp.ContentType, rsp.ContentLength));
  st := rsp.GetResponseStream;
  wrt := FileStream.Create(strCurrentFolder + 'new.xml', FileMode.Create);
  // Keep reading from the network stream until it is empty
  repeat
    cbRead := st.Read(buffer, 0, 1024);
    wrt.Write(buffer, 0, cbRead);
  until cbRead = 0;

  wrt.Close();
  MessageBox.Show('File saved');
end;

procedure TWinForm1.Loaded(sender: TObject; e: System.EventArgs);
begin
  strCurrentFolder := Path.GetDirectoryName(
    Assembly.GetExecutingAssembly().GetName().
    CodeBase.ToString()) + '\';
  Label1.Text := strCurrentFolder;
end;

procedure TWinForm1.Modify_Click(sender: TObject; e: System.EventArgs);
begin
  MessageBox.Show ('Hello');
end;

end.
