unit AppServTwo_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 9/25/2002 4:45:09 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: e:\books\md7code\16\AppServ2\AppServ2.tlb (1)
// LIBID: {C5DDE901-2214-11D1-98D0-444553540000}
// LCID: 0
// Helpfile: 
// HelpString: AppServ2 Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\System32\midas.dll)
//   (2) v2.0 stdole, (C:\WINDOWS\System32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AppServTwoMajorVersion = 1;
  AppServTwoMinorVersion = 0;

  LIBID_AppServTwo: TGUID = '{C5DDE901-2214-11D1-98D0-444553540000}';

  IID_IRdmCount: TGUID = '{C5DDE902-2214-11D1-98D0-444553540000}';
  CLASS_RdmCount: TGUID = '{C5DDE903-2214-11D1-98D0-444553540000}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRdmCount = interface;
  IRdmCountDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RdmCount = IRdmCount;


// *********************************************************************//
// Interface: IRdmCount
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C5DDE902-2214-11D1-98D0-444553540000}
// *********************************************************************//
  IRdmCount = interface(IAppServer)
    ['{C5DDE902-2214-11D1-98D0-444553540000}']
  end;

// *********************************************************************//
// DispIntf:  IRdmCountDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C5DDE902-2214-11D1-98D0-444553540000}
// *********************************************************************//
  IRdmCountDisp = dispinterface
    ['{C5DDE902-2214-11D1-98D0-444553540000}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoRdmCount provides a Create and CreateRemote method to          
// create instances of the default interface IRdmCount exposed by              
// the CoClass RdmCount. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRdmCount = class
    class function Create: IRdmCount;
    class function CreateRemote(const MachineName: string): IRdmCount;
  end;

implementation

uses ComObj;

class function CoRdmCount.Create: IRdmCount;
begin
  Result := CreateComObject(CLASS_RdmCount) as IRdmCount;
end;

class function CoRdmCount.CreateRemote(const MachineName: string): IRdmCount;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RdmCount) as IRdmCount;
end;

end.
