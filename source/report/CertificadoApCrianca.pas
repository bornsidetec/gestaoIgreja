unit CertificadoApCrianca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin, RLReport, jpeg, rxCurrEdit;

type
  TFormCertificadoApCrianca = class(TForm)
    RxMem: TRxMemoryData;
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    QryDados: TUniQuery;
    QryDadosCidade: TStringField;
    Label1: TLabel;
    DateEditNascimento: TDateEdit;
    RxMemNome: TStringField;
    RxMemDataNascimento: TDateTimeField;
    RxMemNomePai: TStringField;
    RxMemNomeMae: TStringField;
    RxMemDataAp: TDateTimeField;
    RxMemDiaAp: TStringField;
    RxMemMesAp: TStringField;
    RxMemAnoAp: TStringField;
    QuickRepCertificado: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    RxMemDiaNascimento: TStringField;
    RxMemMesNascimento: TStringField;
    RxMemAnoNascimento: TStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QryDadosOficiante: TStringField;
    RxMemOficiante: TStringField;
    QRDBText9: TQRDBText;
    RxMemCidade: TStringField;
    Label2: TLabel;
    EditNomePai: TEdit;
    SpdBtnMembros1: TSpeedButton;
    Label3: TLabel;
    EditNomeMae: TEdit;
    SpdBtnMembros2: TSpeedButton;
    Label4: TLabel;
    EditNome: TEdit;
    Label5: TLabel;
    DateEditAp: TDateEdit;
    BtnLimpar: TBitBtn;
    RLReportCertificado: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    Ds: TDataSource;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    QRDBText10: TQRDBText;
    RLDBText12: TRLDBText;
    RLDBText10: TRLDBText;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRMemo1: TQRMemo;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    EdtMargemSuperior: TRxCalcEdit;
    EdtMargemEsquerda: TRxCalcEdit;
    Label8: TLabel;
    ChkPastorTitular: TCheckBox;
    EditNomeOficiante: TEdit;
    SpdBtnMembros3: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure RxMemCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembros1Click(Sender: TObject);
    procedure SpdBtnMembros2Click(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure EditNomePaiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomeMaeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChkPastorTitularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    ImpMembro : Boolean;
    CodigoMembro : String;

  end;

var
  FormCertificadoApCrianca: TFormCertificadoApCrianca;

implementation

uses UDmJetro, Funcoes, DateUtils;

{$R *.dfm}

procedure TFormCertificadoApCrianca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCertificadoApCrianca  := nil;
  Action := caFree;

end;

procedure TFormCertificadoApCrianca.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCertificadoApCrianca.BtnVisualizarClick(Sender: TObject);
begin

  if DateEditNascimento.Date <= 0 then
  begin
    InfoBox('Data de Nascimento deve ser informada.');
    DateEditNascimento.SetFocus;
    Abort;
  end;

  if DateEditAp.Date <= 0 then
  begin
    InfoBox('Data da Apresentação deve ser informada.');
    DateEditAp.SetFocus;
    Abort;
  end;

  if Trim(EditNome.Text) = EmptyStr then
  begin
    InfoBox('Nome deve ser informado.');
    EditNome.SetFocus;
    Abort;
  end;

  if Trim(EditNomePai.Text) = EmptyStr then
  begin
    InfoBox('Nome do Pai deve ser informado.');
    EditNomePai.SetFocus;
    Abort;
  end;

  if Trim(EditNomeMae.Text) = EmptyStr then
  begin
    InfoBox('Nome da Mãe deve ser informado.');
    EditNomeMae.SetFocus;
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
  RxMemNome.AsString             := EditNome.Text;
  RxMemNomePai.AsString          := EditNomePai.Text;
  RxMemNomeMae.AsString          := EditNomeMae.Text;
  RxMemDataNascimento.AsDateTime := DateEditNascimento.Date;
  RxMemDataAp.AsDateTime         := DateEditAp.Date;
  RxMemCidade.AsString           := QryDadosCidade.AsString;
  if ChkPastorTitular.Checked then
    RxMemOficiante.AsString := QryDadosOficiante.AsString
  else
    RxMemOficiante.AsString := EditNomeOficiante.Text;
  RxMem.Post;

  RLReportCertificado.Margins.LeftMargin := EdtMargemEsquerda.Value;
  RLReportCertificado.Margins.TopMargin  := EdtMargemSuperior.Value;

  if Sender = BtnImprimir then
    RLReportCertificado.Print
  else
    RLReportCertificado.Preview;
end;

procedure TFormCertificadoApCrianca.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;


procedure TFormCertificadoApCrianca.FormCreate(Sender: TObject);
begin
  DateEditAp.Date := Date;

  EdtMargemSuperior.Value := RLReportCertificado.Margins.TopMargin;// QuickRepCartao.Page.TopMargin;
  EdtMargemEsquerda.Value := RLReportCertificado.Margins.LeftMargin;// QuickRepCartao.Page.LeftMargin;

end;

procedure TFormCertificadoApCrianca.RxMemCalcFields(DataSet: TDataSet);
begin

  RxMemDiaNascimento.AsString := FormatDateTime('DD', RxMemDataNascimento.AsDateTime);
  RxMemMesNascimento.AsString := FormatDateTime('MMMM', RxMemDataNascimento.AsDateTime);
  RxMemAnoNascimento.AsString := FormatDateTime('YYYY', RxMemDataNascimento.AsDateTime);

  RxMemDiaAp.AsString := FormatDateTime('DD', RxMemDataAp.AsDateTime);
  RxMemMesAp.AsString := FormatDateTime('MMMM', RxMemDataAp.AsDateTime);
  RxMemAnoAp.AsString := FormatDateTime('YYYY', RxMemDataAp.AsDateTime);


end;

procedure TFormCertificadoApCrianca.SpdBtnMembros1Click(Sender: TObject);
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
      EditNomePai.Text := FieldByName('Nome').AsString;
      EditNomePai.SetFocus;
    end;
  end
  else
  begin
    EditNomePai.Clear;
  end;

end;

procedure TFormCertificadoApCrianca.SpdBtnMembros2Click(Sender: TObject);
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
      EditNomeMae.Text := FieldByName('Nome').AsString;
      EditNomeMae.SetFocus;
    end;
  end
  else
  begin
    EditNomeMae.Clear;
  end;
end;

procedure TFormCertificadoApCrianca.BtnLimparClick(Sender: TObject);
begin
  DateEditNascimento.Clear;
  DateEditNascimento.SetFocus;
  DateEditAp.Date := Date;
  EditNome.Clear;
  EditNomePai.Clear;
  EditNomeMae.Clear;
  EditNomeOficiante.Clear;
end;

procedure TFormCertificadoApCrianca.EditNomePaiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros1.Click;
end;

procedure TFormCertificadoApCrianca.EditNomeMaeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros2.Click;
end;

procedure TFormCertificadoApCrianca.ChkPastorTitularClick(Sender: TObject);
begin
  EditNomeOficiante.Enabled := not ChkPastorTitular.Checked;
  SpdBtnMembros3.Enabled := not ChkPastorTitular.Checked;
end;

end.
