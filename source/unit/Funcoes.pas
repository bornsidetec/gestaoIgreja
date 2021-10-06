unit Funcoes;

interface

uses
  Windows, DB, ADODB, Uni, DBAccess, MemDS, Forms, Classes, RxMemDS, Buttons, ComCtrls, DBCtrls,
  StdCtrls, RxDBComb, Controls, DateUtils, Registry;

{variaveis}
var
  SQL : TStrings;
  PermissaoEditar : String;

  HoraDez: array[1..14] of String = ('dez', 'onze', 'doze', 'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove', 'vinte', 'trinta', 'quarenta', 'cinquenta');
  HoraUnit: array[1..11] of String = ('um', 'dois', 'trÍs', 'quatro', 'cinco', 'seis', 'sete', 'oito', 'nove', 'uma', 'duas');

const
  MsgCopyRight: String = 'CÛpia n„o autorizada.';
  MsgArquivoDados: String = 'Arquivo de acesso aos dados n„o localizado.';
  MsgDesativado: String = 'IEQSoft Desativado.';
  MsgContato: String = 'Favor entrar em contato com BornSide - Tecnologia.';
  MsgFone: String = 'fone: (17)9128-7253';
  MsgEmail: String = 'email: bornsidetec@gmail.com';
  MsgFalhaConexao: String = 'Conex„o falhou';

  SafetyPath: String = 'C:\Windows\System32\safety.config';
  DataBasePath: String = 'C:\Windows\System32\database.config';

{procedure}
procedure AbreQuery(DataSet: TUniQuery; Tabela: String; All: Boolean = False);
procedure SQLClear(DataSet: TUniQuery);
procedure SQLReset(DataSet: TUniQuery);
procedure InfoBox(Mensagem: String);
procedure ErrorBox(Mensagem: String);
procedure AjusteEtiqueta(DataSet: TRxMemoryData; Lin, Col, LinMax: Integer; Append: Boolean = True);
procedure CEP(DataSet: TUniQuery; Cep : String);
procedure PermissaoBotoes(Barra: TToolBar);
procedure Cidades(Estado: String; Cidades: TDBComboBox);
procedure ComboTabelaAuxiliar(Tabela, Filtro: String; Combo: TComboBox; Codigo: String = 'S');
procedure RxComboTabelaAuxiliar(Tabela, Filtro: String; Combo: TRxDBComboBox);
procedure Descricao(DataSet: TUniQuery; Tabela, Cod, Desc: String);
procedure CamposObrigatorios(DataSet: TUniQuery);
procedure TruncaNome(Nome : String; var Nome1, Nome2 : String);
procedure RegistraSMS(SMS, Destino : String);

{function}
function YesNoBox(Mensagem: String):Boolean;
function Buscar(Tabela, CampoChave, CampoBusca: String; Ordem: String; Filtro: String = ''; QtdField: Integer = 2): String;
function TotalizaDizimos(cCulto: Integer): Currency;
function TotalizaOfertas(cCulto: Integer): Currency;
function TotalizaGastos(cViagem: Integer): Currency;
function TotalizaCulto(cCulto: Integer): Currency;
function TotalizaItens(cDoacao: Integer): Currency;
function Permissao(Menu: String; Usuario: Integer): Boolean;
function Extenso(literal: Double): string;
function StrZero(Num, Size: Integer): String;
function UltimoCodigo(Tabela: String): Integer;
function ExtensoHoras(Horas: TTime): String;
function ExtensoData(Data: TDateTime): String;
function DisponibilidadeObjeto(Objeto: Integer): Boolean;
function Apelido(Nome: String): String;
function DisponibilidadeMatricula(Membro: Integer): Boolean;
function Versao(var Limite: Integer; Tipo: String = 'Membros'): Boolean;
function Liberacao(var Dias: Integer): Boolean;
function LiberacaoR(var Dias: Integer): Boolean;
function Fechado(Mes, Ano : Integer): Boolean;
function SaldoAnterior(Mes, Ano : Integer): Currency;
function LancamentosAberto(Mes, Ano : Integer): Boolean;
function PrimeiroNome(Nome: String): String;
function RemoveAcentos(Str:String): String;
function RetornoSMS(Retorno: String): String;
function DataArquivo(Arquivo, Tipo: String): TDateTime;
function FileTimeToDTime(FTime: TFileTime): TDateTime;

function Criptografia(Texto, Chave : String): String;
function Descriptografia(Texto, Chave : String): String;

function RegExiste(Tipo: Char): Boolean; //Tipos: 'L' - Licensa | 'B' - Banco de Dados
function DataLicensa(Bundled: String): TDateTime;

procedure DemoBD;
function DemoLicenca(var Dias: Integer): Boolean;

implementation

uses Selecao, Main, SysUtils, UDmJetro, Math;

procedure AbreQuery(DataSet: TUniQuery; Tabela: String; All: Boolean = False);
var
  campo : String;
begin
  with DataSet do
  begin
    campo := Fields[0].FieldName;
    SQL.Clear;
    SQL.Add('select * from ' + tabela);
    if not All then
      SQL.Add('where ' + campo + ' = -1');
    Open;
  end;
end;

procedure InfoBox(Mensagem: String);
begin
  Application.MessageBox(PChar(Mensagem), 'IEQSoft', MB_OK + MB_ICONINFORMATION);
end;

procedure ErrorBox(Mensagem: String);
begin
  Application.MessageBox(PChar(Mensagem), 'IEQSoft', MB_OK + MB_ICONERROR);
end;

function YesNoBox(Mensagem: String):Boolean;
begin
  Result := Application.MessageBox(PChar(Mensagem),'IEQSoft',MB_YESNO + MB_ICONQUESTION) = IDYES
end;

function Buscar(Tabela, CampoChave, CampoBusca: String; Ordem: String; Filtro: String = ''; QtdField: Integer = 2): String;
begin
  if FormSelecao = nil then
    Application.CreateForm(TFormSelecao, FormSelecao);
  FormSelecao.Caption := 'SELECIONA ' + UpperCase(Tabela);
  FormSelecao.LabelBusca.Caption := Ordem;
  FormSelecao.QtdField := QtdField;
  with FormSelecao.Qry do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select ' + CampoChave + ', ' + CampoBusca + ' from ' + Tabela);
    if Filtro <> EmptyStr then
      SQL.Add(Filtro);
    SQL.Add('order by ' + Ordem);
    Open;
  end;
  FormSelecao.ShowModal;
  Result := FormMain.ParametroSelecao;
end;


procedure SQLClear(DataSet: TUniQuery);
begin
  SQL := DataSet.SQL;
  DataSet.SQL.Clear;
end;

procedure SQLReset(DataSet: TUniQuery);
begin
  DataSet.SQL.Clear;
  DataSet.SQL := SQL;
end;

procedure AjusteEtiqueta(DataSet: TRxMemoryData; Lin, Col, LinMax: Integer; Append: Boolean = True);
var
  i, qtd : Integer;

begin
  qtd := ((Col - 1) * LinMax) + Lin - 1;
  For i := 1 to qtd do
  begin
    if Append then
      DataSet.Append
    else
      DataSet.Insert;  
    DataSet.Post;
  end;
end;

procedure CEP(DataSet: TUniQuery; Cep : String);
begin
  if Cep = EmptyStr then
    Abort;

  if (DataSet.State = dsInsert) or (DataSet.State = dsEdit) then
  with DMJetro.QryCepAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM Cep');
    SQL.Add('WHERE CEP = ' + QuotedStr(Cep));
    Open;
    if IsEmpty then
    begin
      InfoBox('CEP n„o Localizado');
      //DataSet.FiledByName('EndCEP').FocusControl;
      Abort;
    end;
    DataSet.FieldByName('EndRua').AsString    := FieldByName('Logradouro').AsString;
    DataSet.FieldByName('EndBairro').AsString := FieldByName('Bairro').AsString;
    DataSet.FieldByName('EndCidade').AsString := FieldByName('Cidade').AsString;
    DataSet.FieldByName('EndEstado').AsString := FieldByName('UF').AsString;
    DataSet.FieldByName('EndNumero').FocusControl;
  end;

end;


function TotalizaDizimos(cCulto: Integer): Currency;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(valor) as Dizimos from DizimistasCulto');
    SQL.Add('where Culto = :cCulto');
    SQL.Add('or Culto is null');
    ParamByName('cCulto').Value := cCulto;
    Open;
    Result := FieldByName('Dizimos').AsCurrency
  end;

end;

function TotalizaOfertas(cCulto: Integer): Currency;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(valor) as Ofertas from OfertantesCulto');
    SQL.Add('where Culto = :cCulto');
    SQL.Add('or Culto is null');
    ParamByName('cCulto').Value := cCulto;
    Open;
    Result := FieldByName('Ofertas').AsCurrency
  end;

end;

function TotalizaGastos(cViagem: Integer): Currency;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(valor) as Gastos from GastosViagem');
    SQL.Add('where Viagem = :cViagem');
    SQL.Add('or Viagem is null');
    ParamByName('cViagem').Value := cViagem;
    Open;
    Result := FieldByName('Gastos').AsCurrency
  end;

end;

function TotalizaCulto(cCulto: Integer): Currency;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select OfertasGerais + OfertasEspeciais + OutrasEntradas as Ofertas from Cultos');
    SQL.Add('where Codigo = :cCulto');
    ParamByName('cCulto').Value := cCulto;
    Open;
    Result := FieldByName('Ofertas').AsCurrency + TotalizaDizimos(cCulto);
  end;
end;

function TotalizaItens(cDoacao: Integer): Currency;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(ValorUnitario * Qtde) as Itens from ItensDoacao');
    SQL.Add('where Doacao = :cDoacao');
    SQL.Add('or Doacao is null');
    ParamByName('cDoacao').Value := cDoacao;
    Open;
    Result := FieldByName('Itens').AsCurrency
  end;

end;

function Permissao(Menu: String; Usuario: Integer): Boolean;
begin
  with DMJetro.QryUsuarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Usuarios where codigo = :c');
    ParamByName('c').Value := Usuario;
    Open;
  end;

  with DMJetro.QryPermissao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Permissoes');
    SQL.Add('where Menu = ''' + Menu + '''');
    SQL.Add('  and Departamento = :d');
    ParamByName('d').Value := DMJetro.QryUsuariosDepartamento.AsInteger;
    Open;
  end;

  Permissao       := DMJetro.QryPermissaoVisualizar.AsString = 'S';
  PermissaoEditar := DMJetro.QryPermissaoEditar.AsString;

  if not Result then
    InfoBox('Usu·rio sem permiss„o.');


end;

procedure PermissaoBotoes(Barra: TToolBar);
begin
  Barra.Buttons[3].Visible  := PermissaoEditar = 'S';
  Barra.Buttons[4].Visible  := PermissaoEditar = 'S';
  Barra.Buttons[5].Visible  := PermissaoEditar = 'S';
  Barra.Buttons[6].Visible  := PermissaoEditar = 'S';
  Barra.Buttons[7].Visible  := PermissaoEditar = 'S';
  Barra.Buttons[8].Visible  := PermissaoEditar = 'S';
  Barra.Buttons[9].Visible  := PermissaoEditar = 'S';
end;

function Extenso(literal: Double): string;
var
  i, centena, dezena, unidade : integer;
  valor, monta, extenso : string;
begin
  extenso:='';
  if literal=0.00 then
    result:='zero'
  else
    begin
    valor:=FormatFloat('000000000000.00',literal);
    i:=1;
    while i<=13 do
      begin
      if (Pos(valor[i],'0123456789')=0)   then valor[i  ] := '0';
      if (Pos(valor[i+1],'0123456789')=0) then valor[i+1] := '0';
      if (Pos(valor[i+2],'0123456789')=0) then valor[i+2] := '0';
      if (i=13) then
        centena:=0
      else
        centena := StrToInt(valor[i]);
      dezena  := StrToInt(valor[i+1]);
      if dezena>1 then
        unidade := StrToInt(valor[i+2])
      else
        unidade := StrToInt(copy(valor,(i+1),2));
      if (((i=13) and (StrToFloat(copy(valor,14,2))>0.01)) and ((StrToFloat(copy(valor,1,12)))<>0.00)) then
        extenso:=Trim(extenso)+' e';
      monta:='Duzentos    Trezentos   Quatrocentos Quinhentos  Seiscentos  Setecentos  Oitocentos  Novecentos';
      if ((dezena+unidade)=0) then
        monta:='            Cem         '+monta
      else
        monta:='            Cento       '+monta;
      extenso:=Trim(extenso)+' '+Trim(copy(monta,((centena*12)+1),12));
      if ((centena<>0) and ((dezena+unidade)>0)) then
        extenso:=Trim(extenso)+' e';
      monta:='                  Vinte    Trinta   Quarenta CinquentaSessenta Setenta  Oitenta  Noventa';
      extenso:=Trim(extenso)+' '+Trim(copy(monta,((dezena*9)+1),9));
      if ((dezena>1) and (unidade>0)) then
        extenso:=Trim(extenso)+' e';
      monta:='         Um       Dois     Tres     Quatro   Cinco    Seis     Sete     Oito     Nove     Dez      onze     doze     treze    quatorze quinze   dezeseis dezesete dezoito  dezenove';
      extenso:=Trim(extenso)+' '+Trim(copy(monta,((unidade*9)+1),9));
      if ((centena+dezena+unidade)>0) then
        begin
        if i=1 then
          if (((centena+dezena)=0) and (unidade<=1)) then
            extenso:=Trim(extenso)+' Bilh„o'
          else
            extenso:=Trim(extenso)+' Bilhıes';
        if (i=4) then
          if ((centena+dezena=0) and (unidade<=1))then
            extenso:=Trim(extenso)+' Milh„o'
          else
            extenso:=Trim(extenso)+' Milhıes';
        if i=7 then
          extenso:=Trim(extenso)+' Mil';
        if ((i<10) and (StrToFloat(copy(valor,(i+3),(13-i)))>1.00))then
          extenso:=extenso+' e';
      end;
      if ((i=1) and (StrToFloat(copy(valor,4,9))=0.00) and ((centena+unidade+dezena)<>0)) then
          extenso:=Trim(extenso)+' de';
      if ((i=4) and (StrToFloat(copy(valor,7,6))=0.00) and ((centena+unidade+dezena)<>0)) then
          extenso:=Trim(extenso)+' de';
      if ((i=10) and (StrToFloat(copy(valor,1,12))<>0.00)) then
        if (StrToFloat(copy(valor,1,12))=1.00) then
          extenso:=Trim(extenso)+' Real'
        else
          extenso:=Trim(extenso)+' Reais';
      if ((i=13) and ((dezena+unidade)<>0)) then
        if ((dezena+unidade)=1) then
          extenso:=Trim(extenso)+' Centavo'
        else
          extenso:=Trim(extenso)+' Centavos';
      i:=i+3;
    end;
    if literal<0.00 then extenso:=Trim(extenso)+' Negativo';
    if (literal<1.0) then
      if (StrToInt(copy(valor,14,2))=1) then
        extenso:=Trim(extenso)+' de real'          //  "de real/de reais" podem ser substituidos por campos de arquivos de parametros
      else                                                      // o que d· mais flexibilidade, caso aconteÁam mais planos econÙmicos.
        extenso:=Trim(extenso)+' de reais';
      result:=extenso;
  end;
end;

procedure Cidades(Estado: String; Cidades: TDBComboBox);
begin

  if Estado = EmptyStr then
    Exit;

  with DMJetro.QryCidades do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select C.NOME Cidade from CidadesIBGE C');
    SQL.Add('where IDUf in (select Codigo from UfIBGE where SIGLA = :UF)');
    SQL.Add('order by C.NOME');
    ParamByName('UF').Value := Estado;
    Open;

    First;
    Cidades.Clear;
    while not Eof do
    begin
      Cidades.Items.Add(AnsiUpperCase(FieldByName('Cidade').AsString));
      Next;
    end;
    //Cidades.ItemIndex := 0;
  end;

end;

procedure ComboTabelaAuxiliar(Tabela, Filtro: String; Combo: TComboBox; Codigo: String = 'S');
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ' + Tabela);
    if Filtro <> EmptyStr then
      SQL.Add(Filtro);
    SQL.Add('order by Descricao');
    Open;
    First;
    Combo.Clear;
    while not Eof do
    begin
      if Codigo = 'S' then
        Combo.Items.Add(StrZero(FieldByName('Codigo').AsInteger, 4) + ' - ' + FieldByName('Descricao').AsString)
      else
        Combo.Items.Add(FieldByName('Descricao').AsString);

      Next;
    end;
  end;
  Combo.ItemIndex := 0;
end;

procedure RxComboTabelaAuxiliar(Tabela, Filtro: String; Combo: TRxDBComboBox);
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ' + Tabela);
    if Filtro <> EmptyStr then
      SQL.Add(Filtro);
    SQL.Add('order by Descricao');
    Open;
    First;
    Combo.Clear;
    while not Eof do
    begin
      Combo.Items.Add(FieldByName('Descricao').AsString);
      Combo.Values.Add(FieldByName('Codigo').AsString);
      Next;
    end;
  end;
  Combo.ItemIndex := 0
end;

function StrZero(Num, Size: Integer): String;
var
   Text: String;
   i, Tam: integer;
begin
     Text := IntToStr(Num);
     Tam := Length(Text);
     for i := 1 to (Size-Tam) do
         Text := '0' + Text;
     Result := Text;
end;

procedure Descricao(DataSet: TUniQuery; Tabela, Cod, Desc: String);
begin
  DataSet.FieldByName(Desc).AsString := '';
  if not DataSet.FieldByName(Cod).IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Descricao from ' + Tabela);
      SQL.Add('where Codigo = ' + IntToStr(DataSet.FieldByName(Cod).AsInteger) );
      Open;
      DataSet.FieldByName(Desc).AsString := FieldByName('Descricao').AsString;

      if IsEmpty then
      begin
        InfoBox('Membro n„o localizado.');
        DataSet.FieldByName(Cod).FocusControl;
      end;

    end;
  end;
end;

function UltimoCodigo(Tabela: String): Integer;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Max(Codigo) Codigo from ' + Tabela);
    Open;

    Result := FieldByName('Codigo').AsInteger + 1;
  end;
end;

function ExtensoHoras(Horas: TTime): String;
var
  Hora, Minuto, Segundo, MSegundo: Word;
  HoraSup, HoraInf: String;
const
  conectivo = ' e ';
  conhoras  = ' horas';
  conmin    = ' minutos';
begin
  DecodeTime(Horas, Hora, Minuto, Segundo, MSegundo);
  case Hora of
    0: HoraSup := 'meia-noite';
    1: HoraSup := HoraUnit[10] + ' hora';
    2: HoraSup := HoraUnit[11] + conhoras;
    3..9: HoraSup := HoraUnit[Hora] + conhoras;
    10..20: HoraSup := HoraDez[Hora-9] + conhoras;
    21..23:  HoraSup := HoraDez[11] + Conectivo + HoraUnit[Hora-20] + conhoras;
  end;

  case Minuto of
    1     :  HoraInf := Conectivo + HoraUnit[Minuto] + ' minuto';
    2..9  :  HoraInf := Conectivo + HoraUnit[Minuto] + conmin;
    10..20:  HoraInf := Conectivo + HoraDez[Minuto-9] + conmin;
    21..29:  HoraInf := Conectivo + HoraDez[11] + conectivo + HoraUnit[Minuto-20] + conmin;
    30    :  HoraInf := Conectivo + HoraDez[12] + conmin;
    31..39:  HoraInf := Conectivo + HoraDez[12] + conectivo + HoraUnit[Minuto-30] + conmin;
    40:      HoraInf := Conectivo + HoraDez[13] + conmin;
    41..49:  HoraInf := Conectivo + HoraDez[13] + Conectivo + HoraUnit[Minuto-40] + conmin;
    50:      HoraInf := Conectivo + HoraDez[14] + conmin;
    51..59:  HoraInf := Conectivo + HoraDez[14] + Conectivo + HoraUnit[Minuto-50] + conmin;
  end;
  Result := HoraSup+ HoraInf;
end;

function ExtensoData(Data: TDateTime): string;
var
  i, AnoMilhar, AnoCentena, AnoDezena, AnoUnidade : integer;
  DiaDezena, DiaUnidade : integer;
  valor, monta, extenso : string;

  DataStr, DiaStr, MesStr, AnoStr : String;

begin


  DiaStr := FormatDateTime('DD', Data);
  MesStr := FormatDateTime('MMMM', Data);
  AnoStr := FormatDateTime('YYYY', Data);

  //Dia por Extenso

  DiaDezena  := StrToInt(Copy(DiaStr,1,1));
  DiaUnidade := StrToInt(Copy(DiaStr,2,1));

  monta:='                  vinte    trinta   ';
  extenso:=Trim(copy(monta,((DiaDezena*9)+1),9));
  if (DiaDezena>1) and (DiaUnidade>1) then
    extenso:=Trim(extenso)+' e';
  if (DiaDezena = 0) and (DiaUnidade = 1) then
    monta:='         primeiro '
  else
    monta:='         um       ';
  monta := monta + 'dois     tres     quatro   cinco    seis     sete     oito     nove     dez      onze     doze     treze    quatorze quinze   dezeseis dezesete dezoito  dezenove';
  extenso:=Trim(extenso)+' '+Trim(copy(monta,((StrToInt(DiaStr)*9)+1),9));

  DiaStr := Trim(extenso);

  //Ano por Extenso

  AnoMilhar  := StrToInt(Copy(AnoStr,1,1));
  AnoCentena := StrToInt(Copy(AnoStr,2,1));
  AnoDezena  := StrToInt(Copy(AnoStr,3,1));
  AnoUnidade := StrToInt(Copy(AnoStr,4,1));

  monta:='         um       dois     tres     quatro   cinco    seis     sete     oito     nove     ';
  extenso:=Trim(copy(monta,((AnoMilhar*9)+1),9)) + ' mil';

  if (AnoCentena + AnoDezena + AnoUnidade) > 0 then
    extenso:=Trim(extenso) + ' e';
  if (AnoCentena = 1) and (AnoDezena = 0) and (AnoUnidade = 0) then
    monta:='            cem         '
  else
    monta:='            cento       ';

  monta:= monta + 'duzentos    trezentos   quatrocentos quinhentos  seiscentos  setecentos  oitocentos  novecentos';
  extenso:=Trim(extenso)+' '+Trim(copy(monta,((AnoCentena*12)+1),12));


  if ((AnoCentena<>0) and ((AnoDezena+AnoUnidade)>0)) then
    extenso:=Trim(extenso)+' e';
  monta:='                  vinte    trinta   quarenta cinquentasessenta setenta  oitenta  noventa';
  extenso:=Trim(extenso)+' '+Trim(copy(monta,((AnoDezena*9)+1),9));
  if ((AnoDezena>1) and (AnoUnidade>0)) then
    extenso:=Trim(extenso)+' e';
  monta:='         um       dois     tres     quatro   cinco    seis     sete     oito     nove     dez      onze     doze     treze    quatorze quinze   dezeseis dezesete dezoito  dezenove';
  extenso:=Trim(extenso)+' '+Trim(copy(monta,((StrToInt(Copy(AnoStr,3,2))*9)+1),9));

  AnoStr := Trim(extenso);

  Result := DiaStr + ' de ' + MesStr + ' de ' + AnoStr;

end;

procedure CamposObrigatorios(DataSet: TUniQuery);
var
  f : integer;
begin
  with DataSet do
  begin

    for f := 0 to FieldCount - 1 do
    begin
      if (Fields[f].Required) and
         (Fields[f].IsNull) then
      begin
        InfoBox('O campo ' + Fields[f].DisplayLabel + ' È obrigatÛrio.');
        Fields[f].FocusControl;
        Abort;
      end;
    end;

  end;
end;

procedure TruncaNome(Nome : String; var Nome1, Nome2 : String);
begin
  Nome1 := Copy(Nome, 01, 35);
  Nome2 := Copy(Nome, 36, 15);
end;

function DisponibilidadeObjeto(Objeto: Integer): Boolean;
begin

  with DMJetro.QryAux2 do
  begin
    SQL.Clear;
    SQL.Add('select (select COUNT(Objeto) as Utilizado from ItensEmprestimo IE');
    SQL.Add('        inner join Emprestimos E on E.Codigo = IE.Emprestimo');
    SQL.Add('        where E.Fechamento = 0');
    SQL.Add('          and IE.Objeto = :objeto1),');
    SQL.Add('       (select Qtde as Disponivel from Objetos O where O.Codigo = :objeto2) FROM RDB$DATABASE');
    ParamByName('objeto1').Value := Objeto;
    ParamByName('objeto2').Value := Objeto;
    Open;

    Result := FieldByName('Utilizado').AsInteger < FieldByName('Disponivel').AsInteger;

  end;

end;

function Apelido(Nome: String): String;
begin
  Apelido := Copy(Nome, 1, pos(' ',Nome) - 1);
end;

function DisponibilidadeMatricula(Membro: Integer): Boolean;
begin

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select M.Codigo, M.Membro');
    SQL.Add('from Matriculas M');
    SQL.Add('where M.Membro = :membro');
    SQL.Add('  and M.Fim is null');
    ParamByName('membro').Value := Membro;
    Open;

    Result := IsEmpty;

  end;

end;

function Versao(var Limite: Integer; Tipo: String = 'Membros'): Boolean;
var
  Liberacao, Bundled, Software : String;
  Registros : Integer;
  Registro : TRegistry;
begin

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    if Tipo = 'Membros' then
      SQL.Add('select count(FichaNumero) Registros from Membros')
    else if Tipo = 'Visitantes' then
      SQL.Add('select count(Codigo) Registros from Visitantes')
    else if Tipo = 'Cultos' then
      SQL.Add('select count(Codigo) Registros from Cultos');
    Open;
    Registros := FieldByName('Registros').AsInteger;

    Registro := TRegistry.Create;
    Registro.RootKey := HKEY_LOCAL_MACHINE;

    Registro.OpenKey('SOFTWARE\Safety',False);

    Bundled   := Registro.ReadString('Bundled');

    Registro.CloseKey;
    Registro.Free;

    Limite := StrToInt64(Copy(IntToStr(StrToInt64('$'+Bundled)),15,4));
    {
    Limite := 5;
    }
    Result := Registros < Limite;    
  end;

end;

function Liberacao(var Dias: Integer): Boolean;
var
  Ano, Trimestre : Integer;
  DataLiberacao : TDateTime;
  Liberac, Bundled, Software : String;

  Arquivo : TStringList;

begin

  try

    Arquivo := TStringList.Create();
    Arquivo.LoadFromFile(SafetyPath);


    Bundled   := Arquivo.Strings[1];
    Arquivo.Free;
    Ano       := StrToInt64(Copy(IntToStr(StrToInt64('$'+Bundled)),1,4));
    Trimestre := StrToInt64(Copy(IntToStr(StrToInt64('$'+Bundled)),5,2));

    case Trimestre of
      1 : DataLiberacao := StrToDateTime('31/01/' + IntToStr(Ano));
      2 : DataLiberacao := StrToDateTime('30/04/' + IntToStr(Ano));
      3 : DataLiberacao := StrToDateTime('31/07/' + IntToStr(Ano));
      4 : DataLiberacao := StrToDateTime('31/10/' + IntToStr(Ano));
    end;

    Dias   :=  trunc(DataLiberacao - Date);

    Result := Dias > 0;

    Dias   := IfThen(Dias > 15,0,Dias);
  except
    Result := False;
    Arquivo.Free;
  end;

  {
  try
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select L.Liberacao, L.Bundled, L.Software');
      SQL.Add('from Licensa L');
      Open;

      if IsEmpty then
        try
          WinExec('Ativacao.exe',SW_NORMAL)
        except
          Result := false;
          exit;
        end;

      Liberac   := FieldByName('Liberacao').AsString;
      Bundled   := FieldByName('Bundled').AsString;
      Software  := FieldByName('Software').AsString;
      //Ano       := StrToInt(copy(Descriptografia(Descriptografia(Liberac,Software),Bundled),1,4));
      //Trimestre := StrToInt(copy(Descriptografia(Descriptografia(Liberac,Software),Bundled),5,2));

      Ano       := StrToInt64(Copy(IntToStr(StrToInt64('$'+Bundled)),1,4));
      Trimestre := StrToInt64(Copy(IntToStr(StrToInt64('$'+Bundled)),5,2));

      case Trimestre of
        1 : DataLiberacao := StrToDateTime('31/01/' + IntToStr(Ano));
        2 : DataLiberacao := StrToDateTime('30/04/' + IntToStr(Ano));
        3 : DataLiberacao := StrToDateTime('31/07/' + IntToStr(Ano));
        4 : DataLiberacao := StrToDateTime('31/10/' + IntToStr(Ano));
      end;

      //Dias   :=  DaysBetween(Date,DataLiberacao);
      Dias   :=  trunc(DataLiberacao - Date);

      Result := Dias > 0;

      Dias   := IfThen(Dias > 15,0,Dias);
    end;
  except
    Result := False;
  end;
  }
end;


function LiberacaoR(var Dias: Integer): Boolean;
var
  Ano, Trimestre : Integer;
  DataLiberacao : TDateTime;
  Liberac, Bundled, Software : String;

  Registro : TRegistry;

begin

  try
    Registro := TRegistry.Create;
    Registro.RootKey := HKEY_LOCAL_MACHINE;

    if not Registro.OpenKey('SOFTWARE\Safety',False) then
    begin
      Result := False;
      Exit;
    end;

    Bundled   := Registro.ReadString('Bundled');
    Dias   :=  trunc(DataLicensa(Bundled) - Date);

    Result := Dias > 0;

    Dias   := IfThen(Dias > 15,0,Dias);
  except
    Result := False;
  end;

  Registro.CloseKey;
  Registro.Free;

end;



function Fechado(Mes, Ano : Integer): Boolean;
begin
  with DMJetro.QryAux2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Fechamento where Mes = :mes and Ano = :ano');
    ParamByName('mes').Value := Mes;
    ParamByName('ano').Value := Ano;
    Open;
    Result := not IsEmpty;
  end;
end;

function SaldoAnterior(Mes, Ano : Integer): Currency;
begin
  with DMJetro.QryAux2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select SaldoAtual from Fechamento where Mes = :mes and Ano = :ano');
    Mes := Mes - 1;
    if Mes = 0 then
    begin
      Mes := 12;
      Ano := Ano - 1;
    end;
    ParamByName('mes').Value := Mes;
    ParamByName('ano').Value := Ano;
    Open;
    Result := FieldByName('SaldoAtual').AsCurrency;
  end;
end;

function LancamentosAberto(Mes, Ano : Integer): Boolean;
begin

  with DMJetro.QryAux2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('declare');
    SQL.Add('  @Ano int,');
    SQL.Add('  @Mes int,');
    SQL.Add('  @Data DateTime');
    SQL.Add('select @Mes = :mes');
    SQL.Add('select @Ano = :ano');
    SQL.Add('select @Data = cast((Cast(@Ano as varchar) + ''-'' + ''01'' + ''-''  + cast(@Mes as varchar) ) as Datetime)');
    SQL.Add('select Fechamento, Data, ''E''');
    SQL.Add('from Entradas');
    SQL.Add('where Data < @Data');
    SQL.Add('  and Fechamento = 0');
    SQL.Add('Union');
    SQL.Add('select Fechamento, Data, ''C''');
    SQL.Add('from Cultos');
    SQL.Add('where Data < @Data');
    SQL.Add('  and Fechamento = 0');
    SQL.Add('Union');
    SQL.Add('select Fechamento, Data, ''S''');
    SQL.Add('from Saidas');
    SQL.Add('where Data < @Data');
    SQL.Add('  and Fechamento = 0');
    SQL.Add('Union');
    SQL.Add('select Fechamento, DataSaida, ''V''');
    SQL.Add('from Viagens');
    SQL.Add('where DataSaida < @Data');
    SQL.Add('  and Fechamento = 0');
    SQL.Add('order by Data');

    ParamByName('mes').Value := Mes;
    ParamByName('ano').Value := Ano;
    Open;
    Result := not IsEmpty;
  end;
end;

function PrimeiroNome(Nome: String): String;
var
  PNome : String;
begin
  PNome := '';
  if pos (' ', Nome) <> 0 then
    PNome := copy (Nome, 1, pos (' ', Nome) - 1);

  Result := PNome;

end;

function Criptografia(Texto, Chave: String): String;
Var
  I, char, Z: integer;

begin
  z := 1;
  char := 0;
  For i := 1 to length(Texto) do
  begin
    char := (Ord(Chave[Z]) + Ord(Texto[I]));
    If Char > 255 then
      char := char - 255
    else if char < 0 then
      Char := char + 255;
    Result := Result + Chr(Char);
    z := z + 1;
    if z > length(Chave) then
      z:= 1;
  end;


end;

function Descriptografia(Texto, Chave: String): String;
Var
  I, char, Z: integer;

begin
  z := 1;
  char := 0;
  For i := 1 to length(Texto) do
  begin
    char := (Ord(Texto[I]) - Ord(Chave[Z]));
    If Char > 255 then
      char := char - 255
    else if char < 0 then
      Char := char + 255;
    Result := Result + Chr(Char);
    z := z + 1;
    if z > length(Chave) then
      z:= 1;
  end;

end;

function RemoveAcentos(Str:String): String;
  {Remove caracteres acentuados de uma string}
Const
  ComAcento = '‡ËÏÚ˘‚ÍÓÙ˚„ı·ÈÌÛ˙‰ÎÔˆ¸Á¿»Ã“Ÿ¬ Œ‘€√’¡…Õ”⁄ƒÀœ÷‹«∫™∞Ä¶¨&ß';
  SemAcento = 'aeiouaeiouaoaeiouaeioucAEIOUAEIOUAOAEIOUAEIOUCoaoC    ';
Var
  xx, Tam, x : Integer;
  Str2 : String;
Begin
  For x := 1 to Length(Str) do Begin
    if Pos(Str[x],ComAcento)<>0 Then begin
      Str[x] := SemAcento[Pos(Str[x],ComAcento)];
    end;
  end;

  Str := Trim(Str);

  Result := Str;
end;

procedure RegistraSMS(SMS, Destino : String);
begin
  with DMJetro.QryAux2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into SMSHistorico');
    SQL.Add('(Data, Mensagem, Destino, Usuario)');
    SQL.Add('values(current_timestamp, :sms, :destino, :usuario)');
    ParamByName('SMS').Value     := SMS;
    ParamByName('destino').Value := Destino;
    ParamByName('usuario').Value := FormMain.Usuario;
    ExecSQL;
  end;
end;

function RetornoSMS(Retorno: String): String;
begin
  if (Retorno = 'X01') or (Retorno = 'X02') then
    RetornoSMS := 'Par‚metros com Erro.'
  else if Retorno = '000' then
    RetornoSMS := 'Mensagem enviada com Sucesso.'
  else if Retorno = '001' then
    RetornoSMS := 'Credencial Inv·lida.'
  else if (Pos('850 - v_2_00:Ocorreu um erro = ERRO no Select - SELECT dc_CreditoSMS_MPGProj FROM IQUP_MPG_PROJETO WHERE st_Credencial_MPGProj = ', Retorno) > 0) then
    RetornoSMS := 'Credencial Inv·lida.'
  else if Retorno = '005' then
    RetornoSMS := 'Mobile fora do formato-Formato +999(9999)99999999.'
  else if Retorno = '007' then
    RetornoSMS := 'SEND_PROJECT tem que ser S, ou N.'
  else if Retorno = '008' then
    RetornoSMS := 'Mensagem ou FROM+MESSAGE maior que 142 posiÁıes.'
  else if Retorno = '009' then
    RetornoSMS := 'Sem crÈdito para envio de SMS. Favor repor.'
  else if Retorno = '010' then
    RetornoSMS := 'Gateway Bloqueado.'
  else if Retorno = '012' then
    RetornoSMS := 'Mobile no formato padr„o, mas incorreto.'
  else if Retorno = '013' then
    RetornoSMS := 'Mensagem Vazia ou Corpo Inv·lido.'
  else if Retorno = '015' then
    RetornoSMS := 'Pais sem operaÁ„o.'
  else if Retorno = '016' then
    RetornoSMS := 'Mobile com tamanho do cÛdigo de ·rea inv·lido.'
  else if Retorno = '017' then
    RetornoSMS := 'Operadora n„o autorizada para esta Credencial.'
  else if (StrToInt(Retorno) >= 800) and (StrToInt(Retorno) <= 899) then
    RetornoSMS := 'Falha no gateway Mobile Pronto. Contate suporte Mobile Pronto.'
  else if Retorno = '900' then
    RetornoSMS := 'Erro de autenticaÁ„o ou Limite de seguranÁa excedido.'
  else if (StrToInt(Retorno) >= 901) and (StrToInt(Retorno) <= 999) then
    RetornoSMS := 'Erro no acesso as operadoras.';

end;

function RegExiste(Tipo: Char): Boolean; //Tipos: 'L' - Licensa | 'B' - Banco de Dados
var
  Registro : TRegistry;
  Retorno : Boolean;
begin
  //Retorno := Registro.RegistryConnect('note-fernanda');
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  if Tipo = 'L' then
    Result := Registro.OpenKey('SOFTWARE\Safety',False)
  else if Tipo = 'B' then
    Result := Registro.OpenKey('SOFTWARE\IEQSoft',False);

  Registro.CloseKey;
  Registro.Free;
end;

function DataLicensa(Bundled: String): TDateTime;
var
  Ano, Trimestre : Integer;
begin
  Ano       := StrToInt64(Copy(IntToStr(StrToInt64('$'+Bundled)),1,4));
  Trimestre := StrToInt64(Copy(IntToStr(StrToInt64('$'+Bundled)),5,2));

  case Trimestre of
    1 : DataLicensa := StrToDateTime('31/01/' + IntToStr(Ano));
    2 : DataLicensa := StrToDateTime('30/04/' + IntToStr(Ano));
    3 : DataLicensa := StrToDateTime('31/07/' + IntToStr(Ano));
    4 : DataLicensa := StrToDateTime('31/10/' + IntToStr(Ano));
  end;

end;

procedure DemoBD;
var
  Registro : TRegistry;
begin
  if not RegExiste('B') then
  begin
    Registro := TRegistry.Create;
    Registro.RootKey := HKEY_LOCAL_MACHINE;
    Registro.OpenKey('SOFTWARE\IEQSoft\Banco',True);

    Registro.WriteString('DataBase', 'C:\BornSide\IEQSoft\Banco\IEQ.fdb');
    Registro.WriteString('Password', 'masterkey');
    Registro.WriteString('Server', 'localhost');
    Registro.WriteString('UserName', 'SYSDBA');

    Registro.CloseKey;
    Registro.Free;
  end;
end;

function DataArquivo(Arquivo, Tipo: String): TDateTime;
var
  SR: TSearchRec;
  CreateDT, AccessDT, ModifyDT: TDateTime;
begin
  if FindFirst(Arquivo, faAnyFile, SR) = 0 then
  begin
    if Tipo = 'C' then
      Result := FileTimeToDTime(SR.FindData.ftCreationTime)
    else if Tipo = 'A' then
      Result := FileTimeToDTime(SR.FindData.ftLastAccessTime)
    else if Tipo = 'M' then
      Result := FileTimeToDTime(SR.FindData.ftLastWriteTime);
  end
  else
    InfoBox('Desculpe, arquivo n„o encontrado');

  FindClose(SR);
end;

function DemoLicenca(var Dias: Integer): Boolean;
begin
  Dias := trunc(Date - (DataArquivo('IEQSoft.exe','C') + 10));
  Result := Dias < 0;
end;


function FileTimeToDTime(FTime: TFileTime): TDateTime;
var
  LocalFTime: TFileTime;
  STime: TSystemTime;
begin
  FileTimeToLocalFileTime(FTime, LocalFTime);
  FileTimeToSystemTime(LocalFTime, STime);
  Result := SystemTimeToDateTime(STime);
end;

end.
