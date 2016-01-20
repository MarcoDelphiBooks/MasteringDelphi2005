unit WinForm;

interface

uses
  System.Drawing, System.Collections, System.ComponentModel,
  System.Windows.Forms, System.Data,
  Borland.Eco.Windows.Forms, Borland.Eco.WinForm, Borland.Eco.Handles, MyFirstECOAppEcoSpace, CoreClassesUnit;

type
  TWinForm = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    RHRoot: Borland.Eco.Handles.ReferenceHandle;
    EcoGlobalActions: Borland.Eco.WinForm.EcoActionExtender;
    EcoAutoForms: Borland.Eco.WinForm.EcoAutoFormExtender;
    EcoListActions: Borland.Eco.WinForm.EcoListActionExtender;
    EcoDragDrop: Borland.Eco.WinForm.EcoDragDropExtender;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
  {$ENDREGION}
  strict private
    FEcoSpace: TMyFirstECOAppEcoSpace;
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  public
    constructor Create;
    property EcoSpace: TMyFirstECOAppEcoSpace read FEcoSpace;
  end;

implementation

uses
  Borland.Eco.ObjectRepresentation, Borland.Eco.Services;

{$AUTOBOX ON}

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support - do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWinForm.InitializeComponent;
begin
  Self.rhRoot := Borland.Eco.Handles.ReferenceHandle.Create;
  Self.EcoGlobalActions := Borland.Eco.WinForm.EcoActionExtender.Create;
  Self.EcoAutoForms := Borland.Eco.WinForm.EcoAutoFormExtender.Create;
  Self.EcoListActions := Borland.Eco.WinForm.EcoListActionExtender.Create;
  Self.EcoDragDrop := Borland.Eco.WinForm.EcoDragDropExtender.Create;
  //
  // rhRoot
  //
  Self.rhRoot.EcoSpace := nil;
  Self.rhRoot.EcoSpaceType := TypeOf(MyFirstECOAppEcoSpace.TMyFirstECOAppEcoSpace);
  Self.rhRoot.StaticValueTypeName := '';
  Self.rhRoot.Variables := nil;
  //
  // EcoGlobalActions
  //
  Self.EcoGlobalActions.RootHandle := Self.rhRoot;

  Self.Components := System.ComponentModel.Container.Create;
  Self.Size := System.Drawing.Size.Create(300, 300);
  Self.Text := 'TWinForm';
end;
{$ENDREGION}

procedure TWinForm.Dispose(Disposing: Boolean);
begin
  if Disposing then
  begin
    if Components <> nil then
      Components.Dispose();
  end;
  inherited Dispose(Disposing);
end;

constructor TWinForm.Create;
begin
  inherited Create;
  //
  // Required for Windows Form Designer support
  //
  InitializeComponent;


  FEcoSpace :=  TMyFirstECOAppEcoSpace.Create;
  rhRoot.EcoSpace := FEcoSpace;
  
  // The line below will automatically activate the ECO Space on form create.
  // Remove the line if you wish to activate it manually

  FEcoSpace.Active := True;
end;

end.
