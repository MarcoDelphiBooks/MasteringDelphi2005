unit ConvertServiceModule;

interface

uses
  SysUtils, Classes, HTTPApp;

type
  TWebModule2 = class(TWebModule)
    procedure WebModule2actionInfoAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule2actionConvertCurrencyAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule2actionTypesListAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModule2: TWebModule2;

implementation

uses
  WebReq, ConvUtils, StrUtils, EuroConvConst;

{$R *.dfm}

function MakeXmlStr (nodeName, nodeValue: string; attrList: string = ''): string;
begin
  Result := '<' + nodeName +
    IfThen (attrList <> '', ' ' + attrList, '') + '>' +
    nodeValue +
    '</' + nodeName + '>';
end;

procedure TWebModule2.WebModule2actionTypesListAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  i: Integer;
  ATypes: TConvTypeArray;
  strXml: string;
begin
  strXml := '';
  GetConvTypes(cbEuroCurrency, ATypes);
  for i := Low(aTypes) to High(aTypes) do
    strXml := strXml + MakeXmlStr ('type', ConvTypeToDescription (aTypes[i]));
  strXml := MakeXmlStr ('typeslist', strXml);
  Response.Content := strXml;
  Response.ContentType := 'text/xml';
end;

procedure TWebModule2.WebModule2actionConvertCurrencyAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  strFrom, strDest: string;
  nAmount, nResult: double;
  BaseType, DestType: TConvType;
begin
  strFrom := Request.QueryFields.Values ['from'];
  strDest := Request.QueryFields.Values ['dest'];
  nAmount := StrToFloat(Request.QueryFields.Values ['amount']);

  if DescriptionToConvType (cbEuroCurrency, strFrom, BaseType) and
      DescriptionToConvType (cbEuroCurrency, strDest, DestType) then
    nResult := EuroConvert (nAmount, BaseType, DestType, 4)
  else
    raise Exception.Create ('Undefined currency types');

  Response.Content := MakeXmlStr ('result', FloatToStr (nResult));
  Response.ContentType := 'text/xml';
end;

procedure TWebModule2.WebModule2actionInfoAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := '<h1>RestConvertService</h1>' +
    '<p>Some description goes here....</p>' +
    '<h2>Sample calls</h2>' +
    '<ul>' +
    '<li><a href="/RestConvertService.RestCurrency/typeslist">TypesList</a></li>' +
    '<li><a href="/RestConvertService.RestCurrency/convertcurrency?from=DEM&dest=ITL&amount=1000">ConvertCurrency</a></li>' +
    '</ul>';
end;

initialization
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := TWebModule2;

end.
