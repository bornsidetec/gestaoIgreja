unit Celulas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS, ExtDlgs;

type
  TFormCelulas = class(TForm)
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
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    DBCboUF: TDBComboBox;
    QryCelulas: TUniQuery;
    QryCelulasCodigo: TIntegerField;
    QryCelulasNome: TStringField;
    QryCelulasUserInsert: TIntegerField;
    QryCelulasDataInsert: TDateTimeField;
    QryCelulasUserUpdate: TIntegerField;
    QryCelulasDataUpdate: TDateTimeField;
    Label6: TLabel;
    DBDateEdit1: TDBDateEdit;
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
    QryCelulasEndRua: TStringField;
    QryCelulasEndNumero: TStringField;
    QryCelulasEndBairro: TStringField;
    QryCelulasEndComplemento: TStringField;
    QryCelulasEndCidade: TStringField;
    QryCelulasEndEstado: TStringField;
    QryCelulasEndCep: TStringField;
    Label2: TLabel;
    cboDia: TComboBox;
    PanelFotos: TPanel;
    PanelControles: TPanel;
    BtnProcurar: TBitBtn;
    BtnLimpar: TBitBtn;
    PanelImagem: TPanel;
    DBImage1: TDBImage;
    QryCelulasLOGO: TMemoField;
    QryCelulasLIDER: TIntegerField;
    QryCelulasAUXILIAR: TIntegerField;
    QryCelulasANFITRIAO: TIntegerField;
    QryCelulasDIASEMANA: TIntegerField;
    QryCelulasHORA: TStringField;
    QryCelulasINAUGURACAO: TDateTimeField;
    QryCelulasOBSERVACAO: TMemoField;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label39: TLabel;
    RxDBCboDiaSemana: TRxDBComboBox;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnSetores: TSpeedButton;
    DBText2: TDBText;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    SpdBtnLider: TSpeedButton;
    DBText1: TDBText;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    SpdBtnAuxiliar: TSpeedButton;
    DBText3: TDBText;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    SpdBtnAnfitriao: TSpeedButton;
    DBText4: TDBText;
    QryCelulasNomeSetor: TStringField;
    QryCelulasNomeLider: TStringField;
    QryCelulasNomeAuxiliar: TStringField;
    QryCelulasNomeAnfitriao: TStringField;
    QryCelulasDia: TStringField;
    OpenPictureDialog: TOpenPictureDialog;
    QryCelulasSETOR: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure QryCelulasBeforeInsert(DataSet: TDataSet);
    procedure QryCelulasAfterPost(DataSet: TDataSet);
    procedure QryCelulasAfterCancel(DataSet: TDataSet);
    procedure QryCelulasBeforeDelete(DataSet: TDataSet);
    procedure QryCelulasBeforeEdit(DataSet: TDataSet);
    procedure QryCelulasBeforePost(DataSet: TDataSet);
    procedure ToolButtonSairClick(Sender: TObject);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QryCelulasCalcFields(DataSet: TDataSet);
    procedure SpdBtnLiderClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpdBtnAuxiliarClick(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpdBtnAnfitriaoClick(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpdBtnSetoresClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcurarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
  private
    { Private declarations }
    BMP : TBitMap;
    JPG : TJpegImage;    
  public
    { Public declarations }
  end;

var
  FormCelulas: TFormCelulas;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormCelulas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryCelulas.Close;

  FormCelulas := nil;
  Action := caFree;
end;

procedure TFormCelulas.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;
end;

procedure TFormCelulas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormCelulas.cboFiltroChange(Sender: TObject);
begin
  if cboFiltro.ItemIndex in [0,1,2,3,4,6] then
  begin
    Notebook.PageIndex := 0;
    Label1.Caption :=  cboFiltro.Text;
  end
  else
  begin
    Notebook.PageIndex := 1;
    Label1.Caption := 'Dia';
  end;
end;

procedure TFormCelulas.BtnPesquisarClick(Sender: TObject);
begin
  with QryCelulas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Celulas');
    SQL.Add('inner join Setores S on S.Codigo = Celulas.Setor');
    SQL.Add('inner join Membros L on L.FichaNumero = Celulas.Lider');
    SQL.Add('inner join Membros Ax on Ax.FichaNumero = Celulas.Auxiliar');
    SQL.Add('inner join Membros Af on Af.FichaNumero = Celulas.Anfitriao');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Celulas.Nome like :pNome');
          end;
      1 : begin
            SQL.Add('S.Nome like :pNome');
          end;
      2 : begin
            SQL.Add('L.Nome like :pNome');
          end;
      3 : begin
            SQL.Add('Ax.Nome like :pNome');
          end;
      4 : begin
            SQL.Add('Af.Nome like :pNome');
          end;
      6 : begin
            SQL.Add('Celulas.EndBairro like :pNome');
          end;
      5 : begin
            SQL.Add('Celulas.DIASEMANA = :pDia');
            ParamByName('pDia').Value := cboDia.ItemIndex + 1;
          end;
    end;
    SQL.Add('order by Celulas.Nome');
    if cboFiltro.ItemIndex in [0,1,2,3,4,6] then
      ParamByName('pNome').Value := EditNome.Text + '%';
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormCelulas.FormShow(Sender: TObject);
begin
  AbreQuery(QryCelulas, 'Celulas');
  EditNome.SetFocus;
end;

procedure TFormCelulas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormCelulas.PageControlChange(Sender: TObject);
begin
  if QryCelulas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormCelulas.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryCelulas, DBEdit9.Text);
end;

procedure TFormCelulas.QryCelulasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormCelulas.QryCelulasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormCelulas.QryCelulasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormCelulas.QryCelulasBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormCelulas.QryCelulasBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormCelulas.QryCelulasBeforePost(DataSet: TDataSet);
begin

  QryCelulas.Fields.Fields[0].FocusControl;

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

procedure TFormCelulas.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCelulas.SpdBtnCEPClick(Sender: TObject);
begin
  QryCelulasEndCep.FocusControl;
  QryCelulasEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormCelulas.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

procedure TFormCelulas.QryCelulasCalcFields(DataSet: TDataSet);
begin
  QryCelulasNomeSetor.AsString := '';
  if not QryCelulasSetor.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Setores');
      SQL.Add('where Codigo = ' + IntToStr(QryCelulasSetor.AsInteger) );
      Open;
      QryCelulasNomeSetor.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Setor não localizado.');
        QryCelulasSetor.FocusControl;
      end;
    end;
  end;

  QryCelulasNomeLider.AsString := '';
  if not QryCelulasLider.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryCelulasLider.AsInteger) );
      Open;
      QryCelulasNomeLider.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Líder não localizado.');
        QryCelulasLider.FocusControl;
      end;
    end;
  end;

  QryCelulasNomeAuxiliar.AsString := '';
  if not QryCelulasAuxiliar.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryCelulasAuxiliar.AsInteger) );
      Open;
      QryCelulasNomeAuxiliar.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Auxiliar não localizado.');
        QryCelulasAuxiliar.FocusControl;
      end;
    end;
  end;

  QryCelulasNomeAnfitriao.AsString := '';
  if not QryCelulasAnfitriao.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryCelulasAnfitriao.AsInteger) );
      Open;
      QryCelulasNomeAnfitriao.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Anfitrião não localizado.');
        QryCelulasAnfitriao.FocusControl;
      end;
    end;
  end;


  case QryCelulasDIASEMANA.AsInteger of
    1: QryCelulasDia.AsString := 'Domingo';
    2: QryCelulasDia.AsString := 'Segunda';
    3: QryCelulasDia.AsString := 'Terca';
    4: QryCelulasDia.AsString := 'Quarta';
    5: QryCelulasDia.AsString := 'Quinta';
    6: QryCelulasDia.AsString := 'Sexta';
    7: QryCelulasDia.AsString := 'Sabado';
  end;

end;

procedure TFormCelulas.SpdBtnLiderClick(Sender: TObject);
begin
  QryCelulasLider.FocusControl;
  QryCelulasLider.AsString := Buscar('Membros','FichaNumero','Nome','Nome', 'where Status = 1')
end;

procedure TFormCelulas.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnLider.Click;

end;

procedure TFormCelulas.SpdBtnAuxiliarClick(Sender: TObject);
begin
  QryCelulasAuxiliar.FocusControl;
  QryCelulasAuxiliar.AsString := Buscar('Membros','FichaNumero','Nome','Nome', 'where Status = 1')
end;

procedure TFormCelulas.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnAuxiliar.Click;
end;

procedure TFormCelulas.SpdBtnAnfitriaoClick(Sender: TObject);
begin
  QryCelulasAnfitriao.FocusControl;
  QryCelulasAnfitriao.AsString := Buscar('Membros','FichaNumero','Nome','Nome', 'where Status = 1')
end;

procedure TFormCelulas.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnAnfitriao.Click;
end;

procedure TFormCelulas.SpdBtnSetoresClick(Sender: TObject);
begin
  QryCelulasSetor.FocusControl;
  QryCelulasSetor.AsString := Buscar('Setores', 'Codigo', 'Nome', 'Nome');
end;

procedure TFormCelulas.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnSetores.Click;
end;

procedure TFormCelulas.BtnProcurarClick(Sender: TObject);
begin
  if OpenPictureDialog.Execute then
  begin

    JPG := TJpegImage.Create;
    JPG.LoadFromFile(OpenPictureDialog.FileName);
    BMP := TBitMap.Create;
    BMP.Assign(JPG);

    DBImage1.Picture.Assign(BMP);

    JPG.Free;
    BMP.Free;

  end;
end;

procedure TFormCelulas.BtnLimparClick(Sender: TObject);
begin
  DBImage1.Picture := nil;
end;

end.
