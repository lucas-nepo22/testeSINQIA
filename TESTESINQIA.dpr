program TESTESINQIA;

uses
  Vcl.Forms,
  Cidades in 'Cidades.pas' {FrmCidades},
  Principal in 'Principal.pas' {FrmPrincipal},
  Clientes in 'Clientes.pas' {FrmClientes},
  Modulo in 'Modulo.pas' {dm: TDataModule},
  Relatorio in 'Relatorio.pas' {FrmRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmRelatorio, FrmRelatorio);
  Application.Run;
end.
