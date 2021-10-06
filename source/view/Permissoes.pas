unit Permissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS;

type
  TFormPermissoes = class(TForm)
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
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    QryPermissoes: TUniQuery;
    QryPermissoesCodigo: TIntegerField;
    QryPermissoesMenu: TStringField;
    QryPermissoesDepartamento: TIntegerField;
    QryPermissoesVisualizar: TStringField;
    QryPermissoesEditar: TStringField;
    QryPermissoesDescDepto: TStringField;
    ComboBoxDepartamento: TComboBox;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit4: TDBEdit;
    GroupBoxPermissao: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryPermissoesAfterCancel(DataSet: TDataSet);
    procedure QryPermissoesAfterPost(DataSet: TDataSet);
    procedure QryPermissoesBeforeDelete(DataSet: TDataSet);
    procedure QryPermissoesBeforeEdit(DataSet: TDataSet);
    procedure QryPermissoesBeforeInsert(DataSet: TDataSet);
    procedure QryPermissoesBeforePost(DataSet: TDataSet);
    procedure QryPermissoesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPermissoes: TFormPermissoes;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormPermissoes.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPermissoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryPermissoes.close;

  FormPermissoes := nil;
  Action := caFree;
end;

procedure TFormPermissoes.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
end;

procedure TFormPermissoes.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormPermissoes.BtnPesquisarClick(Sender: TObject);
begin
  with QryPermissoes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Permissoes');
    SQL.Add('where');
    SQL.Add('Departamento = :pDepto');
    //ParamByName('pDepto').Value := ComboBoxDepartamento.ItemIndex + 1;
    ParamByName('pDepto').Value := Copy(ComboBoxDepartamento.Text, 1, 4);
    SQL.Add('order by Menu');
    Open;
  end;

end;

procedure TFormPermissoes.FormShow(Sender: TObject);
begin
  AbreQuery(QryPermissoes, 'Permissoes');
end;

procedure TFormPermissoes.FormActivate(Sender: TObject);
begin
  {
  ComboBoxDepartamento.Clear;
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Descricao from DeptoUsuarios order by Codigo');
    Open;
    First;
    while not EOF do
    begin
      ComboBoxDepartamento.Items.Add(FieldByName('Descricao').AsString);
      Next;
    end;
  end;

  ComboBoxDepartamento.ItemIndex := 0;
  }

  ComboTabelaAuxiliar('DeptoUsuarios','where Codigo <> 1',ComboBoxDepartamento);
  ComboBoxDepartamento.SetFocus;

end;

procedure TFormPermissoes.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormPermissoes.PageControlChange(Sender: TObject);
begin
  if QryPermissoes.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormPermissoes.QryPermissoesAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormPermissoes.QryPermissoesAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormPermissoes.QryPermissoesBeforeDelete(DataSet: TDataSet);
begin
  InfoBox('Somente alterações são permitidas.');
  Abort;


  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormPermissoes.QryPermissoesBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryPermissoesVisualizar.FocusControl;

end;

procedure TFormPermissoes.QryPermissoesBeforeInsert(DataSet: TDataSet);
begin
  InfoBox('Somente alterações são permitidas.');
  Abort;


  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryPermissoesVisualizar.FocusControl;

end;

procedure TFormPermissoes.QryPermissoesBeforePost(DataSet: TDataSet);
begin

  QryPermissoes.Fields.Fields[0].FocusControl;

end;

procedure TFormPermissoes.QryPermissoesCalcFields(DataSet: TDataSet);
begin
  QryPermissoesDescDepto.AsString := '';
  if not QryPermissoesDepartamento.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from DeptoUsuarios');
      SQL.Add('where Codigo = ' + IntToStr(QryPermissoesDepartamento.AsInteger) );
      Open;
      QryPermissoesDescDepto.AsString := FieldByName('Descricao').AsString;

      if IsEmpty then
      begin
        InfoBox('Departamento não Localizado');
        QryPermissoesDepartamento.FocusControl;
      end;

    end;
  end;

end;

end.
