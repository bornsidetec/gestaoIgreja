unit RelEmprestimos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, QuickRpt, QRCtrls, jpeg, DB,
  RxMemDS, DateUtils, Spin, RxGIF, Mask, rxToolEdit, MemDS, DBAccess, Uni;

type
  TFormRelEmprestimos = class(TForm)
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
    QRShape6: TQRShape;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData3: TQRSysData;
    Label2: TLabel;
    SpdBtnMembros: TSpeedButton;
    LblNomeMembro: TLabel;
    EditMembro: TEdit;
    Label3: TLabel;
    SpdBtnObjetos: TSpeedButton;
    LblTituloObjeto: TLabel;
    EditObjeto: TEdit;
    GroupBoxPeriodo: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    RgpTipoPeriodo: TRadioGroup;
    ChkDevolvidos: TCheckBox;
    QRMemoFiltro: TQRMemo;
    RxMCodigo: TIntegerField;
    RxMMembro: TIntegerField;
    RxMData: TDateTimeField;
    RxMDevolucao: TDateTimeField;
    RxMBaixa: TDateTimeField;
    RxMNomeMembro: TStringField;
    RxMTituloObjeto: TStringField;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    RxMAtraso: TIntegerField;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBImage1: TQRDBImage;
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure EditMembroEnter(Sender: TObject);
    procedure EditMembroExit(Sender: TObject);
    procedure EditObjetoEnter(Sender: TObject);
    procedure EditObjetoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure SpdBtnObjetosClick(Sender: TObject);
    procedure RxMCalcFields(DataSet: TDataSet);
    procedure EditMembroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditObjetoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormRelEmprestimos: TFormRelEmprestimos;

implementation

uses UDmJetro, ADODB, Funcoes, Math;

{$R *.dfm}

procedure TFormRelEmprestimos.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormRelEmprestimos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryConfig.Close;
  RxM.Close;
  FormRelEmprestimos := nil;
  Action := caFree;
end;

procedure TFormRelEmprestimos.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRelEmprestimos.BtnVisualizarClick(Sender: TObject);
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

  if RxM.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  if Sender = BtnImprimir then
    QuickRep.Print
  else if Sender = BtnVisualizar then
    QuickRep.Preview;

end;

procedure TFormRelEmprestimos.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  //QRLabelIEQ.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelIEQ.Caption := DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;

  QRMemoFiltro.Lines.Clear;
  QRMemoFiltro.Lines.Add('Data ' + RgpTipoPeriodo.Items.Strings[RgpTipoPeriodo.ItemIndex]  + ': ' + DateEditIni.Text + ' - ' + DateEditFim.Text);

  if EditMembro.Text <> EmptyStr then
    QRMemoFiltro.Lines.Add('Membro: ' + LblNomeMembro.Caption);

  if EditObjeto.Text <> EmptyStr then
    QRMemoFiltro.Lines.Add('Objeto: ' + LblTituloObjeto.Caption);

  if ChkDevolvidos.Checked then
    QRMemoFiltro.Lines.Add('Status: Devolvidos');

end;

procedure TFormRelEmprestimos.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormRelEmprestimos.BuscarDados;
begin
  with DMJetro.QryRelatorios do
  begin

    SQL.Clear;
    SQL.Add('select E.Codigo, E.Membro, E.Data, E.Devolucao, E.Baixa,');
    SQL.Add('       M.Nome NomeMembro, O.Titulo TituloObjeto');
    SQL.Add('from Emprestimos E');
    SQL.Add('inner join Membros M on M.FichaNumero = E.Membro');
    SQL.Add('inner join ItensEmprestimo IE on IE.Emprestimo = E.Codigo');
    SQL.Add('inner join Objetos O on O.Codigo = IE.Objeto');
    if RgpTipoPeriodo.ItemIndex = 0 then
      SQL.Add('where E.Data between :dt1 and :dt2')
    else
      SQL.Add('where E.Devolucao between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := DateEditIni.Date;
    ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;

    if EditMembro.Text <> EmptyStr then
    begin
      SQL.Add('  and M.FichaNumero = :membro');
      ParamByName('membro').Value := EditMembro.Text;
    end;

    if EditObjeto.Text <> EmptyStr then
    begin
      SQL.Add('  and O.Codigo = :objeto');
      ParamByName('objeto').Value := EditObjeto.Text;
    end;

    if ChkDevolvidos.Checked then
      SQL.Add('  and E.Fechamento = 1');
      
    SQL.Add('order by M.Nome, E.Membro, O.Titulo, IE.Objeto');

    Open;
    First;

    RxM.Close;
    RxM.Open;

    RxM.LoadFromDataSet(DMJetro.QryRelatorios, DMJetro.QryRelatorios.RecordCount, lmAppend);

  end;

end;

procedure TFormRelEmprestimos.EditMembroEnter(Sender: TObject);
begin
  LblNomeMembro.Caption := EmptyStr;

end;

procedure TFormRelEmprestimos.EditMembroExit(Sender: TObject);
begin
  if EditMembro.Text =  EmptyStr then
    Abort;

  LblNomeMembro.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome from Membros');
    SQL.Add('where FichaNumero = :membro');
    ParamByName('Membro').Value := EditMembro.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Membro não localizado.');
      EditMembro.SetFocus;
      Abort;
    end;

    LblNomeMembro.Caption := FieldByName('Nome').AsString;

  end;

end;

procedure TFormRelEmprestimos.EditObjetoEnter(Sender: TObject);
begin
  LblTituloObjeto.Caption := EmptyStr;

end;

procedure TFormRelEmprestimos.EditObjetoExit(Sender: TObject);
begin
  if EditObjeto.Text =  EmptyStr then
    Abort;

  LblTituloObjeto.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Titulo from Objetos');
    SQL.Add('where Codigo = :Objeto');
    ParamByName('Objeto').Value := EditObjeto.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Objeto não localizado.');
      EditObjeto.SetFocus;
      Abort;
    end;

    LblTituloObjeto.Caption := FieldByName('Titulo').AsString;

  end;

end;

procedure TFormRelEmprestimos.FormShow(Sender: TObject);
begin
  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
  DateEditIni.SetFocus;
end;

procedure TFormRelEmprestimos.SpdBtnMembrosClick(Sender: TObject);
begin
  EditMembro.SetFocus;
  EditMembro.Text := Buscar('Membros','FichaNumero','Nome', 'Nome')

end;

procedure TFormRelEmprestimos.SpdBtnObjetosClick(Sender: TObject);
begin
  EditObjeto.SetFocus;
  EditObjeto.Text := Buscar('Objetos','Codigo','Titulo', 'Titulo')

end;

procedure TFormRelEmprestimos.RxMCalcFields(DataSet: TDataSet);
begin
  if not RxMBaixa.IsNull then
    RxMAtraso.AsInteger := IfThen(Trunc(RxMBaixa.AsDateTime - RxMDevolucao.AsDateTime) > 0,
                                  Trunc(RxMBaixa.AsDateTime - RxMDevolucao.AsDateTime), 0);
end;

procedure TFormRelEmprestimos.EditMembroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

procedure TFormRelEmprestimos.EditObjetoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnObjetos.Click;
end;

procedure TFormRelEmprestimos.FormActivate(Sender: TObject);
begin
  QryConfig.Open;
end;

end.
