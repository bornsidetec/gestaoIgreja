unit Membros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  RxLookup, ADODB, Uni, DBAccess, MemDS, Videocap, Clipbrd, ExtDlgs, StrUtils, OleCtrls, SHDocVw;

type
  TFormMembros = class(TForm)
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
    cboFiltro: TComboBox;
    Notebook: TNotebook;
    Label1: TLabel;
    EditNome: TEdit;
    RadioGroupStatus: TRadioGroup;
    Label2: TLabel;
    EditCEP: TEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label11: TLabel;
    EditConjuge: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    DBCboUF: TDBComboBox;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    Label26: TLabel;
    DBEdit17: TDBEdit;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBRadioGroup1: TDBRadioGroup;
    QryMembros: TUniQuery;
    QryMembrosFichaNumero: TIntegerField;
    QryMembrosNome: TStringField;
    QryMembrosDataNascimento: TDateTimeField;
    QryMembrosDataValidade: TDateTimeField;
    QryMembrosDataBatismo: TDateTimeField;
    QryMembrosMembroDesde: TDateTimeField;
    QryMembrosNaturalidade: TStringField;
    QryMembrosEstadoCivil: TStringField;
    QryMembrosNomeConjuge: TStringField;
    QryMembrosFiliacaoPai: TStringField;
    QryMembrosFiliacaoMae: TStringField;
    QryMembrosRG: TStringField;
    QryMembrosCPF: TStringField;
    QryMembrosStatus: TIntegerField;
    QryMembrosStatusDesc: TStringField;
    QryMembrosUserInsert: TIntegerField;
    QryMembrosDataInsert: TDateTimeField;
    QryMembrosUserUpdate: TIntegerField;
    QryMembrosDataUpdate: TDateTimeField;
    QryMembrosCartaoMembro: TStringField;
    BtnImpVisitante: TBitBtn;
    DBRadioGroupSexo: TDBRadioGroup;
    QryMembrosSexo: TStringField;
    BtnImpCriancas: TBitBtn;
    SpdBtnCEP: TSpeedButton;
    QryMembrosFoneResid: TStringField;
    QryMembrosFoneCelular: TStringField;
    QryMembrosEndRua: TStringField;
    QryMembrosEndNumero: TStringField;
    QryMembrosEndBairro: TStringField;
    QryMembrosEndComplemento: TStringField;
    QryMembrosEndCidade: TStringField;
    QryMembrosEndEstado: TStringField;
    QryMembrosEndCep: TStringField;
    TabSheetAconselhamento: TTabSheet;
    TabSheetVisitas: TTabSheet;
    PanelMembros: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    PanelAconselhamento: TPanel;
    DBNavigator: TDBNavigator;
    QryAconselhamento: TUniQuery;
    DsAconselhamento: TDataSource;
    QryAconselhamentoCodigo: TIntegerField;
    QryAconselhamentoMembro: TIntegerField;
    QryAconselhamentoData: TDateTimeField;
    QryAconselhamentoHorario: TStringField;
    QryAconselhamentoDificuldades: TMemoField;
    QryAconselhamentoConselhos: TMemoField;
    PanelMembros2: TPanel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    PanelVisitas: TPanel;
    DBNavigatorVisitas: TDBNavigator;
    QryVisitas: TUniQuery;
    DsVisitas: TDataSource;
    QryVisitasCodigo: TIntegerField;
    QryVisitasMembro: TIntegerField;
    QryVisitasData: TDateTimeField;
    QryVisitasHorario: TStringField;
    QryVisitasObservacao: TMemoField;
    QryVisitasTipo: TIntegerField;
    PanelFotos: TPanel;
    PanelControles: TPanel;
    PanelImagem: TPanel;
    DBImage1: TDBImage;
    BtnCapturar: TBitBtn;
    BtnProcurar: TBitBtn;
    BtnLimpar: TBitBtn;
    QryMembrosFoto: TBlobField;
    PanelCaptura: TPanel;
    VideoCap1: TVideoCap;
    BtnOkFoto: TBitBtn;
    OpenPictureDialog: TOpenPictureDialog;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    PanelConselhos: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    DBMemoDificuldades: TDBMemo;
    DBEdit20: TDBEdit;
    DBDateEdit: TDBDateEdit;
    DBEditHorario: TDBEdit;
    DBMemoConselhos: TDBMemo;
    Label36: TLabel;
    PanelHistoricoConselhos: TPanel;
    Label33: TLabel;
    DBGridAconselhamento: TDBGrid;
    PanelDadosVisitas: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit24: TDBEdit;
    DBDataVisita: TDBDateEdit;
    DBHorarioVisita: TDBEdit;
    DBMemoObservacaoVisita: TDBMemo;
    Label39: TLabel;
    RxDBCboVisitas: TRxDBComboBox;
    PanelHistoricoVisitas: TPanel;
    Label42: TLabel;
    DBGridVisita: TDBGrid;
    TabSheetFinanceiro: TTabSheet;
    PanelMembros3: TPanel;
    Label45: TLabel;
    Label47: TLabel;
    DBText7: TDBText;
    DBText9: TDBText;
    QryDizimos: TUniQuery;
    DsDizimos: TDataSource;
    Label46: TLabel;
    EditAno: TEdit;
    BtnFindAno: TBitBtn;
    QryDizimosNumMes: TIntegerField;
    QryDizimosValor: TCurrencyField;
    QryDizimosDescMes: TStringField;
    PanelDizimos: TPanel;
    RxDBGridDizimos: TRxDBGrid;
    PanelTituloDizimos: TPanel;
    PanelOfertas: TPanel;
    RxDBGridOfertas: TRxDBGrid;
    PanelTituloOfertas: TPanel;
    QryOfertas: TUniQuery;
    DsOfertas: TDataSource;
    QryOfertasNumMes: TIntegerField;
    QryOfertasDescMes: TStringField;
    QryOfertasValor: TCurrencyField;
    RxDBCboEscolaridades: TRxDBComboBox;
    QryMembrosEscolaridade: TIntegerField;
    QryMembrosProfissao: TIntegerField;
    RxDBCboProfissoes: TRxDBComboBox;
    QryMembrosDescProfissao: TStringField;
    Label48: TLabel;
    DBEdit2: TDBEdit;
    QryMembrosEmail: TStringField;
    TabSheetMaps: TTabSheet;
    PanelMaps: TPanel;
    WebBrowser: TWebBrowser;
    Memo1: TMemo;
    Membros4: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBText8: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label52: TLabel;
    DBText12: TDBText;
    Label53: TLabel;
    DBText13: TDBText;
    Label54: TLabel;
    DBText14: TDBText;
    Label55: TLabel;
    DBText15: TDBText;
    Label56: TLabel;
    DBText16: TDBText;
    Label57: TLabel;
    DBText17: TDBText;
    Label58: TLabel;
    DBText18: TDBText;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure QryMembrosAfterCancel(DataSet: TDataSet);
    procedure QryMembrosAfterPost(DataSet: TDataSet);
    procedure QryMembrosBeforeDelete(DataSet: TDataSet);
    procedure QryMembrosBeforeEdit(DataSet: TDataSet);
    procedure QryMembrosBeforeInsert(DataSet: TDataSet);
    procedure QryMembrosBeforePost(DataSet: TDataSet);
    procedure QryMembrosCalcFields(DataSet: TDataSet);
    procedure QryMembrosNewRecord(DataSet: TDataSet);
    procedure BtnImpVisitanteClick(Sender: TObject);
    procedure BtnImpCriancasClick(Sender: TObject);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure QryAconselhamentoBeforeInsert(DataSet: TDataSet);
    procedure QryAconselhamentoNewRecord(DataSet: TDataSet);
    procedure QryAconselhamentoAfterPost(DataSet: TDataSet);
    procedure BtnCapturarClick(Sender: TObject);
    procedure BtnOkFotoClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnProcurarClick(Sender: TObject);
    procedure QryMembrosBeforeCancel(DataSet: TDataSet);
    procedure QryDizimosCalcFields(DataSet: TDataSet);
    procedure BtnFindAnoClick(Sender: TObject);
    procedure QryMembrosAfterScroll(DataSet: TDataSet);
    procedure QryOfertasCalcFields(DataSet: TDataSet);
    procedure QryAconselhamentoBeforePost(DataSet: TDataSet);
    procedure QryVisitasBeforePost(DataSet: TDataSet);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure BotoesFoto(Enabled: Boolean);
    procedure AbreAconselhamento;
    procedure AbreVisitas;
    procedure AbreDizimos;
    procedure AbreOfertas;
    procedure AbreMaps;
  public
    { Public declarations }
    ImpVisitante : Boolean;
    CodigoVisitante : String;

    ImpCrianca : Boolean;
    CodigoCrianca : String;

    BMP : TBitMap;
    JPG : TJpegImage;

  end;

var
  FormMembros: TFormMembros;

implementation

uses UDmJetro, Funcoes, Main, DateUtils;

{$R *.dfm}

procedure TFormMembros.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMembros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryMembros.Close;

  FormMembros := nil;
  Action := caFree;
end;

procedure TFormMembros.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;

  ImpVisitante := False;

  PageControl.Pages[2].TabVisible := FormMain.Usuario = 1;
  PageControl.Pages[3].TabVisible := FormMain.Usuario = 1;
  PageControl.Pages[4].TabVisible := FormMain.Usuario = 1;

end;

procedure TFormMembros.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormMembros.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormMembros.BtnPesquisarClick(Sender: TObject);
begin
  with QryMembros do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Membros');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Nome like :pNome');
            ParamByName('pNome').Value := EditNome.text + '%';
          end;
      1 : begin
            SQL.Add('Status = :pStatus');
            ParamByName('pStatus').Value := RadioGroupStatus.ItemIndex + 1;
          end;
      2 : begin
            SQL.Add('EndCep = :pCEP');
            ParamByName('pCEP').Value := EditCEP.Text;
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

procedure TFormMembros.FormShow(Sender: TObject);
begin
  AbreQuery(QryMembros, 'Membros');
  EditNome.SetFocus;
end;

procedure TFormMembros.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormMembros.PageControlChange(Sender: TObject);
begin
  if QryMembros.State in [dsInsert, dsEdit] then
  begin
    PageControl.ActivePageIndex := 1;
    Exit;
  end;

  if QryAconselhamento.State in [dsInsert, dsEdit] then
  begin
    PageControl.ActivePageIndex := 2;
    Exit;
  end;

  if QryVisitas.State in [dsInsert, dsEdit] then
  begin
    PageControl.ActivePageIndex := 3;
    Exit;
  end;

  {
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Departamento from Usuarios where Codigo = :user');
    ParamByName('user').Value := FormMain.Usuario;
    Open;
  end;

  //se departamento <> de Pastor então não autoriza as abas 2, 3 e 4
  if DMJetro.QryAux.FieldByName('Departamento').AsInteger <> 1 then
  }
  if FormMain.Usuario <> 1 then
  begin
    if PageControl.ActivePageIndex in [2,3,4] then
    begin
      PageControl.ActivePageIndex := 1;
      InfoBox('Abas somente disponível para usuário PASTOR.');
    end;
  end;

  if PageControl.ActivePageIndex = 2 then
  begin
    AbreAconselhamento;
  end;

  if PageControl.ActivePageIndex = 3 then
  begin
    AbreVisitas;
  end;

  if PageControl.ActivePageIndex = 4 then
  begin
    EditAno.Text := FormatDateTime('YYYY', Date);
    AbreDizimos;
    AbreOfertas;
  end;

  if PageControl.ActivePageIndex = 5 then
  begin
    AbreMaps;
  end;

end;

procedure TFormMembros.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryMembros, DBEdit9.Text);
end;

procedure TFormMembros.QryMembrosAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

  BtnImpVisitante.Visible := False;
  BtnImpCriancas.Visible  := False;
  ImpVisitante            := False;
  ImpCrianca              := False;

end;

procedure TFormMembros.QryMembrosAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

  if ImpVisitante then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update Visitantes set Status = 5, UserUpdate = ' + IntToStr(FormMain.Usuario) + ', DataUpdate = current_timestamp');
      SQL.Add('where Codigo = ' + CodigoVisitante);
      ExecSQL;
      SQL.Clear;
    end;
  end;

  if ImpCrianca then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update Criancas set Status = 5, UserUpdate = ' + IntToStr(FormMain.Usuario) + ', DataUpdate = current_timestamp');
      SQL.Add('where Codigo = ' + CodigoCrianca);
      ExecSQL;
      SQL.Clear;
    end;
  end;

  BtnImpVisitante.Visible := False;
  BtnImpCriancas.Visible  := False;
  ImpVisitante            := False;
  ImpCrianca              := False;

end;

procedure TFormMembros.QryMembrosBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormMembros.QryMembrosBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

end;

procedure TFormMembros.QryMembrosBeforeInsert(DataSet: TDataSet);
var
  Limite : Integer;
begin

  if not Versao(Limite) then
  begin
    InfoBox('Versão está limitada a ' + IntToStr(Limite) + ' registros.');
    Abort;
  end;
  
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

  BtnImpVisitante.Visible := True;
  BtnImpCriancas.Visible  := True;

end;

procedure TFormMembros.QryMembrosBeforePost(DataSet: TDataSet);
begin

  if BtnOkFoto.Enabled then
  begin
    InfoBox('Confirme a captura da foto.');
    BtnOkFoto.SetFocus;
    Abort;
  end;

  QryMembros.Fields.Fields[0].FocusControl;

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

procedure TFormMembros.QryMembrosCalcFields(DataSet: TDataSet);
begin
  case QryMembrosStatus.AsInteger of
    1 : QryMembrosStatusDesc.AsString := 'ATIVO';
    2 : QryMembrosStatusDesc.AsString := 'LICENCA';
    3 : QryMembrosStatusDesc.AsString := 'TRANSFERIDO';
    4 : QryMembrosStatusDesc.AsString := 'DISCIPLINA';
    5 : QryMembrosStatusDesc.AsString := 'EXCLUIDO';
  end;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Descricao from Profissoes where Codigo = ' + IfThen(QryMembrosProfissao.AsString <> EmptyStr, QryMembrosProfissao.AsString, '0'));
    Open;

    QryMembrosDescProfissao.AsString := FieldByName('Descricao').AsString;
  end;


end;

procedure TFormMembros.QryMembrosNewRecord(DataSet: TDataSet);
begin
  QryMembrosStatus.AsInteger := 1;
  QryMembrosSexo.AsString := 'M';

end;

procedure TFormMembros.BtnImpVisitanteClick(Sender: TObject);
begin
  CodigoVisitante := Buscar('Visitantes','Codigo','Nome','Nome');

  ImpVisitante := CodigoVisitante <> EmptyStr;

  if ImpVisitante then
  begin
    with DMJetro.QryAux2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Visitantes');
      SQL.Add('where Codigo = ' + CodigoVisitante);
      Open;
      if FieldByName('Status').AsInteger = 5 then
      begin
        InfoBox('Visitante já importado para o cadastro de Membros.');
        ImpVisitante := False;
        QryMembrosNome.FocusControl;
      end
      else
      begin
        QryMembrosNome.AsString := FieldByName('Nome').AsString;
        QryMembrosDataNascimento.AsDateTime := FieldByName('DataNascimento').AsDateTime;

        {

        if not FieldByName('DiaNasc').IsNull then
          QryMembrosDataNascimento.AsString := FormatFloat('00', FieldByName('DiaNasc').AsInteger) + '/' +
                                               FormatFloat('00', FieldByName('MesNasc').AsInteger);}
        QryMembrosEndRua.AsString := FieldByName('EndRua').AsString;
        QryMembrosEndNumero.AsString := FieldByName('EndNumero').AsString;
        QryMembrosEndComplemento.AsString := FieldByName('EndComplemento').AsString;
        QryMembrosEndBairro.AsString := FieldByName('EndBairro').AsString;
        QryMembrosEndCidade.AsString := FieldByName('EndCidade').AsString;
        QryMembrosEndEstado.AsString := FieldByName('EndEstado').AsString;
        QryMembrosEndCep.AsString := FieldByName('EndCep').AsString;
        QryMembrosFoneResid.AsString := FieldByName('FoneResid').AsString;
        QryMembrosFoneCelular.AsString := FieldByName('FoneCelular').AsString;
        QryMembrosDataNascimento.FocusControl;
      end;
    end;
  end
  else
  begin
    QryMembrosNome.Clear;
    QryMembrosDataNascimento.Clear;
    QryMembrosEndRua.Clear;
    QryMembrosEndNumero.Clear;
    QryMembrosEndComplemento.Clear;
    QryMembrosEndBairro.Clear;
    QryMembrosEndCidade.Clear;
    QryMembrosEndEstado.Clear;
    QryMembrosEndCep.Clear;
    QryMembrosFoneResid.Clear;
    QryMembrosFoneCelular.Clear;
    QryMembrosNome.FocusControl;
  end;

end;

procedure TFormMembros.BtnImpCriancasClick(Sender: TObject);
begin
  CodigoCrianca := Buscar('Criancas','Codigo','Nome','Nome');

  ImpCrianca := CodigoCrianca <> EmptyStr;

  if ImpCrianca then
  begin
    with DMJetro.QryAux2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Criancas');
      SQL.Add('where Codigo = ' + CodigoCrianca);
      Open;
      if FieldByName('Status').AsInteger = 5 then
      begin
        InfoBox('Criança já importado para o cadastro de Membros.');
        ImpCrianca := False;
        QryMembrosNome.FocusControl;
      end
      else
      begin
        QryMembrosNome.AsString             := FieldByName('Nome').AsString;
        if not FieldByName('DataNascimento').IsNull then
          QryMembrosDataNascimento.AsDateTime := FieldByName('DataNascimento').AsDateTime;
        QryMembrosSexo.AsString             := FieldByName('Sexo').AsString;
        QryMembrosEndRua.AsString           := FieldByName('EndRua').AsString;
        QryMembrosEndNumero.AsString        := FieldByName('EndNumero').AsString;
        QryMembrosEndComplemento.AsString   := FieldByName('EndComplemento').AsString;
        QryMembrosEndBairro.AsString        := FieldByName('EndBairro').AsString;
        QryMembrosEndCidade.AsString        := FieldByName('EndCidade').AsString;
        QryMembrosEndEstado.AsString        := FieldByName('EndEstado').AsString;
        QryMembrosEndCep.AsString           := FieldByName('EndCep').AsString;
        QryMembrosFoneResid.AsString        := FieldByName('FoneResid').AsString;
        QryMembrosFoneCelular.AsString      := FieldByName('FoneCelular').AsString;
        QryMembrosDataBatismo.FocusControl;
      end;
    end;
  end
  else
  begin
    QryMembrosNome.Clear;
    QryMembrosDataNascimento.Clear;
    QryMembrosEndRua.Clear;
    QryMembrosEndNumero.Clear;
    QryMembrosEndComplemento.Clear;
    QryMembrosEndBairro.Clear;
    QryMembrosEndCidade.Clear;
    QryMembrosEndEstado.Clear;
    QryMembrosEndCep.Clear;
    QryMembrosFoneResid.Clear;
    QryMembrosFoneCelular.Clear;
    QryMembrosNome.FocusControl;
  end;

end;

procedure TFormMembros.SpdBtnCEPClick(Sender: TObject);
begin
  QryMembrosEndCep.FocusControl;
  QryMembrosEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormMembros.QryAconselhamentoBeforeInsert(DataSet: TDataSet);
begin
  if QryMembros.IsEmpty then
    Abort;

  if DataSet = QryAconselhamento then
  begin
    PanelConselhos.Enabled := True;
    DBMemoDificuldades.SetFocus;
  end
  else if DataSet = QryVisitas then
  begin
    PanelDadosVisitas.Enabled := True;
    DBMemoObservacaoVisita.SetFocus;
  end;

end;

procedure TFormMembros.QryAconselhamentoNewRecord(DataSet: TDataSet);
begin

  DataSet.FieldByName('Membro').AsInteger := QryMembrosFichaNumero.AsInteger;
  DataSet.FieldByName('Data').AsDateTime  := Date;
  DataSet.FieldByName('Horario').AsString := FormatDateTime('HH:MM',now);

  if DataSet = QryVisitas then
  begin
    QryVisitasTipo.AsInteger := 1;
  end;

end;

procedure TFormMembros.QryAconselhamentoAfterPost(DataSet: TDataSet);
begin
  if DataSet = QryAconselhamento then
    PanelConselhos.Enabled := False
  else if DataSet = QryVisitas then
    PanelDadosVisitas.Enabled := False;

end;

procedure TFormMembros.BtnCapturarClick(Sender: TObject);
var
  BMP : TBitMap;
  JPG : TJpegImage;
begin
  BotoesFoto(False);
  try
    VideoCap1.DriverOpen   := True;
    VideoCap1.VideoPreview := True;
  except
    InfoBox('Câmera não está instalada corretamente.');
    BotoesFoto(True);
  end;  
end;

procedure TFormMembros.BtnOkFotoClick(Sender: TObject);
begin
  VideoCap1.SaveToClipboard;
  BMP := TBitMap.Create;
  BMP.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
  JPG := TJpegImage.Create;
  JPG.Assign(BMP);
  //JPG.SaveToFile(EditSPict.Text);
  //BMP.SaveToFile(EditSPict.Text+'.bmp');
  DBImage1.Picture.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
  JPG.Free;
  BMP.Free;

  VideoCap1.DriverOpen   := False;
  VideoCap1.VideoPreview := False;

  BotoesFoto(True);
end;

procedure TFormMembros.BotoesFoto(Enabled: Boolean);
begin
  BtnOkFoto.Enabled    := not Enabled;
  PanelCaptura.Visible := not Enabled;

  BtnCapturar.Enabled  := Enabled;
  BtnProcurar.Enabled  := Enabled;
  BtnLimpar.Enabled    := Enabled;

end;

procedure TFormMembros.BtnLimparClick(Sender: TObject);
begin
  DBImage1.Picture := nil;
end;

procedure TFormMembros.BtnProcurarClick(Sender: TObject);
begin
  if OpenPictureDialog.Execute then
  begin

    JPG := TJpegImage.Create;
    JPG.LoadFromFile(OpenPictureDialog.FileName);
    BMP := TBitMap.Create;
    BMP.Assign(JPG);

    DBImage1.Picture.Assign(BMP);

    JPG.Free;
    BMP.Free;

  end;
end;

procedure TFormMembros.QryMembrosBeforeCancel(DataSet: TDataSet);
begin
  VideoCap1.DriverOpen   := False;
  VideoCap1.VideoPreview := False;

  BotoesFoto(True);
end;

procedure TFormMembros.QryDizimosCalcFields(DataSet: TDataSet);
begin
  QryDizimosDescMes.AsString := UpperCase(FormatDateTime('MMMM', StrToDate('01/' + FormatFloat('00',QryDizimosNumMes.AsInteger) + '/' + EditAno.Text)))
end;

procedure TFormMembros.BtnFindAnoClick(Sender: TObject);
begin
  AbreDizimos;
  AbreOfertas;
end;

procedure TFormMembros.AbreAconselhamento;
begin

  QryAconselhamento.Close;
  QryAconselhamento.ParamByName('Membro').Value := QryMembrosFichaNumero.AsInteger;
  QryAconselhamento.Open;

end;

procedure TFormMembros.AbreDizimos;
begin

  if EditAno.Text = EmptyStr then
  begin
    QryDizimos.Close;
    Abort;
  end;

  QryDizimos.Close;
  QryDizimos.ParamByName('Membro').Value := QryMembrosFichaNumero.AsInteger;
  QryDizimos.ParamByName('dt1').Value    := StartOfAYear(StrToInt(EditAno.Text));
  QryDizimos.ParamByName('dt2').Value    := EndOfAYear(StrToInt(EditAno.Text));
  QryDizimos.Open;

end;

procedure TFormMembros.AbreVisitas;
begin

  QryVisitas.Close;
  QryVisitas.ParamByName('Membro').Value := QryMembrosFichaNumero.AsInteger;
  QryVisitas.Open;

end;

procedure TFormMembros.QryMembrosAfterScroll(DataSet: TDataSet);
begin
  {
  AbreAconselhamento;
  AbreVisitas;
  AbreDizimos;
  AbreOfertas;
  }

  if PageControl.ActivePageIndex = 2 then
    AbreAconselhamento
  else if PageControl.ActivePageIndex = 3 then
    AbreVisitas
  else if PageControl.ActivePageIndex = 4 then
  begin
    AbreDizimos;
    AbreOfertas;
  end
  else if PageControl.ActivePageIndex = 5 then
    AbreMaps;

end;

procedure TFormMembros.AbreOfertas;
begin
  if EditAno.Text = EmptyStr then
  begin
    QryOfertas.Close;
    Abort;
  end;

  QryOfertas.Close;
  QryOfertas.ParamByName('Membro').Value := QryMembrosFichaNumero.AsInteger;
  QryOfertas.ParamByName('dt1').Value    := StartOfAYear(StrToInt(EditAno.Text));
  QryOfertas.ParamByName('dt2').Value    := EndOfAYear(StrToInt(EditAno.Text));
  QryOfertas.Open;
end;

procedure TFormMembros.QryOfertasCalcFields(DataSet: TDataSet);
begin
  QryOfertasDescMes.AsString := UpperCase(FormatDateTime('MMMM', StrToDate('01/' + FormatFloat('00',QryOfertasNumMes.AsInteger) + '/' + EditAno.Text)))
end;

procedure TFormMembros.QryAconselhamentoBeforePost(DataSet: TDataSet);
begin
  CamposObrigatorios(DataSet as TUniQuery);

end;

procedure TFormMembros.QryVisitasBeforePost(DataSet: TDataSet);
begin
  CamposObrigatorios(DataSet as TUniQuery);

end;


procedure TFormMembros.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

procedure TFormMembros.AbreMaps;
Var
  f: TextFile;
  local, i: Integer;
  linha, aux, ConsultaEndereco : string;
begin

  i := 0;
  AssignFile(F,'c:\BornSide\Teste.html');
  rewrite(f);

  while i < Memo1.Lines.Count do
  begin
    linha := Memo1.Lines[i];
    local := pos('#', linha);
    if (local > 0) and (copy(linha, local, 10) = '#ENDERECO#') then
    begin
      aux := copy(linha, 1, local - 1);

      if QryMembrosEndRua.AsString <> '' Then
        aux := aux +
               RemoveAcentos(QryMembrosEndRua.AsString) +', ' +
               QryMembrosEndNumero.AsString +', ';

      if QryMembrosEndCidade.AsString <> '' Then
        aux := aux +
               RemoveAcentos(QryMembrosEndCidade.AsString);

      aux   := aux + copy(linha, length(linha)-1, 2);
      linha := aux;

    end;
    write(f,linha+#13+#10);
    inc(i);
  end;
  closefile(f);

  WebBrowser.Navigate('c:\BornSide\teste.html');

end;

procedure TFormMembros.FormActivate(Sender: TObject);
begin
  RxComboTabelaAuxiliar('TiposVisita','', RxDBCboVisitas);
  RxComboTabelaAuxiliar('Escolaridades','',RxDBCboEscolaridades);
  RxComboTabelaAuxiliar('Profissoes','',RxDBCboProfissoes);

end;

end.
