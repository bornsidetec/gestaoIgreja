unit Alteracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, QuickRpt, QRCtrls, jpeg, DB,
  RxMemDS, DateUtils, Spin, RxGIF, Mask, rxToolEdit;

type
  TFormAlteracoes = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    RxM: TRxMemoryData;
    QuickRep: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabelSistema: TQRLabel;
    QRLabelIEQ: TQRLabel;
    QRLabelRel: TQRLabel;
    QRImage1: TQRImage;
    QRShape6: TQRShape;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    GroupBoxPeriodo: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    QRMemoFiltro: TQRMemo;
    RxMCodigo: TIntegerField;
    RxMDataInsert: TDateTimeField;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    RxMUserInsert: TStringField;
    Label1: TLabel;
    CboTabela: TComboBox;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    SpdBtnUsuarios: TSpeedButton;
    LblApelidoUsuario: TLabel;
    EditUsuario: TEdit;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    RxMUserUpdate: TStringField;
    RxMDataUpdate: TDateTimeField;
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnUsuariosClick(Sender: TObject);
    procedure EditUsuarioExit(Sender: TObject);
    procedure EditUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormAlteracoes: TFormAlteracoes;

implementation

uses UDmJetro, ADODB, Uni, DBAccess, MemDS, Funcoes, Math;

{$R *.dfm}

procedure TFormAlteracoes.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormAlteracoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxM.Close;
  FormAlteracoes := nil;
  Action := caFree;
end;

procedure TFormAlteracoes.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAlteracoes.BtnVisualizarClick(Sender: TObject);
begin
  if DateEditIni.Date = 0 then
  begin
    InfoBox('Data Inicial deve ser informada.');
    DateEditIni.SetFocus;
    Exit;
  end;

  if DateEditFim.Date = 0 then
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

  if (RxM.IsEmpty) then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  if Sender = BtnImprimir then
    QuickRep.Print
  else if Sender = BtnVisualizar then
    QuickRep.Preview;

end;

procedure TFormAlteracoes.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  AbreQuery(DMJetro.QryIgrejas, 'Igrejas', True);
  QRLabelIEQ.Caption := 'IEQ ' + DMJetro.QryIgrejasEndCidade.AsString + ' - ' + DmJetro.QryIgrejasEndBairro.AsString;

  QRMemoFiltro.Lines.Clear;
  QRMemoFiltro.Lines.Add('Data da Alteração: ' + DateEditIni.Text + ' - ' + DateEditFim.Text);
  QRMemoFiltro.Lines.Add('Tabela: ' + CboTabela.Text);
  QRMemoFiltro.Lines.Add('Tipo de Alteração: ' + RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]);
  if EditUsuario.Text <> EmptyStr then
  begin
    QRMemoFiltro.Lines.Add('Usuário: ' + LblApelidoUsuario.Caption);
  end;

end;

procedure TFormAlteracoes.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormAlteracoes.BuscarDados;
begin
  with DMJetro.QryRelatorios do
  begin

    SQL.Clear;
    if CboTabela.Text = 'MEMBROS' then
      SQL.Add('select ' + CboTabela.Text + '.FichaNumero Codigo, ')
    else
      SQL.Add('select ' + CboTabela.Text + '.Codigo, ');

    SQL.Add('UI.Apelido UserInsert, ' + CboTabela.Text + '.DataInsert, ');
    SQL.Add('UU.Apelido UserUpdate, ' + CboTabela.Text + '.DataUpdate');
    SQL.Add('from ' + CboTabela.Text);
    SQL.Add('inner join Usuarios UI on UI.Codigo = ' + CboTabela.Text + '.UserInsert');
    SQL.Add('inner join Usuarios UU on UU.Codigo = ' + CboTabela.Text + '.UserUpdate');

    Case RadioGroup1.ItemIndex of
      0 : begin
            SQL.Add('where ' + CboTabela.Text + '.DataInsert between :dt1 and :dt2');
            SQL.Add('   or ' + CboTabela.Text + '.DataUpdate between :dt3 and :dt4');
            ParamByName('dt3').AsDateTime := DateEditIni.Date;
            ParamByName('dt4').AsDateTime := DateEditFim.Date + 0.99999999;
          end;
      1 : SQL.Add('where ' + CboTabela.Text + '.DataInsert between :dt1 and :dt2');
      2 : SQL.Add('where ' + CboTabela.Text + '.DataUpdate between :dt1 and :dt2');
    end;
    ParamByName('dt1').AsDateTime := DateEditIni.Date;
    ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;

    SQL.Add('order by 3, 5');

    Open;
    First;

    RxM.Close;
    RxM.Open;

    RxM.LoadFromDataSet(DMJetro.QryRelatorios, DMJetro.QryRelatorios.RecordCount, lmAppend);

  end;

end;

procedure TFormAlteracoes.FormShow(Sender: TObject);
begin
  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
  DateEditIni.SetFocus;
end;

procedure TFormAlteracoes.FormCreate(Sender: TObject);
begin

  with DMJetro.QryAux2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select rdb$relation_name as Tabela from rdb$relation_fields');
    SQL.Add('where rdb$system_flag = 0');
    SQL.Add('  and rdb$field_name = ''DATAINSERT''');
    SQL.Add('order by rdb$relation_name');
    Open;
    First;

    while not Eof do
    begin
      CboTabela.Items.Add(FieldByName('Tabela').AsString);
      Next;
    end;

    CboTabela.ItemIndex := 0;

  end;

end;

procedure TFormAlteracoes.SpdBtnUsuariosClick(Sender: TObject);
begin
  EditUsuario.SetFocus;
  EditUsuario.Text := Buscar('Usuarios','Codigo','Apelido','Apelido')
end;

procedure TFormAlteracoes.EditUsuarioExit(Sender: TObject);
begin
  if EditUsuario.Text =  EmptyStr then
    Abort;

  LblApelidoUsuario.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Apelido from Usuarios');
    SQL.Add('where Codigo = :user');
    ParamByName('user').Value := EditUsuario.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Usuários não localizado.');
      EditUsuario.SetFocus;
      Abort;
    end;

    LblApelidoUsuario.Caption := FieldByName('Apelido').AsString;

  end;

end;

procedure TFormAlteracoes.EditUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnUsuarios.Click;
end;

end.
