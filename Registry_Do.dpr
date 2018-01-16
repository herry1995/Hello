program Registry_Do;

uses
  Forms,
  Unit_Main in 'Unit_Main.pas' {FmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFm_Main, Fm_Main);
  Application.Run;
end.
