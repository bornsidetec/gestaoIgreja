unit uSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormSenha = class(TForm)
    Label1: TLabel;
    EditCliente: TEdit;
    BtnSenha: TButton;
    EditSenha: TEdit;
    procedure BtnSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSenha: TFormSenha;

implementation

uses StrUtils;

{$R *.dfm}

procedure TFormSenha.BtnSenhaClick(Sender: TObject);
var
  Data : String;
  pwdDiario, Cliente : String;
begin
  Data := FormatDateTime('MMDDYYYY',Date);

  pwdDiario := Data[5] +
               Data[4] +
               Data[6] +
               Data[3] +
               Data[7] +
               Data[2] +
               Data[8] +
               Data[1];

  Cliente := ReverseString(FormatFloat('00000000', StrToInt(EditCliente.Text)));



  EditSenha.Text :=  IntToHex(StrToInt64(pwdDiario + Cliente),13)


end;

end.
