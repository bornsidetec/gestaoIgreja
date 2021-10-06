unit SustentoPastoral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, rxCurrEdit, DateUtils;

type
  TFormSustentoPastoral = class(TForm)
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
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    QrySustento: TUniQuery;
    RxDBCalcEdit1: TRxDBCalcEdit;
    QrySustentoCodigo: TIntegerField;
    QrySustentoNumSaida: TStringField;
    QrySustentoTipoSaida: TIntegerField;
    QrySustentoPastor: TIntegerField;
    QrySustentoValor: TCurrencyField;
    QrySustentoData: TDateTimeField;
    QrySustentoFechamento: TStringField;
    QrySustentoUserInsert: TIntegerField;
    QrySustentoDataInsert: TDateTimeField;
    QrySustentoUserUpdate: TIntegerField;
    QrySustentoDataUpdate: TDateTimeField;
    LabelPastor: TLabel;
    DBEditPastor: TDBEdit;
    SpdBtnPastores: TSpeedButton;
    DBTextPastor: TDBText;
    QrySustentoNomePastor: TStringField;
    GroupBoxPeriodo: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QrySustentoAfterCancel(DataSet: TDataSet);
    procedure QrySustentoAfterPost(DataSet: TDataSet);
    procedure QrySustentoBeforeDelete(DataSet: TDataSet);
    procedure QrySustentoBeforeEdit(DataSet: TDataSet);
    procedure QrySustentoBeforeInsert(DataSet: TDataSet);
    procedure QrySustentoBeforePost(DataSet: TDataSet);
    procedure QrySustentoNewRecord(DataSet: TDataSet);
    procedure QrySustentoCalcFields(DataSet: TDataSet);
    procedure SpdBtnPastoresClick(Sender: TObject);
    procedure DBEditPastorExit(Sender: TObject);
    procedure DBEditPastorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSustentoPastoral: TFormSustentoPastoral;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormSustentoPastoral.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSustentoPastoral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QrySustento.close;

  FormSustentoPastoral := nil;
  Action := caFree;
end;

procedure TFormSustentoPastoral.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
end;

procedure TFormSustentoPastoral.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormSustentoPastoral.BtnPesquisarClick(Sender: TObject);
begin
  with QrySustento do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Saidas');
    SQL.Add('where TipoSaida in (22, 23)');
    SQL.Add('  and Data between :dt1 and :dt2');
    ParamByName('dt1').AsDateTime := DateEditIni.Date;
    ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
    SQL.Add('order by Data desc');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormSustentoPastoral.FormShow(Sender: TObject);
begin
  AbreQuery(QrySustento, 'Saidas');
  QrySustento.First;
  DateEditIni.SetFocus;
end;

procedure TFormSustentoPastoral.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormSustentoPastoral.PageControlChange(Sender: TObject);
begin
  if QrySustento.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormSustentoPastoral.QrySustentoAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormSustentoPastoral.QrySustentoAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormSustentoPastoral.QrySustentoBeforeDelete(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;
end;

procedure TFormSustentoPastoral.QrySustentoBeforeEdit(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já teve seu fechamento realizado.' + #13 + 'Não é possível alterar.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QrySustentoNumSaida.FocusControl;
end;

procedure TFormSustentoPastoral.QrySustentoBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QrySustentoNumSaida.FocusControl;
end;

procedure TFormSustentoPastoral.QrySustentoBeforePost(DataSet: TDataSet);
begin

  QrySustento.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);  

  if Fechado(MonthOf(QrySustentoData.AsDateTime), YearOf(QrySustentoData.AsDateTime)) then
  begin
    InfoBox('Mês de ' + FormatDateTime('MMMM',QrySustentoData.AsDateTime) +
            ' de ' + FormatDateTime('YYYY',QrySustentoData.AsDateTime) + #13 +
            'já teve o seu fechamento realizado.');
    QrySustentoData.FocusControl;
    Abort;
  end;

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

procedure TFormSustentoPastoral.QrySustentoNewRecord(DataSet: TDataSet);
begin
  QrySustentoTipoSaida.AsInteger := 22;
  QrySustentoFechamento.AsString := '0';
end;

procedure TFormSustentoPastoral.QrySustentoCalcFields(DataSet: TDataSet);
begin
  QrySustentoNomePastor.AsString := '';
  if not QrySustentoPastor.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Pastores');
      SQL.Add('where Codigo = ' + IntToStr(QrySustentoPastor.AsInteger) );
      Open;
      QrySustentoNomePastor.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Pastor não Localizado');
        QrySustentoPastor.FocusControl;
      end;
    end;
  end;

end;

procedure TFormSustentoPastoral.SpdBtnPastoresClick(Sender: TObject);
begin
  QrySustentoPastor.FocusControl;
  QrySustentoPastor.AsString := Buscar('Pastores','Codigo','Nome', 'Nome')

end;

procedure TFormSustentoPastoral.DBEditPastorExit(Sender: TObject);
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Titular from Pastores');
    SQL.Add('where Codigo = :pastor');
    ParamByName('pastor').Value := QrySustentoPastor.AsInteger;
    Open;

    if ((FieldByName('Titular').AsString = 'N') and
       (QrySustentoTipoSaida.AsInteger = 22)) then
    begin
      InfoBox('Favor selecionar Pastor Titular');
      QrySustentoPastor.FocusControl;
      Exit;
    end;

    if ((FieldByName('Titular').AsString = 'S') and
       (QrySustentoTipoSaida.AsInteger = 23)) then
    begin
      InfoBox('Favor selecionar Pastor Auxiliar');
      QrySustentoPastor.FocusControl;
      Exit;
    end;
  end;
end;

procedure TFormSustentoPastoral.DBEditPastorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnPastores.Click;
end;

end.
