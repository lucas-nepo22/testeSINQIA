unit Cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Modulo;

type
  TFrmCidades = class(TForm)
    edtCepIni: TEdit;
    lblCidade: TLabel;
    lblEstado: TLabel;
    lblCEP: TLabel;
    edtCidade: TEdit;
    edtCodCidade: TEdit;
    edtEstado: TEdit;
    lblBuscar: TLabel;
    edtBuscar: TEdit;
    DBGrid1: TDBGrid;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCepFinal: TEdit;
    btnRel: TSpeedButton;
    lblCEPFinal: TLabel;
    lblCodCidade: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
  private
    { Private declarations }
    procedure limparCampos();
    procedure habilitarCampos();
    procedure desabilitarCampos();
    procedure buscarTudo();
    procedure buscarNome();
    procedure associarCampos();
  public
    { Public declarations }
  end;

var
  FrmCidades: TFrmCidades;

implementation

{$R *.dfm}

{ TFrmCidades }

procedure TFrmCidades.associarCampos;
begin
  dm.tb_cidades.FieldByName('nome').Value := edtCidade.Text;
  dm.tb_cidades.FieldByName('estado').Value := edtEstado.Text;
  dm.tb_cidades.FieldByName('cep_inicial').Value := edtCepIni.Text;
  dm.tb_cidades.FieldByName('cep_final').Value := edtCepFinal.Text;
end;

procedure TFrmCidades.btnEditarClick(Sender: TObject);
begin
if (edtCidade.Text <> '') and (edtEstado.Text <> '') then
    begin
      associarCampos;
      dm.tb_cidades.Edit;

      dm.query_Cidades.Close;
      dm.query_Cidades.SQL.Clear;
      dm.query_Cidades.SQL.Add('update cidades set nome = :nome, estado = :estado, cep_inicial = :cep_inicial, cep_final = :cep_final  where codigo_cidade = :codigo_cidade');
      dm.query_Cidades.ParamByName('nome').Value := edtCidade.Text;
      dm.query_Cidades.ParamByName('estado').Value := edtEstado.Text;
      dm.query_Cidades.ParamByName('cep_inicial').Value := edtCepIni.Text;
      dm.query_Cidades.ParamByName('cep_final').Value := edtCepFinal.Text;
      dm.query_Cidades.ParamByName('codigo_cidade').Value := edtCodCidade.Text;
      dm.query_Cidades.ExecSql;

      MessageDlg('Editado com Sucesso!!', mtInformation, mbOKCancel, 0);
      buscarTudo;
      desabilitarCampos;
      btnSalvar.Enabled := false;
      btnEditar.Enabled := false;
      btnExcluir.Enabled := false;
      btnNovo.Enabled := true;
    end
    else
    begin
      MessageDlg('Preencha os Campos', mtInformation, mbOKCancel, 0);
    end;
end;

procedure TFrmCidades.btnExcluirClick(Sender: TObject);
var
  CidadeID: Integer;
begin
  CidadeID := StrToInt(edtCodCidade.Text);

  if not dm.tb_clientes.Active then
    dm.tb_clientes.Open;

  if not dm.tb_clientes.Locate('Codigo_Cidade', CidadeID, []) then
  begin
    if MessageDlg('Deseja excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      associarCampos;
      dm.tb_cidades.Delete;
      MessageDlg('Exclu�do com Sucesso!!', mtInformation, mbOKCancel, 0);
      buscarTudo;
      desabilitarCampos;
      btnSalvar.Enabled := false;
      btnEditar.Enabled := false;
      btnExcluir.Enabled := false;
      btnNovo.Enabled := true;
    end;
  end
  else
  begin
    MessageDlg('N�o � poss�vel excluir a cidade, pois existem registros associados a ela.', mtWarning, [mbOK], 0);
  end;
end;

procedure TFrmCidades.btnNovoClick(Sender: TObject);
begin
  limparCampos;
  habilitarCampos;
  dm.tb_cidades.Insert;
  BtnSalvar.Enabled := true;
  btnNovo.Enabled := false;

  btnEditar.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TFrmCidades.btnRelClick(Sender: TObject);
begin
  dm.rel_Cidades.LoadFromFile(GetCurrentDir + '\rel\Cidades.fr3');
  dm.rel_Cidades.ShowReport();
end;

procedure TFrmCidades.btnSalvarClick(Sender: TObject);
begin
if (edtCidade.Text <> '') and (edtEstado.Text <> '') then
  begin
    associarCampos;
    dm.tb_cidades.Post;
    MessageDlg('Salvo com Sucesso!!', mtInformation, mbOKCancel, 0);
    buscarTudo;
    desabilitarCampos;
    btnSalvar.Enabled := false;
    btnNovo.Enabled := true;
    btnEditar.Enabled := false;
    btnExcluir.Enabled := false;
  end
  else
  begin
    MessageDlg('Preencha os Campos', mtInformation, mbOKCancel, 0);
  end;

end;

procedure TFrmCidades.buscarNome;
begin
  dm.query_Cidades.Close;
  dm.query_Cidades.SQL.Clear;
  dm.query_Cidades.SQL.Add('select * from cidades where nome LIKE :nome order by nome asc');
  dm.query_Cidades.ParamByName('nome').Value := edtBuscar.Text + '%';
  dm.query_Cidades.Open;
end;

procedure TFrmCidades.buscarTudo;
begin
  dm.query_Cidades.Close;
  dm.query_Cidades.SQL.Clear;
  dm.query_Cidades.SQL.Add('select * from cidades order by nome asc');
  dm.query_Cidades.Open;
end;

procedure TFrmCidades.DBGrid1CellClick(Column: TColumn);
begin
  dm.tb_cidades.Edit;
  btnEditar.Enabled := true;
  btnExcluir.Enabled := true;
  habilitarCampos;

  if dm.query_Cidades.FieldByName('nome').Value <> null then
  edtCidade.Text := dm.query_Cidades.FieldByName('nome').Value;

  if dm.query_Cidades.FieldByName('estado').Value <> null then
  edtEstado.Text := dm.query_Cidades.FieldByName('estado').Value;

  if dm.query_Cidades.FieldByName('cep_inicial').Value <> null then
  edtCepIni.Text := dm.query_Cidades.FieldByName('cep_inicial').Value;

  if dm.query_Cidades.FieldByName('cep_final').Value <> null then
  edtCepFinal.Text := dm.query_Cidades.FieldByName('cep_final').Value;

  if dm.query_Cidades.FieldByName('Codigo_cidade').Value <> null then
  edtCodCidade.Text := dm.query_Cidades.FieldByName('Codigo_cidade').Value;
end;

procedure TFrmCidades.desabilitarCampos;
begin
  limparcampos();
  edtCidade.Enabled := False ;
  edtEstado.Enabled := False;
  edtCepIni.Enabled := False;
  edtCepFinal.Enabled := False;
end;

procedure TFrmCidades.edtBuscarChange(Sender: TObject);
begin
  buscarNome;
end;

procedure TFrmCidades.FormShow(Sender: TObject);
begin
  buscarTudo;
  btnSalvar.Enabled := false;
  btnEditar.Enabled := false;
  btnExcluir.Enabled := false;
  dm.tb_cidades.Active := true;
end;

procedure TFrmCidades.habilitarCampos;
begin
  limparcampos();
  edtCidade.Enabled := True ;
  edtEstado.Enabled := True;
  edtCepIni.Enabled := True;
  edtCepFinal.Enabled := True;
  edtCidade.SetFocus;
end;

procedure TFrmCidades.limparCampos;
begin
  edtCidade.Text := '';
  edtEstado.Text := '';
  edtCepIni.Text := '';
  edtCepFinal.Text := '';
end;
end.
