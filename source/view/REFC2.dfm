object FormREFC2: TFormREFC2
  Left = 365
  Top = 355
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Culto'
  ClientHeight = 164
  ClientWidth = 273
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFiltro: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 107
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
      Left = 368
      Top = 250
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
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      object QRBand2: TQRBand
        Left = 8
        Top = 8
        Width = 779
        Height = 1106
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          2926.291666666667000000
          2061.104166666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
            34.395833333333330000
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText1: TQRDBText
          Left = 646
          Top = 150
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
            396.875000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 676
          Top = 150
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
            396.875000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 709
          Top = 150
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
            396.875000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 154
          Top = 150
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
            396.875000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 482
          Top = 150
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1275.291666666667000000
            396.875000000000000000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText15: TQRDBText
          Left = 499
          Top = 214
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
            566.208333333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText16: TQRDBText
          Left = 468
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
            1238.250000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText17: TQRDBText
          Left = 483
          Top = 276
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1277.937500000000000000
            730.250000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText18: TQRDBText
          Left = 661
          Top = 214
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
            566.208333333333300000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText20: TQRDBText
          Left = 670
          Top = 276
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
            730.250000000000000000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText22: TQRDBText
          Left = 44
          Top = 329
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
            870.479166666666700000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText23: TQRDBText
          Left = 44
          Top = 350
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
            926.041666666666700000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText24: TQRDBText
          Left = 455
          Top = 372
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
            984.250000000000000000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText25: TQRDBText
          Left = 295
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
            780.520833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText26: TQRDBText
          Left = 290
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
            767.291666666666700000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText28: TQRDBText
          Left = 639
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
            1690.687500000000000000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText30: TQRDBText
          Left = 639
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
            1690.687500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText31: TQRDBText
          Left = 682
          Top = 667
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
            1764.770833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText33: TQRDBText
          Left = 95
          Top = 667
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
            1764.770833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText34: TQRDBText
          Left = 95
          Top = 695
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
            1838.854166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText35: TQRDBText
          Left = 95
          Top = 724
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
            1915.583333333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText36: TQRDBText
          Left = 95
          Top = 752
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
            1989.666666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText37: TQRDBText
          Left = 95
          Top = 781
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
            2066.395833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText38: TQRDBText
          Left = 95
          Top = 809
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
            2140.479166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText39: TQRDBText
          Left = 95
          Top = 837
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
            2214.562500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText40: TQRDBText
          Left = 95
          Top = 866
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
            2291.291666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText41: TQRDBText
          Left = 682
          Top = 695
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
            1838.854166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText42: TQRDBText
          Left = 682
          Top = 724
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
            1915.583333333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText43: TQRDBText
          Left = 681
          Top = 752
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
            1989.666666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText44: TQRDBText
          Left = 681
          Top = 781
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
            2066.395833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText45: TQRDBText
          Left = 681
          Top = 809
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
            2140.479166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText46: TQRDBText
          Left = 681
          Top = 837
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
            2214.562500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText47: TQRDBText
          Left = 680
          Top = 866
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
            2291.291666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText48: TQRDBText
          Left = 682
          Top = 894
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
            2365.375000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText49: TQRDBText
          Left = 95
          Top = 894
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
            2365.375000000000000000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText51: TQRDBText
          Left = 47
          Top = 1038
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
            2746.375000000000000000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText52: TQRDBText
          Left = 108
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
            285.750000000000000000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText53: TQRDBText
          Left = 395
          Top = 329
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
            870.479166666666700000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText54: TQRDBText
          Left = 395
          Top = 350
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
            926.041666666666700000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText56: TQRDBText
          Left = 95
          Top = 923
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
            2442.104166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText57: TQRDBText
          Left = 673
          Top = 923
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
            2442.104166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 203
          Top = 99
          Width = 372
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
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
          ExportAs = exptText
          FontSize = 13
        end
        object QRLabel5: TQRLabel
          Left = 639
          Top = 79
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
            209.020833333333300000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 11
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
          VertAdjust = 0
        end
        object QRShape3: TQRShape
          Left = 154
          Top = 167
          Width = 323
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            407.458333333333300000
            441.854166666666700000
            854.604166666666700000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRShape4: TQRShape
          Left = 479
          Top = 167
          Width = 152
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            1267.354166666667000000
            441.854166666666700000
            402.166666666666700000)
          Shape = qrsHorLine
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel10: TQRLabel
          Left = 669
          Top = 151
          Width = 5
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel11: TQRLabel
          Left = 701
          Top = 151
          Width = 5
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1854.729166666667000000
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
          ExportAs = exptText
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
          VertAdjust = 0
        end
        object QRLabel12: TQRLabel
          Left = 47
          Top = 1053
          Width = 57
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            124.354166666666700000
            2786.062500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel13: TQRLabel
          Left = 128
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
            338.666666666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel14: TQRLabel
          Left = 548
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
            1449.916666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel15: TQRLabel
          Left = 168
          Top = 945
          Width = 449
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            444.500000000000000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel16: TQRLabel
          Left = 252
          Top = 973
          Width = 366
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            666.750000000000000000
            2574.395833333333000000
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel17: TQRLabel
          Left = 205
          Top = 631
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
            1669.520833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel18: TQRLabel
          Left = 456
          Top = 631
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
            1669.520833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel19: TQRLabel
          Left = 564
          Top = 631
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
            1669.520833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel20: TQRLabel
          Left = 651
          Top = 631
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
            1669.520833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel21: TQRLabel
          Left = 54
          Top = 664
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
            1756.833333333333000000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel24: TQRLabel
          Left = 54
          Top = 749
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
            1981.729166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel25: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel28: TQRLabel
          Left = 54
          Top = 776
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
            2053.166666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel29: TQRLabel
          Left = 53
          Top = 918
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            2428.875000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel30: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel31: TQRLabel
          Left = 294
          Top = 509
          Width = 189
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            777.875000000000000000
            1346.729166666667000000
            500.062500000000000000)
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel32: TQRLabel
          Left = 354
          Top = 591
          Width = 76
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            936.625000000000000000
            1563.687500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel33: TQRLabel
          Left = 294
          Top = 609
          Width = 197
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            777.875000000000000000
            1611.312500000000000000
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel34: TQRLabel
          Left = 49
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
            129.645833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel35: TQRLabel
          Left = 619
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
            1637.770833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel36: TQRLabel
          Left = 619
          Top = 526
          Width = 31
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1637.770833333333000000
            1391.708333333333000000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel38: TQRLabel
          Left = 490
          Top = 526
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
            1391.708333333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel39: TQRLabel
          Left = 361
          Top = 526
          Width = 33
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            955.145833333333300000
            1391.708333333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel40: TQRLabel
          Left = 361
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
            955.145833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel41: TQRLabel
          Left = 49
          Top = 529
          Width = 91
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            129.645833333333300000
            1399.645833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel42: TQRLabel
          Left = 275
          Top = 541
          Width = 49
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            727.604166666666700000
            1431.395833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel43: TQRLabel
          Left = 264
          Top = 559
          Width = 73
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            698.500000000000000000
            1479.020833333333000000
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel44: TQRLabel
          Left = 266
          Top = 390
          Width = 250
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel45: TQRLabel
          Left = 246
          Top = 409
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
            1082.145833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel46: TQRLabel
          Left = 91
          Top = 431
          Width = 53
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            240.770833333333300000
            1140.354166666667000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel47: TQRLabel
          Left = 49
          Top = 431
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
            1140.354166666667000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel48: TQRLabel
          Left = 91
          Top = 456
          Width = 92
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            240.770833333333300000
            1206.500000000000000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel49: TQRLabel
          Left = 49
          Top = 456
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
            1206.500000000000000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel50: TQRLabel
          Left = 91
          Top = 481
          Width = 109
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            240.770833333333300000
            1272.645833333333000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel51: TQRLabel
          Left = 49
          Top = 481
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
            1272.645833333333000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel52: TQRLabel
          Left = 399
          Top = 431
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
            1140.354166666667000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel53: TQRLabel
          Left = 441
          Top = 431
          Width = 108
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1166.812500000000000000
            1140.354166666667000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel55: TQRLabel
          Left = 391
          Top = 456
          Width = 215
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1034.520833333333000000
            1206.500000000000000000
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
          ExportAs = exptText
          FontSize = 11
        end
        object QRLabel56: TQRLabel
          Left = 399
          Top = 481
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
            1272.645833333333000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel57: TQRLabel
          Left = 441
          Top = 481
          Width = 153
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            1166.812500000000000000
            1272.645833333333000000
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel58: TQRLabel
          Left = 549
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
            1452.562500000000000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel59: TQRLabel
          Left = 86
          Top = 204
          Width = 79
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            227.541666666666700000
            539.750000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel60: TQRLabel
          Left = 231
          Top = 204
          Width = 43
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            611.187500000000000000
            539.750000000000000000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel62: TQRLabel
          Left = 314
          Top = 241
          Width = 129
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            830.791666666666700000
            637.645833333333300000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel64: TQRLabel
          Left = 569
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
            1505.479166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel65: TQRLabel
          Left = 571
          Top = 241
          Width = 54
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1510.770833333333000000
            637.645833333333300000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 11
        end
        object QRLabel68: TQRLabel
          Left = 164
          Top = 304
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
            804.333333333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel69: TQRLabel
          Left = 524
          Top = 304
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
            804.333333333333300000
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
          ExportAs = exptText
          FontSize = 10
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel72: TQRLabel
          Left = 96
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
            254.000000000000000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel73: TQRLabel
          Left = 119
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
            314.854166666666700000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel74: TQRLabel
          Left = 141
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
            373.062500000000000000
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
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel75: TQRLabel
          Left = 169
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
            447.145833333333300000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRDBText109: TQRDBText
          Left = 478
          Top = 667
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
            1764.770833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText120: TQRDBText
          Left = 478
          Top = 695
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
            1838.854166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText121: TQRDBText
          Left = 478
          Top = 724
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
            1915.583333333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText122: TQRDBText
          Left = 478
          Top = 752
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
            1989.666666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText123: TQRDBText
          Left = 478
          Top = 781
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
            2066.395833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText124: TQRDBText
          Left = 478
          Top = 809
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
            2140.479166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText125: TQRDBText
          Left = 478
          Top = 837
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
            2214.562500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText126: TQRDBText
          Left = 478
          Top = 866
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
            2291.291666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText127: TQRDBText
          Left = 478
          Top = 894
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
            2365.375000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText128: TQRDBText
          Left = 471
          Top = 923
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
            2442.104166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText129: TQRDBText
          Left = 566
          Top = 667
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
            1764.770833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText130: TQRDBText
          Left = 566
          Top = 695
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
            1838.854166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText131: TQRDBText
          Left = 566
          Top = 724
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
            1915.583333333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText132: TQRDBText
          Left = 566
          Top = 752
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
            1989.666666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText133: TQRDBText
          Left = 566
          Top = 781
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
            2066.395833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText134: TQRDBText
          Left = 566
          Top = 809
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
            2140.479166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText135: TQRDBText
          Left = 566
          Top = 837
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
            2214.562500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText136: TQRDBText
          Left = 567
          Top = 866
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2291.291666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText137: TQRDBText
          Left = 567
          Top = 894
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2365.375000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText138: TQRDBText
          Left = 558
          Top = 923
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1476.375000000000000000
            2442.104166666667000000
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBImage1: TQRDBImage
          Left = 48
          Top = 72
          Width = 97
          Height = 97
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            256.645833333333300000
            127.000000000000000000
            190.500000000000000000
            256.645833333333300000)
          DataField = 'LOGOIGREJA'
          DataSet = QryConfig
          Stretch = True
        end
        object QRDBText191: TQRDBText
          Left = 333
          Top = 77
          Width = 113
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.854166666666670000
            881.062500000000000000
            203.729166666666700000
            298.979166666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = QryConfig
          DataField = 'NOMEIGREJA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 13
        end
      end
      object QRSubDetail1: TQRSubDetail
        Left = 8
        Top = 1114
        Width = 779
        Height = 1106
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          2926.291666666667000000
          2061.104166666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Master = QuickRep1
        DataSet = RxMSubRDC
        PrintBefore = False
        PrintIfEmpty = False
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
            34.395833333333330000
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText58: TQRDBText
          Left = 648
          Top = 150
          Width = 20
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1714.500000000000000000
            396.875000000000000000
            52.916666666666670000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText59: TQRDBText
          Left = 677
          Top = 150
          Width = 25
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            396.875000000000000000
            66.145833333333330000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Mes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText60: TQRDBText
          Left = 708
          Top = 150
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
            396.875000000000000000
            63.500000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Ano'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText61: TQRDBText
          Left = 153
          Top = 150
          Width = 67
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            404.812500000000000000
            396.875000000000000000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'IgrejaBairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
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
          DataSet = RxMSubRDC
          DataField = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText88: TQRDBText
          Left = 683
          Top = 253
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            669.395833333333300000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText89: TQRDBText
          Left = 95
          Top = 253
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
            669.395833333333300000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText90: TQRDBText
          Left = 95
          Top = 281
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
            743.479166666666700000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText91: TQRDBText
          Left = 95
          Top = 310
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
            820.208333333333300000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText92: TQRDBText
          Left = 95
          Top = 338
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
            894.291666666666700000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText93: TQRDBText
          Left = 95
          Top = 367
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
            971.020833333333300000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText94: TQRDBText
          Left = 95
          Top = 395
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
            1045.104166666667000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText95: TQRDBText
          Left = 95
          Top = 423
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
            1119.187500000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText96: TQRDBText
          Left = 95
          Top = 452
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
            1195.916666666667000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText97: TQRDBText
          Left = 683
          Top = 281
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            743.479166666666700000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText98: TQRDBText
          Left = 683
          Top = 310
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            820.208333333333300000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText99: TQRDBText
          Left = 683
          Top = 338
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            894.291666666666700000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText100: TQRDBText
          Left = 683
          Top = 367
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            971.020833333333300000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText101: TQRDBText
          Left = 683
          Top = 395
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            1045.104166666667000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText102: TQRDBText
          Left = 683
          Top = 423
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            1119.187500000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText103: TQRDBText
          Left = 683
          Top = 452
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            1195.916666666667000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText104: TQRDBText
          Left = 683
          Top = 480
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            1270.000000000000000000
            127.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText105: TQRDBText
          Left = 95
          Top = 480
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
            1270.000000000000000000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
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
          DataSet = RxMSubRDC
          DataField = 'Diaconos1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText107: TQRDBText
          Left = 47
          Top = 1038
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
            2746.375000000000000000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Diaconos2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText108: TQRDBText
          Left = 108
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
            285.750000000000000000
            2796.645833333333000000
            145.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Tesoureiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText111: TQRDBText
          Left = 675
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
            1785.937500000000000000
            2587.625000000000000000
            150.812500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText113: TQRDBText
          Left = 95
          Top = 509
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
            1346.729166666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText114: TQRDBText
          Left = 677
          Top = 509
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1346.729166666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel79: TQRLabel
          Left = 233
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
            616.479166666666700000
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
          ExportAs = exptText
          FontSize = 13
        end
        object QRLabel80: TQRLabel
          Left = 637
          Top = 79
          Width = 18
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1685.395833333333000000
            209.020833333333300000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 11
        end
        object QRLabel83: TQRLabel
          Left = 637
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
            1685.395833333333000000
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
          ExportAs = exptText
          FontSize = 11
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel85: TQRLabel
          Left = 668
          Top = 153
          Width = 5
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1767.416666666667000000
            404.812500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel86: TQRLabel
          Left = 703
          Top = 153
          Width = 5
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1860.020833333333000000
            404.812500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel87: TQRLabel
          Left = 47
          Top = 1053
          Width = 57
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            124.354166666666700000
            2786.062500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel88: TQRLabel
          Left = 128
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
            338.666666666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel89: TQRLabel
          Left = 548
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
            1449.916666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel91: TQRLabel
          Left = 269
          Top = 967
          Width = 351
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            711.729166666666700000
            2558.520833333333000000
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel92: TQRLabel
          Left = 205
          Top = 217
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
            574.145833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel93: TQRLabel
          Left = 457
          Top = 217
          Width = 73
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1209.145833333333000000
            574.145833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel94: TQRLabel
          Left = 563
          Top = 217
          Width = 50
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1489.604166666667000000
            574.145833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel95: TQRLabel
          Left = 653
          Top = 217
          Width = 68
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1727.729166666667000000
            574.145833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel96: TQRLabel
          Left = 53
          Top = 247
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            653.520833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel97: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel98: TQRLabel
          Left = 53
          Top = 307
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            812.270833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel99: TQRLabel
          Left = 53
          Top = 333
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            881.062500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel100: TQRLabel
          Left = 53
          Top = 447
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            1182.687500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel101: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel102: TQRLabel
          Left = 53
          Top = 392
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            1037.166666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel103: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel104: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel105: TQRLabel
          Left = 53
          Top = 477
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            1262.062500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel107: TQRLabel
          Left = 353
          Top = 187
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
            494.770833333333300000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText63: TQRDBText
          Left = 677
          Top = 537
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1420.812500000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText64: TQRDBText
          Left = 95
          Top = 537
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
            1420.812500000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText65: TQRDBText
          Left = 95
          Top = 565
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
            1494.895833333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText66: TQRDBText
          Left = 95
          Top = 594
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
            1571.625000000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText67: TQRDBText
          Left = 95
          Top = 622
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
            1645.708333333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText68: TQRDBText
          Left = 95
          Top = 651
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
            1722.437500000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText69: TQRDBText
          Left = 95
          Top = 679
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
            1796.520833333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText70: TQRDBText
          Left = 95
          Top = 707
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
            1870.604166666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText71: TQRDBText
          Left = 95
          Top = 736
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
            1947.333333333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText72: TQRDBText
          Left = 677
          Top = 565
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1494.895833333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText73: TQRDBText
          Left = 677
          Top = 594
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1571.625000000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText74: TQRDBText
          Left = 677
          Top = 622
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1645.708333333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText75: TQRDBText
          Left = 677
          Top = 651
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1722.437500000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText76: TQRDBText
          Left = 677
          Top = 679
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1796.520833333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText77: TQRDBText
          Left = 677
          Top = 707
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1870.604166666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText79: TQRDBText
          Left = 677
          Top = 736
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            1947.333333333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText80: TQRDBText
          Left = 677
          Top = 764
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            2021.416666666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText81: TQRDBText
          Left = 95
          Top = 764
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
            2021.416666666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText82: TQRDBText
          Left = 95
          Top = 793
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
            2098.145833333333000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText83: TQRDBText
          Left = 677
          Top = 793
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            2098.145833333333000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel106: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel108: TQRLabel
          Left = 53
          Top = 563
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            1489.604166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel109: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel110: TQRLabel
          Left = 53
          Top = 617
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            1632.479166666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel111: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel112: TQRLabel
          Left = 53
          Top = 703
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            1860.020833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel113: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel114: TQRLabel
          Left = 53
          Top = 648
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            1714.500000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel115: TQRLabel
          Left = 53
          Top = 787
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            2082.270833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel116: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText85: TQRDBText
          Left = 95
          Top = 821
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
            2172.229166666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText86: TQRDBText
          Left = 95
          Top = 849
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
            2246.312500000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText87: TQRDBText
          Left = 95
          Top = 878
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
            2323.041666666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText110: TQRDBText
          Left = 677
          Top = 821
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            2172.229166666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText112: TQRDBText
          Left = 677
          Top = 849
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            2246.312500000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText115: TQRDBText
          Left = 677
          Top = 878
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            2323.041666666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText116: TQRDBText
          Left = 677
          Top = 906
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            2397.125000000000000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText117: TQRDBText
          Left = 95
          Top = 906
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
            2397.125000000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText118: TQRDBText
          Left = 95
          Top = 935
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
            2473.854166666667000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Dizimista25'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText119: TQRDBText
          Left = 677
          Top = 935
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1791.229166666667000000
            2473.854166666667000000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
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
          VertAdjust = 0
        end
        object QRLabel117: TQRLabel
          Left = 53
          Top = 873
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            2309.812500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel118: TQRLabel
          Left = 53
          Top = 847
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            2241.020833333333000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel119: TQRLabel
          Left = 53
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
            140.229166666666700000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel121: TQRLabel
          Left = 53
          Top = 932
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            2465.916666666667000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel122: TQRLabel
          Left = 53
          Top = 903
          Width = 15
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            140.229166666666700000
            2389.187500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText84: TQRDBText
          Left = 564
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
            1492.250000000000000000
            2553.229166666667000000
            108.479166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText140: TQRDBText
          Left = 573
          Top = 253
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
            669.395833333333300000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText141: TQRDBText
          Left = 573
          Top = 281
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
            743.479166666666700000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText142: TQRDBText
          Left = 573
          Top = 310
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
            820.208333333333300000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText143: TQRDBText
          Left = 573
          Top = 338
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
            894.291666666666700000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText144: TQRDBText
          Left = 573
          Top = 367
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
            971.020833333333300000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText145: TQRDBText
          Left = 573
          Top = 395
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
            1045.104166666667000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText146: TQRDBText
          Left = 573
          Top = 423
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
            1119.187500000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText147: TQRDBText
          Left = 573
          Top = 452
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
            1195.916666666667000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText148: TQRDBText
          Left = 573
          Top = 480
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
            1270.000000000000000000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText149: TQRDBText
          Left = 567
          Top = 509
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1346.729166666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText150: TQRDBText
          Left = 567
          Top = 537
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1420.812500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText151: TQRDBText
          Left = 567
          Top = 565
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1494.895833333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText152: TQRDBText
          Left = 567
          Top = 594
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1571.625000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText153: TQRDBText
          Left = 567
          Top = 622
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1645.708333333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText154: TQRDBText
          Left = 567
          Top = 651
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1722.437500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText155: TQRDBText
          Left = 567
          Top = 679
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1796.520833333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText156: TQRDBText
          Left = 567
          Top = 707
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1870.604166666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText157: TQRDBText
          Left = 567
          Top = 736
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            1947.333333333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText158: TQRDBText
          Left = 567
          Top = 764
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2021.416666666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText159: TQRDBText
          Left = 567
          Top = 793
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2098.145833333333000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText160: TQRDBText
          Left = 567
          Top = 821
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2172.229166666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText161: TQRDBText
          Left = 567
          Top = 849
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2246.312500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText162: TQRDBText
          Left = 567
          Top = 878
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2323.041666666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText163: TQRDBText
          Left = 567
          Top = 906
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2397.125000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText164: TQRDBText
          Left = 567
          Top = 935
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1500.187500000000000000
            2473.854166666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText165: TQRDBText
          Left = 478
          Top = 253
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
            669.395833333333300000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText166: TQRDBText
          Left = 478
          Top = 281
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
            743.479166666666700000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText167: TQRDBText
          Left = 478
          Top = 310
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
            820.208333333333300000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText168: TQRDBText
          Left = 478
          Top = 338
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
            894.291666666666700000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText169: TQRDBText
          Left = 478
          Top = 367
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
            971.020833333333300000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText170: TQRDBText
          Left = 478
          Top = 395
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
            1045.104166666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText171: TQRDBText
          Left = 478
          Top = 423
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
            1119.187500000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText172: TQRDBText
          Left = 478
          Top = 452
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
            1195.916666666667000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText173: TQRDBText
          Left = 478
          Top = 480
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
            1270.000000000000000000
            137.583333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText174: TQRDBText
          Left = 471
          Top = 509
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
            1346.729166666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText175: TQRDBText
          Left = 471
          Top = 537
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
            1420.812500000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText176: TQRDBText
          Left = 471
          Top = 565
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
            1494.895833333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText177: TQRDBText
          Left = 471
          Top = 594
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
            1571.625000000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText178: TQRDBText
          Left = 471
          Top = 622
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
            1645.708333333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText179: TQRDBText
          Left = 471
          Top = 651
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
            1722.437500000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText180: TQRDBText
          Left = 471
          Top = 679
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
            1796.520833333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText181: TQRDBText
          Left = 471
          Top = 707
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
            1870.604166666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText182: TQRDBText
          Left = 471
          Top = 736
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
            1947.333333333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText183: TQRDBText
          Left = 471
          Top = 764
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
            2021.416666666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText184: TQRDBText
          Left = 471
          Top = 793
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
            2098.145833333333000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText185: TQRDBText
          Left = 471
          Top = 821
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
            2172.229166666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText186: TQRDBText
          Left = 471
          Top = 849
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
            2246.312500000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText187: TQRDBText
          Left = 471
          Top = 878
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
            2323.041666666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText188: TQRDBText
          Left = 471
          Top = 906
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
            2397.125000000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText189: TQRDBText
          Left = 471
          Top = 935
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
            2473.854166666667000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText190: TQRDBText
          Left = 707
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
            1870.604166666667000000
            246.062500000000000000
            63.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMSubRDC
          DataField = 'Seq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel90: TQRLabel
          Left = 703
          Top = 93
          Width = 5
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1860.020833333333000000
            246.062500000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBText62: TQRDBText
          Left = 333
          Top = 77
          Width = 113
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.854166666666670000
            881.062500000000000000
            203.729166666666700000
            298.979166666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = QryConfig
          DataField = 'NOMEIGREJA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Book Antiqua'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 13
        end
        object QRDBImage2: TQRDBImage
          Left = 48
          Top = 72
          Width = 97
          Height = 97
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            256.645833333333300000
            127.000000000000000000
            190.500000000000000000
            256.645833333333300000)
          DataField = 'LOGOIGREJA'
          DataSet = QryConfig
          Stretch = True
        end
        object QRDBText192: TQRDBText
          Left = 482
          Top = 150
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1275.291666666667000000
            396.875000000000000000
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
          ExportAs = exptText
          FontSize = 10
        end
        object QRShape78: TQRShape
          Left = 479
          Top = 167
          Width = 152
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            1267.354166666667000000
            441.854166666666700000
            402.166666666666700000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
      end
    end
    object DateEdit1: TDateEdit
      Left = 8
      Top = 72
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 107
    Width = 273
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
    AfterScroll = RxMREFCAfterScroll
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
      DisplayWidth = 19
      FieldName = 'CNPJ'
      Size = 19
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
      LookupDataSet = RxMREFC
      KeyFields = 'Codigo'
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
  object RxMSubRDC: TRxMemoryData
    FieldDefs = <>
    Left = 112
    Top = 40
    object RxMSubRDCDizimista1: TStringField
      FieldName = 'Dizimista1'
      Size = 50
    end
    object RxMSubRDCDizimista2: TStringField
      FieldName = 'Dizimista2'
      Size = 50
    end
    object RxMSubRDCDizimista3: TStringField
      FieldName = 'Dizimista3'
      Size = 50
    end
    object RxMSubRDCDizimista4: TStringField
      FieldName = 'Dizimista4'
      Size = 50
    end
    object RxMSubRDCDizimista5: TStringField
      FieldName = 'Dizimista5'
      Size = 50
    end
    object RxMSubRDCDizimista6: TStringField
      FieldName = 'Dizimista6'
      Size = 50
    end
    object RxMSubRDCDizimista7: TStringField
      FieldName = 'Dizimista7'
      Size = 50
    end
    object RxMSubRDCDizimista8: TStringField
      FieldName = 'Dizimista8'
      Size = 50
    end
    object RxMSubRDCDizimista9: TStringField
      FieldName = 'Dizimista9'
      Size = 50
    end
    object RxMSubRDCDizimista10: TStringField
      FieldName = 'Dizimista10'
      Size = 50
    end
    object RxMSubRDCDizimista11: TStringField
      FieldName = 'Dizimista11'
      Size = 50
    end
    object RxMSubRDCDizimista12: TStringField
      FieldName = 'Dizimista12'
      Size = 50
    end
    object RxMSubRDCDizimista13: TStringField
      FieldName = 'Dizimista13'
      Size = 50
    end
    object RxMSubRDCDizimista14: TStringField
      FieldName = 'Dizimista14'
      Size = 50
    end
    object RxMSubRDCDizimista15: TStringField
      FieldName = 'Dizimista15'
      Size = 50
    end
    object RxMSubRDCDizimista16: TStringField
      FieldName = 'Dizimista16'
      Size = 50
    end
    object RxMSubRDCDizimista17: TStringField
      FieldName = 'Dizimista17'
      Size = 50
    end
    object RxMSubRDCDizimista18: TStringField
      FieldName = 'Dizimista18'
      Size = 50
    end
    object RxMSubRDCDizimista19: TStringField
      FieldName = 'Dizimista19'
      Size = 50
    end
    object RxMSubRDCDizimista20: TStringField
      FieldName = 'Dizimista20'
      Size = 50
    end
    object RxMSubRDCDizimista21: TStringField
      FieldName = 'Dizimista21'
      Size = 50
    end
    object RxMSubRDCDizimista22: TStringField
      FieldName = 'Dizimista22'
      Size = 50
    end
    object RxMSubRDCDizimista23: TStringField
      FieldName = 'Dizimista23'
      Size = 50
    end
    object RxMSubRDCDizimista24: TStringField
      FieldName = 'Dizimista24'
      Size = 50
    end
    object RxMSubRDCDizimista25: TStringField
      FieldName = 'Dizimista25'
      Size = 50
    end
    object RxMSubRDCDizimo1: TCurrencyField
      FieldName = 'Dizimo1'
    end
    object RxMSubRDCDizimo2: TCurrencyField
      FieldName = 'Dizimo2'
    end
    object RxMSubRDCDizimo3: TCurrencyField
      FieldName = 'Dizimo3'
    end
    object RxMSubRDCDizimo4: TCurrencyField
      FieldName = 'Dizimo4'
    end
    object RxMSubRDCDizimo5: TCurrencyField
      FieldName = 'Dizimo5'
    end
    object RxMSubRDCDizimo6: TCurrencyField
      FieldName = 'Dizimo6'
    end
    object RxMSubRDCDizimo7: TCurrencyField
      FieldName = 'Dizimo7'
    end
    object RxMSubRDCDizimo8: TCurrencyField
      FieldName = 'Dizimo8'
    end
    object RxMSubRDCDizimo9: TCurrencyField
      FieldName = 'Dizimo9'
    end
    object RxMSubRDCDizimo10: TCurrencyField
      FieldName = 'Dizimo10'
    end
    object RxMSubRDCDizimo11: TCurrencyField
      FieldName = 'Dizimo11'
    end
    object RxMSubRDCDizimo12: TCurrencyField
      FieldName = 'Dizimo12'
    end
    object RxMSubRDCDizimo13: TCurrencyField
      FieldName = 'Dizimo13'
    end
    object RxMSubRDCDizimo14: TCurrencyField
      FieldName = 'Dizimo14'
    end
    object RxMSubRDCDizimo15: TCurrencyField
      FieldName = 'Dizimo15'
    end
    object RxMSubRDCDizimo16: TCurrencyField
      FieldName = 'Dizimo16'
    end
    object RxMSubRDCDizimo17: TCurrencyField
      FieldName = 'Dizimo17'
    end
    object RxMSubRDCDizimo18: TCurrencyField
      FieldName = 'Dizimo18'
    end
    object RxMSubRDCDizimo19: TCurrencyField
      FieldName = 'Dizimo19'
    end
    object RxMSubRDCDizimo20: TCurrencyField
      FieldName = 'Dizimo20'
    end
    object RxMSubRDCDizimo21: TCurrencyField
      FieldName = 'Dizimo21'
    end
    object RxMSubRDCDizimo22: TCurrencyField
      FieldName = 'Dizimo22'
    end
    object RxMSubRDCDizimo23: TCurrencyField
      FieldName = 'Dizimo23'
    end
    object RxMSubRDCDizimo24: TCurrencyField
      FieldName = 'Dizimo24'
    end
    object RxMSubRDCDizimo25: TCurrencyField
      FieldName = 'Dizimo25'
    end
    object RxMSubRDCCheque1: TStringField
      FieldName = 'Cheque1'
      Size = 8
    end
    object RxMSubRDCCheque2: TStringField
      FieldName = 'Cheque2'
      Size = 8
    end
    object RxMSubRDCCheque3: TStringField
      FieldName = 'Cheque3'
      Size = 8
    end
    object RxMSubRDCCheque4: TStringField
      FieldName = 'Cheque4'
      Size = 8
    end
    object RxMSubRDCCheque5: TStringField
      FieldName = 'Cheque5'
      Size = 8
    end
    object RxMSubRDCCheque6: TStringField
      FieldName = 'Cheque6'
      Size = 8
    end
    object RxMSubRDCCheque7: TStringField
      FieldName = 'Cheque7'
      Size = 8
    end
    object RxMSubRDCCheque8: TStringField
      FieldName = 'Cheque8'
      Size = 8
    end
    object RxMSubRDCCheque9: TStringField
      FieldName = 'Cheque9'
      Size = 8
    end
    object RxMSubRDCCheque10: TStringField
      FieldName = 'Cheque10'
      Size = 8
    end
    object RxMSubRDCCheque11: TStringField
      FieldName = 'Cheque11'
      Size = 8
    end
    object RxMSubRDCCheque12: TStringField
      FieldName = 'Cheque12'
      Size = 8
    end
    object RxMSubRDCCheque13: TStringField
      FieldName = 'Cheque13'
      Size = 8
    end
    object RxMSubRDCCheque14: TStringField
      FieldName = 'Cheque14'
      Size = 8
    end
    object RxMSubRDCCheque15: TStringField
      FieldName = 'Cheque15'
      Size = 8
    end
    object RxMSubRDCCheque16: TStringField
      FieldName = 'Cheque16'
      Size = 8
    end
    object RxMSubRDCCheque17: TStringField
      FieldName = 'Cheque17'
      Size = 8
    end
    object RxMSubRDCCheque18: TStringField
      FieldName = 'Cheque18'
      Size = 8
    end
    object RxMSubRDCCheque19: TStringField
      FieldName = 'Cheque19'
      Size = 8
    end
    object RxMSubRDCCheque20: TStringField
      FieldName = 'Cheque20'
      Size = 8
    end
    object RxMSubRDCCheque21: TStringField
      FieldName = 'Cheque21'
      Size = 8
    end
    object RxMSubRDCCheque22: TStringField
      FieldName = 'Cheque22'
      Size = 23
    end
    object RxMSubRDCCheque23: TStringField
      FieldName = 'Cheque23'
      Size = 8
    end
    object RxMSubRDCCheque24: TStringField
      FieldName = 'Cheque24'
      Size = 8
    end
    object RxMSubRDCCheque25: TStringField
      FieldName = 'Cheque25'
      Size = 8
    end
    object RxMSubRDCBanco1: TStringField
      FieldName = 'Banco1'
      Size = 3
    end
    object RxMSubRDCBanco2: TStringField
      FieldName = 'Banco2'
      Size = 3
    end
    object RxMSubRDCBanco3: TStringField
      FieldName = 'Banco3'
      Size = 3
    end
    object RxMSubRDCBanco4: TStringField
      FieldName = 'Banco4'
      Size = 3
    end
    object RxMSubRDCBanco5: TStringField
      FieldName = 'Banco5'
      Size = 3
    end
    object RxMSubRDCBanco6: TStringField
      FieldName = 'Banco6'
      Size = 3
    end
    object RxMSubRDCBanco7: TStringField
      FieldName = 'Banco7'
      Size = 3
    end
    object RxMSubRDCBanco8: TStringField
      FieldName = 'Banco8'
      Size = 8
    end
    object RxMSubRDCBanco9: TStringField
      FieldName = 'Banco9'
      Size = 3
    end
    object RxMSubRDCBanco10: TStringField
      FieldName = 'Banco10'
      Size = 3
    end
    object RxMSubRDCBanco11: TStringField
      FieldName = 'Banco11'
      Size = 3
    end
    object RxMSubRDCBanco12: TStringField
      FieldName = 'Banco12'
      Size = 3
    end
    object RxMSubRDCBanco13: TStringField
      FieldName = 'Banco13'
      Size = 3
    end
    object RxMSubRDCBanco14: TStringField
      FieldName = 'Banco14'
      Size = 3
    end
    object RxMSubRDCBanco15: TStringField
      FieldName = 'Banco15'
      Size = 3
    end
    object RxMSubRDCBanco16: TStringField
      FieldName = 'Banco16'
      Size = 3
    end
    object RxMSubRDCBanco17: TStringField
      FieldName = 'Banco17'
      Size = 3
    end
    object RxMSubRDCBanco18: TStringField
      FieldName = 'Banco18'
      Size = 3
    end
    object RxMSubRDCBanco19: TStringField
      FieldName = 'Banco19'
      Size = 3
    end
    object RxMSubRDCBanco20: TStringField
      FieldName = 'Banco20'
      Size = 3
    end
    object RxMSubRDCBanco21: TStringField
      FieldName = 'Banco21'
      Size = 3
    end
    object RxMSubRDCBanco22: TStringField
      FieldName = 'Banco22'
      Size = 3
    end
    object RxMSubRDCBanco23: TStringField
      FieldName = 'Banco23'
      Size = 3
    end
    object RxMSubRDCBanco24: TStringField
      FieldName = 'Banco24'
      Size = 3
    end
    object RxMSubRDCBanco25: TStringField
      FieldName = 'Banco25'
      Size = 3
    end
    object RxMSubRDCCodigo: TIntegerField
      FieldName = 'Codigo'
      KeyFields = 'Codigo'
      DisplayFormat = '00000'
      EditFormat = '00000'
    end
    object RxMSubRDCSeq: TIntegerField
      FieldName = 'Seq'
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object RxMSubRDCIgrejaBairro: TStringField
      FieldName = 'IgrejaBairro'
      Size = 50
    end
    object RxMSubRDCCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object RxMSubRDCDia: TStringField
      FieldName = 'Dia'
      Size = 2
    end
    object RxMSubRDCMes: TStringField
      FieldName = 'Mes'
      Size = 2
    end
    object RxMSubRDCAno: TStringField
      FieldName = 'Ano'
      Size = 2
    end
    object RxMSubRDCDizimos: TCurrencyField
      FieldName = 'Dizimos'
    end
    object RxMSubRDCDiaconos1: TStringField
      FieldName = 'Diaconos1'
      Size = 50
    end
    object RxMSubRDCDiaconos2: TStringField
      FieldName = 'Diaconos2'
      Size = 50
    end
    object RxMSubRDCTesoureiro: TStringField
      FieldName = 'Tesoureiro'
      Size = 50
    end
    object RxMSubRDCTotalRDC: TCurrencyField
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
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 944
    Top = 274
  end
end
