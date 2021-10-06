unit Comparativo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, TeeProcs, TeEngine, Chart, DbChart,
  Series, DB, ADODB, Uni, DBAccess, MemDS, DateUtils, Mask, rxToolEdit;

type
  TFormComparativo = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    PanelDados: TPanel;
    BtnPesquisar: TBitBtn;
    BtnSair: TBitBtn;
    QryComparativo: TUniQuery;
    GroupBoxDiaSemana: TGroupBox;
    cboDia: TComboBox;
    GroupBoxPeriodo: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    QryComparativoTotalPresentes: TIntegerField;
    QryComparativoData: TDateTimeField;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    GroupBox1: TGroupBox;
    cboCampo: TComboBox;
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
  FormComparativo: TFormComparativo;

implementation

uses Funcoes;

{$R *.dfm}

procedure TFormComparativo.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormComparativo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormComparativo := nil;
  Action := caFree;
end;

procedure TFormComparativo.BtnPesquisarClick(Sender: TObject);
const
  Campo : array[0..5] of string = ('BATISMOESPIRITOSANTO',
                                   'CONVERSOES',
                                   'CRIANCASAPRESENTADAS',
                                   'TOTALPRESENTES',
                                   'TESTEMUNHO',
                                   'VISITANTES');
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

  with QryComparativo do
  begin
    SQL.Clear;
    //SQL.Add('SELECT Cultos.TotalPresentes, Cultos.Data');
    SQL.Add('SELECT Cultos.' + Campo[cboCampo.ItemIndex] + ' as TotalPresentes, Cultos.Data');
    SQL.Add('FROM Cultos ');
    SQL.Add('WHERE Cultos.Data between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := DateEditIni.Date;
    ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
    if cboDia.ItemIndex > 0 then
    begin
      SQL.Add('  and Extract(WEEKDAY from Cultos.Data) = :wd');
      ParamByName('wd').Value := cboDia.ItemIndex - 1;
    end;

    Open;
  end;

end;

procedure TFormComparativo.FormCreate(Sender: TObject);
begin
  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
end;

end.
