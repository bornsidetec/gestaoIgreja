unit Setores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormSetores = class(TForm)
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
    QrySetores: TUniQuery;
    QrySetoresCodigo: TIntegerField;
    QrySetoresUserInsert: TIntegerField;
    QrySetoresDataInsert: TDateTimeField;
    QrySetoresUserUpdate: TIntegerField;
    QrySetoresDataUpdate: TDateTimeField;
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
    EditArea: TEdit;
    QrySetoresOBSERVACAO: TMemoField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnMembros: TSpeedButton;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label8: TLabel;
    SpdBtnAreas: TSpeedButton;
    DBText2: TDBText;
    DBEdit2: TDBEdit;
    QrySetoresNomeArea: TStringField;
    QrySetoresNomeSupervisor: TStringField;
    Label9: TLabel;
    EditSupervisor: TEdit;
    QrySetoresNOME: TStringField;
    QrySetoresAREA: TIntegerField;
    QrySetoresSUPERVISOR: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QrySetoresBeforeInsert(DataSet: TDataSet);
    procedure QrySetoresAfterPost(DataSet: TDataSet);
    procedure QrySetoresAfterCancel(DataSet: TDataSet);
    procedure QrySetoresBeforeDelete(DataSet: TDataSet);
    procedure QrySetoresBeforeEdit(DataSet: TDataSet);
    procedure QrySetoresBeforePost(DataSet: TDataSet);
    procedure ToolButtonSairClick(Sender: TObject);
    procedure QrySetoresCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpdBtnAreasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSetores: TFormSetores;

implementation

uses UDmJetro, Funcoes, Main, Math;

{$R *.dfm}

procedure TFormSetores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QrySetores.Close;

  FormSetores := nil;
  Action := caFree;
end;

procedure TFormSetores.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;
end;

procedure TFormSetores.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormSetores.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormSetores.BtnPesquisarClick(Sender: TObject);
begin
  with QrySetores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Setores.* from Setores');
    SQL.Add('inner join Areas A on A.Codigo = Setores.Area');
    SQL.Add('inner join Membros M on M.FichaNumero = Setores.Supervisor');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Setores.Nome like :pNome');
            ParamByName('pNome').Value := EditNome.text + '%';
          end;
      1 : begin
            SQL.Add('A.Nome like :pArea');
            ParamByName('pArea').Value := EditArea.Text + '%';
          end;
      2 : begin
            SQL.Add('M.Nome like :pCoordenador');
            ParamByName('pCoordenador').Value := EditSupervisor.Text + '%';
          end;
    end;
    SQL.Add('order by Setores.Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormSetores.FormShow(Sender: TObject);
begin
  AbreQuery(QrySetores, 'Setores');
  EditNome.SetFocus;
end;

procedure TFormSetores.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormSetores.PageControlChange(Sender: TObject);
begin
  if QrySetores.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormSetores.QrySetoresBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormSetores.QrySetoresAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormSetores.QrySetoresAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormSetores.QrySetoresBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormSetores.QrySetoresBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormSetores.QrySetoresBeforePost(DataSet: TDataSet);
begin

  QrySetores.Fields.Fields[0].FocusControl;

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

procedure TFormSetores.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormSetores.QrySetoresCalcFields(DataSet: TDataSet);
begin

  QrySetoresNomeArea.AsString := '';
  if not QrySetoresArea.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Areas');
      SQL.Add('where Codigo = ' + IntToStr(QrySetoresArea.AsInteger) );
      Open;

      QrySetoresNomeArea.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Área não localizada.');
        QrySetoresArea.FocusControl;
      end;
    end;
  end;


  QrySetoresNomeSupervisor.AsString := '';
  if not QrySetoresSupervisor.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QrySetoresSupervisor.AsInteger) );
      SQL.Add('  and Status = 1');
      Open;

      QrySetoresNomeSupervisor.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Supervisor de Setor não localizado.');
        QrySetoresSupervisor.FocusControl;
      end;
    end;
  end;
end;

procedure TFormSetores.SpdBtnMembrosClick(Sender: TObject);
begin

  QrySetoresSupervisor.FocusControl;
  QrySetoresSupervisor.AsString := Buscar('Membros','FichaNumero','Nome','Nome','where Status = 1')

end;

procedure TFormSetores.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;

end;

procedure TFormSetores.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnAreas.Click;

end;

procedure TFormSetores.SpdBtnAreasClick(Sender: TObject);
begin

  QrySetoresArea.FocusControl;
  QrySetoresAREA.AsString := Buscar('Areas','Codigo','Nome','Nome')

end;

end.
