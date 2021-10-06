unit Entradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, rxCurrEdit, DateUtils;

type
  TFormEntradas = class(TForm)
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
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    QryEntradas: TUniQuery;
    ComboBoxTipo: TComboBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    Label4: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    DBEdit4: TDBEdit;
    SpdBtnTipoEntrada: TSpeedButton;
    DBText1: TDBText;
    QryEntradasCodigo: TIntegerField;
    QryEntradasTipoEntrada: TIntegerField;
    QryEntradasValor: TCurrencyField;
    QryEntradasData: TDateTimeField;
    QryEntradasFechamento: TStringField;
    QryEntradasUserInsert: TIntegerField;
    QryEntradasDataInsert: TDateTimeField;
    QryEntradasUserUpdate: TIntegerField;
    QryEntradasDataUpdate: TDateTimeField;
    QryEntradasDescTipoEntrada: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryEntradasAfterCancel(DataSet: TDataSet);
    procedure QryEntradasAfterPost(DataSet: TDataSet);
    procedure QryEntradasBeforeDelete(DataSet: TDataSet);
    procedure QryEntradasBeforeEdit(DataSet: TDataSet);
    procedure QryEntradasBeforeInsert(DataSet: TDataSet);
    procedure QryEntradasBeforePost(DataSet: TDataSet);
    procedure QryEntradasNewRecord(DataSet: TDataSet);
    procedure SpdBtnTipoEntradaClick(Sender: TObject);
    procedure QryEntradasCalcFields(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntradas: TFormEntradas;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormEntradas.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryEntradas.close;

  FormEntradas := nil;
  Action := caFree;
end;

procedure TFormEntradas.FormCreate(Sender: TObject);
begin
  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;

  ComboTabelaAuxiliar('TipoEntradas','',ComboBoxTipo);

end;

procedure TFormEntradas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormEntradas.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormEntradas.BtnPesquisarClick(Sender: TObject);
begin
  with QryEntradas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Entradas');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('where TipoEntrada = :pTipo');
            ParamByName('pTipo').Value := copy(ComboBoxTipo.Text, 1, 4);
          end;
      1 : begin
            SQL.Add('where Data between :dt1 and :dt2');
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

procedure TFormEntradas.FormShow(Sender: TObject);
begin
  AbreQuery(QryEntradas, 'Entradas');
  QryEntradas.First;

  {
  ComboBoxTipo.Clear;
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from TipoEntradas order by Descricao');
    Open;
    First;
    while not EOF do
    begin
      ComboBoxTipo.Items.Add(FormatFloat('00',FieldByName('Codigo').AsInteger) +
                             ' - ' + FieldByName('Descricao').AsString);
      Next;
    end;
  end;
  }

  ComboBoxTipo.ItemIndex := 0;
  ComboBoxTipo.SetFocus;

end;

procedure TFormEntradas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormEntradas.PageControlChange(Sender: TObject);
begin
  if QryEntradas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormEntradas.QryEntradasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormEntradas.QryEntradasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormEntradas.QryEntradasBeforeDelete(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;
end;

procedure TFormEntradas.QryEntradasBeforeEdit(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível alterar.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryEntradasTipoEntrada.FocusControl;
end;

procedure TFormEntradas.QryEntradasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryEntradasTipoEntrada.FocusControl;
end;

procedure TFormEntradas.QryEntradasBeforePost(DataSet: TDataSet);
begin
  QryEntradas.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if Fechado(MonthOf(QryEntradasData.AsDateTime), YearOf(QryEntradasData.AsDateTime)) then
  begin
    InfoBox('Mês de ' + FormatDateTime('MMMM',QryEntradasData.AsDateTime) +
            ' de ' + FormatDateTime('YYYY',QryEntradasData.AsDateTime) + #13 +
            'já teve o seu fechamento realizado.');
    QryEntradasData.FocusControl;
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

procedure TFormEntradas.QryEntradasNewRecord(DataSet: TDataSet);
begin
  QryEntradasFechamento.AsString := '0';
end;

procedure TFormEntradas.SpdBtnTipoEntradaClick(Sender: TObject);
begin
  QryEntradasTipoEntrada.FocusControl;
  QryEntradasTipoEntrada.AsString := Buscar('TipoEntradas','Codigo','Descricao', 'Descricao')
end;

procedure TFormEntradas.QryEntradasCalcFields(DataSet: TDataSet);
begin
  QryEntradasDescTipoEntrada.AsString := '';
  if not QryEntradasTipoEntrada.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from TipoEntradas');
      SQL.Add('where Codigo = ' + IntToStr(QryEntradasTipoEntrada.AsInteger) );
      Open;
      QryEntradasDescTipoEntrada.AsString := FieldByName('Descricao').AsString;
      if IsEmpty then
      begin
        InfoBox('Tipo de Entrada não Localizada.');
        QryEntradasTipoEntrada.FocusControl;
      end;
    end;
  end;
end;

procedure TFormEntradas.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnTipoEntrada.Click;
end;

end.
