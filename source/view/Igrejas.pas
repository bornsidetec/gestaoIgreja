unit Igrejas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, Videocap, ExtDlgs;

type
  TFormIgrejas = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetManutencao: TTabSheet;
    PanelDados: TPanel;
    Ds: TDataSource;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBCboUF: TDBComboBox;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnPastores: TSpeedButton;
    DBText1: TDBText;
    QryIgrejas: TUniQuery;
    QryIgrejasCodigo: TIntegerField;
    QryIgrejasCNPJ: TStringField;
    IntegerField2: TIntegerField;
    DateTimeField4: TDateTimeField;
    IntegerField5: TIntegerField;
    DateTimeField5: TDateTimeField;
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
    ToolButton3: TToolButton;
    ToolButton13: TToolButton;
    QryIgrejasEndComplemento: TStringField;
    QryIgrejasRegiao: TIntegerField;
    QryIgrejasPastor: TIntegerField;
    QryIgrejasNomePastor: TStringField;
    SpdBtnCEP: TSpeedButton;
    QryIgrejasEndRua: TStringField;
    QryIgrejasEndNumero: TStringField;
    QryIgrejasEndBairro: TStringField;
    QryIgrejasEndCidade: TStringField;
    QryIgrejasEndEstado: TStringField;
    QryIgrejasEndCep: TStringField;
    QryIgrejasFoneResid: TStringField;
    QryIgrejasFoneCelular: TStringField;
    TabSheetProgramacao: TTabSheet;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    QryIgrejasSuperintendente: TStringField;
    DBCheckBoxSede: TDBCheckBox;
    QryIgrejasSede: TStringField;
    PanelVisitas: TPanel;
    PanelDadosProg: TPanel;
    Label43: TLabel;
    Label39: TLabel;
    DBHorarioVisita: TDBEdit;
    DBNavigatorVisitas: TDBNavigator;
    PanelHistoricoVisitas: TPanel;
    DBGridVisita: TDBGrid;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    QryProgramacao: TUniQuery;
    DsProgramacao: TDataSource;
    RxDBCboDiaSemana: TRxDBComboBox;
    Label2: TLabel;
    DBEdit6: TDBEdit;
    QryProgramacaoCodigo: TIntegerField;
    QryProgramacaoIgreja: TIntegerField;
    QryProgramacaoDiaSemana: TIntegerField;
    QryProgramacaoHora: TStringField;
    QryProgramacaoDescricao: TStringField;
    QryProgramacaoAtivo: TStringField;
    QryProgramacaoUserInsert: TIntegerField;
    QryProgramacaoDataInsert: TDateTimeField;
    QryProgramacaoUserUpdate: TIntegerField;
    QryProgramacaoDataUpdate: TDateTimeField;
    QryProgramacaoDescDiaSemana: TStringField;
    DBCheckBox1: TDBCheckBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    QryIgrejasCNPJCodigo: TStringField;
    TabSheetConfiguracoes: TTabSheet;
    PanelConfig: TPanel;
    DBNavigatorConfig: TDBNavigator;
    QryConfig: TUniQuery;
    DsConfig: TDataSource;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    PanelFotos: TPanel;
    PanelControles: TPanel;
    BtnProcurar: TBitBtn;
    BtnLimpar: TBitBtn;
    PanelImagem: TPanel;
    DBImage1: TDBImage;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    OpenPictureDialog: TOpenPictureDialog;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SpdBtnPastoresClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure QryIgrejasAfterCancel(DataSet: TDataSet);
    procedure QryIgrejasAfterPost(DataSet: TDataSet);
    procedure QryIgrejasBeforeDelete(DataSet: TDataSet);
    procedure QryIgrejasBeforeEdit(DataSet: TDataSet);
    procedure QryIgrejasBeforePost(DataSet: TDataSet);
    procedure QryIgrejasCalcFields(DataSet: TDataSet);
    procedure QryIgrejasNewRecord(DataSet: TDataSet);
    procedure QryIgrejasBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure QryProgramacaoCalcFields(DataSet: TDataSet);
    procedure PageControlChange(Sender: TObject);
    procedure QryProgramacaoAfterPost(DataSet: TDataSet);
    procedure QryProgramacaoBeforeDelete(DataSet: TDataSet);
    procedure QryProgramacaoBeforeInsert(DataSet: TDataSet);
    procedure QryProgramacaoBeforePost(DataSet: TDataSet);
    procedure QryProgramacaoBeforeEdit(DataSet: TDataSet);
    procedure QryProgramacaoNewRecord(DataSet: TDataSet);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QryConfigAfterCancel(DataSet: TDataSet);
    procedure QryConfigAfterEdit(DataSet: TDataSet);
    procedure BtnProcurarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbreProgramacao;

  public
    { Public declarations }
    BMP : TBitMap;
    JPG : TJpegImage;

  end;

var
  FormIgrejas: TFormIgrejas;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormIgrejas.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormIgrejas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryIgrejas.Close;
  QryConfig.Close;

  FormIgrejas := nil;
  Action := caFree;
end;

procedure TFormIgrejas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormIgrejas.FormShow(Sender: TObject);
begin
  AbreQuery(QryIgrejas, 'Igrejas', True);
end;

procedure TFormIgrejas.SpdBtnPastoresClick(Sender: TObject);
begin
  QryIgrejasPastor.FocusControl;
  QryIgrejasPastor.AsString := Buscar('Pastores','Codigo','Nome','Nome','where Titular = ''S''')
end;

procedure TFormIgrejas.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryIgrejas, DBEdit9.Text);
end;

procedure TFormIgrejas.QryIgrejasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormIgrejas.QryIgrejasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormIgrejas.QryIgrejasBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormIgrejas.QryIgrejasBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

end;

procedure TFormIgrejas.QryIgrejasBeforePost(DataSet: TDataSet);
begin

  QryIgrejas.Fields.Fields[0].FocusControl;

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

procedure TFormIgrejas.QryIgrejasCalcFields(DataSet: TDataSet);
begin
  QryIgrejasNomePastor.AsString := '';
  if not QryIgrejasPastor.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Pastores');
      SQL.Add('where Codigo = ' + IntToStr(QryIgrejasPastor.AsInteger) );
      Open;
      QryIgrejasNomePastor.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Pastor não localizado.');
        QryIgrejasPastor.FocusControl;
      end;
    end;
  end;

end;

procedure TFormIgrejas.QryIgrejasNewRecord(DataSet: TDataSet);
begin
  //QryIgrejasCNPJ.AsString := '62955505';
  QryIgrejasSede.AsString := '0';

end;

procedure TFormIgrejas.QryIgrejasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

end;

procedure TFormIgrejas.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  QryConfig.Open;

end;

procedure TFormIgrejas.DBEdit3Exit(Sender: TObject);
begin
  {
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Titular from Pastores');
    SQL.Add('where Codigo = :pastor');
    ParamByName('pastor').Value := QryIgrejasPastor.AsInteger;
    Open;
    if ((FieldByName('Titular').AsString = 'N')) then
    begin
      InfoBox('Favor selecionar Pastor Titular');
      QryIgrejasPastor.FocusControl;
      Exit;
    end;
  end;
  }
  
  if (QryIgrejasSede.AsString = '1') and
     (QryIgrejas.State in [dsInsert, dsEdit]) then
    QryIgrejasSuperintendente.AsString := QryIgrejasNomePastor.AsString;


end;

procedure TFormIgrejas.SpdBtnCEPClick(Sender: TObject);
begin
  QryIgrejasEndCep.FocusControl;
  QryIgrejasEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormIgrejas.QryProgramacaoCalcFields(DataSet: TDataSet);
begin
  case QryProgramacaoDiaSemana.AsInteger of
    1: QryProgramacaoDescDiaSemana.AsString := 'Domingo';
    2: QryProgramacaoDescDiaSemana.AsString := 'Segunda';
    3: QryProgramacaoDescDiaSemana.AsString := 'Terca';
    4: QryProgramacaoDescDiaSemana.AsString := 'Quarta';
    5: QryProgramacaoDescDiaSemana.AsString := 'Quinta';
    6: QryProgramacaoDescDiaSemana.AsString := 'Sexta';
    7: QryProgramacaoDescDiaSemana.AsString := 'Sabado';
  end;

end;

procedure TFormIgrejas.PageControlChange(Sender: TObject);
begin
  if QryIgrejas.State in [dsInsert, dsEdit] then
  begin
    PageControl.ActivePageIndex := 0;
    Exit;
  end;

  if QryProgramacao.State in [dsInsert, dsEdit] then
  begin
    PageControl.ActivePageIndex := 1;
    Exit;
  end;

  if PageControl.ActivePageIndex = 1 then
  begin
    AbreProgramacao;
  end;

end;

procedure TFormIgrejas.AbreProgramacao;
begin
  QryProgramacao.Close;
  QryProgramacao.ParamByName('Igreja').Value := QryIgrejasCodigo.AsInteger;
  QryProgramacao.Open;

end;

procedure TFormIgrejas.QryProgramacaoAfterPost(DataSet: TDataSet);
begin

  DataSet.Tag := 0;
  PanelDadosProg.Enabled := False;
end;

procedure TFormIgrejas.QryProgramacaoBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormIgrejas.QryProgramacaoBeforeInsert(DataSet: TDataSet);
begin
  if QryIgrejas.IsEmpty then
    Abort;

  DataSet.Tag := 1;
  PanelDadosProg.Enabled := True;
  QryProgramacaoDiaSemana.FocusControl;

end;

procedure TFormIgrejas.QryProgramacaoBeforePost(DataSet: TDataSet);
begin
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

procedure TFormIgrejas.QryProgramacaoBeforeEdit(DataSet: TDataSet);
begin
  if QryIgrejas.IsEmpty then
    Abort;

  DataSet.Tag := 2;
  PanelDadosProg.Enabled := True;
  QryProgramacaoDiaSemana.FocusControl;
end;

procedure TFormIgrejas.QryProgramacaoNewRecord(DataSet: TDataSet);
begin
  QryProgramacaoIgreja.AsInteger    := QryIgrejasCodigo.AsInteger;
  QryProgramacaoAtivo.AsString      := '1';
  QryProgramacaoDiaSemana.AsInteger := 1;
end;

procedure TFormIgrejas.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

procedure TFormIgrejas.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnPastores.Click;
end;

procedure TFormIgrejas.QryConfigAfterCancel(DataSet: TDataSet);
begin
  PanelConfig.Enabled := False;
end;

procedure TFormIgrejas.QryConfigAfterEdit(DataSet: TDataSet);
begin
  PanelConfig.Enabled := True;
end;

procedure TFormIgrejas.BtnProcurarClick(Sender: TObject);
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

procedure TFormIgrejas.BtnLimparClick(Sender: TObject);
begin
  DBImage1.Picture := nil;

end;

end.
