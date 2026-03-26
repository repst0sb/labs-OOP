unit Animal;

interface

uses Vcl.ExtCtrls, System.Types, Vcl.Controls, System.Classes;

type
  TAnimal = class
  private
    FIndex: integer;
    FColor: integer;
    FImage: TImage;
    FIsDragging: Boolean;
    FStartPos: TPoint;
  public
    constructor Create(AIndex: integer; AColor: integer; AImage: TImage);
    procedure MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
      X, Y: integer);
    property Img: TImage read FImage;
    property Ind: integer read FIndex;
    property Color: integer read FColor;
    function Action: string; virtual;
  end;

implementation

function TAnimal.Action: string;
begin
  Result := 'Думает';
end;

constructor TAnimal.Create(AIndex: integer; AColor: integer; AImage: TImage);
begin
  FIndex := AIndex;
  FColor := AColor;
  FImage := AImage;
  FStartPos := Point(FImage.Left, FImage.Top);
  FIsDragging := False;
  FImage.OnMouseDown := MouseDown;
  FImage.OnMouseMove := MouseMove;
  FImage.OnMouseUp := MouseUp;
end;

procedure TAnimal.MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  if Button = mbLeft then
  begin
    FIsDragging := True;
    FStartPos := Point(X, Y);
    FImage.BringToFront;
  end;
end;

procedure TAnimal.MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
begin
  if FIsDragging then
  begin
    FImage.Left := FImage.Left + (X - FStartPos.X);
    FImage.Top := FImage.Top + (Y - FStartPos.Y);
  end;
end;

procedure TAnimal.MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  FIsDragging := False;
end;

end.
