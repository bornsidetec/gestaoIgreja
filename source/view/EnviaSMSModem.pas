unit EnviaSMSModem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin, RLReport, RLRichText, RLTypes, RLConsts, ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  ACBrBase, ACBrSMS, RxDBComb, Activex, ComObj;

type
  TFormEnviaSMSModem = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
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
    LblDescCarta: TLabel;
    MemoSMS: TMemo;
    Label1: TLabel;
    BtnEnviar: TBitBtn;
    ProgressBar: TProgressBar;
    IdHTTP1: TIdHTTP;
    SpdBtnAddNome: TSpeedButton;
    BitBtn1: TBitBtn;
    PanelConfiguracoes: TPanel;
    ACBrSMS1: TACBrSMS;
    Label6: TLabel;
    SpdAtivar: TSpeedButton;
    RxMModem: TRxMemoryData;
    RxMModemIndice: TAutoIncField;
    RxMModemModem: TStringField;
    RxMModemPorta: TStringField;
    RxMModemVelocidade: TIntegerField;
    CboModem: TComboBox;
    Label2: TLabel;
    LblPorta: TLabel;
    Label4: TLabel;
    LblVelocidade: TLabel;
    lblQtd: TLabel;
    spdbtnHistorico: TSpeedButton;
    spdbtnNumeros: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure ChkTodosClick(Sender: TObject);
    procedure EditCartaEnter(Sender: TObject);
    procedure EditCartaKeyPress(Sender: TObject; var Key: Char);
    procedure RgpTipoPessoaClick(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure SpdBtnAddNomeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpdAtivarClick(Sender: TObject);
    procedure spdbtnHistoricoClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetWin32_POTSModemInfo;

  public
    { Public declarations }
    procedure BuscarDados;
    function Creditos: String;
    function SMS(SMS, Destino: String): Boolean;
  end;

var
  FormEnviaSMSModem: TFormEnviaSMSModem;

implementation

uses UDmJetro, Funcoes, DateUtils, Math, SMSInstantaneo, HistoricoSMS;

{$R *.dfm}

procedure TFormEnviaSMSModem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  FormEnviaSMSModem := nil;
  Action := caFree;

end;

procedure TFormEnviaSMSModem.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormEnviaSMSModem.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormEnviaSMSModem.BuscarDados;
begin

  with DmJetro.QryRelatorios do
  begin
    Close;
    SQL.Clear;

    if RgpTipoPessoa.ItemIndex = 0 then
    begin
      SQL.Add('select M.FichaNumero as Codigo, M.Nome');
      SQL.Add('from Membros M');
      //SQL.Add('where M.Status in (1,2,3,4,5)'); //Todos os Status
      SQL.Add('where M.Status in (1,2,4)'); //Ativos, Suspensos, Disciplina
      SQL.Add('  and char_length(M.FoneCelular) = 10'); //Somente os que tem celular
      if DateEditIni.Date > 0 then
      begin
        SQL.Add('  and M.DataInsert between :dt1 and :dt2');
        ParamByName('dt1').AsDateTime := DateEditIni.Date;
        ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
      end;
      if DateEdit1.Date > 0 then
      begin
        SQL.Add('  and Extract(Month from M.DataNascimento) between :m1 and :m2');
        SQL.Add('  and Extract(Day from M.DataNascimento) between :d1 and :d2');
        ParamByName('m1').AsInteger := MonthOfTheYear(DateEdit1.Date);
        ParamByName('m2').AsInteger := MonthOfTheYear(DateEdit2.Date);
        ParamByName('d1').AsInteger := DayOf(DateEdit1.Date);
        ParamByName('d2').AsInteger := DayOf(DateEdit2.Date);
      end;
      SQL.Add('order by M.Nome');
    end
    else if RgpTipoPessoa.ItemIndex = 1 then
    begin
      SQL.Add('select C.Codigo, C.Nome');
      SQL.Add('from Criancas C');
      SQL.Add('where C.Status = 1');
      SQL.Add('  and char_length(C.FoneCelular) = 10'); //Somente os que tem celular
      if DateEditIni.Date > 0 then
      begin
        SQL.Add('  and C.DataInsert between :dt1 and :dt2');
        ParamByName('dt1').AsDateTime := DateEditIni.Date;
        ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
      end;
      if DateEdit1.Date > 0 then
      begin
        SQL.Add('  and Extract(Month from C.DataNascimento) between :m1 and :m2');
        SQL.Add('  and Extract(Day from C.DataNascimento) between :d1 and :d2');
        ParamByName('m1').AsInteger := MonthOfTheYear(DateEdit1.Date);
        ParamByName('m2').AsInteger := MonthOfTheYear(DateEdit2.Date);
        ParamByName('d1').AsInteger := DayOf(DateEdit1.Date);
        ParamByName('d2').AsInteger := DayOf(DateEdit2.Date);
      end;
      SQL.Add('order by C.Nome');
    end
    else if RgpTipoPessoa.ItemIndex = 2 then
    begin
      SQL.Add('select V.Codigo, V.Nome');
      SQL.Add('from Visitantes V');
      SQL.Add('where V.Status = 1');
      SQL.Add('  and char_length(V.FoneCelular) = 10'); //Somente os que tem celular

      if DateEditIni.Date > 0 then
      begin
        SQL.Add('  and V.DataInsert between :dt1 and :dt2');
        ParamByName('dt1').AsDateTime := DateEditIni.Date;
        ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
      end;
      if DateEdit1.Date > 0 then
      begin
        SQL.Add('  and Extract(Month from V.DataNascimento) between :m1 and :m2');
        SQL.Add('  and Extract(Day from V.DataNascimento) between :d1 and :d2');
        ParamByName('m1').AsInteger := MonthOfTheYear(DateEdit1.Date);
        ParamByName('m2').AsInteger := MonthOfTheYear(DateEdit2.Date);
        ParamByName('d1').AsInteger := DayOf(DateEdit1.Date);
        ParamByName('d2').AsInteger := DayOf(DateEdit2.Date);
      end;
      SQL.Add('order by V.Nome');
    end;

    Open;
    Last;
    First;
    lblQtd.Caption := IntToStr(RecordCount);

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

procedure TFormEnviaSMSModem.BtnPesquisarClick(Sender: TObject);
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

  BuscarDados;

end;

procedure TFormEnviaSMSModem.ChkTodosClick(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    ChkListBox.Checked[i] := ChkTodos.Checked;
  end;
end;

procedure TFormEnviaSMSModem.EditCartaEnter(Sender: TObject);
begin
  LblDescCarta.Caption := EmptyStr;

end;

procedure TFormEnviaSMSModem.EditCartaKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormEnviaSMSModem.RgpTipoPessoaClick(Sender: TObject);
begin
  ChkListBox.Clear;
  lblQtd.Caption := '';
end;
 
procedure TFormEnviaSMSModem.BtnEnviarClick(Sender: TObject);
var
  Fichas, SMSNome : String;
  i, Qtd : Integer;
  Destinos : Integer;
begin

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
      SQL.Add('select M.Nome, M.FoneCelular');
      SQL.Add('from Membros M');
      SQL.Add('where M.FichaNumero in ' + Fichas);
      SQL.Add('order by M.Nome, M.FichaNumero');
    end
    else
    begin
      SQL.Add('select V.Nome, V.FoneCelular');
      SQL.Add('from Visitantes V');
      SQL.Add('where V.Codigo in ' + Fichas);
      SQL.Add('order by V.Nome, V.Codigo');
    end;
    Open;
  end;

  if QryDados.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;

  QryDados.First;

  if MemoSMS.GetTextLen = 0 then
  begin
    InfoBox('Mensagem deve ser informada.');
    MemoSMS.SetFocus;
    Abort;
  end;

  if not ACBrSMS1.Ativo then
  begin
    InfoBox('Modem deve ser ativado.');
    Abort;
  end;

  Destinos := QryDados.RecordCount;

  ProgressBar.Max      := Destinos;
  ProgressBar.Min      := 0;
  ProgressBar.Position := 0;
  ProgressBar.Visible  := True;
  Qtd                  := 0;

  if not YesNoBox('Confirma o envio das mensagens?') then
    Abort;

  while not QryDados.Eof do
  begin

    SMSNome := StringReplace(MemoSMS.Lines.Text,
                                   '<#NOME#>',
                                   PrimeiroNome(QryDados.FieldByName('Nome').AsString),
                                   [rfReplaceAll]);

    if SMS(SMSNome, QryDados.FieldByName('FoneCelular').AsString) then
      inc(Qtd);

    ProgressBar.Position := ProgressBar.Position + 1;
    Application.ProcessMessages;
    QryDados.Next;
  end;
  ProgressBar.Visible := False;

  InfoBox(IntToStr(Qtd) + ' Mensagem(s) enviada(s)');

end;

function TFormEnviaSMSModem.Creditos: String;
var
  Credencial, retCredito : String;

begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select CredencialSMS from Configuracoes');
    Open;
    Credencial := FieldByName('CredencialSMS').AsString;
  end;

 	IdHTTP1.Host := 'mobilepronto.com.br';
 	IdHTTP1.Port := 80;
  try

    Result := IdHTTP1.Get('http://www.mpgateway.com/v_2_00/smscredits/credits.aspx?' +
                          'CREDENCIAL=' + Credencial);

    if Pos('.', Result) = 0 then
    begin
      InfoBox(RetornoSMS(Result));
      Result := '0';
    end
    else
      Result := Copy(Result, 1, pos('.',Result)-1);

  except
    on e: Exception do
    begin
      InfoBox('Erro:' + #13 + e.Message);
      Result := '0';
    end;
  end;

end;

function TFormEnviaSMSModem.SMS(SMS, Destino: String): Boolean;
var
  SMSok, Credencial : String;
  IndiceMsgEnviada: String;
  DestinoSP: String;

begin

  SMSok := RemoveAcentos(SMS);
  //SMSok := StringReplace(SMSok, ' ', '%20', [rfReplaceAll]);

  DestinoSP := copy(Destino, 1, 2) + '9' + copy(Destino, 3, 8);

  try
    ACBrSMS1.EnviarSMS(DestinoSP, SMSok, IndiceMsgEnviada);

    RegistraSMS(SMS, Destino);
    Result := True;

  except
    on e: Exception do
    begin
      InfoBox('SMS não foi enviado devido ao erro:' + #13 + e.Message);
      Result := False;
      Exit;
    end;
  end;


end;

procedure TFormEnviaSMSModem.SpdBtnAddNomeClick(Sender: TObject);
begin
  MemoSMS.SelText := '<#NOME#>'
end;

procedure TFormEnviaSMSModem.FormCreate(Sender: TObject);
begin

  //ACBrSMS1.Device.AcharPortasSeriais(DBCboPorta.Items);

  try
    CoInitialize(nil);
    try
      GetWin32_POTSModemInfo;
    finally
      CoUninitialize;
    end;
  except
    on E:EOleException do
        //Memo1.Lines.Add(Format('EOleException %s %x', [E.Message,E.ErrorCode]));
        InfoBox(Format('EOleException %s %x', [E.Message,E.ErrorCode]));
    on E:Exception do
        //Memo1.Lines.Add(E.Classname + ':' + E.Message);
        InfoBox(E.Classname + ':' + E.Message);
  end;


  RxMModem.First;
  CboModem.Items.Clear;
  while not RxMModem.Eof do
  begin
    CboModem.Items.Add(RxMModemModem.AsString);
    RxMModem.Next;
  end;


end;

procedure TFormEnviaSMSModem.BitBtn1Click(Sender: TObject);
begin
  if not ACBrSMS1.Ativo then
  begin
    InfoBox('Ative o modem para continuar.');
    CboModem.SetFocus;
    Exit;
  end;


  Self.Cursor := crHourGlass;
  if FormSMSInstantaneo = nil then
    Application.CreateForm(TFormSMSInstantaneo, FormSMSInstantaneo);
  FormSMSInstantaneo.EnviaSMSModem := True;  
  FormSMSInstantaneo.ShowModal;
  Self.Cursor := crDefault;
end;

procedure TFormEnviaSMSModem.SpdAtivarClick(Sender: TObject);
begin
  if not ACBrSMS1.Ativo then
  begin
    if RxMModem.Locate('Indice',CboModem.ItemIndex + 1, [loCaseInsensitive]) then
    begin
      ACBrSMS1.Device.Porta := RxMModemPorta.AsString;
      ACBrSMS1.Device.Baud  := RxMModemVelocidade.AsInteger;
      ACBrSMS1.Ativar;

      LblPorta.Caption := ACBrSMS1.Device.Porta;
      LblVelocidade.Caption := IntToStr(ACBrSMS1.Device.Baud);
      SpdAtivar.Caption := 'Desativar';
    end
    else
    begin
      InfoBox('Informações do Modem não localizadas.');
      Exit;
    end;
  end
  else
  begin
    ACBrSMS1.Desativar;
    SpdAtivar.Caption := 'Ativar';
    LblPorta.Caption := '';
    LblVelocidade.Caption := '';
  end;


end;

procedure TFormEnviaSMSModem.GetWin32_POTSModemInfo;
const
  WbemUser            ='';
  WbemPassword        ='';
  WbemComputer        ='localhost';
  wbemFlagForwardOnly = $00000020;
var
  FSWbemLocator : OLEVariant;
  FWMIService   : OLEVariant;
  FWbemObjectSet: OLEVariant;
  FWbemObject   : OLEVariant;
  oEnum         : IEnumvariant;
  iValue        : LongWord;
begin;
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer(WbemComputer, 'root\CIMV2', WbemUser, WbemPassword);
  FWbemObjectSet:= FWMIService.ExecQuery('SELECT * FROM Win32_POTSModem','WQL',wbemFlagForwardOnly);
  oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;

  RxMModem.Close;
  RxMModem.Open;

  while oEnum.Next(1, FWbemObject, iValue) = 0 do
  begin
    If pos('Modem',Format('%s',[String(FWbemObject.DeviceID)])) = 0 then
    begin
      RxMModem.Append;
      RxMModemModem.AsString      := Format('%s',[String(FWbemObject.Name)]);
      RxMModemPorta.AsString      := Format('%s',[String(FWbemObject.AttachedTo)]);
      RxMModemVelocidade.AsString := Format('%s',[String(FWbemObject.MaxBaudRateToSerialPort)]);
      RxMModem.Post;
      {
      RxDBCboModem.Items.Add(Format('%s',[String(FWbemObject.Name)]));
      RxDBCboModem.Values.Add(Format('%s',[String(FWbemObject.AttachedTo)]) +
                              '|' +
                              Format('%s',[string(FWbemObject.MaxBaudRateToSerialPort)]));
      }

    {
    Memo1.lines.add(Format('AttachedTo      %s',[String(FWbemObject.AttachedTo)]));// String
    Memo1.lines.add(Format('DeviceID        %s',[String(FWbemObject.DeviceID)]));// String
    Memo1.lines.add(Format('Model           %s',[String(FWbemObject.Model)]));// String
    Memo1.lines.add(Format('Name            %s',[String(FWbemObject.Name)]));// String
    Memo1.lines.add(Format('PortSubClass    %s',[String(FWbemObject.PortSubClass)]));// String
    Memo1.lines.add(Format('Velocidade      %s',[string(FWbemObject.MaxBaudRateToSerialPort)]));// String
    }

    end;
    FWbemObject:=Unassigned;
  end;

end;

procedure TFormEnviaSMSModem.spdbtnHistoricoClick(Sender: TObject);
begin
  Self.Cursor := crHourGlass;
  if FormHistoricoSMS = nil then
    Application.CreateForm(TFormHistoricoSMS, FormHistoricoSMS);
  FormHistoricoSMS.ShowModal;
  Self.Cursor := crDefault;
end;

end.
