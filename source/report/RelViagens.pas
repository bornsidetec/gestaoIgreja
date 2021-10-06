unit RelViagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, QuickRpt, QRCtrls, jpeg, DB,
  RxMemDS, DateUtils, Spin, RxGIF, MemDS, DBAccess, Uni, QRPDFFilt;

type
  TFormRelViagens = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    Label1: TLabel;
    ComboBoxMes: TComboBox;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    RxMViagens: TRxMemoryData;
    LblAno: TLabel;
    EditAno: TEdit;
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    RxMIgreja: TRxMemoryData;
    RxMIgrejaCNPJ: TStringField;
    QRDBText3: TQRDBText;
    RxMIgrejaCidadeBairro: TStringField;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape8: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel32: TQRLabel;
    QRShape9: TQRShape;
    QRLabel33: TQRLabel;
    QRShape10: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    RxMViagensMotivo: TStringField;
    RxMViagensCodigo: TIntegerField;
    QRShape22: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape23: TQRShape;
    QRDBText15: TQRDBText;
    RxMViagensLocalSaida: TStringField;
    RxMViagensLocalDestino: TStringField;
    QRLabel7: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape24: TQRShape;
    QRDBText16: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape25: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape11: TQRShape;
    QRLabel10: TQRLabel;
    QRShape12: TQRShape;
    QRLabel11: TQRLabel;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape17: TQRShape;
    QRLabel13: TQRLabel;
    QRShape18: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText18: TQRDBText;
    RxMViagensPr: TStringField;
    RxMViagensPrA: TStringField;
    RxMViagensOb: TStringField;
    RxMViagensPGm: TStringField;
    RxMViagensCd: TStringField;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape19: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel14: TQRLabel;
    QRShape26: TQRShape;
    QRLabel16: TQRLabel;
    QRShape31: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape32: TQRShape;
    QRDBText20: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel20: TQRLabel;
    QRShape33: TQRShape;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel21: TQRLabel;
    QRShape34: TQRShape;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape35: TQRShape;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape36: TQRShape;
    QRDBText29: TQRDBText;
    RxMViagensA: TStringField;
    RxMViagensAValor: TCurrencyField;
    RxMViagensH: TStringField;
    RxMViagensHValor: TCurrencyField;
    RxMViagensT: TStringField;
    RxMViagensTValor: TCurrencyField;
    RxMViagensP: TStringField;
    RxMViagensPValor: TCurrencyField;
    RxMViagensC: TStringField;
    RxMViagensO: TStringField;
    RxMViagensOValor: TCurrencyField;
    RxMIgrejaCidade: TStringField;
    RxMViagensValorTotal: TCurrencyField;
    RxMViagensValorExtenso: TStringField;
    RxMViagensNome: TStringField;
    RxMViagensProntuario: TStringField;
    RxMViagensCValor: TCurrencyField;
    RxMViagensDataSaida: TDateTimeField;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBImage1: TQRDBImage;
    QRDBText30: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure EditPastorKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormRelViagens: TFormRelViagens;

implementation

uses UDmJetro, ADODB, Funcoes;

{$R *.dfm}

procedure TFormRelViagens.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormRelViagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryCOnfig.Close;
  RxMViagens.Close;
  FormRelViagens := nil;
  Action := caFree;
end;

procedure TFormRelViagens.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRelViagens.FormCreate(Sender: TObject);
begin
  EditAno.Text := IntToStr(YearOf(Date()));
end;

procedure TFormRelViagens.BtnVisualizarClick(Sender: TObject);
begin
  if EditAno.Text = EmptyStr then
  begin
    InfoBox('Ano deve ser informado.');
    EditAno.SetFocus;
    Exit;
  end;

  BuscarDados;

  if RxMViagens.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;
  {
  if not Fechado(ComboBoxMes.ItemIndex + 1, StrToInt(EditAno.Text)) then
  begin
    InfoBox('Antes da impressão realizar o fechamento do' + #13 +
            'Mês de ' + ComboBoxMes.Text + ' de ' + EditAno.Text);
    Abort;
  end;
  }
  if Sender = BtnImprimir then
    QuickRep.Print
  else if Sender = BtnVisualizar then
    QuickRep.Preview;

end;

procedure TFormRelViagens.EditPastorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormRelViagens.BuscarDados;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Igrejas');
    Open;

    RxMIgreja.Close;
    RxMIgreja.Open;
    RxMIgreja.Append;
    RxMIgrejaCNPJ.AsString := FieldByName('CNPJ').AsString;
    RxMIgrejaCidade.AsString := FieldByName('EndCidade').AsString;
    RxMIgrejaCidadeBairro.AsString := FieldByName('EndCidade').AsString + ' - ' + FieldByName('EndBairro').AsString;
    RxMIgreja.Post;

  end;

  with DMJetro.QryAux do
  begin
    SQL.Clear;
    SQL.Add('select GV.Viagem, GV.Tipo, sum(GV.Valor) Valor');
    SQL.Add('from GastosViagem GV');
    SQL.Add('where GV.Viagem = :cViagem');
    SQL.Add('Group By GV.Viagem, GV.Tipo');
  end;

  with DMJetro.QryAux2 do
  begin
    SQL.Clear;
    SQL.Add('select sum(GV.Valor) ValorTotal');
    SQL.Add('from GastosViagem GV');
    SQL.Add('where GV.Viagem = :cViagem');
  end;

  with DMJetro.QryRelatorios do
  begin

    SQL.Clear;
    SQL.Add('select V.Codigo, V.Cargo, V.CargoDescricao,');
    SQL.Add('       C1.Nome NomeSaidaCidade, V.SaidaEstado,');
    SQL.Add('       C2.Nome NomeDestinoCidade, V.DestinoEstado,');
    SQL.Add('       V.DataSaida, V.Motivo, V.Nome, V.Prontuario');
    SQL.Add('from Viagens V');
    SQL.Add('inner join CidadesIBGE C1 on C1.Codigo = V.SaidaCidade');
    SQL.Add('inner join CidadesIBGE C2 on C2.Codigo = V.DestinoCidade');
    SQL.Add('where V.DataSaida between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := StrToDate('01/'+ FormatFloat('00',ComboBoxMes.ItemIndex +1) + '/' + EditAno.Text);
    ParamByName('dt2').AsDateTime := StrToDate(FormatDateTime('DD/MM/YYYY',EndOfAMonth(StrToInt(EditAno.Text), ComboBoxMes.ItemIndex +1))) + 0.99999999;

    SQL.Add('Order by V.DataSaida');
    Open;

    First;

    RxMViagens.Close;
    RxMViagens.Open;

    while not Eof do
    begin
      RxMViagens.Append;
      RxMViagensCodigo.AsInteger        := FieldByName('Codigo').AsInteger;
      RxMViagensLocalSaida.AsString     := FieldByName('NomeSaidaCidade').AsString + '/' + FieldByName('SaidaEstado').AsString;
      RxMViagensLocalDestino.AsString   := FieldByName('NomeDestinoCidade').AsString + '/' + FieldByName('DestinoEstado').AsString;
      RxMViagensNome.AsString           := FieldByName('Nome').AsString;
      RxMViagensProntuario.AsString     := FieldByName('Prontuario').AsString;
      RxMViagensMotivo.AsString         := FieldByName('Motivo').AsString;
      RxMViagensDataSaida.AsDateTime  := FieldByName('DataSaida').AsDateTime;

      if FieldByName('Cargo').AsString = 'PASTOR' then
        RxMViagensPr.AsString := 'X'
      Else if FieldByName('Cargo').AsString = 'PASTOR AUXILIAR' then
        RxMViagensPrA.AsString := 'X'
      Else if FieldByName('Cargo').AsString = 'OBREIRO' then
        RxMViagensOb.AsString := 'X'
      Else if FieldByName('Cargo').AsString = 'PRESIDENTE G.M.' then
        RxMViagensPGm.AsString := 'X'
      Else if FieldByName('Cargo').AsString = 'COORDENADOR' then
        RxMViagensCd.AsString := 'X';


      DMJetro.QryAux.Close;
      DMJetro.QryAux.ParamByName('cViagem').Value := FieldByName('Codigo').AsInteger;
      DMJetro.QryAux.Open;

      while not DMJetro.QryAux.Eof do
      begin
        if DMJetro.QryAux.FieldByName('Tipo').AsString = 'HOSPEDAGEM' then
        begin
          RxMViagensH.AsString := 'X';
          RxMViagensHValor.AsCurrency := DMJetro.QryAux.FieldByName('Valor').AsCurrency;
        end
        Else if DMJetro.QryAux.FieldByName('Tipo').AsString = 'ALIMENTAÇÃO' then
        begin
          RxMViagensA.AsString := 'X';
          RxMViagensAValor.AsCurrency := DMJetro.QryAux.FieldByName('Valor').AsCurrency;
        end
        Else if DMJetro.QryAux.FieldByName('Tipo').AsString = 'TRANSPORTE' then
        begin
          RxMViagensT.AsString := 'X';
          RxMViagensTValor.AsCurrency := DMJetro.QryAux.FieldByName('Valor').AsCurrency;
        end
        Else if DMJetro.QryAux.FieldByName('Tipo').AsString = 'PEDÁGIO' then
        begin
          RxMViagensP.AsString := 'X';
          RxMViagensPValor.AsCurrency := DMJetro.QryAux.FieldByName('Valor').AsCurrency;
        end
        Else if DMJetro.QryAux.FieldByName('Tipo').AsString = 'COMBUSTÍVEL' then
        begin
          RxMViagensC.AsString := 'X';
          RxMViagensCValor.AsCurrency := DMJetro.QryAux.FieldByName('Valor').AsCurrency;
        end
        Else if DMJetro.QryAux.FieldByName('Tipo').AsString = 'OUTROS' then
        begin
          RxMViagensO.AsString := 'X';
          RxMViagensOValor.AsCurrency := DMJetro.QryAux.FieldByName('Valor').AsCurrency;
        end;
        DMJetro.QryAux.Next;
      end;

      DMJetro.QryAux2.Close;
      DMJetro.QryAux2.ParamByName('cViagem').Value := FieldByName('Codigo').AsInteger;
      DMJetro.QryAux2.Open;
      RxMViagensValorTotal.AsCurrency := DMJetro.QryAux2.FieldByName('ValorTotal').AsCurrency;

      RxMViagensValorExtenso.AsString   := '(' + Extenso(RxMViagensValorTotal.AsCurrency) + ')';
      RxMViagens.Post;
      Next;
    end;
  end;

end;

procedure TFormRelViagens.FormActivate(Sender: TObject);
begin
  QryConfig.Open;
end;

end.
