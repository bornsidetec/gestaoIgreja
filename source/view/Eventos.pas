unit Eventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, rxCurrEdit, DateUtils, Menus;

type
  TFormEventos = class(TForm)
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
    DBEdit1: TDBEdit;
    QryEventos: TUniQuery;
    Label5: TLabel;
    DBDateEdit1: TDBDateEdit;
    GroupBoxPeriodo: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    QryDeptos: TUniQuery;
    QryDeptosCodigo: TAutoIncField;
    QryDeptosDescDepto: TStringField;
    DsItens: TDataSource;
    GroupBoxItens: TGroupBox;
    DBGridItens: TRxDBGrid;
    BtnAddItens: TBitBtn;
    Label1: TLabel;
    SpdBtnDeptos: TSpeedButton;
    LblDescDepto: TLabel;
    EditDepartamento: TEdit;
    PopupMenuItens: TPopupMenu;
    Excluir1: TMenuItem;
    QryEventosCodigo: TIntegerField;
    QryEventosTipo: TIntegerField;
    QryEventosDescricao: TStringField;
    QryEventosData: TDateTimeField;
    QryEventosHora: TStringField;
    QryEventosQuadroAviso: TStringField;
    QryEventosUserInsert: TIntegerField;
    QryEventosDataInsert: TDateTimeField;
    QryEventosUserUpdate: TIntegerField;
    QryEventosDataUpdate: TDateTimeField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    RxDBCboTiposEvento: TRxDBComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    QryEventosDescTipo: TStringField;
    DBCheckBox1: TDBCheckBox;
    QryDeptosEvento: TIntegerField;
    QryDeptosDepartamento: TIntegerField;
    Label6: TLabel;
    DBText2: TDBText;
    QryEventosDiaSemana: TStringField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryEventosAfterCancel(DataSet: TDataSet);
    procedure QryEventosAfterPost(DataSet: TDataSet);
    procedure QryEventosBeforeDelete(DataSet: TDataSet);
    procedure QryEventosBeforeEdit(DataSet: TDataSet);
    procedure QryEventosBeforeInsert(DataSet: TDataSet);
    procedure QryEventosBeforePost(DataSet: TDataSet);
    procedure QryEventosCalcFields(DataSet: TDataSet);
    procedure QryEventosNewRecord(DataSet: TDataSet);
    procedure EditDepartamentoExit(Sender: TObject);
    procedure BtnAddItensClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure QryDeptosBeforeDelete(DataSet: TDataSet);
    procedure QryEventosAfterScroll(DataSet: TDataSet);
    procedure QryDeptosCalcFields(DataSet: TDataSet);
    procedure SpdBtnDeptosClick(Sender: TObject);
    procedure EditDepartamentoEnter(Sender: TObject);
    procedure PopupMenuItensPopup(Sender: TObject);
    procedure EditDepartamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LimpaDadosItens;
  end;

var
  FormEventos: TFormEventos;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormEventos.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEventos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryEventos.close;

  FormEventos := nil;
  Action := caFree;
end;

procedure TFormEventos.FormCreate(Sender: TObject);
begin
  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;

end;

procedure TFormEventos.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormEventos.BtnPesquisarClick(Sender: TObject);
begin

  with QryEventos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Eventos');
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

procedure TFormEventos.FormShow(Sender: TObject);
begin
  AbreQuery(QryEventos, 'Eventos');
  QryEventos.First;

  DateEditIni.Date := Date;
  DateEditFim.Date := Date + 15;
  DateEditIni.SetFocus;

end;

procedure TFormEventos.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormEventos.PageControlChange(Sender: TObject);
begin
  if QryEventos.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormEventos.QryEventosAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  SQLClear(QryDeptos);
  QryDeptos.SQL.Add('delete from DeptosEvento where Evento is null');
  QryDeptos.ExecSQL;

  LimpaDadosItens;

  QryEventos.AfterScroll(QryEventos);

end;

procedure TFormEventos.QryEventosAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  QryDeptos.First;
  while not QryDeptos.Eof do
  begin
    QryDeptos.Edit;
    QryDeptosEvento.AsInteger := QryEventosCodigo.AsInteger;
    QryDeptos.Post;
    QryDeptos.Next;
  end;

  LimpaDadosItens;

end;

procedure TFormEventos.QryEventosBeforeDelete(DataSet: TDataSet);
begin

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

  SQLClear(QryDeptos);
  QryDeptos.SQL.Add('delete from DeptosEvento where Evento = ' + QryEventosCodigo.AsString);
  QryDeptos.ExecSQL;

end;

procedure TFormEventos.QryEventosBeforeEdit(DataSet: TDataSet);
begin


  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryEventosData.FocusControl;

end;

procedure TFormEventos.QryEventosBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryEventosData.FocusControl;
end;

procedure TFormEventos.QryEventosBeforePost(DataSet: TDataSet);
begin

  QryEventos.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if QryEventosData.AsDateTime < Date then
  begin
    InfoBox('Data do evento já expirou.' + #13 +
            'Favor informar outra data.');
    QryEventosData.FocusControl;
    Abort;
  end;

  {
  if QryDeptos.IsEmpty then
  begin
    InfoBox('Nenhum Departamento informado.');
    BtnAddItens.SetFocus;
    Abort;
  end;
  }

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

procedure TFormEventos.QryEventosCalcFields(DataSet: TDataSet);
begin

  if QryEventosData.AsDateTime > 0 then
    case DayOfTheWeek(QryEventosData.AsDateTime) of
      1: QryEventosDiaSemana.AsString := 'Segunda';
      2: QryEventosDiaSemana.AsString := 'Terca';
      3: QryEventosDiaSemana.AsString := 'Quarta';
      4: QryEventosDiaSemana.AsString := 'Quinta';
      5: QryEventosDiaSemana.AsString := 'Sexta';
      6: QryEventosDiaSemana.AsString := 'Sabado';
      7: QryEventosDiaSemana.AsString := 'Domingo';
    end;


  QryEventosDescTipo.AsString := '';
  if not QryEventosTipo.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from TiposEvento');
      SQL.Add('where Codigo = ' + IntToStr(QryEventosTipo.AsInteger) );
      Open;
      QryEventosDescTipo.AsString := FieldByName('Descricao').AsString;
      if IsEmpty then
      begin
        InfoBox('Tipo de Evento não Localizado.');
        QryEventosTipo.FocusControl;
      end;
    end;
  end; 

end;

procedure TFormEventos.QryEventosNewRecord(DataSet: TDataSet);
begin
  QryEventosQuadroAviso.AsString := '1';

end;

procedure TFormEventos.EditDepartamentoExit(Sender: TObject);
begin
  if EditDepartamento.Text =  EmptyStr then
    Abort;

  LblDescDepto.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Descricao from Departamentos');
    SQL.Add('where Codigo = :Depto');
    ParamByName('Depto').Value := EditDepartamento.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Departamento não localizado.');
      EditDepartamento.SetFocus;
      Abort;
    end;

    LblDescDepto.Caption := FieldByName('Descricao').AsString;

  end;

end;

procedure TFormEventos.BtnAddItensClick(Sender: TObject);
begin
  if EditDepartamento.Text = EmptyStr then
  begin
    InfoBox('Informe o Departamento.');
    EditDepartamento.SetFocus;
    Exit;
  end;

  if QryDeptos.Locate('Departamento', EditDepartamento.Text, [loCaseInsensitive]) then
  begin
    InfoBox('Departamento já informado.');
    EditDepartamento.SetFocus;
    Exit;
  end;

  QryDeptos.Append;
  QryDeptosDepartamento.AsString := EditDepartamento.Text;
  QryDeptos.Post;

  LimpaDadosItens;
  EditDepartamento.SetFocus;

end;

procedure TFormEventos.LimpaDadosItens;
begin
  EditDepartamento.Clear;
end;

procedure TFormEventos.Excluir1Click(Sender: TObject);
begin

  QryDeptos.Delete;
end;

procedure TFormEventos.QryDeptosBeforeDelete(
  DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormEventos.QryEventosAfterScroll(DataSet: TDataSet);
begin
  with QryDeptos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from DeptosEvento where Evento = :cEvento');
    ParamByName('cEvento').Value := QryEventosCodigo.AsInteger;
    Open;
  end;

end;

procedure TFormEventos.QryDeptosCalcFields(DataSet: TDataSet);
begin
  QryDeptosDescDepto.AsString := '';
  if not QryDeptosDepartamento.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from Departamentos');
      SQL.Add('where Codigo = ' + IntToStr(QryDeptosDepartamento.AsInteger) );
      Open;
      QryDeptosDescDepto.AsString := FieldByName('Descricao').AsString;
      if IsEmpty then
      begin
        InfoBox('Departamento não Localizado.');
        QryDeptosDepartamento.FocusControl;
      end;
    end;
  end;

end;

procedure TFormEventos.SpdBtnDeptosClick(Sender: TObject);
begin
  EditDepartamento.SetFocus;
  EditDepartamento.Text := Buscar('Departamentos','Codigo','Descricao', 'Descricao')

end;

procedure TFormEventos.EditDepartamentoEnter(Sender: TObject);
begin
  LblDescDepto.Caption := EmptyStr;

end;

procedure TFormEventos.PopupMenuItensPopup(Sender: TObject);
begin

  if not (QryEventos.State in [dsEdit, dsInsert]) then
     Abort;

  if QryDeptos.IsEmpty then
    Abort;
    
end;

procedure TFormEventos.EditDepartamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnDeptos.Click;
end;

procedure TFormEventos.FormActivate(Sender: TObject);
begin
  RxComboTabelaAuxiliar('TiposEvento','', RxDBCboTiposEvento);

end;

end.
