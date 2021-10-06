unit HistoricoSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, DB, MemDS,
  DBAccess, Uni, CRGrid;

type
  TFormHistoricoSMS = class(TForm)
    Panel2: TPanel;
    Ds: TDataSource;
    qryHistorico: TUniQuery;
    qryHistoricoMENSAGEM: TStringField;
    CRDBGrid1: TCRDBGrid;
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistoricoSMS: TFormHistoricoSMS;

implementation

uses EnviaSMSModem;

{$R *.dfm}

procedure TFormHistoricoSMS.DBGridDblClick(Sender: TObject);
begin
  FormEnviaSMSModem.MemoSMS.Lines.Clear;
  FormEnviaSMSModem.MemoSMS.Lines.Add(qryHistoricoMENSAGEM.AsString);
  Close;
end;

procedure TFormHistoricoSMS.FormShow(Sender: TObject);
begin
  qryHistorico.Open;
end;

end.
