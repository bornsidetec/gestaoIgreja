unit RelSustentoPastoral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, QuickRpt, QRCtrls, jpeg, DB,
  RxMemDS, DateUtils, Spin, RxGIF, MemDS, DBAccess, Uni, QRPDFFilt;

type
  TFormRelSustentoPastoral = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    Label1: TLabel;
    ComboBoxMes: TComboBox;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    RxMSustento: TRxMemoryData;
    LblAno: TLabel;
    EditAno: TEdit;
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    RxMSustentoNome: TStringField;
    RxMSustentoValor: TCurrencyField;
    QRDBText4: TQRDBText;
    RadioGroupPastor: TRadioGroup;
    Label2: TLabel;
    EditPastor: TEdit;
    SpdBtnPastores: TSpeedButton;
    LblNomePastor: TLabel;
    RxMSustentoMes: TIntegerField;
    RxMSustentoAno: TIntegerField;
    RxMSustentoCPF: TStringField;
    RxMSustentoProntuario: TStringField;
    RxMSustentoValorExtenso: TStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    RxMIgreja: TRxMemoryData;
    RxMIgrejaCNPJ: TStringField;
    QRDBText3: TQRDBText;
    RxMIgrejaCidadeBairro: TStringField;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    RxMSustentoEndereco: TStringField;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText10: TQRDBText;
    RxMSustentoMesAno: TStringField;
    QRLabel31: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape8: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel32: TQRLabel;
    QRShape9: TQRShape;
    QRLabel33: TQRLabel;
    QRShape10: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText13: TQRDBText;
    RxMSustentoCodigo: TIntegerField;
    RxMSustentoData: TDateField;
    QRDBText14: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    RxMSustentoEndRua: TStringField;
    RxMSustentoEndNumero: TStringField;
    RxMSustentoEndBairro: TStringField;
    RxMSustentoEndComplemento: TStringField;
    RxMSustentoEndCidade: TStringField;
    RxMSustentoEndEstado: TStringField;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBImage1: TQRDBImage;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure EditPastorKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnPastoresClick(Sender: TObject);
    procedure EditPastorExit(Sender: TObject);
    procedure RadioGroupPastorClick(Sender: TObject);
    procedure EditPastorEnter(Sender: TObject);
    procedure EditPastorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormRelSustentoPastoral: TFormRelSustentoPastoral;

implementation

uses UDmJetro, ADODB, Funcoes;

{$R *.dfm}

procedure TFormRelSustentoPastoral.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormRelSustentoPastoral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryConfig.Close;
  RxMSustento.Close;
  FormRelSustentoPastoral := nil;
  Action := caFree;
end;

procedure TFormRelSustentoPastoral.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRelSustentoPastoral.FormCreate(Sender: TObject);
begin
  EditAno.Text := IntToStr(YearOf(Date()));
end;

procedure TFormRelSustentoPastoral.BtnVisualizarClick(Sender: TObject);
begin
  if EditAno.Text = EmptyStr then
  begin
    InfoBox('Ano deve ser informado.');
    EditAno.SetFocus;
    Exit;
  end;

  if EditPastor.Text = EmptyStr then
  begin
    InfoBox('Pastor deve ser informado.');
    EditPastor.SetFocus;
    Exit;
  end;

  BuscarDados;

  if RxMSustento.IsEmpty then
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

procedure TFormRelSustentoPastoral.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormRelSustentoPastoral.EditPastorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormRelSustentoPastoral.SpdBtnPastoresClick(Sender: TObject);
begin
  EditPastor.SetFocus;
  EditPastor.Text := Buscar('Pastores','Codigo','Nome', 'Nome')

end;

procedure TFormRelSustentoPastoral.EditPastorExit(Sender: TObject);
begin
  if EditPastor.Text =  EmptyStr then
    Abort;

  LblNomePastor.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome, Titular from Pastores');
    SQL.Add('where Codigo = :pastor');
    ParamByName('pastor').Value := EditPastor.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Pastor não localizado.');
      EditPastor.SetFocus;
      Abort;
    end;

    if ((FieldByName('Titular').AsString = 'N') and
       (RadioGroupPastor.ItemIndex = 0)) then
    begin
      InfoBox('Favor selecionar Pastor Titular');
      EditPastor.SetFocus;
      Abort;
    end;

    if ((FieldByName('Titular').AsString = 'S') and
       (RadioGroupPastor.ItemIndex = 1)) then
    begin
      InfoBox('Favor selecionar Pastor Auxiliar');
      EditPastor.SetFocus;
      Abort;
    end;

    LblNomePastor.Caption := FieldByName('Nome').AsString;

  end;

end;

procedure TFormRelSustentoPastoral.RadioGroupPastorClick(Sender: TObject);
begin
  EditPastor.Text       := EmptyStr;
  LblNomePastor.Caption := EmptyStr;
end;

procedure TFormRelSustentoPastoral.BuscarDados;
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
    RxMIgrejaCidadeBairro.AsString := FieldByName('EndCidade').AsString + ' - ' + FieldByName('EndBairro').AsString;
    RxMIgreja.Post;

  end;

  with DMJetro.QryRelatorios do
  begin

    SQL.Clear;
    SQL.Add('select Extract(Month from S.Data) Mes, Extract(Year from S.Data) Ano,');
    SQL.Add('       Pr.Nome, Pr.CPF, Pr.Prontuario,');
    SQL.Add('       Pr.EndRua, Pr.EndNumero, Pr.EndComplemento,');
    SQL.Add('       Pr.EndBairro, Pr.EndCidade, Pr.EndEstado,');
    SQL.Add('       max(S.Codigo) Codigo, MAX(s.Data) Data, sum(S.Valor) Valor');
    SQL.Add('from Saidas S');
    SQL.Add('Inner Join Pastores Pr on Pr.Codigo = S.Pastor');
    if RadioGroupPastor.ItemIndex = 0 then
      SQL.Add('where S.TipoSaida = 22')
    else
      SQL.Add('where S.TipoSaida = 23');
    SQL.Add('  and S.Pastor = :pr');
    SQL.Add('  and Extract(Month from S.Data) = :mes');
    SQL.Add('  and Extract(Year from S.Data) = :ano');
    SQL.Add('Group by Pr.Nome, Pr.CPF, Pr.Prontuario,');
    SQL.Add('         Pr.EndRua, Pr.EndNumero, Pr.EndComplemento,');
    SQL.Add('         Pr.EndBairro, Pr.EndCidade, Pr.EndEstado,');
    SQL.Add('         Extract(Month from S.Data), Extract(Year from S.Data)');
    ParamByName('pr').Value  := EditPastor.Text;
    ParamByName('mes').Value := ComboBoxMes.ItemIndex + 1;
    ParamByName('ano').Value := EditAno.Text;
    Open;

    First;

    RxMSustento.Close;
    RxMSustento.Open;

    while not Eof do
    begin
      RxMSustento.Append;
      RxMSustentoCodigo.AsInteger        := FieldByName('Codigo').AsInteger;
      RxMSustentoMes.AsInteger           := FieldByName('Mes').AsInteger;
      RxMSustentoAno.AsInteger           := FieldByName('Ano').AsInteger;

      RxMSustentoData.AsDateTime         := FieldByName('Data').AsDateTime;


      RxMSustentoMesAno.AsString         := FormatDateTime('MMMM', StrToDate('01/' + FieldByName('Mes').AsString + '/' + FieldByName('Ano').AsString)) +
                                            ' de ' +
                                            FormatDateTime('YYYY', StrToDate('01/' + FieldByName('Mes').AsString + '/' + FieldByName('Ano').AsString));

      RxMSustentoNome.AsString           := FieldByName('Nome').AsString;
      RxMSustentoProntuario.AsString     := FieldByName('Prontuario').AsString;
      RxMSustentoCPF.AsString            := FieldByName('CPF').AsString;
      RxMSustentoEndRua.AsString         := FieldByName('EndRua').AsString;
      RxMSustentoEndNumero.AsString      := FieldByName('EndNumero').AsString;
      RxMSustentoEndComplemento.AsString := FieldByName('EndComplemento').AsString;
      RxMSustentoEndBairro.AsString      := FieldByName('EndBairro').AsString;
      RxMSustentoEndCidade.AsString      := FieldByName('EndCidade').AsString;
      RxMSustentoEndEstado.AsString      := FieldByName('EndEstado').AsString;

      RxMSustentoEndereco.AsString       := FieldByName('EndRua').AsString + ', ' +
                                            FieldByName('EndNumero').AsString + ', ' +
                                            FieldByName('EndComplemento').AsString + ', ' +
                                            FieldByName('EndBairro').AsString + ', ' +
                                            FieldByName('EndCidade').AsString + '-' +
                                            FieldByName('EndEstado').AsString;

      RxMSustentoValor.AsCurrency        := FieldByName('Valor').AsCurrency;
      RxMSustentoValorExtenso.AsString   := FormatCurr('R$ #,##0.00', FieldByName('Valor').AsCurrency) +
                                            ' (' + Extenso(FieldByName('Valor').AsCurrency) + ')';
      RxMSustento.Post;
      Next;
    end;
  end;

end;

procedure TFormRelSustentoPastoral.EditPastorEnter(Sender: TObject);
begin
  LblNomePastor.Caption := EmptyStr;

end;

procedure TFormRelSustentoPastoral.EditPastorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnPastores.Click;
end;

procedure TFormRelSustentoPastoral.FormActivate(Sender: TObject);
begin
  QryConfig.Open;
end;

end.
