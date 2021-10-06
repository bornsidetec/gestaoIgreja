unit ClassesEBQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, rxCurrEdit;

type
  TFormClassesEBQ = class(TForm)
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
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton3: TToolButton;
    DBGrid: TRxDBGrid;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Notebook: TNotebook;
    Label1: TLabel;
    Label2: TLabel;
    GroupBoxFiltro: TGroupBox;
    cboFiltro: TComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    QryClasses: TUniQuery;
    ComboBoxCategoria: TComboBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnCategorias: TSpeedButton;
    DBText1: TDBText;
    QryClassesCodigo: TIntegerField;
    QryClassesUserInsert: TIntegerField;
    QryClassesDataInsert: TDateTimeField;
    QryClassesUserUpdate: TIntegerField;
    QryClassesDataUpdate: TDateTimeField;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    QryClassesCategoria: TIntegerField;
    QryClassesDescricao: TStringField;
    QryClassesCapacidade: TIntegerField;
    QryClassesDescCategoria: TStringField;
    Label6: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    EditCategoria: TEdit;
    QryClassesIdadeInicial: TIntegerField;
    QryClassesIdadeFinal: TIntegerField;
    Label7: TLabel;
    RxDBCalcEdit2: TRxDBCalcEdit;
    Label8: TLabel;
    RxDBCalcEdit3: TRxDBCalcEdit;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryClassesAfterCancel(DataSet: TDataSet);
    procedure QryClassesAfterPost(DataSet: TDataSet);
    procedure QryClassesBeforeDelete(DataSet: TDataSet);
    procedure QryClassesBeforeEdit(DataSet: TDataSet);
    procedure QryClassesBeforeInsert(DataSet: TDataSet);
    procedure QryClassesBeforePost(DataSet: TDataSet);
    procedure SpdBtnCategoriasClick(Sender: TObject);
    procedure QryClassesCalcFields(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClassesEBQ: TFormClassesEBQ;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormClassesEBQ.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClassesEBQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryClasses.close;

  FormClassesEBQ := nil;
  Action := caFree;
end;

procedure TFormClassesEBQ.FormCreate(Sender: TObject);
begin
  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;

  ComboTabelaAuxiliar('CategoriasClasse','',ComboBoxCategoria);

end;

procedure TFormClassesEBQ.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormClassesEBQ.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormClassesEBQ.BtnPesquisarClick(Sender: TObject);
begin
  with QryClasses do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Classes');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('where Categoria = :pCategoria');
            ParamByName('pCategoria').Value := copy(ComboBoxCategoria.Text, 1, 4);
          end;
      1 : begin
            SQL.Add('where Descricao like :pDesc');
            ParamByName('pDesc').Value := EditCategoria.text + '%';
          end;
    end;
    SQL.Add('order by Descricao');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormClassesEBQ.FormShow(Sender: TObject);
begin
  AbreQuery(QryClasses, 'Classes');
  QryClasses.First;

  ComboBoxCategoria.ItemIndex := 0;
  ComboBoxCategoria.SetFocus;

end;

procedure TFormClassesEBQ.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormClassesEBQ.PageControlChange(Sender: TObject);
begin
  if QryClasses.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormClassesEBQ.QryClassesAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormClassesEBQ.QryClassesAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormClassesEBQ.QryClassesBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;
end;

procedure TFormClassesEBQ.QryClassesBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryClassesCategoria.FocusControl;
end;

procedure TFormClassesEBQ.QryClassesBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryClassesCategoria.FocusControl;
end;

procedure TFormClassesEBQ.QryClassesBeforePost(DataSet: TDataSet);
begin
  QryClasses.Fields.Fields[0].FocusControl;

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

procedure TFormClassesEBQ.SpdBtnCategoriasClick(Sender: TObject);
begin
  QryClassesCategoria.FocusControl;
  QryClassesCategoria.AsString := Buscar('CategoriasClasse','Codigo','Descricao', 'Descricao')
end;

procedure TFormClassesEBQ.QryClassesCalcFields(DataSet: TDataSet);
begin
  QryClassesDescCategoria.AsString := '';
  if not QryClassesCategoria.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from CategoriasClasse');
      SQL.Add('where Codigo = ' + IntToStr(QryClassesCategoria.AsInteger) );
      Open;
      QryClassesDescCategoria.AsString := FieldByName('Descricao').AsString;
      if IsEmpty then
      begin
        InfoBox('Categoria não Localizada.');
        QryClassesCategoria.FocusControl;
      end;
    end;
  end;
end;

procedure TFormClassesEBQ.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCategorias.Click;
end;

end.
