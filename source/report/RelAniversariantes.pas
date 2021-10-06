unit RelAniversariantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, RXDBCtrl, MemDS, DBAccess, Uni;

type
  TFormRelAniversariantes = class(TForm)
    RxMem: TRxMemoryData;
    Ds: TDataSource;
    PanelFiltro: TPanel;
    Label1: TLabel;
    PanelEndereco: TPanel;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    DBText5: TDBText;
    Label7: TLabel;
    DBText6: TDBText;
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
    ComboBoxMes: TComboBox;
    RxMemDia: TIntegerField;
    RxMemMes: TIntegerField;
    DBGrid1: TRxDBGrid;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    Label8: TLabel;
    DBText7: TDBText;
    RxMemTipo: TStringField;
    RadioGroupOpcoes: TRadioGroup;
    Label9: TLabel;
    DBText8: TDBText;
    Label10: TLabel;
    DBText9: TDBText;
    QuickRep: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabelFiltro: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabelSistema: TQRLabel;
    QRShape3: TQRShape;
    RadioGroupOrdem: TRadioGroup;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
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
    QRLabelRel: TQRLabel;
    QRLabelIEQ: TQRLabel;
    BtnPesquisar: TBitBtn;
    Label11: TLabel;
    QRDBImage1: TQRDBImage;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RadioGroupOpcoesClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelAniversariantes: TFormRelAniversariantes;

implementation

uses UDmJetro, ADODB, Funcoes;

{$R *.dfm}

procedure TFormRelAniversariantes.BtnPesquisarClick(Sender: TObject);
var
  Mes : String;
begin
  RxMem.Close;
  RxMem.Open;

  Mes := FormatFloat('00',ComboBoxMes.ItemIndex + 1);

  with DmJetro.QryRelatorios do
  begin
    Close;
    SQL.Clear;
    if RadioGroupOpcoes.ItemIndex = 0 then
    begin
      SQL.Add('select Nome, Extract(day from DataNascimento) DiaNasc, Extract(Month from DataNascimento) MesNasc,');
      SQL.Add('       EndRua, EndNumero, EndComplemento,');
      SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
      SQL.Add('       FoneResid, FoneCelular, ''Membro'' as Tipo');
      SQL.Add('from Membros');
      SQL.Add('where Extract(Month from DataNascimento) = ' + Mes);
      SQL.Add('  and Membros.Status = 1');
      SQL.Add('order by Nome');
    end
    else if RadioGroupOpcoes.ItemIndex = 1 then
    begin
      SQL.Add('select Nome, Extract(day from DataNascimento) DiaNasc, Extract(Month from DataNascimento) MesNasc,');
      SQL.Add('       EndRua, EndNumero, EndComplemento,');
      SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
      SQL.Add('       FoneResid, FoneCelular, ''Visitante'' as Tipo');
      SQL.Add('from Visitantes');
      SQL.Add('where Extract(Month from DataNascimento) = ' + Mes);
      SQL.Add('  and Visitantes.Status = 1');
      SQL.Add('order by Nome');
    end
    else if RadioGroupOpcoes.ItemIndex = 2 then
    begin
      SQL.Add('select Nome, Extract(day from DataNascimento) DiaNasc, Extract(Month from DataNascimento) MesNasc,');
      SQL.Add('       EndRua, EndNumero, EndComplemento,');
      SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
      SQL.Add('       FoneResid, FoneCelular, ''Pastor'' as Tipo');
      SQL.Add('from Pastores');
      SQL.Add('where Extract(Month from DataNascimento) = ' + Mes);
      SQL.Add('  and Pastores.Status = 1');
      SQL.Add('order by Nome');
    end
    else if RadioGroupOpcoes.ItemIndex = 3 then
    begin
      SQL.Add('select Nome, Extract(day from DataNascimento) DiaNasc, Extract(Month from DataNascimento) MesNasc,');
      SQL.Add('       EndRua, EndNumero, EndComplemento,');
      SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
      SQL.Add('       FoneResid, FoneCelular, ''Criança'' as Tipo');
      SQL.Add('from Criancas');
      SQL.Add('where Extract(Month from DataNascimento) = ' + Mes);
      SQL.Add('  and Criancas.Status = 1');
      SQL.Add('order by Nome');
    end
    else
    begin
      SQL.Add('select Nome, Extract(day from DataNascimento) DiaNasc, Extract(Month from DataNascimento) MesNasc,');
      SQL.Add('       EndRua, EndNumero, EndComplemento,');
      SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
      SQL.Add('       FoneResid, FoneCelular, ''Membro'' as Tipo');
      SQL.Add('from Membros');
      SQL.Add('where Extract(Month from DataNascimento) = ' + Mes);
      SQL.Add('  and Membros.Status = 1');
      SQL.Add('Union');
      SQL.Add('select Nome, Extract(day from DataNascimento) DiaNasc, Extract(Month from DataNascimento) MesNasc,');
      SQL.Add('       EndRua, EndNumero, EndComplemento,');
      SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
      SQL.Add('       FoneResid, FoneCelular, ''Visitante'' as Tipo');
      SQL.Add('from Visitantes');
      SQL.Add('where Extract(Month from DataNascimento) = ' + Mes);
      SQL.Add('  and Visitantes.Status = 1');
      SQL.Add('Union');
      SQL.Add('select Nome, Extract(day from DataNascimento) DiaNasc, Extract(Month from DataNascimento) MesNasc,');
      SQL.Add('       EndRua, EndNumero, EndComplemento,');
      SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
      SQL.Add('       FoneResid, FoneCelular, ''Pastor'' as Tipo');
      SQL.Add('from Pastores');
      SQL.Add('where Extract(Month from DataNascimento) = ' + Mes);
      SQL.Add('  and Pastores.Status = 1');
      SQL.Add('Union');
      SQL.Add('select Nome, Extract(day from DataNascimento) DiaNasc, Extract(Month from DataNascimento) MesNasc,');
      SQL.Add('       EndRua, EndNumero, EndComplemento,');
      SQL.Add('       EndBairro, EndCidade, EndEstado, EndCep,');
      SQL.Add('       FoneResid, FoneCelular, ''Criança'' as Tipo');
      SQL.Add('from Criancas');
      SQL.Add('where Extract(Month from DataNascimento) = ' + Mes);
      SQL.Add('  and Criancas.Status = 1');
      //SQL.Add('order by Nome');
    end;
    Open;
    First;
    while Not Eof do
    begin
      RxMem.Insert;
      RxMemNome.AsString           := FieldByName('Nome').AsString;
      RxMemDia.AsString            := FieldByName('DiaNasc').AsString;
      RxMemMes.AsString            := FieldByName('MesNasc').AsString;
      RxMemEndRua.AsString         := FieldByName('EndRua').AsString;
      RxMemEndNumero.AsString      := FieldByName('EndNumero').AsString;
      RxMemEndComplemento.AsString := FieldByName('EndComplemento').AsString;
      RxMemEndBairro.AsString      := FieldByName('EndBairro').AsString;
      RxMemEndCidade.AsString      := FieldByName('EndCidade').AsString;
      RxMemEndEstado.AsString      := FieldByName('EndEstado').AsString;
      RxMemEndCep.AsString         := FieldByName('EndCep').AsString;
      RxMemFoneResid.AsString      := FieldByName('FoneResid').AsString;
      RxMemFoneCelular.AsString    := FieldByName('FoneCelular').AsString;
      RxMemTipo.AsString           := FieldByName('Tipo').AsString;
      RxMem.Post;
      Next;
    end;
  end;
  Label11.Caption := FormatFloat('0000', RxMem.RecordCount);
  RxMem.SortOnFields('Dia');
  RxMem.First;
end;

procedure TFormRelAniversariantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryConfig.Close;

  FormRelAniversariantes := nil;
  Action := caFree;

end;

procedure TFormRelAniversariantes.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRelAniversariantes.BtnVisualizarClick(Sender: TObject);
begin

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

procedure TFormRelAniversariantes.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  //QRLabelIEQ.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;
  QRLabelIEQ.Caption := DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;

  if RadioGroupOpcoes.ItemIndex = 0 then
    QRLabelFiltro.Caption := 'Mês de ' + ComboBoxMes.Text + ' - Membros'
  else if RadioGroupOpcoes.ItemIndex = 1 then
    QRLabelFiltro.Caption := 'Mês de ' + ComboBoxMes.Text + ' - Visitantes'
  else if RadioGroupOpcoes.ItemIndex = 2 then
    QRLabelFiltro.Caption := 'Mês de ' + ComboBoxMes.Text + ' - Pastores'
  else if RadioGroupOpcoes.ItemIndex = 3 then
    QRLabelFiltro.Caption := 'Mês de ' + ComboBoxMes.Text + ' - Crianças'
  else
    QRLabelFiltro.Caption := 'Mês de ' + ComboBoxMes.Text + ' - Todos (Membros, Visitantes, Pastores, Crianças)';

end;

procedure TFormRelAniversariantes.RadioGroupOpcoesClick(Sender: TObject);
begin
  RxMem.Close;
  RxMem.Open;
end;

procedure TFormRelAniversariantes.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormRelAniversariantes.FormActivate(Sender: TObject);
begin
  QryConfig.Open;
end;

end.
