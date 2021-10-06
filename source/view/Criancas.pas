unit Criancas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormCriancas = class(TForm)
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
    DBCboUF: TDBComboBox;
    QryCriancas: TUniQuery;
    QryCriancasCodigo: TIntegerField;
    QryCriancasNome: TStringField;
    QryCriancasUserInsert: TIntegerField;
    QryCriancasDataInsert: TDateTimeField;
    QryCriancasUserUpdate: TIntegerField;
    QryCriancasDataUpdate: TDateTimeField;
    DBRadioGroup1: TDBRadioGroup;
    QryCriancasStatus: TIntegerField;
    QryCriancasDataNascimento: TDateTimeField;
    Label6: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBRadioGroupSexo: TDBRadioGroup;
    QryCriancasSexo: TStringField;
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
    SpdBtnCEP: TSpeedButton;
    QryCriancasFoneResid: TStringField;
    QryCriancasFoneCelular: TStringField;
    QryCriancasEndRua: TStringField;
    QryCriancasEndNumero: TStringField;
    QryCriancasEndBairro: TStringField;
    QryCriancasEndComplemento: TStringField;
    QryCriancasEndCidade: TStringField;
    QryCriancasEndEstado: TStringField;
    QryCriancasEndCep: TStringField;
    SpdBtnPai: TSpeedButton;
    DBText1: TDBText;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    SpdBtnMae: TSpeedButton;
    DBText2: TDBText;
    QryCriancasFILIACAOPAI: TIntegerField;
    QryCriancasFILIACAOMAE: TIntegerField;
    QryCriancasNomePai: TStringField;
    QryCriancasNomeMae: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure QryCriancasBeforeInsert(DataSet: TDataSet);
    procedure QryCriancasAfterPost(DataSet: TDataSet);
    procedure QryCriancasAfterCancel(DataSet: TDataSet);
    procedure QryCriancasBeforeDelete(DataSet: TDataSet);
    procedure QryCriancasBeforeEdit(DataSet: TDataSet);
    procedure QryCriancasBeforePost(DataSet: TDataSet);
    procedure QryCriancasNewRecord(DataSet: TDataSet);
    procedure ToolButtonSairClick(Sender: TObject);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QryCriancasCalcFields(DataSet: TDataSet);
    procedure SpdBtnPaiClick(Sender: TObject);
    procedure SpdBtnMaeClick(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCriancas: TFormCriancas;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormCriancas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryCriancas.Close;

  FormCriancas := nil;
  Action := caFree;
end;

procedure TFormCriancas.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;
end;

procedure TFormCriancas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormCriancas.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormCriancas.BtnPesquisarClick(Sender: TObject);
begin
  with QryCriancas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Criancas');
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

procedure TFormCriancas.FormShow(Sender: TObject);
begin
  AbreQuery(QryCriancas, 'Criancas');
  EditNome.SetFocus;
end;

procedure TFormCriancas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormCriancas.PageControlChange(Sender: TObject);
begin
  if QryCriancas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormCriancas.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryCriancas, DBEdit9.Text);
end;

procedure TFormCriancas.QryCriancasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormCriancas.QryCriancasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormCriancas.QryCriancasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormCriancas.QryCriancasBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormCriancas.QryCriancasBeforeEdit(DataSet: TDataSet);
begin
  if QryCriancasStatus.AsInteger = 5 then
  begin
    InfoBox('Esta crianca já consta no cadastro de Membros.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormCriancas.QryCriancasBeforePost(DataSet: TDataSet);
begin

  QryCriancas.Fields.Fields[0].FocusControl;

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

procedure TFormCriancas.QryCriancasNewRecord(DataSet: TDataSet);
begin
  QryCriancasStatus.AsInteger := 1;
  QryCriancasSexo.AsString := 'M';
  
end;

procedure TFormCriancas.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCriancas.SpdBtnCEPClick(Sender: TObject);
begin
  QryCriancasEndCep.FocusControl;
  QryCriancasEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormCriancas.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

procedure TFormCriancas.QryCriancasCalcFields(DataSet: TDataSet);
begin
  QryCriancasNomePai.AsString := '';
  if not QryCriancasFILIACAOPAI.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryCriancasFiliacaoPai.AsInteger) );
      SQL.Add('  and sexo = ''M''');
      Open;
      QryCriancasNomePai.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Pai não localizado.');
        QryCriancasFILIACAOPAI.FocusControl;
      end;
    end;
  end;

  QryCriancasNomeMae.AsString := '';
  if not QryCriancasFILIACAOMAE.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryCriancasFILIACAOMAE.AsInteger) );
      SQL.Add('  and Sexo = ''F''');
      Open;
      QryCriancasNomeMae.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Mãe não localizada.');
        QryCriancasFILIACAOMAE.FocusControl;
      end;
    end;
  end;
end;

procedure TFormCriancas.SpdBtnPaiClick(Sender: TObject);
begin
  QryCriancasFILIACAOPAI.FocusControl;
  QryCriancasFILIACAOPAI.AsString := Buscar('Membros','FichaNumero','Nome','Nome', 'where Sexo = ''M''')

end;

procedure TFormCriancas.SpdBtnMaeClick(Sender: TObject);
begin
  QryCriancasFILIACAOMAE.FocusControl;
  QryCriancasFILIACAOMAE.AsString := Buscar('Membros','FichaNumero','Nome','Nome', 'where Sexo = ''F''')

end;

procedure TFormCriancas.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnPai.Click;

end;

procedure TFormCriancas.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMae.Click;

end;

end.
