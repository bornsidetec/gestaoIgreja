unit UnitScript;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFormScript = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query: TADOQuery;
    Conn: TADOConnection;
    RichEditScript: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    ErrosScript: TStringList;
  public
    { Public declarations }
  end;

var
  FormScript: TFormScript;

implementation

{$R *.dfm}

procedure TFormScript.FormCreate(Sender: TObject);
var
  path : String;
begin
  path := ExtractFilePath(ParamStr(0));
  Conn.ConnectionString := 'FILE NAME=' + path + 'IEQSoft.udl';
  Conn.Connected := True;
end;

procedure TFormScript.BitBtn2Click(Sender: TObject);
begin
  Conn.Connected := False;
  Application.Terminate;
end;

procedure TFormScript.BitBtn1Click(Sender: TObject);
var
  Erro: Boolean;
  i : Integer;
begin
  Erro := False;
  ErrosScript := TStringList.Create;

  for i := 0 to RichEditScript.Lines.Count - 1 do
  begin
    if trim(RichEditScript.Lines.Strings[i]) <> 'GO' then
    begin
      Query.SQL.Add(RichEditScript.Lines.Strings[i]);
    end
    else
    begin
      try
        Query.ExecSQL;
      except
        on e : Exception do
        begin
          Erro := True;
          ErrosScript.Add('Linha' + FormatFloat('0000',i + 1) + ': ' + e.Message);
        end;
      end;
      Query.SQL.Clear;
    end;
  end;

  if Erro then
  begin
    ShowMessage('Relatório de erros gerado em:' + #13 + 'C:\BornSide\ErrosScript.err');
    ErrosScript.SaveToFile('C:\BornSide\IEQSoft\ErrosScript.err');
  end
  else
    ShowMessage('Script executado com sucesso.');

  ErrosScript.Free;
end;

end.
