unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, DB, ADODB, Uni, DBAccess, MemDS;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    EditUsuario: TEdit;
    Label2: TLabel;
    EditSenha: TEdit;
    PanelBanner: TPanel;
    Image1: TImage;
    BitBtnLogInn: TBitBtn;
    BitBtnLogOff: TBitBtn;
    QryUser: TUniQuery;
    Label3: TLabel;
    Label4: TLabel;
    LabelNome: TLabel;
    Image2: TImage;
    SpdBtnLogin: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnLogOffClick(Sender: TObject);
    procedure BitBtnLogInnClick(Sender: TObject);
    procedure SpdBtnLoginClick(Sender: TObject);
    procedure EditUsuarioExit(Sender: TObject);
    procedure EditUsuarioEnter(Sender: TObject);
    procedure EditUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Login : Boolean;
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormLogin := nil;
  if not Login then
    Application.Terminate;
end;

procedure TFormLogin.BitBtnLogOffClick(Sender: TObject);
begin
  DMJetro.Conn.Connected := False;
  Close;
end;

procedure TFormLogin.BitBtnLogInnClick(Sender: TObject);
begin
  Login := False;
  with QryUser do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select U.Codigo, U.Apelido, U.Senha, DU.Descricao Departamento');
    SQL.Add('from Usuarios U');
    SQL.Add('Inner Join DeptoUsuarios DU on DU.Codigo = U.Departamento');
    SQL.Add('where U.Apelido = ' + QuotedStr(EditUsuario.Text));
    Open;
    if IsEmpty then
    begin
      InfoBox('Usuário Não Encontrado!');
      EditUsuario.SetFocus;
      Exit;
    end;
    if EditSenha.Text <> FieldByName('Senha').AsString then
    begin
      InfoBox('Senha Incorreta!');
      EditSenha.SetFocus;
      Exit;
    end;
    {
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select name from master..sysdatabases where dbid = db_id()');
      Open;
      FormMain.Banco := FieldByName('name').AsString;
    end;
    }
    FormMain.Banco := DMJetro.Conn.Database;
    FormMain.Usuario := FieldByName('Codigo').AsInteger;
    FormMain.StatusBar1.Panels.Items[0].Text := 'Usuário: ' + FieldByName('Apelido').AsString;
    FormMain.StatusBar1.Panels.Items[1].Text := 'Departamento: ' + FieldByName('Departamento').AsString;
    //FormMain.StatusBar1.Panels.Items[2].Text := 'Banco de Dados: ' + FormMain.Banco;
    FormMain.StatusBar1.Panels.Items[3].Text := FormMain.Versao;
    FormMain.StatusBar1.Panels.Items[4].Text := FormatDateTime('DD/MM/YYYY',Date);

  end;
  Login := True;
  Close;
end;

procedure TFormLogin.SpdBtnLoginClick(Sender: TObject);
begin
  EditUsuario.SetFocus;
  EditUsuario.Text := Buscar('Usuarios','Apelido','Nome','Nome')
end;

procedure TFormLogin.EditUsuarioExit(Sender: TObject);
begin
  if EditUsuario.Text = EmptyStr then
    Exit;
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome from Usuarios');
    SQL.Add('where Apelido = ' + QuotedStr(EditUsuario.Text));
    Open;
    if not IsEmpty then
      LabelNome.Caption := FieldByName('Nome').AsString
    else
    begin
      InfoBox('Usuário não encontrado!');
      EditUsuario.SetFocus;
    end;
  end;
end;

procedure TFormLogin.EditUsuarioEnter(Sender: TObject);
begin
  LabelNome.Caption := EmptyStr;

end;

procedure TFormLogin.EditUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnLogin.Click;
end;

procedure TFormLogin.EditSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    BitBtnLogInn.Click;
end;

end.
