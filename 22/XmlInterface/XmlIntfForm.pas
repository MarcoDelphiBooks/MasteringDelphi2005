unit XmlIntfForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, XMLDoc,
  {$IFDEF MSWINDOWS} MsXmlDom, {$ENDIF}
  {$IFDEF CLR} ClrXmlDom, {$ENDIF}
  StdCtrls;

  // to compile under .NET remove the reference to the
  // "msxmldom" unit outside of the IFDEF added above and
  // set the DOMVendor property of the XmlDocument1
  // component to an empty string


type
  TForm1 = class(TForm)
    btnTitle: TButton;
    XMLDocument1: TXMLDocument;
    Memo1: TMemo;
    btnMemo: TButton;
    btnLoad: TButton;
    btnAttr: TButton;
    btnAllTitles: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTitleClick(Sender: TObject);
    procedure btnMemoClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnAttrClick(Sender: TObject);
    procedure btnAllTitlesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  XmlIntfDefinition;


procedure TForm1.btnTitleClick(Sender: TObject);
var
  Books: IXMLBooksType;
begin
  Books := Getbooks (XmlDocument1); // as IXMLBooksType;
  // ShowMessage (Books.Book.Items[1].Title);
  ShowMessage (Books.Book[1].Title);
end;

procedure TForm1.btnMemoClick(Sender: TObject);
begin
  Memo1.Lines.Text :=
    FormatXMLData(XmlDocument1.XML.Text);
end;

procedure TForm1.btnLoadClick(Sender: TObject);
begin
  XmlDocument1.LoadFromFile (
    ExtractFilePath (Application.ExeName) + 'sample.xml');
end;

procedure TForm1.btnAttrClick(Sender: TObject);
var
  Books: IXMLBooksType;
begin
  Books := Getbooks (XmlDocument1);
  ShowMessage (Books.Text);
end;

procedure TForm1.btnAllTitlesClick(Sender: TObject);
var
  msg: string;
  I: Integer;
  Books: IXMLBooksType;
begin
  Books := Getbooks (XmlDocument1);
  msg := '';
  for I := 0 to Books.Book.Count - 1 do
    msg := msg + Books.Book.Items [I].Title + ' - ';
  for I := 0 to Books.Ebook.Count - 1 do
    msg := msg + Books.Ebook.Items [I].Title + ' - ';
  ShowMessage (msg);  
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  XMLDocument1.DOMVendor := TMSDOMImplementationFactory.Create;
{$ENDIF}

{$IFDEF CLR}
   XMLDocument1.DOMVendor := TCLRDOMImplementationFactory.Create;
{$ENDIF}
end;

end.
