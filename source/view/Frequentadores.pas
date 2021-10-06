unit Frequentadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormFrequentadores = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelFiltro: TPanel;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
    GroupBoxFiltro: TGroupBox;
    BtnPesquisar: TBitBtn;
    ToolBar1: TToolBar;
    ToolButtonVoltar: TToolButton;
    ToolButtonAvancar: TToolButton;
    ToolButtonS1: TToolButton;
    ToolButtonIncluir: TToolButton;
    ToolButtonAlterar: TToolButton;
    ToolButtonExcluir: TToolButton;
    ToolButtonSEdicao1: TToolButton;
    ToolButtonSalvar: TToolButton;
    ToolButtonCancelar: TToolButton;
    ToolButtonSair: TToolButton;
    ToolButtonSEdicao2: TToolButton;
    DBGrid: TRxDBGrid;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    cboFiltro: TComboBox;
    Notebook: TNotebook;
    Label1: TLabel;
    EditNome: TEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    ComboBoxCargo: TComboBox;
    Label8: TLabel;
    EditAno: TEdit;
    QryFrequentadores: TUniQuery;
    QryFrequentadoresCodigo: TIntegerField;
    Label5: TLabel;
    SpdBtnMembros: TSpeedButton;
    DBText1: TDBText;
    DBEdit4: TDBEdit;
    QryFrequentadoresFrequentador: TIntegerField;
    QryFrequentadoresNomeFrequentador: TStringField;
    QryFrequentadoresTipo: TStringField;
    procedure ToolButtonSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure QryFrequentadoresAfterCancel(DataSet: TDataSet);
    procedure QryFrequentadoresAfterPost(DataSet: TDataSet);
    procedure QryFrequentadoresBeforeDelete(DataSet: TDataSet);
    procedure QryFrequentadoresBeforeEdit(DataSet: TDataSet);
    procedure QryFrequentadoresBeforeInsert(DataSet: TDataSet);
    procedure QryFrequentadoresCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure QryFrequentadoresBeforePost(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function Buscar(): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFrequentadores: TFormFrequentadores;

implementation

uses UDmJetro, Funcoes, StrUtils, Selecao, Main;

{$R *.dfm}

procedure TFormFrequentadores.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormFrequentadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryFrequentadores.Close;

  FormFrequentadores := nil;
  Action := caFree;
end;

procedure TFormFrequentadores.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;

end;

procedure TFormFrequentadores.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormFrequentadores.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormFrequentadores.BtnPesquisarClick(Sender: TObject);
begin
  with QryFrequentadores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Frequentadores.* from Frequentadores');
    SQL.Add('inner join Membros M on M.FichaNumero = Frequentadores.Membro');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Cargo = :pCargo');
            ParamByName('pCargo').Value :=  Copy(ComboBoxCargo.Text, 1, 4);
          end;
      1 : begin
            SQL.Add('M.Nome like :pNome');
            ParamByName('pNome').Value := EditNome.Text + '%';
          end;
      2 : begin
            SQL.Add('Ano = :pAno');
            ParamByName('pAno').Value := EditAno.Text;
          end;
    end;
    SQL.Add('order by Ano, Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormFrequentadores.FormShow(Sender: TObject);
begin
  AbreQuery(QryFrequentadores, 'Frequentadores');

end;

procedure TFormFrequentadores.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormFrequentadores.PageControlChange(Sender: TObject);
begin
  if QryFrequentadores.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormFrequentadores.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormFrequentadores.QryFrequentadoresAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormFrequentadores.QryFrequentadoresAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormFrequentadores.QryFrequentadoresBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormFrequentadores.QryFrequentadoresBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;

  QryFrequentadoresFrequentador.FocusControl;
end;

procedure TFormFrequentadores.QryFrequentadoresBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;

  QryFrequentadoresFrequentador.FocusControl;
end;

procedure TFormFrequentadores.QryFrequentadoresCalcFields(DataSet: TDataSet);
begin
  QryFrequentadoresNomeFrequentador.AsString := '';
  if not QryFrequentadoresFrequentador.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from ' + QryFrequentadoresTipo.AsString);
      SQL.Add('where ' + IfThen(QryFrequentadoresTipo.AsString = 'Membros', 'FichaNumero','Codigo') + ' = ' + IntToStr(QryFrequentadoresFrequentador.AsInteger) );
      SQL.Add('  and Status = 1');
      Open;
      QryFrequentadoresNomeFrequentador.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Frequentador não localizado.');
        QryFrequentadoresFrequentador.FocusControl;
      end;

    end;
  end;

end;

procedure TFormFrequentadores.SpdBtnMembrosClick(Sender: TObject);
var
  Parametros: String;
begin
  QryFrequentadoresFrequentador.FocusControl;
  Parametros := Buscar;
  QryFrequentadoresFrequentador.AsString := copy(Parametros,1,pos(',',Parametros)-1);
  QryFrequentadoresTipo.AsString := copy(Parametros,pos(',',Parametros),length(Parametros) - pos(',',Parametros));


end;

procedure TFormFrequentadores.QryFrequentadoresBeforePost(DataSet: TDataSet);
begin
  CamposObrigatorios(DataSet as TUniQuery);
end;

procedure TFormFrequentadores.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

function TFormFrequentadores.Buscar(): String;
begin
  if FormSelecao = nil then
    Application.CreateForm(TFormSelecao, FormSelecao);
  FormSelecao.Caption := 'SELECIONA Membros, Visitantes';
  FormSelecao.LabelBusca.Caption := 'Nome';
  FormSelecao.QtdField := 4;
  with FormSelecao.Qry do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Membros.FICHANUMERO Codigo, Membros.Nome, Membros.FoneCelular, ''MEMBROS'' tabela');
    SQL.Add('FROM Membros');
    SQL.Add('where Membros.Status = 1');
    SQL.Add('UNION');
    SQL.Add('SELECT Visitantes.Codigo, Visitantes.Nome, Visitantes.FoneCelular, ''VISITANTES'' tabela');
    SQL.Add('FROM Visitantes');
    SQL.Add('where Visitantes.Status = 1');
    SQL.Add('order by 2');
    Open;
  end;
  FormSelecao.ShowModal;
  Result := FormSelecao.Qry.Fields[0].AsString + ','+ FormSelecao.Qry.Fields[3].AsString;
  //Result := FormMain.ParametroSelecao;
end;

end.
