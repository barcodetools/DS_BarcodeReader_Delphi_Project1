unit BarcodeReaderLib_TLB;

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

// PASTLWTR : $Revision:   1.88  $
// File generated on 02.03.2009 13:32:25 from Type Library described below.

// ************************************************************************ //
// Type Lib: C:\Program Files\RKD\BarcodeReader-Pro\BarcodeReader.dll (1)
// IID\LCID: {AF302386-2145-4170-AE7F-B47EA0612CE9}\0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINDOWS\system32\STDVCL40.DLL)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  BarcodeReaderLibMajorVersion = 1;
  BarcodeReaderLibMinorVersion = 0;

  LIBID_BarcodeReaderLib: TGUID = '{AF302386-2145-4170-AE7F-B47EA0612CE9}';

  IID_IBarcodeDecoder: TGUID = '{FEBAB8F2-2D4D-44FC-922A-5A29DC7483C6}';
  CLASS_BarcodeDecoder: TGUID = '{8389C2AD-BD70-47CA-8598-4B49CED46FC5}';
  IID_IBarcodeList: TGUID = '{86F6C04D-49A9-4FFB-B366-679388BFFB1D}';
  IID_IBarcode: TGUID = '{9CEF8DDF-EAEA-4B18-8DE6-B276E41D0095}';
  CLASS_BarcodeList: TGUID = '{D158E54F-807C-4FEF-9817-DC36ABD0A5A7}';
  CLASS_Barcode: TGUID = '{5833DF79-0D4E-4385-830B-79F8FE9B3CA3}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum EInverseTypes
type
  EInverseTypes = TOleEnum;
const
  itDarkOnLight = $00000000;
  itLightOnDark = $00000001;
  itDarkAndLight = $00000002;

// Constants for enum EBarcodeTypes
type
  EBarcodeTypes = TOleEnum;
const
  Code128 = $00000001;
  Code39 = $00000002;
  Interl25 = $00000004;
  EAN13 = $00000008;
  EAN8 = $00000010;
  Codabar = $00000020;
  Code11 = $00000040;
  UPCA = $00000080;
  UPCE = $00000100;
  Industr25 = $00000200;
  Code93 = $00000400;
  LinearUnrecognized = $01000000;
  PDF417Unrecognized = $02000000;
  DataMatrixUnrecognized = $04000000;
  DataMatrix = $10000000;
  PDF417 = $20000000;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IBarcodeDecoder = interface;
  IBarcodeDecoderDisp = dispinterface;
  IBarcodeList = interface;
  IBarcodeListDisp = dispinterface;
  IBarcode = interface;
  IBarcodeDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  BarcodeDecoder = IBarcodeDecoder;
  BarcodeList = IBarcodeList;
  Barcode = IBarcode;


// *********************************************************************//
// Interface: IBarcodeDecoder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FEBAB8F2-2D4D-44FC-922A-5A29DC7483C6}
// *********************************************************************//
  IBarcodeDecoder = interface(IDispatch)
    ['{FEBAB8F2-2D4D-44FC-922A-5A29DC7483C6}']
    function  Get_BarcodeTypes: Integer; safecall;
    procedure Set_BarcodeTypes(pVal: Integer); safecall;
    function  Get_LinearFindBarcodes: Integer; safecall;
    procedure Set_LinearFindBarcodes(pVal: Integer); safecall;
    function  Get_LinearShowSymbologyID: WordBool; safecall;
    procedure Set_LinearShowSymbologyID(pVal: WordBool); safecall;
    function  Get_LinearVerifyCheckDigit: WordBool; safecall;
    procedure Set_LinearVerifyCheckDigit(pVal: WordBool); safecall;
    function  Get_LinearShowCheckDigit: WordBool; safecall;
    procedure Set_LinearShowCheckDigit(pVal: WordBool); safecall;
    function  Get_LinearShowStartStop: WordBool; safecall;
    procedure Set_LinearShowStartStop(pVal: WordBool); safecall;
    function  Get_LinearCode39EnableExtended: WordBool; safecall;
    procedure Set_LinearCode39EnableExtended(pVal: WordBool); safecall;
    function  Get_LinearUPCE2UPCA: WordBool; safecall;
    procedure Set_LinearUPCE2UPCA(pVal: WordBool); safecall;
    function  Get_ShowImage: WordBool; safecall;
    procedure Set_ShowImage(pVal: WordBool); safecall;
    function  Get_FileName: WideString; safecall;
    procedure Set_FileName(const pVal: WideString); safecall;
    function  Get_InverseType: EInverseTypes; safecall;
    procedure Set_InverseType(pVal: EInverseTypes); safecall;
    function  Get_BarcodeCount: Integer; safecall;
    function  Get_Barcodes: IBarcodeList; safecall;
    procedure Set_BackColor(pclr: OLE_COLOR); safecall;
    function  Get_BackColor: OLE_COLOR; safecall;
    procedure Set_Font(const ppFont: IFontDisp); safecall;
    procedure _Set_Font(const ppFont: IFontDisp); safecall;
    function  Get_Font: IFontDisp; safecall;
    procedure AboutBox; safecall;
    function  DecodeFile(const FileName: WideString): Integer; safecall;
    function  DecodeFileRect(const FileName: WideString; x: Integer; y: Integer; width: Integer; 
                             height: Integer): Integer; safecall;
    function  DecodeStream(FileStream: OleVariant): Integer; safecall;
    function  DecodeStreamRect(FileStream: OleVariant; x: Integer; y: Integer; width: Integer; 
                               height: Integer): Integer; safecall;
    function  DecodeGrayMap(GrayMap: OleVariant; GrayMapWidth: Integer; GrayMapHeight: Integer): Integer; safecall;
    function  DecodeGrayMapRect(GrayMap: OleVariant; GrayMapWidth: Integer; GrayMapHeight: Integer; 
                                x: Integer; y: Integer; width: Integer; height: Integer): Integer; safecall;
    procedure SetProperty(const PropertyName: WideString; PropertyValue: OleVariant); safecall;
    function  GetProperty(const PropertyName: WideString): OleVariant; safecall;
    property BarcodeTypes: Integer read Get_BarcodeTypes write Set_BarcodeTypes;
    property LinearFindBarcodes: Integer read Get_LinearFindBarcodes write Set_LinearFindBarcodes;
    property LinearShowSymbologyID: WordBool read Get_LinearShowSymbologyID write Set_LinearShowSymbologyID;
    property LinearVerifyCheckDigit: WordBool read Get_LinearVerifyCheckDigit write Set_LinearVerifyCheckDigit;
    property LinearShowCheckDigit: WordBool read Get_LinearShowCheckDigit write Set_LinearShowCheckDigit;
    property LinearShowStartStop: WordBool read Get_LinearShowStartStop write Set_LinearShowStartStop;
    property LinearCode39EnableExtended: WordBool read Get_LinearCode39EnableExtended write Set_LinearCode39EnableExtended;
    property LinearUPCE2UPCA: WordBool read Get_LinearUPCE2UPCA write Set_LinearUPCE2UPCA;
    property ShowImage: WordBool read Get_ShowImage write Set_ShowImage;
    property FileName: WideString read Get_FileName write Set_FileName;
    property InverseType: EInverseTypes read Get_InverseType write Set_InverseType;
    property BarcodeCount: Integer read Get_BarcodeCount;
    property Barcodes: IBarcodeList read Get_Barcodes;
    property BackColor: OLE_COLOR read Get_BackColor write Set_BackColor;
    property Font: IFontDisp read Get_Font write _Set_Font;
  end;

// *********************************************************************//
// DispIntf:  IBarcodeDecoderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FEBAB8F2-2D4D-44FC-922A-5A29DC7483C6}
// *********************************************************************//
  IBarcodeDecoderDisp = dispinterface
    ['{FEBAB8F2-2D4D-44FC-922A-5A29DC7483C6}']
    property BarcodeTypes: Integer dispid 1;
    property LinearFindBarcodes: Integer dispid 2;
    property LinearShowSymbologyID: WordBool dispid 3;
    property LinearVerifyCheckDigit: WordBool dispid 4;
    property LinearShowCheckDigit: WordBool dispid 5;
    property LinearShowStartStop: WordBool dispid 6;
    property LinearCode39EnableExtended: WordBool dispid 7;
    property LinearUPCE2UPCA: WordBool dispid 8;
    property ShowImage: WordBool dispid 9;
    property FileName: WideString dispid 10;
    property InverseType: EInverseTypes dispid 11;
    property BarcodeCount: Integer readonly dispid 12;
    property Barcodes: IBarcodeList readonly dispid 13;
    property BackColor: OLE_COLOR dispid -501;
    property Font: IFontDisp dispid -512;
    procedure AboutBox; dispid -552;
    function  DecodeFile(const FileName: WideString): Integer; dispid 40;
    function  DecodeFileRect(const FileName: WideString; x: Integer; y: Integer; width: Integer; 
                             height: Integer): Integer; dispid 41;
    function  DecodeStream(FileStream: OleVariant): Integer; dispid 42;
    function  DecodeStreamRect(FileStream: OleVariant; x: Integer; y: Integer; width: Integer; 
                               height: Integer): Integer; dispid 43;
    function  DecodeGrayMap(GrayMap: OleVariant; GrayMapWidth: Integer; GrayMapHeight: Integer): Integer; dispid 44;
    function  DecodeGrayMapRect(GrayMap: OleVariant; GrayMapWidth: Integer; GrayMapHeight: Integer; 
                                x: Integer; y: Integer; width: Integer; height: Integer): Integer; dispid 45;
    procedure SetProperty(const PropertyName: WideString; PropertyValue: OleVariant); dispid 46;
    function  GetProperty(const PropertyName: WideString): OleVariant; dispid 47;
  end;

// *********************************************************************//
// Interface: IBarcodeList
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {86F6C04D-49A9-4FFB-B366-679388BFFB1D}
// *********************************************************************//
  IBarcodeList = interface(IDispatch)
    ['{86F6C04D-49A9-4FFB-B366-679388BFFB1D}']
    function  Get_length: Integer; safecall;
    function  item(index: Integer): IBarcode; safecall;
    function  nextNode: IBarcode; safecall;
    procedure reset; safecall;
    property length: Integer read Get_length;
  end;

// *********************************************************************//
// DispIntf:  IBarcodeListDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {86F6C04D-49A9-4FFB-B366-679388BFFB1D}
// *********************************************************************//
  IBarcodeListDisp = dispinterface
    ['{86F6C04D-49A9-4FFB-B366-679388BFFB1D}']
    property length: Integer readonly dispid 1;
    function  item(index: Integer): IBarcode; dispid 2;
    function  nextNode: IBarcode; dispid 3;
    procedure reset; dispid 4;
  end;

// *********************************************************************//
// Interface: IBarcode
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9CEF8DDF-EAEA-4B18-8DE6-B276E41D0095}
// *********************************************************************//
  IBarcode = interface(IDispatch)
    ['{9CEF8DDF-EAEA-4B18-8DE6-B276E41D0095}']
    function  Get_BarcodeType: EBarcodeTypes; safecall;
    function  Get_Text: WideString; safecall;
    function  Get_Data: OleVariant; safecall;
    function  Get_BarNums: Integer; safecall;
    function  Get_PageNum: Integer; safecall;
    function  Get_x1: Integer; safecall;
    function  Get_y1: Integer; safecall;
    function  Get_x2: Integer; safecall;
    function  Get_y2: Integer; safecall;
    function  Get_x3: Integer; safecall;
    function  Get_y3: Integer; safecall;
    function  Get_x4: Integer; safecall;
    function  Get_y4: Integer; safecall;
    property BarcodeType: EBarcodeTypes read Get_BarcodeType;
    property Text: WideString read Get_Text;
    property Data: OleVariant read Get_Data;
    property BarNums: Integer read Get_BarNums;
    property PageNum: Integer read Get_PageNum;
    property x1: Integer read Get_x1;
    property y1: Integer read Get_y1;
    property x2: Integer read Get_x2;
    property y2: Integer read Get_y2;
    property x3: Integer read Get_x3;
    property y3: Integer read Get_y3;
    property x4: Integer read Get_x4;
    property y4: Integer read Get_y4;
  end;

// *********************************************************************//
// DispIntf:  IBarcodeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9CEF8DDF-EAEA-4B18-8DE6-B276E41D0095}
// *********************************************************************//
  IBarcodeDisp = dispinterface
    ['{9CEF8DDF-EAEA-4B18-8DE6-B276E41D0095}']
    property BarcodeType: EBarcodeTypes readonly dispid 1;
    property Text: WideString readonly dispid 2;
    property Data: OleVariant readonly dispid 3;
    property BarNums: Integer readonly dispid 4;
    property PageNum: Integer readonly dispid 5;
    property x1: Integer readonly dispid 6;
    property y1: Integer readonly dispid 7;
    property x2: Integer readonly dispid 8;
    property y2: Integer readonly dispid 9;
    property x3: Integer readonly dispid 10;
    property y3: Integer readonly dispid 11;
    property x4: Integer readonly dispid 12;
    property y4: Integer readonly dispid 13;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TBarcodeDecoder
// Help String      : BarcodeDecoder Class
// Default Interface: IBarcodeDecoder
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TBarcodeDecoder = class(TOleControl)
  private
    FIntf: IBarcodeDecoder;
    function  GetControlInterface: IBarcodeDecoder;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function  Get_Barcodes: IBarcodeList;
  public
    procedure AboutBox;
    function  DecodeFile(const FileName: WideString): Integer;
    function  DecodeFileRect(const FileName: WideString; x: Integer; y: Integer; width: Integer; 
                             height: Integer): Integer;
    function  DecodeStream(FileStream: OleVariant): Integer;
    function  DecodeStreamRect(FileStream: OleVariant; x: Integer; y: Integer; width: Integer; 
                               height: Integer): Integer;
    function  DecodeGrayMap(GrayMap: OleVariant; GrayMapWidth: Integer; GrayMapHeight: Integer): Integer;
    function  DecodeGrayMapRect(GrayMap: OleVariant; GrayMapWidth: Integer; GrayMapHeight: Integer; 
                                x: Integer; y: Integer; width: Integer; height: Integer): Integer;
    procedure SetProperty(const PropertyName: WideString; PropertyValue: OleVariant);
    function  GetProperty(const PropertyName: WideString): OleVariant;
    property  ControlInterface: IBarcodeDecoder read GetControlInterface;
    property  DefaultInterface: IBarcodeDecoder read GetControlInterface;
    property BarcodeCount: Integer index 12 read GetIntegerProp;
    property Barcodes: IBarcodeList read Get_Barcodes;
  published
    property  ParentColor;
    property  ParentFont;
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
    property BarcodeTypes: Integer index 1 read GetIntegerProp write SetIntegerProp stored False;
    property LinearFindBarcodes: Integer index 2 read GetIntegerProp write SetIntegerProp stored False;
    property LinearShowSymbologyID: WordBool index 3 read GetWordBoolProp write SetWordBoolProp stored False;
    property LinearVerifyCheckDigit: WordBool index 4 read GetWordBoolProp write SetWordBoolProp stored False;
    property LinearShowCheckDigit: WordBool index 5 read GetWordBoolProp write SetWordBoolProp stored False;
    property LinearShowStartStop: WordBool index 6 read GetWordBoolProp write SetWordBoolProp stored False;
    property LinearCode39EnableExtended: WordBool index 7 read GetWordBoolProp write SetWordBoolProp stored False;
    property LinearUPCE2UPCA: WordBool index 8 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowImage: WordBool index 9 read GetWordBoolProp write SetWordBoolProp stored False;
    property FileName: WideString index 10 read GetWideStringProp write SetWideStringProp stored False;
    property InverseType: TOleEnum index 11 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property BackColor: TColor index -501 read GetTColorProp write SetTColorProp stored False;
    property Font: TFont index -512 read GetTFontProp write SetTFontProp stored False;
  end;

// *********************************************************************//
// The Class CoBarcodeList provides a Create and CreateRemote method to          
// create instances of the default interface IBarcodeList exposed by              
// the CoClass BarcodeList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBarcodeList = class
    class function Create: IBarcodeList;
    class function CreateRemote(const MachineName: string): IBarcodeList;
  end;

// *********************************************************************//
// The Class CoBarcode provides a Create and CreateRemote method to          
// create instances of the default interface IBarcode exposed by              
// the CoClass Barcode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBarcode = class
    class function Create: IBarcode;
    class function CreateRemote(const MachineName: string): IBarcode;
  end;

procedure Register;

implementation

uses ComObj;

procedure TBarcodeDecoder.InitControlData;
const
  CTFontIDs: array [0..0] of DWORD = (
    $FFFFFE00);
  CControlData: TControlData2 = (
    ClassID: '{8389C2AD-BD70-47CA-8598-4B49CED46FC5}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000005;
    Version: 401;
    FontCount: 1;
    FontIDs: @CTFontIDs);
begin
  ControlData := @CControlData;
end;

procedure TBarcodeDecoder.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IBarcodeDecoder;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TBarcodeDecoder.GetControlInterface: IBarcodeDecoder;
begin
  CreateControl;
  Result := FIntf;
end;

function  TBarcodeDecoder.Get_Barcodes: IBarcodeList;
begin
  Result := DefaultInterface.Get_Barcodes;
end;

procedure TBarcodeDecoder.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

function  TBarcodeDecoder.DecodeFile(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.DecodeFile(FileName);
end;

function  TBarcodeDecoder.DecodeFileRect(const FileName: WideString; x: Integer; y: Integer; 
                                         width: Integer; height: Integer): Integer;
begin
  Result := DefaultInterface.DecodeFileRect(FileName, x, y, width, height);
end;

function  TBarcodeDecoder.DecodeStream(FileStream: OleVariant): Integer;
begin
  Result := DefaultInterface.DecodeStream(FileStream);
end;

function  TBarcodeDecoder.DecodeStreamRect(FileStream: OleVariant; x: Integer; y: Integer; 
                                           width: Integer; height: Integer): Integer;
begin
  Result := DefaultInterface.DecodeStreamRect(FileStream, x, y, width, height);
end;

function  TBarcodeDecoder.DecodeGrayMap(GrayMap: OleVariant; GrayMapWidth: Integer; 
                                        GrayMapHeight: Integer): Integer;
begin
  Result := DefaultInterface.DecodeGrayMap(GrayMap, GrayMapWidth, GrayMapHeight);
end;

function  TBarcodeDecoder.DecodeGrayMapRect(GrayMap: OleVariant; GrayMapWidth: Integer; 
                                            GrayMapHeight: Integer; x: Integer; y: Integer; 
                                            width: Integer; height: Integer): Integer;
begin
  Result := DefaultInterface.DecodeGrayMapRect(GrayMap, GrayMapWidth, GrayMapHeight, x, y, width, 
                                               height);
end;

procedure TBarcodeDecoder.SetProperty(const PropertyName: WideString; PropertyValue: OleVariant);
begin
  DefaultInterface.SetProperty(PropertyName, PropertyValue);
end;

function  TBarcodeDecoder.GetProperty(const PropertyName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetProperty(PropertyName);
end;

class function CoBarcodeList.Create: IBarcodeList;
begin
  Result := CreateComObject(CLASS_BarcodeList) as IBarcodeList;
end;

class function CoBarcodeList.CreateRemote(const MachineName: string): IBarcodeList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BarcodeList) as IBarcodeList;
end;

class function CoBarcode.Create: IBarcode;
begin
  Result := CreateComObject(CLASS_Barcode) as IBarcode;
end;

class function CoBarcode.CreateRemote(const MachineName: string): IBarcode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Barcode) as IBarcode;
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TBarcodeDecoder]);
end;

end.
