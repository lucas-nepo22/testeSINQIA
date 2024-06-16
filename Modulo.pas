unit Modulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, frxClass, frxDBSet;

type
  Tdm = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tb_cidades: TFDTable;
    DSCidades: TDataSource;
    query_Cidades: TFDQuery;
    rel_Cidades: TfrxReport;
    rel_ds_cidades: TfrxDBDataset;
    query_Clientes: TFDQuery;
    DSClientes: TDataSource;
    tb_clientes: TFDTable;
    query_CidadesCodigo_Cidade: TFDAutoIncField;
    query_CidadesNome: TStringField;
    query_CidadesEstado: TStringField;
    query_CidadesCep_Inicial: TStringField;
    query_CidadesCep_Final: TStringField;
    tb_cidadesCodigo_Cidade: TFDAutoIncField;
    tb_cidadesNome: TStringField;
    tb_cidadesEstado: TStringField;
    tb_cidadesCep_Inicial: TStringField;
    tb_cidadesCep_Final: TStringField;
    tb_clientesCodigo_Cliente: TFDAutoIncField;
    tb_clientesCGC_CPF_Cliente: TStringField;
    tb_clientesNome: TStringField;
    tb_clientesTelefone: TStringField;
    tb_clientesEndereco: TStringField;
    tb_clientesBairro: TStringField;
    tb_clientesComplemento: TStringField;
    tb_clientesE_mail: TStringField;
    tb_clientesCodigo_Cidade: TIntegerField;
    tb_clientesCep: TStringField;
    query_ClientesCodigo_Cliente: TFDAutoIncField;
    query_ClientesCGC_CPF_Cliente: TStringField;
    query_ClientesNome: TStringField;
    query_ClientesTelefone: TStringField;
    query_ClientesEndereco: TStringField;
    query_ClientesBairro: TStringField;
    query_ClientesComplemento: TStringField;
    query_ClientesE_mail: TStringField;
    query_ClientesCodigo_Cidade: TIntegerField;
    query_ClientesCep: TStringField;
    rel_ds_clientes: TfrxDBDataset;
    rel_Clientes: TfrxReport;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
FDConnection1.Connected := True;
end;

end.
