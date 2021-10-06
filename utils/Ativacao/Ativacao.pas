unit Ativacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, ExtCtrls, MemDS, DBAccess, Uni,
  UniProvider, InterBaseUniProvider, XPMan, Registry, StrUtils, DateUtils;

type
  TFormAtivacao = class(TForm)
    BtnAtivar: TBitBtn;
    BtnSair: TBitBtn;
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    PanelContraSenha: TPanel;
    Label1: TLabel;
    EditAutorizacao: TEdit;
    SpdBtnAutOk: TSpeedButton;
    PanelDados: TPanel;
    CboLimite: TComboBox;
    EditCliente: TEdit;
    EditAno: TEdit;
    CboTrimestre: TComboBox;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnAtivarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnAutOkClick(Sender: TObject);
    procedure EditClienteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    attempts : integer;
  public
    { Public declarations }

    InfoLicensa : TStringList;
    Arquivo : TStringList;

    Registro : TRegistry;

    LicensaCript : String;
    Trimestre : Integer;
    Ano: Integer;

    Oacazirotua: String;
    Etneilc: Integer;

    Data1, Data2, Data3, Data4 : TDateTime;


    function Criptografia(Texto, Chave : String): String;
    function Descriptografia(Texto, Chave : String): String;

  end;

var
  FormAtivacao: TFormAtivacao;

const
  //oacazirotuA: String = 'B182114o';

  Path: String = 'C:\Windows\System32\';
  SafetyPath: String = 'C:\Windows\System32\safety.config';
  DataBasePath: String = 'C:\Windows\System32\database.config';


implementation

{$R *.dfm}

procedure TFormAtivacao.BtnSairClick(Sender: TObject);
begin
  InfoLicensa.Free;
  Application.Terminate;
end;

procedure TFormAtivacao.BtnAtivarClick(Sender: TObject);

var
  Cliente, Limite, i : Integer;

  Liberacao,
  chave, ClienteKey,
  Bundled : String;
begin
  try
    Cliente   := StrToInt(EditCliente.Text);
    Limite    := StrToInt(CboLimite.Text);
    Ano       := StrToInt(EditAno.Text);
    Trimestre := StrToInt(CboTrimestre.Text);
  except
    ShowMessage('Informar os dados da ativação.');
    EditCliente.SetFocus;
    Abort;
  end;

  try
    Registro := TRegistry.Create;
    Registro.RootKey := HKEY_LOCAL_MACHINE;
    Registro.OpenKey('SOFTWARE\Safety',True);
    Registro.WriteInteger('Etneilc',Cliente);
    Registro.CloseKey;

    Liberacao := FormatFloat('0000', Ano) +
                 FormatFloat('00', Trimestre) +
                 FormatFloat('00000000', Cliente) +
                 FormatFloat('0000', Limite);
    Liberacao := IntToHex(StrToInt64(Liberacao),15);

    Registro.OpenKey('SOFTWARE\Safety', False);
    Registro.WriteString('Bundled', Liberacao);
    Registro.CloseKey;
    Registro.Free;
    ShowMessage('Ativação efetuada com sucesso.');
  except
    on E: Exception do
      ShowMessage('Erro ao tentar ativar.' + #13 + E.Message);
  end;

end;

function TFormAtivacao.Criptografia(Texto, Chave: String): String;
Var
  I, char, Z: integer;

begin
  z := 1;
  char := 0;
  For i := 1 to length(Texto) do
  begin
    char := (Ord(Chave[Z]) + Ord(Texto[I]));
    If Char > 255 then
      char := char - 255
    else if char < 0 then
      Char := char + 255;
    Result := Result + Chr(Char);
    z := z + 1;
    if z > length(Chave) then
      z:= 1;
  end;

end;

function TFormAtivacao.Descriptografia(Texto, Chave: String): String;
Var
  I, char, Z: integer;

begin
  z := 1;
  char := 0;
  For i := 1 to length(Texto) do
  begin
    char := (Ord(Texto[I]) - Ord(Chave[Z]));
    If Char > 255 then
      char := char - 255
    else if char < 0 then
      Char := char + 255;
    Result := Result + Chr(Char);
    z := z + 1;
    if z > length(Chave) then
      z:= 1;
  end;

end;

procedure TFormAtivacao.FormCreate(Sender: TObject);
begin

  Self.Caption := 'Ativação - IEQSoft';

  Self.Height := 221;//157;
  PanelContraSenha.Visible := True;

  BtnAtivar.Enabled  := false;
  PanelDados.Enabled := false;
  Panel1.Caption     := 'Não Autorizado';
  Panel1.Font.Color  := clRed;
  attempts := 0;
end;

procedure TFormAtivacao.SpdBtnAutOkClick(Sender: TObject);
var
  Data : String;
  pwdDiario, Cliente : String;
begin
  if EditAutorizacao.Text = EmptyStr then
    Abort;

  Inc(attempts);
  if attempts > 3 then
  begin
    Application.Terminate;
    Abort;
  end;

  if ReverseString('001101sb') = EditAutorizacao.Text then
  //if ReverseString('o411281B') = EditAutorizacao.Text then
  //if (ReverseString('o411281B') = EditAutorizacao.Text) or False = False then
  begin
    Self.Height := 165;//114;
    PanelContraSenha.Visible := False;
    Panel1.Caption     := 'Autorizado';
    Panel1.Font.Color  := clNavy;
    BtnAtivar.Enabled  := true;
    PanelDados.Enabled := true;
  end;
  EditAutorizacao.Text := EmptyStr;

  Data1 := StrToDateTime('31/01/' + IntToStr(YearOf(Date)));
  Data2 := StrToDateTime('30/04/' + IntToStr(YearOf(Date)));
  Data3 := StrToDateTime('31/07/' + IntToStr(YearOf(Date)));
  Data4 := StrToDateTime('31/10/' + IntToStr(YearOf(Date)));

  if (Date < (Data1 - 30)) then
  begin
    CboTrimestre.ItemIndex := 0;
    EditAno.Text := IntToStr(YearOf(Date));
  end
  else if (Date < (Data2 - 30)) then
  begin
    CboTrimestre.ItemIndex := 1;
    EditAno.Text := IntToStr(YearOf(Date));
  end
  else if (Date < (Data3 - 30)) then
  begin
    CboTrimestre.ItemIndex := 2;
    EditAno.Text := IntToStr(YearOf(Date));
  end
  else if (Date < (Data4 - 30)) then
  begin
    CboTrimestre.ItemIndex := 3;
    EditAno.Text := IntToStr(YearOf(Date));
  end
  else if (Date < (IncYear(Data1) - 30)) then
  begin
    CboTrimestre.ItemIndex := 0;
    EditAno.Text := IntToStr(YearOf(Date) + 1);
  end;



end;

procedure TFormAtivacao.EditClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
    key := #0;
end;

end.
