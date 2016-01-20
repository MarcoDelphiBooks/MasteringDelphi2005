unit Anim;

interface

type
  TAnimal = class
  public
    constructor Create;
    /// <summary>tipo di animale</summary>
    function GetKind: string;
    function Voice: string; virtual;
  private
    Kind: string;
  end;

  /// <summary>classe per il cane</summary>
  TDog = class(TAnimal)
  public
    constructor Create;
    function Voice: string; override;
  end;

implementation

uses
  MMSystem;

resourcestring
  StrVoiceOfTheAnimal = 'Voice of the animal';

{$REGION 'MyRegion'}

// codice inizizalizzazione da "nascondere"
{$ENDREGION}

constructor TAnimal.Create;
begin
  inherited Create;
  Kind := 'An animal';
end;

function TAnimal.GetKind: string;
begin
  GetKind := Kind;
end;

function TAnimal.Voice: string;
begin
  // commento
  Voice := StrVoiceOfTheAnimal;
  PlaySound('Anim.wav', 0, snd_Async);
end;

constructor TDog.Create;
begin
  inherited Create;
  Kind := 'A dog';
end;

function TDog.Voice: string;
var
  I: Integer;
  x: Integer;
begin
  Voice := 'Arf Arf';

  PlaySound('dog.wav', 0, snd_Async);


end;

end.
