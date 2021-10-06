unit EnviaSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin, RLReport, RLRichText, RLTypes, RLConsts, ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFormEnviaSMS = class(TForm)
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
    Ds: TDataSource;
    MemoSMS: TMemo;
    Label1: TLabel;
    BtnEnviar: TBitBtn;
    ProgressBar: TProgressBar;
    GroupBoxCreditos: TGroupBox;
    LblCreditos: TLabel;
    IdHTTP1: TIdHTTP;
    EditRetorno: TEdit;
    SpdBtnAddNome: TSpeedButton;
    Label2: TLabel;
    DBEditCredencial: TDBEdit;
    DBNavigator1: TDBNavigator;
    QryConfig: TUniQuery;
    QryConfigCredencialSMS: TStringField;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure ChkTodosClick(Sender: TObject);
    procedure EditCartaEnter(Sender: TObject);
    procedure EditCartaKeyPress(Sender: TObject; var Key: Char);
    procedure RgpTipoPessoaClick(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpdBtnAddNomeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QryConfigAfterEdit(DataSet: TDataSet);
    procedure QryConfigAfterPost(DataSet: TDataSet);
    procedure QryConfigAfterCancel(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
    function Creditos: String;
    function SMS(SMS, Destino: String): Boolean;
  end;

var
  FormEnviaSMS: TFormEnviaSMS;

implementation

uses UDmJetro, Funcoes, DateUtils, Math, SMSInstantaneo;

{$R *.dfm}

procedure TFormEnviaSMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  QryConfig.Close;
  FormEnviaSMS  := nil;
  Action := caFree;

end;

procedure TFormEnviaSMS.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormEnviaSMS.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormEnviaSMS.BuscarDados;
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

procedure TFormEnviaSMS.BtnPesquisarClick(Sender: TObject);
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

procedure TFormEnviaSMS.ChkTodosClick(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to ChkListBox.Items.Count - 1 do
  begin
    ChkListBox.Checked[i] := ChkTodos.Checked;
  end;
end;

procedure TFormEnviaSMS.EditCartaEnter(Sender: TObject);
begin
  LblDescCarta.Caption := EmptyStr;

end;

procedure TFormEnviaSMS.EditCartaKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormEnviaSMS.RgpTipoPessoaClick(Sender: TObject);
begin
  ChkListBox.Clear;
end;
 
procedure TFormEnviaSMS.BtnEnviarClick(Sender: TObject);
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

  Destinos := QryDados.RecordCount;

  if Destinos > StrToInt(LblCreditos.Caption) then
  begin
    InfoBox('Créditos insuficientes.');
    Abort;
  end;

  ProgressBar.Max      := Destinos;
  ProgressBar.Min      := 0;
  ProgressBar.Position := 0;
  ProgressBar.Visible  := True;
  Qtd                  := 0;

  if not YesNoBox('Confirma o envio das mensagens?') then
    Abort;

  while not QryDados.Eof do
  begin

    SMSNome := ' ' + StringReplace(MemoSMS.Lines.Text,
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
  LblCreditos.Caption := Creditos;

end;

function TFormEnviaSMS.Creditos: String;
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

procedure TFormEnviaSMS.FormActivate(Sender: TObject);
begin
  LblCreditos.Caption := Creditos;
end;

function TFormEnviaSMS.SMS(SMS, Destino: String): Boolean;
var
  SMSok, Credencial : String;
begin

  with DMJetro.QryAux2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select CredencialSMS from Configuracoes');
    Open;
    Credencial := FieldByName('CredencialSMS').AsString;
  end;

  SMSok := RemoveAcentos(SMS);
  SMSok := StringReplace(SMSok, ' ', '%20', [rfReplaceAll]);

 	IdHTTP1.Host := 'mobilepronto.com.br';
 	IdHTTP1.Port := 80;
  try
    EditRetorno.Text := IdHTTP1.Get('http://www.mpgateway.com/v_2_00/smspush/enviasms.aspx?' +
                                    'CREDENCIAL=' + Credencial +
                                    '&PRINCIPAL_USER=IEQSOFT' +
                                    '&AUX_USER=BRUNO' +
                                    '&MOBILE=55' + Destino +
                                    '&SEND_PROJECT=S' +
                                    '&MESSAGE=' + SMSok);
    if EditRetorno.Text = '000' then
    begin
      RegistraSMS(SMS, Destino);
      Result := True;
    end
    else
    begin
      InfoBox(RetornoSMS(EditRetorno.Text));
      Result := False;
    end;

  except
    on e: Exception do
    begin
      InfoBox('SMS não foi enviado devido ao erro:' + #13 + e.Message);
      Result := False;
      Exit;
    end;
  end;


end;

procedure TFormEnviaSMS.SpdBtnAddNomeClick(Sender: TObject);
begin
  MemoSMS.SelText := '<#NOME#>'
end;

procedure TFormEnviaSMS.FormCreate(Sender: TObject);
begin
  QryConfig.Open;
end;

procedure TFormEnviaSMS.QryConfigAfterEdit(DataSet: TDataSet);
begin

  DBEditCredencial.Enabled := True;
  DBEditCredencial.SetFocus;

end;

procedure TFormEnviaSMS.QryConfigAfterPost(DataSet: TDataSet);
begin
  DBEditCredencial.Enabled := False;
  LblCreditos.Caption := Creditos;
end;

procedure TFormEnviaSMS.QryConfigAfterCancel(DataSet: TDataSet);
begin
  DBEditCredencial.Enabled := False;
end;

procedure TFormEnviaSMS.BitBtn1Click(Sender: TObject);
begin
  Self.Cursor := crHourGlass;
  if FormSMSInstantaneo = nil then
    Application.CreateForm(TFormSMSInstantaneo, FormSMSInstantaneo);
  FormSMSInstantaneo.EnviaSMSModem := False;  
  FormSMSInstantaneo.ShowModal;
  Self.Cursor := crDefault;
end;

end.
