unit XmlEditForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, xmldom, XMLIntf, msxmldom, XMLDoc, ComCtrls, ToolWin, OleCtrls,
  SHDocVw;

type
  TFormXmlEdit = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    MemoXml: TMemo;
    ToolBar1: TToolBar;
    btnLoad: TToolButton;
    btnSave: TToolButton;
    xmlBar: TStatusBar;
    TabSheet7: TTabSheet;
    XmlBrowser: TWebBrowser;
    XMLDoc: TXMLDocument;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure MemoXmlChange(Sender: TObject);
    procedure MemoXmlKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoXmlMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    fFileName: string;
    procedure SetFileName(const Value: string);
  public
    property FileName: string read FFileName write SetFileName;
    procedure SaveFile;
  end;

var
  FormXmlEdit: TFormXmlEdit;

implementation

{$R *.DFM}

procedure TFormXmlEdit.btnLoadClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    FileName := OpenDialog1.FileName;
    MemoXml.Lines.LoadFromFile (FileName);
  end;
end;

procedure TFormXmlEdit.btnSaveClick(Sender: TObject);
begin
  // it is actually a save as...
  SaveDialog1.FileName := Filename;
  if SaveDialog1.Execute then
  begin
    FileName := SaveDialog1.FileName;
    SaveFile;
  end;
end;

procedure TFormXmlEdit.MemoXmlChange(Sender: TObject);
var
  eParse: IDOMParseError;
begin
  XmlDoc.Active := True;
  xmlBar.Panels[1].Text := 'OK';
  xmlBar.Panels[2].Text := '';
  (XmlDoc as IXMLDocumentAccess).DOMPersist.loadxml(MemoXml.Text);
  eParse := (XmlDoc.DOMDocument as IDOMParseError);
  if eParse.errorCode <> 0 then
    with eParse do
    begin
      xmlBar.Panels[1].Text := 'Error in: ' + IntToStr (Line) +
        '.' + IntToStr (LinePos);
      xmlBar.Panels[2].Text := SrcText + ': ' + Reason;
    end;
end;

procedure TFormXmlEdit.MemoXmlKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  xmlBar.Panels[0].Text :=
    'Pos: ' + IntToStr (MemoXml.CaretPos.Y + 1) +
    '.' + IntToStr (MemoXml.CaretPos.X + 1);
end;

procedure TFormXmlEdit.MemoXmlMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  xmlBar.Panels[0].Text :=
    'Pos: ' + IntToStr (MemoXml.CaretPos.Y + 1) +
    '.' + IntToStr (MemoXml.CaretPos.X + 1);
end;

procedure TFormXmlEdit.FormCreate(Sender: TObject);
begin
  OpenDialog1.InitialDir := ExtractFilePath (
    Application.Exename);
  SaveDialog1.InitialDir := ExtractFilePath (
    Application.Exename);
  FileName := '';
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFormXmlEdit.SaveFile;
begin
  MemoXml.Lines.SaveToFile (FileName);
end;

procedure TFormXmlEdit.SetFileName(const Value: string);
begin
  FFileName := Value;
  Caption := 'XmlEditOne [' + ExtractFileName(FFileName) +']';
end;

procedure TFormXmlEdit.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet7 then
    if Filename <> '' then
    begin
      // refresh XML in browser
      SaveFile;
      XmlBrowser.Navigate (fFilename);
    end
    else
      ShowMessage ('Save the file to view it in the browser');
end;

procedure TFormXmlEdit.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := Filename <> '';
end;

end.
