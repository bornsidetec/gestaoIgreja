unit Cultos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, rxCurrEdit,
  RxMemDS, Menus, DateUtils, ADODB, Uni, DBAccess, MemDS, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFormCultos = class(TForm)
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
    GroupBox1: TGroupBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBEdit16: TDBEdit;
    Label5: TLabel;
    SpdBtnIgrejas: TSpeedButton;
    DBText1: TDBText;
    DBEdit3: TDBEdit;
    DsDiaconos: TDataSource;
    ComboBoxDiaconos1: TDBLookupComboBox;
    ComboBoxDiaconos2: TDBLookupComboBox;
    GroupBoxEstatistico: TGroupBox;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Label12: TLabel;
    RxDBCalcEdit2: TRxDBCalcEdit;
    Label13: TLabel;
    RxDBCalcEdit3: TRxDBCalcEdit;
    DsDizimistas: TDataSource;
    PopupMenuDizimistas: TPopupMenu;
    Excluir1: TMenuItem;
    Label16: TLabel;
    RxDBCalcEdit4: TRxDBCalcEdit;
    LabelMissoes: TLabel;
    QryDiaconos: TUniQuery;
    QryCultos: TUniQuery;
    QryCultosCodigo: TIntegerField;
    QryCultosIgreja: TIntegerField;
    QryCultosData: TDateTimeField;
    QryCultosHorario: TStringField;
    QryCultosTestemunho: TIntegerField;
    QryCultosBatismoEspiritoSanto: TIntegerField;
    QryCultosCriancasApresentadas: TIntegerField;
    QryCultosConversoes: TIntegerField;
    QryCultosVisitantes: TIntegerField;
    QryCultosTotalPresentes: TIntegerField;
    QryCultosPastoresPresentes1: TStringField;
    QryCultosPastoresPresentes2: TStringField;
    QryCultosVisitasEspeciais1: TStringField;
    QryCultosVisitasEspeciais2: TStringField;
    QryCultosPregador: TStringField;
    QryCultosOfertasGerais: TCurrencyField;
    QryCultosOutrasEntradas: TCurrencyField;
    QryCultosOfertasMissoes: TCurrencyField;
    QryCultosDiaconos1: TStringField;
    QryCultosDiaconos2: TStringField;
    QryCultosUserInsert: TIntegerField;
    QryCultosDataInsert: TDateTimeField;
    QryCultosUserUpdate: TIntegerField;
    QryCultosDataUpdate: TDateTimeField;
    QryCultosDiaSemana: TStringField;
    QryCultosBairroIgreja: TStringField;
    QryCultosOfertasEspeciais: TCurrencyField;
    QryDizimistas: TUniQuery;
    QryDizimistasCodigo: TIntegerField;
    QryDizimistasCulto: TIntegerField;
    QryDizimistasNome: TStringField;
    QryDizimistasValor: TCurrencyField;
    QryDizimistasNumCheque: TStringField;
    QryDizimistasNumBanco: TStringField;
    Label14: TLabel;
    CboDizimista: TComboBox;
    RxCalcEditValor: TRxCalcEdit;
    Label18: TLabel;
    EditNCheque: TEdit;
    EditNBanco: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    BtnAddDizimista: TBitBtn;
    QryCultosImpressao: TStringField;
    QryCultosFechamento: TStringField;
    Label21: TLabel;
    SpdBtnMembros: TSpeedButton;
    QryDizimistasMembro: TIntegerField;
    QryDizimistasMembroNome: TStringField;
    EditMembro: TEdit;
    PageControlValor: TPageControl;
    TabSheetDizimos: TTabSheet;
    TabSheetOfertas: TTabSheet;
    DBGridDizimistas: TRxDBGrid;
    DBGridOfertantes: TRxDBGrid;
    BtnAddOfertante: TBitBtn;
    QryOfertantes: TUniQuery;
    DsOfertantes: TDataSource;
    PopupMenuOfertantes: TPopupMenu;
    MenuItem1: TMenuItem;
    QryOfertantesCodigo: TIntegerField;
    QryOfertantesCulto: TIntegerField;
    QryOfertantesMembro: TIntegerField;
    QryOfertantesNome: TStringField;
    QryOfertantesValor: TCurrencyField;
    QryOfertantesNumCheque: TStringField;
    QryOfertantesNumBanco: TStringField;
    QryOfertantesMembroNome: TStringField;
    PanelTotalDizimos: TPanel;
    Label15: TLabel;
    LblDizimos: TLabel;
    PanelTotalOfertas: TPanel;
    Label22: TLabel;
    LblOfertas: TLabel;
    Panel1: TPanel;
    LblTotalArrecadacao: TLabel;
    Label17: TLabel;
    BtnSMS: TBitBtn;
    IdHTTP1: TIdHTTP;
    EditRetorno: TEdit;
    chkPastorTitular: TCheckBox;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cboFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure SpdBtnIgrejasClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure DBGridDizimistasKeyPress(Sender: TObject; var Key: Char);
    procedure Excluir1Click(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure QryCultosAfterPost(DataSet: TDataSet);
    procedure QryCultosAfterCancel(DataSet: TDataSet);
    procedure QryCultosBeforeDelete(DataSet: TDataSet);
    procedure QryCultosBeforeEdit(DataSet: TDataSet);
    procedure QryCultosBeforeInsert(DataSet: TDataSet);
    procedure QryCultosBeforePost(DataSet: TDataSet);
    procedure QryCultosCalcFields(DataSet: TDataSet);
    procedure QryDizimistasBeforeDelete(DataSet: TDataSet);
    procedure RxDBCalcEdit1Exit(Sender: TObject);
    procedure QryDizimistasAfterCancel(DataSet: TDataSet);
    procedure QryCultosAfterScroll(DataSet: TDataSet);
    procedure QryCultosNewRecord(DataSet: TDataSet);
    procedure EditNChequeKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddDizimistaClick(Sender: TObject);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure EditMembroExit(Sender: TObject);
    procedure BtnAddOfertanteClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure EditNBancoKeyPress(Sender: TObject; var Key: Char);
    procedure PopupMenuOfertantesPopup(Sender: TObject);
    procedure PopupMenuDizimistasPopup(Sender: TObject);
    procedure BtnSMSClick(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMembroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkPastorTitularClick(Sender: TObject);
    procedure DBEdit16Change(Sender: TObject);
  private
    { Private declarations }
    Pregador: String;
  public
    { Public declarations }
    procedure Missoes;
    procedure NomeDizimistas;
    procedure LimpaDadosDizimistas;

    procedure SMSCulto;

  end;

var
  FormCultos: TFormCultos;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormCultos.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCultos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormCultos := nil;
  Action := caFree;
end;

procedure TFormCultos.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
end;

procedure TFormCultos.FormShow(Sender: TObject);
begin
  AbreQuery(QryCultos, 'Cultos');

  //SQLClear(QryDiaconos);
  QryDiaconos.Close;
  QryDiaconos.Open;


  SQLClear(QryDizimistas);
  QryDizimistas.SQL.Add('select * from DizimistasCulto where Culto = :cCulto');
  QryDizimistas.ParamByName('cCulto').Value := QryCultosCodigo.AsInteger;
  QryDizimistas.Open;

  SQLClear(QryOfertantes);
  QryOfertantes.SQL.Add('select * from OfertantesCulto where Culto = :cCulto');
  QryOfertantes.ParamByName('cCulto').Value := QryCultosCodigo.AsInteger;
  QryOfertantes.Open;

  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
  DateEditIni.SetFocus;
end;

procedure TFormCultos.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormCultos.cboFiltroKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TFormCultos.PageControlChange(Sender: TObject);
begin
  if QryCultos.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormCultos.SpdBtnIgrejasClick(Sender: TObject);
begin
  QryCultosIgreja.FocusControl;
  QryCultosIgreja.AsString := Buscar('Igrejas','Codigo','EndBairro','EndBairro')
end;

procedure TFormCultos.BtnPesquisarClick(Sender: TObject);
begin
  with QryCultos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Cultos');
    SQL.Add('where');
    SQL.Add('Data between :dt1 and :dt2');
    SQL.Add('order by Data');
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

procedure TFormCultos.DBGridDizimistasKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:= Upcase(Key);
end;

procedure TFormCultos.Excluir1Click(Sender: TObject);
begin

  QryDizimistas.Delete;
end;

procedure TFormCultos.Missoes;
var
  semana, dia : Word;
begin
  semana := DayOfTheWeek(DBDateEdit1.Date);
  dia := DayOfTheMonth(DBDateEdit1.Date);
  LabelMissoes.Visible := (semana = 7) and ((dia >= 15) and (dia < 22));
end;

procedure TFormCultos.DBDateEdit1Exit(Sender: TObject);
begin
  Missoes;
end;

procedure TFormCultos.QryCultosAfterPost(DataSet: TDataSet);
begin

  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  QryDizimistas.First;

  while not QryDizimistas.Eof do
  begin
    QryDizimistas.Edit;
    QryDizimistasCulto.AsInteger := QryCultosCodigo.AsInteger;
    QryDizimistas.Post;
    QryDizimistas.Next;
  end;

  QryOfertantes.First;

  while not QryOfertantes.Eof do
  begin
    QryOfertantes.Edit;
    QryOfertantesCulto.AsInteger := QryCultosCodigo.AsInteger;
    QryOfertantes.Post;
    QryOfertantes.Next;
  end;


  LimpaDadosDizimistas;

end;

procedure TFormCultos.QryCultosAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  SQLClear(QryDizimistas);
  QryDizimistas.SQL.Add('delete from DizimistasCulto where Culto is null');
  QryDizimistas.ExecSQL;

  LblDizimos.Caption := EmptyStr;


  SQLClear(QryOfertantes);
  QryOfertantes.SQL.Add('delete from OfertantesCulto where Culto is null');
  QryOfertantes.ExecSQL;

  LblOfertas.Caption := EmptyStr;


  LblTotalArrecadacao.Caption := EmptyStr;

  LimpaDadosDizimistas;

  QryCultos.AfterScroll(QryCultos);

end;

procedure TFormCultos.QryCultosBeforeDelete(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

  SQLClear(QryDizimistas);
  QryDizimistas.SQL.Add('delete from DizimistasCulto where Culto = ' + QryCultosCodigo.AsString);
  QryDizimistas.ExecSQL;

  SQLClear(QryOfertantes);
  QryOfertantes.SQL.Add('delete from OfertantesCulto where Culto = ' + QryCultosCodigo.AsString);
  QryOfertantes.ExecSQL;

end;

procedure TFormCultos.QryCultosBeforeEdit(DataSet: TDataSet);
begin
  {
  if QryCultosImpressao.AsString = '1' then
  begin
    InfoBox('Relatório de Culto já impresso.' + #13 + 'Não é possível alterar');
    Abort;
  end;
  }

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível alterar.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryCultosData.FocusControl;

  NomeDizimistas;

end;

procedure TFormCultos.QryCultosBeforeInsert(DataSet: TDataSet);
var
  Limite : Integer;
begin
  {
  if not Versao(Limite,'Cultos') then
  begin
    InfoBox('Versão está limitada a ' + IntToStr(Limite) + ' registros.');
    Abort;
  end;
  }
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryCultosData.FocusControl;

  NomeDizimistas;
end;

procedure TFormCultos.QryCultosBeforePost(DataSet: TDataSet);
begin

  CamposObrigatorios(DataSet as TUniQuery);

  if Fechado(MonthOf(QryCultosData.AsDateTime), YearOf(QryCultosData.AsDateTime)) then
  begin
    InfoBox('Mês de ' + FormatDateTime('MMMM',QryCultosData.AsDateTime) +
            ' de ' + FormatDateTime('YYYY',QryCultosData.AsDateTime) + #13 +
            'já teve o seu fechamento realizado.');
    QryCultosData.FocusControl;
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

  if (DayOfTheWeek(QryCultosData.AsDateTime) = 7) and
     ((DayOfTheMonth(QryCultosData.AsDateTime) >= 15) and
     (DayOfTheMonth(QryCultosData.AsDateTime) < 22)) then

    if QryCultosOfertasMissoes.AsCurrency = 0 then
    begin
      InfoBox('Favor lançar valor da Oferta de Missões.');
      QryCultosOfertasMissoes.FocusControl;
      Abort;
    end;


end;

procedure TFormCultos.QryCultosCalcFields(DataSet: TDataSet);
begin
  case DayOfTheWeek(QryCultosData.AsDateTime) of
    1: QryCultosDiaSemana.AsString := 'Segunda';
    2: QryCultosDiaSemana.AsString := 'Terca';
    3: QryCultosDiaSemana.AsString := 'Quarta';
    4: QryCultosDiaSemana.AsString := 'Quinta';
    5: QryCultosDiaSemana.AsString := 'Sexta';
    6: QryCultosDiaSemana.AsString := 'Sabado';
    7: QryCultosDiaSemana.AsString := 'Domingo';
  end;

  QryCultosBairroIgreja.AsString := '';
  if not QryCultosIgreja.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select EndBairro from Igrejas');
      SQL.Add('where Codigo = ' + IntToStr(QryCultosIgreja.AsInteger) );
      Open;
      QryCultosBairroIgreja.AsString := 'IEQ - ' + FieldByName('EndBairro').AsString;
      if IsEmpty then
      begin
        InfoBox('Igreja não localizada.');
        QryCultosIgreja.FocusControl;
      end;
    end;
  end;

end;

procedure TFormCultos.QryDizimistasBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormCultos.RxDBCalcEdit1Exit(Sender: TObject);
var
  Total : Currency;
begin

  Total := QryCultosOfertasGerais.Value +
           QryCultosOfertasEspeciais.Value +
           QryCultosOutrasEntradas.Value +
           TotalizaOfertas(QryCultosCodigo.AsInteger) +
           TotalizaDizimos(QryCultosCodigo.AsInteger);
  LblOfertas.Caption := formatCurr('#,##0.00', TotalizaOfertas(QryCultosCodigo.AsInteger));
  LblDizimos.Caption := formatCurr('#,##0.00', TotalizaDizimos(QryCultosCodigo.AsInteger));
  LblTotalArrecadacao.Caption := formatCurr('#,##0.00', Total);

end;

procedure TFormCultos.QryDizimistasAfterCancel(DataSet: TDataSet);
var
  Total : Currency;
begin

  Total := QryCultosOfertasGerais.Value +
           QryCultosOfertasEspeciais.Value +
           QryCultosOutrasEntradas.Value +
           TotalizaOfertas(QryCultosCodigo.AsInteger) +
           TotalizaDizimos(QryCultosCodigo.AsInteger);
  LblOfertas.Caption := formatCurr('#,##0.00', TotalizaOfertas(QryCultosCodigo.AsInteger));
  LblDizimos.Caption := formatCurr('#,##0.00', TotalizaDizimos(QryCultosCodigo.AsInteger));
  LblTotalArrecadacao.Caption := formatCurr('#,##0.00', Total);

end;

procedure TFormCultos.QryCultosAfterScroll(DataSet: TDataSet);
var
  Total : Currency;
begin

  with QryDizimistas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from DizimistasCulto where Culto = :cCulto');
    ParamByName('cCulto').Value := QryCultosCodigo.AsInteger;
    Open;
  end;

  with QryOfertantes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from OfertantesCulto where Culto = :cCulto');
    ParamByName('cCulto').Value := QryCultosCodigo.AsInteger;
    Open;
  end;

  Total := QryCultosOfertasGerais.Value +
           QryCultosOfertasEspeciais.Value +
           QryCultosOutrasEntradas.Value +
           TotalizaOfertas(QryCultosCodigo.AsInteger) +
           TotalizaDizimos(QryCultosCodigo.AsInteger);

  LblOfertas.Caption := formatCurr('#,##0.00', TotalizaOfertas(QryCultosCodigo.AsInteger));
  LblDizimos.Caption := formatCurr('#,##0.00', TotalizaDizimos(QryCultosCodigo.AsInteger));

  LblTotalArrecadacao.Caption := formatCurr('#,##0.00', Total);

  Missoes;

end;

procedure TFormCultos.QryCultosNewRecord(DataSet: TDataSet);
begin
  QryCultosOfertasGerais.AsCurrency := 0;
  QryCultosOfertasEspeciais.AsCurrency := 0;
  QryCultosOfertasMissoes.AsCurrency := 0;
  QryCultosOutrasEntradas.AsCurrency := 0;

  QryCultosImpressao.AsString  := '0';
  QryCultosFechamento.AsString := '0';

end;

procedure TFormCultos.EditNChequeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0
end;

procedure TFormCultos.NomeDizimistas;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome from Criancas where Status = 1');
    SQL.Add('Union');
    SQL.Add('select Nome from Visitantes where Status = 1');
    //SQL.Add('order by Nome');
    Open;
    CboDizimista.Clear;
    CboDizimista.Items.Add('');
    while not Eof do
    begin
      CboDizimista.Items.Add(FieldByName('Nome').AsString);
      Next;
    end;
  end;
end;

procedure TFormCultos.BtnAddDizimistaClick(Sender: TObject);
begin
  PageControlValor.ActivePageIndex := 0;

  if not (QryCultos.State in [dsInsert, dsEdit]) then
    Exit;

  if CboDizimista.Text = EmptyStr then
  begin
    InfoBox('Informe o nome do dizimista.');
    CboDizimista.SetFocus;
    Exit;
  end;

  if RxCalcEditValor.Value = 0 then
  begin
    InfoBox('Informe o valor do dízimo.');
    RxCalcEditValor.SetFocus;
    Exit;
  end;

  QryDizimistas.Append;
  QryDizimistasMembro.AsString    := EditMembro.Text;
  QryDizimistasNome.AsString      := CboDizimista.Text;
  QryDizimistasValor.AsCurrency   := RxCalcEditValor.Value;
  QryDizimistasNumCheque.AsString := EditNCheque.Text;
  QryDizimistasNumBanco.AsString  := EditNBanco.Text;
  QryDizimistas.Post;

  LimpaDadosDizimistas;
  EditMembro.SetFocus;

end;

procedure TFormCultos.LimpaDadosDizimistas;
begin
  CboDizimista.Text     := EmptyStr;
  CboDizimista.Enabled  := True;
  RxCalcEditValor.Value := 0;
  EditNCheque.Clear;
  EditNBanco.Clear;
  EditMembro.Clear;

end;

procedure TFormCultos.SpdBtnMembrosClick(Sender: TObject);
begin
  EditMembro.SetFocus;
  EditMembro.Text := Buscar('Membros','FichaNumero','Nome','Nome')

end;

procedure TFormCultos.EditMembroExit(Sender: TObject);
begin

  if QryCultos.State = dsBrowse then
    Abort;
    
  if trim(EditMembro.Text) = '' then
  begin
    CboDizimista.Enabled := True;
    CboDizimista.Text := '';
    CboDizimista.SetFocus;
  end
  else
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + EditMembro.Text);
      Open;
      CboDizimista.Text := FieldByName('Nome').AsString;

      if (IsEmpty) then
      begin
        InfoBox('Membro não localizado.');
        EditMembro.SetFocus;
        Exit;
      end;
    end;
    CboDizimista.Enabled := False;
    RxCalcEditValor.SetFocus;
  end;

end;

procedure TFormCultos.BtnAddOfertanteClick(Sender: TObject);
begin

  PageControlValor.ActivePageIndex := 1;

  if not (QryCultos.State in [dsInsert, dsEdit]) then
    Exit;

  if CboDizimista.Text = EmptyStr then
  begin
    InfoBox('Informe o nome do ofertante.');
    CboDizimista.SetFocus;
    Exit;
  end;

  if RxCalcEditValor.Value = 0 then
  begin
    InfoBox('Informe o valor da oferta especial.');
    RxCalcEditValor.SetFocus;
    Exit;
  end;

  QryOfertantes.Append;
  QryOfertantesMembro.AsString    := EditMembro.Text;
  QryOfertantesNome.AsString      := CboDizimista.Text;
  QryOfertantesValor.AsCurrency   := RxCalcEditValor.Value;
  QryOfertantesNumCheque.AsString := EditNCheque.Text;
  QryOfertantesNumBanco.AsString  := EditNBanco.Text;
  QryOfertantes.Post;

  LimpaDadosDizimistas;
  EditMembro.SetFocus;

end;

procedure TFormCultos.MenuItem1Click(Sender: TObject);
begin

  QryOfertantes.Delete;
  
end;

procedure TFormCultos.EditNBancoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormCultos.PopupMenuOfertantesPopup(Sender: TObject);
begin
  if not (QryCultos.State in [dsInsert, dsEdit]) then
    Abort;

  if QryOfertantes.IsEmpty then
    Abort;
    
end;

procedure TFormCultos.PopupMenuDizimistasPopup(Sender: TObject);
begin
  if not (QryCultos.State in [dsInsert, dsEdit]) then
    Abort;

  if QryDizimistas.IsEmpty then
    Abort;

end;

procedure TFormCultos.BtnSMSClick(Sender: TObject);
begin
  if (QryCultos.State in [dsEdit, dsInsert]) or
     (QryCultos.IsEmpty) then
    Abort;

  if not YesNoBox('Confirma o envio de SMS ao Pastor Títular' + #13 +
                  'contendo as informações deste culto?') then
    Abort;


  SMSCulto;

end;

procedure TFormCultos.SMSCulto;
var
  SMS, SMSok, Destino, Credencial : String;
begin

  SMS := 'Data: ' + QryCultosData.AsString + ' - ';
  SMS := SMS + 'Hora: ' + QryCultosHorario.AsString + ' - ' ;
  SMS := SMS + 'Presentes: ' + QryCultosTotalPresentes.AsString + ' - ';

  if QryCultosVisitantes.AsInteger > 0 then
    SMS := SMS + 'Visitantes: ' + QryCultosVisitantes.AsString + ' - ';

  SMS := SMS + 'Dizimos: ' + LblDizimos.Caption + ' - ';
  SMS := SMS + 'Total Arrecadacao: ' + LblTotalArrecadacao.Caption;

  with DMJetro.QryAux2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select P.FoneCelular from Pastores P');
    SQL.Add('inner join Igrejas I on I.Pastor = P.Codigo');
    SQL.Add('where I.Codigo = ' + QryCultosIgreja.AsString);
    Open;

    Destino := FieldByName('FoneCelular').AsString;

    Close;
    SQL.Clear;
    SQL.Add('select CredencialSMS from Configuracoes');
    Open;
    Credencial := FieldByName('CredencialSMS').AsString;
  end;

  SMSok := RemoveAcentos(SMS);
  SMSok := StringReplace(SMSok, ' ', '%20', [rfReplaceAll]);

 	IdHTTP1.Host := 'mobilepronto.com.br';
 	IdHTTP1.Port := 80;
  try

    EditRetorno.Text := IdHTTP1.Get('http://www.mpgateway.com/v_2_00/smspush/enviasms.aspx?' +
                                    'CREDENCIAL=' + Credencial +
                                    '&PRINCIPAL_USER=IEQSOFT' +
                                    '&AUX_USER=BRUNO' +
                                    '&MOBILE=55' + Destino +
                                    '&SEND_PROJECT=S' +
                                    '&MESSAGE=' + SMSok);
    InfoBox(RetornoSMS(EditRetorno.Text));
    if EditRetorno.Text = '000' then
      RegistraSMS(SMS, Destino);
  except
    on e: Exception do
      InfoBox('SMS não foi enviado devido ao erro:' + #13 + e.Message);
  end;

end;

procedure TFormCultos.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnIgrejas.Click;
end;

procedure TFormCultos.EditMembroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

procedure TFormCultos.chkPastorTitularClick(Sender: TObject);
begin
  if chkPastorTitular.Checked then
  begin
    with DMJetro do
    begin
      SQLClear(QryAux);
      QryAux.SQL.Add('SELECT P.Nome Pregador FROM Igrejas I INNER JOIN Pastores P on P.Codigo = I.Pastor');
      QryAux.Open;
      Pregador := copy(QryAux.FieldByName('Pregador').AsString, 1, 25);
    end;
    QryCultosPregador.AsString := Pregador;
  end;
end;

procedure TFormCultos.DBEdit16Change(Sender: TObject);
begin
  if DBEdit16.Text <> Pregador then chkPastorTitular.Checked := False;
end;

end.
