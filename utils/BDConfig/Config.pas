unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, XPMan, Registry;

type
  TFormConfig = class(TForm)
    PanelDados: TPanel;
    PanelBotoes: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditServidor: TEdit;
    EditBanco: TEdit;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    Label5: TLabel;
    EditAutorizacao: TEdit;
    SpdBtnOk: TSpeedButton;
    SpdBtnOpen: TSpeedButton;
    OpenDialog: TOpenDialog;
    XPManifest1: TXPManifest;
    Label6: TLabel;
    CboSoftware: TComboBox;
    procedure SpdBtnOkClick(Sender: TObject);
    procedure SpdBtnOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EditAutorizacaoKeyPress(Sender: TObject; var Key: Char);
    procedure CboSoftwareChange(Sender: TObject);
  private
    { Private declarations }
    Arquivo : TStringList;
    Registro : TRegistry;
    function YesNoBox(Mensagem: String): Boolean;
    procedure Autorizar(B : Boolean);
  public
    { Public declarations }
    function pwdDiario: String;
  end;

var
  FormConfig: TFormConfig;
  Autorizado: Boolean;

const
  pwdPadrao: String = 'bs101100';
  Path: String = 'C:\Windows\System32\';
  DataBasePath: String = 'C:\Windows\System32\database.config';

implementation

{$R *.dfm}

function TFormConfig.pwdDiario: String;
var
  Data : String;
begin
  Data := FormatDateTime('DDMMYYYY',Date);

  pwdDiario := Data[5] +
               Data[4] +
               Data[6] +
               Data[3] +
               Data[7] +
               Data[2] +
               Data[8] +
               Data[1];

end;

procedure TFormConfig.SpdBtnOkClick(Sender: TObject);
var
  i : integer;
begin
  if (EditAutorizacao.Text = pwdPadrao) or
     (EditAutorizacao.Text = pwdDiario) then
  begin
    Autorizar(True);
    EditAutorizacao.Color := clSkyBlue;

    Registro := TRegistry.Create;
    Registro.RootKey := HKEY_LOCAL_MACHINE;
    Registro.OpenKey('SOFTWARE\' + CboSoftware.Text + '\Banco',True);

    EditServidor.Text := Registro.ReadString('Server');
    EditBanco.Text    := Registro.ReadString('DataBase');
    EditUsuario.Text  := Registro.ReadString('UserName');
    EditSenha.Text    := Registro.ReadString('Password');

    Registro.CloseKey;
    Registro.Free;

  end;
end;

procedure TFormConfig.SpdBtnOpenClick(Sender: TObject);
begin
  if not Autorizado then
    Abort;

  if OpenDialog.Execute then
    EditBanco.Text := OpenDialog.FileName;
end;

procedure TFormConfig.FormCreate(Sender: TObject);
begin
  Autorizar(False);
end;

function TFormConfig.YesNoBox(Mensagem: String): Boolean;
begin
  Beep;
  if Application.MessageBox(PChar(Mensagem), PChar('Confirme'),
    MB_YESNO + MB_ICONQUESTION +
    MB_DEFBUTTON2) = ID_YES then
    Result := true
  else
    Result := false;
end;

procedure TFormConfig.BtnSalvarClick(Sender: TObject);
begin
  if not Autorizado then
    Abort;

  if Trim(EditServidor.Text) = EmptyStr then
  begin
    ShowMessage('Servidor deve ser informado.');
    EditServidor.SetFocus;
    Abort;
  end;

  if Trim(EditBanco.Text) = EmptyStr then
  begin
    ShowMessage('Banco deve ser informado.');
    EditBanco.SetFocus;
    Abort;
  end;

  if Trim(EditUsuario.Text) = EmptyStr then
  begin
    ShowMessage('Usuário deve ser informado.');
    EditUsuario.SetFocus;
    Abort;
  end;

  if Trim(EditSenha.Text) = EmptyStr then
  begin
    ShowMessage('Senha deve ser informado.');
    EditSenha.SetFocus;
    Abort;
  end;

  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('SOFTWARE\' + CboSoftware.Text + '\Banco',True);

  Registro.WriteString('DataBase',EditBanco.Text);
  Registro.WriteString('Password',EditSenha.Text);
  Registro.WriteString('Server',EditServidor.Text);
  Registro.WriteString('UserName',EditUsuario.Text);

  Registro.CloseKey;
  Registro.Free;

  ShowMessage('Dados atualizados com sucesso.');

  BtnCancelar.Click;

end;

procedure TFormConfig.BtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormConfig.Autorizar(B: Boolean);
begin
  Autorizado := B;
  EditServidor.Enabled := B;
  EditBanco.Enabled    := B;
  EditUsuario.Enabled  := B;
  EditSenha.Enabled    := B;
end;

procedure TFormConfig.EditAutorizacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    SpdBtnOk.Click;
end;

procedure TFormConfig.CboSoftwareChange(Sender: TObject);
begin
  SpdBtnOkClick(SpdBtnOk)
end;

end.
