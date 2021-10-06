object Form1: TForm1
  Left = 280
  Top = 137
  Width = 665
  Height = 175
  Caption = 'Convers'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnMembros: TButton
    Left = 248
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Membros'
    TabOrder = 3
    OnClick = BtnMembrosClick
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 8
    Width = 633
    Height = 17
    TabOrder = 17
  end
  object BtnVisitantes: TButton
    Left = 488
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Visitantes'
    TabOrder = 6
    OnClick = BtnVisitantesClick
  end
  object BtnPastores: TButton
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Pastores'
    TabOrder = 0
    OnClick = BtnPastoresClick
  end
  object BtnIgreja: TButton
    Left = 88
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Igreja'
    TabOrder = 1
    OnClick = BtnIgrejaClick
  end
  object BtnProgramacao: TButton
    Left = 168
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Programa'#231#227'o'
    TabOrder = 2
    OnClick = BtnProgramacaoClick
  end
  object BtnCultos: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Cultos'
    TabOrder = 8
    OnClick = BtnCultosClick
  end
  object BtnCriancas: TButton
    Left = 568
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Crian'#231'as'
    TabOrder = 7
    OnClick = BtnCriancasClick
  end
  object BtnCDL: TButton
    Left = 328
    Top = 40
    Width = 75
    Height = 25
    Caption = 'CDL'
    TabOrder = 4
    OnClick = BtnCDLClick
  end
  object BtnDiaconos: TButton
    Left = 408
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Diaconos'
    TabOrder = 5
    OnClick = BtnDiaconosClick
  end
  object BtnOfertas: TButton
    Left = 88
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Ofertas'
    TabOrder = 9
    OnClick = BtnOfertasClick
  end
  object BtnDizimos: TButton
    Left = 168
    Top = 72
    Width = 75
    Height = 25
    Caption = 'D'#237'zimos'
    TabOrder = 10
    OnClick = BtnDizimosClick
  end
  object BtnEntradas: TButton
    Left = 248
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Entradas'
    TabOrder = 11
    OnClick = BtnEntradasClick
  end
  object BtnSaidas: TButton
    Left = 88
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Saidas'
    TabOrder = 13
    OnClick = BtnSaidasClick
  end
  object BtnViagens: TButton
    Left = 168
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Viagens'
    TabOrder = 14
    OnClick = BtnViagensClick
  end
  object BtnGastos: TButton
    Left = 248
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Gastos Viag.'
    TabOrder = 15
    OnClick = BtnGastosClick
  end
  object BtnFechamento: TButton
    Left = 328
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Fechamento'
    TabOrder = 16
    OnClick = BtnFechamentoClick
  end
  object BtnFornecedores: TButton
    Left = 8
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Fornecedores'
    TabOrder = 12
    OnClick = BtnFornecedoresClick
  end
  object UniConnMSSQL: TUniConnection
    ProviderName = 'SQL Server'
    Database = 'IEQ'
    Username = 'sa'
    Password = '33F513b297'
    Server = '.'
    Connected = True
    ConnectDialog = ConnDialogMSSQL
    Left = 48
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 128
  end
  object UniConnFirebird: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\BornSide\IEQSoftFirebird\Banco\IEQ.FDB'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    Connected = True
    ConnectDialog = ConnDialogFirebird
    Left = 80
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 160
  end
  object QryRecebe: TUniQuery
    Connection = UniConnFirebird
    Left = 280
  end
  object QryEnvia: TUniQuery
    Connection = UniConnMSSQL
    SQL.Strings = (
      'select * from Membros')
    DMLRefresh = True
    Left = 248
  end
  object Qry: TUniQuery
    Connection = UniConnFirebird
    Left = 208
  end
  object ConnDialogMSSQL: TUniConnectDialog
    DatabaseLabel = 'Base de dados'
    PortLabel = 'Porta'
    ProviderLabel = 'Fornecedor'
    Caption = 'Iniciar Sess'#227'o'
    UsernameLabel = 'Nome do Usu'#225'rio'
    PasswordLabel = 'Senha'
    ServerLabel = 'Servidor'
    ConnectButton = 'Ok MSSQL'
    CancelButton = 'Cancelar'
    LabelSet = lsCustom
    Left = 336
    Top = 72
  end
  object ConnDialogFirebird: TUniConnectDialog
    DatabaseLabel = 'Base de dados'
    PortLabel = 'Porta'
    ProviderLabel = 'Fornecedor'
    Caption = 'Iniciar Sess'#227'o'
    UsernameLabel = 'Nome do Usu'#225'rio'
    PasswordLabel = 'Senha'
    ServerLabel = 'Servidor'
    ConnectButton = 'Ok Firebird'
    CancelButton = 'Cancelar'
    LabelSet = lsCustom
    Left = 376
    Top = 72
  end
end
