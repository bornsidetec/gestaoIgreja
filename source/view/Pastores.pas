unit Pastores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS;

type
  TFormPastores = class(TForm)
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
    Notebook: TNotebook;
    Label1: TLabel;
    EditNome: TEdit;
    Label2: TLabel;
    EditProntuario: TEdit;
    GroupBoxFiltro: TGroupBox;
    cboFiltro: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBCboUF: TDBComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit2: TDBEdit;
    DBCheckBoxTitular: TDBCheckBox;
    QryPastores: TUniQuery;
    AutoIncField1: TIntegerField;
    QryPastoresDataNascimento: TDateTimeField;
    QryPastoresProntuario: TStringField;
    QryPastoresCPF: TStringField;
    QryPastoresRG: TStringField;
    QryPastoresEstadoCivil: TStringField;
    QryPastoresStatus: TIntegerField;
    QryPastoresTitular: TStringField;
    IntegerField3: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField4: TIntegerField;
    DateTimeField2: TDateTimeField;
    DBRadioGroup1: TDBRadioGroup;
    QryPastoresEndRua: TStringField;
    QryPastoresEndNumero: TStringField;
    QryPastoresEndBairro: TStringField;
    QryPastoresEndComplemento: TStringField;
    QryPastoresEndCidade: TStringField;
    QryPastoresEndEstado: TStringField;
    QryPastoresEndCep: TStringField;
    SpdBtnCEP: TSpeedButton;
    QryPastoresFoneResid: TStringField;
    QryPastoresFoneCelular: TStringField;
    Label9: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    QryPastoresCategoria: TStringField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure QryPastoresAfterCancel(DataSet: TDataSet);
    procedure QryPastoresAfterPost(DataSet: TDataSet);
    procedure QryPastoresBeforeDelete(DataSet: TDataSet);
    procedure QryPastoresBeforeEdit(DataSet: TDataSet);
    procedure QryPastoresBeforeInsert(DataSet: TDataSet);
    procedure QryPastoresBeforePost(DataSet: TDataSet);
    procedure QryPastoresNewRecord(DataSet: TDataSet);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPastores: TFormPastores;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormPastores.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPastores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryPastores.close;

  FormPastores := nil;
  Action := caFree;
end;

procedure TFormPastores.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;
end;

procedure TFormPastores.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormPastores.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormPastores.BtnPesquisarClick(Sender: TObject);
begin
  with QryPastores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Pastores');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Nome like :pNome');
            ParamByName('pNome').Value := EditNome.text + '%';
          end;
      1 : begin
            SQL.Add('Prontuario = :pProntuario');
            ParamByName('pProntuario').Value := EditProntuario.Text;
          end;
    end;
    SQL.Add('order by Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormPastores.FormShow(Sender: TObject);
begin
  AbreQuery(QryPastores, 'Pastores');
  EditNome.SetFocus;
end;

procedure TFormPastores.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormPastores.PageControlChange(Sender: TObject);
begin
  if QryPastores.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormPastores.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryPastores, DBEdit9.Text);
end;

procedure TFormPastores.QryPastoresAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormPastores.QryPastoresAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormPastores.QryPastoresBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Titular').AsString = 'S' then
  begin
    InfoBox('Pastor Titular, não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormPastores.QryPastoresBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

  DBCheckBoxTitular.ReadOnly := True;

end;

procedure TFormPastores.QryPastoresBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

  DBCheckBoxTitular.ReadOnly := False;

end;

procedure TFormPastores.QryPastoresBeforePost(DataSet: TDataSet);
begin

  QryPastores.Fields.Fields[0].FocusControl;

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

  if (QryPastoresTitular.AsString = 'S') and (DataSet.Tag = 1) then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Pastores where Titular = ''S''');
      Open;
      if not IsEmpty then
      begin
        InfoBox('Já existe um pastor titular cadastrado.');
        QryPastoresTitular.AsString := 'N';
      end;
    end;
  end;




end;

procedure TFormPastores.QryPastoresNewRecord(DataSet: TDataSet);
begin
  QryPastoresStatus.AsInteger := 1;
  QryPastoresTitular.AsString := 'N';
end;

procedure TFormPastores.SpdBtnCEPClick(Sender: TObject);
begin
  QryPastoresEndCep.FocusControl;
  QryPastoresEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormPastores.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

end.
