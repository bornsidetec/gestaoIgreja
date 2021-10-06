unit Fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DateUtils, ExtCtrls, Grids, DBGrids, DB,
  RxMemDS, ADODB, Uni, DBAccess, MemDS, Mask, rxToolEdit, rxCurrEdit;

type
  TFormFechamento = class(TForm)
    PanelDados: TPanel;
    Label1: TLabel;
    LblAno: TLabel;
    ComboBoxMes: TComboBox;
    EditAno: TEdit;
    BtnPesquisar: TBitBtn;
    PanelEntradas: TPanel;
    Label2: TLabel;
    LblEntradas: TLabel;
    PanelBotoes: TPanel;
    BtnSair: TBitBtn;
    BtnBaixar: TBitBtn;
    Label15: TLabel;
    LblSaidas: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label5: TLabel;
    LblSaldoAtual: TLabel;
    QryFechamento: TUniQuery;
    QryFechamentoCodigo: TIntegerField;
    QryFechamentoMes: TIntegerField;
    QryFechamentoAno: TIntegerField;
    QryFechamentoEntradas: TCurrencyField;
    QryFechamentoSaidas: TCurrencyField;
    QryFechamentoSaldoAnterior: TCurrencyField;
    QryFechamentoSaldoAtual: TCurrencyField;
    QryFechamentoUserInsert: TIntegerField;
    QryFechamentoDataInsert: TDateTimeField;
    EditSaldoAnterior: TRxCalcEdit;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnBaixarClick(Sender: TObject);
    procedure EditSaldoAnteriorExit(Sender: TObject);
    procedure EditAnoChange(Sender: TObject);
  private
    { Private declarations }
    procedure LimpaDados;
    procedure SaldoAtual;
  public
    { Public declarations }
    bEntradasTotal, bSaidasTotal,
    bSaldoAnterior, bSaldoAtual : Currency;
  end;

var
  FormFechamento: TFormFechamento;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormFechamento.BtnPesquisarClick(Sender: TObject);
var
  bDizimos,
  bGerais, bEspeciais,
  bMissoes, bOutras : Currency;

begin
  BtnBaixar.Enabled := False;

  if EditAno.Text = EmptyStr then
  begin
    InfoBox('Ano deve ser informado.');
    EditAno.SetFocus;
    Exit;
  end;

  if Fechado(ComboBoxMes.ItemIndex + 1, StrToInt(EditAno.Text)) then
  begin
    InfoBox('Mês de ' + ComboBoxMes.Text +
            ' de ' + EditAno.Text + #13 +
            'já teve o seu fechamento realizado.');
    BtnPesquisar.SetFocus;
    Abort;
  end;

  with DMJetro.QryAux do
  begin

    //Entradas
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

    bEntradasTotal := 0;
    bEntradasTotal := bDizimos + bGerais + bEspeciais + bOutras + bMissoes;


    //Saidas
    Close;
    SQL.Clear;

    SQL.Add('select TipoSaidas.Codigo, SUM(valor) valor');
    SQL.Add('from Saidas');
    SQL.Add('Inner Join TipoSaidas on TipoSaidas.Codigo = Saidas.TipoSaida');
    SQL.Add('where Extract(Month from Data) = :mes1');
    SQL.Add('  and Extract(Year from Data) = :ano1');
    SQL.Add('Group by TipoSaidas.Codigo, Extract(Month from data), Extract(Year from data)');
    SQL.Add('Union');
    SQL.Add('select 48, SUM(GV.valor) valor');
    SQL.Add('from Viagens');
    SQL.Add('Inner Join GastosViagem GV on GV.Viagem = Viagens.Codigo');
    SQL.Add('where Extract(Month from Viagens.DataSaida) = :mes2');
    SQL.Add('  and Extract(Year from Viagens.DataSaida) = :ano2');
    SQL.Add('Group by Extract(Month from DataSaida), Extract(Year from DataSaida)');

    ParamByName('mes1').Value := ComboBoxMes.ItemIndex +1;
    ParamByName('ano1').Value := StrToInt(EditAno.Text);

    ParamByName('mes2').Value := ComboBoxMes.ItemIndex +1;
    ParamByName('ano2').Value := StrToInt(EditAno.Text);

    Open;
    
    bSaidasTotal := 0;
    while not EOF do
    begin
      {
      if (FieldByName('Codigo').AsInteger <> 78) and
         (FieldByName('Codigo').AsInteger <> 80) then
        bSaidasTotal := bSaidasTotal + FieldByName('Valor').AsCurrency;
      }
      bSaidasTotal := bSaidasTotal + FieldByName('Valor').AsCurrency;        
      Next;
    end;

  end;

  if (bEntradasTotal = 0) then
  begin
    InfoBox('Nenhum lançamento de Entradas registrado.');
    ComboBoxMes.SetFocus;
    Abort;
  end;

  if (bSaidasTotal = 0) then
  begin
    InfoBox('Nenhum lançamento de Saídas registrado');
    ComboBoxMes.SetFocus;
    Abort;
  end;

  LblEntradas.Caption  := formatCurr('R$ #,##0.00', bEntradasTotal);
  LblSaidas.Caption := FormatCurr('R$ #,##0.00', bSaidasTotal);

  bSaldoAnterior := SaldoAnterior(ComboBoxMes.ItemIndex + 1, StrToInt(EditAno.Text));
  EditSaldoAnterior.Value := bSaldoAnterior;

  SaldoAtual;
  BtnBaixar.Enabled := True;
end;

procedure TFormFechamento.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;

end;

procedure TFormFechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryFechamento.Close;
  FormFechamento := nil;
  Action := caFree;
end;

procedure TFormFechamento.FormCreate(Sender: TObject);
begin
  EditAno.Text := IntToStr(YearOf(Date()));
  ComboBoxMes.ItemIndex := MonthOf(Date())-1;
  QryFechamento.Open;
end;

procedure TFormFechamento.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormFechamento.BtnBaixarClick(Sender: TObject);
begin

  BtnBaixar.SetFocus;

  if bSaldoAtual < 0 then
  begin
    InfoBox('Não é possível realizado o fechamento com saldo negativo');
    Abort;
  end;

  if not YesNoBox('Confirma o fechamento do Mês de ' + ComboBoxMes.Text + ' de ' + EditAno.Text) then
    Abort;

  {
  if not YesNoBox('Existem Lançamentos em meses anteriores que estão em aberto.' + #13 +
                  'Deseja continuar?') then
    Abort;
  }
  DMJetro.Conn.StartTransaction;

  QryFechamento.Append;
  QryFechamentoMes.AsInteger            := ComboBoxMes.ItemIndex + 1;
  QryFechamentoAno.AsString             := EditAno.Text;
  QryFechamentoEntradas.AsCurrency      := bEntradasTotal;
  QryFechamentoSaidas.AsCurrency        := bSaidasTotal;
  QryFechamentoSaldoAnterior.AsCurrency := EditSaldoAnterior.Value;
  QryFechamentoSaldoAtual.AsCurrency    := bSaldoAtual;
  QryFechamentoDataInsert.AsDateTime    := Now;
  QryFechamentoUserInsert.AsInteger     := FormMain.Usuario;

  try
    QryFechamento.Post;
    DMJetro.Conn.Commit
  except
    DMJetro.Conn.Rollback;
  end;

  LimpaDados;
  BtnBaixar.Enabled := False;

end;

procedure TFormFechamento.LimpaDados;
begin
  LblEntradas.Caption     := EmptyStr;
  LblSaidas.Caption       := EmptyStr;
  LblSaldoAtual.Caption   := EmptyStr;
  EditSaldoAnterior.Value := 0;
end;

procedure TFormFechamento.SaldoAtual;
begin

  bSaldoAtual    := (bEntradasTotal - bSaidasTotal) + EditSaldoAnterior.Value;
  LblSaldoAtual.Caption := FormatCurr('R$ #,##0.00', bSaldoAtual);

end;

procedure TFormFechamento.EditSaldoAnteriorExit(Sender: TObject);
begin
  SaldoAtual;
end;

procedure TFormFechamento.EditAnoChange(Sender: TObject);
begin
  LimpaDados;
end;

end.


