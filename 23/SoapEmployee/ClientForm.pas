unit ClientForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, Grids, DBGrids, DB, Provider, Xmlxform,
  DBClient, msxmldom, XMLDoc, XMLIntf;

type
  TForm1 = class(TForm)
    btnGetList: TButton;
    btnGetDetails: TButton;
    Memo2: TMemo;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    XmlDoc: TXMLDocument;
    XslDoc: TXMLDocument;
    procedure btnGetListClick(Sender: TObject);
    procedure btnGetDetailsClick(Sender: TObject);
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
  ISoapEmployee1;

procedure TForm1.btnGetListClick(Sender: TObject);
var
  strXml: string;
  strXmlOutput: WideString;
begin
  xmlDoc.Active := False;
  strXml := GetISoapEmployee.GetEmployeeNames;
  xmlDoc.XML.Text := strXml; // load the XML from the web service
  xmlDoc.Active := True;

  xslDoc.Active := True;
  xmlDoc.DocumentElement.transformNode (
    xslDoc.DocumentElement, strXmlOutput);
  ClientDataSet1.XmlData := strXmlOutput;
  ClientDataSet1.Open;
end;

procedure TForm1.btnGetDetailsClick(Sender: TObject);
begin
  Memo2.Lines.Text := GetISoapEmployee.GetEmployeeData(
    ClientDataSet1.FieldByName ('id').AsString);
end;

end.
