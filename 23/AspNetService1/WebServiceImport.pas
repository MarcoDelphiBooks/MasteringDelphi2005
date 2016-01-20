// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:8080/AspNetService1/WebService1.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (4/8/2005 4:58:08 PM - 1.33.2.5)
// ************************************************************************ //

unit WebServiceImport;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:string          - "http://www.w3.org/2001/XMLSchema"



  // ************************************************************************ //
  // Namespace : http://marcocantu.com
  // soapAction: http://marcocantu.com/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : TWebService1Soap
  // service   : TWebService1
  // port      : TWebService1Soap
  // URL       : http://127.0.0.1:8888/AspNetService1/WebService1.asmx
  // ************************************************************************ //
  TWebService1Soap = interface(IInvokable)
  ['{B0163EEB-0959-5099-CD1A-C84F77122239}']
    function  CrazyAdd(const a: Integer; const b: Integer): Integer; stdcall;
    function  RemoteTime: WideString; stdcall;
  end;

function GetTWebService1Soap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): TWebService1Soap;


implementation

function GetTWebService1Soap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): TWebService1Soap;
const
  defWSDL = 'http://localhost:8080/AspNetService1/WebService1.asmx?WSDL';
  defURL  = 'http://127.0.0.1:8080/AspNetService1/WebService1.asmx';
  defSvc  = 'TWebService1';
  defPrt  = 'TWebService1Soap';
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
    Result := (RIO as TWebService1Soap);
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
  InvRegistry.RegisterInterface(TypeInfo(TWebService1Soap), 'http://marcocantu.com', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(TWebService1Soap), 'http://marcocantu.com/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(TWebService1Soap), ioDocument);

end.