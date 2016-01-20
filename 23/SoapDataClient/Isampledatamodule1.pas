// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:8081/SoapDataServer.soapdataserver/wsdl/ISampleDataModule
// Encoding : utf-8
// Version  : 1.0
// (4/10/2005 10:36:39 PM - 1.33.2.5)
// ************************************************************************ //

unit ISampleDataModule1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, SOAPMidas;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : urn:SoapDataServerDataModule-ISampleDataModule
  // soapAction: urn:SoapDataServerDataModule-ISampleDataModule#GetRecordCount
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : ISampleDataModulebinding
  // service   : ISampleDataModuleservice
  // port      : ISampleDataModulePort
  // URL       : http://localhost:8081/SoapDataServer.soapdataserver/soap/ISampleDataModule
  // ************************************************************************ //
  ISampleDataModule = interface(IAppServerSOAP)
  ['{0A6880CE-496F-91D0-AF95-AD99F518C6F1}']
    function  GetRecordCount: Integer; stdcall;
  end;



implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(ISampleDataModule), 'urn:SoapDataServerDataModule-ISampleDataModule', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ISampleDataModule), 'urn:SoapDataServerDataModule-ISampleDataModule#GetRecordCount');

end.