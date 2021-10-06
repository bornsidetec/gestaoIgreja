object FormCertificadoBatismo: TFormCertificadoBatismo
  Left = 275
  Top = 238
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Certificado de Batismo'
  ClientHeight = 348
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFiltro: TPanel
    Left = 0
    Top = 0
    Width = 362
    Height = 291
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      362
      291)
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 78
      Height = 13
      Caption = 'Data do Batismo'
    end
    object GroupBoxData: TGroupBox
      Left = 8
      Top = 8
      Width = 257
      Height = 45
      Caption = 'Data do Cadastro'
      TabOrder = 0
      object Label3: TLabel
        Left = 120
        Top = 24
        Width = 15
        Height = 13
        Caption = 'at'#233
      end
      object DateEditIni: TDateEdit
        Left = 8
        Top = 16
        Width = 105
        Height = 21
        NumGlyphs = 2
        StartOfWeek = Sun
        TabOrder = 0
      end
      object DateEditFim: TDateEdit
        Left = 144
        Top = 16
        Width = 105
        Height = 21
        NumGlyphs = 2
        StartOfWeek = Sun
        TabOrder = 1
      end
    end
    object BtnPesquisar: TBitBtn
      Left = 272
      Top = 12
      Width = 81
      Height = 41
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = BtnPesquisarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C99CE2BA5D51C9DD10A8AC6FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFBFA5A34D5A72FF00FFFF00FF249CCFA6EEF7
        6CEBF85DD9F04AC7E739B8E020A0D40F91CA0F91C9FF00FFFF00FFBFA5A35766
        831276E23C91DCFF00FF0C8CC799DDEF8BFFFF80FCFF82FBFF7FFAFF79F3FF65
        E1F74ECEED3CBAE07591A05B66811170D833A1FF2A9AFEFF00FF1296CC59BADE
        9FFEFF75F7FF78F6FF77F2FC89D9E087D7DE7BE2EA91BCC05168891370D531A0
        FF319EFBFF00FFFF00FF26A5D448C1E69FEFF879F6FB87D8DCBACABCDABCA5D0
        B59EAF9A8C817A734179AF32A3FF3DACFE1B9CD4FF00FFFF00FF27AFDE8B97A1
        88CFE28BD1D3CBB4ADF7F0DDFFFFD8FFFFD9FAF8C5CFB08CC4A9A34DC1FC55D0
        FB41C1E3FF00FFFF00FF25AFE1AD706B5DBCDDB5A69EF7F4EEFFFFFFFFFFE3FF
        FFD4FFF7C1FFE6A5D8A0826FD4EB59D7FB68E2F80E90C9FF00FF26AFE1B5776D
        A4CFD9CEB69EFFFFEAFFFFF3FFFFEAFFFFD7F7DCA9F6C986E1B89191C0C753D3
        FB7EF3FF28AAD8FF00FF28B0E0BC7F6EFFF4EBD5BCA1FFFFDDFFFFDDFFFFE0FF
        FACAEFBD81F4BD77E7C49A93C0C44FD3FB7DF4FF56D5EFFF00FF28AFE1C58870
        FFFCF8CAAA99FEFFCEFFFFC9F8E1ADF0C78CF3CA96FFEBB5D5AF959AC9D37AE0
        FE9DFBFF96F8FF23A1D328B0E1CE9173FFFAF7D8C4BDDCC59EFCE5A7FAC782FB
        D08BFFF7E0E7DCCE8CA5AA6BC9E65FBCE060BBDE6CC4E329A1D12DB2E2D59975
        FFF8F3FCFBFAE5D1C9E9CAA6E7C599E1C298CCB59FB18B8875E7F86DEDFE179D
        D1FF00FFFF00FFFF00FF1FA1D9DDA077FFFBF6FFFFFFFFFFFFFFFFFEFBF4EBB4
        8379BF7849B16F5350C0E550C4E71C9DD0FF00FFFF00FFFF00FFFF00FFE2A678
        FFFFFFFFFFFFFFFFFFFFFFFFF8FAFCB6877AE29955FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1926DB4
        7E6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object ChkTodos: TCheckBox
      Left = 120
      Top = 76
      Width = 57
      Height = 17
      Caption = 'Todos'
      TabOrder = 3
      OnClick = ChkTodosClick
    end
    object ChkListBox: TCheckListBox
      Left = 8
      Top = 96
      Width = 348
      Height = 137
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 13
      TabOrder = 4
    end
    object DateEditBatismo: TDateEdit
      Left = 8
      Top = 72
      Width = 105
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object RLReportCertificado: TRLReport
      Left = 160
      Top = 410
      Width = 983
      Height = 737
      DataSource = Ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Margins.LeftMargin = 0.000000000000000000
      Margins.TopMargin = 0.000000000000000000
      Margins.RightMargin = 0.000000000000000000
      Margins.BottomMargin = 0.000000000000000000
      PageSetup.PaperSize = fpCustom
      PageSetup.Orientation = poLandscape
      PageSetup.PaperWidth = 195.000000000000000000
      PageSetup.PaperHeight = 260.000000000000000000
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 983
        Height = 737
        object RLDBText1: TRLDBText
          Left = 189
          Top = 288
          Width = 86
          Height = 29
          DataField = 'Nome'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 227
          Top = 340
          Width = 214
          Height = 29
          DataField = 'DiaNascimento'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 340
          Top = 340
          Width = 217
          Height = 29
          DataField = 'MesNascimento'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 567
          Top = 340
          Width = 219
          Height = 29
          DataField = 'AnoNascimento'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 491
          Top = 491
          Width = 164
          Height = 29
          DataField = 'DiaBatismo'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 605
          Top = 491
          Width = 167
          Height = 29
          DataField = 'MesBatismo'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 813
          Top = 491
          Width = 169
          Height = 29
          DataField = 'AnoBatismo'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 94
          Top = 491
          Width = 97
          Height = 29
          DataField = 'Cidade'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 455
          Top = 580
          Width = 77
          Height = 17
          Alignment = taCenter
          DataField = 'Oficiante'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Lucida Calligraphy'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 240
      Width = 347
      Height = 45
      Anchors = [akLeft, akBottom]
      Caption = 'Margens em Milimetros'
      TabOrder = 6
      object Label6: TLabel
        Left = 8
        Top = 24
        Width = 39
        Height = 13
        Caption = 'Superior'
      end
      object Label7: TLabel
        Left = 168
        Top = 24
        Width = 45
        Height = 13
        Caption = 'Esquerda'
      end
      object EdtMargemSuperior: TRxCalcEdit
        Left = 56
        Top = 16
        Width = 105
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object EdtMargemEsquerda: TRxCalcEdit
        Left = 224
        Top = 16
        Width = 105
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 291
    Width = 362
    Height = 57
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object BtnImprimir: TBitBtn
      Left = 50
      Top = 8
      Width = 81
      Height = 41
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BtnVisualizarClick
      Glyph.Data = {
        B6030000424DB603000000000000360000002800000012000000100000000100
        18000000000080030000C40E0000C40E00000000000000000000B0C8D0B0C8D0
        B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D00000000000
        00000000000000000000000000000000000000000000000000000000B0C8D0B0
        C8D0B0C8D0B0C8D00000B0C8D0B0C8D0000000BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000B0C8D0B0C8D0B0C8D0
        0000B0C8D0000000000000000000000000000000000000000000000000000000
        000000000000000000000000BFBFBF000000B0C8D0B0C8D00000B0C8D0000000
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBF
        BF000000000000000000B0C8D0B0C8D00000B0C8D0000000BFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF00
        0000B0C8D0B0C8D00000B0C8D000000000000000000000000000000000000000
        0000000000000000000000000000000000000000BFBFBFBFBFBF000000B0C8D0
        0000B0C8D0000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBF000000BFBFBF000000BFBFBF000000B0C8D00000B0C8D0B0C8D0
        000000000000000000000000000000000000000000000000000000000000BFBF
        BF000000BFBFBF000000000000B0C8D00000B0C8D0B0C8D0B0C8D0000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF000000BF
        BFBF000000B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0000000FFFFFF00000000
        0000000000000000000000FFFFFF000000000000000000000000B0C8D0B0C8D0
        0000B0C8D0B0C8D0B0C8D0B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0
        B0C8D0B0C8D0B0C8D0000000FFFFFF000000000000000000000000000000FFFF
        FF000000B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B0
        C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D000000000
        0000000000000000000000000000000000000000000000B0C8D0B0C8D0B0C8D0
        0000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0
        B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000}
    end
    object BtnVisualizar: TBitBtn
      Left = 138
      Top = 8
      Width = 81
      Height = 41
      Caption = '&Visualizar'
      TabOrder = 1
      OnClick = BtnVisualizarClick
      Glyph.Data = {
        5E040000424D5E04000000000000360000002800000012000000130000000100
        18000000000028040000C40E0000C40E00000000000000000000B0C8D0B0C8D0
        B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0
        C8D0B0C8D0B0C8D00000B0C8D000000000000000000000000000000000000000
        0000000000000000000000000000000000B0C8D0B0C8D0000000000000B0C8D0
        0000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000B0C8D0000000000000000000B0C8D00000B0C8D0000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
        007F7F7F000000000000B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000007F7F7FBFBFBFBFBFBF7F7F7F0000007F7F7FB0
        C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00007F7F7FBFBFBFBFBFBFFFFF007F7F7F7F7F7F000000B0C8D0B0C8D0B0C8D0
        0000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
        BFBFBFBFBFBF7F7F7FBFBFBF000000B0C8D0B0C8D0B0C8D00000B0C8D0000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFFFFF00BFBFBFBFBFBF7F7F
        7FBFBFBF000000B0C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000007F7F7FFFFF00FFFF00BFBFBF7F7F7F7F7F7F000000B0
        C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000007F7F7FBFBFBFBFBFBF7F7F7F000000B0C8D0B0C8D0B0C8D0B0C8D0
        0000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000B0C8D0B0C8D0B0
        C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000BFBFBF000000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0
        0000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0000000
        000000000000000000000000000000000000000000000000B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0
        C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0
        C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0
        0000}
    end
    object BtnSair: TBitBtn
      Left = 226
      Top = 8
      Width = 81
      Height = 41
      Caption = 'Sai&r'
      TabOrder = 2
      OnClick = BtnSairClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000296394002963940000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
        63002963940029639400296394002963940000000000004A6300004A6300004A
        6300004A6300004A6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00004A
        630029639C002963940029639400296394000000000000CEFF0000CEFF0000CE
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
        6300216B9C00296B9C00296B9C00296B9C000000000000CEFF0000CEFF0000CE
        FF0000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63002173A5002173A5002173A500216B9C000000000008CEFF0000CEFF0000CE
        FF0000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        6300187BAD00187BAD00FFFFFF001873A5000000000031D6FF0021D6FF0018CE
        FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63001084B500107BB500107BAD00107BAD00000000005ADEFF004ADEFF00FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        6300088CBD000884B5000884B5001084B5000000000084E7F700FF000000FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        6300008CBD00008CBD00088CBD00088CBD0000000000B5EFF700A5E7F700FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        63000094C6000094C6000094C6000094C60000000000DEF7F700CEEFF700BDEF
        F700FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63000094CE000094CE000094C6000094C60000000000F7F7F700EFF7F700E7F7
        F70000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63000094CE000094CE000094CE000094CE0000000000F7F7F700F7F7F700F7F7
        F70000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00004A6300004A63000094CE000094CE0000000000004A6300004A6300004A
        6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00004A6300004A6300004A6300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  object RxMem: TRxMemoryData
    FieldDefs = <>
    OnCalcFields = RxMemCalcFields
    Left = 368
    Top = 8
    object RxMemFichaNumero: TIntegerField
      FieldName = 'FichaNumero'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object RxMemNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object RxMemDataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
    end
    object RxMemRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object RxMemMembroDesde: TDateTimeField
      FieldName = 'MembroDesde'
      DisplayFormat = 'MMM/YYYY'
      EditMask = 'MMM/YYYY'
    end
    object RxMemCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object RxMemDataBatismo: TDateTimeField
      FieldName = 'DataBatismo'
    end
    object RxMemDiaBatismo: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiaBatismo'
      Size = 2
      Calculated = True
    end
    object RxMemMesBatismo: TStringField
      FieldKind = fkCalculated
      FieldName = 'MesBatismo'
      Size = 10
      Calculated = True
    end
    object RxMemAnoBatismo: TStringField
      FieldKind = fkCalculated
      FieldName = 'AnoBatismo'
      Size = 4
      Calculated = True
    end
    object RxMemDiaNascimento: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiaNascimento'
      Size = 2
      Calculated = True
    end
    object RxMemMesNascimento: TStringField
      FieldKind = fkCalculated
      FieldName = 'MesNascimento'
      Size = 10
      Calculated = True
    end
    object RxMemAnoNascimento: TStringField
      FieldKind = fkCalculated
      FieldName = 'AnoNascimento'
      Size = 4
      Calculated = True
    end
    object RxMemOficiante: TStringField
      FieldName = 'Oficiante'
      Size = 50
    end
  end
  object QryDados: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select M.FichaNumero, M.Nome, M.DataNascimento,'
      '       M.RG, M.MembroDesde'
      'from Membros M'
      'where M.FichaNumero in :Fichas')
    OnCalcFields = QryDadosCalcFields
    Left = 400
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fichas'
      end>
    object QryDadosFichaNumero: TIntegerField
      FieldName = 'FichaNumero'
      ReadOnly = True
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object QryDadosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QryDadosDataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
    end
    object QryDadosRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object QryDadosMembroDesde: TDateTimeField
      FieldName = 'MembroDesde'
    end
    object QryDadosCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object QryDadosDataBatismo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'DataBatismo'
      Calculated = True
    end
    object QryDadosOficiante: TStringField
      FieldName = 'Oficiante'
      Size = 50
    end
  end
  object Ds: TDataSource
    DataSet = RxMem
    Left = 368
    Top = 40
  end
end
