unit UImportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ADODB, DB, MemDS, DBAccess, Uni,
  UniProvider, InterBaseUniProvider, Registry;

type
  TFormImporta = class(TForm)
    Label1: TLabel;
    SpdBtnOpen: TSpeedButton;
    EditPath: TEdit;
    LblAccess: TLabel;
    LblFirebird: TLabel;
    ProgressBarCEP: TProgressBar;
    BtnSair: TBitBtn;
    BtnConectar: TBitBtn;
    BtnProcessar: TBitBtn;
    Conn: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    QryMembros: TUniQuery;
    QryMembrosFichaNumero: TAutoIncField;
    QryMembrosNome: TStringField;
    QryMembrosDataNascimento: TDateTimeField;
    QryMembrosDataValidade: TDateTimeField;
    QryMembrosDataBatismo: TDateTimeField;
    QryMembrosMembroDesde: TDateTimeField;
    QryMembrosNaturalidade: TStringField;
    QryMembrosEstadoCivil: TStringField;
    QryMembrosNomeConjuge: TStringField;
    QryMembrosFiliacaoPai: TStringField;
    QryMembrosFiliacaoMae: TStringField;
    QryMembrosRG: TStringField;
    QryMembrosCPF: TStringField;
    QryMembrosEndRua: TStringField;
    QryMembrosEndNumero: TStringField;
    QryMembrosEndBairro: TStringField;
    QryMembrosEndComplemento: TStringField;
    QryMembrosEndCidade: TStringField;
    QryMembrosEndEstado: TStringField;
    QryMembrosEndCep: TStringField;
    QryMembrosFoneResid: TStringField;
    QryMembrosFoneCelular: TStringField;
    QryMembrosUserInsert: TIntegerField;
    QryMembrosDataInsert: TDateTimeField;
    QryMembrosUserUpdate: TIntegerField;
    QryMembrosDataUpdate: TDateTimeField;
    QryMembrosCartaoMembro: TStringField;
    ADOConn: TADOConnection;
    ADOQryMembros: TADOQuery;
    OpenDialog: TOpenDialog;
    ADOQryMembrosCdigo: TIntegerField;
    ADOQryMembrosNome: TWideStringField;
    ADOQryMembrosEndereo: TWideStringField;
    ADOQryMembrosBairro: TWideStringField;
    ADOQryMembrosCidade: TWideStringField;
    ADOQryMembrosUF: TWideStringField;
    ADOQryMembrosCEP: TWideStringField;
    ADOQryMembrosTelefoneResidencial: TWideStringField;
    ADOQryMembrosCelular: TWideStringField;
    ADOQryMembrosRG: TWideStringField;
    ADOQryMembrosCPF: TWideStringField;
    ADOQryMembrosSexo: TWideStringField;
    ADOQryMembrosDataNascimento: TDateTimeField;
    ADOQryMembrosNaturalidade: TWideStringField;
    ADOQryMembrosNomePai: TWideStringField;
    ADOQryMembrosNomeMe: TWideStringField;
    ADOQryMembrosEstadoCivil: TIntegerField;
    ADOQryMembrosConjuge: TWideStringField;
    ADOQryMembrosDataBatismo: TDateTimeField;
    QryMembrosSEXO: TStringField;
    QryMembrosSTATUS: TIntegerField;
    ADOQryMembrosStatus: TWideStringField;
    procedure BtnConectarClick(Sender: TObject);
    procedure SpdBtnOpenClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnProcessarClick(Sender: TObject);
    procedure QryMembrosNewRecord(DataSet: TDataSet);
    function TiraMask(S: String): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImporta: TFormImporta;

implementation

{$R *.dfm}

procedure TFormImporta.BtnConectarClick(Sender: TObject);
var
  Registro : TRegistry;
begin

  LblFirebird.Font.Color := clRed;
  Conn.Connected := False;
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  Registro.OpenKey('SOFTWARE\IEQSoft\Banco',False);

  Conn.Server   := EmptyStr;
  Conn.Database := EmptyStr;
  Conn.Username := EmptyStr;
  Conn.Password := EmptyStr;

  Conn.Server   := Registro.ReadString('Server');;
  Conn.Database := Registro.ReadString('DataBase');
  Conn.Username := Registro.ReadString('UserName');
  Conn.Password := Registro.ReadString('Password');

  Registro.CloseKey;
  Registro.Free;
  try
    Conn.Connected := True;
    LblFirebird.Font.Color := clGreen;
  except
        on e: Exception do
        begin
      showmessage('Erro:' + #13 + e.Message);
    Abort;
  end;
  end;

  LblAccess.Font.Color := clRed;
  ADOConn.Connected := False;
  if EditPath.Text = EmptyStr then
  begin
    ShowMessage('Informar caminho do banco VISUAL IGREJAS.');
    Abort;
  end;
  ADOConn.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' +
    EditPath.Text + ';' +
    'Mode=Share Deny None;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";' +
    'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;' +
    'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;' +
    'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;' +
    'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

  try
    ADOConn.Connected := True;
    LblAccess.Font.Color := clGreen;
  except
        on e: Exception do
        begin
      showmessage('Erro:' + #13 + e.Message);
    Abort;
    end;
  end;
end;

procedure TFormImporta.SpdBtnOpenClick(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog.Execute then
    EditPath.Text := OpenDialog.FileName;
end;

procedure TFormImporta.BtnSairClick(Sender: TObject);
begin
  LblAccess.Font.Color := clRed;
  LblFirebird.Font.Color := clRed;

  ADOConn.Connected := False;
  Conn.Connected := False;
  Application.Terminate;
end;

procedure TFormImporta.BtnProcessarClick(Sender: TObject);
begin
  if (ADOConn.Connected = false) or
     (Conn.Connected = false) then
  begin
    showmessage('Verificar conexões');
    Abort;
  end;

  ADOQryMembros.Open;
  ProgressBarCEP.Max := ADOQryMembros.RecordCount;

  QryMembros.Open;

  ADOQryMembros.First;

  try
    while not ADOQryMembros.Eof do
    begin
      QryMembros.Append;
      QryMembrosNome.AsString := Uppercase(ADOQryMembrosNome.AsString);
      QryMembrosEndRua.AsString := Uppercase(ADOQryMembrosEndereo.AsString);
      QryMembrosEndBairro.AsString := Uppercase(ADOQryMembrosBairro.AsString);
      QryMembrosEndCidade.AsString := Uppercase(ADOQryMembrosCidade.AsString);
      QryMembrosEndEstado.AsString := Uppercase(ADOQryMembrosUF.AsString);
      QryMembrosEndCep.AsString := ADOQryMembrosCEP.AsString;
      QryMembrosFoneResid.AsString :=  TiraMask(ADOQryMembrosTelefoneResidencial.AsString);
      QryMembrosFoneCelular.AsString := copy(TiraMask(ADOQryMembrosCelular.AsString),2,10);
      QryMembrosRG.AsString := ADOQryMembrosRG.AsString;
      QryMembrosCPF.AsString := ADOQryMembrosCPF.AsString;
      QryMembrosSEXO.AsString := ADOQryMembrosSexo.AsString;
      QryMembrosDataNascimento.AsDateTime := ADOQryMembrosDataNascimento.AsDateTime;
      QryMembrosDataBatismo.AsDateTime := ADOQryMembrosDataBatismo.AsDateTime;
      QryMembrosNaturalidade.AsString := Uppercase(ADOQryMembrosNaturalidade.AsString);
      QryMembrosFiliacaoPai.AsString := Uppercase(ADOQryMembrosNomePai.AsString);
      QryMembrosFiliacaoMae.AsString := Uppercase(ADOQryMembrosNomeMe.AsString);
      QryMembrosNomeConjuge.AsString := Uppercase(ADOQryMembrosConjuge.AsString);
      Case ADOQryMembrosEstadoCivil.AsInteger of
        2: QryMembrosEstadoCivil.AsString := 'SOLTEIRO';
        3: QryMembrosEstadoCivil.AsString := 'CASADO';
        4: QryMembrosEstadoCivil.AsString := 'VIUVO';
        6: QryMembrosEstadoCivil.AsString := 'DESQUITADO';
      end;
      if trim(ADOQryMembrosStatus.AsString) = 'Membro Ativado' then
        QryMembrosStatus.AsInteger := 1
      else
        QryMembrosStatus.AsInteger := 3;

      QryMembros.Post;

      ADOQryMembros.Next;
      ProgressBarCEP.StepIt;
    end;

    showmessage('Completado com sucesso.');
  except
          on e: Exception do
      showmessage('Erro:' + #13 + e.Message);
  end;
end;

procedure TFormImporta.QryMembrosNewRecord(DataSet: TDataSet);
begin
  QryMembrosDataInsert.AsDateTime := now;
  QryMembrosUserInsert.AsInteger  := 1;
end;

function TFormImporta.TiraMask(S: String): String;
begin
  S:= StringReplace(S,'(','',[]);
  S:= StringReplace(S,')','',[]);
  S:= StringReplace(S,'xx','',[]);
  S:= StringReplace(S,'-','',[]);
  TiraMask := S;
end;

end.
