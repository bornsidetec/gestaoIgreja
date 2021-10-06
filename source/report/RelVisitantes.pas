unit RelVisitantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, QRCtrls, QuickRpt, ExtCtrls,
  DB, RxMemDS, RxGIF, MemDS, DBAccess, Uni;

type
  TFormRelVisitantes = class(TForm)
    QuickRep: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    RxVisitantes: TRxMemoryData;
    RxVisitantesNome: TStringField;
    RxVisitantesFoneResid: TStringField;
    RxVisitantesFoneCelular: TStringField;
    QRShape3: TQRShape;
    RxVisitantesEndRua: TStringField;
    RxVisitantesEndNumero: TStringField;
    RxVisitantesEndBairro: TStringField;
    RxVisitantesEndComplemento: TStringField;
    RxVisitantesEndCidade: TStringField;
    RxVisitantesEndEstado: TStringField;
    RxVisitantesEndCep: TStringField;
    RxVisitantesRUANUMERO: TStringField;
    RxVisitantesCIDADEESTADO: TStringField;
    QuickRepEnd: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand4: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText18: TQRDBText;
    RxVisitantesCodigo: TIntegerField;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    PanelFiltro: TPanel;
    RgOrdenacao: TRadioGroup;
    RgTipoRelatorio: TRadioGroup;
    GrpBoxDataCadastro: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    QRLabelSistema: TQRLabel;
    QRLabelIEQ: TQRLabel;
    QRLabelRel: TQRLabel;
    QRLabelFiltro: TQRLabel;
    QRShape6: TQRShape;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabelSistemaEnd: TQRLabel;
    QRLabelIEQEnd: TQRLabel;
    QRLabelRelEnd: TQRLabel;
    QRLabelFiltroEnd: TQRLabel;
    QRShape7: TQRShape;
    QRShape4: TQRShape;
    QRLabel10: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxVisitantesCalcFields(DataSet: TDataSet);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormRelVisitantes: TFormRelVisitantes;

implementation

uses UDmJetro, ADODB, Funcoes;

{$R *.dfm}

procedure TFormRelVisitantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryConfig.Close;
  Action := caFree;
  FormRelVisitantes := nil;
end;

procedure TFormRelVisitantes.RxVisitantesCalcFields(DataSet: TDataSet);
begin
  RxVisitantesRUANUMERO.AsString    := RxVisitantesEndRUA.AsString + ', ' + RxVisitantesEndNumero.AsString;
  RxVisitantesCIDADEESTADO.AsString := RxVisitantesEndCIDADE.AsString + ' - ' + RxVisitantesEndESTADO.AsString;
end;

procedure TFormRelVisitantes.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRelVisitantes.BtnVisualizarClick(Sender: TObject);
begin

  if (DateEditIni.Date = 0) and (DateEditFim.Date > 0) then
  begin
    InfoBox('Data Inicial deve ser informada.');
    DateEditIni.SetFocus;
    Exit;
  end;

  if (DateEditIni.Date > 0) and (DateEditFim.Date = 0) then
  begin
    InfoBox('Data Final deve ser informada.');
    DateEditFim.SetFocus;
    Exit;
  end;

  if DateEditFim.Date < DateEditIni.Date then
  begin
    InfoBox('Data Inicial deve ser menor ou igual a Data Final.');
    DateEditIni.SetFocus;
    Exit;
  end;

  BuscarDados;

  if RxVisitantes.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;
  

  if RgTipoRelatorio.ItemIndex = 0 then
    if Sender = BtnVisualizar then
      QuickRep.Preview
    else
      QuickRep.Print
  else if RgTipoRelatorio.ItemIndex = 1 then
    if Sender = BtnVisualizar then
      QuickRepEnd.Preview
    else
      QuickRepEnd.Print;

end;

procedure TFormRelVisitantes.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  //QRLabelIEQ.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelIEQ.Caption := DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelFiltro.Caption := 'Tipo do Relatório: TELEFONE';
  if DateEditIni.Date > 0 then
    QRLabelFiltro.Caption := QRLabelFiltro.Caption + ' / Data ' + DateEditIni.Text + ' a ' + DateEditFim.Text;

end;

procedure TFormRelVisitantes.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormRelVisitantes.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  //QRLabelIEQEnd.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelIEQEnd.Caption := DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelFiltroEnd.Caption := 'Tipo do Relatório: ENDEREÇO';
  if DateEditIni.Date > 0 then
    QRLabelFiltroEnd.Caption := QRLabelFiltroEnd.Caption + ' / Data ' + DateEditIni.Text + ' a ' + DateEditFim.Text;

end;

procedure TFormRelVisitantes.BuscarDados;
begin
  with DMJetro.QryRelatorios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Visitantes');
    if RgTipoRelatorio.ItemIndex = 0 then
      SQL.Add('where (FoneResid is not null or FoneCelular is not null)')
    else
      SQL.Add('where (EndCep is not null)');
    if DateEditIni.Text <> '  /  /    ' then
    begin
      SQL.Add('  and DataInsert between :dt1 and :dt2');
      ParamByName('dt1').AsDateTime := DateEditIni.Date;
      ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
    end;
    if RgOrdenacao.ItemIndex = 0 then
      SQL.Add('order by Nome;')
    else
      SQL.Add('order by DataInsert desc');

    Open;

    RxVisitantes.Close;
    RxVisitantes.Open;
    RxVisitantes.LoadFromDataSet(DMJetro.QryRelatorios, RecordCount, lmAppend);
  end;
end;

procedure TFormRelVisitantes.FormActivate(Sender: TObject);
begin
  QryConfig.Open;
end;

end.
