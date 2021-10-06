unit Balanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DateUtils, ExtCtrls, Grids, DBGrids, DB,
  RxMemDS, QuickRpt, QRCtrls, RxGIF, StrUtils, QRPDFFilt;

type
  TFormBalanco = class(TForm)
    RxMSaidas: TRxMemoryData;
    DsSaidas: TDataSource;
    RxMSaidasDescricao: TStringField;
    RxMSaidasValor: TCurrencyField;
    RxMEntradas: TRxMemoryData;
    RxMEntradasDescricao: TStringField;
    RxMEntradasValor: TCurrencyField;
    DsEntradas: TDataSource;
    DsTaxas: TDataSource;
    RxMTaxas: TRxMemoryData;
    RxMTaxasDescricao: TStringField;
    RxMTaxasValor: TCurrencyField;
    PanelDados: TPanel;
    Label1: TLabel;
    LblAno: TLabel;
    ComboBoxMes: TComboBox;
    EditAno: TEdit;
    BtnPesquisar: TBitBtn;
    PanelTaxas: TPanel;
    Label10: TLabel;
    LblTotalTaxas: TLabel;
    DBGridTaxas: TDBGrid;
    PanelSaidas: TPanel;
    Label15: TLabel;
    LblSaidas: TLabel;
    DBGridSaidas: TDBGrid;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    LblInformacao: TLabel;
    BtnEstornar: TBitBtn;
    RxMImpressao: TRxMemoryData;
    RxMImpressaoDescricao: TStringField;
    RxMImpressaoValor: TCurrencyField;
    RxMImpressaoTotal: TCurrencyField;
    QuickRep: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabelSistema: TQRLabel;
    QRLabelIEQ: TQRLabel;
    QRLabelRel: TQRLabel;
    QRImage1: TQRImage;
    QRShape6: TQRShape;
    QRMemoFiltro: TQRMemo;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRShape3: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    RxMImpressaoMovimento: TStringField;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLblSaldoInicial: TQRLabel;
    QRLblEntradas: TQRLabel;
    QRLblSaidas: TQRLabel;
    QRLblSaldoGeral: TQRLabel;
    QRShape5: TQRShape;
    QRLblPastor: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLblTesoureiro: TQRLabel;
    QRLabel11: TQRLabel;
    Zebra: TQRShape;
    PanelEntradas: TPanel;
    Label2: TLabel;
    LblEntradas: TLabel;
    Label3: TLabel;
    LblTotalEntradas: TLabel;
    DBGridEntradas: TDBGrid;
    Label4: TLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure EditAnoChange(Sender: TObject);
    procedure BtnEstornarClick(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }

    bTotal, bParcial, bDizimos,
    bGerais, bEspeciais,
    bMissoes, bOutras, bCongregacoes,
    tx4, tx2, txMissoes, txFundo, txTotal,
    bSaidasTotal : Currency;
    bEntradasTotal: Currency;

    Sede : Boolean;

    dCongregacoes: String;

  public
    { Public declarations }
    procedure LimpaDados;
    procedure BuscarDados;
  end;

var
  FormBalanco: TFormBalanco;

implementation

uses UDmJetro, Funcoes;

{$R *.dfm}

procedure TFormBalanco.BtnPesquisarClick(Sender: TObject);
begin

  if EditAno.Text = EmptyStr then
  begin
    InfoBox('Ano deve ser informado.');
    EditAno.SetFocus;
    Exit;
  end;

  if Fechado(ComboBoxMes.ItemIndex + 1, StrToInt(EditAno.Text)) then
  begin
    LblInformacao.Caption := 'Balancete Final';
    BtnEstornar.Visible := True;
  end
  else
  begin
    LblInformacao.Caption := 'Balancete Parcial';
    BtnEstornar.Visible := False;
  end;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select Sede from Igrejas');
    Open;
    if FieldByName('Sede').AsString = '1' then Sede := True else Sede := False;

    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(C.OfertasMissoes) OfertasMissoes,');
    SQL.Add('       SUM(C.OfertasGerais) OfertasGerais,');
    SQL.Add('       SUM(C.OfertasEspeciais) OfertasEspeciais,');
    SQL.Add('       SUM(C.OutrasEntradas) OutrasEntradas');
    SQL.Add('FROM Cultos C');
    SQL.Add('WHERE C.Data between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := StrToDate('01/'+ FormatFloat('00',ComboBoxMes.ItemIndex +1) + '/' + EditAno.Text);
    ParamByName('dt2').AsDateTime := StrToDate(FormatDateTime('DD/MM/YYYY',EndOfAMonth(StrToInt(EditAno.Text), ComboBoxMes.ItemIndex +1))) + 0.99999999;
    Open;
    bMissoes   := FieldByName('OfertasMissoes').AsCurrency;
    bGerais    := FieldByName('OfertasGerais').AsCurrency;
    bEspeciais := FieldByName('OfertasEspeciais').AsCurrency;
    bOutras    := FieldByName('OutrasEntradas').AsCurrency;

    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(OC.Valor) Ofertas');
    SQL.Add('FROM Cultos C');
    SQL.Add('Left Join OfertantesCulto OC on OC.Culto = C.Codigo');
    SQL.Add('WHERE C.Data between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := StrToDate('01/'+ FormatFloat('00',ComboBoxMes.ItemIndex +1) + '/' + EditAno.Text);
    ParamByName('dt2').AsDateTime := StrToDate(FormatDateTime('DD/MM/YYYY',EndOfAMonth(StrToInt(EditAno.Text), ComboBoxMes.ItemIndex +1))) + 0.99999999;
    Open;
    bEspeciais := bEspeciais + FieldByName('Ofertas').AsCurrency;

    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(DC.Valor) Dizimos');
    SQL.Add('FROM Cultos C');
    SQL.Add('Left Join DizimistasCulto DC on DC.Culto = C.Codigo');
    SQL.Add('WHERE C.Data between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := StrToDate('01/'+ FormatFloat('00',ComboBoxMes.ItemIndex +1) + '/' + EditAno.Text);
    ParamByName('dt2').AsDateTime := StrToDate(FormatDateTime('DD/MM/YYYY',EndOfAMonth(StrToInt(EditAno.Text), ComboBoxMes.ItemIndex +1))) + 0.99999999;
    Open;
    bDizimos   := FieldByName('Dizimos').AsCurrency;


    Close;
    SQL.Clear;
    SQL.Add('select TipoEntradas.Codigo, TipoEntradas.Descricao as TipoEntrada, SUM(valor) valor');
    SQL.Add('from Entradas');
    SQL.Add('Inner Join TipoEntradas on TipoEntradas.Codigo = Entradas.TipoEntrada');
    SQL.Add('where Extract(Month from Data) = :mes1');
    SQL.Add('  and Extract(Year from Data) = :ano1');
    SQL.Add('  and Entradas.TipoEntrada = 4'); // TipoEntrada = 4 refere-se a Entradas de Congregações
    SQL.Add('Group by TipoEntradas.Codigo, TipoEntradas.Descricao, Extract(Month from data), Extract(Year from data)');
    ParamByName('mes1').Value := ComboBoxMes.ItemIndex + 1;
    ParamByName('ano1').Value := StrToInt(EditAno.Text);
    Open;
    bCongregacoes := FieldByName('Valor').AsCurrency;
    dCongregacoes := FieldByName('TipoEntrada').AsString;

    bTotal := 0;
    bTotal := bDizimos + bGerais + bEspeciais + bOutras + bCongregacoes;

    tx4       := bTotal * 0.04;
    tx2       := bTotal * 0.02;
    txFundo   := bTotal * 0.01;
    txMissoes := bMissoes * 0.5;

    if not Sede then
      txTotal := (tx4 * 3) + txFundo + bMissoes
    else
      txTotal := (tx4 * 2) + tx2 + txFundo + bMissoes;


    RxMEntradas.Close;
    RxMEntradas.Open;

    if bDizimos > 0 then
    begin
      RxMEntradas.Append;
      RxMEntradasDescricao.AsString := 'Dízimos';
      RxMEntradasValor.AsCurrency   := bDizimos;
      RxMEntradas.Post;
    end;

    if bGerais > 0 then
    begin
      RxMEntradas.Append;
      RxMEntradasDescricao.AsString := 'Ofertas Gerais';
      RxMEntradasValor.AsCurrency   := bGerais;
      RxMEntradas.Post;
    end;

    if bEspeciais > 0 then
    begin
      RxMEntradas.Append;
      RxMEntradasDescricao.AsString := 'Ofertas Especiais';
      RxMEntradasValor.AsCurrency   := bEspeciais;
      RxMEntradas.Post;
    end;

    if bMissoes > 0 then
    begin
      RxMEntradas.Append;
      RxMEntradasDescricao.AsString := 'Ofertas Missões';
      RxMEntradasValor.AsCurrency   := bMissoes;
      RxMEntradas.Post;
    end;

    if bOutras > 0 then
    begin
      RxMEntradas.Append;
      RxMEntradasDescricao.AsString := 'Outras Entradas';
      RxMEntradasValor.AsCurrency   := bOutras;
      RxMEntradas.Post;
    end;

    if bCongregacoes > 0 then
    begin
      RxMEntradas.Append;
      RxMEntradasDescricao.AsString := dCongregacoes;
      RxMEntradasValor.AsCurrency   := bCongregacoes;
      RxMEntradas.Post;
    end;


    Close;
    SQL.Clear;
    SQL.Add('select TipoEntradas.Codigo, TipoEntradas.Descricao as TipoEntrada, SUM(valor) valor');
    SQL.Add('from Entradas');
    SQL.Add('Inner Join TipoEntradas on TipoEntradas.Codigo = Entradas.TipoEntrada');
    SQL.Add('where Extract(Month from Data) = :mes1');
    SQL.Add('  and Extract(Year from Data) = :ano1');
    SQL.Add('  and Entradas.TipoEntrada <> 4');
    SQL.Add('Group by TipoEntradas.Codigo, TipoEntradas.Descricao, Extract(Month from data), Extract(Year from data)');
    ParamByName('mes1').Value := ComboBoxMes.ItemIndex + 1;
    ParamByName('ano1').Value := StrToInt(EditAno.Text);
    Open;

    bEntradasTotal := 0;
    while not EOF do
    begin
      RxMEntradas.Append;
      RxMEntradasDescricao.AsString := FieldByName('TipoEntrada').AsString;
      RxMEntradasValor.AsCurrency   := FieldByName('Valor').AsCurrency;
      {
      if (FieldByName('Codigo').AsInteger <> 78) and
         (FieldByName('Codigo').AsInteger <> 80) then
        bSaidasTotal := bSaidasTotal + FieldByName('Valor').AsCurrency;
      }
      bEntradasTotal := bEntradasTotal + FieldByName('Valor').AsCurrency;

      RxMEntradas.Post;
      Next;
    end;

    RxMEntradas.First;
    LblEntradas.Caption  := formatCurr('R$ #,##0.00', bTotal);
    LblTotalEntradas.Caption := FormatCurr('R$ #,##0.00', bEntradasTotal + bTotal + bMissoes);

    RxMTaxas.Close;
    RxMTaxas.Open;

    if tx4 > 0 then
    begin
      if not Sede then
      begin
        RxMTaxas.Append;
        RxMTaxasDescricao.AsString := 'Taxa 4% CND';
        RxMTaxasValor.AsCurrency := tx4;
        RxMTaxas.Post;
      end
      else
      begin
        RxMTaxas.Append;
        RxMTaxasDescricao.AsString := 'Taxa 2% CND';
        RxMTaxasValor.AsCurrency := tx4/2;
        RxMTaxas.Post;
      end;

      RxMTaxas.Append;
      RxMTaxasDescricao.AsString := 'Taxa 4% CED';
      RxMTaxasValor.AsCurrency := tx4;
      RxMTaxas.Post;

      RxMTaxas.Append;
      RxMTaxasDescricao.AsString := 'Taxa 4% à Região';
      RxMTaxasValor.AsCurrency := tx4;
      RxMTaxas.Post;

    end;

    if txFundo > 0 then
    begin
      RxMTaxas.Append;
      RxMTaxasDescricao.AsString := 'Taxa 1% CND - Fundo Social';
      RxMTaxasValor.AsCurrency := txFundo;
      RxMTaxas.Post;
    end;

    if txMissoes > 0 then
    begin
      RxMTaxas.Append;
      RxMTaxasDescricao.AsString := 'Taxa 50% SGM';
      RxMTaxasValor.AsCurrency := txMissoes;
      RxMTaxas.Post;

      RxMTaxas.Append;
      RxMTaxasDescricao.AsString := 'Taxa 50% SEM';
      RxMTaxasValor.AsCurrency := txMissoes;
      RxMTaxas.Post;
    end;

    RxMTaxas.First;
    LblTotalTaxas.Caption := FormatCurr('R$ #,##0.00', txTotal);

  end;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;

    SQL.Add('select TipoSaidas.Codigo, TipoSaidas.Descricao as TipoSaida, SUM(valor) valor');
    SQL.Add('from Saidas');
    SQL.Add('Inner Join TipoSaidas on TipoSaidas.Codigo = Saidas.TipoSaida');
    SQL.Add('where Extract(Month from Data) = :mes1');
    SQL.Add('  and Extract(Year from Data) = :ano1');
    SQL.Add('Group by TipoSaidas.Codigo, TipoSaidas.Descricao, Extract(Month from data), Extract(Year from data)');
    SQL.Add('Union');
    SQL.Add('select 48, ''Viagens e Estadias (Hosped., Passagem, etc)'' as TipoSaida, SUM(GV.valor) valor');
    SQL.Add('from Viagens');
    SQL.Add('Inner Join GastosViagem GV on GV.Viagem = Viagens.Codigo');
    SQL.Add('where Extract(Month from Viagens.DataSaida) = :mes2');
    SQL.Add('  and Extract(Year from Viagens.DataSaida) = :ano2');
    SQL.Add('Group by Extract(Month from DataSaida), Extract(Year from DataSaida)');
    SQL.Add('order by 2');

    ParamByName('mes1').Value := ComboBoxMes.ItemIndex +1;
    ParamByName('ano1').Value := StrToInt(EditAno.Text);

    ParamByName('mes2').Value := ComboBoxMes.ItemIndex +1;
    ParamByName('ano2').Value := StrToInt(EditAno.Text);

    Open;
    RxMSaidas.Close;
    RxMSaidas.Open;
    bSaidasTotal := 0;
    while not EOF do
    begin
      RxMSaidas.Append;
      RxMSaidasDescricao.AsString := FieldByName('TipoSaida').AsString;
      RxMSaidasValor.AsCurrency   := FieldByName('Valor').AsCurrency;

      // Correção do somatório das Saídas | Taxas de Missoes também entram
      {
      if (FieldByName('Codigo').AsInteger <> 78) and
         (FieldByName('Codigo').AsInteger <> 80) then
        bSaidasTotal := bSaidasTotal + FieldByName('Valor').AsCurrency;
      }  
      bSaidasTotal := bSaidasTotal + FieldByName('Valor').AsCurrency;

      RxMSaidas.Post;
      Next;
    end;

    RxMSaidas.First;
    LblSaidas.Caption := FormatCurr('R$ #,##0.00', bSaidasTotal);

  end;

end;

procedure TFormBalanco.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;

end;

procedure TFormBalanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormBalanco := nil;
  Action := caFree;
end;

procedure TFormBalanco.FormCreate(Sender: TObject);
begin
  EditAno.Text := IntToStr(YearOf(Date()));
  ComboBoxMes.ItemIndex := MonthOf(Date())-1;

end;

procedure TFormBalanco.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormBalanco.BtnVisualizarClick(Sender: TObject);
begin

  if not Fechado(ComboBoxMes.ItemIndex + 1, StrToInt(EditAno.Text)) then
  begin
    InfoBox('Antes da impressão realizar o fechamento do' + #13 +
            'Mês de ' + ComboBoxMes.Text + ' de ' + EditAno.Text);
    Abort;
  end;

  RxMImpressao.Close;
  RxMImpressao.Open;

  BuscarDados;

  if RxMImpressao.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  if Sender = BtnImprimir then
    QuickRep.Print
  else if Sender = BtnVisualizar then
    QuickRep.Preview;


end;

procedure TFormBalanco.LimpaDados;
begin
  LblEntradas.Caption      := EmptyStr;
  LblSaidas.Caption        := EmptyStr;
  LblTotalTaxas.Caption    := EmptyStr;
  LblTotalEntradas.Caption := EmptyStr;

  LblInformacao.Caption   := EmptyStr;
  BtnEstornar.Visible := False;

  RxMSaidas.Close;
  RxMEntradas.Close;
  RxMTaxas.Close;

end;

procedure TFormBalanco.EditAnoChange(Sender: TObject);
begin
  LimpaDados;
end;

procedure TFormBalanco.BtnEstornarClick(Sender: TObject);
begin
  if not YesNoBox('Confirma o estorno do fechamento?') then
    Abort;

  DMJetro.Conn.StartTransaction;
  try
    with DMJetro.QryAux2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Delete from Fechamento where Mes = :mes and Ano = :ano');
      ParamByName('mes').Value := ComboBoxMes.ItemIndex + 1;
      ParamByName('ano').Value := StrToInt(EditAno.Text);
      ExecSQL;
    end;
    DMJetro.Conn.Commit;
    InfoBox('Estorno realizado com sucesso.');
    BtnPesquisarClick(BtnPesquisar);
  except
    InfoBox('Problemas ao executar o Estorno.');
    DMJetro.Conn.Rollback;
  end;

end;

procedure TFormBalanco.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  QRLabelIEQ.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString +
                        ' - ' + DmJetro.QryIgrejasEndBairro.AsString +
                        ' | CNPJ: ' + DMJetro.QryIgrejasCNPJ.AsString +
                        ' - ' + DMJetro.QryIgrejasCNPJCodigo.AsString;

  QRMemoFiltro.Lines.Clear;
  QRMemoFiltro.Lines.Add('Período: ' + ComboBoxMes.Text  + '/' + EditAno.Text);

end;

procedure TFormBalanco.BuscarDados;
begin
  {
  if not RxMEntradas.IsEmpty then
  begin
    RxMEntradas.First;
    while not RxMEntradas.Eof do
    begin
      RxMImpressao.Append;
      RxMImpressaoMovimento.AsString := 'Entradas';
      RxMImpressaoDescricao.AsString := RxMEntradasDescricao.AsString;
      RxMImpressaoValor.AsCurrency   := RxMEntradasValor.AsCurrency;
      RxMImpressaoTotal.AsCurrency   := bTotal;
      RxMImpressao.Post;

      RxMEntradas.Next;
    end;
  end;
  }


  if not RxMEntradas.IsEmpty then
  begin

    RxMImpressao.Append;
    RxMImpressaoMovimento.AsString := 'Entradas';
    RxMImpressaoDescricao.AsString := 'SubTotal de Entradas (Díz., Of. Gerais, Of. Esp., Congreg. e Out. Ent.)';
    RxMImpressaoValor.AsCurrency   := bTotal;
    RxMImpressaoTotal.AsCurrency   := bTotal + bEntradasTotal + bMissoes;
    RxMImpressao.Post;

    RxMEntradas.First;
    while not RxMEntradas.Eof do
    begin
      RxMImpressao.Append;
      RxMImpressaoMovimento.AsString := 'Entradas';
      RxMImpressaoDescricao.AsString := RxMEntradasDescricao.AsString;
      RxMImpressaoValor.AsCurrency   := RxMEntradasValor.AsCurrency;
      RxMImpressaoTotal.AsCurrency   := bTotal + bEntradasTotal;
      RxMImpressao.Post;

      RxMEntradas.Next;
    end;
  end;




  if not RxMSaidas.IsEmpty then
  begin
    RxMSaidas.First;
    while not RxMSaidas.Eof do
    begin
      RxMImpressao.Append;
      RxMImpressaoMovimento.AsString := 'Saidas';
      RxMImpressaoDescricao.AsString := RxMSaidasDescricao.AsString;
      RxMImpressaoValor.AsCurrency   := RxMSaidasValor.AsCurrency;
      RxMImpressaoTotal.AsCurrency   := bSaidasTotal;
      RxMImpressao.Post;

      RxMSaidas.Next;
    end;
  end;

  if not RxMTaxas.IsEmpty then
  begin
    RxMTaxas.First;
    while not RxMTaxas.Eof do
    begin
      RxMImpressao.Append;
      RxMImpressaoMovimento.AsString := 'Taxas';
      RxMImpressaoDescricao.AsString := RxMTaxasDescricao.AsString;
      RxMImpressaoValor.AsCurrency   := RxMTaxasValor.AsCurrency;
      RxMImpressaoTotal.AsCurrency   := txTotal;
      RxMImpressao.Post;

      RxMTaxas.Next;
    end;
  end;

end;

procedure TFormBalanco.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with DMJetro.QryRelatorios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from Fechamento');
    SQL.Add('where Mes = :mes and Ano = :ano');
    ParamByName('mes').Value := ComboBoxMes.ItemIndex + 1;
    ParamByName('ano').Value := StrToInt(EditAno.Text);
    Open;

    QRLblSaldoInicial.Caption := formatCurr('R$ #,##0.00', FieldByName('SaldoAnterior').AsCurrency);
    QRLblEntradas.Caption     := formatCurr('R$ #,##0.00', FieldByName('Entradas').AsCurrency);
    QRLblSaidas.Caption       := formatCurr('R$ #,##0.00', FieldByName('Saidas').AsCurrency);
    QRLblSaldoGeral.Caption   := formatCurr('R$ #,##0.00', FieldByName('SaldoAtual').AsCurrency);

    Close;
    SQL.Clear;
    SQL.Add('Select 0 Seq, P.Nome, ''Pastor'' Cargo');
    SQL.Add('from Igrejas I');
    SQL.Add('inner join Pastores P on P.Codigo = I.Pastor');
    SQL.Add('Union');
    SQL.Add('Select 1 Seq, M.Nome, ''Tesoureiro'' Cargo');
    SQL.Add('from CDL C');
    SQL.Add('inner join CargosCDL CC on CC.Codigo = C.Cargo and CC.Descricao = ''Tesoureiro''');
    SQL.Add('inner join Membros M on M.FichaNumero = C.Membro');
    SQL.Add('where C.Ano = :ano');
    SQL.Add('order by 1');
    ParamByName('ano').Value := StrToInt(EditAno.Text);
    Open;
    First;

    QRLblPastor.Caption     := FieldByName('Nome').AsString;
    Next;
    QRLblTesoureiro.Caption := FieldByName('Nome').AsString;

  end;
end;

procedure TFormBalanco.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Zebra.Enabled := Not Zebra.Enabled;
end;

procedure TFormBalanco.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Zebra.Enabled := True;
end;

end.
