unit RelMembros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, MemDS, DBAccess, Uni, QRPDFFilt;

type
  TFormRelMembros = class(TForm)
    RxMem: TRxMemoryData;
    Ds: TDataSource;
    PanelFiltro: TPanel;
    RxMemNome: TStringField;
    RxMemEndRua: TStringField;
    RxMemEndNumero: TStringField;
    RxMemEndBairro: TStringField;
    RxMemEndComplemento: TStringField;
    RxMemEndCidade: TStringField;
    RxMemEndEstado: TStringField;
    RxMemEndCep: TStringField;
    RxMemFoneResid: TStringField;
    RxMemFoneCelular: TStringField;
    RxMemIdade: TIntegerField;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    RadioGroupSexo: TRadioGroup;
    GroupBoxIdade: TGroupBox;
    Label1: TLabel;
    SpinEditIdade1: TSpinEdit;
    SpinEditIdade2: TSpinEdit;
    QuickRep: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabelFiltro: TQRLabel;
    QRLabelSistema: TQRLabel;
    QRLabelRel: TQRLabel;
    QRLabelIEQ: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape4: TQRShape;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBImage1: TQRDBImage;
    CheckBox1: TCheckBox;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormRelMembros: TFormRelMembros;

implementation

uses UDmJetro, ADODB, Funcoes;

{$R *.dfm}

procedure TFormRelMembros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryConfig.Close;

  FormRelMembros := nil;
  Action := caFree;

end;

procedure TFormRelMembros.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRelMembros.BtnVisualizarClick(Sender: TObject);
begin
  if SpinEditIdade1.Text = EmptyStr then
  begin
    InfoBox('Idade 1 deve ser informada.');
    SpinEditIdade1.SetFocus;
    Exit;
  end;

  if SpinEditIdade2.Text = EmptyStr then
  begin
    InfoBox('Idade 2 deve ser informada.');
    SpinEditIdade2.SetFocus;
    Exit;
  end;

  BuscarDados;

  if RxMem.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  if Sender = BtnImprimir then
    QuickRep.Print
  else
    QuickRep.Preview;
end;

procedure TFormRelMembros.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  Idade: String;
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  //QRLabelIEQ.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelIEQ.Caption := DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;

  Idade := ' Idade entre ' + IntToStr(SpinEditIdade1.Value) + ' e ' + IntToStr(SpinEditIdade2.Value);

  if RadioGroupSexo.ItemIndex = 0 then
    QRLabelFiltro.Caption := 'Sexo: Ambos / ' + Idade
  else if RadioGroupSexo.ItemIndex = 1 then
    QRLabelFiltro.Caption := 'Sexo: Masculino / ' + Idade
  else if RadioGroupSexo.ItemIndex = 2 then
    QRLabelFiltro.Caption := 'Sexo: Feminino / ' + Idade; 

end;

procedure TFormRelMembros.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormRelMembros.BuscarDados;
begin

  with DmJetro.QryRelatorios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome, Datediff(year, DataNascimento, current_timestamp) Idade,');
    SQL.Add('       EndRua, EndNumero, EndComplemento,');
    SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
    SQL.Add('       FoneResid, FoneCelular, ''Membro'' as Tipo');
    SQL.Add('from Membros');
    SQL.Add('where Membros.Status = 1');
    if RadioGroupSexo.ItemIndex = 1 then
      SQL.Add('  and Membros.Sexo = ''M''')
    else if RadioGroupSexo.ItemIndex = 2 then
      SQL.Add('  and Membros.Sexo = ''F''');

    SQL.Add('  and Datediff(year, DataNascimento, current_timestamp) between :id1 and :id2');
    ParamByName('id1').Value := SpinEditIdade1.Value;
    ParamByName('id2').Value := SpinEditIdade2.Value;
    if CheckBox1.Checked then
      SQL.Add('  and Status = 1 ');
    SQL.Add('order by Nome');
    Open;

    First;

    RxMem.Close;
    RxMem.Open;

    while Not Eof do
    begin
      RxMem.Append;
      RxMemNome.AsString           := FieldByName('Nome').AsString;
      RxMemIdade.AsString          := FieldByName('Idade').AsString;
      RxMemEndRua.AsString         := FieldByName('EndRua').AsString;
      RxMemEndNumero.AsString      := FieldByName('EndNumero').AsString;
      RxMemEndComplemento.AsString := FieldByName('EndComplemento').AsString;
      RxMemEndBairro.AsString      := FieldByName('EndBairro').AsString;
      RxMemEndCidade.AsString      := FieldByName('EndCidade').AsString;
      RxMemEndEstado.AsString      := FieldByName('EndEstado').AsString;
      RxMemEndCep.AsString         := FieldByName('EndCep').AsString;
      RxMemFoneResid.AsString      := FieldByName('FoneResid').AsString;
      RxMemFoneCelular.AsString    := FieldByName('FoneCelular').AsString;
      RxMem.Post;
      Next;
    end;
  end;
  RxMem.SortOnFields('Nome');
  RxMem.First;

end;

procedure TFormRelMembros.FormActivate(Sender: TObject);
begin
  QryConfig.Open;
end;

end.
