program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {fmConta},
  Unit2 in 'Unit2.pas' {dmBancario: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmConta, fmConta);
  Application.CreateForm(TdmBancario, dmBancario);
  Application.Run;
end.
