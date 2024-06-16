unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cidades, Vcl.Menus, Clientes, Relatorio;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cidades1: TMenuItem;
    Cidades2: TMenuItem;
    Clientes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Logout1: TMenuItem;
    Relatrio1: TMenuItem;
    procedure Logout1Click(Sender: TObject);
    procedure Cidades2Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Cidades2Click(Sender: TObject);
begin
  FrmCidades := TFrmCidades.Create(self);
  FrmCidades.ShowModal;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  FrmClientes := TFrmClientes.Create(self);
  FrmClientes.ShowModal;
end;

procedure TFrmPrincipal.Logout1Click(Sender: TObject);
begin
  Close();
end;

procedure TFrmPrincipal.Relatrio1Click(Sender: TObject);
begin
  FrmRelatorio := TFrmRelatorio.Create(self);
  FrmRelatorio.ShowModal;
end;
end.
