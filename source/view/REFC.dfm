object FormREFC: TFormREFC
  Left = 290
  Top = 293
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Culto'
  ClientHeight = 156
  ClientWidth = 274
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
    Width = 274
    Height = 99
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 20
      Height = 13
      Caption = 'M'#234's'
    end
    object LblAno: TLabel
      Left = 200
      Top = 8
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 77
      Height = 13
      Caption = 'Data Espec'#237'fica'
    end
    object ComboBoxMes: TComboBox
      Left = 8
      Top = 24
      Width = 177
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'JANEIRO'
      Items.Strings = (
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object EditAno: TEdit
      Left = 200
      Top = 24
      Width = 65
      Height = 21
      MaxLength = 4
      TabOrder = 1
      OnKeyPress = EditAnoKeyPress
    end
    object QuickRep1: TQuickRep
      Left = 320
      Top = 68
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = RxMREFC
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
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Values = (
        20.000000000000000000
        2970.000000000000000000
        20.000000000000000000
        2100.000000000000000000
        20.000000000000000000
        20.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      object DetailBand1: TQRBand
        Left = 8
        Top = 8
        Width = 779
        Height = 1105
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
          2923.645833333333000000
          2061.104166666667000000)
        BandType = rbDetail
        object QRShape1: TQRShape
          Left = 39
          Top = 69
          Width = 701
          Height = 1005
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2659.062500000000000000
            103.187500000000000000
            182.562500000000000000
            1854.729166666667000000)
          Pen.Width = 2
          Shape = qrsRectangle
        end
        object QRShape37: TQRShape
          Left = 39
          Top = 997
          Width = 700
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            103.187500000000000000
            2637.895833333333000000
            1852.083333333333000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRShape55: TQRShape
          Left = 43
          Top = 221
          Width = 164
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            113.770833333333300000
            113.770833333333300000
            584.729166666666800000
            433.916666666666800000)
          Shape = qrsRectangle
        end
        object QRShape48: TQRShape
          Left = 429
          Top = 428
          Width = 1
          Height = 79
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            209.020833333333300000
            1135.062500000000000000
            1132.416666666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape49: TQRShape
          Left = 389
          Top = 454
          Width = 221
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            1029.229166666667000000
            1201.208333333333000000
            584.729166666666800000)
          Brush.Color = clBlack
          Shape = qrsRectangle
        end
        object QRShape14: TQRShape
          Left = 39
          Top = 388
          Width = 700
          Height = 41
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            108.479166666666700000
            103.187500000000000000
            1026.583333333333000000
            1852.083333333333000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRShape19: TQRShape
          Left = 39
          Top = 506
          Width = 700
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            103.187500000000000000
            1338.791666666667000000
            1852.083333333333000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRShape34: TQRShape
          Left = 39
          Top = 589
          Width = 700
          Height = 41
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            108.479166666666700000
            103.187500000000000000
            1558.395833333333000000
            1852.083333333333000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRShape33: TQRShape
          Left = 39
          Top = 942
          Width = 589
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            148.166666666666700000
            103.187500000000000000
            2492.375000000000000000
            1558.395833333333000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRLabel1: TQRLabel
          Left = 592
          Top = 1073
          Width = 149
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1566.333333333333000000
            2838.979166666667000000
            394.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '1'#170' via: Contabilidade - 2'#170' via: Igreja'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText1: TQRDBText
          Left = 646
          Top = 151
          Width = 20
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1709.208333333333000000
            399.520833333333300000
            52.916666666666670000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 676
          Top = 151
          Width = 25
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1788.583333333333000000
            399.520833333333300000
            66.145833333333330000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Mes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 709
          Top = 151
          Width = 24
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1875.895833333333000000
            399.520833333333300000
            63.500000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Ano'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 154
          Top = 151
          Width = 67
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            407.458333333333300000
            399.520833333333300000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'IgrejaBairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 554
          Top = 151
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1465.791666666667000000
            399.520833333333300000
            92.604166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText6: TQRDBText
          Left = 95
          Top = 184
          Width = 39
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            486.833333333333300000
            103.187500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Pastor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText7: TQRDBText
          Left = 41
          Top = 246
          Width = 28
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            108.479166666666700000
            650.875000000000000000
            74.083333333333330000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText8: TQRDBText
          Left = 66
          Top = 246
          Width = 24
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            174.625000000000000000
            650.875000000000000000
            63.500000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Seg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText9: TQRDBText
          Left = 91
          Top = 246
          Width = 19
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            240.770833333333300000
            650.875000000000000000
            50.270833333333330000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Ter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText10: TQRDBText
          Left = 114
          Top = 246
          Width = 25
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            301.625000000000000000
            650.875000000000000000
            66.145833333333330000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Qua'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText11: TQRDBText
          Left = 136
          Top = 246
          Width = 21
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            359.833333333333300000
            650.875000000000000000
            55.562500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Qui'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText12: TQRDBText
          Left = 160
          Top = 246
          Width = 24
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            423.333333333333300000
            650.875000000000000000
            63.500000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Sex'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText13: TQRDBText
          Left = 184
          Top = 246
          Width = 24
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            486.833333333333300000
            650.875000000000000000
            63.500000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Sab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText14: TQRDBText
          Left = 239
          Top = 246
          Width = 42
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            632.354166666666700000
            650.875000000000000000
            111.125000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Horario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText15: TQRDBText
          Left = 499
          Top = 213
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1320.270833333333000000
            563.562500000000000000
            92.604166666666670000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Curas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText16: TQRDBText
          Left = 469
          Top = 246
          Width = 67
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            650.875000000000000000
            177.270833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'BatismoES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText17: TQRDBText
          Left = 484
          Top = 277
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1280.583333333333000000
            732.895833333333300000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Criancas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText18: TQRDBText
          Left = 661
          Top = 213
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1748.895833333333000000
            563.562500000000000000
            182.562500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Conversoes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText19: TQRDBText
          Left = 671
          Top = 246
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1775.354166666667000000
            650.875000000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Visitantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText20: TQRDBText
          Left = 670
          Top = 277
          Width = 60
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1772.708333333333000000
            732.895833333333300000
            158.750000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Presentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText21: TQRDBText
          Left = 691
          Top = 93
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1828.270833333333000000
            246.062500000000000000
            108.479166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText22: TQRDBText
          Left = 44
          Top = 328
          Width = 101
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            116.416666666666700000
            867.833333333333300000
            267.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'PastoresPresentes1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText23: TQRDBText
          Left = 44
          Top = 351
          Width = 101
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            116.416666666666700000
            928.687500000000000000
            267.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'PastoresPresentes2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText24: TQRDBText
          Left = 455
          Top = 371
          Width = 46
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1203.854166666667000000
            981.604166666666700000
            121.708333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Pregador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText25: TQRDBText
          Left = 297
          Top = 435
          Width = 77
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            785.812500000000000000
            1150.937500000000000000
            203.729166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'TotalDizimos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText26: TQRDBText
          Left = 292
          Top = 461
          Width = 82
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            772.583333333333300000
            1219.729166666667000000
            216.958333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'OfertasGerais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText27: TQRDBText
          Left = 276
          Top = 486
          Width = 101
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            730.250000000000000000
            1285.875000000000000000
            267.229166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'OfertasEspeciais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText28: TQRDBText
          Left = 640
          Top = 486
          Width = 92
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1693.333333333333000000
            1285.875000000000000000
            243.416666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'OfertasMissoes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText29: TQRDBText
          Left = 629
          Top = 461
          Width = 103
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1664.229166666667000000
            1219.729166666667000000
            272.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'TotalArrecadacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText30: TQRDBText
          Left = 640
          Top = 435
          Width = 92
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1693.333333333333000000
            1150.937500000000000000
            243.416666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'OutrasEntradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText31: TQRDBText
          Left = 682
          Top = 668
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1804.458333333333000000
            1767.416666666667000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText33: TQRDBText
          Left = 95
          Top = 668
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1767.416666666667000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText34: TQRDBText
          Left = 95
          Top = 696
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1841.500000000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText35: TQRDBText
          Left = 95
          Top = 725
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1918.229166666667000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText36: TQRDBText
          Left = 95
          Top = 753
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1992.312500000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText37: TQRDBText
          Left = 95
          Top = 782
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2069.041666666667000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText38: TQRDBText
          Left = 95
          Top = 810
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2143.125000000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText39: TQRDBText
          Left = 95
          Top = 838
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2217.208333333333000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText40: TQRDBText
          Left = 95
          Top = 867
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2293.937500000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText41: TQRDBText
          Left = 682
          Top = 696
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1804.458333333333000000
            1841.500000000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText42: TQRDBText
          Left = 682
          Top = 725
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1804.458333333333000000
            1918.229166666667000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText43: TQRDBText
          Left = 680
          Top = 753
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            1992.312500000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText44: TQRDBText
          Left = 680
          Top = 782
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            2069.041666666667000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText45: TQRDBText
          Left = 680
          Top = 810
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            2143.125000000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText46: TQRDBText
          Left = 680
          Top = 838
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            2217.208333333333000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText47: TQRDBText
          Left = 680
          Top = 867
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            2293.937500000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText48: TQRDBText
          Left = 681
          Top = 895
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1801.812500000000000000
            2368.020833333333000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText49: TQRDBText
          Left = 95
          Top = 895
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2368.020833333333000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText50: TQRDBText
          Left = 47
          Top = 1020
          Width = 54
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            124.354166666666700000
            2698.750000000000000000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Diaconos1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText51: TQRDBText
          Left = 47
          Top = 1039
          Width = 54
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            124.354166666666700000
            2749.020833333333000000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Diaconos2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText52: TQRDBText
          Left = 109
          Top = 1057
          Width = 55
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            288.395833333333400000
            2796.645833333333000000
            145.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Tesoureiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText53: TQRDBText
          Left = 395
          Top = 328
          Width = 90
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1045.104166666667000000
            867.833333333333300000
            238.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'VisitasEspeciais1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText54: TQRDBText
          Left = 395
          Top = 351
          Width = 90
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1045.104166666667000000
            928.687500000000000000
            238.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'VisitasEspeciais2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText32: TQRDBText
          Left = 653
          Top = 978
          Width = 77
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1727.729166666667000000
            2587.625000000000000000
            203.729166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'TotalDizimos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText55: TQRDBText
          Left = 670
          Top = 184
          Width = 60
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1772.708333333333000000
            486.833333333333300000
            158.750000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Prontuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText56: TQRDBText
          Left = 95
          Top = 924
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2444.750000000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimista10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText57: TQRDBText
          Left = 674
          Top = 924
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1783.291666666667000000
            2444.750000000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Dizimo10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel3: TQRLabel
          Left = 211
          Top = 77
          Width = 357
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.854166666666670000
            558.270833333333300000
            203.729166666666700000
            944.562500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'IGREJA DO EVANGELHO QUADRANGULAR'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 13
        end
        object QRLabel4: TQRLabel
          Left = 203
          Top = 99
          Width = 372
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.854166666666670000
            537.104166666666700000
            261.937500000000000000
            984.250000000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'REFC - Relat'#243'rio Estat'#237'stico e Financeiro de Culto'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 13
        end
        object QRLabel5: TQRLabel
          Left = 639
          Top = 78
          Width = 18
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1690.687500000000000000
            206.375000000000000000
            47.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#186
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel6: TQRLabel
          Left = 151
          Top = 125
          Width = 135
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            399.520833333333300000
            330.729166666666700000
            357.187500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Igreja (cidade, bairro)'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel7: TQRLabel
          Left = 479
          Top = 125
          Width = 37
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1267.354166666667000000
            330.729166666666700000
            97.895833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CNPJ'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel8: TQRLabel
          Left = 639
          Top = 125
          Width = 32
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1690.687500000000000000
            330.729166666666700000
            84.666666666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Data'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel9: TQRLabel
          Left = 479
          Top = 151
          Width = 67
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1267.354166666667000000
            399.520833333333300000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '62.955.505/'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape2: TQRShape
          Left = 639
          Top = 110
          Width = 93
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            1690.687500000000000000
            291.041666666666700000
            246.062500000000000000)
          Shape = qrsHorLine
        end
        object QRShape3: TQRShape
          Left = 154
          Top = 167
          Width = 325
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            407.458333333333400000
            441.854166666666700000
            859.895833333333400000)
          Shape = qrsHorLine
        end
        object QRShape4: TQRShape
          Left = 547
          Top = 167
          Width = 84
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            1447.270833333333000000
            441.854166666666700000
            222.250000000000000000)
          Shape = qrsHorLine
        end
        object QRShape5: TQRShape
          Left = 642
          Top = 167
          Width = 91
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            1698.625000000000000000
            441.854166666666700000
            240.770833333333300000)
          Shape = qrsHorLine
        end
        object QRLabel10: TQRLabel
          Left = 669
          Top = 151
          Width = 5
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1770.062500000000000000
            399.520833333333300000
            13.229166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '/'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel11: TQRLabel
          Left = 702
          Top = 151
          Width = 5
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1857.375000000000000000
            399.520833333333300000
            13.229166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '/'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape6: TQRShape
          Left = 39
          Top = 175
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            463.020833333333400000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRLabel12: TQRLabel
          Left = 46
          Top = 1054
          Width = 57
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            121.708333333333300000
            2788.708333333333000000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tesoureiro'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel13: TQRLabel
          Left = 129
          Top = 998
          Width = 172
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            341.312500000000000000
            2640.541666666667000000
            455.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nome dos di'#225'conos respons'#225'veis'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel14: TQRLabel
          Left = 549
          Top = 998
          Width = 59
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1452.562500000000000000
            2640.541666666667000000
            156.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Assinatura'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel15: TQRLabel
          Left = 169
          Top = 945
          Width = 449
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            447.145833333333400000
            2500.312500000000000000
            1187.979166666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'VALORES TRANSPORTADOS DO(S) RDC(S) N'#186' ____________'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel16: TQRLabel
          Left = 252
          Top = 974
          Width = 366
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            666.750000000000000000
            2577.041666666667000000
            968.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'TOTAL DE D'#205'ZIMOS ENTREGUE NESTE CULTO:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRShape38: TQRShape
          Left = 87
          Top = 629
          Width = 1
          Height = 313
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            828.145833333333200000
            230.187500000000000000
            1664.229166666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape12: TQRShape
          Left = 39
          Top = 366
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            968.375000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape9: TQRShape
          Left = 39
          Top = 301
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            796.395833333333400000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape8: TQRShape
          Left = 39
          Top = 267
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            706.437500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape7: TQRShape
          Left = 39
          Top = 202
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            534.458333333333400000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape36: TQRShape
          Left = 39
          Top = 1054
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2788.708333333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape35: TQRShape
          Left = 39
          Top = 1035
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2738.437500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape32: TQRShape
          Left = 39
          Top = 969
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2563.812500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape31: TQRShape
          Left = 39
          Top = 942
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2492.375000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape30: TQRShape
          Left = 39
          Top = 913
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2415.645833333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape29: TQRShape
          Left = 39
          Top = 885
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2341.562500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape28: TQRShape
          Left = 39
          Top = 856
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2264.833333333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape27: TQRShape
          Left = 39
          Top = 828
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2190.750000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape26: TQRShape
          Left = 39
          Top = 800
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2116.666666666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape25: TQRShape
          Left = 39
          Top = 771
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2039.937500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape24: TQRShape
          Left = 39
          Top = 743
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1965.854166666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape23: TQRShape
          Left = 39
          Top = 714
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1889.125000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape22: TQRShape
          Left = 39
          Top = 686
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1815.041666666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape21: TQRShape
          Left = 39
          Top = 657
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1738.312500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape16: TQRShape
          Left = 39
          Top = 480
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1270.000000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape15: TQRShape
          Left = 39
          Top = 454
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1201.208333333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape13: TQRShape
          Left = 39
          Top = 388
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1026.583333333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape11: TQRShape
          Left = 39
          Top = 345
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            912.812500000000100000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape10: TQRShape
          Left = 39
          Top = 323
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            854.604166666666800000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape20: TQRShape
          Left = 439
          Top = 629
          Width = 1
          Height = 313
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            828.145833333333200000
            1161.520833333333000000
            1664.229166666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape39: TQRShape
          Left = 547
          Top = 629
          Width = 1
          Height = 313
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            828.145833333333200000
            1447.270833333333000000
            1664.229166666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape40: TQRShape
          Left = 627
          Top = 629
          Width = 1
          Height = 314
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            830.791666666666800000
            1658.937500000000000000
            1664.229166666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape41: TQRShape
          Left = 389
          Top = 1017
          Width = 1
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            148.166666666666700000
            1029.229166666667000000
            2690.812500000000000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRLabel17: TQRLabel
          Left = 205
          Top = 632
          Width = 106
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            542.395833333333400000
            1672.166666666667000000
            280.458333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nome dos dizimista'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel18: TQRLabel
          Left = 456
          Top = 632
          Width = 73
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1206.500000000000000000
            1672.166666666667000000
            193.145833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#186' do Cheque'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel19: TQRLabel
          Left = 564
          Top = 632
          Width = 50
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1492.250000000000000000
            1672.166666666667000000
            132.291666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#186' Banco'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel20: TQRLabel
          Left = 651
          Top = 632
          Width = 68
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1722.437500000000000000
            1672.166666666667000000
            179.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Valor em R$'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel21: TQRLabel
          Left = 54
          Top = 663
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1754.187500000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '01'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel22: TQRLabel
          Left = 54
          Top = 691
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1828.270833333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '02'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel23: TQRLabel
          Left = 54
          Top = 720
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1905.000000000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '03'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel24: TQRLabel
          Left = 54
          Top = 748
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1979.083333333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '04'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel25: TQRLabel
          Left = 54
          Top = 862
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2280.708333333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '08'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel26: TQRLabel
          Left = 54
          Top = 834
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2206.625000000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '07'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel27: TQRLabel
          Left = 54
          Top = 805
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2129.895833333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '06'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel28: TQRLabel
          Left = 54
          Top = 777
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2055.812500000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '05'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel29: TQRLabel
          Left = 54
          Top = 919
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2431.520833333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '10'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel30: TQRLabel
          Left = 54
          Top = 890
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2354.791666666667000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '09'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel31: TQRLabel
          Left = 293
          Top = 508
          Width = 189
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            775.229166666666800000
            1344.083333333333000000
            500.062500000000100000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'DESTINO DA ARRECADA'#199#195'O'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape17: TQRShape
          Left = 355
          Top = 526
          Width = 1
          Height = 64
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            169.333333333333300000
            939.270833333333400000
            1391.708333333333000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape18: TQRShape
          Left = 239
          Top = 526
          Width = 1
          Height = 64
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            169.333333333333300000
            632.354166666666800000
            1391.708333333333000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRLabel32: TQRLabel
          Left = 353
          Top = 592
          Width = 76
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            933.979166666666600000
            1566.333333333333000000
            201.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'DIZIMISTAS'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel33: TQRLabel
          Left = 293
          Top = 608
          Width = 197
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            775.229166666666800000
            1608.666666666667000000
            521.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '(Caso n'#227'o haja espa'#231'o utilize o RDC)'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape42: TQRShape
          Left = 39
          Top = 558
          Width = 201
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1476.375000000000000000
            531.812500000000000000)
          Shape = qrsHorLine
        end
        object QRShape43: TQRShape
          Left = 355
          Top = 558
          Width = 385
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            939.270833333333400000
            1476.375000000000000000
            1018.645833333333000000)
          Shape = qrsHorLine
        end
        object QRLabel34: TQRLabel
          Left = 48
          Top = 559
          Width = 31
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            127.000000000000000000
            1479.020833333333000000
            82.020833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Valor'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel35: TQRLabel
          Left = 618
          Top = 559
          Width = 31
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1635.125000000000000000
            1479.020833333333000000
            82.020833333333340000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Valor'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel36: TQRLabel
          Left = 618
          Top = 527
          Width = 31
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1635.125000000000000000
            1394.354166666667000000
            82.020833333333340000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Valor'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel37: TQRLabel
          Left = 490
          Top = 559
          Width = 44
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1296.458333333333000000
            1479.020833333333000000
            116.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ag'#234'ncia'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel38: TQRLabel
          Left = 490
          Top = 527
          Width = 44
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1296.458333333333000000
            1394.354166666667000000
            116.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ag'#234'ncia'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel39: TQRLabel
          Left = 362
          Top = 527
          Width = 33
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            957.791666666666800000
            1394.354166666667000000
            87.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Banco'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel40: TQRLabel
          Left = 362
          Top = 559
          Width = 33
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            957.791666666666800000
            1479.020833333333000000
            87.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Banco'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel41: TQRLabel
          Left = 49
          Top = 528
          Width = 91
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            129.645833333333300000
            1397.000000000000000000
            240.770833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CAIXA LOCAL'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel42: TQRLabel
          Left = 275
          Top = 542
          Width = 49
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            727.604166666666800000
            1434.041666666667000000
            129.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CONTA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel43: TQRLabel
          Left = 263
          Top = 558
          Width = 73
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            695.854166666666800000
            1476.375000000000000000
            193.145833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CORRENTE'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape44: TQRShape
          Left = 79
          Top = 428
          Width = 1
          Height = 79
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            209.020833333333300000
            209.020833333333300000
            1132.416666666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape45: TQRShape
          Left = 259
          Top = 428
          Width = 1
          Height = 79
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            209.020833333333300000
            685.270833333333400000
            1132.416666666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape46: TQRShape
          Left = 389
          Top = 428
          Width = 1
          Height = 79
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            209.020833333333300000
            1029.229166666667000000
            1132.416666666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape47: TQRShape
          Left = 609
          Top = 428
          Width = 1
          Height = 79
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            209.020833333333300000
            1611.312500000000000000
            1132.416666666667000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRLabel44: TQRLabel
          Left = 266
          Top = 390
          Width = 250
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            703.791666666666700000
            1031.875000000000000000
            661.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'DEMONSTRATIVO DE ARRECADA'#199#213'ES'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel45: TQRLabel
          Left = 246
          Top = 408
          Width = 292
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            650.875000000000000000
            1079.500000000000000000
            772.583333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '(Numera'#231#227'o dos '#237'tens de acordo com o relat'#243'rio mensal)'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel46: TQRLabel
          Left = 92
          Top = 432
          Width = 53
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            243.416666666666700000
            1143.000000000000000000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'D'#237'zimos'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel47: TQRLabel
          Left = 49
          Top = 432
          Width = 17
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            129.645833333333300000
            1143.000000000000000000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '01'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel48: TQRLabel
          Left = 92
          Top = 457
          Width = 92
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            243.416666666666700000
            1209.145833333333000000
            243.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ofertas Gerais'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel49: TQRLabel
          Left = 49
          Top = 457
          Width = 17
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            129.645833333333300000
            1209.145833333333000000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '02'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel50: TQRLabel
          Left = 92
          Top = 482
          Width = 109
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            243.416666666666700000
            1275.291666666667000000
            288.395833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ofertas Especiais'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel51: TQRLabel
          Left = 49
          Top = 482
          Width = 17
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            129.645833333333300000
            1275.291666666667000000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '03'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel52: TQRLabel
          Left = 399
          Top = 432
          Width = 17
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1055.687500000000000000
            1143.000000000000000000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '05'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel53: TQRLabel
          Left = 442
          Top = 432
          Width = 108
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1169.458333333333000000
            1143.000000000000000000
            285.750000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Outras Entradas'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel55: TQRLabel
          Left = 392
          Top = 457
          Width = 215
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1037.166666666667000000
            1209.145833333333000000
            568.854166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'TOTAL DA ARRECADA'#199#195'O'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel56: TQRLabel
          Left = 399
          Top = 482
          Width = 17
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1055.687500000000000000
            1275.291666666667000000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '10'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel57: TQRLabel
          Left = 442
          Top = 482
          Width = 153
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1169.458333333333000000
            1275.291666666667000000
            404.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Oferta Miss'#245'es (3'#186' dom)'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRShape50: TQRShape
          Left = 389
          Top = 301
          Width = 1
          Height = 88
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            232.833333333333400000
            1029.229166666667000000
            796.395833333333400000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape51: TQRShape
          Left = 303
          Top = 202
          Width = 1
          Height = 99
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            261.937500000000000000
            801.687500000000100000
            534.458333333333400000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape52: TQRShape
          Left = 451
          Top = 202
          Width = 1
          Height = 99
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            261.937500000000000000
            1193.270833333333000000
            534.458333333333400000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape53: TQRShape
          Left = 543
          Top = 175
          Width = 1
          Height = 126
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            333.375000000000000000
            1436.687500000000000000
            463.020833333333400000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape54: TQRShape
          Left = 655
          Top = 202
          Width = 1
          Height = 99
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            261.937500000000000000
            1733.020833333333000000
            534.458333333333400000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRLabel54: TQRLabel
          Left = 44
          Top = 180
          Width = 46
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            116.416666666666700000
            476.250000000000000000
            121.708333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Pastor:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel58: TQRLabel
          Left = 548
          Top = 180
          Width = 75
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1449.916666666667000000
            476.250000000000000000
            198.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Prontu'#225'rio:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel59: TQRLabel
          Left = 87
          Top = 203
          Width = 79
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            230.187500000000000000
            537.104166666666700000
            209.020833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Dia da semana'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel60: TQRLabel
          Left = 232
          Top = 203
          Width = 43
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            613.833333333333300000
            537.104166666666700000
            113.770833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Hor'#225'rio'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel61: TQRLabel
          Left = 324
          Top = 211
          Width = 106
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            857.250000000000000000
            558.270833333333300000
            280.458333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Testemunho de cura'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel62: TQRLabel
          Left = 313
          Top = 242
          Width = 129
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            828.145833333333300000
            640.291666666666700000
            341.312500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Barizados no Esp. Santo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel63: TQRLabel
          Left = 316
          Top = 276
          Width = 122
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            836.083333333333300000
            730.250000000000000000
            322.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Crian'#231'as Apresentadas'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel64: TQRLabel
          Left = 568
          Top = 211
          Width = 61
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1502.833333333333000000
            558.270833333333300000
            161.395833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Convers'#245'es'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel65: TQRLabel
          Left = 572
          Top = 242
          Width = 54
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1513.416666666667000000
            640.291666666666700000
            142.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Visitantes'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel66: TQRLabel
          Left = 551
          Top = 276
          Width = 96
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1457.854166666667000000
            730.250000000000000000
            254.000000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Total de Presentes'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel67: TQRLabel
          Left = 46
          Top = 274
          Width = 127
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            121.708333333333300000
            724.958333333333300000
            336.020833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Di'#225'conos em servi'#231'o'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel68: TQRLabel
          Left = 164
          Top = 303
          Width = 96
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            433.916666666666700000
            801.687500000000000000
            254.000000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Pastores presentes'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel69: TQRLabel
          Left = 524
          Top = 303
          Width = 90
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1386.416666666667000000
            801.687500000000000000
            238.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Visitas Especiais'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRImage2: TQRImage
          Left = 51
          Top = 77
          Width = 93
          Height = 91
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            240.770833333333300000
            134.937500000000000000
            203.729166666666700000
            246.062500000000000000)
          Picture.Data = {
            0954474946496D616765DE150000474946383961C800C800C40000FBD756FF80
            808A8A89B94E9D4886B9010101FEE99E494949CFCFCF5C4F1F5D274F910000DC
            A6CE310D163C6C93FF4141294C6A913C7B282926FFFFFFFF0000ABC1D2FEF5D5
            F4CAD6D5E0EAEFEFEF8E7E48F6E9F3FFDFDFE8F0F677A4CBFFFAEA2C00000000
            C800C8000005FFE0248E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0
            A070482C1A8FC8A472C96C3A9FD0A8744AAD5AAFD8AC76CBED7ABFE0F00A8338
            2130A38A783DAD141A2281443011140A6577A33CCAF07F170182838485868788
            898A8B8C851C2516069293949596979899971A77151977700777021F12770722
            1F6E050C961F390114B2B3B4B5B6B7B8B9BABBBCB517250600C2C3C4C5C6C7C8
            C9C79C051AAB05150DA776771A1D757705C716B0BDDEDFE0E1B8BF24C1CAE7E8
            E9C5CC73D9CC0507A6A313A2D5DBDDE2F9FAFBB417AF23E6D4091C582C41366A
            05E4C1CB86C741B604C8B8E18825EB41A38B18336A7C308B1CC06192224D1219
            921249032753FF9A5C59E9DD2986D94C495078A012318937285208C0E6844E7F
            E586E10C724605C25131B3D5536A22E0D01A3A79F62CF11398D0217624A4E8C0
            49E1B37A4BEF48C850E283537C3BA752EDF84FC45921F5E8A010F50C83A903F5
            9EDDF943E2265AA96A45540D2AECA90F795AE74293F78181830CA63464C03BEF
            C4DB9CB3004FE0476BC11D7A3045DC59C0B922899F6D275C9E40501D286DC8EE
            64A096E1C32B32D7404B2066A0ED6AA899499496E5B9C087780292CBBD339CC2
            83D31DAD16EEDBFA5C5751108F7DFE70074DD955C50C509F3E31F888E6C5E925
            262BBA00E9D2CF47A0260C6068F573A604B8D96D8C13AA091978570264CD1843
            9F61334425DCFF70E9E165C268C3C5275874078E775F7F6F64F0096CEBC0B302
            33C68897CA6F3428781E839FC5F36001CD4938C17C1F9127C285B115205764C6
            1824170A08D863E0087E95278B66E8A5F81F0910C2079D2C1EB9751590341623
            137B0734A08131D2F0650276C788E8A48C369828429105D073E4084972E6228C
            5FD667218DCCEC31821D5716F3590AD420D35B8C6E0A99D689A5A527C199EDB5
            B824054DAAF6E48C5102809880D8D4398C7F5B4923E98F8C8209DC900B066A64
            6A13A4C9CF9A6C5508E58506BDB1E39C0564378C8E7826948C978A6A5AA27963
            A258A6832588BA0FA94C4AD767A6AD6920CF01908E20CAA500748702063E7639
            82598B8689EBFF66BAAAB7A2A1F295CAA77DD5A52A4105A08E80E3AB1E2AC65F
            321622288398D87A6A1CAF48BA17E1A189AE56AC3BEC9DB0A19436A2009E32B4
            9298E0B5649AB9E27B6AE29B9ABE0389ABA50976B80A4057297049B06FD56EFA
            67AEF24E30E8B6F7761BACA9C45A77100B1B5E5A9909D072A84CBB7F75CA5983
            0780EAAB3EC022FA70B5EAB033F109A2AC0B8041899DC089C57AA26C2DA780DE
            6CE4C2254F78F2B76F22238F642CA8F286CBD0A460293A5E526BEBC150833CCB
            020DB4EDF6DB70BF9D8DB6BDBE11F7DD71336C9AC93E3B8D8E340DACAAC22A97
            4A43280959A943B39F44D6521C4C90477EE70992570E93DECEE12B2CB8C808ED
            0202D2588C74FFBF5B16487651B50EFBF4C7F1AE9D9072B0C72E7B7278CE6E3B
            ECBEF60C14D6A76A9710E92AF428EBA49DA4F0AF6B78B0D6F1AD69B74E9C8708
            0880C12BD44F507DF5C09F70BDF5DC6FFF4AEE9AFB5DE3589F4B633433829790
            783AA9AA61F0BB083B0E8FD7E432013EDFBBB7C9B99D09BD20BCD1CD4A57C64C
            A7B24E984D751E6B5C67E6D72335D8CF5EB4D0DDE6B2E6A8DF956F78C260C601
            B24782E3FD2D1B640912669A670BCFA0C20D08289711EE67B5BEF12E651793CD
            E7C40230F20D0E83CA50081C52E7AE18C0AB840C0CDB03312741F111A3782D00
            1D0E2B684315684C1906099C870ED84318FC507E27C4830A8BC0C217794B7F6F
            BA0BF756F03FFF62B0638B253857325215BD8029EF6CF02321163FD0A303DCEE
            8E3AE8E2605EF8C6181620593C325F0D394839991D235574308503DFE7C3F82D
            70837AB11CE40E47033D7E9187163208254DB0A1F389859026D80F14E711333E
            26D066CFDB640BE875034B5E0D8CBDCB12CB64428C546DD005745C622D2B6387
            238970750A74DD1CEE683B34A8A8041520A6ED5CE94258660A632CC85306B716
            033A69ED65A2D81123ADE848D749B272E462A5F58EF2CDCBD5A2887C249E2AEB
            75256365C3812FF880353BB4973E388B58557CC1151758CEC885F370E4EC2733
            F387C953C18A05626188004069945615442C7CC98AD34E19357ED47364EA638E
            92F03741830AFF71054BB12343C97807E28D0278CB9AD636F5D94D8B42E33800
            D568C3F0F733300DC314294C223C6F200F69401454FF5ADC0859D79CE2897336
            321D55F8D2298C8322010134D929E21252B0E5A18DA8C3D9CB7192C62A166DB4
            850485580CD367040438708B389A28F3B05A1AA3C6D4AB33056B479F29C02A08
            0F00B4FA2545D5E6D27072350E49FD95C38C18402C684CAD570D665F15D6416A
            54CD8BAF2C28B11469859809A36C2B75C13E39A3D5634E15AE4AA52961356985
            270A1598A8DC875B2916589E2DD5997D0CA0549FD081B1E115B171642B675F2A
            4E6C8056B0A2652ABAE4248527EE09B67B759E6A9387D13E38F6AB9045D45C63
            5BC1C045A165FFC4386D728BCADB9C65F4B7AE0D2E6C8F712C4026E189B735E5
            5A15BB5C35F4F6B9718D6EBE80B60C5090D508D204894AAD9A5BF6EAA3B37FF5
            ED63D92459EA120331B32582F0980500EDAE37B5FF0DDB51E11B5AB912B6BEA7
            302F10ECA2CBAAC2B191726C2B6F034C61E082B5A6AA43C73B86F68332868863
            1FE6668877EBDEB70E9842C2BD263C46AA03550812190E4E2C84F30160D68237
            1FBA43F1FEE8695DFCD2B069EA157245DBCB58E7B616C9AF2D70E7C4A2611F60
            A01E4C0BCF7E63CCD219F715A646BE3193944C415B1E01210CC6541FF3A9D996
            2EB70CCDEDAA9AA57BE1A3BD6C0815A80700A18CDC074F39C2FF045589C37BE2
            0BB7AF085F76FF873A8E5BE0ED6655C28442EA91C581CEF10E97C53B50C552C2
            7C8E20F777C8E228F277F71C56FAFAF1BE3AC0803BEF40EA7378188186E62B95
            DF7B654E6759AC7FE64105664DEBFB6096BF20D6ED993DAB67E812186262D441
            0692496C5AC77920A64EB67F898CE9012D1ACB1CF51B33BA4C023A56C0AC664D
            A600344019C8492001D726C8ADE9DC82CDBA3485CC06ECA6C39164BF911699EB
            8E87406302EF781B1BC6B896B2AE115DE566C7778FE395A1081050A5CABD7B26
            097877C13560F0460923DB3256767BD1BC6A675F7235D0A438C121D2718F0B64
            DE353B34B7F19CE96FFB3ADC2FFC0027E880905ABB3C4AC726739DCD3C72BC28
            BAD7FC1E2C1FFF1509E69F3BBD18202FB3C819CEEB7D83A3D392FD8026A3F574
            A7C39C71A80E87AA3FCB6A369B4BD25DEF3AA5335B6F3B535D02E85683A6593D
            5D79F83CED518AFAD0A7CEED708646C0265FB3D35285F7B47F7DA89A510BC40B
            CC01FDAC818A310F8C7CCD5E6E36E835D781593CDBBDB0F915C04BF12747B618
            3AAF029D3CE002A84FBDEA57CFFAD6BBFEF5B08FFDEB3912D980A0C402B8CFBD
            EE77CFFBDEFBFEF7C00FBEEF2F7FD5E618DFF8AD2EBCF205426F16E8E4F8D0E7
            CC7C974FFD7334DFF3D1CF3E3F925FFDEE1BE3FA2A088446C64FFEF223E211E5
            D684FAD7CFFEF6BB1F136894BCFCE74FFFFADBFFFEF8CFBFFEF7CFFFFEFBFFFF
            308001153080FF0458800678800898800AB8800CD88006981B2370010C308114
            58811678811898811AB8811CD88116B801395001043082245882267882289882
            2AB8822CD88226982C0C30003238833458833678833898833AB8833C58838942
            0322E8824238844458842808833D98844AB8844C88833F380341688452388554
            488248D8845828830AA00011908559F8843210851EE0806458866678861E6085
            25108332E8816EB88177A0006F3887164883E4F6025198606C108557380060B8
            03FF33048D31837F080379387F7CB886848815D9708738408385888724A8876B
            908824C0867E38044B016B3A808991E80287287F9638029E3804D550000E3004
            761882934802FF32710052155003378B03978A69A08697B88823E08539180109
            213CBC9883B928839FD802A1280204E01010E58AB4D88CB3E8006D318A228089
            90128C37A8001E220D5D688D34C800240089AC38823B45820AF107B2981CE796
            8E71876E30306DEBA88EE7A6101E4002D23801A5B88BDC4883D2E05E05A000F9
            4883C3988938708C1350823D05810AF132B6B1900B394631C09010E95BA8388F
            B738827DD824FF3883B2214F09919103E08DF828838E688CAD380226782C5DF5
            4E491033A84800142902F5788F22E091BEB81E77E091031090C5C802047982F2
            503F22C310397504F5000123F892131093BA389319898DA42002A6B08DF90892
            4C498CE14800FFE36882CA98344741893FB00A12408248A994561992F9B88FCA
            D28F1EA99357999527694013C0926E6404F5E00062498FB8488A4B390119E98B
            C6C12A0D909154C9973338923C5992C88882A79096C126043113967759910470
            91DFF88FD848283799916C399088599028280FDE8110EBD403D4609791099379
            398D855999F9E89469540052698D83098E9C298E249082CA28171BD23F462013
            263896A9698F7B9991F53455FEF88F9B79033D998262717693C30318B0502420
            3C465982C069918A589655698DBEB843F4F806FF389BAB599B58799B290801C5
            89105E3903C273249A7682D73999D92990DB198C976902DC019BC8A997DA6903
            CB8982CAF81FFF2CC98933B01402E29BBF8997D8999C849984B16983D24056A2
            709C38F8A03A289EFD5903FFA9986FE09CA31903C2533C5ED392092A99943902
            167A837E99A232589C1945A136888D81C9835DC8A01ADA992BF893AF80103CF6
            022E9153F58082F179A2A031A33AE897304A833529309979833E45A32EBA8AE4
            E99628889EE932A03B909065D04942AAA0F2999CD460A4159A0D38789F28A08D
            D748A647AA92AA99A14088A32B084250B99839209765E25BA659A2A8B9A0FC39
            00028210495A83D818874EFA528A11A803E05305B0838ACA9AF4E99F70AA82F2
            201761AA0347F11F41DAA5263A9F1E11A26A59A60BB1A836784F27600762AA85
            6F109539A8A8FF77DAA68F7AA3B669922BB8952280A538101674409D2938A49C
            3A0231430D883A004E39A135B8A429008C3518A1A2C0A23ED54B8E6A982BB0A1
            CC599C608103BB9921A041A2F0E9A5441A2ABB720729EA94AB20A8CDB002AA3A
            83831A69E1BA17CEDAA73B19AD91AA8256FA1F0801AD2870A90022162AC8AB0C
            8A96CC60A1FB580A9F2A83FBC850C43A83110A1A813AA83C5757B4A99CF1AA82
            72EAAD734903618106A5B9AFDCDAAB2380961D200F109A3CD440831297027A30
            837E49167690A47E2917CB6AA36F1AAB89C982932A0282660372F91FFAAAB19B
            CAA04EF90A0472AA011B94C7898D016602C89AA86EB4B24A4AA741B92A520AB1
            32EB992C48ABFF71B932347014187B07D5B9AB1BEBB3021433623A39232BAC15
            9B02AA9AB28005A34EEBAD39E9AE6D699E2D58B3D97AB42EC010FF210F2CC8AF
            7D0A29BE7826C243A1CF690AFE88441FA296090B93E0D9A21654AB7780A1AF1A
            B3E529AB2ED89C23FA513080100DA0B27790A75EDBB3708BA2CFE95BC7F99CD4
            E0972D306D6FA0B6D673B24ABBB9DF1998300B85119BA39551AD32E015AF80A0
            2BC8B7AE8A91A3EB5B1160AC6767382EB02189ABB88139A85A9215906BAF265B
            BB71CA9B14BB9E46962E19BBB75F1BBA33899625500F669A9204CA8C253B0181
            EBA2ACE28FB31B86D22BAF9511882FB09BE4C3A52DE8BBC2D99F4A0B94241052
            26200FA06664FF87A35044D38F90FBAE83D3BE922A435CD198B142AD772084F6
            2B937CE99A9C8492DF154FAB0048585B3A35CABD903AB54518A069D9442AB09B
            72B10A5DABBDA0FBBBDF18BE03921FE5F2BF28E00785A44A37F9BC714BB94368
            A5BA991F2D400D3D9C104318C1C3F9B7C77AB68761B7F92AAAEB1B03D22A84A6
            405C4A7487317324990AC1DBEBAAD588BAC73ABE37209D4C1A98059CC3335B84
            9F34717535C03B420D295CBF597CBF8FCAB84E107FD8200132D8C48688C0557B
            C600322E5BE4066BCCB54548C4F89BBF59C0B4383CA5726B84566A43F234C307
            C007230A994448C8716CC886F5A9782C89204C858D3C521AD25512E0B958BCC2
            708C9166FB94FF57B0AC1FE9A8061CBD9D4C8588D1A31249CAA5BCA75FEAC1A8
            FAA14DD0A49B0C8A7A0CC56D6BB2D960CBB79C94C129C13268C457B0216DF8AC
            644CB55548B7C653CC5468C9A8CCC556E0BA6FCBC28AACC35428C20D55006D3C
            C86F4C8DAC19BC529015CF6C96AF2C30C13C84F2B002D450852E79CEC349B098
            3B054C7BC71E0CAB935BC65568A52025C45588CDAC39B45570B0892CB5012DCD
            03ADCEFB6BD0D78CCF859CCAABAC9FFEECCD0E4DA555A88C054DC95388D021E9
            C22F208001871777811776A41FB45C373338C6DF2CD0E12CD1236CCF245D95CC
            DC02D11916FD24011A00C62CD3A4DD7CCAD16CCF2448D073523A222D8539DDA0
            DA9C02D19990FF6FB085C33BBC0370D511B085AC0A0FE3CBCD0DFDC10F8DD423
            A8D422E09D377DD0167DC9727CAC6161D54CB8D5AC2A3DB122A6BF4C92B16CCF
            66DD235A72C523BDD6D588B0FB0C934BD100883ABC5B98D8566DA172AD142AD4
            CFADECCE474DD6F30C583BB5C00580D36B8DCAFAAC25C7910D5CA8A40AD0D595
            63D8A18DB28A9A3E07BBD1463DD3103D85E21C9443A96FE55CC99BEDA83F3B27
            3E75DA594DD5098117B1A3D23061D85219013E0577132D95610DD01E2D85CA18
            36239A3DD950DBC74C966C6DB61A200293010ADBB8D50C31CA023034403B02D1
            1316868DB21B0CAE00F9CF92DBDC4568A56E442047AB440961CC6E6CCACA8CDE
            07D0015045A8FF593DA809A1016540C70253D814EA53A8E0CC31EDCA932D85F0
            8DDC36CBC013D0014BD1D42EF8D44D0B7780B38D000E8B37F00FB3A1101C2E16
            DCCCDA12CCDC8BBCC30C610DA2CC5002A0A8D4FDB9B8DCAD35C81033EA97F040
            2E045E4D3DB5CC36DE8DD0ECDA21FCE03B15A6321C97153EC4B76D964ABBBA66
            FB06D66B039AA69F389EA4777D9879DD820E40136DB1DD861B4D0C61DF7A8ACC
            7CAAC58EFABAFADC0CD7B0E336D0DF6A89A4402ED9422E84CF8DB947E1C5D3A9
            10317E9A649ECB1CDDA05A1898C6FDE544A069FEE88B0F7AE5F09AE52A58E77F
            E0E5AA320390BEE7F78CDFF98CAE59BD8C4A00AC591D9BCBDDDE298E9BD9405C
            7D2C9436B014FF625EE933CEB1F599E98DBB04617A838A7EC08CFE99D9C01717
            8B030AD1BB4BDEEAE6F3D24010B83528D31D1DEA2768A5A49E94A66EAD88C1B3
            ABCEA0C9EA8CD2DE4F56CEDEB45BEB26B8C111DE9C3A40DFF68DE1E83AEDE2FE
            4DCA1DE4C50ECE2768B5F6C4143BC0C632DEE7348E93F25E83B30ECB633DABD5
            00811239EE9543DD961CD8F33EEFC42ED6EE5D82CA28553ECDEF90E3EFBD0EE8
            018F93F50ECF53AB16D6FDCE5910B5048F88C9BC976A71E2A02E8A1BEFA63DF1
            B0190FF265DEDA92E7F1D7EE9218D0F22EFFF2301FF3323FF3345FF3364FF369
            78F298C80018807A3D7F013F1FF43E3FF4404FF4425FF4487FF44A6FF44C9FF4
            448FF1004DD663523FF53AFFF0569F84161F4A54BFF552DF8757FFF53798F5C8
            C4F5645F855E0FF6682FF232208067D8F66EFFF609A8EF1320817458F7767FF7
            19088200B8F77CDFF77EFFF7801FF8823FF8845FF8867FF8889FF88ABFF88CDF
            F88EFFF8901FF9381002003B}
          Stretch = True
        end
        object QRShape56: TQRShape
          Left = 66
          Top = 221
          Width = 1
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            113.770833333333300000
            174.625000000000000000
            584.729166666666800000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape57: TQRShape
          Left = 89
          Top = 221
          Width = 1
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            113.770833333333300000
            235.479166666666700000
            584.729166666666800000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape58: TQRShape
          Left = 113
          Top = 221
          Width = 1
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            113.770833333333300000
            298.979166666666700000
            584.729166666666800000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape59: TQRShape
          Left = 136
          Top = 221
          Width = 1
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            113.770833333333300000
            359.833333333333400000
            584.729166666666800000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape60: TQRShape
          Left = 159
          Top = 221
          Width = 1
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            113.770833333333300000
            420.687500000000000000
            584.729166666666800000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape61: TQRShape
          Left = 182
          Top = 221
          Width = 1
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            113.770833333333300000
            481.541666666666700000
            584.729166666666800000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRLabel70: TQRLabel
          Left = 50
          Top = 220
          Width = 13
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            132.291666666666700000
            582.083333333333300000
            34.395833333333330000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'D'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel71: TQRLabel
          Left = 74
          Top = 220
          Width = 9
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            195.791666666666700000
            582.083333333333300000
            23.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'S'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel72: TQRLabel
          Left = 97
          Top = 220
          Width = 11
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            256.645833333333300000
            582.083333333333300000
            29.104166666666670000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'T'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel73: TQRLabel
          Left = 118
          Top = 220
          Width = 14
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            312.208333333333300000
            582.083333333333300000
            37.041666666666670000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Q'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel74: TQRLabel
          Left = 142
          Top = 220
          Width = 14
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            375.708333333333300000
            582.083333333333300000
            37.041666666666670000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Q'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel75: TQRLabel
          Left = 168
          Top = 220
          Width = 9
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            444.500000000000000000
            582.083333333333300000
            23.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'S'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel76: TQRLabel
          Left = 190
          Top = 220
          Width = 9
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            502.708333333333300000
            582.083333333333300000
            23.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'S'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRShape62: TQRShape
          Left = 43
          Top = 242
          Width = 164
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            113.770833333333300000
            640.291666666666800000
            433.916666666666800000)
          Shape = qrsHorLine
        end
        object QRLabel77: TQRLabel
          Left = 396
          Top = 367
          Width = 53
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1047.750000000000000000
            971.020833333333300000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Pregador:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape63: TQRShape
          Left = 483
          Top = 526
          Width = 1
          Height = 64
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            169.333333333333300000
            1277.937500000000000000
            1391.708333333333000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape64: TQRShape
          Left = 611
          Top = 526
          Width = 1
          Height = 64
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            169.333333333333300000
            1616.604166666667000000
            1391.708333333333000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape65: TQRShape
          Left = 303
          Top = 235
          Width = 437
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            801.687500000000100000
            621.770833333333400000
            1156.229166666667000000)
          Shape = qrsHorLine
        end
        object QRShape66: TQRShape
          Left = 211
          Top = 202
          Width = 1
          Height = 66
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            174.625000000000000000
            558.270833333333400000
            534.458333333333400000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRDBText109: TQRDBText
          Left = 479
          Top = 668
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            1767.416666666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText120: TQRDBText
          Left = 479
          Top = 696
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            1841.500000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText121: TQRDBText
          Left = 479
          Top = 725
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            1918.229166666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText122: TQRDBText
          Left = 479
          Top = 753
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            1992.312500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText123: TQRDBText
          Left = 479
          Top = 782
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            2069.041666666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText124: TQRDBText
          Left = 479
          Top = 810
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            2143.125000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText125: TQRDBText
          Left = 479
          Top = 838
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            2217.208333333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText126: TQRDBText
          Left = 479
          Top = 867
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            2293.937500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText127: TQRDBText
          Left = 479
          Top = 895
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1267.354166666667000000
            2368.020833333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText128: TQRDBText
          Left = 472
          Top = 924
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1248.833333333333000000
            2444.750000000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Cheque10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText129: TQRDBText
          Left = 566
          Top = 668
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            1767.416666666667000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText130: TQRDBText
          Left = 566
          Top = 696
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            1841.500000000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText131: TQRDBText
          Left = 566
          Top = 725
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            1918.229166666667000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText132: TQRDBText
          Left = 566
          Top = 753
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            1992.312500000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText133: TQRDBText
          Left = 566
          Top = 782
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            2069.041666666667000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText134: TQRDBText
          Left = 566
          Top = 810
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            2143.125000000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText135: TQRDBText
          Left = 566
          Top = 838
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            2217.208333333333000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText136: TQRDBText
          Left = 566
          Top = 867
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            2293.937500000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText137: TQRDBText
          Left = 566
          Top = 895
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            2368.020833333333000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText138: TQRDBText
          Left = 559
          Top = 924
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1479.020833333333000000
            2444.750000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Banco10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText139: TQRDBText
          Left = 673
          Top = 950
          Width = 57
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            2513.541666666667000000
            150.812500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'TotalRDC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
      end
    end
    object QuickRep2: TQuickRep
      Left = 320
      Top = 314
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = RxMRDC
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
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Values = (
        20.000000000000000000
        2970.000000000000000000
        20.000000000000000000
        2100.000000000000000000
        20.000000000000000000
        20.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      object QRBand1: TQRBand
        Left = 8
        Top = 8
        Width = 779
        Height = 1105
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
          2923.645833333333000000
          2061.104166666667000000)
        BandType = rbDetail
        object QRShape67: TQRShape
          Left = 39
          Top = 69
          Width = 701
          Height = 1005
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2659.062500000000000000
            103.187500000000000000
            182.562500000000000000
            1854.729166666667000000)
          Pen.Width = 2
          Shape = qrsRectangle
        end
        object QRShape68: TQRShape
          Left = 39
          Top = 997
          Width = 700
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            103.187500000000000000
            2637.895833333333000000
            1852.083333333333000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRShape74: TQRShape
          Left = 39
          Top = 175
          Width = 700
          Height = 41
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            108.479166666666700000
            103.187500000000000000
            463.020833333333400000
            1852.083333333333000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRShape75: TQRShape
          Left = 39
          Top = 954
          Width = 589
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            116.416666666666700000
            103.187500000000000000
            2524.125000000000000000
            1558.395833333333000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRLabel2: TQRLabel
          Left = 592
          Top = 1073
          Width = 149
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1566.333333333333000000
            2838.979166666667000000
            394.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '1'#170' via: Contabilidade - 2'#170' via: Igreja'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText58: TQRDBText
          Left = 646
          Top = 151
          Width = 20
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1709.208333333333000000
            399.520833333333300000
            52.916666666666670000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText59: TQRDBText
          Left = 676
          Top = 151
          Width = 25
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1788.583333333333000000
            399.520833333333300000
            66.145833333333330000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Mes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText60: TQRDBText
          Left = 709
          Top = 151
          Width = 24
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1875.895833333333000000
            399.520833333333300000
            63.500000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Ano'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText61: TQRDBText
          Left = 154
          Top = 151
          Width = 67
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            407.458333333333300000
            399.520833333333300000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'IgrejaBairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText62: TQRDBText
          Left = 554
          Top = 151
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1465.791666666667000000
            399.520833333333300000
            92.604166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText78: TQRDBText
          Left = 659
          Top = 93
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1743.604166666667000000
            246.062500000000000000
            108.479166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText88: TQRDBText
          Left = 682
          Top = 254
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1804.458333333333000000
            672.041666666666700000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText89: TQRDBText
          Left = 95
          Top = 254
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            672.041666666666700000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText90: TQRDBText
          Left = 95
          Top = 282
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            746.125000000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText91: TQRDBText
          Left = 95
          Top = 311
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            822.854166666666700000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText92: TQRDBText
          Left = 95
          Top = 339
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            896.937500000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText93: TQRDBText
          Left = 95
          Top = 368
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            973.666666666666700000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText94: TQRDBText
          Left = 95
          Top = 396
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1047.750000000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText95: TQRDBText
          Left = 95
          Top = 424
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1121.833333333333000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText96: TQRDBText
          Left = 95
          Top = 453
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1198.562500000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText97: TQRDBText
          Left = 682
          Top = 282
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1804.458333333333000000
            746.125000000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText98: TQRDBText
          Left = 682
          Top = 311
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1804.458333333333000000
            822.854166666666700000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText99: TQRDBText
          Left = 680
          Top = 339
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            896.937500000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText100: TQRDBText
          Left = 680
          Top = 368
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            973.666666666666700000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText101: TQRDBText
          Left = 680
          Top = 396
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            1047.750000000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText102: TQRDBText
          Left = 680
          Top = 424
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            1121.833333333333000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText103: TQRDBText
          Left = 680
          Top = 453
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1799.166666666667000000
            1198.562500000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText104: TQRDBText
          Left = 681
          Top = 481
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1801.812500000000000000
            1272.645833333333000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText105: TQRDBText
          Left = 95
          Top = 481
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1272.645833333333000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText106: TQRDBText
          Left = 47
          Top = 1020
          Width = 54
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            124.354166666666700000
            2698.750000000000000000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Diaconos1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText107: TQRDBText
          Left = 47
          Top = 1039
          Width = 54
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            124.354166666666700000
            2749.020833333333000000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Diaconos2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText108: TQRDBText
          Left = 109
          Top = 1057
          Width = 55
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            288.395833333333400000
            2796.645833333333000000
            145.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Tesoureiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText111: TQRDBText
          Left = 673
          Top = 978
          Width = 57
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            2587.625000000000000000
            150.812500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'TotalRDC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText113: TQRDBText
          Left = 95
          Top = 510
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1349.375000000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText114: TQRDBText
          Left = 674
          Top = 510
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1783.291666666667000000
            1349.375000000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel78: TQRLabel
          Left = 211
          Top = 77
          Width = 357
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.854166666666670000
            558.270833333333300000
            203.729166666666700000
            944.562500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'IGREJA DO EVANGELHO QUADRANGULAR'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 13
        end
        object QRLabel79: TQRLabel
          Left = 232
          Top = 99
          Width = 286
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.854166666666670000
            613.833333333333300000
            261.937500000000000000
            756.708333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'RDC - Rela'#231#227'o de Dizimistas no Culto'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 13
        end
        object QRLabel80: TQRLabel
          Left = 639
          Top = 78
          Width = 18
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1690.687500000000000000
            206.375000000000000000
            47.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#186
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel81: TQRLabel
          Left = 151
          Top = 125
          Width = 135
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            399.520833333333300000
            330.729166666666700000
            357.187500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Igreja (cidade, bairro)'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel82: TQRLabel
          Left = 479
          Top = 125
          Width = 37
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1267.354166666667000000
            330.729166666666700000
            97.895833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CNPJ'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel83: TQRLabel
          Left = 639
          Top = 125
          Width = 32
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1690.687500000000000000
            330.729166666666700000
            84.666666666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Data'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 11
        end
        object QRLabel84: TQRLabel
          Left = 479
          Top = 151
          Width = 67
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1267.354166666667000000
            399.520833333333300000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '62.955.505/'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape76: TQRShape
          Left = 639
          Top = 110
          Width = 93
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            1690.687500000000000000
            291.041666666666700000
            246.062500000000000000)
          Shape = qrsHorLine
        end
        object QRShape77: TQRShape
          Left = 154
          Top = 167
          Width = 325
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            407.458333333333400000
            441.854166666666700000
            859.895833333333400000)
          Shape = qrsHorLine
        end
        object QRShape78: TQRShape
          Left = 547
          Top = 167
          Width = 84
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            1447.270833333333000000
            441.854166666666700000
            222.250000000000000000)
          Shape = qrsHorLine
        end
        object QRShape79: TQRShape
          Left = 642
          Top = 167
          Width = 91
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            1698.625000000000000000
            441.854166666666700000
            240.770833333333300000)
          Shape = qrsHorLine
        end
        object QRLabel85: TQRLabel
          Left = 669
          Top = 151
          Width = 5
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1770.062500000000000000
            399.520833333333300000
            13.229166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '/'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel86: TQRLabel
          Left = 702
          Top = 151
          Width = 5
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1857.375000000000000000
            399.520833333333300000
            13.229166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '/'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel87: TQRLabel
          Left = 46
          Top = 1054
          Width = 57
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            121.708333333333300000
            2788.708333333333000000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tesoureiro'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel88: TQRLabel
          Left = 129
          Top = 998
          Width = 172
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            341.312500000000000000
            2640.541666666667000000
            455.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nome dos di'#225'conos respons'#225'veis'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel89: TQRLabel
          Left = 549
          Top = 998
          Width = 59
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1452.562500000000000000
            2640.541666666667000000
            156.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Assinatura'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel91: TQRLabel
          Left = 267
          Top = 966
          Width = 351
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            706.437500000000000000
            2555.875000000000000000
            928.687500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'TOTAL DO RDC (Transportar ao REFC:_______):'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRShape81: TQRShape
          Left = 88
          Top = 215
          Width = 1
          Height = 740
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            1957.916666666667000000
            232.833333333333400000
            568.854166666666700000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape86: TQRShape
          Left = 39
          Top = 1054
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2788.708333333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape87: TQRShape
          Left = 39
          Top = 1035
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2738.437500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape89: TQRShape
          Left = 39
          Top = 528
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1397.000000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape90: TQRShape
          Left = 39
          Top = 499
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1320.270833333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape91: TQRShape
          Left = 39
          Top = 471
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1246.187500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape92: TQRShape
          Left = 39
          Top = 442
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1169.458333333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape93: TQRShape
          Left = 39
          Top = 414
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1095.375000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape94: TQRShape
          Left = 39
          Top = 386
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1021.291666666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape95: TQRShape
          Left = 39
          Top = 357
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            944.562500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape96: TQRShape
          Left = 39
          Top = 329
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            870.479166666666800000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape97: TQRShape
          Left = 39
          Top = 300
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            793.750000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape98: TQRShape
          Left = 39
          Top = 272
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            719.666666666666800000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape99: TQRShape
          Left = 39
          Top = 243
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            642.937500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape105: TQRShape
          Left = 439
          Top = 215
          Width = 1
          Height = 740
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            1957.916666666667000000
            1161.520833333333000000
            568.854166666666700000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape106: TQRShape
          Left = 547
          Top = 215
          Width = 1
          Height = 740
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            1957.916666666667000000
            1447.270833333333000000
            568.854166666666700000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape107: TQRShape
          Left = 627
          Top = 215
          Width = 1
          Height = 740
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            1957.916666666667000000
            1658.937500000000000000
            568.854166666666700000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRShape108: TQRShape
          Left = 389
          Top = 1017
          Width = 1
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            148.166666666666700000
            1029.229166666667000000
            2690.812500000000000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRLabel92: TQRLabel
          Left = 205
          Top = 218
          Width = 106
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            542.395833333333300000
            576.791666666666700000
            280.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nome dos dizimista'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel93: TQRLabel
          Left = 456
          Top = 218
          Width = 73
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1206.500000000000000000
            576.791666666666700000
            193.145833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#186' do Cheque'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel94: TQRLabel
          Left = 564
          Top = 218
          Width = 50
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1492.250000000000000000
            576.791666666666700000
            132.291666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#186' Banco'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel95: TQRLabel
          Left = 651
          Top = 218
          Width = 68
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1722.437500000000000000
            576.791666666666700000
            179.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Valor em R$'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel96: TQRLabel
          Left = 54
          Top = 249
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            658.812500000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '01'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel97: TQRLabel
          Left = 54
          Top = 277
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            732.895833333333300000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '02'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel98: TQRLabel
          Left = 54
          Top = 306
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            809.625000000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '03'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel99: TQRLabel
          Left = 54
          Top = 334
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            883.708333333333300000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '04'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel100: TQRLabel
          Left = 54
          Top = 448
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1185.333333333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '08'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel101: TQRLabel
          Left = 54
          Top = 420
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1111.250000000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '07'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel102: TQRLabel
          Left = 54
          Top = 391
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1034.520833333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '06'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel103: TQRLabel
          Left = 54
          Top = 363
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            960.437500000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '05'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel104: TQRLabel
          Left = 54
          Top = 505
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1336.145833333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '10'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel105: TQRLabel
          Left = 54
          Top = 476
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1259.416666666667000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '09'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel107: TQRLabel
          Left = 353
          Top = 186
          Width = 76
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            933.979166666666700000
            492.125000000000000000
            201.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'DIZIMISTAS'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRImage1: TQRImage
          Left = 51
          Top = 77
          Width = 93
          Height = 91
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            240.770833333333300000
            134.937500000000000000
            203.729166666666700000
            246.062500000000000000)
          Picture.Data = {
            0954474946496D616765DE150000474946383961C800C800C40000FBD756FF80
            808A8A89B94E9D4886B9010101FEE99E494949CFCFCF5C4F1F5D274F910000DC
            A6CE310D163C6C93FF4141294C6A913C7B282926FFFFFFFF0000ABC1D2FEF5D5
            F4CAD6D5E0EAEFEFEF8E7E48F6E9F3FFDFDFE8F0F677A4CBFFFAEA2C00000000
            C800C8000005FFE0248E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0
            A070482C1A8FC8A472C96C3A9FD0A8744AAD5AAFD8AC76CBED7ABFE0F00A8338
            2130A38A783DAD141A2281443011140A6577A33CCAF07F170182838485868788
            898A8B8C851C2516069293949596979899971A77151977700777021F12770722
            1F6E050C961F390114B2B3B4B5B6B7B8B9BABBBCB517250600C2C3C4C5C6C7C8
            C9C79C051AAB05150DA776771A1D757705C716B0BDDEDFE0E1B8BF24C1CAE7E8
            E9C5CC73D9CC0507A6A313A2D5DBDDE2F9FAFBB417AF23E6D4091C582C41366A
            05E4C1CB86C741B604C8B8E18825EB41A38B18336A7C308B1CC06192224D1219
            921249032753FF9A5C59E9DD2986D94C495078A012318937285208C0E6844E7F
            E586E10C724605C25131B3D5536A22E0D01A3A79F62CF11398D0217624A4E8C0
            49E1B37A4BEF48C850E283537C3BA752EDF84FC45921F5E8A010F50C83A903F5
            9EDDF943E2265AA96A45540D2AECA90F795AE74293F78181830CA63464C03BEF
            C4DB9CB3004FE0476BC11D7A3045DC59C0B922899F6D275C9E40501D286DC8EE
            64A096E1C32B32D7404B2066A0ED6AA899499496E5B9C087780292CBBD339CC2
            83D31DAD16EEDBFA5C5751108F7DFE70074DD955C50C509F3E31F888E6C5E925
            262BBA00E9D2CF47A0260C6068F573A604B8D96D8C13AA091978570264CD1843
            9F61334425DCFF70E9E165C268C3C5275874078E775F7F6F64F0096CEBC0B302
            33C68897CA6F3428781E839FC5F36001CD4938C17C1F9127C285B115205764C6
            1824170A08D863E0087E95278B66E8A5F81F0910C2079D2C1EB9751590341623
            137B0734A08131D2F0650276C788E8A48C369828429105D073E4084972E6228C
            5FD667218DCCEC31821D5716F3590AD420D35B8C6E0A99D689A5A527C199EDB5
            B824054DAAF6E48C5102809880D8D4398C7F5B4923E98F8C8209DC900B066A64
            6A13A4C9CF9A6C5508E58506BDB1E39C0564378C8E7826948C978A6A5AA27963
            A258A6832588BA0FA94C4AD767A6AD6920CF01908E20CAA500748702063E7639
            82598B8689EBFF66BAAAB7A2A1F295CAA77DD5A52A4105A08E80E3AB1E2AC65F
            321622288398D87A6A1CAF48BA17E1A189AE56AC3BEC9DB0A19436A2009E32B4
            9298E0B5649AB9E27B6AE29B9ABE0389ABA50976B80A4057297049B06FD56EFA
            67AEF24E30E8B6F7761BACA9C45A77100B1B5E5A9909D072A84CBB7F75CA5983
            0780EAAB3EC022FA70B5EAB033F109A2AC0B8041899DC089C57AA26C2DA780DE
            6CE4C2254F78F2B76F22238F642CA8F286CBD0A460293A5E526BEBC150833CCB
            020DB4EDF6DB70BF9D8DB6BDBE11F7DD71336C9AC93E3B8D8E340DACAAC22A97
            4A43280959A943B39F44D6521C4C90477EE70992570E93DECEE12B2CB8C808ED
            0202D2588C74FFBF5B16487651B50EFBF4C7F1AE9D9072B0C72E7B7278CE6E3B
            ECBEF60C14D6A76A9710E92AF428EBA49DA4F0AF6B78B0D6F1AD69B74E9C8708
            0880C12BD44F507DF5C09F70BDF5DC6FFF4AEE9AFB5DE3589F4B633433829790
            783AA9AA61F0BB083B0E8FD7E432013EDFBBB7C9B99D09BD20BCD1CD4A57C64C
            A7B24E984D751E6B5C67E6D72335D8CF5EB4D0DDE6B2E6A8DF956F78C260C601
            B24782E3FD2D1B640912669A670BCFA0C20D08289711EE67B5BEF12E651793CD
            E7C40230F20D0E83CA50081C52E7AE18C0AB840C0CDB03312741F111A3782D00
            1D0E2B684315684C1906099C870ED84318FC507E27C4830A8BC0C217794B7F6F
            BA0BF756F03FFF62B0638B253857325215BD8029EF6CF02321163FD0A303DCEE
            8E3AE8E2605EF8C6181620593C325F0D394839991D235574308503DFE7C3F82D
            70837AB11CE40E47033D7E9187163208254DB0A1F389859026D80F14E711333E
            26D066CFDB640BE875034B5E0D8CBDCB12CB64428C546DD005745C622D2B6387
            238970750A74DD1CEE683B34A8A8041520A6ED5CE94258660A632CC85306B716
            033A69ED65A2D81123ADE848D749B272E462A5F58EF2CDCBD5A2887C249E2AEB
            75256365C3812FF880353BB4973E388B58557CC1151758CEC885F370E4EC2733
            F387C953C18A05626188004069945615442C7CC98AD34E19357ED47364EA638E
            92F03741830AFF71054BB12343C97807E28D0278CB9AD636F5D94D8B42E33800
            D568C3F0F733300DC314294C223C6F200F69401454FF5ADC0859D79CE2897336
            321D55F8D2298C8322010134D929E21252B0E5A18DA8C3D9CB7192C62A166DB4
            850485580CD367040438708B389A28F3B05A1AA3C6D4AB33056B479F29C02A08
            0F00B4FA2545D5E6D27072350E49FD95C38C18402C684CAD570D665F15D6416A
            54CD8BAF2C28B11469859809A36C2B75C13E39A3D5634E15AE4AA52961356985
            270A1598A8DC875B2916589E2DD5997D0CA0549FD081B1E115B171642B675F2A
            4E6C8056B0A2652ABAE4248527EE09B67B759E6A9387D13E38F6AB9045D45C63
            5BC1C045A165FFC4386D728BCADB9C65F4B7AE0D2E6C8F712C4026E189B735E5
            5A15BB5C35F4F6B9718D6EBE80B60C5090D508D204894AAD9A5BF6EAA3B37FF5
            ED63D92459EA120331B32582F0980500EDAE37B5FF0DDB51E11B5AB912B6BEA7
            302F10ECA2CBAAC2B191726C2B6F034C61E082B5A6AA43C73B86F68332868863
            1FE6668877EBDEB70E9842C2BD263C46AA03550812190E4E2C84F30160D68237
            1FBA43F1FEE8695DFCD2B069EA157245DBCB58E7B616C9AF2D70E7C4A2611F60
            A01E4C0BCF7E63CCD219F715A646BE3193944C415B1E01210CC6541FF3A9D996
            2EB70CCDEDAA9AA57BE1A3BD6C0815A80700A18CDC074F39C2FF045589C37BE2
            0BB7AF085F76FF873A8E5BE0ED6655C28442EA91C581CEF10E97C53B50C552C2
            7C8E20F777C8E228F277F71C56FAFAF1BE3AC0803BEF40EA7378188186E62B95
            DF7B654E6759AC7FE64105664DEBFB6096BF20D6ED993DAB67E812186262D441
            0692496C5AC77920A64EB67F898CE9012D1ACB1CF51B33BA4C023A56C0AC664D
            A600344019C8492001D726C8ADE9DC82CDBA3485CC06ECA6C39164BF911699EB
            8E87406302EF781B1BC6B896B2AE115DE566C7778FE395A1081050A5CABD7B26
            097877C13560F0460923DB3256767BD1BC6A675F7235D0A438C121D2718F0B64
            DE353B34B7F19CE96FFB3ADC2FFC0027E880905ABB3C4AC726739DCD3C72BC28
            BAD7FC1E2C1FFF1509E69F3BBD18202FB3C819CEEB7D83A3D392FD8026A3F574
            A7C39C71A80E87AA3FCB6A369B4BD25DEF3AA5335B6F3B535D02E85683A6593D
            5D79F83CED518AFAD0A7CEED708646C0265FB3D35285F7B47F7DA89A510BC40B
            CC01FDAC818A310F8C7CCD5E6E36E835D781593CDBBDB0F915C04BF12747B618
            3AAF029D3CE002A84FBDEA57CFFAD6BBFEF5B08FFDEB3912D980A0C402B8CFBD
            EE77CFFBDEFBFEF7C00FBEEF2F7FD5E618DFF8AD2EBCF205426F16E8E4F8D0E7
            CC7C974FFD7334DFF3D1CF3E3F925FFDEE1BE3FA2A088446C64FFEF223E211E5
            D684FAD7CFFEF6BB1F136894BCFCE74FFFFADBFFFEF8CFBFFEF7CFFFFEFBFFFF
            308001153080FF0458800678800898800AB8800CD88006981B2370010C308114
            58811678811898811AB8811CD88116B801395001043082245882267882289882
            2AB8822CD88226982C0C30003238833458833678833898833AB8833C58838942
            0322E8824238844458842808833D98844AB8844C88833F380341688452388554
            488248D8845828830AA00011908559F8843210851EE0806458866678861E6085
            25108332E8816EB88177A0006F3887164883E4F6025198606C108557380060B8
            03FF33048D31837F080379387F7CB886848815D9708738408385888724A8876B
            908824C0867E38044B016B3A808991E80287287F9638029E3804D550000E3004
            761882934802FF32710052155003378B03978A69A08697B88823E08539180109
            213CBC9883B928839FD802A1280204E01010E58AB4D88CB3E8006D318A228089
            90128C37A8001E220D5D688D34C800240089AC38823B45820AF107B2981CE796
            8E71876E30306DEBA88EE7A6101E4002D23801A5B88BDC4883D2E05E05A000F9
            4883C3988938708C1350823D05810AF132B6B1900B394631C09010E95BA8388F
            B738827DD824FF3883B2214F09919103E08DF828838E688CAD380226782C5DF5
            4E491033A84800142902F5788F22E091BEB81E77E091031090C5C802047982F2
            503F22C310397504F5000123F892131093BA389319898DA42002A6B08DF90892
            4C498CE14800FFE36882CA98344741893FB00A12408248A994561992F9B88FCA
            D28F1EA99357999527694013C0926E6404F5E00062498FB8488A4B390119E98B
            C6C12A0D909154C9973338923C5992C88882A79096C126043113967759910470
            91DFF88FD848283799916C399088599028280FDE8110EBD403D4609791099379
            398D855999F9E89469540052698D83098E9C298E249082CA28171BD23F462013
            263896A9698F7B9991F53455FEF88F9B79033D998262717693C30318B0502420
            3C465982C069918A589655698DBEB843F4F806FF389BAB599B58799B290801C5
            89105E3903C273249A7682D73999D92990DB198C976902DC019BC8A997DA6903
            CB8982CAF81FFF2CC98933B01402E29BBF8997D8999C849984B16983D24056A2
            709C38F8A03A289EFD5903FFA9986FE09CA31903C2533C5ED392092A99943902
            167A837E99A232589C1945A136888D81C9835DC8A01ADA992BF893AF80103CF6
            022E9153F58082F179A2A031A33AE897304A833529309979833E45A32EBA8AE4
            E99628889EE932A03B909065D04942AAA0F2999CD460A4159A0D38789F28A08D
            D748A647AA92AA99A14088A32B084250B99839209765E25BA659A2A8B9A0FC39
            00028210495A83D818874EFA528A11A803E05305B0838ACA9AF4E99F70AA82F2
            201761AA0347F11F41DAA5263A9F1E11A26A59A60BB1A836784F27600762AA85
            6F109539A8A8FF77DAA68F7AA3B669922BB8952280A538101674409D2938A49C
            3A0231430D883A004E39A135B8A429008C3518A1A2C0A23ED54B8E6A982BB0A1
            CC599C608103BB9921A041A2F0E9A5441A2ABB720729EA94AB20A8CDB002AA3A
            83831A69E1BA17CEDAA73B19AD91AA8256FA1F0801AD2870A90022162AC8AB0C
            8A96CC60A1FB580A9F2A83FBC850C43A83110A1A813AA83C5757B4A99CF1AA82
            72EAAD734903618106A5B9AFDCDAAB2380961D200F109A3CD440831297027A30
            837E49167690A47E2917CB6AA36F1AAB89C982932A0282660372F91FFAAAB19B
            CAA04EF90A0472AA011B94C7898D016602C89AA86EB4B24A4AA741B92A520AB1
            32EB992C48ABFF71B932347014187B07D5B9AB1BEBB3021433623A39232BAC15
            9B02AA9AB28005A34EEBAD39E9AE6D699E2D58B3D97AB42EC010FF210F2CC8AF
            7D0A29BE7826C243A1CF690AFE88441FA296090B93E0D9A21654AB7780A1AF1A
            B3E529AB2ED89C23FA513080100DA0B27790A75EDBB3708BA2CFE95BC7F99CD4
            E0972D306D6FA0B6D673B24ABBB9DF1998300B85119BA39551AD32E015AF80A0
            2BC8B7AE8A91A3EB5B1160AC6767382EB02189ABB88139A85A9215906BAF265B
            BB71CA9B14BB9E46962E19BBB75F1BBA33899625500F669A9204CA8C253B0181
            EBA2ACE28FB31B86D22BAF9511882FB09BE4C3A52DE8BBC2D99F4A0B94241052
            26200FA06664FF87A35044D38F90FBAE83D3BE922A435CD198B142AD772084F6
            2B937CE99A9C8492DF154FAB0048585B3A35CABD903AB54518A069D9442AB09B
            72B10A5DABBDA0FBBBDF18BE03921FE5F2BF28E00785A44A37F9BC714BB94368
            A5BA991F2D400D3D9C104318C1C3F9B7C77AB68761B7F92AAAEB1B03D22A84A6
            405C4A7487317324990AC1DBEBAAD588BAC73ABE37209D4C1A98059CC3335B84
            9F34717535C03B420D295CBF597CBF8FCAB84E107FD8200132D8C48688C0557B
            C600322E5BE4066BCCB54548C4F89BBF59C0B4383CA5726B84566A43F234C307
            C007230A994448C8716CC886F5A9782C89204C858D3C521AD25512E0B958BCC2
            708C9166FB94FF57B0AC1FE9A8061CBD9D4C8588D1A31249CAA5BCA75FEAC1A8
            FAA14DD0A49B0C8A7A0CC56D6BB2D960CBB79C94C129C13268C457B0216DF8AC
            644CB55548B7C653CC5468C9A8CCC556E0BA6FCBC28AACC35428C20D55006D3C
            C86F4C8DAC19BC529015CF6C96AF2C30C13C84F2B002D450852E79CEC349B098
            3B054C7BC71E0CAB935BC65568A52025C45588CDAC39B45570B0892CB5012DCD
            03ADCEFB6BD0D78CCF859CCAABAC9FFEECCD0E4DA555A88C054DC95388D021E9
            C22F208001871777811776A41FB45C373338C6DF2CD0E12CD1236CCF245D95CC
            DC02D11916FD24011A00C62CD3A4DD7CCAD16CCF2448D073523A222D8539DDA0
            DA9C02D19990FF6FB085C33BBC0370D511B085AC0A0FE3CBCD0DFDC10F8DD423
            A8D422E09D377DD0167DC9727CAC6161D54CB8D5AC2A3DB122A6BF4C92B16CCF
            66DD235A72C523BDD6D588B0FB0C934BD100883ABC5B98D8566DA172AD142AD4
            CFADECCE474DD6F30C583BB5C00580D36B8DCAFAAC25C7910D5CA8A40AD0D595
            63D8A18DB28A9A3E07BBD1463DD3103D85E21C9443A96FE55CC99BEDA83F3B27
            3E75DA594DD5098117B1A3D23061D85219013E0577132D95610DD01E2D85CA18
            36239A3DD950DBC74C966C6DB61A200293010ADBB8D50C31CA023034403B02D1
            1316868DB21B0CAE00F9CF92DBDC4568A56E442047AB440961CC6E6CCACA8CDE
            07D0015045A8FF593DA809A1016540C70253D814EA53A8E0CC31EDCA932D85F0
            8DDC36CBC013D0014BD1D42EF8D44D0B7780B38D000E8B37F00FB3A1101C2E16
            DCCCDA12CCDC8BBCC30C610DA2CC5002A0A8D4FDB9B8DCAD35C81033EA97F040
            2E045E4D3DB5CC36DE8DD0ECDA21FCE03B15A6321C97153EC4B76D964ABBBA66
            FB06D66B039AA69F389EA4777D9879DD820E40136DB1DD861B4D0C61DF7A8ACC
            7CAAC58EFABAFADC0CD7B0E336D0DF6A89A4402ED9422E84CF8DB947E1C5D3A9
            10317E9A649ECB1CDDA05A1898C6FDE544A069FEE88B0F7AE5F09AE52A58E77F
            E0E5AA320390BEE7F78CDFF98CAE59BD8C4A00AC591D9BCBDDDE298E9BD9405C
            7D2C9436B014FF625EE933CEB1F599E98DBB04617A838A7EC08CFE99D9C01717
            8B030AD1BB4BDEEAE6F3D24010B83528D31D1DEA2768A5A49E94A66EAD88C1B3
            ABCEA0C9EA8CD2DE4F56CEDEB45BEB26B8C111DE9C3A40DFF68DE1E83AEDE2FE
            4DCA1DE4C50ECE2768B5F6C4143BC0C632DEE7348E93F25E83B30ECB633DABD5
            00811239EE9543DD961CD8F33EEFC42ED6EE5D82CA28553ECDEF90E3EFBD0EE8
            018F93F50ECF53AB16D6FDCE5910B5048F88C9BC976A71E2A02E8A1BEFA63DF1
            B0190FF265DEDA92E7F1D7EE9218D0F22EFFF2301FF3323FF3345FF3364FF369
            78F298C80018807A3D7F013F1FF43E3FF4404FF4425FF4487FF44A6FF44C9FF4
            448FF1004DD663523FF53AFFF0569F84161F4A54BFF552DF8757FFF53798F5C8
            C4F5645F855E0FF6682FF232208067D8F66EFFF609A8EF1320817458F7767FF7
            19088200B8F77CDFF77EFFF7801FF8823FF8845FF8867FF8889FF88ABFF88CDF
            F88EFFF8901FF9381002003B}
          Stretch = True
        end
        object QRDBText63: TQRDBText
          Left = 675
          Top = 538
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1785.937500000000000000
            1423.458333333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText64: TQRDBText
          Left = 95
          Top = 538
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1423.458333333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText65: TQRDBText
          Left = 95
          Top = 566
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1497.541666666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText66: TQRDBText
          Left = 95
          Top = 595
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1574.270833333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText67: TQRDBText
          Left = 95
          Top = 623
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1648.354166666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText68: TQRDBText
          Left = 95
          Top = 652
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1725.083333333334000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText69: TQRDBText
          Left = 95
          Top = 680
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1799.166666666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText70: TQRDBText
          Left = 95
          Top = 708
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1873.250000000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText71: TQRDBText
          Left = 95
          Top = 737
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            1949.979166666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText72: TQRDBText
          Left = 675
          Top = 566
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1785.937500000000000000
            1497.541666666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText73: TQRDBText
          Left = 675
          Top = 595
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1785.937500000000000000
            1574.270833333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText74: TQRDBText
          Left = 673
          Top = 623
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            1648.354166666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText75: TQRDBText
          Left = 673
          Top = 652
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            1725.083333333334000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText76: TQRDBText
          Left = 673
          Top = 680
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            1799.166666666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText77: TQRDBText
          Left = 673
          Top = 708
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            1873.250000000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText79: TQRDBText
          Left = 673
          Top = 737
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            1949.979166666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText80: TQRDBText
          Left = 674
          Top = 765
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1783.291666666667000000
            2024.062500000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText81: TQRDBText
          Left = 95
          Top = 765
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2024.062500000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText82: TQRDBText
          Left = 95
          Top = 794
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2100.791666666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText83: TQRDBText
          Left = 674
          Top = 794
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1783.291666666667000000
            2100.791666666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape69: TQRShape
          Left = 39
          Top = 812
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2148.416666666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape70: TQRShape
          Left = 39
          Top = 783
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2071.687500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape71: TQRShape
          Left = 39
          Top = 755
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1997.604166666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape72: TQRShape
          Left = 39
          Top = 726
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1920.875000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape73: TQRShape
          Left = 39
          Top = 698
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1846.791666666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape80: TQRShape
          Left = 39
          Top = 670
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1772.708333333334000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape82: TQRShape
          Left = 39
          Top = 641
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1695.979166666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape83: TQRShape
          Left = 39
          Top = 613
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1621.895833333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape84: TQRShape
          Left = 39
          Top = 584
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1545.166666666667000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape85: TQRShape
          Left = 39
          Top = 556
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            1471.083333333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRLabel106: TQRLabel
          Left = 54
          Top = 533
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1410.229166666667000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '11'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel108: TQRLabel
          Left = 54
          Top = 561
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1484.312500000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '12'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel109: TQRLabel
          Left = 54
          Top = 590
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1561.041666666667000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '13'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel110: TQRLabel
          Left = 54
          Top = 618
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1635.125000000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '14'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel111: TQRLabel
          Left = 54
          Top = 732
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1936.750000000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '18'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel112: TQRLabel
          Left = 54
          Top = 704
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1862.666666666667000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '17'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel113: TQRLabel
          Left = 54
          Top = 675
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1785.937500000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '16'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel114: TQRLabel
          Left = 54
          Top = 647
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            1711.854166666667000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '15'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel115: TQRLabel
          Left = 54
          Top = 789
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2087.562500000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '20'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel116: TQRLabel
          Left = 54
          Top = 760
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2010.833333333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '19'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText85: TQRDBText
          Left = 95
          Top = 822
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2174.875000000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText86: TQRDBText
          Left = 95
          Top = 850
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2248.958333333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText87: TQRDBText
          Left = 95
          Top = 879
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2325.687500000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText110: TQRDBText
          Left = 673
          Top = 822
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            2174.875000000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText112: TQRDBText
          Left = 673
          Top = 850
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            2248.958333333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText115: TQRDBText
          Left = 673
          Top = 879
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1780.645833333333000000
            2325.687500000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText116: TQRDBText
          Left = 674
          Top = 907
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1783.291666666667000000
            2399.770833333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText117: TQRDBText
          Left = 95
          Top = 907
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2399.770833333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText118: TQRDBText
          Left = 95
          Top = 936
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            251.354166666666700000
            2476.500000000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimista25'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText119: TQRDBText
          Left = 674
          Top = 936
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1783.291666666667000000
            2476.500000000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Dizimo25'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRShape101: TQRShape
          Left = 39
          Top = 954
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2524.125000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape102: TQRShape
          Left = 39
          Top = 925
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2447.395833333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape103: TQRShape
          Left = 39
          Top = 897
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2373.312500000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape104: TQRShape
          Left = 39
          Top = 868
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2296.583333333333000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRShape109: TQRShape
          Left = 39
          Top = 840
          Width = 701
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            103.187500000000000000
            2222.500000000000000000
            1854.729166666667000000)
          Shape = qrsHorLine
        end
        object QRLabel117: TQRLabel
          Left = 54
          Top = 874
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2312.458333333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '23'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel118: TQRLabel
          Left = 54
          Top = 846
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2238.375000000000000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '22'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel119: TQRLabel
          Left = 54
          Top = 817
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2161.645833333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '21'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel121: TQRLabel
          Left = 54
          Top = 931
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2463.270833333333000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '25'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel122: TQRLabel
          Left = 54
          Top = 902
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            142.875000000000000000
            2386.541666666667000000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '24'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText84: TQRDBText
          Left = 562
          Top = 965
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1486.958333333333000000
            2553.229166666667000000
            108.479166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMREFC
          DataField = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText140: TQRDBText
          Left = 573
          Top = 254
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1516.062500000000000000
            672.041666666666700000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText141: TQRDBText
          Left = 573
          Top = 282
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1516.062500000000000000
            746.125000000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText142: TQRDBText
          Left = 573
          Top = 311
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1516.062500000000000000
            822.854166666666700000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText143: TQRDBText
          Left = 571
          Top = 339
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1510.770833333333000000
            896.937500000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText144: TQRDBText
          Left = 571
          Top = 368
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1510.770833333333000000
            973.666666666666700000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText145: TQRDBText
          Left = 571
          Top = 396
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1510.770833333333000000
            1047.750000000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText146: TQRDBText
          Left = 571
          Top = 424
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1510.770833333333000000
            1121.833333333333000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText147: TQRDBText
          Left = 571
          Top = 453
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1510.770833333333000000
            1198.562500000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText148: TQRDBText
          Left = 572
          Top = 481
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1513.416666666667000000
            1272.645833333333000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText149: TQRDBText
          Left = 565
          Top = 510
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1494.895833333333000000
            1349.375000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText150: TQRDBText
          Left = 566
          Top = 538
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            1423.458333333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText151: TQRDBText
          Left = 566
          Top = 566
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            1497.541666666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText152: TQRDBText
          Left = 566
          Top = 595
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1497.541666666667000000
            1574.270833333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText153: TQRDBText
          Left = 564
          Top = 623
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1492.250000000000000000
            1648.354166666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText154: TQRDBText
          Left = 564
          Top = 652
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1492.250000000000000000
            1725.083333333334000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText155: TQRDBText
          Left = 564
          Top = 680
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1492.250000000000000000
            1799.166666666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText156: TQRDBText
          Left = 564
          Top = 708
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1492.250000000000000000
            1873.250000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText157: TQRDBText
          Left = 564
          Top = 737
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1492.250000000000000000
            1949.979166666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText158: TQRDBText
          Left = 565
          Top = 765
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1494.895833333333000000
            2024.062500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText159: TQRDBText
          Left = 565
          Top = 794
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1494.895833333333000000
            2100.791666666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText160: TQRDBText
          Left = 564
          Top = 822
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1492.250000000000000000
            2174.875000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText161: TQRDBText
          Left = 564
          Top = 850
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1492.250000000000000000
            2248.958333333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText162: TQRDBText
          Left = 564
          Top = 879
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1492.250000000000000000
            2325.687500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText163: TQRDBText
          Left = 565
          Top = 907
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1494.895833333333000000
            2399.770833333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText164: TQRDBText
          Left = 565
          Top = 936
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1494.895833333333000000
            2476.500000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Banco25'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText165: TQRDBText
          Left = 478
          Top = 254
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1264.708333333333000000
            672.041666666666700000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText166: TQRDBText
          Left = 478
          Top = 282
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1264.708333333333000000
            746.125000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText167: TQRDBText
          Left = 478
          Top = 311
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1264.708333333333000000
            822.854166666666700000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText168: TQRDBText
          Left = 476
          Top = 339
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1259.416666666667000000
            896.937500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText169: TQRDBText
          Left = 476
          Top = 368
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1259.416666666667000000
            973.666666666666700000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText170: TQRDBText
          Left = 476
          Top = 396
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1259.416666666667000000
            1047.750000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText171: TQRDBText
          Left = 476
          Top = 424
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1259.416666666667000000
            1121.833333333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText172: TQRDBText
          Left = 476
          Top = 453
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1259.416666666667000000
            1198.562500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText173: TQRDBText
          Left = 477
          Top = 481
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1262.062500000000000000
            1272.645833333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText174: TQRDBText
          Left = 470
          Top = 510
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1243.541666666667000000
            1349.375000000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText175: TQRDBText
          Left = 471
          Top = 538
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1246.187500000000000000
            1423.458333333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText176: TQRDBText
          Left = 471
          Top = 566
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1246.187500000000000000
            1497.541666666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText177: TQRDBText
          Left = 471
          Top = 595
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1246.187500000000000000
            1574.270833333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText178: TQRDBText
          Left = 469
          Top = 623
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            1648.354166666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText179: TQRDBText
          Left = 469
          Top = 652
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            1725.083333333334000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText180: TQRDBText
          Left = 469
          Top = 680
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            1799.166666666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText181: TQRDBText
          Left = 469
          Top = 708
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            1873.250000000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText182: TQRDBText
          Left = 469
          Top = 737
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            1949.979166666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText183: TQRDBText
          Left = 470
          Top = 765
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1243.541666666667000000
            2024.062500000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText184: TQRDBText
          Left = 470
          Top = 794
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1243.541666666667000000
            2100.791666666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText185: TQRDBText
          Left = 469
          Top = 822
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            2174.875000000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText186: TQRDBText
          Left = 469
          Top = 850
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            2248.958333333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText187: TQRDBText
          Left = 469
          Top = 879
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            2325.687500000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText188: TQRDBText
          Left = 470
          Top = 907
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1243.541666666667000000
            2399.770833333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText189: TQRDBText
          Left = 470
          Top = 936
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1243.541666666667000000
            2476.500000000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Cheque25'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          OnPrint = QRDBText26Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText190: TQRDBText
          Left = 708
          Top = 93
          Width = 24
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1873.250000000000000000
            246.062500000000000000
            63.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMRDC
          DataField = 'Seq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel90: TQRLabel
          Left = 702
          Top = 94
          Width = 5
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1857.375000000000000000
            248.708333333333300000
            13.229166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '/'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Book Antiqua'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
      end
    end
    object DateEdit1: TDateEdit
      Left = 8
      Top = 72
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 99
    Width = 274
    Height = 57
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object BtnImprimir: TBitBtn
      Left = 8
      Top = 8
      Width = 81
      Height = 41
      Caption = '&Imprimir'
      TabOrder = 0
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
      Left = 96
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
      Left = 184
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
  object RxMREFC: TRxMemoryData
    FieldDefs = <>
    Left = 176
    Top = 40
    object RxMREFCCodigo: TIntegerField
      FieldName = 'Codigo'
      DisplayFormat = '00000'
      EditFormat = '00000'
    end
    object RxMREFCDizimista1: TStringField
      FieldName = 'Dizimista1'
      Size = 50
    end
    object RxMREFCDizimista2: TStringField
      FieldName = 'Dizimista2'
      Size = 50
    end
    object RxMREFCDizimista3: TStringField
      FieldName = 'Dizimista3'
      Size = 50
    end
    object RxMREFCDizimista4: TStringField
      FieldName = 'Dizimista4'
      Size = 50
    end
    object RxMREFCDizimista5: TStringField
      FieldName = 'Dizimista5'
      Size = 50
    end
    object RxMREFCDizimista6: TStringField
      FieldName = 'Dizimista6'
      Size = 50
    end
    object RxMREFCDizimista7: TStringField
      FieldName = 'Dizimista7'
      Size = 50
    end
    object RxMREFCDizimista8: TStringField
      FieldName = 'Dizimista8'
      Size = 50
    end
    object RxMREFCDizimista9: TStringField
      FieldName = 'Dizimista9'
      Size = 50
    end
    object RxMREFCDizimista10: TStringField
      FieldName = 'Dizimista10'
      Size = 50
    end
    object RxMREFCDizimo1: TCurrencyField
      FieldName = 'Dizimo1'
    end
    object RxMREFCDizimo2: TCurrencyField
      FieldName = 'Dizimo2'
    end
    object RxMREFCDizimo3: TCurrencyField
      FieldName = 'Dizimo3'
    end
    object RxMREFCDizimo4: TCurrencyField
      FieldName = 'Dizimo4'
    end
    object RxMREFCDizimo5: TCurrencyField
      FieldName = 'Dizimo5'
    end
    object RxMREFCDizimo6: TCurrencyField
      FieldName = 'Dizimo6'
    end
    object RxMREFCDizimo7: TCurrencyField
      FieldName = 'Dizimo7'
    end
    object RxMREFCDizimo8: TCurrencyField
      FieldName = 'Dizimo8'
    end
    object RxMREFCDizimo9: TCurrencyField
      FieldName = 'Dizimo9'
    end
    object RxMREFCDizimo10: TCurrencyField
      FieldName = 'Dizimo10'
    end
    object RxMREFCCheque1: TStringField
      FieldName = 'Cheque1'
      Size = 8
    end
    object RxMREFCCheque2: TStringField
      FieldName = 'Cheque2'
      Size = 8
    end
    object RxMREFCCheque3: TStringField
      FieldName = 'Cheque3'
      Size = 8
    end
    object RxMREFCCheque4: TStringField
      FieldName = 'Cheque4'
      Size = 8
    end
    object RxMREFCCheque5: TStringField
      FieldName = 'Cheque5'
      Size = 8
    end
    object RxMREFCCheque6: TStringField
      FieldName = 'Cheque6'
      Size = 8
    end
    object RxMREFCCheque7: TStringField
      FieldName = 'Cheque7'
      Size = 8
    end
    object RxMREFCCheque8: TStringField
      FieldName = 'Cheque8'
      Size = 8
    end
    object RxMREFCCheque9: TStringField
      FieldName = 'Cheque9'
      Size = 8
    end
    object RxMREFCCheque10: TStringField
      FieldName = 'Cheque10'
      Size = 8
    end
    object RxMREFCBanco1: TStringField
      FieldName = 'Banco1'
      Size = 3
    end
    object RxMREFCBanco2: TStringField
      FieldName = 'Banco2'
      Size = 3
    end
    object RxMREFCBanco3: TStringField
      FieldName = 'Banco3'
      Size = 3
    end
    object RxMREFCBanco4: TStringField
      FieldName = 'Banco4'
      Size = 3
    end
    object RxMREFCBanco5: TStringField
      FieldName = 'Banco5'
      Size = 3
    end
    object RxMREFCBanco6: TStringField
      FieldName = 'Banco6'
      Size = 3
    end
    object RxMREFCBanco7: TStringField
      FieldName = 'Banco7'
      Size = 3
    end
    object RxMREFCBanco8: TStringField
      FieldName = 'Banco8'
      Size = 8
    end
    object RxMREFCBanco9: TStringField
      FieldName = 'Banco9'
      Size = 3
    end
    object RxMREFCBanco10: TStringField
      FieldName = 'Banco10'
      Size = 3
    end
    object RxMREFCIgrejaBairro: TStringField
      FieldName = 'IgrejaBairro'
      Size = 50
    end
    object RxMREFCCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object RxMREFCDia: TStringField
      FieldName = 'Dia'
      Size = 2
    end
    object RxMREFCMes: TStringField
      FieldName = 'Mes'
      Size = 2
    end
    object RxMREFCAno: TStringField
      FieldName = 'Ano'
      Size = 2
    end
    object RxMREFCPastor: TStringField
      FieldName = 'Pastor'
      Size = 50
    end
    object RxMREFCProntuario: TStringField
      FieldName = 'Prontuario'
      Size = 10
    end
    object RxMREFCDom: TStringField
      FieldName = 'Dom'
      Size = 1
    end
    object RxMREFCSeg: TStringField
      FieldName = 'Seg'
      Size = 1
    end
    object RxMREFCTer: TStringField
      FieldName = 'Ter'
      Size = 1
    end
    object RxMREFCQua: TStringField
      FieldName = 'Qua'
      Size = 1
    end
    object RxMREFCQui: TStringField
      FieldName = 'Qui'
      Size = 1
    end
    object RxMREFCSex: TStringField
      FieldName = 'Sex'
      Size = 1
    end
    object RxMREFCSab: TStringField
      FieldName = 'Sab'
      Size = 1
    end
    object RxMREFCHorario: TStringField
      FieldName = 'Horario'
      Size = 5
    end
    object RxMREFCCuras: TIntegerField
      FieldName = 'Curas'
    end
    object RxMREFCBatismoES: TIntegerField
      FieldName = 'BatismoES'
    end
    object RxMREFCCriancas: TIntegerField
      FieldName = 'Criancas'
    end
    object RxMREFCConversoes: TIntegerField
      FieldName = 'Conversoes'
    end
    object RxMREFCVisitantes: TIntegerField
      FieldName = 'Visitantes'
    end
    object RxMREFCPresentes: TIntegerField
      FieldName = 'Presentes'
    end
    object RxMREFCPastoresPresentes1: TStringField
      FieldName = 'PastoresPresentes1'
      Size = 25
    end
    object RxMREFCPastoresPresentes2: TStringField
      FieldName = 'PastoresPresentes2'
      Size = 25
    end
    object RxMREFCVisitasEspeciais1: TStringField
      FieldName = 'VisitasEspeciais1'
      Size = 25
    end
    object RxMREFCVisitasEspeciais2: TStringField
      FieldName = 'VisitasEspeciais2'
      Size = 25
    end
    object RxMREFCPregador: TStringField
      FieldName = 'Pregador'
      Size = 25
    end
    object RxMREFCOfertasGerais: TCurrencyField
      FieldName = 'OfertasGerais'
    end
    object RxMREFCOfertasEspeciais: TCurrencyField
      FieldName = 'OfertasEspeciais'
    end
    object RxMREFCOutrasEntradas: TCurrencyField
      FieldName = 'OutrasEntradas'
    end
    object RxMREFCOfertasMissoes: TCurrencyField
      FieldName = 'OfertasMissoes'
    end
    object RxMREFCTotalDizimos: TCurrencyField
      FieldName = 'TotalDizimos'
    end
    object RxMREFCTotalRDC: TCurrencyField
      FieldName = 'TotalRDC'
    end
    object RxMREFCTotalArrecadacao: TCurrencyField
      FieldName = 'TotalArrecadacao'
    end
    object RxMREFCTesoureiro: TStringField
      FieldName = 'Tesoureiro'
      Size = 50
    end
    object RxMREFCDiaconos2: TStringField
      FieldName = 'Diaconos2'
      Size = 50
    end
    object RxMREFCDiaconos1: TStringField
      FieldName = 'Diaconos1'
      Size = 50
    end
  end
  object RxMRDC: TRxMemoryData
    FieldDefs = <>
    Left = 144
    Top = 40
    object RxMRDCDizimista1: TStringField
      FieldName = 'Dizimista1'
      Size = 50
    end
    object RxMRDCDizimista2: TStringField
      FieldName = 'Dizimista2'
      Size = 50
    end
    object RxMRDCDizimista3: TStringField
      FieldName = 'Dizimista3'
      Size = 50
    end
    object RxMRDCDizimista4: TStringField
      FieldName = 'Dizimista4'
      Size = 50
    end
    object RxMRDCDizimista5: TStringField
      FieldName = 'Dizimista5'
      Size = 50
    end
    object RxMRDCDizimista6: TStringField
      FieldName = 'Dizimista6'
      Size = 50
    end
    object RxMRDCDizimista7: TStringField
      FieldName = 'Dizimista7'
      Size = 50
    end
    object RxMRDCDizimista8: TStringField
      FieldName = 'Dizimista8'
      Size = 50
    end
    object RxMRDCDizimista9: TStringField
      FieldName = 'Dizimista9'
      Size = 50
    end
    object RxMRDCDizimista10: TStringField
      FieldName = 'Dizimista10'
      Size = 50
    end
    object RxMRDCDizimista11: TStringField
      FieldName = 'Dizimista11'
      Size = 50
    end
    object RxMRDCDizimista12: TStringField
      FieldName = 'Dizimista12'
      Size = 50
    end
    object RxMRDCDizimista13: TStringField
      FieldName = 'Dizimista13'
      Size = 50
    end
    object RxMRDCDizimista14: TStringField
      FieldName = 'Dizimista14'
      Size = 50
    end
    object RxMRDCDizimista15: TStringField
      FieldName = 'Dizimista15'
      Size = 50
    end
    object RxMRDCDizimista16: TStringField
      FieldName = 'Dizimista16'
      Size = 50
    end
    object RxMRDCDizimista17: TStringField
      FieldName = 'Dizimista17'
      Size = 50
    end
    object RxMRDCDizimista18: TStringField
      FieldName = 'Dizimista18'
      Size = 50
    end
    object RxMRDCDizimista19: TStringField
      FieldName = 'Dizimista19'
      Size = 50
    end
    object RxMRDCDizimista20: TStringField
      FieldName = 'Dizimista20'
      Size = 50
    end
    object RxMRDCDizimista21: TStringField
      FieldName = 'Dizimista21'
      Size = 50
    end
    object RxMRDCDizimista22: TStringField
      FieldName = 'Dizimista22'
      Size = 50
    end
    object RxMRDCDizimista23: TStringField
      FieldName = 'Dizimista23'
      Size = 50
    end
    object RxMRDCDizimista24: TStringField
      FieldName = 'Dizimista24'
      Size = 50
    end
    object RxMRDCDizimista25: TStringField
      FieldName = 'Dizimista25'
      Size = 50
    end
    object RxMRDCDizimo1: TCurrencyField
      FieldName = 'Dizimo1'
    end
    object RxMRDCDizimo2: TCurrencyField
      FieldName = 'Dizimo2'
    end
    object RxMRDCDizimo3: TCurrencyField
      FieldName = 'Dizimo3'
    end
    object RxMRDCDizimo4: TCurrencyField
      FieldName = 'Dizimo4'
    end
    object RxMRDCDizimo5: TCurrencyField
      FieldName = 'Dizimo5'
    end
    object RxMRDCDizimo6: TCurrencyField
      FieldName = 'Dizimo6'
    end
    object RxMRDCDizimo7: TCurrencyField
      FieldName = 'Dizimo7'
    end
    object RxMRDCDizimo8: TCurrencyField
      FieldName = 'Dizimo8'
    end
    object RxMRDCDizimo9: TCurrencyField
      FieldName = 'Dizimo9'
    end
    object RxMRDCDizimo10: TCurrencyField
      FieldName = 'Dizimo10'
    end
    object RxMRDCDizimo11: TCurrencyField
      FieldName = 'Dizimo11'
    end
    object RxMRDCDizimo12: TCurrencyField
      FieldName = 'Dizimo12'
    end
    object RxMRDCDizimo13: TCurrencyField
      FieldName = 'Dizimo13'
    end
    object RxMRDCDizimo14: TCurrencyField
      FieldName = 'Dizimo14'
    end
    object RxMRDCDizimo15: TCurrencyField
      FieldName = 'Dizimo15'
    end
    object RxMRDCDizimo16: TCurrencyField
      FieldName = 'Dizimo16'
    end
    object RxMRDCDizimo17: TCurrencyField
      FieldName = 'Dizimo17'
    end
    object RxMRDCDizimo18: TCurrencyField
      FieldName = 'Dizimo18'
    end
    object RxMRDCDizimo19: TCurrencyField
      FieldName = 'Dizimo19'
    end
    object RxMRDCDizimo20: TCurrencyField
      FieldName = 'Dizimo20'
    end
    object RxMRDCDizimo21: TCurrencyField
      FieldName = 'Dizimo21'
    end
    object RxMRDCDizimo22: TCurrencyField
      FieldName = 'Dizimo22'
    end
    object RxMRDCDizimo23: TCurrencyField
      FieldName = 'Dizimo23'
    end
    object RxMRDCDizimo24: TCurrencyField
      FieldName = 'Dizimo24'
    end
    object RxMRDCDizimo25: TCurrencyField
      FieldName = 'Dizimo25'
    end
    object RxMRDCCheque1: TStringField
      FieldName = 'Cheque1'
      Size = 8
    end
    object RxMRDCCheque2: TStringField
      FieldName = 'Cheque2'
      Size = 8
    end
    object RxMRDCCheque3: TStringField
      FieldName = 'Cheque3'
      Size = 8
    end
    object RxMRDCCheque4: TStringField
      FieldName = 'Cheque4'
      Size = 8
    end
    object RxMRDCCheque5: TStringField
      FieldName = 'Cheque5'
      Size = 8
    end
    object RxMRDCCheque6: TStringField
      FieldName = 'Cheque6'
      Size = 8
    end
    object RxMRDCCheque7: TStringField
      FieldName = 'Cheque7'
      Size = 8
    end
    object RxMRDCCheque8: TStringField
      FieldName = 'Cheque8'
      Size = 8
    end
    object RxMRDCCheque9: TStringField
      FieldName = 'Cheque9'
      Size = 8
    end
    object RxMRDCCheque10: TStringField
      FieldName = 'Cheque10'
      Size = 8
    end
    object RxMRDCCheque11: TStringField
      FieldName = 'Cheque11'
      Size = 8
    end
    object RxMRDCCheque12: TStringField
      FieldName = 'Cheque12'
      Size = 8
    end
    object RxMRDCCheque13: TStringField
      FieldName = 'Cheque13'
      Size = 8
    end
    object RxMRDCCheque14: TStringField
      FieldName = 'Cheque14'
      Size = 8
    end
    object RxMRDCCheque15: TStringField
      FieldName = 'Cheque15'
      Size = 8
    end
    object RxMRDCCheque16: TStringField
      FieldName = 'Cheque16'
      Size = 8
    end
    object RxMRDCCheque17: TStringField
      FieldName = 'Cheque17'
      Size = 8
    end
    object RxMRDCCheque18: TStringField
      FieldName = 'Cheque18'
      Size = 8
    end
    object RxMRDCCheque19: TStringField
      FieldName = 'Cheque19'
      Size = 8
    end
    object RxMRDCCheque20: TStringField
      FieldName = 'Cheque20'
      Size = 8
    end
    object RxMRDCCheque21: TStringField
      FieldName = 'Cheque21'
      Size = 8
    end
    object RxMRDCCheque22: TStringField
      FieldName = 'Cheque22'
      Size = 23
    end
    object RxMRDCCheque23: TStringField
      FieldName = 'Cheque23'
      Size = 8
    end
    object RxMRDCCheque24: TStringField
      FieldName = 'Cheque24'
      Size = 8
    end
    object RxMRDCCheque25: TStringField
      FieldName = 'Cheque25'
      Size = 8
    end
    object RxMRDCBanco1: TStringField
      FieldName = 'Banco1'
      Size = 3
    end
    object RxMRDCBanco2: TStringField
      FieldName = 'Banco2'
      Size = 3
    end
    object RxMRDCBanco3: TStringField
      FieldName = 'Banco3'
      Size = 3
    end
    object RxMRDCBanco4: TStringField
      FieldName = 'Banco4'
      Size = 3
    end
    object RxMRDCBanco5: TStringField
      FieldName = 'Banco5'
      Size = 3
    end
    object RxMRDCBanco6: TStringField
      FieldName = 'Banco6'
      Size = 3
    end
    object RxMRDCBanco7: TStringField
      FieldName = 'Banco7'
      Size = 3
    end
    object RxMRDCBanco8: TStringField
      FieldName = 'Banco8'
      Size = 8
    end
    object RxMRDCBanco9: TStringField
      FieldName = 'Banco9'
      Size = 3
    end
    object RxMRDCBanco10: TStringField
      FieldName = 'Banco10'
      Size = 3
    end
    object RxMRDCBanco11: TStringField
      FieldName = 'Banco11'
      Size = 3
    end
    object RxMRDCBanco12: TStringField
      FieldName = 'Banco12'
      Size = 3
    end
    object RxMRDCBanco13: TStringField
      FieldName = 'Banco13'
      Size = 3
    end
    object RxMRDCBanco14: TStringField
      FieldName = 'Banco14'
      Size = 3
    end
    object RxMRDCBanco15: TStringField
      FieldName = 'Banco15'
      Size = 3
    end
    object RxMRDCBanco16: TStringField
      FieldName = 'Banco16'
      Size = 3
    end
    object RxMRDCBanco17: TStringField
      FieldName = 'Banco17'
      Size = 3
    end
    object RxMRDCBanco18: TStringField
      FieldName = 'Banco18'
      Size = 3
    end
    object RxMRDCBanco19: TStringField
      FieldName = 'Banco19'
      Size = 3
    end
    object RxMRDCBanco20: TStringField
      FieldName = 'Banco20'
      Size = 3
    end
    object RxMRDCBanco21: TStringField
      FieldName = 'Banco21'
      Size = 3
    end
    object RxMRDCBanco22: TStringField
      FieldName = 'Banco22'
      Size = 3
    end
    object RxMRDCBanco23: TStringField
      FieldName = 'Banco23'
      Size = 3
    end
    object RxMRDCBanco24: TStringField
      FieldName = 'Banco24'
      Size = 3
    end
    object RxMRDCBanco25: TStringField
      FieldName = 'Banco25'
      Size = 3
    end
    object RxMRDCCodigo: TIntegerField
      FieldName = 'Codigo'
      DisplayFormat = '00000'
      EditFormat = '00000'
    end
    object RxMRDCSeq: TIntegerField
      FieldName = 'Seq'
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object RxMRDCIgrejaBairro: TStringField
      FieldName = 'IgrejaBairro'
      Size = 50
    end
    object RxMRDCCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object RxMRDCDia: TStringField
      FieldName = 'Dia'
      Size = 2
    end
    object RxMRDCMes: TStringField
      FieldName = 'Mes'
      Size = 2
    end
    object RxMRDCAno: TStringField
      FieldName = 'Ano'
      Size = 2
    end
    object RxMRDCDizimos: TCurrencyField
      FieldName = 'Dizimos'
    end
    object RxMRDCDiaconos1: TStringField
      FieldName = 'Diaconos1'
      Size = 50
    end
    object RxMRDCDiaconos2: TStringField
      FieldName = 'Diaconos2'
      Size = 50
    end
    object RxMRDCTesoureiro: TStringField
      FieldName = 'Tesoureiro'
      Size = 50
    end
    object RxMRDCTotalRDC: TCurrencyField
      FieldName = 'TotalRDC'
    end
  end
  object QryConfig: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select NOMEIGREJA, LOGOIGREJA from Configuracoes')
    DMLRefresh = True
    Left = 140
    Top = 72
    object QryConfigNOMEIGREJA: TStringField
      FieldName = 'NOMEIGREJA'
      Size = 100
    end
    object QryConfigLOGOIGREJA: TMemoField
      FieldName = 'LOGOIGREJA'
      BlobType = ftMemo
    end
  end
end
