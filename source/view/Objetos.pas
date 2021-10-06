unit Objetos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, rxCurrEdit;

type
  TFormObjetos = class(TForm)
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
    QryObjetos: TUniQuery;
    ComboBoxTipo: TComboBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnTipoObjeto: TSpeedButton;
    DBText1: TDBText;
    QryObjetosCodigo: TIntegerField;
    QryObjetosUserInsert: TIntegerField;
    QryObjetosDataInsert: TDateTimeField;
    QryObjetosUserUpdate: TIntegerField;
    QryObjetosDataUpdate: TDateTimeField;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    QryObjetosTipo: TIntegerField;
    QryObjetosTitulo: TStringField;
    QryObjetosQtde: TIntegerField;
    QryObjetosDescTipoObjeto: TStringField;
    Label6: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    EditTitulo: TEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    QryObjetosConteudo: TMemoField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryObjetosAfterCancel(DataSet: TDataSet);
    procedure QryObjetosAfterPost(DataSet: TDataSet);
    procedure QryObjetosBeforeDelete(DataSet: TDataSet);
    procedure QryObjetosBeforeEdit(DataSet: TDataSet);
    procedure QryObjetosBeforeInsert(DataSet: TDataSet);
    procedure QryObjetosBeforePost(DataSet: TDataSet);
    procedure SpdBtnTipoObjetoClick(Sender: TObject);
    procedure QryObjetosCalcFields(DataSet: TDataSet);
    procedure QryObjetosNewRecord(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObjetos: TFormObjetos;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormObjetos.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormObjetos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryObjetos.close;

  FormObjetos := nil;
  Action := caFree;
end;

procedure TFormObjetos.FormCreate(Sender: TObject);
begin
  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;

  ComboTabelaAuxiliar('TiposObjeto','',ComboBoxTipo);

end;

procedure TFormObjetos.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormObjetos.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormObjetos.BtnPesquisarClick(Sender: TObject);
begin
  with QryObjetos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Objetos');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('where Tipo = :pTipo');
            ParamByName('pTipo').Value := copy(ComboBoxTipo.Text, 1, 4);
          end;
      1 : begin
            SQL.Add('where Titulo like :pTitulo');
            ParamByName('pTitulo').Value := EditTitulo.text + '%';
          end;
    end;
    SQL.Add('order by Titulo');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormObjetos.FormShow(Sender: TObject);
begin
  AbreQuery(QryObjetos, 'Objetos');
  QryObjetos.First;

  ComboBoxTipo.ItemIndex := 0;
  ComboBoxTipo.SetFocus;

end;

procedure TFormObjetos.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormObjetos.PageControlChange(Sender: TObject);
begin
  if QryObjetos.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormObjetos.QryObjetosAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormObjetos.QryObjetosAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormObjetos.QryObjetosBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;
end;

procedure TFormObjetos.QryObjetosBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryObjetosTipo.FocusControl;
end;

procedure TFormObjetos.QryObjetosBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryObjetosTipo.FocusControl;
end;

procedure TFormObjetos.QryObjetosBeforePost(DataSet: TDataSet);
begin
  QryObjetos.Fields.Fields[0].FocusControl;

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

procedure TFormObjetos.SpdBtnTipoObjetoClick(Sender: TObject);
begin
  QryObjetosTipo.FocusControl;
  QryObjetosTipo.AsString := Buscar('TiposObjeto','Codigo','Descricao', 'Descricao')
end;

procedure TFormObjetos.QryObjetosCalcFields(DataSet: TDataSet);
begin
  QryObjetosDescTipoObjeto.AsString := '';
  if not QryObjetosTipo.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from TiposObjeto');
      SQL.Add('where Codigo = ' + IntToStr(QryObjetosTipo.AsInteger) );
      Open;
      QryObjetosDescTipoObjeto.AsString := FieldByName('Descricao').AsString;
      if IsEmpty then
      begin
        InfoBox('Tipo do Objeto não Localizada.');
        QryObjetosTipo.FocusControl;
      end;
    end;
  end;
end;

procedure TFormObjetos.QryObjetosNewRecord(DataSet: TDataSet);
begin
  QryObjetosQtde.AsInteger := 1;
end;

procedure TFormObjetos.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnTipoObjeto.Click;
end;

end.
