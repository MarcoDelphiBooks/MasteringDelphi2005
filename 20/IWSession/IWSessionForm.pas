unit IWSessionForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWBaseComponent, IWBaseHTMLComponent, IWExtCtrls, IWCompLabel, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompCheckbox;

type
  TMainForm = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWTimer1: TIWTimer;
    IWCheckBox1: TIWCheckBox;
    procedure IWCheckBox1Click(Sender: TObject);
    procedure IWTimer1Timer(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  private
    FormCount: Integer;
  end;

implementation

{$R *.dfm}

uses
  ServerController, Windows;


var
  GlobalCount: Integer;

procedure TMainForm.IWButton1Click(Sender: TObject);
begin
  InterlockedIncrement (GlobalCount);
  Inc (FormCount);
  Inc (UserSession.UserCount);

  IWLabel1.Text := 'Global: ' + IntToStr (GlobalCount);
  IWLabel2.Text := 'Form: ' + IntToStr (FormCount);
  IWLabel3.Text := 'User: ' + IntToStr (UserSession.UserCount);
end;

procedure TMainForm.IWTimer1Timer(Sender: TObject);
begin
  IWButton1Click (Sender);
end;

procedure TMainForm.IWCheckBox1Click(Sender: TObject);
begin
  IWTimer1.Enabled := IWCheckBox1.Checked;
end;

initialization
  TMainForm.SetAsMainForm;

end.
