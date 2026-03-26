unit DomasticAnimal;

interface

Uses Animal, Vcl.ExtCtrls;

type
  TDomasticAnimal = class(TAnimal)
  private
    FNickName: string;
  public
    constructor Create(AIndex: integer; AColor: integer; ANickName: string;
      AImage: TImage);
    property NickName: string read FNickName;
    function Action: string; override;
  end;

implementation

function TDomasticAnimal.Action: string;
begin
  Result := 'Играет';
end;

constructor TDomasticAnimal.Create(AIndex: integer; AColor: integer;
  ANickName: string; AImage: TImage);
begin
  inherited Create(AIndex, AColor, AImage);
  FNickName := ANickName;
end;

end.
