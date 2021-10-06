unit Tabelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormTabelas = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelFiltro: TPanel;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
    BtnPesquisar: TBitBtn;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton3: TToolButton;
    DBGrid: TRxDBGrid;
    Label3: TLabel;
    DBEditCodigo: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    EditDescricao: TEdit;
    QryTabelas: TUniQuery;
    ToolButton4: TToolButton;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    QryTabelasDescricao: TStringField;
    DBEditDescricao: TDBEdit;
    QryTabelasPrincipal: TStringField;
    ChkIdentity: TCheckBox;
    QryTabelasCodigo: TIntegerField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryTabelasAfterCancel(DataSet: TDataSet);
    procedure QryTabelasAfterPost(DataSet: TDataSet);
    procedure QryTabelasBeforeDelete(DataSet: TDataSet);
    procedure QryTabelasBeforeEdit(DataSet: TDataSet);
    procedure QryTabelasBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ChkIdentityClick(Sender: TObject);
    procedure QryTabelasBeforePost(DataSet: TDataSet);
    procedure QryTabelasNewRecord(DataSet: TDataSet);

  private
    function GetTabela: string;
    procedure SetTabela(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property Tabela: string read GetTabela write SetTabela;

  end;

var
  FormTabelas: TFormTabelas;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormTabelas.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTabelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryTabelas.Close;
  FormTabelas := nil;
  Action := caFree;
end;

procedure TFormTabelas.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;

end;

procedure TFormTabelas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormTabelas.BtnPesquisarClick(Sender: TObject);
begin
  with QryTabelas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ' + GetTabela);
    SQL.Add('where');
    SQL.Add('Descricao like :pDesc');
    ParamByName('pDesc').Value := '%' + EditDescricao.Text + '%';
    SQL.Add('order by Descricao');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormTabelas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormTabelas.PageControlChange(Sender: TObject);
begin
  if QryTabelas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormTabelas.QryTabelasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

  ChkIdentity.Checked := True;
  ChkIdentity.Visible := False;
  DBEditCodigo.ReadOnly := True;

end;

procedure TFormTabelas.QryTabelasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

  ChkIdentity.Checked := True;
  ChkIdentity.Visible := False;
  DBEditCodigo.ReadOnly := True;

end;

procedure TFormTabelas.QryTabelasBeforeDelete(DataSet: TDataSet);
begin
  if QryTabelasPrincipal.AsString = 'S' then
  begin
    InfoBox('Registro Principal, não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormTabelas.QryTabelasBeforeEdit(DataSet: TDataSet);
begin
  if QryTabelasPrincipal.AsString = 'S' then
  begin
    InfoBox('Registro Principal, não é possível alterar.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryTabelasDescricao.FocusControl;

end;

procedure TFormTabelas.QryTabelasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  ChkIdentity.Visible := True;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryTabelasDescricao.FocusControl;

end;

procedure TFormTabelas.FormShow(Sender: TObject);
begin

  Caption := 'Tabela Auxiliar - ' + Tabela;
  AbreQuery(QryTabelas, Tabela);
  EditDescricao.SetFocus;

end;

function TFormTabelas.GetTabela: string;
begin
  GetTabela := FormMain.Tabela;
end;

procedure TFormTabelas.SetTabela(const Value: string);
begin
  GetTabela;
end;

procedure TFormTabelas.ChkIdentityClick(Sender: TObject);
begin

  DBEditCodigo.Clear;
  DBEditCodigo.ReadOnly := ChkIdentity.Checked;

end;

procedure TFormTabelas.QryTabelasBeforePost(DataSet: TDataSet);
begin
  if QryTabelas.Tag = 1 then
  begin

    if ChkIdentity.Checked then
      QryTabelasCodigo.AsInteger := UltimoCodigo(Tabela);


    CamposObrigatorios(DataSet as TUniQuery);

  end;

end;

procedure TFormTabelas.QryTabelasNewRecord(DataSet: TDataSet);
begin
  QryTabelasPrincipal.AsString := 'N';
end;

end.
