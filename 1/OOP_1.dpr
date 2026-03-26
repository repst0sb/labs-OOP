program OOP_1;

uses
  Vcl.Forms,
  lab1 in 'lab1.pas' {Form1},
  Animal in 'Animal.pas',
  WildAnimal in 'WildAnimal.pas',
  DomasticAnimal in 'DomasticAnimal.pas',
  ExoticDomastic in 'ExoticDomastic.pas',
  Predator in 'Predator.pas',
  GrassFeed in 'GrassFeed.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
