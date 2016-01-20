unit WebSearch;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, HTTPProd, Db, DBClient, DBWeb,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TWebModule1 = class(TWebModule)
    DataSetTableProducer1: TDataSetTableProducer;
    cds: TClientDataSet;
    procedure WebModule1WebActionItem1Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1WebActionItem2Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure DataSetTableProducer1FormatCell(Sender: TObject; CellRow,
      CellColumn: Integer; var BgColor: THTMLBgColor;
      var Align: THTMLAlign; var VAlign: THTMLVAlign; var CustomAttrs,
      CellData: String);
  private
    { Private declarations }
  public
    strRead: string;
    procedure HtmlStringToCds;
    procedure GrabHtml (strurl: string);

  end;

var
  WebModule1: TWebModule1;

implementation

{$R *.DFM}

uses WebReq, StrUtils;

const
  strSearch = 'http://www.google.com/search?as_q=borland+delphi&num=100';

procedure TWebModule1.GrabHtml (strurl: string);
var
  Http1: TIdHTTP;
begin
  Http1 := TIdHTTP.Create (nil);
  try
    strRead := Http1.Get (StrUrl);
  finally
    Http1.Free;
  end;
end;

procedure TWebModule1.HtmlStringToCds;
var
  strAddr, strText: string;
  nText: integer;
  nBegin, nEnd: Integer;
begin
  strRead := LowerCase (strRead);
  nBegin := 1;
  repeat
    // find the initial part HTTP reference
    nBegin := PosEx ('href=http', strRead, nBegin);
    if nBegin <> 0 then
    begin
      // find the end of the HTTP reference
      nBegin := nBegin + 5;
      nEnd := PosEx ('>', strRead, nBegin);
      strAddr := Copy (strRead, nBegin, nEnd - nBegin);
      // move on
      nBegin := nEnd + 1;
      // add the URL if 'google' is not in it
      if (Pos ('google', strAddr) = 0) and (Pos ('cache', strAddr) = 0) then
      begin
        nText := PosEx ('</a>', strRead, nBegin);
        strText := copy (strRead, nBegin, nText - nBegin);
        // remove cached references and duplicates
        if (Pos ('cache', strText) = 0) and not cds.Locate ('Address', strAddr, []) then
          cds.InsertRecord ([0, strAddr, strText]);
      end;
    end;
  until nBegin = 0;
end;

procedure TWebModule1.WebModule1WebActionItem1Action(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  I: integer;
begin
  if not cds.Active then
    cds.CreateDataSet
  else
    cds.EmptyDataSet;

  for i := 0 to 5 do // how many pages?
  begin
    // get the data form the search site
    GrabHtml (strSearch + '&start=' + IntToStr (i*100));
    // scan it to fill the cds
    HtmlStringToCds;
  end;

  cds.First;
  // return producer content
  Response.Content := DataSetTableProducer1.Content;
end;

procedure TWebModule1.WebModule1WebActionItem2Action(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  GrabHtml (strSearch);
  Response.Content := strRead;
end;

function SplitLong(str: string): string;
begin
  // add spaces after / but not at the beginning, and after &
  str := Copy (str, 1, 20) + StringReplace (
      Copy (str, 21, 1000), '/', '/ ', [rfReplaceAll]);
  Result := StringReplace (str, '&', '& ', [rfReplaceAll])
end;

procedure TWebModule1.DataSetTableProducer1FormatCell(Sender: TObject;
  CellRow, CellColumn: Integer; var BgColor: THTMLBgColor;
  var Align: THTMLAlign; var VAlign: THTMLVAlign; var CustomAttrs,
  CellData: String);
begin
  if CellRow <> 0 then
  case CellColumn of
    0: CellData := IntToStr (CellRow);
    1: CellData := '<a href="' +  CellData + '">' + SplitLong(CellData) + '</a>';
    2: CellData := SplitLong (CellData);
  end;
end;

initialization
  WebRequestHandler.WebModuleClass := TWebModule1;

end.

