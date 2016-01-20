unit RssClientForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  xmldom, XMLIntf, msxmldom, XMLDoc, ExtCtrls;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    ListBox1: TListBox;
    btnUpdate: TButton;
    XMLDocument1: TXMLDocument;
    Panel1: TPanel;
    procedure btnUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function getChildNodes (node: IDOMNode): string;
var
  J: Integer;
begin
  Result := '';
  for J := 0 to node.childNodes.length - 1 do
    if node.childNodes.item[J].nodeType = TEXT_NODE then
      Result := Result + node.childNodes.item[J].nodeValue;
end;

procedure TForm1.btnUpdateClick(Sender: TObject);
var
  strXml, title, author: string;
  I: Integer;
  IDomSel: IDOMNodeSelect;
  Node: IDOMNode;
begin
  strXml := IdHTTP1.Get ('http://blogs.borland.com/MainFeed.aspx');
  XMLDocument1.LoadFromXML(strXml);
  XMLDocument1.Active := True;
  IDomSel := (XMLDocument1.DocumentElement.DOMNode as IDOMNodeSelect);
  for I := 1 to 10 do
  begin
    Node := IDomSel.selectNode('/rss/channel/item[' + IntToStr (i) + ']/title');
    title := getChildNodes (Node);
    Node := IDomSel.selectNode('/rss/channel/item[' + IntToStr (i) + ']/source');
    author := getChildNodes (Node);
    ListBox1.Items.Add(title + ' -- ' + author);
  end;
end;

end.
