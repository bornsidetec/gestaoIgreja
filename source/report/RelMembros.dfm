object FormRelMembros: TFormRelMembros
  Left = 281
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Membros'
  ClientHeight = 226
  ClientWidth = 272
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
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFiltro: TPanel
    Left = 0
    Top = 0
    Width = 272
    Height = 169
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object RadioGroupSexo: TRadioGroup
      Left = 8
      Top = 8
      Width = 257
      Height = 49
      Caption = 'Sexo'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ambos'
        'Masculino'
        'Feminino')
      TabOrder = 0
    end
    object GroupBoxIdade: TGroupBox
      Left = 8
      Top = 64
      Width = 257
      Height = 49
      Caption = 'Idade entre'
      TabOrder = 1
      object Label1: TLabel
        Left = 124
        Top = 24
        Width = 6
        Height = 13
        Caption = 'e'
      end
      object SpinEditIdade1: TSpinEdit
        Left = 8
        Top = 16
        Width = 113
        Height = 22
        MaxLength = 3
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
      object SpinEditIdade2: TSpinEdit
        Left = 136
        Top = 16
        Width = 113
        Height = 22
        MaxLength = 3
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 999
      end
    end
    object QuickRep: TQuickRep
      Left = 24
      Top = 213
      Width = 1123
      Height = 794
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = RxMem
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
      Page.Orientation = poLandscape
      Page.PaperSize = A4
      Page.Values = (
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        100.000000000000000000
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
      object PageHeaderBand1: TQRBand
        Left = 38
        Top = 38
        Width = 1047
        Height = 87
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = PageHeaderBand1BeforePrint
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          230.187500000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRShape2: TQRShape
          Left = 0
          Top = 74
          Width = 1047
          Height = 7
          Frame.Color = clSilver
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            18.520833333333330000
            0.000000000000000000
            195.791666666666700000
            2770.187500000000000000)
          Brush.Color = clSilver
          Pen.Color = clSilver
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabelFiltro: TQRLabel
          Left = 0
          Top = 56
          Width = 76
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            0.000000000000000000
            148.166666666666700000
            201.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRLabelFiltro'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabelSistema: TQRLabel
          Left = 0
          Top = 0
          Width = 348
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            0.000000000000000000
            0.000000000000000000
            920.750000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'IEQSoft - SISTEMA DE GEST'#195'O ECLESI'#193'STICA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 14
        end
        object QRLabelRel: TQRLabel
          Left = 0
          Top = 40
          Width = 138
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            0.000000000000000000
            105.833333333333300000
            365.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'RELAT'#211'RIO DE MEMBROS'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabelIEQ: TQRLabel
          Left = 0
          Top = 24
          Width = 19
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            0.000000000000000000
            63.500000000000000000
            50.270833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'IEQ'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object QRDBImage1: TQRDBImage
          Left = 978
          Top = 6
          Width = 65
          Height = 65
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            171.979166666666700000
            2587.625000000000000000
            15.875000000000000000
            171.979166666666700000)
          DataField = 'LOGOIGREJA'
          DataSet = QryConfig
          Stretch = True
        end
      end
      object ColumnHeaderBand1: TQRBand
        Left = 38
        Top = 125
        Width = 1047
        Height = 34
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
          89.958333333333330000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbColumnHeader
        object QRLabel1: TQRLabel
          Left = 0
          Top = 0
          Width = 29
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            0.000000000000000000
            76.729166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nome'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel2: TQRLabel
          Left = 274
          Top = 0
          Width = 51
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            724.958333333333300000
            0.000000000000000000
            134.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fone Resid'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel4: TQRLabel
          Left = 354
          Top = 0
          Width = 59
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            936.625000000000000000
            0.000000000000000000
            156.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fone Celular'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRShape3: TQRShape
          Left = 0
          Top = 29
          Width = 1047
          Height = 3
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            7.937500000000000000
            0.000000000000000000
            76.729166666666680000
            2770.187500000000000000)
          Brush.Color = clSilver
          Pen.Color = clSilver
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel6: TQRLabel
          Left = 0
          Top = 14
          Width = 54
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            37.041666666666670000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Logradouro'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel7: TQRLabel
          Left = 274
          Top = 14
          Width = 39
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            724.958333333333300000
            37.041666666666670000
            103.187500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#250'mero'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel8: TQRLabel
          Left = 320
          Top = 14
          Width = 68
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            846.666666666666700000
            37.041666666666670000
            179.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Complemento'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel10: TQRLabel
          Left = 560
          Top = 0
          Width = 27
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1481.666666666667000000
            0.000000000000000000
            71.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Idade'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel11: TQRLabel
          Left = 488
          Top = 14
          Width = 29
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1291.166666666667000000
            37.041666666666670000
            76.729166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Bairro'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel12: TQRLabel
          Left = 704
          Top = 14
          Width = 33
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1862.666666666667000000
            37.041666666666670000
            87.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cidade'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel13: TQRLabel
          Left = 944
          Top = 14
          Width = 31
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2497.666666666667000000
            37.041666666666670000
            82.020833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Estado'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel14: TQRLabel
          Left = 984
          Top = 14
          Width = 18
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2603.500000000000000000
            37.041666666666670000
            47.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CEP'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
      end
      object DetailBand1: TQRBand
        Left = 38
        Top = 159
        Width = 1047
        Height = 30
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
          79.375000000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText1: TQRDBText
          Left = 0
          Top = 0
          Width = 29
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            0.000000000000000000
            76.729166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText2: TQRDBText
          Left = 274
          Top = 0
          Width = 50
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            724.958333333333300000
            0.000000000000000000
            132.291666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'FoneResid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText3: TQRDBText
          Left = 354
          Top = 0
          Width = 58
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            936.625000000000000000
            0.000000000000000000
            153.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'FoneCelular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 0
          Top = 14
          Width = 36
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            37.041666666666670000
            95.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'EndRua'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText5: TQRDBText
          Left = 448
          Top = 0
          Width = 21
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1185.333333333333000000
            0.000000000000000000
            55.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText6: TQRDBText
          Left = 568
          Top = 0
          Width = 28
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1502.833333333333000000
            0.000000000000000000
            74.083333333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'Idade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText7: TQRDBText
          Left = 274
          Top = 14
          Width = 56
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            724.958333333333300000
            37.041666666666670000
            148.166666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'EndNumero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText8: TQRDBText
          Left = 320
          Top = 14
          Width = 85
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            846.666666666666700000
            37.041666666666670000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'EndComplemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText9: TQRDBText
          Left = 488
          Top = 14
          Width = 47
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1291.166666666667000000
            37.041666666666670000
            124.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'EndBairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText10: TQRDBText
          Left = 704
          Top = 14
          Width = 51
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1862.666666666667000000
            37.041666666666670000
            134.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'EndCidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText11: TQRDBText
          Left = 944
          Top = 14
          Width = 50
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2497.666666666667000000
            37.041666666666670000
            132.291666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'EndEstado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText12: TQRDBText
          Left = 984
          Top = 14
          Width = 36
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2603.500000000000000000
            37.041666666666670000
            95.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'EndCep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRShape4: TQRShape
          Left = 0
          Top = 28
          Width = 1049
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            0.000000000000000000
            74.083333333333340000
            2775.479166666667000000)
          Brush.Color = clGray
          Pen.Color = clGray
          Shape = qrsHorLine
          VertAdjust = 0
        end
      end
      object PageFooterBand1: TQRBand
        Left = 38
        Top = 189
        Width = 1047
        Height = 24
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
          63.500000000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
        object QRShape1: TQRShape
          Left = 0
          Top = 2
          Width = 1047
          Height = 3
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            7.937500000000000000
            0.000000000000000000
            5.291666666666667000
            2770.187500000000000000)
          Brush.Color = clSilver
          Pen.Color = clSilver
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRSysData1: TQRSysData
          Left = 987
          Top = 8
          Width = 57
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2611.437500000000000000
            21.166666666666670000
            150.812500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          FontSize = 8
        end
        object QRSysData2: TQRSysData
          Left = 48
          Top = 8
          Width = 35
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            127.000000000000000000
            21.166666666666670000
            92.604166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsPageNumber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel3: TQRLabel
          Left = 0
          Top = 8
          Width = 36
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            21.166666666666670000
            95.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Pagina:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
      end
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 128
      Width = 97
      Height = 17
      Caption = 'Apenas Ativos'
      TabOrder = 3
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 169
    Width = 272
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
  object RxMem: TRxMemoryData
    FieldDefs = <>
    Left = 368
    Top = 8
    object RxMemNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object RxMemIdade: TIntegerField
      FieldName = 'Idade'
    end
    object RxMemEndRua: TStringField
      FieldName = 'EndRua'
      Size = 50
    end
    object RxMemEndNumero: TStringField
      FieldName = 'EndNumero'
      Size = 6
    end
    object RxMemEndBairro: TStringField
      FieldName = 'EndBairro'
      Size = 50
    end
    object RxMemEndComplemento: TStringField
      FieldName = 'EndComplemento'
      Size = 30
    end
    object RxMemEndCidade: TStringField
      FieldName = 'EndCidade'
      Size = 50
    end
    object RxMemEndEstado: TStringField
      FieldName = 'EndEstado'
      Size = 2
    end
    object RxMemEndCep: TStringField
      FieldName = 'EndCep'
      EditMask = '#####\-###;0;_'
      Size = 8
    end
    object RxMemFoneResid: TStringField
      FieldName = 'FoneResid'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 10
    end
    object RxMemFoneCelular: TStringField
      FieldName = 'FoneCelular'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 10
    end
  end
  object Ds: TDataSource
    DataSet = RxMem
    Left = 400
    Top = 8
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
    Left = 224
    Top = 128
  end
end
