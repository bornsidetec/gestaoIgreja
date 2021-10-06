unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS;

type
  TFormUsuarios = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
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
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnDeptoUsuarios: TSpeedButton;
    DBText1: TDBText;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    LblConfirmaSenha: TLabel;
    EditConfirmaSenha: TEdit;
    QryUsuarios: TUniQuery;
    QryUsuariosCodigo: TIntegerField;
    QryUsuariosApelido: TStringField;
    QryUsuariosNome: TStringField;
    QryUsuariosDepartamento: TIntegerField;
    QryUsuariosSenha: TStringField;
    QryUsuariosUserInsert: TIntegerField;
    QryUsuariosDataInsert: TDateTimeField;
    QryUsuariosUserUpdate: TIntegerField;
    QryUsuariosDataUpdate: TDateTimeField;
    QryUsuariosDescDepto1: TStringField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure SpdBtnDeptoUsuariosClick(Sender: TObject);
    procedure QryUsuariosAfterCancel(DataSet: TDataSet);
    procedure QryUsuariosAfterPost(DataSet: TDataSet);
    procedure QryUsuariosBeforeDelete(DataSet: TDataSet);
    procedure QryUsuariosBeforeEdit(DataSet: TDataSet);
    procedure QryUsuariosBeforeInsert(DataSet: TDataSet);
    procedure QryUsuariosBeforePost(DataSet: TDataSet);
    procedure QryUsuariosCalcFields(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuarios: TFormUsuarios;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormUsuarios.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryUsuarios.Close;

  FormUsuarios := nil;
  Action := caFree;
end;

procedure TFormUsuarios.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
end;

procedure TFormUsuarios.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormUsuarios.FormShow(Sender: TObject);
begin
  AbreQuery(QryUsuarios, 'Usuarios', True);
  QryUsuarios.First;
end;

procedure TFormUsuarios.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormUsuarios.PageControlChange(Sender: TObject);
begin
  if QryUsuarios.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormUsuarios.SpdBtnDeptoUsuariosClick(Sender: TObject);
begin
  QryUsuariosDepartamento.FocusControl;
  QryUsuariosDepartamento.AsString := Buscar('DeptoUsuarios','Codigo','Descricao', 'Descricao')
end;

procedure TFormUsuarios.QryUsuariosAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

  QryUsuariosDepartamento.ReadOnly := False;
  SpdBtnDeptoUsuarios.Enabled      := True;

  LblConfirmaSenha.Visible  := False;
  EditConfirmaSenha.Visible := False;

end;

procedure TFormUsuarios.QryUsuariosAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

  QryUsuariosDepartamento.ReadOnly := False;
  SpdBtnDeptoUsuarios.Enabled      := True;

  LblConfirmaSenha.Visible  := False;
  EditConfirmaSenha.Visible := False;

  if FormMain.Usuario = QryUsuariosCodigo.AsInteger then
  begin
    FormMain.StatusBar1.Panels.Items[0].Text := 'Usuário: ' + QryUsuariosApelido.AsString;
    FormMain.StatusBar1.Panels.Items[1].Text := 'Departamento: ' + QryUsuariosDescDepto1.AsString;
  end;  

end;

procedure TFormUsuarios.QryUsuariosBeforeDelete(DataSet: TDataSet);
begin
  with DMJetro.QryUsuarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Usuarios where codigo = :c');
    ParamByName('c').Value := FormMain.Usuario;
    Open;
  end;

  if (DMJetro.QryUsuariosDepartamento.AsInteger <> 1) then
  begin
    InfoBox('Usuário sem permissão para excluir.');
    Abort;
  end;

  if QryUsuariosCodigo.AsInteger = 1 then
  begin
    InfoBox('Usuário principal não pode ser excluído.');
    Abort;
  end;

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormUsuarios.QryUsuariosBeforeEdit(DataSet: TDataSet);
begin

  with DMJetro.QryUsuarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Usuarios where codigo = :c');
    ParamByName('c').Value := FormMain.Usuario;
    Open;
  end;

  if (DMJetro.QryUsuariosDepartamento.AsInteger <> 1) and
     (FormMain.Usuario <> QryUsuariosCodigo.AsInteger) then
  begin
    InfoBox('Não é possível alterar este Usuário.');
    Abort;
  end;

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;

  QryUsuariosDepartamento.ReadOnly := DMJetro.QryUsuariosDepartamento.AsInteger <> 1; //departamento 1 = "PASTOR"
  SpdBtnDeptoUsuarios.Enabled      := DMJetro.QryUsuariosDepartamento.AsInteger = 1;  //departamento 1 = "PASTOR"

  if QryUsuariosCodigo.AsInteger = 1 then
  begin
    QryUsuariosDepartamento.ReadOnly := True;
    SpdBtnDeptoUsuarios.Enabled      := False;
  end;

  LblConfirmaSenha.Visible  := True;
  EditConfirmaSenha.Visible := True;
  EditConfirmaSenha.Text := QryUsuariosSenha.AsString;

  DBEdit3.SetFocus;

end;

procedure TFormUsuarios.QryUsuariosBeforeInsert(DataSet: TDataSet);
begin

  with DMJetro.QryUsuarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Usuarios where codigo = :c');
    ParamByName('c').Value := FormMain.Usuario;
    Open;
  end;

  if (DMJetro.QryUsuariosDepartamento.AsInteger <> 1) then
  begin
    InfoBox('Usuário sem permissão para incluir.');
    Abort;
  end;


  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;

  LblConfirmaSenha.Visible  := True;
  EditConfirmaSenha.Visible := True;

  DBEdit3.SetFocus;

end;

procedure TFormUsuarios.QryUsuariosBeforePost(DataSet: TDataSet);
begin

  QryUsuarios.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if QryUsuariosSenha.AsString <> EditConfirmaSenha.Text then
  begin
    InfoBox('Senha não confere.');
    QryUsuariosSenha.FocusControl;
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

procedure TFormUsuarios.QryUsuariosCalcFields(DataSet: TDataSet);
begin
  QryUsuariosDescDepto1.AsString := '';
  if not QryUsuariosDepartamento.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from DeptoUsuarios');
      SQL.Add('where Codigo = ' + IntToStr(QryUsuariosDepartamento.AsInteger) );
      Open;
      QryUsuariosDescDepto1.AsString := FieldByName('Descricao').AsString;
      
      if IsEmpty then
      begin
        InfoBox('Departamento não localizado.');
        QryUsuariosDepartamento.FocusControl;
      end;

    end;
  end;

end;

procedure TFormUsuarios.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_F3) and (SpdBtnDeptoUsuarios.Enabled) then
    SpdBtnDeptoUsuarios.Click;
end;

end.
