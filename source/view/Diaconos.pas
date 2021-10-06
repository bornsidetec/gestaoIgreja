unit Diaconos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormDiaconos = class(TForm)
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
    QryDiaconos: TUniQuery;
    QryDiaconosStatus: TIntegerField;
    ToolButton4: TToolButton;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    QryDiaconosAno: TStringField;
    Label2: TLabel;
    SpdBtnMembros: TSpeedButton;
    DBText1: TDBText;
    DBEdit4: TDBEdit;
    QryDiaconosMembro: TIntegerField;
    QryDiaconosNomeMembro: TStringField;
    QryDiaconosCODIGO: TIntegerField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryDiaconosAfterCancel(DataSet: TDataSet);
    procedure QryDiaconosAfterPost(DataSet: TDataSet);
    procedure QryDiaconosBeforeDelete(DataSet: TDataSet);
    procedure QryDiaconosBeforeEdit(DataSet: TDataSet);
    procedure QryDiaconosBeforeInsert(DataSet: TDataSet);
    procedure QryDiaconosNewRecord(DataSet: TDataSet);
    procedure QryDiaconosCalcFields(DataSet: TDataSet);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure QryDiaconosBeforePost(DataSet: TDataSet);
    procedure QryDiaconosAnoValidate(Sender: TField);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDiaconos: TFormDiaconos;

implementation

uses UDmJetro, Funcoes;

{$R *.dfm}

procedure TFormDiaconos.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDiaconos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryDiaconos.Close;
  FormDiaconos := nil;
  Action := caFree;
end;

procedure TFormDiaconos.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
end;

procedure TFormDiaconos.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormDiaconos.BtnPesquisarClick(Sender: TObject);
begin
  with QryDiaconos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select D.*  from Diaconos D');
    SQL.Add('inner join Membros M on M.FichaNumero = D.Membro');
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

procedure TFormDiaconos.FormShow(Sender: TObject);
begin
  AbreQuery(QryDiaconos, 'Diaconos');

  EditNome.SetFocus;

end;

procedure TFormDiaconos.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormDiaconos.PageControlChange(Sender: TObject);
begin
  if QryDiaconos.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormDiaconos.QryDiaconosAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

end;

procedure TFormDiaconos.QryDiaconosAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

end;

procedure TFormDiaconos.QryDiaconosBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormDiaconos.QryDiaconosBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryDiaconosMembro.FocusControl;
end;

procedure TFormDiaconos.QryDiaconosBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryDiaconosMembro.FocusControl;

end;

procedure TFormDiaconos.QryDiaconosNewRecord(DataSet: TDataSet);
begin
  QryDiaconosStatus.AsInteger := 1;
  QryDiaconosAno.AsString := IntToStr(YearOf(Date));
end;

procedure TFormDiaconos.QryDiaconosCalcFields(DataSet: TDataSet);
begin
  QryDiaconosNomeMembro.AsString := '';
  if not QryDiaconosMembro.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryDiaconosMembro.AsInteger) );
      SQL.Add('  and Status = 1');
      Open;
      QryDiaconosNomeMembro.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Membro não localizado.');
        QryDiaconosMembro.FocusControl;
      end;

    end;
  end;
end;

procedure TFormDiaconos.SpdBtnMembrosClick(Sender: TObject);
begin
  QryDiaconosMembro.FocusControl;
  QryDiaconosMembro.AsString := Buscar('Membros','FichaNumero','Nome','Nome','where Status = 1')

end;

procedure TFormDiaconos.QryDiaconosBeforePost(DataSet: TDataSet);
begin
  CamposObrigatorios(DataSet as TUniQuery);

end;

procedure TFormDiaconos.QryDiaconosAnoValidate(Sender: TField);
begin
  If StrToInt(QryDiaconosAno.AsString) < YearOf(Now) then
  begin
    InfoBox('Ano Inválido');
    QryDiaconosAno.FocusControl;
    Abort;
  end;

end;

procedure TFormDiaconos.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

end.
