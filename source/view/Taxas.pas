unit Taxas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, rxCurrEdit, DateUtils;

type
  TFormTaxas = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelFiltro: TPanel;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
    BtnPesquisar: TBitBtn;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton3: TToolButton;
    DBGrid: TRxDBGrid;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Notebook: TNotebook;
    Label1: TLabel;
    Label2: TLabel;
    GroupBoxFiltro: TGroupBox;
    cboFiltro: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    QryTaxas: TUniQuery;
    ComboBoxTipo: TComboBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    QryTaxasCodigo: TIntegerField;
    QryTaxasNumSaida: TStringField;
    QryTaxasTipoSaida: TIntegerField;
    QryTaxasMesTaxa: TIntegerField;
    QryTaxasAnoTaxa: TIntegerField;
    QryTaxasValor: TCurrencyField;
    QryTaxasData: TDateTimeField;
    QryTaxasFechamento: TStringField;
    QryTaxasUserInsert: TIntegerField;
    QryTaxasDataInsert: TDateTimeField;
    QryTaxasUserUpdate: TIntegerField;
    QryTaxasDataUpdate: TDateTimeField;
    LabelMes: TLabel;
    RxDBCboMes: TRxDBComboBox;
    LabelAno: TLabel;
    DBEditAno: TDBEdit;
    Label4: TLabel;
    RxDBComboBoxTipo: TRxDBComboBox;
    QryTaxasDescTipoSaida: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryTaxasAfterCancel(DataSet: TDataSet);
    procedure QryTaxasAfterPost(DataSet: TDataSet);
    procedure QryTaxasBeforeDelete(DataSet: TDataSet);
    procedure QryTaxasBeforeEdit(DataSet: TDataSet);
    procedure QryTaxasBeforeInsert(DataSet: TDataSet);
    procedure QryTaxasBeforePost(DataSet: TDataSet);
    procedure QryTaxasNewRecord(DataSet: TDataSet);
    procedure QryTaxasCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTaxas: TFormTaxas;

implementation

uses UDmJetro, Funcoes, Main, Saidas;

{$R *.dfm}

procedure TFormTaxas.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTaxas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryTaxas.close;

  FormTaxas := nil;
  Action := caFree;
end;

procedure TFormTaxas.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;


end;

procedure TFormTaxas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormTaxas.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormTaxas.BtnPesquisarClick(Sender: TObject);
begin
  with QryTaxas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Saidas');
    SQL.Add('where TipoSaida in (74, 75, 76, 77, 78, 80)');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('  and TipoSaida = :pTipo');
            ParamByName('pTipo').Value := copy(ComboBoxTipo.Text, 1, 4);
          end;
      1 : begin
            SQL.Add('  and Data between :dt1 and :dt2');
            ParamByName('dt1').AsDateTime := DateEditIni.Date;
            ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
          end;
    end;
    SQL.Add('order by Data desc');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormTaxas.FormShow(Sender: TObject);
begin
  AbreQuery(QryTaxas, 'Saidas');
  QryTaxas.First;

  {
  ComboBoxTipo.Clear;
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from TipoSaidas where Codigo in (74, 75, 76, 77, 78, 80) order by Descricao');
    Open;
    First;
    while not EOF do
    begin
      ComboBoxTipo.Items.Add(FormatFloat('00',FieldByName('Codigo').AsInteger) +
                             ' - ' + FieldByName('Descricao').AsString);

      RxDBComboBoxTipo.Items.Add(FieldByName('Descricao').AsString);
      RxDBComboBoxTipo.Values.Add(FieldByName('Codigo').AsString);
      Next;
    end;
  end;
  }
  ComboBoxTipo.ItemIndex := 0;
  ComboBoxTipo.SetFocus;

end;

procedure TFormTaxas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormTaxas.PageControlChange(Sender: TObject);
begin
  if QryTaxas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormTaxas.QryTaxasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormTaxas.QryTaxasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormTaxas.QryTaxasBeforeDelete(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;
end;

procedure TFormTaxas.QryTaxasBeforeEdit(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível alterar.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryTaxasTipoSaida.FocusControl;
end;

procedure TFormTaxas.QryTaxasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryTaxasTipoSaida.FocusControl;
end;

procedure TFormTaxas.QryTaxasBeforePost(DataSet: TDataSet);
begin
  QryTaxas.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if Fechado(MonthOf(QryTaxasData.AsDateTime), YearOf(QryTaxasData.AsDateTime)) then
  begin
    InfoBox('Mês de ' + FormatDateTime('MMMM',QryTaxasData.AsDateTime) +
            ' de ' + FormatDateTime('YYYY',QryTaxasData.AsDateTime) + #13 +
            'já teve o seu fechamento realizado.');
    QryTaxasData.FocusControl;
    Abort;
  end;

  if DataSet.Tag = 1 then
  begin
    DataSet.FieldByName('DataInsert').AsDateTime := now;
    DataSet.FieldByName('UserInsert').AsInteger  := FormMain.Usuario;
    DataSet.FieldByName('DataUpdate').AsDateTime := now;
    DataSet.FieldByName('UserUpdate').AsInteger  := FormMain.Usuario;
  end
  else if DataSet.Tag = 2 then
  begin
    DataSet.FieldByName('DataUpdate').AsDateTime := now;
    DataSet.FieldByName('UserUpdate').AsInteger  := FormMain.Usuario;
  end;
end;

procedure TFormTaxas.QryTaxasNewRecord(DataSet: TDataSet);
begin
  QryTaxasFechamento.AsString := '0';
end;

procedure TFormTaxas.QryTaxasCalcFields(DataSet: TDataSet);
begin
  QryTaxasDescTipoSaida.AsString := '';
  if not QryTaxasTipoSaida.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from TipoSaidas');
      SQL.Add('where Codigo = ' + IntToStr(QryTaxasTipoSaida.AsInteger) );
      Open;
      QryTaxasDescTipoSaida.AsString := FieldByName('Descricao').AsString;
      if IsEmpty then
      begin
        InfoBox('Tipo de Saida não Localizada.');
        QryTaxasTipoSaida.FocusControl;
      end;
    end;
  end;

end;

procedure TFormTaxas.FormActivate(Sender: TObject);
begin
  ComboTabelaAuxiliar('TipoSaidas','where Codigo in (74, 75, 76, 77, 78, 80)',ComboBoxTipo);
  RxComboTabelaAuxiliar('TipoSaidas','where Codigo in (74, 75, 76, 77, 78, 80)',RxDBComboBoxTipo);

end;

end.
