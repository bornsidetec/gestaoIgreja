unit CertificadoCasamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin, RLReport, rxCurrEdit;

type
  TFormCertificadoCasamento = class(TForm)
    RxMem: TRxMemoryData;
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    QryDados: TUniQuery;
    QryDadosCidade: TStringField;
    Label1: TLabel;
    DateEditCasamento: TDateEdit;
    RxMemDataCasamento: TDateTimeField;
    RxMemNomeNoivo: TStringField;
    RxMemNomeNoiva: TStringField;
    QuickRepCertificado: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    RxMemDiaCasamento: TStringField;
    RxMemMesCasamento: TStringField;
    RxMemAnoCasamento: TStringField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QryDadosOficiante: TStringField;
    RxMemOficiante: TStringField;
    QRDBText9: TQRDBText;
    RxMemCidade: TStringField;
    Label2: TLabel;
    EditNomeNoivo: TEdit;
    SpdBtnMembros1: TSpeedButton;
    Label3: TLabel;
    EditNomeNoiva: TEdit;
    SpdBtnMembros2: TSpeedButton;
    BtnLimpar: TBitBtn;
    QRDBText2: TQRDBText;
    RLReportCertificado: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    Ds: TDataSource;
    RLDBText2: TRLDBText;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    EdtMargemSuperior: TRxCalcEdit;
    EdtMargemEsquerda: TRxCalcEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure RxMemCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembros1Click(Sender: TObject);
    procedure SpdBtnMembros2Click(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    ImpMembro : Boolean;
    CodigoMembro : String;

  end;

var
  FormCertificadoCasamento: TFormCertificadoCasamento;

implementation

uses UDmJetro, Funcoes, DateUtils, CertificadoApCrianca;

{$R *.dfm}

procedure TFormCertificadoCasamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCertificadoApCrianca  := nil;
  Action := caFree;

end;

procedure TFormCertificadoCasamento.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCertificadoCasamento.BtnVisualizarClick(Sender: TObject);
begin

  if DateEditCasamento.Date <= 0 then
  begin
    InfoBox('Data do Casamento deve ser informada.');
    DateEditCasamento.SetFocus;
    Abort;
  end;

  if Trim(EditNomeNoivo.Text) = EmptyStr then
  begin
    InfoBox('Nome do Noivo deve ser informado.');
    EditNomeNoivo.SetFocus;
    Abort;
  end;

  if Trim(EditNomeNoiva.Text) = EmptyStr then
  begin
    InfoBox('Nome da Noiva deve ser informado.');
    EditNomeNoiva.SetFocus;
    Abort;
  end;

  RxMem.Close;
  RxMem.Open;

  with QryDados do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select (I.EndCidade) as Cidade,');
    SQL.Add('       (P.Nome) as Oficiante');
    SQL.Add('from Igrejas I');
    SQL.Add('Inner Join Pastores P on P.Codigo = I.Pastor');
    Open;
  end;

  if QryDados.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  RxMem.Close;
  RxMem.Open;

  RxMem.Append;
  RxMemNomeNoivo.AsString       := EditNomeNoivo.Text;
  RxMemNomeNoiva.AsString       := EditNomeNoiva.Text;
  RxMemDataCasamento.AsDateTime := DateEditCasamento.Date;
  RxMemCidade.AsString          := QryDadosCidade.AsString;
  RxMemOficiante.AsString       := QryDadosOficiante.AsString;
  RxMem.Post;

  RLReportCertificado.Margins.LeftMargin := EdtMargemEsquerda.Value;
  RLReportCertificado.Margins.TopMargin  := EdtMargemSuperior.Value;


  if Sender = BtnImprimir then
    RLReportCertificado.Print
  else
    RLReportCertificado.Preview;
end;

procedure TFormCertificadoCasamento.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;


procedure TFormCertificadoCasamento.FormCreate(Sender: TObject);
begin
  DateEditCasamento.Date := Date;

  EdtMargemSuperior.Value := RLReportCertificado.Margins.TopMargin;// QuickRepCartao.Page.TopMargin;
  EdtMargemEsquerda.Value := RLReportCertificado.Margins.LeftMargin;// QuickRepCartao.Page.LeftMargin;

end;

procedure TFormCertificadoCasamento.RxMemCalcFields(DataSet: TDataSet);
begin

  RxMemDiaCasamento.AsString := FormatDateTime('DD', RxMemDataCasamento.AsDateTime);
  RxMemMesCasamento.AsString := FormatDateTime('MMMM', RxMemDataCasamento.AsDateTime);
  RxMemAnoCasamento.AsString := FormatDateTime('YYYY', RxMemDataCasamento.AsDateTime);

end;

procedure TFormCertificadoCasamento.SpdBtnMembros1Click(Sender: TObject);
begin
  CodigoMembro := Buscar('Membros','FichaNumero','Nome','Nome', 'where Sexo = ''M''');

  ImpMembro := CodigoMembro <> EmptyStr;

  if ImpMembro then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + CodigoMembro);
      Open;
      EditNomeNoivo.Text := FieldByName('Nome').AsString;
      EditNomeNoivo.SetFocus;
    end;
  end
  else
  begin
    EditNomeNoivo.Clear;
  end;

end;

procedure TFormCertificadoCasamento.SpdBtnMembros2Click(Sender: TObject);
begin
  CodigoMembro := Buscar('Membros','FichaNumero','Nome','Nome', 'where Sexo = ''F''');

  ImpMembro := CodigoMembro <> EmptyStr;

  if ImpMembro then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + CodigoMembro);
      Open;
      EditNomeNoiva.Text := FieldByName('Nome').AsString;
      EditNomeNoiva.SetFocus;
    end;
  end
  else
  begin
    EditNomeNoiva.Clear;
  end;
end;

procedure TFormCertificadoCasamento.BtnLimparClick(Sender: TObject);
begin
  DateEditCasamento.Date := Date;
  EditNomeNoivo.Clear;
  EditNomeNoiva.Clear;
end;

end.
