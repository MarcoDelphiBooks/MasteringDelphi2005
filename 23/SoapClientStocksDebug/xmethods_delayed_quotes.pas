// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://services.xmethods.net/soap/urn:xmethods-delayed-quotes.wsdl
// Encoding : UTF-8
// Version  : 1.0
// (4/11/2005 10:19:22 AM - 1.33.2.5)
// ************************************************************************ //

unit xmethods_delayed_quotes;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:float           - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Name      : net.xmethods.services.stockquote.StockQuotePortType
  // Namespace : urn:xmethods-delayed-quotes
  // soapAction: urn:xmethods-delayed-quotes#getQuote
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : net.xmethods.services.stockquote.StockQuoteBinding
  // service   : net.xmethods.services.stockquote.StockQuoteService
  // port      : net.xmethods.services.stockquote.StockQuotePort
  // URL       : http://64.124.140.30:9090/soap
  // ************************************************************************ //
  StockQuotePortType = interface(IInvokable)
  ['{844B8652-C1A5-7173-F44D-121210784988}']
    function  getQuote(const symbol: WideString): Single; stdcall;
  end;

function Get_StockQuotePortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): StockQuotePortType;


implementation

function Get_StockQuotePortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): StockQuotePortType;
const
  defWSDL = 'http://services.xmethods.net/soap/urn:xmethods-delayed-quotes.wsdl';
  defURL  = 'http://64.124.140.30:9090/soap';
  defSvc  = 'net.xmethods.services.stockquote.StockQuoteService';
  defPrt  = 'net.xmethods.services.stockquote.StockQuotePort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as StockQuotePortType);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(StockQuotePortType), 'urn:xmethods-delayed-quotes', 'UTF-8', '', 'net.xmethods.services.stockquote.StockQuotePortType');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(StockQuotePortType), 'urn:xmethods-delayed-quotes#getQuote');

end.