﻿unit AnimF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Anim;

type
  TFormAnimals = class(TForm)
    LabelVoice: TLabel;
    BtnVoice: TButton;
    RbtnAnimal: TRadioButton;
    RbtnDog: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnVoiceClick(Sender: TObject);
    procedure RbtnAnimalClick(Sender: TObject);
    procedure RbtnDogClick(Sender: TObject);
  private
    MyAnimal: TAnimal;
    j: Integer;
  end;

var
  FormAnimals: TFormAnimals;

implementation

{$R *.DFM}

procedure TFormAnimals.FormCreate(Sender: TObject);
begin
  MyAnimal := TAnimal.Create;
end;

procedure TFormAnimals.FormDestroy(Sender: TObject);
begin
  MyAnimal.Free;
end;

procedure TFormAnimals.BtnVoiceClick(Sender: TObject);
var
  strVoice: string;
begin
  j := 10;
  strVoice := MyAnimal.Voice;
  LabelVoice.Caption := strVoice;
  j := 20;
end;

procedure TFormAnimals.RbtnAnimalClick(Sender: TObject);
begin
  MyAnimal.Free;
  MyAnimal := TAnimal.Create;
end;

procedure TFormAnimals.RbtnDogClick(Sender: TObject);
begin
  try
    MyAnimal.Free;
    MyAnimal := TDog.Create;
  finally
  end;

end;

end.
