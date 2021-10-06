unit ImportaCEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, Uni, DBAccess, MemDS, ComCtrls, ShellCtrls,
  IdBaseComponent, IdComponent, IdTCPServer, IdMappedPortTCP, IBServices,
  jpeg, DAScript, UniScript;

type
  TFormImportaCEP = class(TForm)
    PanelBotoes: TPanel;
    BtnSair: TBitBtn;
    BtnProcessar: TBitBtn;
    LblLog: TLabel;
    OpenDialog: TOpenDialog;
    PanelRestore: TPanel;
    Label3: TLabel;
    SpdBtnOpen: TSpeedButton;
    EditPath: TEdit;
    Image1: TImage;
    QryCEP: TUniQuery;
    QryCEPCEP: TStringField;
    QryCEPLOGRADOURO: TStringField;
    QryCEPBAIRRO: TStringField;
    QryCEPCIDADE: TStringField;
    QryCEPUF: TStringField;
    ProgressBarCEP: TProgressBar;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnProcessarClick(Sender: TObject);
    procedure SpdBtnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportaCEP: TFormImportaCEP;

implementation

uses Funcoes, Main, UDmJetro;

{$R *.dfm}

procedure TFormImportaCEP.BtnSairClick(Sender: TObject);
begin
  Close;

end;

procedure TFormImportaCEP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormImportaCEP := nil;
end;

procedure TFormImportaCEP.BtnProcessarClick(Sender: TObject);
var
  Script : TStringList;
  i : Integer;
begin
  if EditPath.Text = EmptyStr then
  begin
    InfoBox('Nenhum arquivo para importação.');
    Exit;
  end;

  if not YesNoBox('A execução desta operação irá levar alguns minutos.' + #13 + 'Deseja continuar?') then
  begin
    InfoBox('Operação cancelada!');
    Exit;
  end;

  Script := TStringList.Create();
  Script.LoadFromFile(EditPath.Text);
  ProgressBarCEP.Min := 0;
  ProgressBarCEP.Max := Script.Count;
  try
    for i := 0 to Script.Count - 1 do
    begin
      with QryCEP do
      begin
        Close;
        SQL.Clear;
        SQL.Add(Script.Strings[i]);
        ExecSQL;
      end;
      ProgressBarCEP.Position := i + 1;
      Application.ProcessMessages;
    end;
    InfoBox('Importação realizada com sucesso!');
  except
    on E: Exception do
      InfoBox('Erro ao executar importação de CEP!' + #13 + 'Entre em contato com o suporte da BornSide Tecnologia' + #13 + E.Message);
  end;
  LblLog.Caption := '';
  ProgressBarCEP.Position := 0;

end;

procedure TFormImportaCEP.SpdBtnOpenClick(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog.Execute then
    EditPath.Text := OpenDialog.FileName;
end;

end.
