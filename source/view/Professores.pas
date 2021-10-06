unit Professores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormProfessores = class(TForm)
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
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton3: TToolButton;
    DBGrid: TRxDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    Label1: TLabel;
    EditNome: TEdit;
    DBRadioGroup1: TDBRadioGroup;
    QryProfessores: TUniQuery;
    AutoIncField3: TIntegerField;
    QryProfessoresStatus: TIntegerField;
    ToolButton4: TToolButton;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Label2: TLabel;
    SpdBtnMembros: TSpeedButton;
    DBText1: TDBText;
    DBEdit4: TDBEdit;
    QryProfessoresMembro: TIntegerField;
    QryProfessoresNomeMembro: TStringField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryProfessoresAfterCancel(DataSet: TDataSet);
    procedure QryProfessoresAfterPost(DataSet: TDataSet);
    procedure QryProfessoresBeforeDelete(DataSet: TDataSet);
    procedure QryProfessoresBeforeEdit(DataSet: TDataSet);
    procedure QryProfessoresBeforeInsert(DataSet: TDataSet);
    procedure QryProfessoresNewRecord(DataSet: TDataSet);
    procedure QryProfessoresCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure QryProfessoresBeforePost(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProfessores: TFormProfessores;

implementation

uses UDmJetro, Funcoes;

{$R *.dfm}

procedure TFormProfessores.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProfessores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryProfessores.Close;
  FormProfessores := nil;
  Action := caFree;
end;

procedure TFormProfessores.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
end;

procedure TFormProfessores.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormProfessores.BtnPesquisarClick(Sender: TObject);
begin
  with QryProfessores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select P.*  from Professores P');
    SQL.Add('inner join Membros M on M.FichaNumero = P.Membro');
    SQL.Add('where');
    SQL.Add('M.Nome like :pNome');
    ParamByName('pNome').Value := EditNome.Text + '%';
    SQL.Add('order by M.Nome');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormProfessores.FormShow(Sender: TObject);
begin
  AbreQuery(QryProfessores, 'Professores');

  EditNome.SetFocus;

end;

procedure TFormProfessores.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormProfessores.PageControlChange(Sender: TObject);
begin
  if QryProfessores.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormProfessores.QryProfessoresAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

end;

procedure TFormProfessores.QryProfessoresAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

end;

procedure TFormProfessores.QryProfessoresBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormProfessores.QryProfessoresBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryProfessoresMembro.FocusControl;
end;

procedure TFormProfessores.QryProfessoresBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryProfessoresMembro.FocusControl;

end;

procedure TFormProfessores.QryProfessoresNewRecord(DataSet: TDataSet);
begin
  QryProfessoresStatus.AsInteger := 1;
end;

procedure TFormProfessores.QryProfessoresCalcFields(DataSet: TDataSet);
begin
  QryProfessoresNomeMembro.AsString := '';
  if not QryProfessoresMembro.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryProfessoresMembro.AsInteger) );
      Open;
      QryProfessoresNomeMembro.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Membro não localizado.');
        QryProfessoresMembro.FocusControl;
      end;

    end;
  end;
end;

procedure TFormProfessores.SpdBtnMembrosClick(Sender: TObject);
begin
  QryProfessoresMembro.FocusControl;
  QryProfessoresMembro.AsString := Buscar('Membros','FichaNumero','Nome','Nome','where Status = 1')

end;

procedure TFormProfessores.QryProfessoresBeforePost(DataSet: TDataSet);
begin
  CamposObrigatorios(DataSet as TUniQuery);

end;

procedure TFormProfessores.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

end.
