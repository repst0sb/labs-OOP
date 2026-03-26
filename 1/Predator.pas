unit Predator;

interface

uses WildAnimal, Vcl.ExtCtrls;

type
  TPredator = class(TWildAnimal)
  private
    FPrey: string;
  public
    constructor Create(AIndex: integer; AColor: integer; ADanger: string;
      APrey: string; AImage: TImage);
    function Action: string; override;
  end;

implementation

function TPredator.Action: string;
begin
  Result:= 'Охотяться';
end;

constructor TPredator.Create(AIndex: integer; AColor: integer; ADanger: String;
  APrey: string; AImage: TImage);
begin
  inherited Create(AIndex, AColor, ADanger, AImage);
  FPrey := APrey;
end;

end.
