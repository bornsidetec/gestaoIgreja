object FormCartaoMembro: TFormCartaoMembro
  Left = 129
  Top = 189
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cart'#227'o de Membro'
  ClientHeight = 391
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
    Height = 334
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      362
      334)
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 41
      Height = 13
      Caption = 'Validade'
    end
    object Label2: TLabel
      Left = 176
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Coluna'
    end
    object Label4: TLabel
      Left = 224
      Top = 56
      Width = 26
      Height = 13
      Caption = 'Linha'
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
      Top = 152
      Width = 348
      Height = 174
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 13
      TabOrder = 4
    end
    object DateEditValidade: TDateEdit
      Left = 8
      Top = 72
      Width = 105
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object QuickRepCartao: TQuickRep
      Left = 512
      Top = 179
      Width = 677
      Height = 877
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
      Page.Columns = 2
      Page.Orientation = poPortrait
      Page.PaperSize = Custom
      Page.Values = (
        10.000000000000000000
        2320.000000000000000000
        50.000000000000000000
        1790.000000000000000000
        50.000000000000000000
        50.000000000000000000
        30.000000000000000000)
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
      object QRBand1: TQRBand
        Left = 19
        Top = 19
        Width = 314
        Height = 212
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = QRBand1BeforePrint
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          560.916666666666700000
          830.791666666666700000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText1: TQRDBText
          Left = 76
          Top = 41
          Width = 99
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            201.083333333333300000
            108.479166666666700000
            261.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'DataNascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText2: TQRDBText
          Left = 38
          Top = 58
          Width = 15
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            100.541666666666700000
            153.458333333333300000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'RG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 57
          Top = 73
          Width = 78
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            150.812500000000000000
            193.145833333333300000
            206.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'MembroDesde'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText5: TQRDBText
          Left = 238
          Top = 58
          Width = 78
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            629.708333333333300000
            153.458333333333300000
            206.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'FichaNumero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText6: TQRDBText
          Left = 227
          Top = 74
          Width = 85
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            600.604166666666700000
            195.791666666666700000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'DataValidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText3: TQRDBText
          Left = 51
          Top = 89
          Width = 85
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            134.937500000000000000
            235.479166666666700000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'BairroIgreja'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRMemoNome: TQRMemo
          Left = 53
          Top = 12
          Width = 252
          Height = 29
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            76.729166666666680000
            140.229166666666700000
            31.750000000000000000
            666.750000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
    end
    object SpinLin: TRxSpinEdit
      Left = 224
      Top = 72
      Width = 41
      Height = 21
      Hint = 'Linha'
      ButtonKind = bkStandard
      MaxValue = 4.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object SpinCol: TRxSpinEdit
      Left = 176
      Top = 72
      Width = 41
      Height = 21
      Hint = 'Coluna'
      ButtonKind = bkStandard
      MaxValue = 2.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object ChkPimaco: TCheckBox
      Left = 272
      Top = 76
      Width = 81
      Height = 17
      Caption = 'Pimaco'
      TabOrder = 8
      OnClick = edt
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 96
      Width = 345
      Height = 45
      Caption = 'Margens em Milimetros'
      TabOrder = 9
      object Label5: TLabel
        Left = 8
        Top = 24
        Width = 39
        Height = 13
        Caption = 'Superior'
      end
      object Label6: TLabel
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
    object QuickRepPimaco: TQuickRep
      Left = 603
      Top = 587
      Width = 813
      Height = 1002
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
      Page.Columns = 2
      Page.Orientation = poPortrait
      Page.PaperSize = Custom
      Page.Values = (
        20.000000000000000000
        2650.000000000000000000
        95.000000000000000000
        2150.000000000000000000
        170.000000000000000000
        100.000000000000000000
        220.000000000000000000)
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
        Left = 64
        Top = 36
        Width = 314
        Height = 238
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = QRBand2BeforePrint
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          629.708333333333300000
          830.791666666666700000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText7: TQRDBText
          Left = 76
          Top = 41
          Width = 99
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            201.083333333333300000
            108.479166666666700000
            261.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'DataNascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText8: TQRDBText
          Left = 38
          Top = 58
          Width = 15
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            100.541666666666700000
            153.458333333333300000
            39.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'RG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText9: TQRDBText
          Left = 57
          Top = 73
          Width = 78
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            150.812500000000000000
            193.145833333333300000
            206.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'MembroDesde'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText10: TQRDBText
          Left = 238
          Top = 58
          Width = 78
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            629.708333333333300000
            153.458333333333300000
            206.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'FichaNumero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText11: TQRDBText
          Left = 227
          Top = 74
          Width = 85
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            600.604166666666700000
            195.791666666666700000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'DataValidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText12: TQRDBText
          Left = 51
          Top = 89
          Width = 85
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            134.937500000000000000
            235.479166666666700000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxMem
          DataField = 'BairroIgreja'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRMemoNome2: TQRMemo
          Left = 53
          Top = 12
          Width = 252
          Height = 29
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            76.729166666666680000
            140.229166666666700000
            31.750000000000000000
            666.750000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 334
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
    object RxMemBairroIgreja: TStringField
      FieldName = 'BairroIgreja'
      Size = 50
    end
    object RxMemDataValidade: TDateTimeField
      FieldName = 'DataValidade'
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
    object QryDadosBairroIgreja: TStringField
      FieldName = 'BairroIgreja'
      Size = 50
    end
    object QryDadosDataValidade: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'DataValidade'
      Calculated = True
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 928
    Top = 195
  end
end
