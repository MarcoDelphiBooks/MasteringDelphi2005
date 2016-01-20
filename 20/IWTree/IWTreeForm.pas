unit IWTreeForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMenu,
  Menus, IWTreeview;

type
  TMainForm = class(TIWAppForm)
    MainMenu1: TMainMenu;
    Tree1: TMenuItem;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    N1: TMenuItem;
    EnlargeFont1: TMenuItem;
    ReduceFont1: TMenuItem;
    About1: TMenuItem;
    Application1: TMenuItem;
    TreeContents1: TMenuItem;
    IWMenu1: TIWMenu;
    IWTreeView1: TIWTreeView;
    procedure TreeContents1Click(Sender: TObject);
    procedure Application1Click(Sender: TObject);
    procedure ReduceFont1Click(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
    procedure EnlargeFont1Click(Sender: TObject);
    procedure ExpandAll1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IWCompMemo;

procedure TMainForm.ExpandAll1Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to IWTreeView1.Items.Count - 1 do
    IWTreeView1.Items [i].Expanded := True;
end;

procedure TMainForm.EnlargeFont1Click(Sender: TObject);
begin
  IWTreeView1.Font.Size := IWTreeView1.Font.Size + 2;
end;

procedure TMainForm.CollapseAll1Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to IWTreeView1.Items.Count - 1 do
    IWTreeView1.Items [i].Expanded := False;
end;

procedure TMainForm.ReduceFont1Click(Sender: TObject);
begin
  IWTreeView1.Font.Size := IWTreeView1.Font.Size - 2;
end;

procedure TMainForm.Application1Click(Sender: TObject);
begin
  WebApplication.ShowMessage(WebApplication.AppID);
end;

procedure TMainForm.TreeContents1Click(Sender: TObject);
var
  i: Integer;
begin
  with TIWMemo.Create(self) do
  begin
    Parent := self;
    Align := alBottom;
    for i := 0 to IWTreeView1.Items.Count - 1 do
      Lines.Add (IWTreeView1.Items [i].Caption + ' (' +
        IntToStr (IWTreeView1.Items [i].SubItems.Count) + ')');
  end;
end;

initialization
  TMainForm.SetAsMainForm;

end.
