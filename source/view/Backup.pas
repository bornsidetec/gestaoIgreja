unit Backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, Uni, DBAccess, MemDS, ComCtrls, ShellCtrls,
  IdBaseComponent, IdComponent, IdTCPServer, IdMappedPortTCP, IBServices;

type
  TFormBackup = class(TForm)
    PanelBotoes: TPanel;
    BtnSair: TBitBtn;
    BtnProcessar: TBitBtn;
    QryBackups: TUniQuery;
    QryBackup: TUniQuery;
    QryBackupsCodigo: TIntegerField;
    QryBackupsUsuario: TIntegerField;
    QryBackupsData: TDateTimeField;
    QryBackupsCaminho: TStringField;
    QryBackupsMaquina: TStringField;
    IdMappedPortTCP1: TIdMappedPortTCP;
    IBBackupService1: TIBBackupService;
    PageControl: TPageControl;
    TabSheetBackup: TTabSheet;
    TabSheetRestore: TTabSheet;
    PanelBackup: TPanel;
    Label1: TLabel;
    ShellTreeView: TShellTreeView;
    PanelRestore: TPanel;
    Label3: TLabel;
    EditPath: TEdit;
    SpdBtnOpen: TSpeedButton;
    IBRestoreService1: TIBRestoreService;
    LblLog: TLabel;
    OpenDialog: TOpenDialog;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnProcessarClick(Sender: TObject);
    procedure SpdBtnOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RegistraBackup;
  end;

var
  FormBackup: TFormBackup;

implementation

uses Funcoes, Main, UDmJetro;

{$R *.dfm}

procedure TFormBackup.BtnSairClick(Sender: TObject);
begin
  Close;

end;

procedure TFormBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormBackup := nil;
end;

procedure TFormBackup.BtnProcessarClick(Sender: TObject);
begin
  if not YesNoBox('A execução desta operação irá levar alguns minutos.' + #13 + 'Deseja continuar?') then
  begin
    InfoBox('Operação cancelada!');
    Exit;
  end;

  if PageControl.ActivePageIndex = 0 then //Backup
  begin
    try
      with IBBackupService1 do
      begin

        ServerName   := DMJetro.Conn.Server;
        DatabaseName := DMJetro.Conn.Database;
        Params.Clear;
        Params.Add('user_name=' + DMJetro.Conn.Username);
        Params.Add('password=' + DMJetro.Conn.Password);

        Active := True;
        BackupFile.Clear;
        BackupFile.Add(ShellTreeView.Path + '\IEQSoftBkp_' + FormatDateTime('YYYYMMDD_HHMMSS',Now) + '.bsk');
        Options := [NoGarbageCollection];
        ServiceStart;

        while not Eof do
        begin
          if length(GetNextLine) > 50 then
            lblLog.Caption := Copy(GetNextLine, 1, 37) +
            '...' +
            Copy(GetNextLine, length(GetNextLine) - 10,10)
          else
            lblLog.Caption := GetNextLine;

          Application.ProcessMessages;
        end;

        Active := False;
      end;
      RegistraBackup;
      InfoBox('Backup realizado com sucesso!');
    except
      on E: Exception do
        InfoBox('Erro ao executar operação de backup!' + #13 + 'Entre em contato com o suporte da BornSide Tecnologia' + #13 + E.Message);
    end;
  end
  else if PageControl.ActivePageIndex = 1 then //Restore
  begin
    if EditPath.Text = EmptyStr then
    begin
      InfoBox('Nenhum arquivo para restauração.');
      Exit;
    end;

    try
      with IBRestoreService1 do
      begin
        ServerName   := DMJetro.Conn.Server;
        DatabaseName.Clear;
        DatabaseName.Add(DMJetro.Conn.Database);
        Params.Clear;
        Params.Add('user_name=' + DMJetro.Conn.Username);
        Params.Add('password=' + DMJetro.Conn.Password);

        Active := True;
        BackupFile.Clear;
        BackupFile.Add(EditPath.Text);
        Options := [Replace, NoValidityCheck];
        DMJetro.Conn.Connected := False;
        ServiceStart;

        while not Eof do
        begin
          if length(GetNextLine) > 50 then
            lblLog.Caption := Copy(GetNextLine, 1, 37) +
            '...' +
            Copy(GetNextLine, length(GetNextLine) - 10,10)
          else
            lblLog.Caption := GetNextLine;

          Application.ProcessMessages;
        end;
        DMJetro.Conn.Connected := True;
        Active := False;
      end;
      RegistraBackup;
      InfoBox('Restaução realizada com sucesso!');
    except
      on E: Exception do
        InfoBox('Erro ao executar operação de restauração!' + #13 + 'Entre em contato com o suporte da BornSide Tecnologia' + #13 + E.Message);
    end;
    DMJetro.Conn.Connected := True;
  end;
  LblLog.Caption := '';

end;

procedure TFormBackup.RegistraBackup;
begin
  QryBackups.Open;
  QryBackups.Append;
  QryBackupsUsuario.AsInteger := FormMain.Usuario;
  QryBackupsData.AsDateTime   := now;
  QryBackupsCaminho.AsString  := ShellTreeView.Path;
  QryBackupsMaquina.AsString  := IdMappedPortTCP1.LocalName;
  QryBackups.Post;
  QryBackups.Close;
end;

procedure TFormBackup.SpdBtnOpenClick(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog.Execute then
    EditPath.Text := OpenDialog.FileName;
end;

procedure TFormBackup.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
end;

end.
