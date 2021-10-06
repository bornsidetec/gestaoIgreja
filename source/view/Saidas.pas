unit Saidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, rxCurrEdit, DateUtils;

type
  TFormSaidas = class(TForm)
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
    Label15: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEditFornecedor: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    QrySaidas: TUniQuery;
    ComboBoxTipo: TComboBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    Label4: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnTipoSaida: TSpeedButton;
    DBText1: TDBText;
    QrySaidasCodigo: TIntegerField;
    QrySaidasNumSaida: TStringField;
    QrySaidasTipoSaida: TIntegerField;
    QrySaidasValor: TCurrencyField;
    QrySaidasData: TDateTimeField;
    QrySaidasFechamento: TStringField;
    QrySaidasUserInsert: TIntegerField;
    QrySaidasDataInsert: TDateTimeField;
    QrySaidasUserUpdate: TIntegerField;
    QrySaidasDataUpdate: TDateTimeField;
    QrySaidasDescTipoSaida: TStringField;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    SpdBtnFornecedores: TSpeedButton;
    DBText2: TDBText;
    DBText3: TDBText;
    SpdBtnAddFornecedor: TSpeedButton;
    QrySaidasFornecedor: TIntegerField;
    QrySaidasCNPJFornecedor: TStringField;
    QrySaidasNomeFornecedor: TStringField;
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
    procedure QrySaidasAfterCancel(DataSet: TDataSet);
    procedure QrySaidasAfterPost(DataSet: TDataSet);
    procedure QrySaidasBeforeDelete(DataSet: TDataSet);
    procedure QrySaidasBeforeEdit(DataSet: TDataSet);
    procedure QrySaidasBeforeInsert(DataSet: TDataSet);
    procedure QrySaidasBeforePost(DataSet: TDataSet);
    procedure QrySaidasNewRecord(DataSet: TDataSet);
    procedure SpdBtnTipoSaidaClick(Sender: TObject);
    procedure QrySaidasCalcFields(DataSet: TDataSet);
    procedure DBEdit4Exit(Sender: TObject);
    procedure SpdBtnFornecedoresClick(Sender: TObject);
    procedure SpdBtnAddFornecedorClick(Sender: TObject);
    procedure DBEditFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSaidas: TFormSaidas;

implementation

uses UDmJetro, Funcoes, Main, Fornecedores;

{$R *.dfm}

procedure TFormSaidas.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSaidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QrySaidas.close;

  FormSaidas := nil;
  Action := caFree;
end;

procedure TFormSaidas.FormCreate(Sender: TObject);
begin
  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;

  ComboTabelaAuxiliar('TipoSaidas', 'where Codigo not in(22, 74, 75, 76, 77, 78, 80)', ComboBoxTipo);

end;

procedure TFormSaidas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormSaidas.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormSaidas.BtnPesquisarClick(Sender: TObject);
begin
  with QrySaidas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Saidas');
    SQL.Add('where TipoSaida not in(22, 74, 75, 76, 77, 78, 80)');
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

procedure TFormSaidas.FormShow(Sender: TObject);
begin
  AbreQuery(QrySaidas, 'Saidas');
  QrySaidas.First;
  {
  ComboBoxTipo.Clear;
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from TipoSaidas where Codigo not in(22, 74, 75, 76, 77, 78, 80) order by Descricao');
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

procedure TFormSaidas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormSaidas.PageControlChange(Sender: TObject);
begin
  if QrySaidas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormSaidas.QrySaidasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormSaidas.QrySaidasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormSaidas.QrySaidasBeforeDelete(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;
end;

procedure TFormSaidas.QrySaidasBeforeEdit(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível alterar.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QrySaidasNumSaida.FocusControl;
end;

procedure TFormSaidas.QrySaidasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QrySaidasNumSaida.FocusControl;
end;

procedure TFormSaidas.QrySaidasBeforePost(DataSet: TDataSet);
begin
  QrySaidas.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if Fechado(MonthOf(QrySaidasData.AsDateTime), YearOf(QrySaidasData.AsDateTime)) then
  begin
    InfoBox('Mês de ' + FormatDateTime('MMMM',QrySaidasData.AsDateTime) +
            ' de ' + FormatDateTime('YYYY',QrySaidasData.AsDateTime) + #13 +
            'já teve o seu fechamento realizado.');
    QrySaidasData.FocusControl;
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

procedure TFormSaidas.QrySaidasNewRecord(DataSet: TDataSet);
begin
  QrySaidasFechamento.AsString := '0';
end;

procedure TFormSaidas.SpdBtnTipoSaidaClick(Sender: TObject);
begin
  QrySaidasTipoSaida.FocusControl;
  QrySaidasTipoSaida.AsString := Buscar('TipoSaidas','Codigo','Descricao', 'Descricao')
end;

procedure TFormSaidas.QrySaidasCalcFields(DataSet: TDataSet);
begin
  QrySaidasDescTipoSaida.AsString := '';
  if not QrySaidasTipoSaida.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from TipoSaidas');
      SQL.Add('where Codigo = ' + IntToStr(QrySaidasTipoSaida.AsInteger) );
      Open;
      QrySaidasDescTipoSaida.AsString := FieldByName('Descricao').AsString;
      if IsEmpty then
      begin
        InfoBox('Tipo de Saida não Localizada.');
        QrySaidasTipoSaida.FocusControl;
      end;
    end;
  end;

  
  QrySaidasCNPJFornecedor.AsString := '';
  QrySaidasNomeFornecedor.AsString := '';
  if not QrySaidasFornecedor.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome, CNPJ_CPF from Fornecedores');
      SQL.Add('where Codigo = ' + IntToStr(QrySaidasFornecedor.AsInteger) );
      Open;
      QrySaidasCNPJFornecedor.AsString := FieldByName('CNPJ_CPF').AsString;
      QrySaidasNomeFornecedor.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Fornecedor não Localizada.');
        QrySaidasFornecedor.FocusControl;
      end;
    end;
  end;



end;

procedure TFormSaidas.DBEdit4Exit(Sender: TObject);
begin
  if (QrySaidasTipoSaida.AsInteger = 22) or
     (QrySaidasTipoSaida.AsInteger = 23) or
     (QrySaidasTipoSaida.AsInteger = 48) or
     (QrySaidasTipoSaida.AsInteger = 74) or
     (QrySaidasTipoSaida.AsInteger = 75) or
     (QrySaidasTipoSaida.AsInteger = 76) or
     (QrySaidasTipoSaida.AsInteger = 77) or
     (QrySaidasTipoSaida.AsInteger = 78) or
     (QrySaidasTipoSaida.AsInteger = 80) then
  begin
    InfoBox('Tipo de Saida não permitido.');
    QrySaidasTipoSaida.FocusControl;
  end;
end;

procedure TFormSaidas.SpdBtnFornecedoresClick(Sender: TObject);
begin
  QrySaidasFornecedor.FocusControl;
  QrySaidasFornecedor.AsString := Buscar('Fornecedores','Codigo','Nome', 'Nome')

end;

procedure TFormSaidas.SpdBtnAddFornecedorClick(Sender: TObject);
begin
  if not Permissao('Cadastros > Fornecedores', FormMain.Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormFornecedores = nil then
    Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.Show;
  FormFornecedores.Saidas := True;
  FormFornecedores.QryFornecedores.Insert;
  Self.Cursor := crDefault;

end;

procedure TFormSaidas.DBEditFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnFornecedores.Click;
end;

procedure TFormSaidas.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnTipoSaida.Click;
end;

end.
