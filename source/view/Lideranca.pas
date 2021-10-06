unit Lideranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormLideranca = class(TForm)
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
    ToolButtonSair: TToolButton;
    ToolButtonSEdicao2: TToolButton;
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
    Label3: TLabel;
    DBEdit1: TDBEdit;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    Label2: TLabel;
    ComboBoxDepto: TComboBox;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    EditAno: TEdit;
    QryLideres: TUniQuery;
    QryLideresCodigo: TIntegerField;
    QryLideresAno: TStringField;
    QryLideresMembro: TIntegerField;
    QryLideresNomeMembro: TStringField;
    Label5: TLabel;
    SpdBtnMembros: TSpeedButton;
    DBText1: TDBText;
    DBEdit4: TDBEdit;
    QryLideresDepartamento: TIntegerField;
    RxDBCboDepto: TRxDBComboBox;
    procedure ToolButtonSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure QryLideresAfterCancel(DataSet: TDataSet);
    procedure QryLideresAfterPost(DataSet: TDataSet);
    procedure QryLideresBeforeDelete(DataSet: TDataSet);
    procedure QryLideresBeforeEdit(DataSet: TDataSet);
    procedure QryLideresBeforeInsert(DataSet: TDataSet);
    procedure QryLideresNewRecord(DataSet: TDataSet);
    procedure QryLideresAnoValidate(Sender: TField);
    procedure QryLideresCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure QryLideresBeforePost(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLideranca: TFormLideranca;

implementation

uses UDmJetro, Funcoes;

{$R *.dfm}

procedure TFormLideranca.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormLideranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryLideres.Close;

  FormLideranca := nil;
  Action := caFree;
end;

procedure TFormLideranca.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;


end;

procedure TFormLideranca.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormLideranca.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormLideranca.BtnPesquisarClick(Sender: TObject);
begin
  with QryLideres do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select L.* from Lideres L');
    SQL.Add('inner join Membros M on M.FichaNumero = L.Membro');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('L.Departamento = :pDepto');
            ParamByName('pDepto').Value :=  Copy(ComboBoxDepto.Text, 1, 4);
          end;
      1 : begin
            SQL.Add('M.Nome like :pNome');
            ParamByName('pNome').Value := EditNome.Text + '%';
          end;
      2 : begin
            SQL.Add('L.Ano = :pAno');
            ParamByName('pAno').Value := EditAno.Text;
          end;
    end;
    SQL.Add('order by Ano, Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormLideranca.FormShow(Sender: TObject);
begin
  AbreQuery(QryLideres, 'Lideres');


  ComboBoxDepto.SetFocus;

end;

procedure TFormLideranca.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormLideranca.PageControlChange(Sender: TObject);
begin
  if QryLideres.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormLideranca.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormLideranca.QryLideresAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormLideranca.QryLideresAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormLideranca.QryLideresBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormLideranca.QryLideresBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;

  QryLideresMembro.FocusControl;
end;

procedure TFormLideranca.QryLideresBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;

  QryLideresMembro.FocusControl;
end;

procedure TFormLideranca.QryLideresNewRecord(DataSet: TDataSet);
begin
  QryLideresAno.AsString := IntToStr(YearOf(Now));
end;

procedure TFormLideranca.QryLideresAnoValidate(Sender: TField);
begin
  If StrToInt(QryLideresAno.AsString) < YearOf(Now) then
  begin
    InfoBox('Ano Inválido');
    QryLideresAno.FocusControl;
    Abort;
  end;
end;

procedure TFormLideranca.QryLideresCalcFields(DataSet: TDataSet);
begin
  QryLideresNomeMembro.AsString := '';
  if not QryLideresMembro.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryLideresMembro.AsInteger) );
      SQL.Add('  and Status = 1');
      Open;
      QryLideresNomeMembro.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Membro não localizado.');
        QryLideresMembro.FocusControl;
      end;

    end;
  end;

end;

procedure TFormLideranca.SpdBtnMembrosClick(Sender: TObject);
begin
  QryLideresMembro.FocusControl;
  QryLideresMembro.AsString := Buscar('Membros','FichaNumero','Nome','Nome','where Status = 1');

end;

procedure TFormLideranca.QryLideresBeforePost(DataSet: TDataSet);
begin
  CamposObrigatorios(DataSet as TUniQuery);

end;

procedure TFormLideranca.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

procedure TFormLideranca.FormActivate(Sender: TObject);
begin
  ComboTabelaAuxiliar('Departamentos','',ComboBoxDepto);
  RxComboTabelaAuxiliar('Departamentos','',RxDBCboDepto);

end;

end.
