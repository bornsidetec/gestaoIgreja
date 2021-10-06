unit RelatorioCelula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, rxCurrEdit,
  RxMemDS, Menus, DateUtils, ADODB, Uni, DBAccess, MemDS, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFormRelatorioCelula = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelFiltro: TPanel;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
    GroupBoxPeriodo: TGroupBox;
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
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
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
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label5: TLabel;
    SpdBtnCelulas: TSpeedButton;
    DBText1: TDBText;
    DBEdit3: TDBEdit;
    GroupBoxEstatistico: TGroupBox;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    QryRelatoriosCelula: TUniQuery;
    QryRelatoriosCelulaCodigo: TIntegerField;
    GroupBoxFinanceiro: TGroupBox;
    Oferta: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    QryRelatoriosCelulaDATA: TDateTimeField;
    QryRelatoriosCelulaCELULA: TIntegerField;
    QryRelatoriosCelulaPRESENTES: TIntegerField;
    QryRelatoriosCelulaVISITAS: TIntegerField;
    QryRelatoriosCelulaDECISOES: TIntegerField;
    QryRelatoriosCelulaOFERTA: TFloatField;
    QryRelatoriosCelulaNomeCelula: TStringField;
    QryRelatoriosCelulaUSERINSERT: TIntegerField;
    QryRelatoriosCelulaDATAINSERT: TDateTimeField;
    QryRelatoriosCelulaUSERUPDATE: TIntegerField;
    QryRelatoriosCelulaDATAUPDATE: TDateTimeField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cboFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure SpdBtnCelulasClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure QryRelatoriosCelulaAfterPost(DataSet: TDataSet);
    procedure QryRelatoriosCelulaAfterCancel(DataSet: TDataSet);
    procedure QryRelatoriosCelulaBeforeDelete(DataSet: TDataSet);
    procedure QryRelatoriosCelulaBeforeEdit(DataSet: TDataSet);
    procedure QryRelatoriosCelulaBeforeInsert(DataSet: TDataSet);
    procedure QryRelatoriosCelulaBeforePost(DataSet: TDataSet);
    procedure QryRelatoriosCelulaCalcFields(DataSet: TDataSet);
    procedure QryRelatoriosCelulaNewRecord(DataSet: TDataSet);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Pregador: String;
  public
    { Public declarations }
    procedure NomeDizimistas;
    procedure LimpaDadosDizimistas;

    procedure SMSCulto;

  end;

var
  FormRelatorioCelula: TFormRelatorioCelula;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormRelatorioCelula.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRelatorioCelula.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormRelatorioCelula := nil;
  Action := caFree;
end;

procedure TFormRelatorioCelula.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
end;

procedure TFormRelatorioCelula.FormShow(Sender: TObject);
begin
  AbreQuery(QryRelatoriosCelula, 'RelatoriosCelula');

  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
  DateEditIni.SetFocus;
end;

procedure TFormRelatorioCelula.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormRelatorioCelula.cboFiltroKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TFormRelatorioCelula.PageControlChange(Sender: TObject);
begin
  if QryRelatoriosCelula.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormRelatorioCelula.SpdBtnCelulasClick(Sender: TObject);
begin
  QryRelatoriosCelulaCELULA.FocusControl;
  QryRelatoriosCelulaCELULA.AsString := Buscar('Celulas','Codigo','Nome','Nome')
end;

procedure TFormRelatorioCelula.BtnPesquisarClick(Sender: TObject);
begin
  with QryRelatoriosCelula do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from RelatoriosCelula');
    SQL.Add('where');
    SQL.Add('Data between :dt1 and :dt2');
    SQL.Add('order by Data');
    ParamByName('dt1').AsDateTime := DateEditIni.Date;
    ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormRelatorioCelula.QryRelatoriosCelulaAfterPost(DataSet: TDataSet);
begin

  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormRelatorioCelula.QryRelatoriosCelulaAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

end;

procedure TFormRelatorioCelula.QryRelatoriosCelulaBeforeDelete(DataSet: TDataSet);
begin

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormRelatorioCelula.QryRelatoriosCelulaBeforeEdit(DataSet: TDataSet);
begin

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryRelatoriosCelulaDATA.FocusControl;

end;

procedure TFormRelatorioCelula.QryRelatoriosCelulaBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryRelatoriosCelulaDATA.FocusControl;

end;

procedure TFormRelatorioCelula.QryRelatoriosCelulaBeforePost(DataSet: TDataSet);
begin

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

procedure TFormRelatorioCelula.QryRelatoriosCelulaCalcFields(DataSet: TDataSet);
begin

  QryRelatoriosCelulaNomeCelula.AsString := '';
  if not QryRelatoriosCelulaCELULA.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Celulas');
      SQL.Add('where Codigo = ' + IntToStr(QryRelatoriosCelulaCELULA.AsInteger) );
      Open;
      QryRelatoriosCelulaNomeCelula.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Célula não localizada.');
        QryRelatoriosCelulaCELULA.FocusControl;
      end;
    end;
  end;

end;

procedure TFormRelatorioCelula.QryRelatoriosCelulaNewRecord(DataSet: TDataSet);
begin
  QryRelatoriosCelulaOFERTA.AsCurrency := 0;

end;

procedure TFormRelatorioCelula.NomeDizimistas;
begin
end;

procedure TFormRelatorioCelula.LimpaDadosDizimistas;
begin

end;

procedure TFormRelatorioCelula.SMSCulto;
begin
end;

procedure TFormRelatorioCelula.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCelulas.Click;
end;

end.
