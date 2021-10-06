unit Emprestimos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, jpeg, RxDBComb,
  ADODB, Uni, DBAccess, MemDS, rxCurrEdit, DateUtils, Menus;

type
  TFormEmprestimos = class(TForm)
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
    QryEmprestimos: TUniQuery;
    QryEmprestimosCodigo: TIntegerField;
    QryEmprestimosUserInsert: TIntegerField;
    QryEmprestimosDataInsert: TDateTimeField;
    QryEmprestimosUserUpdate: TIntegerField;
    QryEmprestimosDataUpdate: TDateTimeField;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    SpdBtnMembro: TSpeedButton;
    DBText2: TDBText;
    QryEmprestimosMembro: TIntegerField;
    QryEmprestimosData: TDateTimeField;
    QryEmprestimosDevolucao: TDateTimeField;
    QryEmprestimosBaixa: TDateTimeField;
    QryEmprestimosTituloObjeto: TStringField;
    QryEmprestimosNomeMembro: TStringField;
    Label5: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label6: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label8: TLabel;
    DBText3: TDBText;
    GroupBoxPeriodo: TGroupBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    QryEmprestimosFechamento: TStringField;
    QryItens: TUniQuery;
    QryItensCodigo: TIntegerField;
    QryItensEmprestimo: TIntegerField;
    QryItensObjeto: TIntegerField;
    QryItensTituloObjeto: TStringField;
    DsItens: TDataSource;
    GroupBoxItens: TGroupBox;
    DBGridItens: TRxDBGrid;
    BtnAddItens: TBitBtn;
    Label1: TLabel;
    SpdBtnObjetos: TSpeedButton;
    LblTituloObjeto: TLabel;
    EditObjeto: TEdit;
    PopupMenuItens: TPopupMenu;
    Excluir1: TMenuItem;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryEmprestimosAfterCancel(DataSet: TDataSet);
    procedure QryEmprestimosAfterPost(DataSet: TDataSet);
    procedure QryEmprestimosBeforeDelete(DataSet: TDataSet);
    procedure QryEmprestimosBeforeEdit(DataSet: TDataSet);
    procedure QryEmprestimosBeforeInsert(DataSet: TDataSet);
    procedure QryEmprestimosBeforePost(DataSet: TDataSet);
    procedure QryEmprestimosCalcFields(DataSet: TDataSet);
    procedure QryEmprestimosNewRecord(DataSet: TDataSet);
    procedure SpdBtnMembroClick(Sender: TObject);
    procedure EditObjetoExit(Sender: TObject);
    procedure BtnAddItensClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure QryItensBeforeDelete(DataSet: TDataSet);
    procedure QryEmprestimosAfterScroll(DataSet: TDataSet);
    procedure QryItensCalcFields(DataSet: TDataSet);
    procedure SpdBtnObjetosClick(Sender: TObject);
    procedure EditObjetoEnter(Sender: TObject);
    procedure PopupMenuItensPopup(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditObjetoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LimpaDadosItens;
  end;

var
  FormEmprestimos: TFormEmprestimos;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormEmprestimos.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEmprestimos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryEmprestimos.close;

  FormEmprestimos := nil;
  Action := caFree;
end;

procedure TFormEmprestimos.FormCreate(Sender: TObject);
begin
  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;

end;

procedure TFormEmprestimos.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormEmprestimos.BtnPesquisarClick(Sender: TObject);
begin
  with QryEmprestimos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Emprestimos');
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

procedure TFormEmprestimos.FormShow(Sender: TObject);
begin
  AbreQuery(QryEmprestimos, 'Emprestimos');
  QryEmprestimos.First;

  DateEditIni.Date := StartOfTheMonth(Date);
  DateEditFim.Date := EndOfTheMonth(Date);
  DateEditIni.SetFocus;

end;

procedure TFormEmprestimos.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormEmprestimos.PageControlChange(Sender: TObject);
begin
  if QryEmprestimos.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormEmprestimos.QryEmprestimosAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  SQLClear(QryItens);
  QryItens.SQL.Add('delete from ItensEmprestimo where Emprestimo is null');
  QryItens.ExecSQL;

  LimpaDadosItens;

  QryEmprestimos.AfterScroll(QryEmprestimos);

end;

procedure TFormEmprestimos.QryEmprestimosAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;

  QryItens.First;

  while not QryItens.Eof do
  begin
    QryItens.Edit;
    QryItensEmprestimo.AsInteger := QryEmprestimosCodigo.AsInteger;
    QryItens.Post;
    QryItens.Next;
  end;

  LimpaDadosItens;

end;

procedure TFormEmprestimos.QryEmprestimosBeforeDelete(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já Finalizado, não é possível excluir.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

  SQLClear(QryItens);
  QryItens.SQL.Add('delete from ItensEmprestimo where Emprestimo = ' + QryEmprestimosCodigo.AsString);
  QryItens.ExecSQL;

end;

procedure TFormEmprestimos.QryEmprestimosBeforeEdit(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Fechamento').AsString = '1' then
  begin
    InfoBox('Registro já Finalizado, não é possível alterar.');
    Abort;
  end;


  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryEmprestimosMembro.FocusControl;

end;

procedure TFormEmprestimos.QryEmprestimosBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryEmprestimosMembro.FocusControl;
end;

procedure TFormEmprestimos.QryEmprestimosBeforePost(DataSet: TDataSet);
begin

  QryEmprestimos.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if QryItens.IsEmpty then
  begin
    InfoBox('Nenhum ítem informado.');
    BtnAddItens.SetFocus;
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

procedure TFormEmprestimos.QryEmprestimosCalcFields(DataSet: TDataSet);
begin

  QryEmprestimosNomeMembro.AsString := '';
  if not QryEmprestimosMembro.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryEmprestimosMembro.AsInteger) );
      Open;
      QryEmprestimosNomeMembro.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Membro não Localizado.');
        QryEmprestimosMembro.FocusControl;
      end;
    end;
  end; 

end;

procedure TFormEmprestimos.QryEmprestimosNewRecord(DataSet: TDataSet);
begin
  QryEmprestimosFechamento.AsString := '0';

  QryEmprestimosData.AsDateTime := Date;
  QryEmprestimosDevolucao.AsDateTime := Date + 7;
end;

procedure TFormEmprestimos.SpdBtnMembroClick(Sender: TObject);
begin
  QryEmprestimosMembro.FocusControl;
  QryEmprestimosMembro.AsString := Buscar('Membros','FichaNumero','Nome', 'Nome')
end;

procedure TFormEmprestimos.EditObjetoExit(Sender: TObject);
begin
  if EditObjeto.Text =  EmptyStr then
    Abort;

  LblTituloObjeto.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Titulo from Objetos');
    SQL.Add('where Codigo = :Objeto');
    ParamByName('Objeto').Value := EditObjeto.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Objeto não localizado.');
      EditObjeto.SetFocus;
      Abort;
    end;

    LblTituloObjeto.Caption := FieldByName('Titulo').AsString;

  end;

end;

procedure TFormEmprestimos.BtnAddItensClick(Sender: TObject);
begin
  if EditObjeto.Text = EmptyStr then
  begin
    InfoBox('Informe o Objeto.');
    EditObjeto.SetFocus;
    Exit;
  end;

  if not DisponibilidadeObjeto(StrToInt(EditObjeto.Text)) then
  begin
    if not YesNoBox('Objeto não está disponível.' + #13 + 'Deseja continuar?') then
    begin
      EditObjeto.SetFocus;
      Abort;
    end;
  end;



  QryItens.Append;
  QryItensObjeto.AsString := EditObjeto.Text;
  QryItens.Post;

  LimpaDadosItens;
  EditObjeto.SetFocus;

end;

procedure TFormEmprestimos.LimpaDadosItens;
begin
  EditObjeto.Clear;
end;

procedure TFormEmprestimos.Excluir1Click(Sender: TObject);
begin


  QryItens.Delete;
end;

procedure TFormEmprestimos.QryItensBeforeDelete(
  DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormEmprestimos.QryEmprestimosAfterScroll(DataSet: TDataSet);
begin
  with QryItens do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ItensEmprestimo where Emprestimo = :cEmprestimo');
    ParamByName('cEmprestimo').Value := QryEmprestimosCodigo.AsInteger;
    Open;
  end;

end;

procedure TFormEmprestimos.QryItensCalcFields(DataSet: TDataSet);
begin
  QryItensTituloObjeto.AsString := '';
  if not QryItensObjeto.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Titulo from Objetos');
      SQL.Add('where Codigo = ' + IntToStr(QryItensObjeto.AsInteger) );
      Open;
      QryItensTituloObjeto.AsString := FieldByName('Titulo').AsString;
      if IsEmpty then
      begin
        InfoBox('Objeto não Localizado.');
        QryItensObjeto.FocusControl;
      end;
    end;
  end;

end;

procedure TFormEmprestimos.SpdBtnObjetosClick(Sender: TObject);
begin
  EditObjeto.SetFocus;
  EditObjeto.Text := Buscar('Objetos','Codigo','Titulo', 'Titulo')

end;

procedure TFormEmprestimos.EditObjetoEnter(Sender: TObject);
begin
  LblTituloObjeto.Caption := EmptyStr;

end;

procedure TFormEmprestimos.PopupMenuItensPopup(Sender: TObject);
begin
  if not (QryEmprestimos.State in [dsEdit, dsInsert]) then
     Abort;

  if QryItens.IsEmpty then
    Abort;

end;

procedure TFormEmprestimos.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembro.Click;
end;

procedure TFormEmprestimos.EditObjetoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnObjetos.Click;
end;

end.
