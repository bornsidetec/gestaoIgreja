object FormPreImpAtas: TFormPreImpAtas
  Left = 148
  Top = 93
  Width = 1032
  Height = 664
  Caption = 'FormPreImpAtas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep: TQuickRep
    Left = 88
    Top = 16
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRepBeforePrint
    DataSet = Rx
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
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
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
    object DetailBand2: TQRBand
      Left = 38
      Top = 162
      Width = 718
      Height = 25
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
        66.145833333333330000
        1899.708333333333000000)
      BandType = rbDetail
      object QRShape68: TQRShape
        Left = 8
        Top = 0
        Width = 701
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          21.166666666666670000
          0.000000000000000000
          1854.729166666667000000)
        Shape = qrsRightAndLeft
      end
      object QRDBText2: TQRDBText
        Left = 38
        Top = 4
        Width = 83
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          100.541666666666700000
          10.583333333333330000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Rx
        DataField = 'DescTipoAtas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Book Antiqua'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape69: TQRShape
        Left = 16
        Top = 4
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          10.583333333333330000
          44.979166666666670000)
        Shape = qrsRectangle
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 97
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
        256.645833333333300000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRShape67: TQRShape
        Left = 8
        Top = 8
        Width = 701
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.312500000000000000
          21.166666666666670000
          21.166666666666670000
          1854.729166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel2: TQRLabel
        Left = 80
        Top = 15
        Width = 200
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          211.666666666666700000
          39.687500000000000000
          529.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Registro de Atas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Book Antiqua'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 20
      end
      object QRLabel78: TQRLabel
        Left = 166
        Top = 57
        Width = 222
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          439.208333333333300000
          150.812500000000000000
          587.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '____/____/________  -  ___:___'
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
      object QRLabel79: TQRLabel
        Left = 80
        Top = 57
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          211.666666666666700000
          150.812500000000000000
          216.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data In'#237'cio:'
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
      object QRLabel80: TQRLabel
        Left = 404
        Top = 57
        Width = 70
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1068.916666666667000000
          150.812500000000000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Fim:'
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
      object QRLabel81: TQRLabel
        Left = 478
        Top = 57
        Width = 222
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1264.708333333333000000
          150.812500000000000000
          587.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '____/____/________  -  ___:___'
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
      object QRDBImage1: TQRDBImage
        Left = 12
        Top = 14
        Width = 65
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          31.750000000000000000
          37.041666666666670000
          171.979166666666700000)
        DataField = 'LOGOIGREJA'
        DataSet = QryConfig
        Stretch = True
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 135
      Width = 718
      Height = 27
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
        71.437500000000000000
        1899.708333333333000000)
      BandType = rbColumnHeader
      object QRShape70: TQRShape
        Left = 8
        Top = 0
        Width = 701
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          21.166666666666670000
          0.000000000000000000
          1854.729166666667000000)
        Shape = qrsRightAndLeft
      end
      object QRLabel82: TQRLabel
        Left = 16
        Top = 2
        Width = 86
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          42.333333333333330000
          5.291666666666667000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo da Ata'
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
      object QRShape72: TQRShape
        Left = 8
        Top = 0
        Width = 701
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          21.166666666666670000
          0.000000000000000000
          1854.729166666667000000)
        Shape = qrsHorLine
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 187
      Width = 718
      Height = 630
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
        1666.875000000000000000
        1899.708333333333000000)
      BandType = rbSummary
      object QRShape71: TQRShape
        Left = 8
        Top = 0
        Width = 701
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          21.166666666666670000
          0.000000000000000000
          1854.729166666667000000)
        Shape = qrsHorLine
      end
      object QRShape73: TQRShape
        Left = 8
        Top = 8
        Width = 701
        Height = 613
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1621.895833333333000000
          21.166666666666670000
          21.166666666666670000
          1854.729166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel83: TQRLabel
        Left = 16
        Top = 10
        Width = 71
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          42.333333333333330000
          26.458333333333330000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Assuntos:'
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
      object QRShape1: TQRShape
        Left = 16
        Top = 64
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          169.333333333333300000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape2: TQRShape
        Left = 16
        Top = 96
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          254.000000000000000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 16
        Top = 128
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          338.666666666666700000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 16
        Top = 160
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          423.333333333333300000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape5: TQRShape
        Left = 16
        Top = 192
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          508.000000000000000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape6: TQRShape
        Left = 16
        Top = 224
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          592.666666666666800000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape7: TQRShape
        Left = 16
        Top = 256
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          677.333333333333400000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape8: TQRShape
        Left = 16
        Top = 288
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          762.000000000000000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape9: TQRShape
        Left = 16
        Top = 320
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          846.666666666666600000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape10: TQRShape
        Left = 16
        Top = 352
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          931.333333333333500000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape11: TQRShape
        Left = 16
        Top = 384
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          1016.000000000000000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 16
        Top = 416
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          1100.666666666667000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape13: TQRShape
        Left = 16
        Top = 448
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          1185.333333333333000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape14: TQRShape
        Left = 16
        Top = 480
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          1270.000000000000000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape15: TQRShape
        Left = 16
        Top = 512
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          1354.666666666667000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape16: TQRShape
        Left = 16
        Top = 544
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          1439.333333333333000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape17: TQRShape
        Left = 16
        Top = 576
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          1524.000000000000000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
      object QRShape18: TQRShape
        Left = 16
        Top = 608
        Width = 685
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          42.333333333333340000
          1608.666666666667000000
          1812.395833333333000000)
        Shape = qrsHorLine
      end
    end
  end
  object Rx: TRxMemoryData
    FieldDefs = <>
    Left = 896
    object RxCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object RxDescTipoAtas: TStringField
      FieldName = 'DescTipoAtas'
      Size = 50
    end
  end
  object QryConfig: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select NOMEIGREJA, LOGOIGREJA from Configuracoes')
    DMLRefresh = True
    Left = 900
    Top = 32
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
