unit QTActiveXPlugin_TLB;

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
// File generated on 5/31/2005 10:26:47 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\QuickTime\QTPlugin.ocx (1)
// LIBID: {02BF25D2-8C17-4B23-BC80-D3488ABDDC6B}
// LCID: 0
// Helpfile: 
// HelpString: Apple QuickTime Control
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\System32\stdole2.tlb)
// Errors:
//   Hint: TypeInfo 'QTActiveXPlugin' changed to 'QTActiveXPlugin_'
//   Hint: Parameter 'type' of IQTActiveXPlugin.GetUserData changed to 'type_'
//   Hint: Parameter 'type' of IQTActiveXPlugin.GetComponentVersion changed to 'type_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  QTActiveXPluginMajorVersion = 2;
  QTActiveXPluginMinorVersion = 0;

  LIBID_QTActiveXPlugin: TGUID = '{02BF25D2-8C17-4B23-BC80-D3488ABDDC6B}';

  IID_IQTActiveXPlugin: TGUID = '{02BF25D3-8C17-4B23-BC80-D3488ABDDC6B}';
  DIID_DQTActiveXPluginEvents: TGUID = '{02BF25D4-8C17-4B23-BC80-D3488ABDDC6B}';
  CLASS_QTActiveXPlugin_: TGUID = '{02BF25D5-8C17-4B23-BC80-D3488ABDDC6B}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IQTActiveXPlugin = interface;
  IQTActiveXPluginDisp = dispinterface;
  DQTActiveXPluginEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  QTActiveXPlugin_ = IQTActiveXPlugin;


// *********************************************************************//
// Interface: IQTActiveXPlugin
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {02BF25D3-8C17-4B23-BC80-D3488ABDDC6B}
// *********************************************************************//
  IQTActiveXPlugin = interface(IDispatch)
    ['{02BF25D3-8C17-4B23-BC80-D3488ABDDC6B}']
    procedure Show; stdcall;
    procedure Hide; stdcall;
    procedure Clear; stdcall;
    function Get_dispatch: IDispatch; safecall;
    procedure Play; safecall;
    procedure Stop; safecall;
    procedure Rewind; safecall;
    procedure Step(count: Integer); safecall;
    procedure GoToChapter(const language: WideString); safecall;
    procedure ShowDefaultView; safecall;
    procedure GoPreviousNode; safecall;
    procedure SendSpriteEvent(trackIndex: Integer; spriteID: Integer; messageID: Integer); safecall;
    procedure SetRate(rate: Single); safecall;
    function GetRate: Single; safecall;
    procedure SetTime(time: Integer); safecall;
    function GetTime: Integer; safecall;
    procedure SetVolume(volume: Integer); safecall;
    function GetVolume: Integer; safecall;
    procedure SetMovieName(const movieName: WideString); safecall;
    function GetMovieName: WideString; safecall;
    procedure SetMovieID(movieID: Integer); safecall;
    function GetMovieID: Integer; safecall;
    procedure SetStartTime(time: Integer); safecall;
    function GetStartTime: Integer; safecall;
    procedure SetEndTime(time: Integer); safecall;
    function GetEndTime: Integer; safecall;
    procedure SetBgColor(const color: WideString); safecall;
    function GetBgColor: WideString; safecall;
    procedure SetIsLooping(loop: Integer); safecall;
    function GetIsLooping: Integer; safecall;
    procedure SetLoopIsPalindrome(loop: Integer); safecall;
    function GetLoopIsPalindrome: Integer; safecall;
    function GetMute: Integer; safecall;
    procedure SetMute(mute: Integer); safecall;
    procedure SetPlayEveryFrame(playAll: Integer); safecall;
    function GetPlayEveryFrame: Integer; safecall;
    procedure SetAutoPlay(autoPlay: Integer); safecall;
    function GetAutoPlay: Integer; safecall;
    procedure SetControllerVisible(visible: Integer); safecall;
    function GetControllerVisible: Integer; safecall;
    procedure SetHREF(const url: WideString); safecall;
    function GetHREF: WideString; safecall;
    procedure SetTarget(const target: WideString); safecall;
    function GetTarget: WideString; safecall;
    procedure SetQTNEXTUrl(index: Integer; const url: WideString); safecall;
    function GetQTNEXTUrl(index: Integer): WideString; safecall;
    procedure SetHotspotUrl(hotspotID: Integer; const url: WideString); safecall;
    function GetHotspotUrl(hotspotID: Integer): WideString; safecall;
    procedure SetHotspotTarget(hotspotID: Integer; const target: WideString); safecall;
    function GetHotspotTarget(hotspotID: Integer): WideString; safecall;
    procedure SetURL(const url: WideString); safecall;
    function GetURL: WideString; safecall;
    procedure SetKioskMode(kioskMode: Integer); safecall;
    function GetKioskMode: Integer; safecall;
    function GetDuration: Integer; safecall;
    function GetMaxTimeLoaded: Integer; safecall;
    function GetTimeScale: Integer; safecall;
    function GetMovieSize: Integer; safecall;
    function GetMaxBytesLoaded: Integer; safecall;
    procedure SetMatrix(const matrix: WideString); safecall;
    function GetMatrix: WideString; safecall;
    procedure SetRectangle(const rect: WideString); safecall;
    function GetRectangle: WideString; safecall;
    procedure SetLanguage(const language: WideString); safecall;
    function GetLanguage: WideString; safecall;
    function GetMIMEType: WideString; safecall;
    function GetUserData(const type_: WideString): WideString; safecall;
    function GetTrackCount: Integer; safecall;
    function GetTrackName(index: Integer): WideString; safecall;
    function GetTrackType(index: Integer): WideString; safecall;
    function GetTrackEnabled(index: Integer): Integer; safecall;
    procedure SetTrackEnabled(index: Integer; enabled: Integer); safecall;
    function GetChapterCount: Integer; safecall;
    function GetChapterName(chapterNum: Integer): WideString; safecall;
    procedure SetSpriteTrackVariable(trackIndex: Integer; variableIndex: Integer; 
                                     const value: WideString); safecall;
    function GetSpriteTrackVariable(trackIndex: Integer; variableIndex: Integer): WideString; safecall;
    function GetIsVRMovie: Integer; safecall;
    procedure SetPanAngle(angle: Single); safecall;
    function GetPanAngle: Single; safecall;
    procedure SetTiltAngle(angle: Single); safecall;
    function GetTiltAngle: Single; safecall;
    procedure SetFieldOfView(fov: Single); safecall;
    function GetFieldOfView: Single; safecall;
    function GetNodeCount: Integer; safecall;
    procedure SetNodeID(id: Integer); safecall;
    function GetNodeID: Integer; safecall;
    function GetPluginVersion: WideString; safecall;
    function GetPluginStatus: WideString; safecall;
    function GetResetPropertiesOnReload: Integer; safecall;
    procedure SetResetPropertiesOnReload(reset: Integer); safecall;
    function GetQuickTimeVersion: WideString; safecall;
    function GetQuickTimeLanguage: WideString; safecall;
    function GetQuickTimeConnectionSpeed: Integer; safecall;
    function GetIsQuickTimeRegistered: Integer; safecall;
    function GetComponentVersion(const type_: WideString; const subType: WideString; 
                                 const manufacturer: WideString): WideString; safecall;
    property dispatch: IDispatch read Get_dispatch;
  end;

// *********************************************************************//
// DispIntf:  IQTActiveXPluginDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {02BF25D3-8C17-4B23-BC80-D3488ABDDC6B}
// *********************************************************************//
  IQTActiveXPluginDisp = dispinterface
    ['{02BF25D3-8C17-4B23-BC80-D3488ABDDC6B}']
    procedure Show; dispid 1610743808;
    procedure Hide; dispid 1610743809;
    procedure Clear; dispid 1610743810;
    property dispatch: IDispatch readonly dispid 1610743811;
    procedure Play; dispid 257;
    procedure Stop; dispid 258;
    procedure Rewind; dispid 259;
    procedure Step(count: Integer); dispid 260;
    procedure GoToChapter(const language: WideString); dispid 261;
    procedure ShowDefaultView; dispid 262;
    procedure GoPreviousNode; dispid 263;
    procedure SendSpriteEvent(trackIndex: Integer; spriteID: Integer; messageID: Integer); dispid 264;
    procedure SetRate(rate: Single); dispid 265;
    function GetRate: Single; dispid 266;
    procedure SetTime(time: Integer); dispid 267;
    function GetTime: Integer; dispid 268;
    procedure SetVolume(volume: Integer); dispid 269;
    function GetVolume: Integer; dispid 270;
    procedure SetMovieName(const movieName: WideString); dispid 271;
    function GetMovieName: WideString; dispid 272;
    procedure SetMovieID(movieID: Integer); dispid 273;
    function GetMovieID: Integer; dispid 274;
    procedure SetStartTime(time: Integer); dispid 275;
    function GetStartTime: Integer; dispid 276;
    procedure SetEndTime(time: Integer); dispid 277;
    function GetEndTime: Integer; dispid 278;
    procedure SetBgColor(const color: WideString); dispid 279;
    function GetBgColor: WideString; dispid 280;
    procedure SetIsLooping(loop: Integer); dispid 281;
    function GetIsLooping: Integer; dispid 282;
    procedure SetLoopIsPalindrome(loop: Integer); dispid 283;
    function GetLoopIsPalindrome: Integer; dispid 284;
    function GetMute: Integer; dispid 285;
    procedure SetMute(mute: Integer); dispid 286;
    procedure SetPlayEveryFrame(playAll: Integer); dispid 287;
    function GetPlayEveryFrame: Integer; dispid 288;
    procedure SetAutoPlay(autoPlay: Integer); dispid 289;
    function GetAutoPlay: Integer; dispid 290;
    procedure SetControllerVisible(visible: Integer); dispid 291;
    function GetControllerVisible: Integer; dispid 292;
    procedure SetHREF(const url: WideString); dispid 293;
    function GetHREF: WideString; dispid 294;
    procedure SetTarget(const target: WideString); dispid 295;
    function GetTarget: WideString; dispid 296;
    procedure SetQTNEXTUrl(index: Integer; const url: WideString); dispid 297;
    function GetQTNEXTUrl(index: Integer): WideString; dispid 298;
    procedure SetHotspotUrl(hotspotID: Integer; const url: WideString); dispid 299;
    function GetHotspotUrl(hotspotID: Integer): WideString; dispid 300;
    procedure SetHotspotTarget(hotspotID: Integer; const target: WideString); dispid 301;
    function GetHotspotTarget(hotspotID: Integer): WideString; dispid 302;
    procedure SetURL(const url: WideString); dispid 303;
    function GetURL: WideString; dispid 304;
    procedure SetKioskMode(kioskMode: Integer); dispid 305;
    function GetKioskMode: Integer; dispid 306;
    function GetDuration: Integer; dispid 307;
    function GetMaxTimeLoaded: Integer; dispid 308;
    function GetTimeScale: Integer; dispid 309;
    function GetMovieSize: Integer; dispid 310;
    function GetMaxBytesLoaded: Integer; dispid 311;
    procedure SetMatrix(const matrix: WideString); dispid 312;
    function GetMatrix: WideString; dispid 313;
    procedure SetRectangle(const rect: WideString); dispid 314;
    function GetRectangle: WideString; dispid 315;
    procedure SetLanguage(const language: WideString); dispid 316;
    function GetLanguage: WideString; dispid 317;
    function GetMIMEType: WideString; dispid 318;
    function GetUserData(const type_: WideString): WideString; dispid 319;
    function GetTrackCount: Integer; dispid 320;
    function GetTrackName(index: Integer): WideString; dispid 321;
    function GetTrackType(index: Integer): WideString; dispid 322;
    function GetTrackEnabled(index: Integer): Integer; dispid 323;
    procedure SetTrackEnabled(index: Integer; enabled: Integer); dispid 324;
    function GetChapterCount: Integer; dispid 325;
    function GetChapterName(chapterNum: Integer): WideString; dispid 326;
    procedure SetSpriteTrackVariable(trackIndex: Integer; variableIndex: Integer; 
                                     const value: WideString); dispid 327;
    function GetSpriteTrackVariable(trackIndex: Integer; variableIndex: Integer): WideString; dispid 328;
    function GetIsVRMovie: Integer; dispid 329;
    procedure SetPanAngle(angle: Single); dispid 330;
    function GetPanAngle: Single; dispid 331;
    procedure SetTiltAngle(angle: Single); dispid 332;
    function GetTiltAngle: Single; dispid 333;
    procedure SetFieldOfView(fov: Single); dispid 334;
    function GetFieldOfView: Single; dispid 335;
    function GetNodeCount: Integer; dispid 336;
    procedure SetNodeID(id: Integer); dispid 337;
    function GetNodeID: Integer; dispid 338;
    function GetPluginVersion: WideString; dispid 339;
    function GetPluginStatus: WideString; dispid 340;
    function GetResetPropertiesOnReload: Integer; dispid 341;
    procedure SetResetPropertiesOnReload(reset: Integer); dispid 342;
    function GetQuickTimeVersion: WideString; dispid 343;
    function GetQuickTimeLanguage: WideString; dispid 344;
    function GetQuickTimeConnectionSpeed: Integer; dispid 345;
    function GetIsQuickTimeRegistered: Integer; dispid 346;
    function GetComponentVersion(const type_: WideString; const subType: WideString; 
                                 const manufacturer: WideString): WideString; dispid 347;
  end;

// *********************************************************************//
// DispIntf:  DQTActiveXPluginEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {02BF25D4-8C17-4B23-BC80-D3488ABDDC6B}
// *********************************************************************//
  DQTActiveXPluginEvents = dispinterface
    ['{02BF25D4-8C17-4B23-BC80-D3488ABDDC6B}']
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TQTActiveXPlugin_
// Help String      : Apple QuickTime Control
// Default Interface: IQTActiveXPlugin
// Def. Intf. DISP? : No
// Event   Interface: DQTActiveXPluginEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TQTActiveXPlugin_ = class(TOleControl)
  private
    FIntf: IQTActiveXPlugin;
    function  GetControlInterface: IQTActiveXPlugin;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_dispatch: IDispatch;
  public
    procedure Show;
    procedure Hide;
    procedure Clear;
    procedure Play;
    procedure Stop;
    procedure Rewind;
    procedure Step(count: Integer);
    procedure GoToChapter(const language: WideString);
    procedure ShowDefaultView;
    procedure GoPreviousNode;
    procedure SendSpriteEvent(trackIndex: Integer; spriteID: Integer; messageID: Integer);
    procedure SetRate(rate: Single);
    function GetRate: Single;
    procedure SetTime(time: Integer);
    function GetTime: Integer;
    procedure SetVolume(volume: Integer);
    function GetVolume: Integer;
    procedure SetMovieName(const movieName: WideString);
    function GetMovieName: WideString;
    procedure SetMovieID(movieID: Integer);
    function GetMovieID: Integer;
    procedure SetStartTime(time: Integer);
    function GetStartTime: Integer;
    procedure SetEndTime(time: Integer);
    function GetEndTime: Integer;
    procedure SetBgColor(const color: WideString);
    function GetBgColor: WideString;
    procedure SetIsLooping(loop: Integer);
    function GetIsLooping: Integer;
    procedure SetLoopIsPalindrome(loop: Integer);
    function GetLoopIsPalindrome: Integer;
    function GetMute: Integer;
    procedure SetMute(mute: Integer);
    procedure SetPlayEveryFrame(playAll: Integer);
    function GetPlayEveryFrame: Integer;
    procedure SetAutoPlay(autoPlay: Integer);
    function GetAutoPlay: Integer;
    procedure SetControllerVisible(visible: Integer);
    function GetControllerVisible: Integer;
    procedure SetHREF(const url: WideString);
    function GetHREF: WideString;
    procedure SetTarget(const target: WideString);
    function GetTarget: WideString;
    procedure SetQTNEXTUrl(index: Integer; const url: WideString);
    function GetQTNEXTUrl(index: Integer): WideString;
    procedure SetHotspotUrl(hotspotID: Integer; const url: WideString);
    function GetHotspotUrl(hotspotID: Integer): WideString;
    procedure SetHotspotTarget(hotspotID: Integer; const target: WideString);
    function GetHotspotTarget(hotspotID: Integer): WideString;
    procedure SetURL(const url: WideString);
    function GetURL: WideString;
    procedure SetKioskMode(kioskMode: Integer);
    function GetKioskMode: Integer;
    function GetDuration: Integer;
    function GetMaxTimeLoaded: Integer;
    function GetTimeScale: Integer;
    function GetMovieSize: Integer;
    function GetMaxBytesLoaded: Integer;
    procedure SetMatrix(const matrix: WideString);
    function GetMatrix: WideString;
    procedure SetRectangle(const rect: WideString);
    function GetRectangle: WideString;
    procedure SetLanguage(const language: WideString);
    function GetLanguage: WideString;
    function GetMIMEType: WideString;
    function GetUserData(const type_: WideString): WideString;
    function GetTrackCount: Integer;
    function GetTrackName(index: Integer): WideString;
    function GetTrackType(index: Integer): WideString;
    function GetTrackEnabled(index: Integer): Integer;
    procedure SetTrackEnabled(index: Integer; enabled: Integer);
    function GetChapterCount: Integer;
    function GetChapterName(chapterNum: Integer): WideString;
    procedure SetSpriteTrackVariable(trackIndex: Integer; variableIndex: Integer; 
                                     const value: WideString);
    function GetSpriteTrackVariable(trackIndex: Integer; variableIndex: Integer): WideString;
    function GetIsVRMovie: Integer;
    procedure SetPanAngle(angle: Single);
    function GetPanAngle: Single;
    procedure SetTiltAngle(angle: Single);
    function GetTiltAngle: Single;
    procedure SetFieldOfView(fov: Single);
    function GetFieldOfView: Single;
    function GetNodeCount: Integer;
    procedure SetNodeID(id: Integer);
    function GetNodeID: Integer;
    function GetPluginVersion: WideString;
    function GetPluginStatus: WideString;
    function GetResetPropertiesOnReload: Integer;
    procedure SetResetPropertiesOnReload(reset: Integer);
    function GetQuickTimeVersion: WideString;
    function GetQuickTimeLanguage: WideString;
    function GetQuickTimeConnectionSpeed: Integer;
    function GetIsQuickTimeRegistered: Integer;
    function GetComponentVersion(const type_: WideString; const subType: WideString; 
                                 const manufacturer: WideString): WideString;
    property  ControlInterface: IQTActiveXPlugin read GetControlInterface;
    property  DefaultInterface: IQTActiveXPlugin read GetControlInterface;
    property dispatch: IDispatch index -1 read GetIDispatchProp;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
  end;

procedure Register;

resourcestring
  dtlServerPage = '(none)';

  dtlOcxPage = '(none)';

implementation

uses ComObj;

procedure TQTActiveXPlugin_.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{02BF25D5-8C17-4B23-BC80-D3488ABDDC6B}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TQTActiveXPlugin_.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IQTActiveXPlugin;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TQTActiveXPlugin_.GetControlInterface: IQTActiveXPlugin;
begin
  CreateControl;
  Result := FIntf;
end;

function TQTActiveXPlugin_.Get_dispatch: IDispatch;
begin
    Result := DefaultInterface.dispatch;
end;

procedure TQTActiveXPlugin_.Show;
begin
  DefaultInterface.Show;
end;

procedure TQTActiveXPlugin_.Hide;
begin
  DefaultInterface.Hide;
end;

procedure TQTActiveXPlugin_.Clear;
begin
  DefaultInterface.Clear;
end;

procedure TQTActiveXPlugin_.Play;
begin
  DefaultInterface.Play;
end;

procedure TQTActiveXPlugin_.Stop;
begin
  DefaultInterface.Stop;
end;

procedure TQTActiveXPlugin_.Rewind;
begin
  DefaultInterface.Rewind;
end;

procedure TQTActiveXPlugin_.Step(count: Integer);
begin
  DefaultInterface.Step(count);
end;

procedure TQTActiveXPlugin_.GoToChapter(const language: WideString);
begin
  DefaultInterface.GoToChapter(language);
end;

procedure TQTActiveXPlugin_.ShowDefaultView;
begin
  DefaultInterface.ShowDefaultView;
end;

procedure TQTActiveXPlugin_.GoPreviousNode;
begin
  DefaultInterface.GoPreviousNode;
end;

procedure TQTActiveXPlugin_.SendSpriteEvent(trackIndex: Integer; spriteID: Integer; 
                                            messageID: Integer);
begin
  DefaultInterface.SendSpriteEvent(trackIndex, spriteID, messageID);
end;

procedure TQTActiveXPlugin_.SetRate(rate: Single);
begin
  DefaultInterface.SetRate(rate);
end;

function TQTActiveXPlugin_.GetRate: Single;
begin
  Result := DefaultInterface.GetRate;
end;

procedure TQTActiveXPlugin_.SetTime(time: Integer);
begin
  DefaultInterface.SetTime(time);
end;

function TQTActiveXPlugin_.GetTime: Integer;
begin
  Result := DefaultInterface.GetTime;
end;

procedure TQTActiveXPlugin_.SetVolume(volume: Integer);
begin
  DefaultInterface.SetVolume(volume);
end;

function TQTActiveXPlugin_.GetVolume: Integer;
begin
  Result := DefaultInterface.GetVolume;
end;

procedure TQTActiveXPlugin_.SetMovieName(const movieName: WideString);
begin
  DefaultInterface.SetMovieName(movieName);
end;

function TQTActiveXPlugin_.GetMovieName: WideString;
begin
  Result := DefaultInterface.GetMovieName;
end;

procedure TQTActiveXPlugin_.SetMovieID(movieID: Integer);
begin
  DefaultInterface.SetMovieID(movieID);
end;

function TQTActiveXPlugin_.GetMovieID: Integer;
begin
  Result := DefaultInterface.GetMovieID;
end;

procedure TQTActiveXPlugin_.SetStartTime(time: Integer);
begin
  DefaultInterface.SetStartTime(time);
end;

function TQTActiveXPlugin_.GetStartTime: Integer;
begin
  Result := DefaultInterface.GetStartTime;
end;

procedure TQTActiveXPlugin_.SetEndTime(time: Integer);
begin
  DefaultInterface.SetEndTime(time);
end;

function TQTActiveXPlugin_.GetEndTime: Integer;
begin
  Result := DefaultInterface.GetEndTime;
end;

procedure TQTActiveXPlugin_.SetBgColor(const color: WideString);
begin
  DefaultInterface.SetBgColor(color);
end;

function TQTActiveXPlugin_.GetBgColor: WideString;
begin
  Result := DefaultInterface.GetBgColor;
end;

procedure TQTActiveXPlugin_.SetIsLooping(loop: Integer);
begin
  DefaultInterface.SetIsLooping(loop);
end;

function TQTActiveXPlugin_.GetIsLooping: Integer;
begin
  Result := DefaultInterface.GetIsLooping;
end;

procedure TQTActiveXPlugin_.SetLoopIsPalindrome(loop: Integer);
begin
  DefaultInterface.SetLoopIsPalindrome(loop);
end;

function TQTActiveXPlugin_.GetLoopIsPalindrome: Integer;
begin
  Result := DefaultInterface.GetLoopIsPalindrome;
end;

function TQTActiveXPlugin_.GetMute: Integer;
begin
  Result := DefaultInterface.GetMute;
end;

procedure TQTActiveXPlugin_.SetMute(mute: Integer);
begin
  DefaultInterface.SetMute(mute);
end;

procedure TQTActiveXPlugin_.SetPlayEveryFrame(playAll: Integer);
begin
  DefaultInterface.SetPlayEveryFrame(playAll);
end;

function TQTActiveXPlugin_.GetPlayEveryFrame: Integer;
begin
  Result := DefaultInterface.GetPlayEveryFrame;
end;

procedure TQTActiveXPlugin_.SetAutoPlay(autoPlay: Integer);
begin
  DefaultInterface.SetAutoPlay(autoPlay);
end;

function TQTActiveXPlugin_.GetAutoPlay: Integer;
begin
  Result := DefaultInterface.GetAutoPlay;
end;

procedure TQTActiveXPlugin_.SetControllerVisible(visible: Integer);
begin
  DefaultInterface.SetControllerVisible(visible);
end;

function TQTActiveXPlugin_.GetControllerVisible: Integer;
begin
  Result := DefaultInterface.GetControllerVisible;
end;

procedure TQTActiveXPlugin_.SetHREF(const url: WideString);
begin
  DefaultInterface.SetHREF(url);
end;

function TQTActiveXPlugin_.GetHREF: WideString;
begin
  Result := DefaultInterface.GetHREF;
end;

procedure TQTActiveXPlugin_.SetTarget(const target: WideString);
begin
  DefaultInterface.SetTarget(target);
end;

function TQTActiveXPlugin_.GetTarget: WideString;
begin
  Result := DefaultInterface.GetTarget;
end;

procedure TQTActiveXPlugin_.SetQTNEXTUrl(index: Integer; const url: WideString);
begin
  DefaultInterface.SetQTNEXTUrl(index, url);
end;

function TQTActiveXPlugin_.GetQTNEXTUrl(index: Integer): WideString;
begin
  Result := DefaultInterface.GetQTNEXTUrl(index);
end;

procedure TQTActiveXPlugin_.SetHotspotUrl(hotspotID: Integer; const url: WideString);
begin
  DefaultInterface.SetHotspotUrl(hotspotID, url);
end;

function TQTActiveXPlugin_.GetHotspotUrl(hotspotID: Integer): WideString;
begin
  Result := DefaultInterface.GetHotspotUrl(hotspotID);
end;

procedure TQTActiveXPlugin_.SetHotspotTarget(hotspotID: Integer; const target: WideString);
begin
  DefaultInterface.SetHotspotTarget(hotspotID, target);
end;

function TQTActiveXPlugin_.GetHotspotTarget(hotspotID: Integer): WideString;
begin
  Result := DefaultInterface.GetHotspotTarget(hotspotID);
end;

procedure TQTActiveXPlugin_.SetURL(const url: WideString);
begin
  DefaultInterface.SetURL(url);
end;

function TQTActiveXPlugin_.GetURL: WideString;
begin
  Result := DefaultInterface.GetURL;
end;

procedure TQTActiveXPlugin_.SetKioskMode(kioskMode: Integer);
begin
  DefaultInterface.SetKioskMode(kioskMode);
end;

function TQTActiveXPlugin_.GetKioskMode: Integer;
begin
  Result := DefaultInterface.GetKioskMode;
end;

function TQTActiveXPlugin_.GetDuration: Integer;
begin
  Result := DefaultInterface.GetDuration;
end;

function TQTActiveXPlugin_.GetMaxTimeLoaded: Integer;
begin
  Result := DefaultInterface.GetMaxTimeLoaded;
end;

function TQTActiveXPlugin_.GetTimeScale: Integer;
begin
  Result := DefaultInterface.GetTimeScale;
end;

function TQTActiveXPlugin_.GetMovieSize: Integer;
begin
  Result := DefaultInterface.GetMovieSize;
end;

function TQTActiveXPlugin_.GetMaxBytesLoaded: Integer;
begin
  Result := DefaultInterface.GetMaxBytesLoaded;
end;

procedure TQTActiveXPlugin_.SetMatrix(const matrix: WideString);
begin
  DefaultInterface.SetMatrix(matrix);
end;

function TQTActiveXPlugin_.GetMatrix: WideString;
begin
  Result := DefaultInterface.GetMatrix;
end;

procedure TQTActiveXPlugin_.SetRectangle(const rect: WideString);
begin
  DefaultInterface.SetRectangle(rect);
end;

function TQTActiveXPlugin_.GetRectangle: WideString;
begin
  Result := DefaultInterface.GetRectangle;
end;

procedure TQTActiveXPlugin_.SetLanguage(const language: WideString);
begin
  DefaultInterface.SetLanguage(language);
end;

function TQTActiveXPlugin_.GetLanguage: WideString;
begin
  Result := DefaultInterface.GetLanguage;
end;

function TQTActiveXPlugin_.GetMIMEType: WideString;
begin
  Result := DefaultInterface.GetMIMEType;
end;

function TQTActiveXPlugin_.GetUserData(const type_: WideString): WideString;
begin
  Result := DefaultInterface.GetUserData(type_);
end;

function TQTActiveXPlugin_.GetTrackCount: Integer;
begin
  Result := DefaultInterface.GetTrackCount;
end;

function TQTActiveXPlugin_.GetTrackName(index: Integer): WideString;
begin
  Result := DefaultInterface.GetTrackName(index);
end;

function TQTActiveXPlugin_.GetTrackType(index: Integer): WideString;
begin
  Result := DefaultInterface.GetTrackType(index);
end;

function TQTActiveXPlugin_.GetTrackEnabled(index: Integer): Integer;
begin
  Result := DefaultInterface.GetTrackEnabled(index);
end;

procedure TQTActiveXPlugin_.SetTrackEnabled(index: Integer; enabled: Integer);
begin
  DefaultInterface.SetTrackEnabled(index, enabled);
end;

function TQTActiveXPlugin_.GetChapterCount: Integer;
begin
  Result := DefaultInterface.GetChapterCount;
end;

function TQTActiveXPlugin_.GetChapterName(chapterNum: Integer): WideString;
begin
  Result := DefaultInterface.GetChapterName(chapterNum);
end;

procedure TQTActiveXPlugin_.SetSpriteTrackVariable(trackIndex: Integer; variableIndex: Integer; 
                                                   const value: WideString);
begin
  DefaultInterface.SetSpriteTrackVariable(trackIndex, variableIndex, value);
end;

function TQTActiveXPlugin_.GetSpriteTrackVariable(trackIndex: Integer; variableIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetSpriteTrackVariable(trackIndex, variableIndex);
end;

function TQTActiveXPlugin_.GetIsVRMovie: Integer;
begin
  Result := DefaultInterface.GetIsVRMovie;
end;

procedure TQTActiveXPlugin_.SetPanAngle(angle: Single);
begin
  DefaultInterface.SetPanAngle(angle);
end;

function TQTActiveXPlugin_.GetPanAngle: Single;
begin
  Result := DefaultInterface.GetPanAngle;
end;

procedure TQTActiveXPlugin_.SetTiltAngle(angle: Single);
begin
  DefaultInterface.SetTiltAngle(angle);
end;

function TQTActiveXPlugin_.GetTiltAngle: Single;
begin
  Result := DefaultInterface.GetTiltAngle;
end;

procedure TQTActiveXPlugin_.SetFieldOfView(fov: Single);
begin
  DefaultInterface.SetFieldOfView(fov);
end;

function TQTActiveXPlugin_.GetFieldOfView: Single;
begin
  Result := DefaultInterface.GetFieldOfView;
end;

function TQTActiveXPlugin_.GetNodeCount: Integer;
begin
  Result := DefaultInterface.GetNodeCount;
end;

procedure TQTActiveXPlugin_.SetNodeID(id: Integer);
begin
  DefaultInterface.SetNodeID(id);
end;

function TQTActiveXPlugin_.GetNodeID: Integer;
begin
  Result := DefaultInterface.GetNodeID;
end;

function TQTActiveXPlugin_.GetPluginVersion: WideString;
begin
  Result := DefaultInterface.GetPluginVersion;
end;

function TQTActiveXPlugin_.GetPluginStatus: WideString;
begin
  Result := DefaultInterface.GetPluginStatus;
end;

function TQTActiveXPlugin_.GetResetPropertiesOnReload: Integer;
begin
  Result := DefaultInterface.GetResetPropertiesOnReload;
end;

procedure TQTActiveXPlugin_.SetResetPropertiesOnReload(reset: Integer);
begin
  DefaultInterface.SetResetPropertiesOnReload(reset);
end;

function TQTActiveXPlugin_.GetQuickTimeVersion: WideString;
begin
  Result := DefaultInterface.GetQuickTimeVersion;
end;

function TQTActiveXPlugin_.GetQuickTimeLanguage: WideString;
begin
  Result := DefaultInterface.GetQuickTimeLanguage;
end;

function TQTActiveXPlugin_.GetQuickTimeConnectionSpeed: Integer;
begin
  Result := DefaultInterface.GetQuickTimeConnectionSpeed;
end;

function TQTActiveXPlugin_.GetIsQuickTimeRegistered: Integer;
begin
  Result := DefaultInterface.GetIsQuickTimeRegistered;
end;

function TQTActiveXPlugin_.GetComponentVersion(const type_: WideString; const subType: WideString; 
                                               const manufacturer: WideString): WideString;
begin
  Result := DefaultInterface.GetComponentVersion(type_, subType, manufacturer);
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TQTActiveXPlugin_]);
end;

end.
