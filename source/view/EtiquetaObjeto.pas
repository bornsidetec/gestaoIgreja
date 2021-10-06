unit EtiquetaObjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin;

type
  TFormEtiquetaObjeto = class(TForm)
    RxMem: TRxMemoryData;
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    GroupBoxData: TGroupBox;
    Label3: TLabel;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    BtnPesquisar: TBitBtn;
    ChkTodos: TCheckBox;
    QryDados: TUniQuery;
    QryDadosFichaNumero: TIntegerField;
    QryDadosNome: TStringField;
    QryDadosDataNascimento: TDateTimeField;
    ChkListBox: TCheckListBox;
    QryDadosBairroIgreja: TStringField;
    SpinLin: TRxSpinEdit;
    SpinCol: TRxSpinEdit;
    Label2: TLabel;
    Label4: TLabel;
    RxMemFichaNumero: TIntegerField;
    QryDadosCNPJIgreja: TStringField;
    RxMemTitulo: TStringField;
    RxMemDataInsert: TDateTimeField;
    RxMemCNPJIgreja: TStringField;
    RxMemBairroIgreja: TStringField;
    QuickRepEtiqueta: TQuickRep;
    DetailBand2: TQRBand;
    QRDBText11: TQRDBText;
    QRLblTitulo: TQRLabel;
    Ds: TDataSource;
    QRLblIgreja: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRMemoTitulo: TQRMemo;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure ChkTodosClick(Sender: TObject);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormEtiquetaObjeto: TFormEtiquetaObjeto;

implementation

uses UDmJetro, Funcoes, DateUtils;

{$R *.dfm}

procedure TFormEtiquetaObjeto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormEtiquetaObjeto  := nil;
  Action := caFree;

end;

procedure TFormEtiquetaObjeto.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormEtiquetaObjeto.BtnVisualizarClick(Sender: TObject);
var
  Codigos : String;
  i : Integer;
begin

  RxMem.Close;
  RxMem.Open;
  Codigos := EmptyStr;
  {
  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    if ChkListBox.Checked[i] then
      Codigos := Codigos + copy(ChkListBox.Items.Strings[i],1,4) + ',';
  end;

  if Codigos = EmptyStr then
  begin
    InfoBox('Selecione ao menos um Objeto.');
    Abort;
  end;

  Codigos := '(' + copy(Codigos, 1, Length(Codigos) - 1) + ')';

  with QryDados do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select O.Codigo, O.Titulo, O.DataInsert,');
    SQL.Add('       (SUBSTRING(I.CNPJ from 9 for 4)) as CNPJIgreja,');
    SQL.Add('       (I.EndCidade || '' - '' || I.EndBairro) as BairroIgreja');
    SQL.Add('from Objetos O, Igrejas I');
    SQL.Add('where O.Codigo in ' + Codigos);
    SQL.Add('order by O.Titulo');
    Open;
  end;

  if QryDados.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;


  RxMem.Close;
  RxMem.Open;

  AjusteEtiqueta(RxMem, SpinLin.AsInteger, SpinCol.AsInteger, 9);

  RxMem.LoadFromDataSet(QryDados, QryDados.RecordCount, lmAppend);

  if Sender = BtnImprimir then
    QuickRepEtiqueta.Print
  else
    QuickRepEtiqueta.Preview;
  }

  RxMem.Close;
  RxMem.Open;
  FOR i:= 1 to 30 do
  begin
    RxMem.Append;
    RxMemFichaNumero.AsInteger := i;
    RxMem.Post;
  end;

  QuickRepEtiqueta.Preview

end;

procedure TFormEtiquetaObjeto.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormEtiquetaObjeto.BuscarDados;
begin

  with DmJetro.QryRelatorios do
  begin
    Close;
    SQL.Clear;

    SQL.Add('select O.Codigo, O.Titulo');
    SQL.Add('from Objetos O');
    if DateEditIni.Date > 0 then
    begin
      SQL.Add('where O.DataInsert between :dt1 and :dt2');
      ParamByName('dt1').AsDateTime := DateEditIni.Date;
      ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
    end;
    SQL.Add('order by O.Titulo');
    Open;

    First;

    ChkListBox.Clear;
    while not Eof do
    begin
      ChkListBox.Items.Add(FormatFloat('0000', FieldByName('Codigo').AsInteger) +
                               ' - ' +
                               FieldByName('Titulo').AsString);
      Next;
    end;
  end;
end;

procedure TFormEtiquetaObjeto.BtnPesquisarClick(Sender: TObject);
begin

  if (DateEditIni.Date = 0) and (DateEditFim.Date > 0) then
  begin
    InfoBox('Data Inicial deve ser informada.');
    DateEditIni.SetFocus;
    Exit;
  end;

  if (DateEditFim.Date = 0) and (DateEditIni.Date > 0) then
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

end;

procedure TFormEtiquetaObjeto.ChkTodosClick(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    ChkListBox.Checked[i] := ChkTodos.Checked;
  end;
end;

procedure TFormEtiquetaObjeto.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  QRMemoTitulo.Lines.Text := RxMemTitulo.AsString;

  QRLblTitulo.Enabled := not (RxMem.Fields[0].AsString = EmptyStr);
  QRLblIgreja.Enabled := not (RxMem.Fields[0].AsString = EmptyStr);

end;

end.
