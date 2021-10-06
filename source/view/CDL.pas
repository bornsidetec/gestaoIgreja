unit CDL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormCDL = class(TForm)
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
    ComboBoxCargo: TComboBox;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    EditAno: TEdit;
    QryCDL: TUniQuery;
    QryCDLCodigo: TIntegerField;
    QryCDLAno: TStringField;
    QryCDLMembro: TIntegerField;
    QryCDLNomeMembro: TStringField;
    Label5: TLabel;
    SpdBtnMembros: TSpeedButton;
    DBText1: TDBText;
    DBEdit4: TDBEdit;
    QryCDLCargo: TIntegerField;
    RxDBCboCargo: TRxDBComboBox;
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
    procedure QryCDLAfterCancel(DataSet: TDataSet);
    procedure QryCDLAfterPost(DataSet: TDataSet);
    procedure QryCDLBeforeDelete(DataSet: TDataSet);
    procedure QryCDLBeforeEdit(DataSet: TDataSet);
    procedure QryCDLBeforeInsert(DataSet: TDataSet);
    procedure QryCDLNewRecord(DataSet: TDataSet);
    procedure QryCDLAnoValidate(Sender: TField);
    procedure QryCDLCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure QryCDLBeforePost(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCDL: TFormCDL;

implementation

uses UDmJetro, Funcoes;

{$R *.dfm}

procedure TFormCDL.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCDL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryCDL.Close;

  FormCDL := nil;
  Action := caFree;
end;

procedure TFormCDL.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;

  ComboTabelaAuxiliar('CargosCDL','',ComboBoxCargo);

end;

procedure TFormCDL.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormCDL.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormCDL.BtnPesquisarClick(Sender: TObject);
begin
  with QryCDL do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select CDL.* from CDL');
    SQL.Add('inner join Membros M on M.FichaNumero = CDL.Membro');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Cargo = :pCargo');
            ParamByName('pCargo').Value :=  Copy(ComboBoxCargo.Text, 1, 4);
          end;
      1 : begin
            SQL.Add('M.Nome like :pNome');
            ParamByName('pNome').Value := EditNome.Text + '%';
          end;
      2 : begin
            SQL.Add('Ano = :pAno');
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

procedure TFormCDL.FormShow(Sender: TObject);
begin
  AbreQuery(QryCDL, 'CDL');


  ComboBoxCargo.SetFocus;
  
end;

procedure TFormCDL.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormCDL.PageControlChange(Sender: TObject);
begin
  if QryCDL.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormCDL.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormCDL.QryCDLAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormCDL.QryCDLAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormCDL.QryCDLBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormCDL.QryCDLBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;

  QryCDLMembro.FocusControl;
end;

procedure TFormCDL.QryCDLBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;

  QryCDLMembro.FocusControl;
end;

procedure TFormCDL.QryCDLNewRecord(DataSet: TDataSet);
begin
  QryCDLAno.AsString := IntToStr(YearOf(Now));
end;

procedure TFormCDL.QryCDLAnoValidate(Sender: TField);
begin
  If StrToInt(QryCDLAno.AsString) < YearOf(Now) then
  begin
    InfoBox('Ano Inválido');
    QryCDLAno.FocusControl;
    Abort;
  end;
end;

procedure TFormCDL.QryCDLCalcFields(DataSet: TDataSet);
begin
  QryCDLNomeMembro.AsString := '';
  if not QryCDLMembro.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryCDLMembro.AsInteger) );
      SQL.Add('  and Status = 1');
      Open;
      QryCDLNomeMembro.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Membro não localizado.');
        QryCDLMembro.FocusControl;
      end;

    end;
  end;

end;

procedure TFormCDL.SpdBtnMembrosClick(Sender: TObject);
begin
  QryCDLMembro.FocusControl;
  QryCDLMembro.AsString := Buscar('Membros','FichaNumero','Nome','Nome','where Status = 1');

end;

procedure TFormCDL.QryCDLBeforePost(DataSet: TDataSet);
begin
  CamposObrigatorios(DataSet as TUniQuery);
end;

procedure TFormCDL.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

procedure TFormCDL.FormActivate(Sender: TObject);
begin
  RxComboTabelaAuxiliar('CargosCDL','',RxDBCboCargo);

end;

end.
