unit Vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, rxCurrEdit,
  RxMemDS, Menus, DateUtils, ADODB, Uni, DBAccess, MemDS, RxDBComb, QRCtrls, RxGIF, QuickRpt;

type
  TFormVendas = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelFiltro: TPanel;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
    GroupBoxPeriodo: TGroupBox;
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
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
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
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    DsItens: TDataSource;
    RxMImpImovel: TRxMemoryData;
    PopupMenuItens: TPopupMenu;
    Excluir1: TMenuItem;
    QryVendas: TUniQuery;
    QryItens: TUniQuery;
    QryVendasCodigo: TIntegerField;
    QryVendasData: TDateTimeField;
    QryVendasComprador: TStringField;
    QryVendasCNPJ_CPF: TStringField;
    QryVendasEndRua: TStringField;
    QryVendasEndNumero: TStringField;
    QryVendasEndBairro: TStringField;
    QryVendasEndComplemento: TStringField;
    QryVendasEndCidade: TStringField;
    QryVendasEndEstado: TStringField;
    QryVendasEndCep: TStringField;
    QryVendasIgreja: TIntegerField;
    QryVendasUserInsert: TIntegerField;
    QryVendasDataInsert: TDateTimeField;
    QryVendasUserUpdate: TIntegerField;
    QryVendasDataUpdate: TDateTimeField;
    Label2: TLabel;
    SpdBtnIgrejas: TSpeedButton;
    DBText1: TDBText;
    DBEdit2: TDBEdit;
    QryVendasBairroIgreja: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    SpdBtnCEP: TSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBCboUF: TDBComboBox;
    QryItensCodigo: TIntegerField;
    QryItensVenda: TIntegerField;
    QryItensQtde: TIntegerField;
    QryItensDescricao: TStringField;
    QryItensValorUnitario: TCurrencyField;
    QryItensValorTotal: TCurrencyField;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBoxCNPJ_CPF: TGroupBox;
    rbCNPJ: TRadioButton;
    rbCPF: TRadioButton;
    BtnMembros: TBitBtn;
    QuickRepImovel: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRImage1: TQRImage;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    RxMImpImovelDoador: TStringField;
    RxMImpImovelCNPJ_CPF: TStringField;
    RxMImpImovelEndRua: TStringField;
    RxMImpImovelEndNumero: TStringField;
    RxMImpImovelEndBairro: TStringField;
    RxMImpImovelEndComplemento: TStringField;
    RxMImpImovelEndCidade: TStringField;
    RxMImpImovelEndEstado: TStringField;
    RxMImpImovelEndCep: TStringField;
    RxMImpImovelEndLocalizacaoIM: TStringField;
    RxMImpImovelEndQuadraIM: TStringField;
    RxMImpImovelEndLoteIM: TStringField;
    RxMImpImovelEndNumeroIM: TStringField;
    RxMImpImovelEndBairroIM: TStringField;
    RxMImpImovelEndComplementoIM: TStringField;
    RxMImpImovelEndCidadeIM: TStringField;
    RxMImpImovelEndEstadoIM: TStringField;
    RxMImpImovelMetragemIM: TFloatField;
    RxMImpImovelTipoImovelIM: TStringField;
    RxMImpImovelEscrituraIM: TStringField;
    RxMImpImovelCartorioIM: TStringField;
    RxMImpImovelValorVenalIM: TCurrencyField;
    RxMImpImovelCertidaoNegativaDebitosIM: TStringField;
    RxMImpImovelCodigo: TIntegerField;
    RxMImpImovelEndRuaI: TStringField;
    RxMImpImovelEndNumeroI: TStringField;
    RxMImpImovelEndBairroI: TStringField;
    RxMImpImovelEndComplementoI: TStringField;
    RxMImpImovelEndCidadeI: TStringField;
    RxMImpImovelEndEstadoI: TStringField;
    RxMImpImovelEndCepI: TStringField;
    QRDBText2: TQRDBText;
    QRShape7: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape8: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape9: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape10: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape11: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRMemo1: TQRMemo;
    QRShape16: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape17: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText11: TQRDBText;
    RxMImpImovelCNPJI: TStringField;
    RxMImpImovelPastor: TStringField;
    QRLabel21: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape18: TQRShape;
    QRLabel24: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel25: TQRLabel;
    QRDBText15: TQRDBText;
    QRShape21: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRDBText18: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape25: TQRShape;
    QRLabel29: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape26: TQRShape;
    QRMemo2: TQRMemo;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRLabel30: TQRLabel;
    QRDBText21: TQRDBText;
    QRShape30: TQRShape;
    QRLabel31: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape31: TQRShape;
    QRLabel32: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape32: TQRShape;
    QRLabel33: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape33: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText25: TQRDBText;
    QRShape34: TQRShape;
    QRLabel35: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText29: TQRDBText;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRMemo3: TQRMemo;
    QRShape28: TQRShape;
    QRLabel39: TQRLabel;
    QRShape39: TQRShape;
    QRLabel40: TQRLabel;
    QRShape40: TQRShape;
    QRLabel41: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRShape41: TQRShape;
    QRLabel42: TQRLabel;
    QRDBText33: TQRDBText;
    QRShape42: TQRShape;
    QRLabel43: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText35: TQRDBText;
    RxMImpImovelDataExtenso: TStringField;
    QRLabel45: TQRLabel;
    QRShape43: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape46: TQRShape;
    QRLabel50: TQRLabel;
    QRShape47: TQRShape;
    QRLabel51: TQRLabel;
    QRShape48: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    BtnRecibo: TBitBtn;
    RxMImpImovelProntuario: TStringField;
    QuickRepItens: TQuickRep;
    QRBand2: TQRBand;
    QRShape50: TQRShape;
    QRImage2: TQRImage;
    QRShape51: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape54: TQRShape;
    QRLabel62: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRShape55: TQRShape;
    QRLabel63: TQRLabel;
    QRDBText38: TQRDBText;
    QRShape56: TQRShape;
    QRLabel64: TQRLabel;
    QRDBText39: TQRDBText;
    QRShape57: TQRShape;
    QRLabel65: TQRLabel;
    QRDBText40: TQRDBText;
    QRShape58: TQRShape;
    QRLabel66: TQRLabel;
    QRDBText41: TQRDBText;
    QRShape59: TQRShape;
    QRLabel67: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel68: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel69: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel70: TQRLabel;
    QRDBText45: TQRDBText;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape64: TQRShape;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRShape65: TQRShape;
    QRLabel73: TQRLabel;
    QRDBText46: TQRDBText;
    QRLabel74: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel75: TQRLabel;
    QRDBText48: TQRDBText;
    QRLabel76: TQRLabel;
    QRDBText49: TQRDBText;
    QRShape66: TQRShape;
    QRLabel77: TQRLabel;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRLabel78: TQRLabel;
    QRDBText50: TQRDBText;
    QRShape69: TQRShape;
    QRLabel79: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel80: TQRLabel;
    QRDBText52: TQRDBText;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRDBText53: TQRDBText;
    QRLabel81: TQRLabel;
    QRDBText54: TQRDBText;
    QRShape73: TQRShape;
    QRLabel82: TQRLabel;
    QRDBText55: TQRDBText;
    QRShape74: TQRShape;
    QRMemo5: TQRMemo;
    QRShape75: TQRShape;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel83: TQRLabel;
    QRShape77: TQRShape;
    RxMImpItens: TRxMemoryData;
    QRLabel84: TQRLabel;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape49: TQRShape;
    QRBand3: TQRBand;
    QRShape63: TQRShape;
    QRShape78: TQRShape;
    QRMemo6: TQRMemo;
    QRLabel85: TQRLabel;
    QRDBText58: TQRDBText;
    QRLabel86: TQRLabel;
    QRShape79: TQRShape;
    QRLabel87: TQRLabel;
    QRLabel95: TQRLabel;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRShape85: TQRShape;
    QRLabel98: TQRLabel;
    QRShape89: TQRShape;
    QRLabel99: TQRLabel;
    QRShape90: TQRShape;
    QRLabel100: TQRLabel;
    QRShape91: TQRShape;
    QRLabel101: TQRLabel;
    QRShape92: TQRShape;
    QRDBText59: TQRDBText;
    QRBand4: TQRBand;
    QRShape93: TQRShape;
    QRLabel102: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape101: TQRShape;
    QRShape106: TQRShape;
    RxMImpMovel: TRxMemoryData;
    RxMImpMovelCodigo: TIntegerField;
    RxMImpMovelDoador: TStringField;
    RxMImpMovelCNPJ_CPF: TStringField;
    RxMImpMovelEndRuaD: TStringField;
    RxMImpMovelEndNumeroD: TStringField;
    RxMImpMovelEndBairroD: TStringField;
    RxMImpMovelEndComplementoD: TStringField;
    RxMImpMovelEndCidadeD: TStringField;
    RxMImpMovelEndEstadoD: TStringField;
    RxMImpMovelEndCepD: TStringField;
    RxMImpMovelCNPJI: TStringField;
    RxMImpMovelPastor: TStringField;
    RxMImpMovelProntuario: TStringField;
    RxMImpMovelEndRuaI: TStringField;
    RxMImpMovelEndNumeroI: TStringField;
    RxMImpMovelEndBairroI: TStringField;
    RxMImpMovelEndComplementoI: TStringField;
    RxMImpMovelEndCidadeI: TStringField;
    RxMImpMovelEndEstadoI: TStringField;
    RxMImpMovelEndCepI: TStringField;
    RxMImpMovelTotalDoacoes: TCurrencyField;
    RxMImpMovelCertidaoNegativaDebitosIM: TStringField;
    RxMImpMovelDataExtenso: TStringField;
    RxMImpItensQtde: TIntegerField;
    RxMImpItensDescricao: TStringField;
    RxMImpItensNotaFiscal: TStringField;
    RxMImpItensValorUnitario: TCurrencyField;
    RxMImpItensValorTotal: TCurrencyField;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    GroupBoxItens: TGroupBox;
    Label10: TLabel;
    EditDescricao: TEdit;
    Label8: TLabel;
    EditQtd: TRxCalcEdit;
    RxCalcEditValor: TRxCalcEdit;
    Label18: TLabel;
    DBGridItens: TRxDBGrid;
    Label9: TLabel;
    LblItens: TLabel;
    BtnAddItens: TBitBtn;
    BtnFornecedores: TBitBtn;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cboFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure DBGridItensKeyPress(Sender: TObject; var Key: Char);
    procedure Excluir1Click(Sender: TObject);
    procedure QryVendasAfterPost(DataSet: TDataSet);
    procedure QryVendasAfterCancel(DataSet: TDataSet);
    procedure QryVendasBeforeDelete(DataSet: TDataSet);
    procedure QryVendasBeforeEdit(DataSet: TDataSet);
    procedure QryVendasBeforeInsert(DataSet: TDataSet);
    procedure QryVendasBeforePost(DataSet: TDataSet);
    procedure QryItensBeforeDelete(DataSet: TDataSet);
    procedure QryVendasAfterScroll(DataSet: TDataSet);
    procedure EditNReciboKeyPress(Sender: TObject; var Key: Char);
    procedure QryItensAfterCancel(DataSet: TDataSet);
    procedure QryVendasCalcFields(DataSet: TDataSet);
    procedure SpdBtnIgrejasClick(Sender: TObject);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddItensClick(Sender: TObject);
    procedure rbCNPJClick(Sender: TObject);
    procedure BtnMembrosClick(Sender: TObject);
    procedure QryItensCalcFields(DataSet: TDataSet);
    procedure BtnReciboClick(Sender: TObject);
    procedure RxMImpMovelCalcFields(DataSet: TDataSet);
    procedure BtnFornecedoresClick(Sender: TObject);
    procedure PopupMenuItensPopup(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    ImpMembro : Boolean;
    FichaMembro : String;

    ImpFornecedor : Boolean;
    CodigoFornecedor : String;

    procedure LimpaDadosItens;

    procedure BuscarDados;
  end;

var
  FormVendas: TFormVendas;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormVendas.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormVendas := nil;
  Action := caFree;
end;

procedure TFormVendas.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;


end;

procedure TFormVendas.FormShow(Sender: TObject);
begin
  AbreQuery(QryVendas, 'Vendas');

  SQLClear(QryItens);
  QryItens.SQL.Add('select * from ItensVenda where Venda = :cVenda');
  QryItens.ParamByName('cVenda').Value := QryVendasCodigo.AsInteger;
  QryItens.Open;

  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
  DateEditIni.SetFocus;
end;

procedure TFormVendas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormVendas.cboFiltroKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TFormVendas.PageControlChange(Sender: TObject);
begin
  if QryVendas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormVendas.BtnPesquisarClick(Sender: TObject);
begin
  with QryVendas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Vendas');
    SQL.Add('where');
    SQL.Add('Data >= :dt1 and Data <= :dt2');
    ParamByName('dt1').AsDateTime := DateEditIni.Date;
    ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormVendas.DBGridItensKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:= Upcase(Key);
end;

procedure TFormVendas.Excluir1Click(Sender: TObject);
begin

  QryItens.Delete;
end;

procedure TFormVendas.QryVendasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  QryItens.First;

  while not QryItens.Eof do
  begin
    QryItens.Edit;
    QryItensVenda.AsInteger := QryVendasCodigo.AsInteger;
    QryItens.Post;
    QryItens.Next;
  end;

  LimpaDadosItens;

end;

procedure TFormVendas.QryVendasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  SQLClear(QryItens);
  QryItens.SQL.Add('delete from ItensVenda where Venda is null');
  QryItens.ExecSQL;

  LblItens.Caption := EmptyStr;

  LimpaDadosItens;

  QryVendas.AfterScroll(QryVendas);

end;

procedure TFormVendas.QryVendasBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

  SQLClear(QryItens);
  QryItens.SQL.Add('delete from ItensVenda where Venda = ' + QryVendasCodigo.AsString);
  QryItens.ExecSQL;

end;

procedure TFormVendas.QryVendasBeforeEdit(DataSet: TDataSet);
begin

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryVendasIgreja.FocusControl;

end;

procedure TFormVendas.QryVendasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryVendasIgreja.FocusControl;

end;

procedure TFormVendas.QryVendasBeforePost(DataSet: TDataSet);
begin

  QryVendas.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if QryItens.IsEmpty then
  begin
    InfoBox('Nenhum ítem informado.');
    BtnAddItens.SetFocus;
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

procedure TFormVendas.QryItensBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormVendas.QryVendasAfterScroll(DataSet: TDataSet);
var
  Total : Currency;
begin

  with QryItens do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ItensVenda where Venda = :cVenda');
    ParamByName('cVenda').Value := QryVendasCodigo.AsInteger;
    Open;
  end;

  LblItens.Caption := formatCurr('#,##0.00', TotalizaItens(QryVendasCodigo.AsInteger));

  if Length(QryVendasCNPJ_CPF.AsString) = 14 then
    rbCNPJ.Checked := True
  else
    rbCPF.Checked := True;
  rbCNPJClick(rbCNPJ);

end;

procedure TFormVendas.EditNReciboKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0
end;


procedure TFormVendas.LimpaDadosItens;
begin
  EditDescricao.Clear;
  EditQtd.Value         := 0;
  RxCalcEditValor.Value := 0;
end;

procedure TFormVendas.QryItensAfterCancel(DataSet: TDataSet);
begin
  LblItens.Caption := formatCurr('#,##0.00', TotalizaItens(QryVendasCodigo.AsInteger));
end;

procedure TFormVendas.QryVendasCalcFields(DataSet: TDataSet);
begin
  QryVendasBairroIgreja.AsString := '';
  if not QryVendasIgreja.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select EndBairro from Igrejas');
      SQL.Add('where Codigo = ' + IntToStr(QryVendasIgreja.AsInteger) );
      Open;
      QryVendasBairroIgreja.AsString := 'IEQ - ' + FieldByName('EndBairro').AsString;
      if IsEmpty then
      begin
        InfoBox('Igreja não localizada.');
        QryVendasIgreja.FocusControl;
      end;
    end;
  end;

end;

procedure TFormVendas.SpdBtnIgrejasClick(Sender: TObject);
begin
  QryVendasIgreja.FocusControl;
  QryVendasIgreja.AsString := Buscar('Igrejas','Codigo','EndBairro','EndBairro')

end;

procedure TFormVendas.SpdBtnCEPClick(Sender: TObject);
begin
  QryVendasEndCep.FocusControl;
  QryVendasEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormVendas.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryVendas, DBEdit9.Text);

end;

procedure TFormVendas.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;

end;

procedure TFormVendas.BtnAddItensClick(Sender: TObject);
begin

  if EditDescricao.Text = EmptyStr then
  begin
    InfoBox('Informe a Descrição.');
    EditDescricao.SetFocus;
    Exit;
  end;

  if EditQtd.Value <= 0 then
  begin
    InfoBox('Informe a Quantidade.');
    EditQtd.SetFocus;
    Exit;
  end;

  if RxCalcEditValor.Value <= 0 then
  begin
    InfoBox('Informe o Valor Unitário.');
    RxCalcEditValor.SetFocus;
    Exit;
  end;

  QryItens.Append;
  QryItensDescricao.AsString       := EditDescricao.Text;
  QryItensQtde.AsInteger           := EditQtd.AsInteger;
  QryItensValorUnitario.AsCurrency := RxCalcEditValor.Value;
  QryItens.Post;

  LimpaDadosItens;
  EditDescricao.SetFocus;

end;

procedure TFormVendas.rbCNPJClick(Sender: TObject);
begin

  if rbCNPJ.Checked then
    QryVendasCNPJ_CPF.EditMask := '99.999.999/9999-99;0;_'
  else if rbCPF.Checked then
    QryVendasCNPJ_CPF.EditMask := '999.999.999-99;0;_'

end;

procedure TFormVendas.BtnMembrosClick(Sender: TObject);
begin
  FichaMembro := Buscar('Membros','FichaNumero','Nome','Nome');

  ImpMembro := FichaMembro <> EmptyStr;

  if ImpMembro then
  begin
    with DMJetro.QryAux2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Membros');
      SQL.Add('where FichaNumero = ' + FichaMembro);
      Open;
      QryVendasComprador.AsString      := FieldByName('Nome').AsString;
      QryVendasCNPJ_CPF.AsString       := FieldByName('CPF').AsString;
      rbCPF.Checked := True;
      rbCNPJClick(rbCNPJ);
      QryVendasEndRua.AsString         := FieldByName('EndRua').AsString;
      QryVendasEndNumero.AsString      := FieldByName('EndNumero').AsString;
      QryVendasEndComplemento.AsString := FieldByName('EndComplemento').AsString;
      QryVendasEndBairro.AsString      := FieldByName('EndBairro').AsString;
      QryVendasEndCidade.AsString      := FieldByName('EndCidade').AsString;
      QryVendasEndEstado.AsString      := FieldByName('EndEstado').AsString;
      QryVendasEndCep.AsString         := FieldByName('EndCep').AsString;
      QryVendasComprador.FocusControl;
    end;
  end
  else
  begin
    QryVendasComprador.Clear;
    QryVendasCNPJ_CPF.Clear;
    QryVendasEndRua.Clear;
    QryVendasEndNumero.Clear;
    QryVendasEndComplemento.Clear;
    QryVendasEndBairro.Clear;
    QryVendasEndCidade.Clear;
    QryVendasEndEstado.Clear;
    QryVendasEndCep.Clear;
    QryVendasComprador.FocusControl;
  end;

end;

procedure TFormVendas.QryItensCalcFields(DataSet: TDataSet);
begin
  QryItensValorTotal.AsCurrency := QryItensQtde.AsInteger * QryItensValorUnitario.AsCurrency;
end;

procedure TFormVendas.BtnReciboClick(Sender: TObject);
begin
  if (QryVendas.State <> dsBrowse) or
     (QryVendas.IsEmpty) then
    Abort;

  BuscarDados;

  //QuickRepVendas.Preview;

end;

procedure TFormVendas.BuscarDados;
begin
  {
  if QryDoacoesTipo.AsInteger = 1 then
  begin
    RxMImpImovel.Close;
    RxMImpImovel.Open;
    RxMImpImovel.Append;

    RxMImpImovelCodigo.AsInteger := QryDoacoesCodigo.AsInteger;
    RxMImpImovelDoador.AsString := QryDoacoesDoador.AsString;
    RxMImpImovelCNPJ_CPF.AsString := QryDoacoesCNPJ_CPF.AsString;
    if rbCNPJ.Checked then
      RxMImpImovelCNPJ_CPF.EditMask := '99.999.999/9999-99;0'
    else
      RxMImpImovelCNPJ_CPF.EditMask := '999.999.999-99;0';

    RxMImpImovelEndRua.AsString := QryDoacoesEndRua.AsString;
    RxMImpImovelEndNumero.AsString := QryDoacoesEndNumero.AsString;
    RxMImpImovelEndComplemento.AsString := QryDoacoesEndComplemento.AsString;
    RxMImpImovelEndBairro.AsString := QryDoacoesEndBairro.AsString;
    RxMImpImovelEndCidade.AsString := QryDoacoesEndCidade.AsString;
    RxMImpImovelEndEstado.AsString := QryDoacoesEndEstado.AsString;
    RxMImpImovelEndCEP.AsString := QryDoacoesEndCEP.AsString;

    RxMImpImovelEndLocalizacaoIM.AsString := QryDoacoesEndLocalizacaoIM.AsString;
    RxMImpImovelEndQuadraIM.AsString := QryDoacoesEndQuadraIM.AsString;
    RxMImpImovelEndLoteIM.AsString := QryDoacoesEndLoteIM.AsString;
    RxMImpImovelEndNumeroIM.AsString := QryDoacoesEndNumeroIM.AsString;
    RxMImpImovelEndBairroIM.AsString := QryDoacoesEndBairroIM.AsString;
    RxMImpImovelEndComplementoIM.AsString := QryDoacoesEndComplementoIM.AsString;
    RxMImpImovelEndCidadeIM.AsString := QryDoacoesEndCidadeIM.AsString;
    RxMImpImovelEndEstadoIM.AsString := QryDoacoesEndEstadoIM.AsString;

    RxMImpImovelMetragemIM.AsFloat := QryDoacoesMetragemIM.AsFloat;
    RxMImpImovelTipoImovelIM.AsString := QryDoacoesTipoImovelIM.AsString;
    RxMImpImovelEscrituraIM.AsString := QryDoacoesEscrituraIM.AsString;
    RxMImpImovelCartorioIM.AsString := QryDoacoesCartorioIM.AsString;
    RxMImpImovelValorVenalIM.AsCurrency := QryDoacoesValorVenalIM.AsCurrency;
    RxMImpImovelCertidaoNegativaDebitosIM.AsString := QryDoacoesCertidaoNegativaDebitosIM.AsString;

    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select I.*, P.Nome NomePastor, P.Prontuario');
      SQL.Add('from Igrejas I');
      SQL.Add('inner join Pastores P on P.Codigo = I.Pastor');
      SQL.Add('where I.Codigo = ' + QryDoacoesIgreja.AsString);
      Open;

      RxMImpImovelCNPJI.AsString := FieldByName('CNPJ').AsString;
      RxMImpImovelEndRuaI.AsString := FieldByName('EndRua').AsString;
      RxMImpImovelEndNumeroI.AsString := FieldByName('EndNumero').AsString;
      RxMImpImovelEndComplementoI.AsString := FieldByName('EndComplemento').AsString;
      RxMImpImovelEndBairroI.AsString := FieldByName('EndBairro').AsString;
      RxMImpImovelEndCidadeI.AsString := FieldByName('EndCidade').AsString;
      RxMImpImovelEndEstadoI.AsString := FieldByName('EndEstado').AsString;
      RxMImpImovelEndCepI.AsString := FieldByName('EndCep').AsString;

      RxMImpImovelDataExtenso.AsString := FieldByName('EndCidade').AsString +
                                          ', ' +
                                          FormatDateTime('ddddd',QryDoacoesData.AsDateTime);

      RxMImpImovelPastor.AsString := FieldByName('NomePastor').AsString;
      RxMImpImovelProntuario.AsString := FieldByName('Prontuario').AsString;
    end;

    RxMImpImovel.Post;
  end
  else
  begin
    RxMImpmovel.Close;
    RxMImpmovel.Open;
    RxMImpmovel.Append;

    RxMImpmovelCodigo.AsInteger := QryDoacoesCodigo.AsInteger;
    RxMImpmovelDoador.AsString := QryDoacoesDoador.AsString;
    RxMImpmovelCNPJ_CPF.AsString := QryDoacoesCNPJ_CPF.AsString;
    if rbCNPJ.Checked then
      RxMImpmovelCNPJ_CPF.EditMask := '99.999.999/9999-99;0'
    else
      RxMImpmovelCNPJ_CPF.EditMask := '999.999.999-99;0';

    RxMImpmovelEndRuaD.AsString := QryDoacoesEndRua.AsString;
    RxMImpmovelEndNumeroD.AsString := QryDoacoesEndNumero.AsString;
    RxMImpmovelEndComplementoD.AsString := QryDoacoesEndComplemento.AsString;
    RxMImpmovelEndBairroD.AsString := QryDoacoesEndBairro.AsString;
    RxMImpmovelEndCidadeD.AsString := QryDoacoesEndCidade.AsString;
    RxMImpmovelEndEstadoD.AsString := QryDoacoesEndEstado.AsString;
    RxMImpmovelEndCEPD.AsString := QryDoacoesEndCEP.AsString;

    RxMImpItens.Close;
    RxMImpItens.Open;

    RxMImpItens.LoadFromDataSet(QryItens, QryItens.RecordCount, lmAppend);

    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select I.*, P.Nome NomePastor, P.Prontuario');
      SQL.Add('from Igrejas I');
      SQL.Add('inner join Pastores P on P.Codigo = I.Pastor');
      SQL.Add('where I.Codigo = ' + QryDoacoesIgreja.AsString);
      Open;

      RxMImpmovelCNPJI.AsString := FieldByName('CNPJ').AsString;
      RxMImpmovelEndRuaI.AsString := FieldByName('EndRua').AsString;
      RxMImpmovelEndNumeroI.AsString := FieldByName('EndNumero').AsString;
      RxMImpmovelEndComplementoI.AsString := FieldByName('EndComplemento').AsString;
      RxMImpmovelEndBairroI.AsString := FieldByName('EndBairro').AsString;
      RxMImpmovelEndCidadeI.AsString := FieldByName('EndCidade').AsString;
      RxMImpmovelEndEstadoI.AsString := FieldByName('EndEstado').AsString;
      RxMImpmovelEndCepI.AsString := FieldByName('EndCep').AsString;

      RxMImpmovelDataExtenso.AsString := FieldByName('EndCidade').AsString +
                                          ', ' +
                                          FormatDateTime('ddddd',QryDoacoesData.AsDateTime);

      RxMImpmovelPastor.AsString := FieldByName('NomePastor').AsString;
      RxMImpmovelProntuario.AsString := FieldByName('Prontuario').AsString;

      RxMImpMovelTotalDoacoes.AsCurrency := TotalizaItens(QryDoacoesCodigo.AsInteger);
    end;

    RxMImpmovel.Post;

  end;
  }
end;

procedure TFormVendas.RxMImpMovelCalcFields(DataSet: TDataSet);
begin
  RxMImpItensValorTotal.AsCurrency := RxMImpItensValorUnitario.AsCurrency * RxMImpItensQtde.AsInteger;
end;

procedure TFormVendas.BtnFornecedoresClick(Sender: TObject);
begin
  CodigoFornecedor := Buscar('Fornecedores','Codigo','Nome','Nome');

  ImpFornecedor := CodigoFornecedor <> EmptyStr;

  if ImpFornecedor then
  begin
    with DMJetro.QryAux2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Fornecedores');
      SQL.Add('where Codigo = ' + CodigoFornecedor);
      Open;
      QryVendasComprador.AsString      := FieldByName('Nome').AsString;
      QryVendasCNPJ_CPF.AsString       := FieldByName('CNPJ_CPF').AsString;
      rbCNPJ.Checked := FieldByName('Tipo').AsInteger = 1;
      rbCPF.Checked := FieldByName('Tipo').AsInteger = 2;
      rbCNPJClick(rbCNPJ);
      QryVendasEndRua.AsString         := FieldByName('EndRua').AsString;
      QryVendasEndNumero.AsString      := FieldByName('EndNumero').AsString;
      QryVendasEndComplemento.AsString := FieldByName('EndComplemento').AsString;
      QryVendasEndBairro.AsString      := FieldByName('EndBairro').AsString;
      QryVendasEndCidade.AsString      := FieldByName('EndCidade').AsString;
      QryVendasEndEstado.AsString      := FieldByName('EndEstado').AsString;
      QryVendasEndCep.AsString         := FieldByName('EndCep').AsString;
      QryVendasComprador.FocusControl;
    end;
  end
  else
  begin
    QryVendasComprador.Clear;
    QryVendasCNPJ_CPF.Clear;
    QryVendasEndRua.Clear;
    QryVendasEndNumero.Clear;
    QryVendasEndComplemento.Clear;
    QryVendasEndBairro.Clear;
    QryVendasEndCidade.Clear;
    QryVendasEndEstado.Clear;
    QryVendasEndCep.Clear;
    QryVendasComprador.FocusControl;
  end;

end;

procedure TFormVendas.PopupMenuItensPopup(Sender: TObject);
begin
  if not (QryVendas.State in [dsEdit, dsInsert]) then
     Abort;

  if QryItens.IsEmpty then
    Abort;

end;

procedure TFormVendas.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnIgrejas.Click;
end;

procedure TFormVendas.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

end.
