unit Anim;

interface

type
/// abstract class TAnimal represents an animal
  TAnimal = class abstract
  public
    constructor Create;
    function GetKind: string;
    /// let's here the sound of the animal
    function Voice: string; virtual; abstract;
  private
    Kind: string;
  end;

  TAnotherAnimal = class abstract
  end;

  TDog = class (TAnimal)
  public
    constructor Create;
    function Voice: string; override;
    function Eat: string; virtual;
  end;

  TCat = class (TAnimal)
  public
    constructor Create;
    function Voice: string; override;
    function Eat: string; virtual;
  end;

implementation

uses
  MMSystem;

constructor TAnimal.Create;
begin
  inherited Create;
  Kind := 'An animal';
end;

function TAnimal.GetKind: string;
begin
  GetKind := Kind;
end;

constructor TDog.Create;
begin
  inherited Create;
  Kind := 'A dog';
end;

function TDog.Voice: string;
begin
  Voice := 'Arf Arf';
  PlaySound ('dog.wav', 0, snd_Async);
end;

function TDog.Eat: string;
begin
  Eat := 'A bone, please!';
end;

constructor TCat.Create;
begin
  inherited Create;
  Kind := 'A cat';
end;

function TCat.Voice: string;
begin
  Voice := 'Mieow';
  PlaySound ('cat.wav', 0, snd_Async);
end;

function TCat.Eat: string;
begin
  Eat := 'A mouse, please!';
end;

end.

