object FormImpRemetentes: TFormImpRemetentes
  Left = 365
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Remetentes'
  ClientHeight = 340
  ClientWidth = 467
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
  object PanelDados: TPanel
    Left = 0
    Top = 0
    Width = 467
    Height = 283
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 54
      Height = 13
      Caption = 'Logradouro'
    end
    object Label4: TLabel
      Left = 368
      Top = 48
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label5: TLabel
      Left = 8
      Top = 88
      Width = 64
      Height = 13
      Caption = 'Complemento'
    end
    object Label6: TLabel
      Left = 208
      Top = 88
      Width = 27
      Height = 13
      Caption = 'Bairro'
    end
    object Label7: TLabel
      Left = 8
      Top = 128
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label8: TLabel
      Left = 312
      Top = 128
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label9: TLabel
      Left = 368
      Top = 128
      Width = 21
      Height = 13
      Caption = 'CEP'
    end
    object EditNome: TEdit
      Left = 8
      Top = 24
      Width = 337
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 0
    end
    object EditRua: TEdit
      Left = 8
      Top = 64
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 3
    end
    object EditNumero: TEdit
      Left = 368
      Top = 64
      Width = 93
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 6
      TabOrder = 4
      OnKeyPress = EditNumeroKeyPress
    end
    object EditComplemento: TEdit
      Left = 8
      Top = 104
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 5
    end
    object EditBairro: TEdit
      Left = 208
      Top = 104
      Width = 253
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 6
    end
    object EditCidade: TEdit
      Left = 8
      Top = 144
      Width = 297
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 7
    end
    object CboEstado: TComboBox
      Left = 312
      Top = 144
      Width = 49
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'AC'
      OnKeyPress = CboEstadoKeyPress
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
    end
    object QuickRep1: TQuickRep
      Left = 72
      Top = 392
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = RxRemetentes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 3
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Values = (
        90.000000000000000000
        2970.000000000000000000
        90.000000000000000000
        2100.000000000000000000
        72.000000000000000000
        72.000000000000000000
        30.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      object DetailBand2: TQRBand
        Left = 27
        Top = 34
        Width = 239
        Height = 117
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          309.562500000000000000
          632.354166666666700000)
        BandType = rbDetail
        object QRDBText7: TQRDBText
          Left = 12
          Top = 15
          Width = 27
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            31.750000000000000000
            39.687500000000000000
            71.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxRemetentes
          DataField = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText8: TQRDBText
          Left = 12
          Top = 31
          Width = 64
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            31.750000000000000000
            82.020833333333330000
            169.333333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxRemetentes
          DataField = 'RUANUMERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText9: TQRDBText
          Left = 12
          Top = 47
          Width = 82
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            31.750000000000000000
            124.354166666666700000
            216.958333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxRemetentes
          DataField = 'EndComplemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText10: TQRDBText
          Left = 12
          Top = 63
          Width = 48
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            31.750000000000000000
            166.687500000000000000
            127.000000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxRemetentes
          DataField = 'EndBairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText11: TQRDBText
          Left = 12
          Top = 79
          Width = 77
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            31.750000000000000000
            209.020833333333300000
            203.729166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxRemetentes
          DataField = 'CIDADEESTADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText12: TQRDBText
          Left = 12
          Top = 95
          Width = 37
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            31.750000000000000000
            251.354166666666700000
            97.895833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxRemetentes
          DataField = 'EndCep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
      end
    end
    object EditCEP: TMaskEdit
      Left = 368
      Top = 144
      Width = 93
      Height = 21
      EditMask = '99999-999;0;_'
      MaxLength = 9
      TabOrder = 9
    end
    object RxDBGrid1: TRxDBGrid
      Left = 8
      Top = 176
      Width = 453
      Height = 97
      DataSource = Ds
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 348
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndRua'
          Title.Caption = 'Logradouro'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndNumero'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndBairro'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndComplemento'
          Title.Caption = 'Complemento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndCidade'
          Title.Caption = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndEstado'
          Title.Caption = 'Estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndCep'
          Title.Caption = 'CEP'
          Visible = True
        end>
    end
    object BtnImpPastores: TBitBtn
      Left = 352
      Top = 16
      Width = 49
      Height = 25
      Caption = 'Pastores'
      TabOrder = 1
      OnClick = BtnImpPastoresClick
    end
    object BtnImpIgreja: TBitBtn
      Left = 408
      Top = 16
      Width = 49
      Height = 25
      Caption = 'Igreja'
      TabOrder = 2
      OnClick = BtnImpIgrejaClick
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 283
    Width = 467
    Height = 57
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Quantidade'
    end
    object SpdBtnAdd: TSpeedButton
      Left = 200
      Top = 24
      Width = 23
      Height = 22
      Hint = 'Adicionar Remetente'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777FFFFF7777777777200007777777777788888F77777777770222077
        7777777778F778F777777777702220777777777FF8F778FFFF77772000222000
        07777788887778888F7777A2222222220777778F777777778F7777A222222222
        0777778F777777778F7777A2222222220777778FFFF777FF8F7777AAAA2220AA
        2777778888F77888877777777A2220777777777778F778F7777777777A222077
        7777777778FFF8F7777777777AAAA27777777777788888777777777777777777
        7777777777777777777777777777777777777777777777777777}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtnAddClick
    end
    object LabelQtd: TLabel
      Left = 215
      Top = 8
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 72
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Coluna'
    end
    object Label11: TLabel
      Left = 120
      Top = 8
      Width = 26
      Height = 13
      Caption = 'Linha'
    end
    object SpdBtnClear: TSpeedButton
      Left = 176
      Top = 24
      Width = 23
      Height = 22
      Hint = 'Limpar Remetentes'
      Flat = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00090909090909
        09090909090909090909FBFFFBFFFB09090909090909090909090909090909FB
        FF09090909090909090909090909090900000009090909090909090909090900
        FFFBFF000909090909090909090900FFA4FFFBFF00090909090909090900FFA4
        FF07A4FBFF0009090909090900FFA4FF07A4FBFFFBA4000909090900FFA4FF07
        A4FBFFFBA40707000909000000FF07A4FBFFFBA40707070009090909090000FB
        FFFBA407070700090909090909090900FBA4070707A404000909090909090909
        0007070700040404000909090909090909000000090004040400090909090909
        0909090909090004040009090909090909090909090909000009}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtnClearClick
    end
    object SpinEdit1: TRxSpinEdit
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      Hint = 'Quantidade'
      ButtonKind = bkStandard
      MaxValue = 100.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      MaxLength = 3
      TabOrder = 0
    end
    object BtnImprimir: TBitBtn
      Left = 226
      Top = 8
      Width = 75
      Height = 41
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = BtnImprimirClick
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
    object BtnSair: TBitBtn
      Left = 386
      Top = 8
      Width = 75
      Height = 41
      Caption = '&Sair'
      TabOrder = 5
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
    object SpinCol: TRxSpinEdit
      Left = 72
      Top = 24
      Width = 41
      Height = 21
      Hint = 'Coluna'
      ButtonKind = bkStandard
      MaxValue = 3.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object SpinLin: TRxSpinEdit
      Left = 120
      Top = 24
      Width = 41
      Height = 21
      Hint = 'Linha'
      ButtonKind = bkStandard
      MaxValue = 9.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object BtnVisualizar: TBitBtn
      Left = 306
      Top = 8
      Width = 75
      Height = 41
      Caption = '&Visualizar'
      TabOrder = 4
      OnClick = BtnImprimirClick
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
  end
  object RxRemetentes: TRxMemoryData
    FieldDefs = <>
    Left = 232
    Top = 216
    object RxRemetentesNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object RxRemetentesEndRua: TStringField
      FieldName = 'EndRua'
      Size = 50
    end
    object RxRemetentesEndNumero: TStringField
      FieldName = 'EndNumero'
      Size = 6
    end
    object RxRemetentesEndBairro: TStringField
      FieldName = 'EndBairro'
      Size = 50
    end
    object RxRemetentesEndComplemento: TStringField
      FieldName = 'EndComplemento'
      Size = 30
    end
    object RxRemetentesEndCidade: TStringField
      FieldName = 'EndCidade'
      Size = 50
    end
    object RxRemetentesEndEstado: TStringField
      FieldName = 'EndEstado'
      Size = 2
    end
    object RxRemetentesEndCep: TStringField
      FieldName = 'EndCep'
      Size = 8
    end
    object RxRemetentesRUANUMERO: TStringField
      DisplayWidth = 58
      FieldName = 'RUANUMERO'
      Size = 58
    end
    object RxRemetentesCIDADEESTADO: TStringField
      FieldName = 'CIDADEESTADO'
      Size = 55
    end
  end
  object Ds: TDataSource
    DataSet = Rx
    Left = 360
    Top = 216
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 320
    Top = 216
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
  object Rx: TRxMemoryData
    FieldDefs = <>
    BeforeDelete = RxBeforeDelete
    OnCalcFields = RxCalcFields
    Left = 272
    Top = 216
    object RxNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object RxEndRua: TStringField
      FieldName = 'EndRua'
      Size = 50
    end
    object RxEndNumero: TStringField
      FieldName = 'EndNumero'
      Size = 6
    end
    object RxEndBairro: TStringField
      FieldName = 'EndBairro'
      Size = 50
    end
    object RxEndComplemento: TStringField
      FieldName = 'EndComplemento'
      Size = 30
    end
    object RxEndCidade: TStringField
      FieldName = 'EndCidade'
      Size = 50
    end
    object RxEndEstado: TStringField
      FieldName = 'EndEstado'
      Size = 2
    end
    object RxEndCep: TStringField
      FieldName = 'EndCep'
      Size = 8
    end
    object RxRUANUMERO: TStringField
      DisplayWidth = 58
      FieldKind = fkCalculated
      FieldName = 'RUANUMERO'
      Size = 58
      Calculated = True
    end
    object RxCIDADEESTADO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CIDADEESTADO'
      Size = 55
      Calculated = True
    end
  end
end
