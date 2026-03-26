unit ExoticDomastic;

interface

Uses DomasticAnimal, Vcl.ExtCtrls;

type
  TExoticAnimal = class(TDomasticAnimal)
  private
    FDanger: string;
  public
    constructor Create(AIndex: integer; AColor: integer; ANickName: string;
      ADanger: string; AImage: TImage);
    function Action: string; override;
  end;

implementation

function TExoticAnimal.Action: string;
begin
  Result := 'Спит';
end;

constructor TExoticAnimal.Create(AIndex: integer; AColor: integer;
  ANickName: string; ADanger: string; AImage: TImage);
begin
  inherited Create(AIndex, AColor, ANickName, AImage);
  FDanger := ADanger;
end;

end.
