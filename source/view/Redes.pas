unit Redes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormRedes = class(TForm)
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
    QryRedes: TUniQuery;
    QryRedesCodigo: TIntegerField;
    QryRedesNome: TStringField;
    QryRedesUserInsert: TIntegerField;
    QryRedesDataInsert: TDateTimeField;
    QryRedesUserUpdate: TIntegerField;
    QryRedesDataUpdate: TDateTimeField;
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
    EditPastor: TEdit;
    QryRedesCOR: TStringField;
    QryRedesPASTOR: TIntegerField;
    QryRedesOBSERVACAO: TMemoField;
    QryRedesNomePastor: TStringField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnMembros: TSpeedButton;
    DBText1: TDBText;
    PanelConfigCor: TPanel;
    PanelControles: TPanel;
    BtnProcurar: TBitBtn;
    BtnLimpar: TBitBtn;
    pnlCor: TPanel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label8: TLabel;
    ColorDialog1: TColorDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure cboFiltroChange(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryRedesBeforeInsert(DataSet: TDataSet);
    procedure QryRedesAfterPost(DataSet: TDataSet);
    procedure QryRedesAfterCancel(DataSet: TDataSet);
    procedure QryRedesBeforeDelete(DataSet: TDataSet);
    procedure QryRedesBeforeEdit(DataSet: TDataSet);
    procedure QryRedesBeforePost(DataSet: TDataSet);
    procedure ToolButtonSairClick(Sender: TObject);
    procedure QryRedesCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QryRedesAfterScroll(DataSet: TDataSet);
    procedure BtnProcurarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRedes: TFormRedes;

implementation

uses UDmJetro, Funcoes, Main, Math;

{$R *.dfm}

procedure TFormRedes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryRedes.Close;

  FormRedes := nil;
  Action := caFree;
end;

procedure TFormRedes.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;
end;

procedure TFormRedes.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormRedes.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;
end;

procedure TFormRedes.BtnPesquisarClick(Sender: TObject);
begin
  with QryRedes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Redes.* from Redes');
    SQL.Add('inner join Membros M on M.FichaNumero = Redes.Pastor');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('Redes.Nome like :pNome');
            ParamByName('pNome').Value := EditNome.text + '%';
          end;
      1 : begin
            SQL.Add('M.Nome like :pPastor');
            ParamByName('pPastor').Value := EditPastor.Text + '%';
          end;
    end;
    SQL.Add('order by Redes.Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormRedes.FormShow(Sender: TObject);
begin
  AbreQuery(QryRedes, 'Redes');
  EditNome.SetFocus;
end;

procedure TFormRedes.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormRedes.PageControlChange(Sender: TObject);
begin
  if QryRedes.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormRedes.QryRedesBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormRedes.QryRedesAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormRedes.QryRedesAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormRedes.QryRedesBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormRedes.QryRedesBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormRedes.QryRedesBeforePost(DataSet: TDataSet);
begin

  QryRedes.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if pnlCor.Color = clBtnFace then
    QryRedesCOR.Clear
  else
    QryRedesCOR.AsString := ColorToString(pnlCor.Color);

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

procedure TFormRedes.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRedes.QryRedesCalcFields(DataSet: TDataSet);
begin
  //if QryRedes.State in [dsInsert, dsEdit] then
    QryRedesNomePastor.AsString := '';
  if not QryRedesPastor.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryRedesPastor.AsInteger) );
      SQL.Add('  and Status = 1');
      Open;

      //if QryRedes.State in [dsInsert, dsEdit] then
      //begin
        QryRedesNomePastor.AsString := FieldByName('Nome').AsString;

        if IsEmpty then
        begin
          InfoBox('Pastor de Rede não localizado.');
          QryRedesPastor.FocusControl;
        end;
      //end;
    end;
  end;
end;

procedure TFormRedes.SpdBtnMembrosClick(Sender: TObject);
begin

  QryRedesPastor.FocusControl;
  QryRedesPastor.AsString := Buscar('Membros','FichaNumero','Nome','Nome','where Status = 1')

end;

procedure TFormRedes.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;

end;

procedure TFormRedes.QryRedesAfterScroll(DataSet: TDataSet);
begin
  if QryRedesCOR.AsString <> '' then
    pnlCor.Color := StringToColor(QryRedesCOR.AsString)
  else
    pnlCor.Color := StringToColor('clBtnFace');

end;

procedure TFormRedes.BtnProcurarClick(Sender: TObject);
begin
  if ColorDialog1.Execute then
    pnlCor.Color := StringToColor(ColorToString(ColorDialog1.Color));

end;

procedure TFormRedes.BtnLimparClick(Sender: TObject);
begin
  pnlCor.Color := clBtnFace;
end;

end.
