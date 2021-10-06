object DMJetro: TDMJetro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 387
  Top = 218
  Height = 281
  Width = 470
  object Conn: TUniConnection
    ProviderName = 'InterBase'
    Database = 'D:\BornSide\fontes\IEQSoftUniDac\Banco\IEQ.FDB'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    BeforeConnect = ConnBeforeConnect
    Left = 8
  end
  object QryAux: TUniQuery
    Connection = Conn
    DMLRefresh = True
    Left = 40
    Top = 120
  end
  object QryCultos: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Cultos'
      'where codigo = -1')
    DMLRefresh = True
    BeforeInsert = QryMembrosBeforeInsert
    BeforeEdit = QryMembrosBeforeEdit
    BeforePost = QryMembrosBeforePost
    AfterPost = QryMembrosAfterPost
    AfterCancel = QryMembrosAfterCancel
    BeforeDelete = QryMembrosBeforeDelete
    AfterScroll = QryCultosAfterScroll
    OnCalcFields = QryCultosCalcFields
    Left = 56
    object QryCultosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryCultosIgreja: TIntegerField
      FieldName = 'Igreja'
    end
    object QryCultosData: TDateTimeField
      FieldName = 'Data'
    end
    object QryCultosHorario: TStringField
      FieldName = 'Horario'
      EditMask = '##:##'
      Size = 5
    end
    object QryCultosTestemunho: TIntegerField
      FieldName = 'Testemunho'
    end
    object QryCultosBatismoEspiritoSanto: TIntegerField
      FieldName = 'BatismoEspiritoSanto'
    end
    object QryCultosCriancasApresentadas: TIntegerField
      FieldName = 'CriancasApresentadas'
    end
    object QryCultosConversoes: TIntegerField
      FieldName = 'Conversoes'
    end
    object QryCultosVisitantes: TIntegerField
      FieldName = 'Visitantes'
    end
    object QryCultosTotalPresentes: TIntegerField
      FieldName = 'TotalPresentes'
    end
    object QryCultosPastoresPresentes1: TStringField
      FieldName = 'PastoresPresentes1'
      Size = 25
    end
    object QryCultosPastoresPresentes2: TStringField
      FieldName = 'PastoresPresentes2'
      Size = 25
    end
    object QryCultosVisitasEspeciais1: TStringField
      FieldName = 'VisitasEspeciais1'
      Size = 25
    end
    object QryCultosVisitasEspeciais2: TStringField
      FieldName = 'VisitasEspeciais2'
      Size = 25
    end
    object QryCultosPregador: TStringField
      FieldName = 'Pregador'
      Size = 25
    end
    object QryCultosOfertasGerais: TCurrencyField
      FieldName = 'OfertasGerais'
    end
    object QryCultosOutrasEntradas: TCurrencyField
      FieldName = 'OutrasEntradas'
    end
    object QryCultosOfertasMissoes: TCurrencyField
      FieldName = 'OfertasMissoes'
    end
    object QryCultosDiaconos1: TStringField
      FieldName = 'Diaconos1'
      Size = 50
    end
    object QryCultosDiaconos2: TStringField
      FieldName = 'Diaconos2'
      Size = 50
    end
    object QryCultosUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryCultosDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryCultosUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryCultosDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
    object QryCultosDiaSemana: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiaSemana'
      Size = 10
      Calculated = True
    end
    object QryCultosBairroIgreja: TStringField
      FieldKind = fkCalculated
      FieldName = 'BairroIgreja'
      Size = 50
      Calculated = True
    end
    object QryCultosOfertasEspeciais: TCurrencyField
      FieldName = 'OfertasEspeciais'
    end
  end
  object QryMembros: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Membros'
      'where FichaNumero = -1')
    DMLRefresh = True
    BeforeInsert = QryMembrosBeforeInsert
    BeforeEdit = QryMembrosBeforeEdit
    BeforePost = QryMembrosBeforePost
    AfterPost = QryMembrosAfterPost
    AfterCancel = QryMembrosAfterCancel
    BeforeDelete = QryMembrosBeforeDelete
    OnCalcFields = QryMembrosCalcFields
    OnNewRecord = QryMembrosNewRecord
    Left = 224
    object QryMembrosFichaNumero: TAutoIncField
      FieldName = 'FichaNumero'
      ReadOnly = True
    end
    object QryMembrosNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object QryMembrosDataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
    end
    object QryMembrosDataValidade: TDateTimeField
      FieldName = 'DataValidade'
    end
    object QryMembrosDataBatismo: TDateTimeField
      FieldName = 'DataBatismo'
    end
    object QryMembrosMembroDesde: TDateTimeField
      FieldName = 'MembroDesde'
    end
    object QryMembrosNaturalidade: TStringField
      FieldName = 'Naturalidade'
      Size = 50
    end
    object QryMembrosEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      Size = 50
    end
    object QryMembrosNomeConjuge: TStringField
      FieldName = 'NomeConjuge'
      Size = 50
    end
    object QryMembrosFiliacaoPai: TStringField
      FieldName = 'FiliacaoPai'
      Size = 50
    end
    object QryMembrosFiliacaoMae: TStringField
      FieldName = 'FiliacaoMae'
      Size = 50
    end
    object QryMembrosRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object QryMembrosCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object QryMembrosEscolaridade: TStringField
      FieldName = 'Escolaridade'
    end
    object QryMembrosProfissao: TStringField
      FieldName = 'Profissao'
      Size = 30
    end
    object QryMembrosEndRua: TStringField
      FieldName = 'EndRua'
      Size = 50
    end
    object QryMembrosEndNumero: TStringField
      FieldName = 'EndNumero'
      Size = 6
    end
    object QryMembrosEndBairro: TStringField
      FieldName = 'EndBairro'
      Size = 50
    end
    object QryMembrosEndComplemento: TStringField
      FieldName = 'EndComplemento'
      Size = 30
    end
    object QryMembrosEndCidade: TStringField
      FieldName = 'EndCidade'
      Size = 50
    end
    object QryMembrosEndEstado: TStringField
      FieldName = 'EndEstado'
      Size = 2
    end
    object QryMembrosEndCep: TStringField
      FieldName = 'EndCep'
      Size = 8
    end
    object QryMembrosFoneResid: TStringField
      FieldName = 'FoneResid'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 10
    end
    object QryMembrosFoneCelular: TStringField
      FieldName = 'FoneCelular'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 10
    end
    object QryMembrosStatus: TIntegerField
      FieldName = 'Status'
    end
    object QryMembrosStatusDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusDesc'
      Calculated = True
    end
    object QryMembrosUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryMembrosDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryMembrosUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryMembrosDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
    object QryMembrosCartaoMembro: TStringField
      FieldName = 'CartaoMembro'
      FixedChar = True
      Size = 1
    end
  end
  object QryVisitantes: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Visitantes'
      'where codigo = -1')
    DMLRefresh = True
    BeforeInsert = QryMembrosBeforeInsert
    BeforeEdit = QryMembrosBeforeEdit
    BeforePost = QryMembrosBeforePost
    AfterPost = QryMembrosAfterPost
    AfterCancel = QryMembrosAfterCancel
    BeforeDelete = QryMembrosBeforeDelete
    Left = 280
    object QryVisitantesCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryVisitantesNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QryVisitantesDiaNasc: TIntegerField
      FieldName = 'DiaNasc'
    end
    object QryVisitantesMesNasc: TIntegerField
      FieldName = 'MesNasc'
    end
    object QryVisitantesEndRua: TStringField
      FieldName = 'EndRua'
      Size = 50
    end
    object QryVisitantesEndNumero: TStringField
      FieldName = 'EndNumero'
      Size = 6
    end
    object QryVisitantesEndBairro: TStringField
      FieldName = 'EndBairro'
      Size = 50
    end
    object QryVisitantesEndComplemento: TStringField
      FieldName = 'EndComplemento'
      Size = 30
    end
    object QryVisitantesEndCidade: TStringField
      FieldName = 'EndCidade'
      Size = 50
    end
    object QryVisitantesEndEstado: TStringField
      FieldName = 'EndEstado'
      Size = 2
    end
    object QryVisitantesEndCep: TStringField
      FieldName = 'EndCep'
      Size = 8
    end
    object QryVisitantesFoneResid: TStringField
      FieldName = 'FoneResid'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 10
    end
    object QryVisitantesFoneCelular: TStringField
      FieldName = 'FoneCelular'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 10
    end
    object QryVisitantesUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryVisitantesDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryVisitantesUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryVisitantesDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
  end
  object QryUsuarios: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Usuarios'
      'where codigo = -1')
    DMLRefresh = True
    BeforeInsert = QryMembrosBeforeInsert
    BeforeEdit = QryMembrosBeforeEdit
    BeforePost = QryMembrosBeforePost
    AfterPost = QryMembrosAfterPost
    AfterCancel = QryMembrosAfterCancel
    BeforeDelete = QryMembrosBeforeDelete
    Left = 336
    object QryUsuariosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryUsuariosApelido: TStringField
      FieldName = 'Apelido'
      Size = 10
    end
    object QryUsuariosNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object QryUsuariosDepartamento: TIntegerField
      FieldName = 'Departamento'
    end
    object QryUsuariosDescDepto: TStringField
      FieldKind = fkLookup
      FieldName = 'DescDepto'
      LookupDataSet = QryDptoUsuarios
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Departamento'
      Lookup = True
    end
    object QryUsuariosSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object QryUsuariosUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryUsuariosDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryUsuariosUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryUsuariosDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
  end
  object QryPastores: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Pastores'
      'where codigo = -1')
    DMLRefresh = True
    BeforeInsert = QryMembrosBeforeInsert
    BeforeEdit = QryMembrosBeforeEdit
    BeforePost = QryMembrosBeforePost
    AfterPost = QryMembrosAfterPost
    AfterCancel = QryMembrosAfterCancel
    BeforeDelete = QryMembrosBeforeDelete
    OnNewRecord = QryPastoresNewRecord
    Left = 112
    object QryPastoresCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryPastoresNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QryPastoresDataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
    end
    object QryPastoresProntuario: TStringField
      FieldName = 'Prontuario'
      Size = 10
    end
    object QryPastoresCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object QryPastoresRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object QryPastoresEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      Size = 10
    end
    object QryPastoresEndRua: TStringField
      FieldName = 'EndRua'
      Size = 50
    end
    object QryPastoresEndNumero: TStringField
      FieldName = 'EndNumero'
      Size = 6
    end
    object QryPastoresEndBairro: TStringField
      FieldName = 'EndBairro'
      Size = 50
    end
    object QryPastoresEndComplemento: TStringField
      FieldName = 'EndComplemento'
      Size = 30
    end
    object QryPastoresEndCidade: TStringField
      FieldName = 'EndCidade'
      Size = 50
    end
    object QryPastoresEndEstado: TStringField
      FieldName = 'EndEstado'
      Size = 2
    end
    object QryPastoresEndCep: TStringField
      FieldName = 'EndCep'
      Size = 8
    end
    object QryPastoresFoneResid: TStringField
      FieldName = 'FoneResid'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 10
    end
    object QryPastoresFoneCelular: TStringField
      FieldName = 'FoneCelular'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 10
    end
    object QryPastoresStatus: TIntegerField
      FieldName = 'Status'
    end
    object QryPastoresTitular: TStringField
      FieldName = 'Titular'
      FixedChar = True
      Size = 1
    end
    object QryPastoresUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryPastoresDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryPastoresUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryPastoresDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
  end
  object QryIgrejas: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Igrejas'
      'where codigo = 1')
    DMLRefresh = True
    BeforeInsert = QryMembrosBeforeInsert
    BeforeEdit = QryMembrosBeforeEdit
    BeforePost = QryIgrejasBeforePost
    AfterPost = QryMembrosAfterPost
    AfterCancel = QryMembrosAfterCancel
    BeforeDelete = QryMembrosBeforeDelete
    OnCalcFields = QryIgrejasCalcFields
    OnNewRecord = QryIgrejasNewRecord
    Left = 168
    object QryIgrejasCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryIgrejasPastor: TIntegerField
      FieldName = 'Pastor'
    end
    object QryIgrejasCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '00.000.000/0000-00;0;_'
      Size = 14
    end
    object QryIgrejasRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object QryIgrejasEndRua: TStringField
      FieldName = 'EndRua'
      Size = 50
    end
    object QryIgrejasEndNumero: TStringField
      FieldName = 'EndNumero'
      Size = 6
    end
    object QryIgrejasEndBairro: TStringField
      FieldName = 'EndBairro'
      Size = 50
    end
    object QryIgrejasEndCidade: TStringField
      FieldName = 'EndCidade'
      Size = 50
    end
    object QryIgrejasEndEstado: TStringField
      FieldName = 'EndEstado'
      Size = 2
    end
    object QryIgrejasEndCep: TStringField
      FieldName = 'EndCep'
      Size = 8
    end
    object QryIgrejasUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryIgrejasDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryIgrejasUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryIgrejasDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
    object QryIgrejasNomePastor: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomePastor'
      Size = 50
      Calculated = True
    end
    object QryIgrejasSuperintendente: TStringField
      FieldName = 'Superintendente'
      Size = 50
    end
    object QryIgrejasSede: TStringField
      FieldName = 'Sede'
      Size = 1
    end
    object QryIgrejasCNPJCodigo: TStringField
      FieldName = 'CNPJCodigo'
      Size = 10
    end
  end
  object QryRelatorios: TUniQuery
    Connection = Conn
    DMLRefresh = True
    Left = 144
    Top = 120
  end
  object QryStatus: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Status'
      'order by codigo')
    DMLRefresh = True
    Left = 56
    Top = 48
    object QryStatusCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object QryStatusStatus: TStringField
      FieldName = 'Status'
    end
  end
  object QryCDL: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from CDL'
      'where codigo = -1')
    DMLRefresh = True
    Left = 112
    Top = 48
    object QryCDLCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryCDLCargo: TStringField
      FieldName = 'Cargo'
      Size = 15
    end
    object QryCDLNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QryCDLAno: TStringField
      FieldName = 'Ano'
      Size = 4
    end
  end
  object QryDiaconos: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Diaconos'
      'where codigo = -1')
    DMLRefresh = True
    Left = 168
    Top = 48
    object QryDiaconosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryDiaconosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QryDiaconosStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object QryDizimistas: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from DizimistasCulto'
      'where Culto = :cCulto')
    DMLRefresh = True
    BeforeDelete = QryMembrosBeforeDelete
    Left = 224
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cCulto'
      end>
    object QryDizimistasCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryDizimistasCulto: TIntegerField
      FieldName = 'Culto'
    end
    object QryDizimistasNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QryDizimistasValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object QryAux2: TUniQuery
    Connection = Conn
    FetchRows = 1000
    DMLRefresh = True
    Left = 72
    Top = 120
  end
  object QryAux3: TUniQuery
    Connection = Conn
    DMLRefresh = True
    Left = 104
    Top = 120
  end
  object QryDptoUsuarios: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from DeptoUsuarios'
      'where codigo = -1')
    Left = 392
    object QryDptoUsuariosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryDptoUsuariosDescricao: TStringField
      FieldName = 'Descricao'
    end
  end
  object QryCepAux: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Cep'
      'where CEP = '#39'00000000'#39)
    DMLRefresh = True
    Left = 280
    Top = 48
    object QryCepAuxCep: TStringField
      FieldName = 'Cep'
      Size = 8
    end
    object QryCepAuxLogradouro: TStringField
      FieldName = 'Logradouro'
      Size = 125
    end
    object QryCepAuxBairro: TStringField
      FieldName = 'Bairro'
      Size = 72
    end
    object QryCepAuxCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object QryCepAuxUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object QryPermissao: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Permissoes where codigo = -1')
    DMLRefresh = True
    Left = 192
    Top = 120
    object QryPermissaoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryPermissaoMenu: TStringField
      FieldName = 'Menu'
      Size = 100
    end
    object QryPermissaoDepartamento: TIntegerField
      FieldName = 'Departamento'
    end
    object QryPermissaoVisualizar: TStringField
      FieldName = 'Visualizar'
      FixedChar = True
      Size = 1
    end
    object QryPermissaoEditar: TStringField
      FieldName = 'Editar'
      FixedChar = True
      Size = 1
    end
  end
  object QryCidades: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Permissoes where codigo = -1')
    DMLRefresh = True
    Left = 256
    Top = 120
  end
  object QryTabelas: TUniQuery
    Connection = Conn
    SQL.Strings = (
      'select * from Departamentos'
      'where codigo = -1')
    DMLRefresh = True
    Left = 336
    Top = 104
    object QryTabelasCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QryTabelasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object QryTabelasPrincipal: TStringField
      FieldName = 'Principal'
      FixedChar = True
      Size = 1
    end
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 8
    Top = 48
  end
end
