unit Selecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Uni, DBAccess, MemDS, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, RXDBCtrl;

type
  TFormSelecao = class(TForm)
    PanelFiltro: TPanel;
    LabelBusca: TLabel;
    EditBusca: TEdit;
    PanelBotoes: TPanel;
    PanelGrid: TPanel;
    DBGrid: TRxDBGrid;
    Ds: TDataSource;
    Qry: TUniQuery;
    BtnVoltar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure EditBuscaChange(Sender: TObject);
    procedure EditBuscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Parametro : String;
    QtdField : Integer;
  end;

var
  FormSelecao: TFormSelecao;

implementation

uses Main;

{$R *.dfm}

procedure TFormSelecao.FormCreate(Sender: TObject);
begin
  Parametro := '';
end;

procedure TFormSelecao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormSelecao := nil;
  Action := caFree;
end;

procedure TFormSelecao.BtnVoltarClick(Sender: TObject);
begin
  FormMain.ParametroSelecao := '';
  Close;
end;

procedure TFormSelecao.FormShow(Sender: TObject);
var
  i : Integer;
begin
  DBGrid.Columns.Clear;
  for i := 0 to QtdField -1 do
  begin
    DBGrid.Columns[i].FieldName := Qry.Fields[i].FieldName;
  end;
end;

procedure TFormSelecao.DBGridDblClick(Sender: TObject);
begin
  FormMain.ParametroSelecao := Qry.Fields[0].AsString;
  Close;
end;

procedure TFormSelecao.EditBuscaChange(Sender: TObject);
begin
  Qry.Locate(Qry.Fields[1].FieldName, EditBusca.Text, [loPartialKey,loCaseInsensitive])
end;

procedure TFormSelecao.EditBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    DBGridDblClick(DBGrid);

end;

end.
