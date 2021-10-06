unit Avisos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, QuickRpt, QRCtrls, jpeg, DB,
  RxMemDS, DateUtils, Spin, RxGIF, Mask, rxToolEdit;

type
  TFormAvisos = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    RxM: TRxMemoryData;
    QuickRep: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabelSistema: TQRLabel;
    QRLabelIEQ: TQRLabel;
    QRLabelRel: TQRLabel;
    QRImage1: TQRImage;
    QRShape6: TQRShape;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    GroupBoxPeriodo: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    QRMemoFiltro: TQRMemo;
    RxMCodigo: TIntegerField;
    RxMData: TDateTimeField;
    RxMTipoEvento: TStringField;
    RxMDepto: TStringField;
    QRGroup1: TQRGroup;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    RxMDescricao: TStringField;
    RxMHora: TStringField;
    RxMDiaSemana: TStringField;
    QRGroup2: TQRGroup;
    RxMProgramacao: TRxMemoryData;
    RxMProgramacaoHora: TStringField;
    RxMProgramacaoDescricao: TStringField;
    QRShape3: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape4: TQRShape;
    RxMProgramacaoDescDiaSemana: TStringField;
    QRMemoHora: TQRMemo;
    QRMemoDiaSemana: TQRMemo;
    QRMemoDescricao: TQRMemo;
    QRMemoProg: TQRMemo;
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure FormShow(Sender: TObject);
    procedure RxMCalcFields(DataSet: TDataSet);
    procedure DateEditIniExit(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormAvisos: TFormAvisos;

implementation

uses UDmJetro, ADODB, Uni, DBAccess, MemDS, Funcoes, Math;

{$R *.dfm}

procedure TFormAvisos.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormAvisos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxM.Close;
  FormAvisos := nil;
  Action := caFree;
end;

procedure TFormAvisos.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAvisos.BtnVisualizarClick(Sender: TObject);
begin
  if DateEditIni.Date = 0 then
  begin
    InfoBox('Data Inicial deve ser informada.');
    DateEditIni.SetFocus;
    Exit;
  end;

  if DateEditFim.Date = 0 then
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

  if (RxM.IsEmpty) and
     (RxMProgramacao.IsEmpty) then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  if Sender = BtnImprimir then
    QuickRep.Print
  else if Sender = BtnVisualizar then
    QuickRep.Preview;

end;

procedure TFormAvisos.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  QRLabelIEQ.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;

  QRMemoFiltro.Lines.Clear;
  QRMemoFiltro.Lines.Add('Data: ' + DateEditIni.Text + ' - ' + DateEditFim.Text);

end;

procedure TFormAvisos.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormAvisos.BuscarDados;
begin
  with DMJetro.QryRelatorios do
  begin

    SQL.Clear;
    SQL.Add('select E.Codigo, E.Descricao, E.Data, E.Hora,');
    SQL.Add('       TE.Descricao TipoEvento, D.Descricao Depto');
    SQL.Add('from Eventos E');
    SQL.Add('inner join TiposEvento TE on TE.Codigo = E.Tipo');
    SQL.Add('left join DeptosEvento DE on DE.Evento = E.Codigo');
    SQL.Add('left join Departamentos D on D.Codigo = DE.Departamento');
    SQL.Add('where E.Data between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := DateEditIni.Date;
    ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;

    SQL.Add('order by E.Data, E.Hora, TE.Descricao, E.Descricao');

    Open;
    First;

    RxM.Close;
    RxM.Open;

    RxM.LoadFromDataSet(DMJetro.QryRelatorios, DMJetro.QryRelatorios.RecordCount, lmAppend);

  end;

  with DMJetro.QryRelatorios do
  begin
    SQL.Clear;
    SQL.Add('select P.Descricao, P.Hora,');
    SQL.Add('      CASE P.DiaSemana');
    SQL.Add('         WHEN 1 THEN ''Domingo''');
    SQL.Add('         WHEN 2 THEN ''Segunda''');
    SQL.Add('         WHEN 3 THEN ''Terca''');
    SQL.Add('         WHEN 4 THEN ''Quarta''');
    SQL.Add('         WHEN 5 THEN ''Quinta''');
    SQL.Add('         WHEN 6 THEN ''Sexta''');
    SQL.Add('         WHEN 7 THEN ''Sabado''');
    SQL.Add('         ELSE ''''');
    SQL.Add('      END DescDiaSemana');
    SQL.Add('from Programacao P');
    SQL.Add('where P.Ativo = 1');
    SQL.Add('order by P.DiaSemana, P.Hora');

    Open;
    First;

    RxMProgramacao.Close;
    RxMProgramacao.Open;

    RxMProgramacao.LoadFromDataSet(DMJetro.QryRelatorios, DMJetro.QryRelatorios.RecordCount, lmAppend);
  end;



end;

procedure TFormAvisos.FormShow(Sender: TObject);
begin
  DateEditIni.Date := Date;
  DateEditFim.Date := Date + 15;
  DateEditIni.SetFocus;
end;

procedure TFormAvisos.RxMCalcFields(DataSet: TDataSet);
begin
  if RxMData.AsDateTime > 0 then
    case DayOfTheWeek(RxMData.AsDateTime) of
      1: RxMDiaSemana.AsString := 'Segunda';
      2: RxMDiaSemana.AsString := 'Terca';
      3: RxMDiaSemana.AsString := 'Quarta';
      4: RxMDiaSemana.AsString := 'Quinta';
      5: RxMDiaSemana.AsString := 'Sexta';
      6: RxMDiaSemana.AsString := 'Sabado';
      7: RxMDiaSemana.AsString := 'Domingo';
    end;
end;

procedure TFormAvisos.DateEditIniExit(Sender: TObject);
begin
  if DateEditIni.Date < Date then
    DateEditIni.Date := Date;
end;

procedure TFormAvisos.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  QRMemoHora.Lines.Clear;
  QRMemoDiaSemana.Lines.Clear;
  QRMemoDescricao.Lines.Clear;
  QRMemoProg.Lines.Clear;


  with RxMProgramacao do
  begin
    if IsEmpty then
    begin
      PrintBand := False;
      Abort;
    end
    else
      PrintBand := True;

    First;
    while not EOF do
    begin
      QRMemoHora.Lines.Add(RxMProgramacaoHora.AsString);
      QRMemoDiaSemana.Lines.Add(RxMProgramacaoDescDiaSemana.AsString);
      QRMemoDescricao.Lines.Add(RxMProgramacaoDescricao.AsString);
      QRMemoProg.Lines.Add('Programação Semanal');
      Next;
    end;
  end;
end;

procedure TFormAvisos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if RxM.IsEmpty then
    QuickRep.DataSet := RxMProgramacao
  else
    QuickRep.DataSet := RxM;
end;

end.
