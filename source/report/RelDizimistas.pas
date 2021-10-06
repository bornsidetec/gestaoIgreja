unit RelDizimistas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, QuickRpt, QRCtrls, jpeg, DB,
  RxMemDS, DateUtils, Spin, RxGIF, MemDS, DBAccess, Uni, QRPDFFilt;

type
  TFormRelDizimistas = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    Label1: TLabel;
    ComboBoxMes: TComboBox;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    RxMDizimistas: TRxMemoryData;
    LblAno: TLabel;
    EditAno: TEdit;
    QuickRep: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabelSistema: TQRLabel;
    QRLabelIEQ: TQRLabel;
    QRLabelRel: TQRLabel;
    QRLabelFiltro: TQRLabel;
    QRShape6: TQRShape;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    RxMDizimistasNome: TStringField;
    RxMDizimistasValor: TCurrencyField;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel4: TQRLabel;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBImage1: TQRDBImage;
    QRPDFFilter1: TQRPDFFilter;
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormRelDizimistas: TFormRelDizimistas;

implementation

uses UDmJetro, ADODB, Funcoes;

{$R *.dfm}

procedure TFormRelDizimistas.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormRelDizimistas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryConfig.Close;
  RxMDizimistas.Close;
  FormRelDizimistas := nil;
  Action := caFree;
end;

procedure TFormRelDizimistas.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRelDizimistas.FormCreate(Sender: TObject);
begin
  EditAno.Text := IntToStr(YearOf(Date()));
end;

procedure TFormRelDizimistas.BtnVisualizarClick(Sender: TObject);
begin
  if EditAno.Text = EmptyStr then
  begin
    InfoBox('Ano deve ser informado.');
    EditAno.SetFocus;
    Exit;
  end;

  BuscarDados;

  if RxMDizimistas.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  if Sender = BtnImprimir then
    QuickRep.Print
  else if Sender = BtnVisualizar then
    QuickRep.Preview;

end;

procedure TFormRelDizimistas.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  //QRLabelIEQ.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelIEQ.Caption := DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelFiltro.Caption := 'Mês de ' + ComboBoxMes.Text + ' - Ano ' + EditAno.Text;

end;

procedure TFormRelDizimistas.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormRelDizimistas.BuscarDados;
begin
  with DMJetro.QryRelatorios do
  begin
    SQL.Clear;
    SQL.Add('select Nome, sum(Valor) as Valor from DizimistasCulto');
    SQL.Add('Inner Join Cultos on Cultos.Codigo = DizimistasCulto.Culto');
    SQL.Add('where Cultos.Data between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := StrToDate('01/'+ FormatFloat('00',ComboBoxMes.ItemIndex +1) + '/' + EditAno.Text);
    ParamByName('dt2').AsDateTime := StrToDate(FormatDateTime('DD/MM/YYYY',EndOfAMonth(StrToInt(EditAno.Text), ComboBoxMes.ItemIndex +1))) + 0.99999999;
    SQL.Add('group by Nome');
    SQL.Add('order by Nome');
    Open;
    First;

    RxMDizimistas.Close;
    RxMDizimistas.Open;

    while not Eof do
    begin
      RxMDizimistas.Append;
      RxMDizimistasNome.AsString    := FieldByName('Nome').AsString;
      RxMDizimistasValor.AsCurrency := FieldByName('Valor').AsCurrency;
      RxMDizimistas.Post;
      Next;
    end;
  end;

end;

procedure TFormRelDizimistas.FormActivate(Sender: TObject);
begin
  QryConfig.Open;
end;

end.
