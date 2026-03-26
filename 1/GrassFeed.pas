unit GrassFeed;

interface

uses WildAnimal, Vcl.ExtCtrls;

type
  TGrassFeed = class(TWildAnimal)
  private
    FMainFood: string;
  public
    constructor Create(AIndex: integer; AColor: integer; ADanger: string;
      AMainFood: string; AImage: TImage);
    function Action: string; override;
  end;

implementation

function TGrassFeed.Action: string;
begin
  Result := 'Кушает травку';
end;

constructor TGrassFeed.Create(AIndex: integer; AColor: integer; ADanger: string;
  AMainFood: string; AImage: TImage);
begin
  FMainFood := AMainFood;
  inherited Create(AIndex, AColor, ADanger, AImage);
end;

end.
