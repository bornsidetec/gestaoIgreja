unit script;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, Uni, UniProvider, InterBaseUniProvider, StdCtrls,
  Buttons, DAScript, UniScript, Registry;

type
  TFormScript = class(TForm)
    InterBaseUniProvider1: TInterBaseUniProvider;
    Conn: TUniConnection;
    UniScript1: TUniScript;
    OpenDialog: TOpenDialog;
    btnExecutar: TBitBtn;
    BitBtn2: TBitBtn;
    EditServer: TEdit;
    EditBD: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormScript: TFormScript;

implementation

{$R *.dfm}

procedure TFormScript.FormCreate(Sender: TObject);
var
  //path : String;
  Registro : TRegistry;
begin
  //path := ExtractFilePath(ParamStr(0));
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

  Conn.Connected := True;

  EditServer.Text := Registro.ReadString('Server');
  EditBD.Text     := Registro.ReadString('DataBase');

  Registro.CloseKey;
  Registro.Free;
end;

procedure TFormScript.btnExecutarClick(Sender: TObject);
var
  ErrosScript: TStringList;
begin

  OpenDialog.InitialDir := 'C:\Bornside\IEQSoft\Banco';
  if OpenDialog.Execute then
  begin
    UniScript1.SQL.LoadFromFile(OpenDialog.FileName);
    Conn.StartTransaction;
    ErrosScript := TStringList.Create;
    try
      UniScript1.Execute;
      Conn.Commit;
      ShowMessage('Executado com sucesso.');
    except
      on e : Exception do
      begin
        Conn.Rollback;
        ErrosScript.Add(e.Message);
        ErrosScript.Add(StringOfChar('-',80));
        ErrosScript.SaveToFile(OpenDialog.FileName + 'erro');
      end;
    end;
  end;
end;

procedure TFormScript.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
