unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RxGIF, DBCtrls, jpeg, DB, ADODB, Uni, DBAccess, MemDS,
  Mask, Registry;

type
  TFormAbout = class(TForm)
    Image1: TImage;
    LabelVersao: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BtnOk: TBitBtn;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    LabelContrato: TLabel;
    LabelBundled: TLabel;
    LabelLimite: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdtBlunded: TEdit;
    Label14: TLabel;
    LabelData: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
    Registro : TRegistry;
    procedure RenovarLicensa;
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

uses Main, Funcoes;

{$R *.dfm}

procedure TFormAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormAbout := nil;
  Action := caFree;
end;

procedure TFormAbout.FormCreate(Sender: TObject);
var
  Registro : TRegistry;
  Bundled, Limite, Data, Contrato : String;
begin

  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  Registro.OpenKey('SOFTWARE\Safety',False);

  Bundled   := Registro.ReadString('Bundled');
  Contrato  := FormatFloat('0000',Registro.ReadInteger('Etneilc'));

  Registro.CloseKey;
  Registro.Free;

  Limite := Copy(IntToStr(StrToInt64('$'+Bundled)),15,4);

  LabelContrato.Caption:= 'IEQSoft | ' + Contrato;
  LabelBundled.Caption := Bundled;
  LabelLimite.Caption  := Limite;
  LabelData.Caption    := FormatDateTime('DD/MM/YYYY', DataLicensa(Bundled));
end;

procedure TFormAbout.BtnOkClick(Sender: TObject);
begin
  if EdtBlunded.Text <> EmptyStr then
    RenovarLicensa;
  Close;
end;

procedure TFormAbout.RenovarLicensa;
var
  Cliente, i : Integer;

  Liberacao,
  chave, ClienteKey,
  Limite, Bundled : String;
begin

  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('SOFTWARE\Safety', False);
  Cliente    := Registro.ReadInteger('Etneilc');
  if Registro.ValueExists('Bundled') then
  begin
    Liberacao  := IntToStr(StrToInt64('$'+EdtBlunded.Text));

    if (FormatFloat('00000000', Cliente)) <> (Copy(Liberacao, 7, 8)) then
    begin
      ShowMessage('Cliente inválido.');
      Close;
      Abort;
    end;
  end;

  Bundled := EdtBlunded.Text;        

  if Bundled <> EmptyStr then
  begin
    try
      Registro.WriteString('Bundled', Bundled);
      ShowMessage('Licença atualizada com sucesso.');
    except
      on e : Exception do
      ShowMessage(e.message);
    end;
  end
  else
    ShowMessage('Problemas na ativação.');

  Registro.CloseKey;
  Registro.Free;

end;

end.
