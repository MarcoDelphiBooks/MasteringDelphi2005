unit FishClientForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, InvokeRegistry, Rio, SOAPHTTPClient,
  ComCtrls, Grids, DBGrids, DBCtrls, DB, DBClient;

type
  TForm1 = class(TForm)
    Image1: TImage;
    btnGetImage: TButton;
    btnGetCds: TButton;
    StatusBar1: TStatusBar;
    HTTPRIO1: THTTPRIO;
    Edit1: TEdit;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBImage1: TDBImage;
    DBGrid1: TDBGrid;
    procedure btnGetImageClick(Sender: TObject);
    procedure btnGetCdsClick(Sender: TObject);
    procedure HTTPRIO1HTTPWebNode1ReceivingData(Read, Total: Integer);
  private
    { Private declarations }
    nRead: Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  SoapFish1;

// declaration from DB.pas
type
  TGraphicHeader = record
    Count: Word;                { Fixed at 1 }
    HType: Word;                { Fixed at $0100 }
    Size: Longint;              { Size not including header }
  end;

procedure TForm1.btnGetImageClick(Sender: TObject);
var
  sAtt: TSoapAttachment;
  memStream: TMemoryStream;
//  bmp: TBitmap;
  Src, Target: String;
  Header: TGraphicHeader;
  Size: Longint;
begin
  nRead := 0;
  sAtt := (HttpRio1 as ISoapFish).GetImage (Edit1.Text);

//  Src := sAtt.CacheFile;
//  Target := Src + '.bmp';
//  RenameFile(src, Target);

  memStream := TMemoryStream.Create;
  try
    sAtt.SaveToStream (memStream);
    memStream.Position := 0;
    Size := memStream.Size;
    if Size >= SizeOf(TGraphicHeader) then
    begin
      memStream.Read(Header, SizeOf(Header));
      if (Header.Count <> 1) or (Header.HType <> $0100) or
        (Header.Size <> Size - SizeOf(Header)) then
        memStream.Position := 0;
    end;
    Image1.Picture.Bitmap.LoadFromStream (memStream);
  finally
    memStream.Free;
  end;
end;

procedure TForm1.btnGetCdsClick(Sender: TObject);
var
  sAtt: TSoapAttachment;
  memStr: TMemoryStream;
begin
  nRead := 0;
  sAtt := (HttpRio1 as ISoapFish).GetCds;
  try
    memStr := TMemoryStream.Create;
    try
      sAtt.SaveToStream(memStr);
      memStr.Position := 0;
      ClientDataSet1.LoadFromStream(MemStr);
    finally
      memStr.Free;
    end;
  finally
    DeleteFile (sAtt.CacheFile);
    sAtt.Free;
  end;
end;

procedure TForm1.HTTPRIO1HTTPWebNode1ReceivingData(
  Read, Total: Integer);
begin
  Inc (nRead, Read);
  StatusBar1.SimpleText := IntToStr (nRead);
  Application.ProcessMessages;
end;

end.
