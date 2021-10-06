unit CartaoMembro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin, rxCurrEdit, QRPDFFilt;

type
  TFormCartaoMembro = class(TForm)
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
    QuickRepCartao: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ChkListBox: TCheckListBox;
    QRDBText3: TQRDBText;
    QryDadosBairroIgreja: TStringField;
    QRMemoNome: TQRMemo;
    Label1: TLabel;
    DateEditValidade: TDateEdit;
    QryDadosDataValidade: TDateTimeField;
    RxMemNome: TStringField;
    RxMemDataNascimento: TDateTimeField;
    RxMemRG: TStringField;
    RxMemMembroDesde: TDateTimeField;
    RxMemBairroIgreja: TStringField;
    RxMemDataValidade: TDateTimeField;
    SpinLin: TRxSpinEdit;
    SpinCol: TRxSpinEdit;
    Label2: TLabel;
    Label4: TLabel;
    RxMemFichaNumero: TIntegerField;
    ChkPimaco: TCheckBox;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    EdtMargemSuperior: TRxCalcEdit;
    Label6: TLabel;
    EdtMargemEsquerda: TRxCalcEdit;
    QuickRepPimaco: TQuickRep;
    QRBand2: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRMemoNome2: TQRMemo;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure ChkTodosClick(Sender: TObject);
    procedure QryDadosCalcFields(DataSet: TDataSet);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure edt(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormCartaoMembro: TFormCartaoMembro;

implementation

uses UDmJetro, Funcoes, DateUtils;

{$R *.dfm}

procedure TFormCartaoMembro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCartaoMembro  := nil;
  Action := caFree;

end;

procedure TFormCartaoMembro.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCartaoMembro.BtnVisualizarClick(Sender: TObject);
var
  Fichas : String;
  i : Integer;
begin

  if DateEditValidade.Date <= 0 then
  begin
    InfoBox('Validade deve ser informada.');
    DateEditValidade.SetFocus;
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
    SQL.Add('       (I.EndCidade || '' - '' || I.EndBairro) as BairroIgreja');
    SQL.Add('from Membros M, Igrejas I');
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

  AjusteEtiqueta(RxMem, SpinLin.AsInteger, SpinCol.AsInteger, 4);

  RxMem.LoadFromDataSet(QryDados, QryDados.RecordCount, lmAppend);

  if ChkPimaco.Checked then
  begin
    if Sender = BtnImprimir then
      QuickRepPimaco.Print
    else
      QuickRepPimaco.Preview;
  end
  else
  begin
    QuickRepCartao.Page.LeftMargin := EdtMargemEsquerda.Value;
    QuickRepCartao.Page.TopMargin  := EdtMargemSuperior.Value;
    if Sender = BtnImprimir then
      QuickRepCartao.Print
    else
      QuickRepCartao.Preview;
  end;


end;

procedure TFormCartaoMembro.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormCartaoMembro.BuscarDados;
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

procedure TFormCartaoMembro.BtnPesquisarClick(Sender: TObject);
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

procedure TFormCartaoMembro.ChkTodosClick(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    ChkListBox.Checked[i] := ChkTodos.Checked;
  end;
end;

procedure TFormCartaoMembro.QryDadosCalcFields(DataSet: TDataSet);
begin
  QryDadosDataValidade.AsDateTime := DateEditValidade.Date;
end;

procedure TFormCartaoMembro.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRMemoNome.Lines.Text := RxMemNome.AsString;
end;

procedure TFormCartaoMembro.FormCreate(Sender: TObject);
begin
  DateEditValidade.Date := EndOfTheYear(Now);
  EdtMargemSuperior.Value := QuickRepCartao.Page.TopMargin;
  EdtMargemEsquerda.Value := QuickRepCartao.Page.LeftMargin;
end;

procedure TFormCartaoMembro.edt(Sender: TObject);
begin
  EdtMargemSuperior.Enabled := not ChkPimaco.Checked;
  EdtMargemEsquerda.Enabled := not ChkPimaco.Checked;
end;

procedure TFormCartaoMembro.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRMemoNome2.Lines.Text := RxMemNome.AsString;
end;

end.
