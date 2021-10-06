unit Viagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, rxCurrEdit,
  RxMemDS, Menus, DateUtils, ADODB, Uni, DBAccess, MemDS;

type
  TFormViagens = class(TForm)
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
    GroupBox5: TGroupBox;
    DBGridGastos: TRxDBGrid;
    DsGastos: TDataSource;
    LblGastos: TLabel;
    RxMDizimistas: TRxMemoryData;
    RxMDizimistasNome: TStringField;
    PopupMenuGastos: TPopupMenu;
    Excluir1: TMenuItem;
    QryViagens: TUniQuery;
    QryGastos: TUniQuery;
    Label14: TLabel;
    CboTipoGasto: TComboBox;
    RxCalcEditValor: TRxCalcEdit;
    Label18: TLabel;
    EditNRecibo: TEdit;
    Label19: TLabel;
    BtnAddGasto: TBitBtn;
    Label15: TLabel;
    QryViagensCodigo: TIntegerField;
    QryViagensDataSaida: TDateTimeField;
    QryViagensDataChegada: TDateTimeField;
    QryViagensMotivo: TStringField;
    QryViagensCargo: TStringField;
    QryViagensCargoDescricao: TStringField;
    QryViagensNome: TStringField;
    QryViagensProntuario: TStringField;
    QryViagensFechamento: TStringField;
    QryViagensUserInsert: TIntegerField;
    QryViagensDataInsert: TDateTimeField;
    QryViagensUserUpdate: TIntegerField;
    QryViagensDataUpdate: TDateTimeField;
    QryGastosCodigo: TIntegerField;
    QryGastosNumRecibo: TStringField;
    QryGastosViagem: TIntegerField;
    QryGastosTipo: TStringField;
    QryGastosValor: TCurrencyField;
    Label4: TLabel;
    DBDateEdit2: TDBDateEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBCboUFSaida: TDBComboBox;
    Label8: TLabel;
    Label9: TLabel;
    DBCboUFDestino: TDBComboBox;
    Label10: TLabel;
    DBComboBoxCargo: TDBComboBox;
    BtnImpPastor: TBitBtn;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    QryViagensSaidaCidade: TIntegerField;
    QryViagensSaidaEstado: TStringField;
    QryViagensDestinoCidade: TIntegerField;
    QryViagensDestinoEstado: TStringField;
    DBEdit4: TDBEdit;
    SpdBtnCidades1: TSpeedButton;
    DBText1: TDBText;
    QryViagensNomeSaidaCidade: TStringField;
    QryViagensNomeDestinoCidade: TStringField;
    DBEdit5: TDBEdit;
    SpdBtnCidades2: TSpeedButton;
    DBText2: TDBText;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cboFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure DBGridGastosKeyPress(Sender: TObject; var Key: Char);
    procedure Excluir1Click(Sender: TObject);
    procedure QryViagensAfterPost(DataSet: TDataSet);
    procedure QryViagensAfterCancel(DataSet: TDataSet);
    procedure QryViagensBeforeDelete(DataSet: TDataSet);
    procedure QryViagensBeforeEdit(DataSet: TDataSet);
    procedure QryViagensBeforeInsert(DataSet: TDataSet);
    procedure QryViagensBeforePost(DataSet: TDataSet);
    procedure QryGastosBeforeDelete(DataSet: TDataSet);
    procedure QryViagensAfterScroll(DataSet: TDataSet);
    procedure QryViagensNewRecord(DataSet: TDataSet);
    procedure EditNReciboKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddGastoClick(Sender: TObject);
    procedure BtnImpPastorClick(Sender: TObject);
    procedure DBComboBoxCargoClick(Sender: TObject);
    procedure QryGastosAfterCancel(DataSet: TDataSet);
    procedure DBCboUFSaidaChange(Sender: TObject);
    procedure QryViagensCalcFields(DataSet: TDataSet);
    procedure SpdBtnCidades1Click(Sender: TObject);
    procedure SpdBtnCidades2Click(Sender: TObject);
    procedure PopupMenuGastosPopup(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    ImpPastor : Boolean;
    CodigoPastor : String;

    procedure LimpaDadosGastos;
  end;

var
  FormViagens: TFormViagens;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormViagens.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormViagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormViagens := nil;
  Action := caFree;
end;

procedure TFormViagens.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;

  ImpPastor := False;

end;

procedure TFormViagens.FormShow(Sender: TObject);
begin
  AbreQuery(QryViagens, 'Viagens');
  SQLClear(QryGastos);
  QryGastos.SQL.Add('select * from GastosViagem where Viagem = :cViagem');
  QryGastos.ParamByName('cViagem').Value := QryViagensCodigo.AsInteger;
  QryGastos.Open;

  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
  DateEditIni.SetFocus;
end;

procedure TFormViagens.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormViagens.cboFiltroKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TFormViagens.PageControlChange(Sender: TObject);
begin
  if QryViagens.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormViagens.BtnPesquisarClick(Sender: TObject);
begin
  with QryViagens do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Viagens');
    SQL.Add('where');
    SQL.Add('DataSaida >= :dt1 and DataChegada <= :dt2');
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

procedure TFormViagens.DBGridGastosKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:= Upcase(Key);
end;

procedure TFormViagens.Excluir1Click(Sender: TObject);
begin

  QryGastos.Delete;
end;

procedure TFormViagens.QryViagensAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  QryGastos.First;

  while not QryGastos.Eof do
  begin
    QryGastos.Edit;
    QryGastosViagem.AsInteger := QryViagensCodigo.AsInteger;
    QryGastos.Post;
    QryGastos.Next;
  end;

  LimpaDadosGastos;

end;

procedure TFormViagens.QryViagensAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  SQLClear(QryGastos);
  QryGastos.SQL.Add('delete from GastosViagem where Viagem is null');
  QryGastos.ExecSQL;

  LblGastos.Caption := EmptyStr;

  LimpaDadosGastos;

  QryViagens.AfterScroll(QryViagens);

end;

procedure TFormViagens.QryViagensBeforeDelete(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

  SQLClear(QryGastos);
  QryGastos.SQL.Add('delete from GastosViagem where Viagem = ' + QryViagensCodigo.AsString);
  QryGastos.ExecSQL;

end;

procedure TFormViagens.QryViagensBeforeEdit(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível alterar.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryViagensDataSaida.FocusControl;

end;

procedure TFormViagens.QryViagensBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryViagensDataSaida.FocusControl;

end;

procedure TFormViagens.QryViagensBeforePost(DataSet: TDataSet);
begin

  QryViagens.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if Fechado(MonthOf(QryViagensDataSaida.AsDateTime), YearOf(QryViagensDataSaida.AsDateTime)) then
  begin
    InfoBox('Mês de ' + FormatDateTime('MMMM',QryViagensDataSaida.AsDateTime) +
            ' de ' + FormatDateTime('YYYY',QryViagensDataSaida.AsDateTime) + #13 +
            'já teve o seu fechamento realizado.');
    QryViagensDataSaida.FocusControl;
    Abort;
  end;

  if QryGastos.IsEmpty then
  begin
    InfoBox('Nenhum gasto informado.');
    BtnAddGasto.SetFocus;
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

procedure TFormViagens.QryGastosBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormViagens.QryViagensAfterScroll(DataSet: TDataSet);
var
  Total : Currency;
begin

  //Cidades(QryViagensLocalSaidaEstado.AsString, DBCboCidadeSaida);
  //Cidades(QryViagensLocalDestinoEstado.AsString, DBCboCidadeDestino);

  with QryGastos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from GastosViagem where Viagem = :cViagem');
    ParamByName('cViagem').Value := QryViagensCodigo.AsInteger;
    Open;
  end;

  LblGastos.Caption := formatCurr('#,##0.00', TotalizaGastos(QryViagensCodigo.AsInteger));


end;

procedure TFormViagens.QryViagensNewRecord(DataSet: TDataSet);
begin
  QryViagensCargo.AsString := 'PASTOR';
  QryViagensFechamento.AsString := '0';

  QryViagensSaidaEstado.AsString   := 'AC';
  QryViagensDestinoEstado.AsString := 'AC';

end;

procedure TFormViagens.EditNReciboKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0
end;


procedure TFormViagens.BtnAddGastoClick(Sender: TObject);
begin
  if CboTipoGasto.Text = EmptyStr then
  begin
    InfoBox('Informe o tipo do gasto.');
    CboTipoGasto.SetFocus;
    Exit;
  end;

  if RxCalcEditValor.Value = 0 then
  begin
    InfoBox('Informe o valor do dízimo.');
    RxCalcEditValor.SetFocus;
    Exit;
  end;

  QryGastos.Append;
  QryGastosTipo.AsString      := CboTipoGasto.Text;
  QryGastosValor.AsCurrency   := RxCalcEditValor.Value;
  QryGastosNumRecibo.AsString := EditNRecibo.Text;
  QryGastos.Post;

  LimpaDadosGastos;
  CboTipoGasto.SetFocus;
end;

procedure TFormViagens.LimpaDadosGastos;
begin
  CboTipoGasto.ItemIndex := -1;
  RxCalcEditValor.Value  := 0;
  EditNRecibo.Clear;
end;

procedure TFormViagens.BtnImpPastorClick(Sender: TObject);
begin
  CodigoPastor := Buscar('Pastores','Codigo','Nome','Nome');

  ImpPastor := CodigoPastor <> EmptyStr;

  if ImpPastor then
  begin
    with DMJetro.QryAux2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Pastores');
      SQL.Add('where Codigo = ' + CodigoPastor);
      Open;
      QryViagensNome.AsString       := FieldByName('Nome').AsString;
      QryViagensProntuario.AsString := FieldByName('Prontuario').AsString;
      QryViagensNome.FocusControl;
    end;
  end
  else
  begin
    QryViagensNome.Clear;
    QryViagensProntuario.Clear;
  end;

end;

procedure TFormViagens.DBComboBoxCargoClick(Sender: TObject);
begin
  BtnImpPastor.Enabled := DBComboBoxCargo.ItemIndex <=1;
end;

procedure TFormViagens.QryGastosAfterCancel(DataSet: TDataSet);
begin
  LblGastos.Caption := formatCurr('#,##0.00', TotalizaGastos(QryViagensCodigo.AsInteger));
end;

procedure TFormViagens.DBCboUFSaidaChange(Sender: TObject);
begin
  if Sender = DBCboUFSaida then
    QryViagensSaidaCidade.Clear
  else
    QryViagensDestinoCidade.Clear;
end;

procedure TFormViagens.QryViagensCalcFields(DataSet: TDataSet);
begin
  QryViagensNomeSaidaCidade.AsString := '';
  if not QryViagensSaidaCidade.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome as Descricao from CidadesIBGE');
      SQL.Add('where Codigo = ' + IntToStr(QryViagensSaidaCidade.AsInteger) );
      Open;
      QryViagensNomeSaidaCidade.AsString := FieldByName('Descricao').AsString;

      if IsEmpty then
      begin
        InfoBox('Cidade não localizada.');
        QryViagensSaidaCidade.FocusControl;
      end;

    end;
  end;

  QryViagensNomeDestinoCidade.AsString := '';
  if not QryViagensDestinoCidade.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome as Descricao from CidadesIBGE');
      SQL.Add('where Codigo = ' + IntToStr(QryViagensDestinoCidade.AsInteger) );
      Open;
      QryViagensNomeDestinoCidade.AsString := FieldByName('Descricao').AsString;

      if IsEmpty then
      begin
        InfoBox('Cidade não localizada.');
        QryViagensDestinoCidade.FocusControl;
      end;

    end;
  end;

end;

procedure TFormViagens.SpdBtnCidades1Click(Sender: TObject);
begin
  QryViagensSaidaCidade.FocusControl;
  QryViagensSaidaCidade.AsString := Buscar('CidadesIBGE','CidadesIBGE.Codigo','CidadesIBGE.Nome', 'CidadesIBGE.Nome',
                                           'inner join UFIbge on UFibge.Codigo = CidadesIBGE.UF where UFibge.Sigla = ' +
                                           QuotedStr(QryViagensSaidaEstado.AsString) );

end;

procedure TFormViagens.SpdBtnCidades2Click(Sender: TObject);
begin
  QryViagensDestinoCidade.FocusControl;
  QryViagensDestinoCidade.AsString := Buscar('CidadesIBGE','CidadesIBGE.Codigo','CidadesIBGE.Nome', 'CidadesIBGE.Nome',
                                             'inner join UFIbge on UFibge.Codigo = CidadesIBGE.UF where UFibge.Sigla = ' +
                                             QuotedStr(QryViagensDestinoEstado.AsString) );

end;

procedure TFormViagens.PopupMenuGastosPopup(Sender: TObject);
begin
  if not (QryViagens.State in [dsEdit, dsInsert]) then
     Abort;

  if QryGastos.IsEmpty then
    Abort;
end;

procedure TFormViagens.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCidades1.Click;
end;

procedure TFormViagens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCidades2.Click;
end;

end.
