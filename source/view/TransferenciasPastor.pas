unit TransferenciasPastor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, RXDBCtrl, DB, ADODB, Uni, DBAccess, MemDS,
  RxDBComb, rxToolEdit, RxMemDS, Mask, DBCtrls, ComCtrls;

type
  TFormTransferenciasPastor = class(TForm)
    PanelBotoes: TPanel;
    PanelDados: TPanel;
    GroupBoxPastores: TGroupBox;
    Label1: TLabel;
    EditPastor: TEdit;
    SpdBtnPastores: TSpeedButton;
    LblNomePastor: TLabel;
    BtnTransferir: TBitBtn;
    BtnSair: TBitBtn;
    QryTransferencias: TUniQuery;
    Ds: TDataSource;
    GroupBoxTransferencias: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    SpdBtnCidades: TSpeedButton;
    DBText1: TDBText;
    DBCboUFDestino: TDBComboBox;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    SpdBtnCEP: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBCboUF: TDBComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBDateEdit2: TDBDateEdit;
    QryTransferenciasCodigo: TIntegerField;
    QryTransferenciasPastorTransferido: TIntegerField;
    QryTransferenciasDestinoCidade: TIntegerField;
    QryTransferenciasDestinoEstado: TStringField;
    QryTransferenciasData: TDateTimeField;
    QryTransferenciasUserInsert: TIntegerField;
    QryTransferenciasDataInsert: TDateTimeField;
    QryTransferenciasUserUpdate: TIntegerField;
    QryTransferenciasDataUpdate: TDateTimeField;
    QryPastores: TUniQuery;
    DsPastores: TDataSource;
    QryTransferenciasNomeDestinoCidade: TStringField;
    QryPastoresCodigo: TIntegerField;
    QryPastoresNome: TStringField;
    QryPastoresDataNascimento: TDateTimeField;
    QryPastoresProntuario: TStringField;
    QryPastoresCPF: TStringField;
    QryPastoresRG: TStringField;
    QryPastoresEstadoCivil: TStringField;
    QryPastoresEndRua: TStringField;
    QryPastoresEndNumero: TStringField;
    QryPastoresEndBairro: TStringField;
    QryPastoresEndComplemento: TStringField;
    QryPastoresEndCidade: TStringField;
    QryPastoresEndEstado: TStringField;
    QryPastoresEndCep: TStringField;
    QryPastoresFoneResid: TStringField;
    QryPastoresFoneCelular: TStringField;
    QryPastoresStatus: TIntegerField;
    QryPastoresTitular: TStringField;
    QryPastoresUserInsert: TIntegerField;
    QryPastoresDataInsert: TDateTimeField;
    QryPastoresUserUpdate: TIntegerField;
    QryPastoresDataUpdate: TDateTimeField;
    BtnCancelar: TBitBtn;
    QryAtualizaPastor: TUniQuery;
    QryInsereUsuario: TUniQuery;
    PageControlNovoPastor: TPageControl;
    TabSheetNovo: TTabSheet;
    TabSheetAuxiliar: TTabSheet;
    Label9: TLabel;
    EditPastorAux: TEdit;
    SpdBtnPastoresAux: TSpeedButton;
    LblNomePastorAux: TLabel;
    QryPastorAuxiliar: TUniQuery;
    QryAtualizaIgreja: TUniQuery;
    QryAtualizaUsuario: TUniQuery;
    procedure SpdBtnPastoresClick(Sender: TObject);
    procedure EditPastorExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPastorKeyPress(Sender: TObject; var Key: Char);
    procedure EditPastorEnter(Sender: TObject);
    procedure QryTransferenciasCalcFields(DataSet: TDataSet);
    procedure BtnTransferirClick(Sender: TObject);
    procedure QryTransferenciasBeforePost(DataSet: TDataSet);
    procedure DBCboUFDestinoChange(Sender: TObject);
    procedure SpdBtnCidadesClick(Sender: TObject);
    procedure QryTransferenciasNewRecord(DataSet: TDataSet);
    procedure DBEdit9Exit(Sender: TObject);
    procedure SpdBtnCEPClick(Sender: TObject);
    procedure QryPastoresBeforePost(DataSet: TDataSet);
    procedure QryPastoresNewRecord(DataSet: TDataSet);
    procedure QryPastoresAfterCancel(DataSet: TDataSet);
    procedure QryPastoresAfterPost(DataSet: TDataSet);
    procedure QryPastoresBeforeInsert(DataSet: TDataSet);
    procedure QryTransferenciasAfterCancel(DataSet: TDataSet);
    procedure QryTransferenciasAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QryTransferenciasBeforeInsert(DataSet: TDataSet);
    procedure BtnCancelarClick(Sender: TObject);
    procedure QryTransferenciasBeforeCancel(DataSet: TDataSet);
    procedure SpdBtnPastoresAuxClick(Sender: TObject);
    procedure EditPastorAuxExit(Sender: TObject);
    procedure EditPastorAuxEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditPastorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPastorAuxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    CodigoNovoPastor : Integer;

    procedure LimpaPastor;
    procedure LimpaPastorAux;
  public
    { Public declarations }
  end;

var
  FormTransferenciasPastor: TFormTransferenciasPastor;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormTransferenciasPastor.SpdBtnPastoresClick(Sender: TObject);
begin
  EditPastor.SetFocus;
  EditPastor.Text := Buscar('Pastores','Codigo','Nome', 'Nome', 'where Titular = ''S''')
end;

procedure TFormTransferenciasPastor.EditPastorExit(Sender: TObject);
begin
  if EditPastor.Text =  EmptyStr then
    Abort;

  LblNomePastor.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome from Pastores');
    SQL.Add('where Codigo = :pastor');
    SQL.Add('  and Titular = ''S''');
    ParamByName('pastor').Value := EditPastor.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Pastor Titular não localizado.');
      EditPastor.SetFocus;
      Abort;
    end;

    LblNomePastor.Caption := FieldByName('Nome').AsString;

  end;

  //DMJetro.Conn.BeginTrans;

  QryTransferencias.Append;

end;

procedure TFormTransferenciasPastor.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTransferenciasPastor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormTransferenciasPastor := nil;
  Action := caFree;
end;

procedure TFormTransferenciasPastor.EditPastorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not ( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormTransferenciasPastor.EditPastorEnter(Sender: TObject);
begin
  LblNomePastor.Caption := EmptyStr;
end;

procedure TFormTransferenciasPastor.QryTransferenciasCalcFields(DataSet: TDataSet);
begin

  QryTransferenciasNomeDestinoCidade.AsString := '';
  if not QryTransferenciasDestinoCidade.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome as Descricao from CidadesIBGE');
      SQL.Add('where Codigo = ' + IntToStr(QryTransferenciasDestinoCidade.AsInteger) );
      Open;
      QryTransferenciasNomeDestinoCidade.AsString := FieldByName('Descricao').AsString;

      if IsEmpty then
      begin
        InfoBox('Cidade não localizada.');
        QryTransferenciasDestinoCidade.FocusControl;
      end;

    end;
  end;

end;

procedure TFormTransferenciasPastor.BtnTransferirClick(Sender: TObject);
begin

  if EditPastor.Text = EmptyStr then
  begin
    InfoBox('Código do Pastor deve ser informado.');
    EditPastor.SetFocus;
    Abort;
  end;

  if PageControlNovoPastor.ActivePageIndex = 1 then
  begin
    if EditPastorAux.Text = EmptyStr then
    begin
      InfoBox('Código do Pastor auxiliar deve ser informado.');
      EditPastorAux.SetFocus;
      Abort;
    end;
  end;

  if not (QryTransferencias.State in [dsInsert]) then
    Abort;

  if YesNoBox('Confirma a Transferência?') then
  begin
    QryTransferencias.Post;
    InfoBox('Transferência Realizada com sucesso.');
    AbreQuery(QryTransferencias, 'TransferenciasPastoral');
    AbreQuery(QryPastores, 'Pastores');

    LimpaPastor;
    LimpaPastorAux;

    EditPastor.SetFocus;
  end;
end;

procedure TFormTransferenciasPastor.QryTransferenciasBeforePost(DataSet: TDataSet);
begin

  QryTransferencias.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if PageControlNovoPastor.ActivePageIndex = 0 then
  begin
    QryPastores.Post;
    CodigoNovoPastor := QryPastoresCodigo.AsInteger;
  end
  else
  begin
    QryPastores.Cancel;
    QryPastorAuxiliar.ParamByName('Codigo').Value := EditPastorAux.Text;
    QryPastorAuxiliar.ExecSQL;
    CodigoNovoPastor := StrToInt(EditPastorAux.Text);
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

procedure TFormTransferenciasPastor.DBCboUFDestinoChange(Sender: TObject);
begin
  QryTransferenciasDestinoCidade.Clear;
end;

procedure TFormTransferenciasPastor.SpdBtnCidadesClick(Sender: TObject);
begin
  QryTransferenciasDestinoCidade.FocusControl;
  QryTransferenciasDestinoCidade.AsString := Buscar('CidadesIBGE','CidadesIBGE.Codigo','CidadesIBGE.Nome', 'CidadesIBGE.Nome',
                                             'inner join UFIbge on UFibge.Codigo = CidadesIBGE.UF where UFibge.Sigla = ' +
                                             QuotedStr(QryTransferenciasDestinoEstado.AsString) );

end;

procedure TFormTransferenciasPastor.QryTransferenciasNewRecord(
  DataSet: TDataSet);
begin
  QryTransferenciasPastorTransferido.AsString := EditPastor.Text;
end;

procedure TFormTransferenciasPastor.DBEdit9Exit(Sender: TObject);
begin
  CEP(QryPastores, DBEdit9.Text);
end;

procedure TFormTransferenciasPastor.SpdBtnCEPClick(Sender: TObject);
begin
  QryPastoresEndCep.FocusControl;
  QryPastoresEndCep.AsString := Buscar('Cep','Cep','Logradouro','Logradouro')

end;

procedure TFormTransferenciasPastor.QryPastoresBeforePost(
  DataSet: TDataSet);
begin
  QryPastores.Fields.Fields[0].FocusControl;

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

procedure TFormTransferenciasPastor.QryPastoresNewRecord(
  DataSet: TDataSet);
begin
  QryPastoresStatus.AsInteger := 1;
  QryPastoresTitular.AsString := 'S';

end;

procedure TFormTransferenciasPastor.QryPastoresAfterCancel(
  DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  GroupBoxPastores.Enabled := False;

end;

procedure TFormTransferenciasPastor.QryPastoresAfterPost(
  DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  GroupBoxPastores.Enabled := False;

end;

procedure TFormTransferenciasPastor.QryPastoresBeforeInsert(
  DataSet: TDataSet);
begin
  DataSet.Tag := 1;
  GroupBoxPastores.Enabled := True;
end;

procedure TFormTransferenciasPastor.QryTransferenciasAfterCancel(
  DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  GroupBoxTransferencias.Enabled := False;
end;

procedure TFormTransferenciasPastor.QryTransferenciasAfterPost(
  DataSet: TDataSet);
begin

  QryAtualizaPastor.ParamByName('Codigo').Value := EditPastor.Text;
  QryAtualizaPastor.ExecSQL;

  {
  if PageControlNovoPastor.ActivePageIndex = 0 then
  begin
    QryInsereUsuario.ParamByName('Apelido').Value := Apelido(QryPastoresNome.AsString);
    QryInsereUsuario.ParamByName('Nome').Value := QryPastoresNome.AsString;
  end
  else
  begin
    QryInsereUsuario.ParamByName('Apelido').Value := Apelido(LblNomePastorAux.Caption);
    QryInsereUsuario.ParamByName('Nome').Value := LblNomePastorAux.Caption;
  end;
  QryInsereUsuario.ParamByName('Usuario').Value := FormMain.Usuario;
  QryInsereUsuario.ExecSQL;
  }

  if PageControlNovoPastor.ActivePageIndex = 0 then
  begin
    QryAtualizaUsuario.ParamByName('Apelido').Value := Apelido(QryPastoresNome.AsString);
    QryAtualizaUsuario.ParamByName('Nome').Value := QryPastoresNome.AsString;
  end
  else
  begin
    QryAtualizaUsuario.ParamByName('Apelido').Value := Apelido(LblNomePastorAux.Caption);
    QryAtualizaUsuario.ParamByName('Nome').Value := LblNomePastorAux.Caption;
  end;
  QryAtualizaUsuario.ParamByName('Usuario').Value := FormMain.Usuario;
  QryAtualizaUsuario.ExecSQL;


  QryAtualizaIgreja.ParamByName('pastor').Value := CodigoNovoPastor;
  QryAtualizaIgreja.ExecSQL;

  DataSet.Tag := 0;
  GroupBoxTransferencias.Enabled := False;

end;

procedure TFormTransferenciasPastor.FormShow(Sender: TObject);
begin
  AbreQuery(QryTransferencias, 'TransferenciasPastoral');
  AbreQuery(QryPastores, 'Pastores');
end;

procedure TFormTransferenciasPastor.QryTransferenciasBeforeInsert(
  DataSet: TDataSet);
begin
  DataSet.Tag := 1;
  GroupBoxTransferencias.Enabled := True;

  QryPastores.Append;
end;

procedure TFormTransferenciasPastor.BtnCancelarClick(Sender: TObject);
begin

  EditPastor.SetFocus;

  if not (QryTransferencias.State in [dsInsert]) then
    Abort;

  QryTransferencias.Cancel;

  PageControlNovoPastor.ActivePageIndex := 0;

  LimpaPastor;
  LimpaPastorAux;
end;

procedure TFormTransferenciasPastor.QryTransferenciasBeforeCancel(
  DataSet: TDataSet);
begin
  if PageControlNovoPastor.ActivePageIndex = 0 then
    QryPastores.Cancel
  else
    LimpaPastorAux;
end;

procedure TFormTransferenciasPastor.SpdBtnPastoresAuxClick(
  Sender: TObject);
begin
  EditPastorAux.SetFocus;
  EditPastorAux.Text := Buscar('Pastores','Codigo','Nome', 'Nome', 'where Titular = ''N'' and Status = 1')

end;

procedure TFormTransferenciasPastor.EditPastorAuxExit(Sender: TObject);
begin
  if EditPastorAux.Text =  EmptyStr then
    Abort;

  LblNomePastorAux.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome from Pastores');
    SQL.Add('where Codigo = :pastor');
    SQL.Add('  and Titular = ''N''');
    SQL.Add('  and Status = 1');
    ParamByName('pastor').Value := EditPastorAux.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Pastor Auxliar ativo não localizado.');
      EditPastorAux.SetFocus;
      Abort;
    end;

    LblNomePastorAux.Caption := FieldByName('Nome').AsString;

  end;

end;

procedure TFormTransferenciasPastor.EditPastorAuxEnter(Sender: TObject);
begin
  LblNomePastorAux.Caption := EmptyStr;

end;

procedure TFormTransferenciasPastor.FormCreate(Sender: TObject);
begin
  PageControlNovoPastor.ActivePageIndex := 0;
end;

procedure TFormTransferenciasPastor.LimpaPastor;
begin
  EditPastor.Clear;
  LblNomePastor.Caption := EmptyStr;

end;

procedure TFormTransferenciasPastor.LimpaPastorAux;
begin
  EditPastorAux.Clear;
  LblNomePastorAux.Caption := EmptyStr;

end;

procedure TFormTransferenciasPastor.EditPastorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnPastores.Click;
end;

procedure TFormTransferenciasPastor.DBEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCidades.Click;
end;

procedure TFormTransferenciasPastor.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCEP.Click;
end;

procedure TFormTransferenciasPastor.EditPastorAuxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnPastoresAux.Click;
end;

end.
