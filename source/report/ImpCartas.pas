unit ImpCartas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin, RLReport, RLRichText, RLTypes, RLConsts;

type
  TFormImpCartas = class(TForm)
    RxMem: TRxMemoryData;
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnSair: TBitBtn;
    GroupBoxData: TGroupBox;
    Label3: TLabel;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    BtnPesquisar: TBitBtn;
    ChkTodos: TCheckBox;
    QryDados: TUniQuery;
    ChkListBox: TCheckListBox;
    GroupBoxAniversario: TGroupBox;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RgpTipoPessoa: TRadioGroup;
    Label1: TLabel;
    SpdBtnCartas: TSpeedButton;
    LblDescCarta: TLabel;
    EditCarta: TEdit;
    RxMemConteudo: TMemoField;
    Ds: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBRichText2: TRLDBRichText;
    RLBand2: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLReport2: TRLReport;
    RLBand4: TRLBand;
    RLDBRichText1: TRLDBRichText;
    RLBand5: TRLBand;
    RLImage2: TRLImage;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    RLDraw4: TRLDraw;
    RxMemEndereco: TRxMemoryData;
    RxMemEnderecoNome: TStringField;
    RxMemEnderecoEndRua: TStringField;
    RxMemEnderecoEndNumero: TStringField;
    RxMemEnderecoEndComplemento: TStringField;
    RxMemEnderecoEndBairro: TStringField;
    RxMemEnderecoCidadeEstado: TStringField;
    RxMemEnderecoEndCep: TStringField;
    GroupBox1: TGroupBox;
    SpinCol: TRxSpinEdit;
    SpinLin: TRxSpinEdit;
    Label2: TLabel;
    Label4: TLabel;
    ChkEtiquetas: TCheckBox;
    BtnVisualizar: TBitBtn;
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRDBRichText1: TQRDBRichText;
    PageHeaderBand1: TQRBand;
    QRLabelSistema: TQRLabel;
    QRShape6: TQRShape;
    QRImage1: TQRImage;
    QRLabelIEQ: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QuickRepA5: TQuickRep;
    PageHeaderBand2: TQRBand;
    PageFooterBand2: TQRBand;
    DetailBand3: TQRBand;
    QRImage2: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QuickRepEtiq: TQuickRep;
    QRBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRMemoRuaNComp: TQRMemo;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLblCep: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure ChkTodosClick(Sender: TObject);
    procedure EditCartaExit(Sender: TObject);
    procedure EditCartaEnter(Sender: TObject);
    procedure EditCartaKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnCartasClick(Sender: TObject);
    procedure RgpTipoPessoaClick(Sender: TObject);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure EditCartaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormImpCartas: TFormImpCartas;

implementation

uses UDmJetro, Funcoes, DateUtils, Math;

{$R *.dfm}

procedure TFormImpCartas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormImpCartas  := nil;
  Action := caFree;

end;

procedure TFormImpCartas.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormImpCartas.BtnVisualizarClick(Sender: TObject);
var
  Fichas : String;
  i : Integer;
  Formato : Integer;
begin

  RxMem.Close;
  RxMem.Open;
  Fichas := EmptyStr;

  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    if ChkListBox.Checked[i] then
      Fichas := Fichas + copy(ChkListBox.Items.Strings[i],1,4) + ',';
  end;

  if Fichas = EmptyStr then
  begin
    InfoBox('Selecione ao menos um Nome.');
    Abort;
  end;

  Fichas := '(' + copy(Fichas, 1, Length(Fichas) - 1) + ')';

  with QryDados do
  begin
    Close;
    SQL.Clear;
    if RgpTipoPessoa.ItemIndex = 0 then
    begin
      SQL.Add('select M.Nome, C.Conteudo, C.Formato,');
      SQL.Add('       (I.EndCidade) as Cidade');
      SQL.Add('from Membros M, Igrejas I, Cartas C');
      SQL.Add('where M.FichaNumero in ' + Fichas);
      SQL.Add('  and C.Codigo = ' + EditCarta.Text);
      SQL.Add('order by M.Nome, M.FichaNumero');
    end
    else
    begin
      SQL.Add('select V.Nome, C.Conteudo, C.Formato,');
      SQL.Add('       (I.EndCidade) as Cidade');
      SQL.Add('from Visitantes V, Igrejas I, Cartas C');
      SQL.Add('where V.Codigo in ' + Fichas);
      SQL.Add('  and C.Codigo = ' + EditCarta.Text);
      SQL.Add('order by V.Nome, V.Codigo');
    end;
    Open;
  end;

  if QryDados.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  RxMem.Close;
  RxMem.Open;

  QryDados.First;

  Formato := QryDados.FieldByName('Formato').AsInteger;

  while not QryDados.Eof do
  begin
    RxMem.Append;
    RxMemConteudo.AsString := QryDados.FieldByName('Conteudo').AsString;
    RxMemConteudo.AsString := StringReplace(RxMemConteudo.AsString,
                                            '<#NOME#>',
                                            PrimeiroNome(QryDados.FieldByName('Nome').AsString),
                                            [rfReplaceAll]);

    RxMemConteudo.AsString := StringReplace(RxMemConteudo.AsString,
                                            '<#DATA#>',
                                            FormatDateTime('DD/MM/YYYY',Date),
                                            [rfReplaceAll]);

    RxMemConteudo.AsString := StringReplace(RxMemConteudo.AsString,
                                            '<#DATA POR EXTENSO#>',
                                            QryDados.FieldByName('Cidade').AsString + ', ' + FormatDateTime('DDDDDD',Date),
                                            [rfReplaceAll]);
    RxMem.Post;
    QryDados.Next;
  end;

  case Formato of
    1 : begin
          if Sender = BtnImprimir then
            QuickRep.Print
          else
            QuickRep.Preview;
        end;
    2 : begin
          if Sender = BtnImprimir then
            QuickRepA5.Print
          else
            QuickRepA5.Preview;
        end;
  end;

  if ChkEtiquetas.Checked then
  begin

    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      if RgpTipoPessoa.ItemIndex = 0 then
      begin
        SQL.Add('select M.Nome, M.EndRua, M.EndNumero,');
        SQL.Add('       M.EndComplemento, M.EndBairro,');
        SQL.Add('       (M.EndCidade || ''-'' || M.EndEstado) CidadeEstado, M.EndCep');
        SQL.Add('from Membros M');
        SQL.Add('where M.FichaNumero in ' + Fichas);
        SQL.Add('order by M.Nome, M.FichaNumero');
      end
      else
      begin
        SQL.Add('select V.Nome, V.EndRua, V.EndNumero,');
        SQL.Add('       V.EndComplemento, V.EndBairro,');
        SQL.Add('       (V.EndCidade || ''-'' || V.EndEstado) CidadeEstado, V.EndCep');
        SQL.Add('from Visitantes V');
        SQL.Add('where V.Codigo in ' + Fichas);
        SQL.Add('order by V.Nome, V.Codigo');
      end;
      Open;
      First;
    end;
    
    RxMemEndereco.Close;
    RxMemEndereco.Open;
    RxMemEndereco.LoadFromDataSet(DMJetro.QryAux, DMJetro.QryAux.RecordCount, lmAppend);

    AjusteEtiqueta(RxMemEndereco, SpinLin.AsInteger, SpinCol.AsInteger, 9, False);
    if Sender = BtnImprimir then
      QuickRepEtiq.Print
    else
      QuickRepEtiq.Preview;

  end;

end;

procedure TFormImpCartas.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormImpCartas.BuscarDados;
begin

  with DmJetro.QryRelatorios do
  begin
    Close;
    SQL.Clear;

    if RgpTipoPessoa.ItemIndex = 0 then
    begin
      SQL.Add('select M.FichaNumero as Codigo, M.Nome');
      SQL.Add('from Membros M');
      SQL.Add('where M.Status in (1,2,3,4,5)'); //Todos os Status
      if DateEditIni.Date > 0 then
      begin
        SQL.Add('  and M.DataInsert between :dt1 and :dt2');
        ParamByName('dt1').AsDateTime := DateEditIni.Date;
        ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
      end;
      if DateEdit1.Date > 0 then
      begin
        SQL.Add('  and Month(M.DataNascimento) between :m1 and :m2');
        SQL.Add('  and Day(M.DataNascimento) between :d1 and :d2');
        ParamByName('m1').AsInteger  := MonthOfTheYear(DateEdit1.Date);
        ParamByName('m2').AsInteger  := MonthOfTheYear(DateEdit2.Date);
        ParamByName('d1').AsInteger  := DayOf(DateEdit1.Date);
        ParamByName('d2').AsInteger  := DayOf(DateEdit2.Date);
      end;
      SQL.Add('order by M.Nome');
    end
    else
    begin
      SQL.Add('select V.Codigo, V.Nome');
      SQL.Add('from Visitantes V');
      SQL.Add('where V.Status = 1');
      if DateEditIni.Date > 0 then
      begin
        SQL.Add('  and V.DataInsert between :dt1 and :dt2');
        ParamByName('dt1').AsDateTime := DateEditIni.Date;
        ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
      end;
      if DateEdit1.Date > 0 then
      begin
        SQL.Add('  and V.MesNasc between :m1 and :m2');
        SQL.Add('  and V.DiaNasc between :d1 and :d2');
        ParamByName('m1').Value  := MonthOfTheYear(DateEdit1.Date);
        ParamByName('m2').Value  := MonthOfTheYear(DateEdit2.Date);
        ParamByName('d1').Value  := DayOf(DateEdit1.Date);
        ParamByName('d2').Value  := DayOf(DateEdit2.Date);
      end;
      SQL.Add('order by V.Nome');
    end;

    Open;

    First;

    ChkListBox.Clear;
    while not Eof do
    begin
      ChkListBox.Items.Add(FormatFloat('0000', FieldByName('Codigo').AsInteger) +
                               ' - ' +
                               FieldByName('Nome').AsString);
      Next;
    end;
  end;
end;

procedure TFormImpCartas.BtnPesquisarClick(Sender: TObject);
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



  if (DateEdit1.Date = 0) and (DateEdit2.Date > 0) then
  begin
    InfoBox('Data Inicial deve ser informada.');
    DateEdit1.SetFocus;
    Exit;
  end;

  if (DateEdit2.Date = 0) and (DateEdit1.Date > 0) then
  begin
    InfoBox('Data Final deve ser informada.');
    DateEdit2.SetFocus;
    Exit;
  end;

  if DateEdit1.Date > DateEdit2.Date then
  begin
    InfoBox('Data Inicial deve ser menor ou igual a Data Final.');
    DateEdit1.SetFocus;
    Exit;
  end;


  if Trim(EditCarta.Text) = EmptyStr then
  begin
    InfoBox('Carta deve ser informada.');
    EditCarta.SetFocus;
    Exit;
  end;

  BuscarDados;

end;

procedure TFormImpCartas.ChkTodosClick(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    ChkListBox.Checked[i] := ChkTodos.Checked;
  end;
end;

procedure TFormImpCartas.EditCartaExit(Sender: TObject);
begin
  if EditCarta.Text =  EmptyStr then
    Abort;

  LblDescCarta.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Descricao from Cartas');
    SQL.Add('where Codigo = :Carta');
    ParamByName('Carta').Value := EditCarta.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Carta não localizada.');
      EditCarta.SetFocus;
      Abort;
    end;

    LblDescCarta.Caption := FieldByName('Descricao').AsString;

  end;

end;

procedure TFormImpCartas.EditCartaEnter(Sender: TObject);
begin
  LblDescCarta.Caption := EmptyStr;

end;

procedure TFormImpCartas.EditCartaKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormImpCartas.SpdBtnCartasClick(Sender: TObject);
begin
  EditCarta.SetFocus;
  EditCarta.Text := Buscar('Cartas','Codigo','Descricao', 'Descricao')

end;

procedure TFormImpCartas.RgpTipoPessoaClick(Sender: TObject);
begin
  ChkListBox.Clear;
end;
 
procedure TFormImpCartas.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if trim(RxMemEnderecoNome.AsString) <> EmptyStr then
  begin
    QRMemoRuaNComp.Lines.Clear;
    QRMemoRuaNComp.Lines.Add(RxMemEnderecoEndRua.AsString + ', ' +
                             RxMemEnderecoEndNumero.AsString + ' - ' +
                             RxMemEnderecoEndComplemento.AsString);

    QRLblCep.Enabled := not (RxMemEndereco.Fields[0].AsString = EmptyStr);
    QRLblCep.Caption := 'CEP: ' + Copy(RxMemEnderecoEndCep.AsString, 1, 5) + '-' + Copy(RxMemEnderecoEndCep.AsString, 6, 3);
  end
  else
  begin
    QRLblCep.Caption := '';
  end;
end;

procedure TFormImpCartas.EditCartaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCartas.Click;
end;

end.
