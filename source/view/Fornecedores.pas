unit Fornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS;

type
  TFormFornecedores = class(TForm)
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
    EditNome: TEdit;
    GroupBoxFiltro: TGroupBox;
    cboFiltro: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    QryFornecedores: TUniQuery;
    QryFornecedoresCodigo: TIntegerField;
    QryFornecedoresNome: TStringField;
    QryFornecedoresStatus: TIntegerField;
    QryFornecedoresUserInsert: TIntegerField;
    QryFornecedoresDataInsert: TDateTimeField;
    QryFornecedoresUserUpdate: TIntegerField;
    QryFornecedoresDataUpdate: TDateTimeField;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBCboUF: TDBComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    QryFornecedoresCNPJ_CPF: TStringField;
    QryFornecedoresIE_RG: TStringField;
    QryFornecedoresTipo: TIntegerField;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    QryFornecedoresEmail: TStringField;
    SpdBtnCEP: TSpeedButton;
    QryFornecedoresEndRua: TStringField;
    QryFornecedoresEndNumero: TStringField;
    QryFornecedoresEndBairro: TStringField;
    QryFornecedoresEndComplemento: TStringField;
    QryFornecedoresEndCidade: TStringField;
    QryFornecedoresEndEstado: TStringField;
    QryFornecedoresEndCep: TStringField;
    QryFornecedoresFoneResid: TStringField;
    QryFornecedoresFoneCelular: TStringField;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    NotebookTipo: TNotebook;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    RxDBComboBoxTipo: TRxDBComboBox;
    DBRadioGroup1: TDBRadioGroup;
    QryFornecedoresDescTipo: TStringField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure QryFornecedoresAfterCancel(DataSet: TDataSet);
    procedure QryFornecedoresAfterPost(DataSet: TDataSet);
    procedure QryFornecedoresBeforeDelete(DataSet: TDataSet);
    procedure QryFornecedoresBeforeEdit(DataSet: TDataSet);
    procedure QryFornecedoresBeforeInsert(DataSet: TDataSet);
    procedure QryFornecedoresBeforePost(DataSet: TDataSet);
    procedure QryFornecedoresNewRecord(DataSet: TDataSet);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure RxDBComboBoxTipoChange(Sender: TObject);
    procedure QryFornecedoresAfterScroll(DataSet: TDataSet);
    procedure QryFornecedoresCalcFields(DataSet: TDataSet);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Saidas : Boolean;
  end;

var
  FormFornecedores: TFormFornecedores;

implementation

uses UDmJetro, Funcoes, Main, Saidas;

{$R *.dfm}

procedure TFormFornecedores.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryFornecedores.close;

  FormFornecedores := nil;
  Action := caFree;
end;

procedure TFormFornecedores.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;

  Saidas := False;

end;

procedure TFormFornecedores.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormFornecedores.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormFornecedores.BtnPesquisarClick(Sender: TObject);
begin
  with QryFornecedores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Fornecedores');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Nome like :pNome');
            ParamByName('pNome').Value := EditNome.text + '%';
          end;
    end;
    SQL.Add('order by Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormFornecedores.FormShow(Sender: TObject);
begin
  AbreQuery(QryFornecedores, 'Fornecedores');
end;

procedure TFormFornecedores.FormActivate(Sender: TObject);
begin
  EditNome.SetFocus;
end;

procedure TFormFornecedores.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormFornecedores.PageControlChange(Sender: TObject);
begin
  if QryFornecedores.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormFornecedores.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryFornecedores, QryFornecedoresEndCep.AsString);
end;

procedure TFormFornecedores.QryFornecedoresAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  if Saidas = True then
    Self.Close;
    
end;

procedure TFormFornecedores.QryFornecedoresAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  if Saidas = True then
  begin
    FormSaidas.QrySaidasFornecedor.AsInteger := QryFornecedoresCodigo.AsInteger;
    FormSaidas.QrySaidasCalcFields(FormSaidas.QrySaidas);
    Self.Close;
  end;

end;

procedure TFormFornecedores.QryFornecedoresBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormFornecedores.QryFornecedoresBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

end;

procedure TFormFornecedores.QryFornecedoresBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

end;

procedure TFormFornecedores.QryFornecedoresBeforePost(DataSet: TDataSet);
begin

  QryFornecedores.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

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

procedure TFormFornecedores.QryFornecedoresNewRecord(DataSet: TDataSet);
begin
  QryFornecedoresStatus.AsInteger := 1;
  QryFornecedoresTipo.AsInteger   := 1;
  NotebookTipo.PageIndex          := 0;
end;

procedure TFormFornecedores.SpdBtnCEPClick(Sender: TObject);
begin
  QryFornecedoresEndCep.FocusControl;
  QryFornecedoresEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormFornecedores.RxDBComboBoxTipoChange(Sender: TObject);
begin
  NotebookTipo.PageIndex := RxDBComboBoxTipo.ItemIndex;

  if QryFornecedores.State in [dsInsert, dsEdit] then
    QryFornecedoresTipo.AsInteger := RxDBComboBoxTipo.ItemIndex + 1;

  if RxDBComboBoxTipo.ItemIndex = 0 then
    QryFornecedoresCNPJ_CPF.EditMask := '99.999.999/9999-99;0;_'
  else
    QryFornecedoresCNPJ_CPF.EditMask := '999.999.999-99;0;_'

end;

procedure TFormFornecedores.QryFornecedoresAfterScroll(DataSet: TDataSet);
begin
  RxDBComboBoxTipoChange(RxDBComboBoxTipo);
end;

procedure TFormFornecedores.QryFornecedoresCalcFields(DataSet: TDataSet);
begin
  if QryFornecedoresTipo.AsInteger = 1 then
    QryFornecedoresDescTipo.AsString := 'Pessoa Jurídica'
  else
    QryFornecedoresDescTipo.AsString := 'Pessoa Física';

end;

procedure TFormFornecedores.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

end.
