unit CertificadoBatismo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin, RLReport, rxCurrEdit;

type
  TFormCertificadoBatismo = class(TForm)
    RxMem: TRxMemoryData;
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    GroupBoxData: TGroupBox;
    Label3: TLabel;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    BtnPesquisar: TBitBtn;
    ChkTodos: TCheckBox;
    QryDados: TUniQuery;
    QryDadosFichaNumero: TIntegerField;
    QryDadosNome: TStringField;
    QryDadosDataNascimento: TDateTimeField;
    QryDadosRG: TStringField;
    QryDadosMembroDesde: TDateTimeField;
    ChkListBox: TCheckListBox;
    QryDadosCidade: TStringField;
    Label1: TLabel;
    DateEditBatismo: TDateEdit;
    QryDadosDataBatismo: TDateTimeField;
    RxMemNome: TStringField;
    RxMemDataNascimento: TDateTimeField;
    RxMemRG: TStringField;
    RxMemMembroDesde: TDateTimeField;
    RxMemCidade: TStringField;
    RxMemDataBatismo: TDateTimeField;
    RxMemFichaNumero: TIntegerField;
    RxMemDiaBatismo: TStringField;
    RxMemMesBatismo: TStringField;
    RxMemAnoBatismo: TStringField;
    RxMemDiaNascimento: TStringField;
    RxMemMesNascimento: TStringField;
    RxMemAnoNascimento: TStringField;
    QryDadosOficiante: TStringField;
    RxMemOficiante: TStringField;
    Ds: TDataSource;
    RLReportCertificado: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    EdtMargemSuperior: TRxCalcEdit;
    EdtMargemEsquerda: TRxCalcEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure ChkTodosClick(Sender: TObject);
    procedure QryDadosCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RxMemCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormCertificadoBatismo: TFormCertificadoBatismo;

implementation

uses UDmJetro, Funcoes, DateUtils;

{$R *.dfm}

procedure TFormCertificadoBatismo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCertificadoBatismo  := nil;
  Action := caFree;

end;

procedure TFormCertificadoBatismo.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCertificadoBatismo.BtnVisualizarClick(Sender: TObject);
var
  Fichas : String;
  i : Integer;
begin

  if DateEditBatismo.Date <= 0 then
  begin
    InfoBox('Data do Batismo deve ser informada.');
    DateEditBatismo.SetFocus;
    Abort;
  end;

  RxMem.Close;
  RxMem.Open;
  Fichas := EmptyStr;

  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    if ChkListBox.Checked[i] then
      Fichas := Fichas + copy(ChkListBox.Items.Strings[i],1,4) + ',';
  end;

  if Fichas = EmptyStr then
  begin
    InfoBox('Selecione ao menos um Membro.');
    Abort;
  end;

  Fichas := '(' + copy(Fichas, 1, Length(Fichas) - 1) + ')';

  with QryDados do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select M.FichaNumero, M.Nome, M.DataNascimento,');
    SQL.Add('       M.RG, M.MembroDesde,');
    SQL.Add('       (I.EndCidade) as Cidade,');
    SQL.Add('       (P.Nome) as Oficiante');
    SQL.Add('from Membros M, Igrejas I');
    SQL.Add('Inner Join Pastores P on P.Codigo = I.Pastor');
    SQL.Add('where M.FichaNumero in ' + Fichas);
    SQL.Add('order by M.Nome');
    Open;
  end;

  if QryDados.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;


  RxMem.Close;
  RxMem.Open;

  RxMem.LoadFromDataSet(QryDados, QryDados.RecordCount, lmAppend);

  RLReportCertificado.Margins.LeftMargin := EdtMargemEsquerda.Value;
  RLReportCertificado.Margins.TopMargin  := EdtMargemSuperior.Value;



  if Sender = BtnImprimir then
    RLReportCertificado.Print
  else
    RLReportCertificado.Preview;
end;

procedure TFormCertificadoBatismo.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormCertificadoBatismo.BuscarDados;
begin

  with DmJetro.QryRelatorios do
  begin
    Close;
    SQL.Clear;

    SQL.Add('select M.FichaNumero, M.Nome');
    SQL.Add('from Membros M');
    SQL.Add('where M.Status = 1');
    if DateEditIni.Date > 0 then
    begin
      SQL.Add('  and M.DataInsert between :dt1 and :dt2');
      ParamByName('dt1').AsDateTime := DateEditIni.Date;
      ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
    end;
    SQL.Add('order by M.Nome');
    Open;

    First;

    ChkListBox.Clear;
    while not Eof do
    begin
      ChkListBox.Items.Add(FormatFloat('0000', FieldByName('FichaNumero').AsInteger) +
                               ' - ' +
                               FieldByName('Nome').AsString);
      Next;
    end;
  end;
end;

procedure TFormCertificadoBatismo.BtnPesquisarClick(Sender: TObject);
begin

  if (DateEditIni.Date = 0) and (DateEditFim.Date > 0) then
  begin
    InfoBox('Data Inicial deve ser informada.');
    DateEditIni.SetFocus;
    Exit;
  end;

  if (DateEditFim.Date = 0) and (DateEditIni.Date > 0) then
  begin
    InfoBox('Data Final deve ser informada.');
    DateEditFim.SetFocus;
    Exit;
  end;

  if DateEditIni.Date > DateEditFim.Date then
  begin
    InfoBox('Data Inicial deve ser menor ou igual a Data Final.');
    DateEditIni.SetFocus;
    Exit;
  end;

  BuscarDados;

end;

procedure TFormCertificadoBatismo.ChkTodosClick(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    ChkListBox.Checked[i] := ChkTodos.Checked;
  end;
end;

procedure TFormCertificadoBatismo.QryDadosCalcFields(DataSet: TDataSet);
begin
  QryDadosDataBatismo.AsDateTime := DateEditBatismo.Date;
end;

procedure TFormCertificadoBatismo.FormCreate(Sender: TObject);
begin
  DateEditBatismo.Date := Date;


  EdtMargemSuperior.Value := RLReportCertificado.Margins.TopMargin;// QuickRepCartao.Page.TopMargin;
  EdtMargemEsquerda.Value := RLReportCertificado.Margins.LeftMargin;// QuickRepCartao.Page.LeftMargin;

end;

procedure TFormCertificadoBatismo.RxMemCalcFields(DataSet: TDataSet);
begin
  RxMemDiaBatismo.AsString := FormatDateTime('DD', RxMemDataBatismo.AsDateTime);
  RxMemMesBatismo.AsString := FormatDateTime('MMMM', RxMemDataBatismo.AsDateTime);
  RxMemAnoBatismo.AsString := FormatDateTime('YYYY', RxMemDataBatismo.AsDateTime);

  RxMemDiaNascimento.AsString := FormatDateTime('DD', RxMemDataNascimento.AsDateTime);
  RxMemMesNascimento.AsString := FormatDateTime('MMMM', RxMemDataNascimento.AsDateTime);
  RxMemAnoNascimento.AsString := FormatDateTime('YYYY', RxMemDataNascimento.AsDateTime);
  
end;

end.
