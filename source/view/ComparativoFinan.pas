unit ComparativoFinan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, TeeProcs, TeEngine, Chart, DbChart,
  Series, DB, ADODB, Uni, DBAccess, MemDS, DateUtils, Mask, rxToolEdit, RxMemDS;

type
  TFormComparativoFinan = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    PanelDados: TPanel;
    BtnPesquisar: TBitBtn;
    DBChart1: TDBChart;
    BtnSair: TBitBtn;
    QryComparativo: TUniQuery;
    GroupBoxEntradas: TGroupBox;
    cboEntradas: TComboBox;
    GroupBoxPeriodo: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    QryComparativoTotalPresentes: TIntegerField;
    QryComparativoData: TDateTimeField;
    Series1: TBarSeries;
    RxMCompFinan: TRxMemoryData;
    RxMCompFinanValor: TCurrencyField;
    RxMCompFinanData: TDateTimeField;
    RxMCompFinanMaskData: TStringField;
    RadioGroupOpcao: TRadioGroup;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComparativoFinan: TFormComparativoFinan;

implementation

uses UDmJetro, Funcoes;

{$R *.dfm}

procedure TFormComparativoFinan.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormComparativoFinan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormComparativoFinan := nil;
end;

procedure TFormComparativoFinan.BtnPesquisarClick(Sender: TObject);
var
  mascara : String;
begin

  if DateEditIni.Text = '  /  /    ' then
  begin
    Infobox('Data Inicial deve ser informada.');
    DateEditIni.SetFocus;
    Exit;
  end;

  if DateEditFim.Text = '  /  /    ' then
  begin
    Infobox('Data Final deve ser informada.');
    DateEditIni.SetFocus;
    Exit;
  end;

  if DateEditFim.Date < DateEditIni.Date then
  begin
    Infobox('Data Inicial deve ser menor ou igual a Data Final.');
    DateEditIni.SetFocus;
    Exit;
  end;

  RxMCompFinan.Close;
  with DmJetro.QryAux do
  begin
    SQL.Clear;

    if RadioGroupOpcao.ItemIndex = 0 then
      SQL.Add('SELECT Cultos.Data,')
    else if RadioGroupOpcao.ItemIndex = 1 then
      SQL.Add('SELECT Extract(Month from Cultos.Data) as Mes, Extract(Year from Cultos.Data) as Ano,')
    else if RadioGroupOpcao.ItemIndex = 2 then
      SQL.Add('SELECT Extract(Year from Cultos.Data) as Ano,');


    if cboEntradas.ItemIndex = 0 then
    begin
      SQL.Add('(Sum(Cultos.OfertasGerais) +');
      SQL.Add('Sum(Cultos.OfertasEspeciais) +');
      SQL.Add('Sum(Cultos.OutrasEntradas) +');
      SQL.Add('Sum(Cultos.OfertasMissoes) +');


      SQL.Add('COALESCE((SELECT Sum(OC.Valor) from OfertantesCulto OC');
      SQL.Add('        Left Join Cultos C on C.Codigo = OC.Culto');
      if RadioGroupOpcao.ItemIndex = 0 then
      begin
        SQL.Add('        where C.Data = Cultos.Data');
        SQL.Add('        group by C.Data),0) + ');
      end
      else if RadioGroupOpcao.ItemIndex = 1 then
      begin
        SQL.Add('        where Extract(Month from C.Data) = Extract(Month from Cultos.Data) and Extract(Year from C.Data) = Extract(Year from Cultos.Data)');
        SQL.Add('        group by Extract(Month from C.Data), Extract(Year from C.Data)),0) + ');
      end
      else if RadioGroupOpcao.ItemIndex = 2 then
      begin
        SQL.Add('        where Extract(Year from C.Data) = Extract(Year from Cultos.Data)');
        SQL.Add('        group by Extract(Year from C.Data)),0) + ');
      end;


      SQL.Add('COALESCE((SELECT Sum(DC.Valor) from DizimistasCulto DC');
      SQL.Add('        Left Join Cultos C on C.Codigo = DC.Culto');
      if RadioGroupOpcao.ItemIndex = 0 then
      begin
        SQL.Add('        where C.Data = Cultos.Data');
        SQL.Add('        group by C.Data),0)) as Valor');
      end
      else if RadioGroupOpcao.ItemIndex = 1 then
      begin
        SQL.Add('        where Extract(Month from C.Data) = Extract(Month from Cultos.Data) and Extract(Year from C.Data) = Extract(Year from Cultos.Data)');
        SQL.Add('        group by Extract(Month from C.Data), Extract(Year from C.Data)),0)) as Valor');
      end
      else if RadioGroupOpcao.ItemIndex = 2 then
      begin
        SQL.Add('        where Extract(Year from C.Data) = Extract(Year from Cultos.Data)');
        SQL.Add('        group by Extract(Year from C.Data)),0)) as Valor');
      end;
    end

    else if cboEntradas.ItemIndex = 1 then
      SQL.Add('Sum(DizimistasCulto.Valor) as Valor')
    else if cboEntradas.ItemIndex = 2 then
      SQL.Add('Sum(Cultos.OfertasGerais) as Valor')
    else if cboEntradas.ItemIndex = 3 then
    {

select Mes, Ano, SUM(Valor) Valor
from (
SELECT Extract(Month from Cultos.Data) as Mes, Extract(Year from Cultos.Data) as Ano,
Sum((Cultos.OfertasEspeciais) ) as Valor
FROM Cultos 
WHERE Cultos.Data between '20110101 00:00:00' and '20120131 23:59:59'
Group by Extract(Month from Cultos.Data), Extract(Year from cultos.Data)
Union
SELECT Extract(Month from Cultos.Data) as Mes, Extract(Year from Cultos.Data) as Ano,
Sum(OfertantesCulto.Valor) as Valor
FROM Cultos 
Left JOIN OfertantesCulto ON Cultos.Codigo = OfertantesCulto.Culto
WHERE Cultos.Data between '20110101 00:00:00' and '20120131 23:59:59'
Group by Extract(Month from Cultos.Data), Extract(Year from cultos.Data)
) as OfertasEspeciais
Group by Mes, Ano

    }
      SQL.Add('(sum(Cultos.OfertasEspeciais) + sum(OfertantesCulto.Valor)) as Valor')
    else if cboEntradas.ItemIndex = 4 then
      SQL.Add('Sum(Cultos.OfertasMissoes) as Valor')
    else if cboEntradas.ItemIndex = 5 then
      SQL.Add('Sum(Cultos.OutrasEntradas) as Valor');

    SQL.Add('FROM Cultos ');

    if cboEntradas.ItemIndex = 1 then
      SQL.Add('Left JOIN DizimistasCulto ON Cultos.Codigo = DizimistasCulto.Culto');

    if cboEntradas.ItemIndex = 3 then
      SQL.Add('Left JOIN OfertantesCulto ON Cultos.Codigo = OfertantesCulto.Culto');


    SQL.Add('WHERE Cultos.Data between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := DateEditIni.Date;
    ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;

    if RadioGroupOpcao.ItemIndex = 0 then
    begin
      SQL.Add('Group by Cultos.Data');
      mascara := 'DD/MM/YYYY';
    end
    else if RadioGroupOpcao.ItemIndex = 1 then
    begin
      SQL.Add('Group by Extract(Month from Cultos.Data), Extract(Year from cultos.Data)');
      mascara := 'MMM/YYYY';
    end
    else if RadioGroupOpcao.ItemIndex = 2 then
    begin
      SQL.Add('Group by Extract(Year from Cultos.Data)');
      mascara := 'YYYY';
    end;

    Open;

    RxMCompFinan.Open;
    while not Eof do
    begin
      RxMCompFinan.Append;
      RxMCompFinanValor.AsCurrency := FieldByName('Valor').AsCurrency;

      if RadioGroupOpcao.ItemIndex = 0 then
        RxMCompFinanData.Value := FieldByName('Data').Value
      else if RadioGroupOpcao.ItemIndex = 1 then
        RxMCompFinanData.Value := StrToDate('1/' + FieldByName('Mes').AsString + '/' + FieldByName('Ano').AsString)
      else if RadioGroupOpcao.ItemIndex = 2 then
        RxMCompFinanData.Value := StrToDate('1/1/' + FieldByName('Ano').AsString);
      RxMCompFinanData.DisplayFormat := mascara;
      RxMCompFinanData.EditMask      := mascara;
      RxMCompFinan.Post;
      Next;
    end;

  end;

end;

procedure TFormComparativoFinan.FormCreate(Sender: TObject);
begin
  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
end;

end.
