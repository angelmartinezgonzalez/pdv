program ImporteAletraDelphi;

uses
  Vcl.Forms,
  ImporteAletraDelphiU in 'ImporteAletraDelphiU.pas' {ImporteAletraDelphiF},
  CImporteNL in 'CImporteNL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TImporteAletraDelphiF, ImporteAletraDelphiF);
  Application.Run;
end.
