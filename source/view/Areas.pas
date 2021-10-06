unit Areas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormAreas = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelFiltro: TPanel;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
    GroupBoxFiltro: TGroupBox;
    BtnPesquisar: TBitBtn;
    DBGrid: TRxDBGrid;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    cboFiltro: TComboBox;
    Notebook: TNotebook;
    Label1: TLabel;
    EditNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    QryAreas: TUniQuery;
    QryAreasCodigo: TIntegerField;
    QryAreasUserInsert: TIntegerField;
    QryAreasDataInsert: TDateTimeField;
    QryAreasUserUpdate: TIntegerField;
    QryAreasDataUpdate: TDateTimeField;
    ToolBar1: TToolBar;
    ToolButtonVoltar: TToolButton;
    ToolButtonAvancar: TToolButton;
    ToolButtonS1: TToolButton;
    ToolButtonIncluir: TToolButton;
    ToolButtonAlterar: TToolButton;
    ToolButtonExcluir: TToolButton;
    ToolButtonSEdicao1: TToolButton;
    ToolButtonSalvar: TToolButton;
    ToolButtonCancelar: TToolButton;
    ToolButtonSEdicao2: TToolButton;
    ToolButtonSair: TToolButton;
    EditRede: TEdit;
    QryAreasOBSERVACAO: TMemoField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnMembros: TSpeedButton;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label8: TLabel;
    SpdBtnRedes: TSpeedButton;
    DBText2: TDBText;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    EditSupervisor: TEdit;
    QryAreasNOME: TStringField;
    QryAreasSUPERVISOR: TIntegerField;
    QryAreasNomeRede: TStringField;
    QryAreasNomeSupervisor: TStringField;
    QryAreasREDE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryAreasBeforeInsert(DataSet: TDataSet);
    procedure QryAreasAfterPost(DataSet: TDataSet);
    procedure QryAreasAfterCancel(DataSet: TDataSet);
    procedure QryAreasBeforeDelete(DataSet: TDataSet);
    procedure QryAreasBeforeEdit(DataSet: TDataSet);
    procedure QryAreasBeforePost(DataSet: TDataSet);
    procedure ToolButtonSairClick(Sender: TObject);
    procedure QryAreasCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpdBtnRedesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAreas: TFormAreas;

implementation

uses UDmJetro, Funcoes, Main, Math;

{$R *.dfm}

procedure TFormAreas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryAreas.Close;

  FormAreas := nil;
  Action := caFree;
end;

procedure TFormAreas.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;
end;

procedure TFormAreas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormAreas.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormAreas.BtnPesquisarClick(Sender: TObject);
begin
  with QryAreas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Areas.* from Areas');
    SQL.Add('inner join Redes R on R.Codigo = Areas.Rede');
    SQL.Add('inner join Membros M on M.FichaNumero = Areas.Supervisor');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Areas.Nome like :pNome');
            ParamByName('pNome').Value := EditNome.text + '%';
          end;
      1 : begin
            SQL.Add('R.Nome like :pRede');
            ParamByName('pRede').Value := EditRede.Text + '%';
          end;
      2 : begin
            SQL.Add('M.Nome like :pSupervisor');
            ParamByName('pSupervisor').Value := EditSupervisor.Text + '%';
          end;
    end;
    SQL.Add('order by Areas.Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormAreas.FormShow(Sender: TObject);
begin
  AbreQuery(QryAreas, 'Areas');
  EditNome.SetFocus;
end;

procedure TFormAreas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormAreas.PageControlChange(Sender: TObject);
begin
  if QryAreas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormAreas.QryAreasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormAreas.QryAreasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormAreas.QryAreasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormAreas.QryAreasBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormAreas.QryAreasBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormAreas.QryAreasBeforePost(DataSet: TDataSet);
begin

  QryAreas.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if DataSet.Tag = 1 then
  begin
    DataSet.FieldByName('DataInsert').AsDateTime := now;
    DataSet.FieldByName('UserInsert').AsInteger  := FormMain.Usuario;
    DataSet.FieldByName('DataUpdate').AsDateTime := now;
    DataSet.FieldByName('UserUpdate').AsInteger  := FormMain.Usuario;
  end
  else if DataSet.Tag = 2 then
  begin
    DataSet.FieldByName('DataUpdate').AsDateTime := now;
    DataSet.FieldByName('UserUpdate').AsInteger  := FormMain.Usuario;
  end;

end;

procedure TFormAreas.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAreas.QryAreasCalcFields(DataSet: TDataSet);
begin

  QryAreasNomeRede.AsString := '';
  if not QryAreasRede.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Redes');
      SQL.Add('where Codigo = ' + IntToStr(QryAreasRede.AsInteger) );
      Open;

      QryAreasNomeRede.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Rede não localizada.');
        QryAreasRede.FocusControl;
      end;
    end;
  end;


  QryAreasNomeSupervisor.AsString := '';
  if not QryAreasSupervisor.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryAreasSupervisor.AsInteger) );
      SQL.Add('  and Status = 1');
      Open;

      QryAreasNomeSupervisor.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Supervisor de Área não localizado.');
        QryAreasSupervisor.FocusControl;
      end;
    end;
  end;
end;

procedure TFormAreas.SpdBtnMembrosClick(Sender: TObject);
begin

  QryAreasSupervisor.FocusControl;
  QryAreasSupervisor.AsString := Buscar('Membros','FichaNumero','Nome','Nome','where Status = 1')

end;

procedure TFormAreas.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;

end;

procedure TFormAreas.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnRedes.Click;

end;

procedure TFormAreas.SpdBtnRedesClick(Sender: TObject);
begin

  QryAreasRede.FocusControl;
  QryAreasRede.AsString := Buscar('Redes','Codigo','Nome','Nome')

end;

end.
