unit Visitantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormVisitantes = class(TForm)
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
    cboFiltro: TComboBox;
    Notebook: TNotebook;
    Label1: TLabel;
    EditNome: TEdit;
    Label2: TLabel;
    EditCEP: TEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label18: TLabel;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    Label26: TLabel;
    DBEdit17: TDBEdit;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    Label8: TLabel;
    ComboBoxMes: TComboBox;
    DBCboUF: TDBComboBox;
    QryVisitantes: TUniQuery;
    QryVisitantesCodigo: TIntegerField;
    QryVisitantesNome: TStringField;
    QryVisitantesUserInsert: TIntegerField;
    QryVisitantesDataInsert: TDateTimeField;
    QryVisitantesUserUpdate: TIntegerField;
    QryVisitantesDataUpdate: TDateTimeField;
    DBRadioGroup1: TDBRadioGroup;
    QryVisitantesStatus: TIntegerField;
    DBRadioGroupSexo: TDBRadioGroup;
    QryVisitantesSexo: TStringField;
    SpdBtnCEP: TSpeedButton;
    QryVisitantesEndRua: TStringField;
    QryVisitantesEndNumero: TStringField;
    QryVisitantesEndBairro: TStringField;
    QryVisitantesEndComplemento: TStringField;
    QryVisitantesEndCidade: TStringField;
    QryVisitantesEndEstado: TStringField;
    QryVisitantesEndCep: TStringField;
    QryVisitantesFoneResid: TStringField;
    QryVisitantesFoneCelular: TStringField;
    Label6: TLabel;
    DBDateEdit1: TDBDateEdit;
    QryVisitantesDATANASCIMENTO: TDateTimeField;
    DBText1: TDBText;
    Label4: TLabel;
    Label9: TLabel;
    EditCelular: TMaskEdit;
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
    procedure QryVisitantesBeforeInsert(DataSet: TDataSet);
    procedure QryVisitantesAfterPost(DataSet: TDataSet);
    procedure QryVisitantesAfterCancel(DataSet: TDataSet);
    procedure QryVisitantesBeforeDelete(DataSet: TDataSet);
    procedure QryVisitantesBeforeEdit(DataSet: TDataSet);
    procedure QryVisitantesBeforePost(DataSet: TDataSet);
    procedure QryVisitantesNewRecord(DataSet: TDataSet);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVisitantes: TFormVisitantes;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormVisitantes.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVisitantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryVisitantes.Close;

  FormVisitantes := nil;
  Action := caFree;
end;

procedure TFormVisitantes.FormCreate(Sender: TObject);
begin
  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;
end;

procedure TFormVisitantes.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormVisitantes.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormVisitantes.BtnPesquisarClick(Sender: TObject);
begin
  with {DMJetro.}QryVisitantes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Visitantes');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Nome like :pNome');
            ParamByName('pNome').Value := EditNome.text + '%';
          end;
      1 : begin
            SQL.Add('EndCep = :pCEP');
            ParamByName('pCEP').Value := EditCEP.Text;
          end;
      2 : begin
            SQL.Add('MesNasc = :pMes');
            ParamByName('pMes').Value := ComboBoxMes.ItemIndex + 1;
          end;
      3 : begin
            SQL.Add('FoneCelular = :pCelular');
            ParamByName('pCelular').Value := EditCelular.Text;
          end;

    end;
    SQL.Add('  and Status = 1');
    SQL.Add('order by Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormVisitantes.FormShow(Sender: TObject);
begin
  AbreQuery(QryVisitantes, 'Visitantes');
  EditNome.SetFocus;
end;

procedure TFormVisitantes.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormVisitantes.PageControlChange(Sender: TObject);
begin
  if QryVisitantes.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormVisitantes.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryVisitantes, DBEdit9.Text);
end;

procedure TFormVisitantes.QryVisitantesBeforeInsert(DataSet: TDataSet);
var
  Limite : Integer;
begin
  {
  if not Versao(Limite,'Visitantes') then
  begin
    InfoBox('Versão está limitada a ' + IntToStr(Limite) + ' registros.');
    Abort;
  end;
  }
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormVisitantes.QryVisitantesAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;
end;

procedure TFormVisitantes.QryVisitantesAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;
end;

procedure TFormVisitantes.QryVisitantesBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormVisitantes.QryVisitantesBeforeEdit(DataSet: TDataSet);
begin
  if QryVisitantesStatus.AsInteger = 5 then
  begin
    InfoBox('Este visitante já consta no cadastro de Membros.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormVisitantes.QryVisitantesBeforePost(DataSet: TDataSet);
begin

  QryVisitantes.Fields.Fields[0].FocusControl;

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

procedure TFormVisitantes.QryVisitantesNewRecord(DataSet: TDataSet);
begin
  QryVisitantesStatus.AsInteger := 1;
  QryVisitantesSexo.AsString    := 'M';
  //QryVisitantesMesNasc.AsInteger := 1;
end;

procedure TFormVisitantes.SpdBtnCEPClick(Sender: TObject);
begin
  QryVisitantesEndCep.FocusControl;
  QryVisitantesEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormVisitantes.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

end.
