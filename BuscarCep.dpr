program BuscarCep;

uses
  Vcl.Forms,
  BuscaCEP in 'BuscaCEP.pas' {Form1},
  DataModuloCep in 'DataModuloCep.pas' {mdCep: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TmdCep, mdCep);
  Application.Run;
end.
