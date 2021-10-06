unit UDmJetro;

interface

uses
  SysUtils, Classes, DB, ADODB, Uni, DBAccess, MemDS, DateUtils, RxMemDS,
  UniProvider, SQLServerUniProvider, InterBaseUniProvider, Registry, Windows;

type
  TDMJetro = class(TDataModule)
    Conn: TUniConnection;
    QryAux: TUniQuery;
    QryCultos: TUniQuery;
    QryMembros: TUniQuery;
    QryMembrosFichaNumero: TAutoIncField;
    QryMembrosNome: TStringField;
    QryMembrosDataNascimento: TDateTimeField;
    QryMembrosDataValidade: TDateTimeField;
    QryMembrosDataBatismo: TDateTimeField;
    QryMembrosNaturalidade: TStringField;
    QryMembrosEstadoCivil: TStringField;
    QryMembrosNomeConjuge: TStringField;
    QryMembrosFiliacaoPai: TStringField;
    QryMembrosFiliacaoMae: TStringField;
    QryMembrosStatus: TIntegerField;
    QryMembrosUserInsert: TIntegerField;
    QryMembrosDataInsert: TDateTimeField;
    QryMembrosUserUpdate: TIntegerField;
    QryMembrosDataUpdate: TDateTimeField;
    QryMembrosMembroDesde: TDateTimeField;
    QryMembrosStatusDesc: TStringField;
    QryMembrosRG: TStringField;
    QryMembrosCPF: TStringField;
    QryMembrosEndRua: TStringField;
    QryMembrosEndNumero: TStringField;
    QryMembrosEndBairro: TStringField;
    QryMembrosEndComplemento: TStringField;
    QryMembrosEndCidade: TStringField;
    QryMembrosEndEstado: TStringField;
    QryMembrosEndCep: TStringField;
    QryMembrosFoneResid: TStringField;
    QryMembrosFoneCelular: TStringField;
    QryMembrosEscolaridade: TStringField;
    QryMembrosProfissao: TStringField;
    QryVisitantes: TUniQuery;
    QryVisitantesCodigo: TAutoIncField;
    QryVisitantesNome: TStringField;
    QryVisitantesDiaNasc: TIntegerField;
    QryVisitantesMesNasc: TIntegerField;
    QryVisitantesUserInsert: TIntegerField;
    QryVisitantesDataInsert: TDateTimeField;
    QryVisitantesUserUpdate: TIntegerField;
    QryVisitantesDataUpdate: TDateTimeField;
    QryVisitantesFoneResid: TStringField;
    QryVisitantesFoneCelular: TStringField;
    QryVisitantesEndRua: TStringField;
    QryVisitantesEndNumero: TStringField;
    QryVisitantesEndBairro: TStringField;
    QryVisitantesEndComplemento: TStringField;
    QryVisitantesEndCidade: TStringField;
    QryVisitantesEndEstado: TStringField;
    QryVisitantesEndCep: TStringField;
    QryUsuarios: TUniQuery;
    QryPastores: TUniQuery;
    QryPastoresCodigo: TAutoIncField;
    QryPastoresNome: TStringField;
    QryPastoresEndRua: TStringField;
    QryPastoresEndNumero: TStringField;
    QryPastoresEndBairro: TStringField;
    QryPastoresEndComplemento: TStringField;
    QryPastoresEndCidade: TStringField;
    QryPastoresEndEstado: TStringField;
    QryPastoresEndCep: TStringField;
    QryPastoresFoneResid: TStringField;
    QryPastoresFoneCelular: TStringField;
    QryPastoresUserInsert: TIntegerField;
    QryPastoresDataInsert: TDateTimeField;
    QryPastoresUserUpdate: TIntegerField;
    QryPastoresDataUpdate: TDateTimeField;
    QryPastoresProntuario: TStringField;
    QryPastoresRG: TStringField;
    QryPastoresEstadoCivil: TStringField;
    QryPastoresStatus: TIntegerField;
    QryPastoresDataNascimento: TDateTimeField;
    QryPastoresCPF: TStringField;
    QryIgrejas: TUniQuery;
    QryIgrejasCodigo: TAutoIncField;
    QryIgrejasEndRua: TStringField;
    QryIgrejasEndNumero: TStringField;
    QryIgrejasEndBairro: TStringField;
    QryIgrejasEndCidade: TStringField;
    QryIgrejasEndEstado: TStringField;
    QryIgrejasEndCep: TStringField;
    QryIgrejasUserInsert: TIntegerField;
    QryIgrejasDataInsert: TDateTimeField;
    QryIgrejasUserUpdate: TIntegerField;
    QryIgrejasDataUpdate: TDateTimeField;
    QryIgrejasPastor: TIntegerField;
    QryIgrejasCNPJ: TStringField;
    QryIgrejasRegiao: TIntegerField;
    QryIgrejasNomePastor: TStringField;
    QryCultosCodigo: TAutoIncField;
    QryCultosIgreja: TIntegerField;
    QryCultosData: TDateTimeField;
    QryCultosHorario: TStringField;
    QryCultosTestemunho: TIntegerField;
    QryCultosBatismoEspiritoSanto: TIntegerField;
    QryCultosCriancasApresentadas: TIntegerField;
    QryCultosConversoes: TIntegerField;
    QryCultosVisitantes: TIntegerField;
    QryCultosTotalPresentes: TIntegerField;
    QryCultosPastoresPresentes1: TStringField;
    QryCultosPastoresPresentes2: TStringField;
    QryCultosVisitasEspeciais1: TStringField;
    QryCultosVisitasEspeciais2: TStringField;
    QryCultosPregador: TStringField;
    QryCultosOfertasGerais: TCurrencyField;
    QryCultosOutrasEntradas: TCurrencyField;
    QryCultosOfertasMissoes: TCurrencyField;
    QryCultosDiaconos1: TStringField;
    QryCultosDiaconos2: TStringField;
    QryCultosUserInsert: TIntegerField;
    QryCultosDataInsert: TDateTimeField;
    QryCultosUserUpdate: TIntegerField;
    QryCultosDataUpdate: TDateTimeField;
    QryCultosDiaSemana: TStringField;
    QryCultosBairroIgreja: TStringField;
    QryRelatorios: TUniQuery;
    QryStatus: TUniQuery;
    QryStatusCodigo: TIntegerField;
    QryStatusStatus: TStringField;
    QryCDL: TUniQuery;
    QryCDLCodigo: TAutoIncField;
    QryCDLCargo: TStringField;
    QryCDLNome: TStringField;
    QryDiaconos: TUniQuery;
    QryDiaconosCodigo: TAutoIncField;
    QryDiaconosNome: TStringField;
    QryDizimistas: TUniQuery;
    QryDizimistasCodigo: TAutoIncField;
    QryDizimistasCulto: TIntegerField;
    QryDizimistasValor: TCurrencyField;
    QryDizimistasNome: TStringField;
    QryAux2: TUniQuery;
    QryAux3: TUniQuery;
    QryCDLAno: TStringField;
    QryCultosOfertasEspeciais: TCurrencyField;
    QryMembrosCartaoMembro: TStringField;
    QryPastoresTitular: TStringField;
    QryDiaconosStatus: TIntegerField;
    QryDptoUsuarios: TUniQuery;
    QryUsuariosCodigo: TAutoIncField;
    QryUsuariosApelido: TStringField;
    QryUsuariosNome: TStringField;
    QryUsuariosDepartamento: TIntegerField;
    QryUsuariosSenha: TStringField;
    QryUsuariosUserInsert: TIntegerField;
    QryUsuariosDataInsert: TDateTimeField;
    QryUsuariosUserUpdate: TIntegerField;
    QryUsuariosDataUpdate: TDateTimeField;
    QryDptoUsuariosCodigo: TAutoIncField;
    QryDptoUsuariosDescricao: TStringField;
    QryUsuariosDescDepto: TStringField;
    QryCepAux: TUniQuery;
    QryCepAuxCep: TStringField;
    QryCepAuxLogradouro: TStringField;
    QryCepAuxBairro: TStringField;
    QryCepAuxCidade: TStringField;
    QryCepAuxUF: TStringField;
    QryPermissao: TUniQuery;
    QryPermissaoCodigo: TAutoIncField;
    QryPermissaoMenu: TStringField;
    QryPermissaoDepartamento: TIntegerField;
    QryPermissaoVisualizar: TStringField;
    QryPermissaoEditar: TStringField;
    QryCidades: TUniQuery;
    QryTabelas: TUniQuery;
    QryTabelasCodigo: TAutoIncField;
    QryTabelasDescricao: TStringField;
    QryTabelasPrincipal: TStringField;
    QryIgrejasSuperintendente: TStringField;
    QryIgrejasSede: TStringField;
    QryIgrejasCNPJCodigo: TStringField;
    InterBaseUniProvider1: TInterBaseUniProvider;
    procedure QryCultosCalcFields(DataSet: TDataSet);
    procedure QryMembrosNewRecord(DataSet: TDataSet);
    procedure QryMembrosCalcFields(DataSet: TDataSet);
    procedure QryMembrosBeforeInsert(DataSet: TDataSet);
    procedure QryMembrosBeforeEdit(DataSet: TDataSet);
    procedure QryMembrosAfterCancel(DataSet: TDataSet);
    procedure QryMembrosAfterPost(DataSet: TDataSet);
    procedure QryMembrosBeforePost(DataSet: TDataSet);
    procedure QryMembrosBeforeDelete(DataSet: TDataSet);
    procedure QryPastoresNewRecord(DataSet: TDataSet);
    procedure QryIgrejasCalcFields(DataSet: TDataSet);
    procedure QryIgrejasBeforePost(DataSet: TDataSet);
    procedure QryIgrejasNewRecord(DataSet: TDataSet);
    procedure QryCultosAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ConnBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMJetro: TDMJetro;

implementation

uses Main, Funcoes, Cultos;

{$R *.dfm}

procedure TDMJetro.QryCultosCalcFields(DataSet: TDataSet);
begin
  case DayOfTheWeek(QryCultosData.AsDateTime) of
    1: QryCultosDiaSemana.AsString := 'Segunda';
    2: QryCultosDiaSemana.AsString := 'Terca';
    3: QryCultosDiaSemana.AsString := 'Quarta';
    4: QryCultosDiaSemana.AsString := 'Quinta';
    5: QryCultosDiaSemana.AsString := 'Sexta';
    6: QryCultosDiaSemana.AsString := 'Sabado';
    7: QryCultosDiaSemana.AsString := 'Domingo';
  end;

  QryCultosBairroIgreja.AsString := '';
  if not QryCultosIgreja.IsNull then
  begin
    with QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select EndBairro from Igrejas');
      SQL.Add('where Codigo = ' + IntToStr(QryCultosIgreja.AsInteger) );
      Open;
      QryCultosBairroIgreja.AsString := 'IEQ - ' + FieldByName('EndBairro').AsString;
      if IsEmpty then
      begin
        InfoBox('Igreja não Localizada');
        QryCultosIgreja.FocusControl;
      end;
    end;
  end;


end;

procedure TDMJetro.QryMembrosNewRecord(DataSet: TDataSet);
begin
  QryMembrosStatus.AsInteger := 1;
end;

procedure TDMJetro.QryMembrosCalcFields(DataSet: TDataSet);
begin
  case QryMembrosStatus.AsInteger of
    1 : QryMembrosStatusDesc.AsString := 'ATIVO';
    2 : QryMembrosStatusDesc.AsString := 'LICENCA';
    3 : QryMembrosStatusDesc.AsString := 'TRANSFERIDO';
    4 : QryMembrosStatusDesc.AsString := 'DISCIPLINA';
    5 : QryMembrosStatusDesc.AsString := 'EXCLUIDO';
  end;
end;

procedure TDMJetro.QryMembrosBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;
end;

procedure TDMJetro.QryMembrosBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;
end;

procedure TDMJetro.QryMembrosAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
end;

procedure TDMJetro.QryMembrosAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;

  if DataSet = QryCultos then
  begin
    QryDizimistas.First;

    while not QryDizimistas.Eof do
    begin
      QryDizimistas.Edit;
      QryDizimistasCulto.AsInteger := QryCultosCodigo.AsInteger;
      QryDizimistas.Post;
      QryDizimistas.Next;
    end;
  end;

end;

procedure TDMJetro.QryMembrosBeforePost(DataSet: TDataSet);
begin
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

  if DataSet = QryCultos then
  begin

    if (DayOfTheWeek(QryCultosData.AsDateTime) = 7) and
       ((DayOfTheMonth(QryCultosData.AsDateTime) >= 15) and
       (DayOfTheMonth(QryCultosData.AsDateTime) < 22)) then

      if QryCultosOfertasMissoes.AsCurrency = 0 then
      begin
        InfoBox('Favor lançar valor da Oferta de Missões.');
        QryCultosOfertasMissoes.FocusControl;
        Abort;
      end;
    end;
     

end;

procedure TDMJetro.QryMembrosBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

  if DataSet = QryCultos then
  begin
    SQLClear(QryDizimistas);
    QryDizimistas.SQL.Add('delete from DizimistasCulto where Culto = ' + QryCultosCodigo.AsString);
    QryDizimistas.ExecSQL;
  end;
end;

procedure TDMJetro.QryPastoresNewRecord(DataSet: TDataSet);
begin
  QryPastoresTitular.AsString := 'N';
  QryPastoresStatus.AsInteger  := 1;
end;

procedure TDMJetro.QryIgrejasCalcFields(DataSet: TDataSet);
begin
  QryIgrejasNomePastor.AsString := '';
  if not QryIgrejasPastor.IsNull then
  begin
    with QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Pastores');
      SQL.Add('where Codigo = ' + IntToStr(QryIgrejasPastor.AsInteger) );
      Open;
      QryIgrejasNomePastor.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Pastor não Localizado');
        QryIgrejasPastor.FocusControl;
      end;
    end;
  end;
end;

procedure TDMJetro.QryIgrejasBeforePost(DataSet: TDataSet);
begin
  if QryIgrejasPastor.AsInteger = 0 then
  begin
    ErrorBox('Pastor Campo Requerido');
    QryIgrejasPastor.FocusControl;
    Abort;
  end;
  QryMembros.BeforePost(QryIgrejas);
end;

procedure TDMJetro.QryIgrejasNewRecord(DataSet: TDataSet);
begin
  QryIgrejasCNPJ.AsString := '62955505';
end;

procedure TDMJetro.QryCultosAfterScroll(DataSet: TDataSet);
begin

  with QryDizimistas do
  begin
    SQLClear(QryDizimistas);
    SQL.Add('select * from DizimistasCulto');
    SQL.Add('where Culto = :cCulto');
    ParamByName('cCulto').Value := QryCultosCodigo.AsInteger;
    Open;
  end;

  FormCultos.Missoes;

end;

procedure TDMJetro.DataModuleCreate(Sender: TObject);
var
  //path : String;
  Registro : TRegistry;
begin
  //path := ExtractFilePath(ParamStr(0));
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  Registro.OpenKey('SOFTWARE\IEQSoft\Banco',False);

  Conn.Server   := EmptyStr;
  Conn.Database := EmptyStr;
  Conn.Username := EmptyStr;
  Conn.Password := EmptyStr;

  Conn.Server   := Registro.ReadString('Server');;
  Conn.Database := Registro.ReadString('DataBase');
  Conn.Username := Registro.ReadString('UserName');
  Conn.Password := Registro.ReadString('Password');

  Registro.CloseKey;
  Registro.Free;
end;

procedure TDMJetro.ConnBeforeConnect(Sender: TObject);
var
  //path : String;
  Registro : TRegistry;
begin
  //path := ExtractFilePath(ParamStr(0));
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  Registro.OpenKey('SOFTWARE\IEQSoft\Banco',False);

  Conn.Server   := EmptyStr;
  Conn.Database := EmptyStr;
  Conn.Username := EmptyStr;
  Conn.Password := EmptyStr;

  Conn.Server   := Registro.ReadString('Server');;
  Conn.Database := Registro.ReadString('DataBase');
  Conn.Username := Registro.ReadString('UserName');
  Conn.Password := Registro.ReadString('Password');

  Registro.CloseKey;
  Registro.Free;

end;

end.
