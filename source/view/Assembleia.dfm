object FormAssembleia: TFormAssembleia
  Left = 314
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Assembl'#233'ia Geral'
  ClientHeight = 446
  ClientWidth = 536
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
    Width = 536
    Height = 389
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 94
      Height = 13
      Caption = 'Data da Assembl'#233'ia'
    end
    object Label2: TLabel
      Left = 120
      Top = 8
      Width = 58
      Height = 13
      Caption = 'Ano Anterior'
    end
    object Label3: TLabel
      Left = 192
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Ano Atual'
    end
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 38
      Height = 13
      Caption = 'Membro'
    end
    object SpdBtnMembros: TSpeedButton
      Left = 68
      Top = 63
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D400000000000000000000000000000000000000000000
        0000000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000000000
        008080008080008080008080008080008080008080008080008080000000C8D0
        D4C8D0D4C8D0D4C8D0D400000000FFFF00000000808000808000808000808000
        8080008080008080008080008080000000C8D0D4C8D0D4C8D0D4000000FFFFFF
        00FFFF0000000080800080800080800080800080800080800080800080800080
        80000000C8D0D4C8D0D400000000FFFFFFFFFF00FFFF00000000808000808000
        8080008080008080008080008080008080008080000000C8D0D4000000FFFFFF
        00FFFFFFFFFF00FFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFF000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000FFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D400000000FFFFFFFFFF00FFFF00000000000000000000
        0000000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000
        000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000
        00000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000000000C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D40000
        00C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
      OnClick = SpdBtnMembrosClick
    end
    object LblNomeMembro: TLabel
      Left = 96
      Top = 71
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnPesquisar: TBitBtn
      Left = 448
      Top = 8
      Width = 81
      Height = 41
      Caption = 'Pesquisar'
      TabOrder = 3
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
    object DateEditIni: TDateEdit
      Left = 8
      Top = 24
      Width = 105
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EditAnoAnterior: TEdit
      Left = 120
      Top = 24
      Width = 65
      Height = 21
      MaxLength = 4
      TabOrder = 1
      OnKeyPress = EditAnoAnteriorKeyPress
    end
    object EditAnoAtual: TEdit
      Left = 192
      Top = 24
      Width = 65
      Height = 21
      MaxLength = 4
      TabOrder = 2
      OnKeyPress = EditAnoAnteriorKeyPress
    end
    object PageControl1: TPageControl
      Left = 8
      Top = 96
      Width = 521
      Height = 281
      ActivePage = TbsLideranca
      Style = tsFlatButtons
      TabOrder = 6
      object TbsDiaconato: TTabSheet
        Caption = 'Diaconato'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 8
          Width = 513
          Height = 241
          DataSource = DsDiaconos
          Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 474
              Visible = True
            end>
        end
      end
      object TbsCDL: TTabSheet
        Caption = 'CDL'
        ImageIndex = 1
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 52
          Height = 13
          Caption = 'Cargo CDL'
        end
        object DBGridCDL: TDBGrid
          Left = 0
          Top = 56
          Width = 513
          Height = 193
          DataSource = DsCDL
          Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 279
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 203
              Visible = True
            end>
        end
        object ComboBoxCDL: TComboBox
          Left = 0
          Top = 16
          Width = 225
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
      end
      object TbsLideranca: TTabSheet
        Caption = 'Lideran'#231'a'
        ImageIndex = 2
        object Label6: TLabel
          Left = 0
          Top = 0
          Width = 78
          Height = 13
          Caption = 'Cargo Lideran'#231'a'
        end
        object ComboBoxLideres: TComboBox
          Left = 0
          Top = 16
          Width = 225
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
        end
        object DBGridLideres: TDBGrid
          Left = 0
          Top = 56
          Width = 513
          Height = 193
          DataSource = DsLideres
          Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 279
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 203
              Visible = True
            end>
        end
      end
    end
    object EditMembro: TEdit
      Left = 8
      Top = 64
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 8
      TabOrder = 4
      OnEnter = EditMembroEnter
      OnExit = EditMembroExit
      OnKeyDown = EditMembroKeyDown
      OnKeyPress = EditMembroKeyPress
    end
    object BtnAddMembro: TBitBtn
      Left = 496
      Top = 60
      Width = 33
      Height = 25
      Hint = 'Incluir Membro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BtnAddMembroClick
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
        000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
        00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
        8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
        8888880BB088888888888800008888888888}
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 389
    Width = 536
    Height = 57
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      536
      57)
    object BtnSair: TBitBtn
      Left = 450
      Top = 8
      Width = 81
      Height = 41
      Caption = 'Sai&r'
      TabOrder = 1
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
    object BtnConfirmar: TBitBtn
      Left = 8
      Top = 8
      Width = 81
      Height = 41
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BtnConfirmarClick
      Glyph.Data = {
        36120000424D3612000000000000360000002800000030000000180000000100
        2000000000000012000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0DED300A2BC
        A60078967800688A6900688A690078967800A2BDA700D0DED300FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CBCB
        CB00B6B6B600ADADAD00ADADAD00B6B6B600CBCBCB00E5E5E500FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0C5B300305F32002B592C002B56
        29003B704300447D5000447D50003B7043002B5629002B592C00305F3200AFC5
        B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300909090008E8E8E008E8E
        8E00939393009696960096969600939393008E8E8E008E8E8E0090909000D3D3
        D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00DDE8E000688F6C002C5D2E003F784A006BB68B0086DB
        B10087DEB30084D8AE0084D8AE0087DEB30086DBB1006BB68B003F784A002C5D
        2E00688E6C00DDE8E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00ECECEC00AEAEAE008F8F8F0095959500A3A3A300ACAC
        AC00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00A3A3A300959595008F8F
        8F00AEAEAE00ECECEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D1E0D4002F6437002C61330070B78E008EDFB7007ED1A40069BD
        85005AB4740059B2710059B271005AB4740069BD85007ED1A4008EDFB70070B7
        8E002C6133002F633700D0E0D400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E5E5E5009090900090909000A4A4A400ADADAD00A9A9A900A3A3
        A300A0A0A0009F9F9F009F9F9F00A0A0A000A3A3A300A9A9A900ADADAD00A4A4
        A4009090900090909000E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DDE9E1002F683A003873440088D3AC008AD7AE0061B87C0050AE660054B1
        6C0056B26E0056B26E0056B26E0056B26E0054B16C0050AE660061B87C008AD7
        AE0088D2AC00387444002F683A00DDE9E100FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00EDEDED009191910093939300ABABAB00ABABAB00A1A1A1009D9D9D009E9E
        9E009F9F9F009F9F9F009F9F9F009F9F9F009E9E9E009D9D9D00A1A1A100ABAB
        AB00ABABAB009494940091919100EDEDED00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00689672002B6738008DD4AF008AD6AD0055B16C0056B06E0059B2720059B2
        720059B2720059B2720059B2720059B2720059B2720059B2720056B06E0055B1
        6C008AD6AD008DD4AF002B67370069967300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00AFAFAF0090909000ACACAC00ABABAB009E9E9E009F9F9F009F9F9F009F9F
        9F009F9F9F009F9F9F009F9F9F009F9F9F009F9F9F009F9F9F009F9F9F009E9E
        9E00ABABAB00ACACAC0090909000AFAFAF00FFFFFF00FFFFFF00FFFFFF00B1CB
        B8002A6A39007BBD970096DCB6005AB170005BB471005DB574005DB574005DB5
        740055B16D004FAE67005DB573005DB574005DB574005DB574005DB574005BB4
        71005AB1700096DCB6007BBD97002A693800B1CCB900FFFFFF00FFFFFF00D4D4
        D40091919100A6A6A600AEAEAE009F9F9F00A0A0A000A0A0A000A0A0A000A0A0
        A0009E9E9E009D9D9D00A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
        A0009F9F9F00AEAEAE00A6A6A60090909000D5D5D500FFFFFF00FFFFFF002F75
        440042865900A6E5C7006CBD84005BB371005EB675005EB675005EB575004EAE
        670080C69300CAE9D20041A95D005DB574005EB675005EB675005EB675005EB6
        75005BB371006ABD8400A6E5C700428659002E744300FFFFFF00FFFFFF009393
        930098989800B1B1B100A3A3A3009F9F9F00A0A0A000A0A0A000A0A0A0009D9D
        9D00A7A7A700B5B5B5009B9B9B00A0A0A000A0A0A000A0A0A000A0A0A000A0A0
        A0009F9F9F00A3A3A300B1B1B1009898980093939300FFFFFF00D2E4D8002871
        3E0084C4A00097D8B30058B16E0061B6790061B6790061B6780051AF69008BCB
        9B00FFFFFF00FFFFFF00D1EBD9004DAD66005FB5770061B6790061B6790061B6
        790061B6790058B16E0097D8B30084C4A00028713E00D3E4D900E6E6E6009191
        9100A8A8A800ADADAD009F9F9F00A1A1A100A1A1A100A1A1A1009E9E9E00A9A9
        A900BFBFBF00BFBFBF00B7B7B7009D9D9D00A0A0A000A1A1A100A1A1A100A1A1
        A100A1A1A1009F9F9F00ADADAD00A8A8A80091919100E6E6E600A6C9B1002474
        3E00B0E6CB007DC6960062B6770066B97C0065B87B004EAE6800A0D6AF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00DFF1E30049AC640063B7790066B97C0066B9
        7C0066B97C0062B677007DC69600B0E6CB0024743E00A7CAB300CECECE009191
        9100B2B2B200A7A7A700A1A1A100A2A2A200A2A2A2009D9D9D00ADADAD00BFBF
        BF00BFBFBF00BFBFBF00BFBFBF00B9B9B9009C9C9C00A1A1A100A2A2A200A2A2
        A200A2A2A200A1A1A100A7A7A700B2B2B20091919100CECECE0076AD8A00408D
        5C00B5E7D1006DBC830067B97B0068B97D005FB57600B5DFC000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9F5ED0058B3700065B87A0069BA
        7D0069BA7D0067B97B006DBC8300B5E7D100408D5C0076AC8A00B9B9B9009898
        9800B3B3B300A3A3A300A2A2A200A2A2A200A0A0A000B1B1B100BFBFBF00BFBF
        BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BBBBBB009F9F9F00A1A1A100A2A2
        A200A2A2A200A2A2A200A3A3A300B3B3B30098989800B9B9B90067A37E004D99
        6E00B3E5CD006DBB82006ABA7F0068B97D007CC49000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FCFDFC00FFFFFF00FFFFFF00FFFFFF00F2F9F40056B06E0067B8
        7D006CBB81006ABA7F006DBB8200B3E5CD004D996E0067A37E00B1B1B1009C9C
        9C00B3B3B300A3A3A300A2A2A200A2A2A200A6A6A600BFBFBF00BFBFBF00BFBF
        BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BDBDBD009F9F9F00A2A2
        A200A3A3A300A2A2A200A3A3A300B3B3B3009C9C9C00B1B1B10066A77F00509C
        6F00B9E6D00071BD86006DBB82006FBB840065B77C0076C28900FFFFFF00FFFF
        FF0099D2A80051AF6A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFDFA0068B8
        7D0069B87F006DBB820071BD8600B9E6D000509C6F0066A77F00B2B2B2009C9C
        9C00B3B3B300A4A4A400A3A3A300A3A3A300A2A2A200A5A5A500BFBFBF00BFBF
        BF00ACACAC009E9E9E00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BEBEBE00A2A2
        A200A2A2A200A3A3A300A4A4A400B3B3B3009C9C9C00B2B2B20075B18E004095
        6400C3EBDA0076BF8B0070BD850072BE870072BE870068B87E0085C996009FD3
        AD0061B679006BBA810071C08700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0076C18A006DBB820076BF8B00C3EBDA004095640074B18E00BABABA009A9A
        9A00B6B6B600A5A5A500A4A4A400A4A4A400A4A4A400A2A2A200A8A8A800ADAD
        AD00A1A1A100A3A3A300A4A4A400BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00A5A5A500A3A3A300A5A5A500B6B6B6009A9A9A00BABABA00A6D0B8002085
        4A00C4EADB008ECEA20070BD840074C0890074C0890074C0890070BD85006DBC
        820074C0890074C089006CBB810076C28900FFFFFF00FFFFFF00FFFFFF00FFFF
        FF008BCB9C006CBB80008ECEA200C4EADB001F844900A8D2BA00CFCFCF009393
        9300B6B6B600AAAAAA00A4A4A400A5A5A500A5A5A500A5A5A500A4A4A400A3A3
        A300A5A5A500A5A5A500A3A3A300A5A5A500BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00A9A9A900A3A3A300AAAAAA00B6B6B60093939300CFCFCF00D3E9DC00218B
        4F0099CFB400B2E0C7006EBB7F0079C18A0079C18A0079C18A0079C18A0079C1
        8A0079C18A0079C18A0079C18A006EBB81008FCD9F00FFFFFF00DDEFE1006CBD
        800072BD85006EBB7F00B2E0C70099CFB400208A4E00D4E9DE00E7E7E7009494
        9400ADADAD00B2B2B200A3A3A300A5A5A500A5A5A500A5A5A500A5A5A500A5A5
        A500A5A5A500A5A5A500A5A5A500A3A3A300AAAAAA00BFBFBF00B9B9B900A3A3
        A300A4A4A400A3A3A300B2B2B200ADADAD0094949400E7E7E700FFFFFF002994
        590045A26F00CFEDE50088CB9C0077BF89007CC28E007CC28E007CC28E007CC2
        8E007CC28E007CC28E007CC28E007CC28E0072BD850086CA98006AB97E007AC0
        8C0077BF890088CB9C00CFEDE50045A26F0027935800FFFFFF00FFFFFF009797
        97009C9C9C00B8B8B800A9A9A900A5A5A500A6A6A600A6A6A600A6A6A600A6A6
        A600A6A6A600A6A6A600A6A6A600A6A6A600A4A4A400A8A8A800A2A2A200A5A5
        A500A5A5A500A9A9A900B8B8B8009C9C9C0096969600FFFFFF00FFFFFF00B1D9
        C300209154009ED2B800C6E8DC007AC28B007BC18D007DC290007DC290007DC2
        90007DC290007DC290007DC290007DC290007DC290007AC18D007DC290007BC1
        8D007AC28B00C6E8DA009ED2B8001F915400B2DAC400FFFFFF00FFFFFF00D6D6
        D60095959500AEAEAE00B6B6B600A5A5A500A6A6A600A6A6A600A6A6A600A6A6
        A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
        A600A5A5A500B6B6B600AEAEAE0095959500D7D7D700FFFFFF00FFFFFF00FFFF
        FF0065B78C0020955800C7E7D900C4E6D8007DC38C007CC28D0080C4910080C4
        910080C4910080C4910080C4910080C4910080C4910080C491007CC28D007DC3
        8C00C4E6D800C7E7D9002095580064B68C00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00B4B4B40096969600B5B5B500B5B5B500A6A6A600A6A6A600A7A7A700A7A7
        A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A6A6A600A6A6
        A600B5B5B500B5B5B50096969600B4B4B400FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DFF0E700259D600036A46C00CCE8DF00CFEBE10093CEA30079C3880080C6
        900083C7920083C7930083C7930083C7920080C6900079C3880093CEA300CFEB
        E100CCE8DF0036A46C00249D5F00DFF1E800FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00EEEEEE00989898009B9B9B00B6B6B600B7B7B700ABABAB00A5A5A500A7A7
        A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A5A5A500ABABAB00B7B7
        B700B6B6B6009B9B9B0098989800EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D3ECDF0024A063001F9D5E00A9D9C400E4F3F300C9E6DB00A4D5
        B4008CCB9B0089C99A0089C99A008CCB9B00A4D5B400C9E6DB00E4F3F300A9D9
        C4001F9D5E0024A06200D3ECDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E7E7E7009898980097979700B0B0B000BBBBBB00B6B6B600AEAE
        AE00A9A9A900A9A9A900A9A9A900A9A9A900AEAEAE00B6B6B600BBBBBB00B0B0
        B0009797970098989800E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00DFF1E80062BE93001B9F5F0048B17F00ACDCC800E7F2
        F400EBF5F600E3F0F000E3F0F000EBF5F600E7F2F400ACDCC80048B17F001B9F
        5F0063BE9300DFF1E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EEEEEE00B5B5B500979797009F9F9F00B1B1B100BBBB
        BB00BCBCBC00BABABA00BABABA00BCBCBC00BBBBBB00B1B1B1009F9F9F009797
        9700B5B5B500EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2DFCA0026A86D001BA2630018A2
        610041B27F0057BA8D0057BA8D0041B27F0018A161001BA2630025A76C00B2DF
        CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D8D8009A9A9A00989898009797
        97009E9E9E00A2A2A200A2A2A2009E9E9E0097979700989898009A9A9A00D8D8
        D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5EEE300AADD
        C60072C9A10062C3970062C3970072C9A100ABDDC600D6EFE300FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E800D1D1
        D100BDBDBD00B5B5B500B5B5B500BDBDBD00D2D2D200E8E8E800FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      NumGlyphs = 2
    end
    object ProgressBar: TProgressBar
      Left = 96
      Top = 32
      Width = 345
      Height = 9
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Visible = False
    end
  end
  object QryDados: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select M.FichaNumero, M.Nome, M.DataNascimento,'
      '       M.RG, M.MembroDesde'
      'from Membros M'
      'where M.FichaNumero in :Fichas')
    DMLRefresh = True
    Left = 416
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fichas'
      end>
  end
  object RxMCDL: TRxMemoryData
    FieldDefs = <>
    Left = 384
    Top = 8
    object RxMCDLMembro: TIntegerField
      FieldName = 'Membro'
    end
    object RxMCDLNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object RxMCDLCargo: TIntegerField
      FieldName = 'Cargo'
    end
    object RxMCDLDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object RxMLideres: TRxMemoryData
    FieldDefs = <>
    Left = 352
    Top = 8
    object RxMLideresMembro: TIntegerField
      FieldName = 'Membro'
    end
    object RxMLideresNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object RxMLideresDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object RxMLideresDepartamento: TIntegerField
      FieldName = 'Departamento'
    end
  end
  object DsCDL: TDataSource
    DataSet = RxMCDL
    Left = 384
    Top = 40
  end
  object DsLideres: TDataSource
    DataSet = RxMLideres
    Left = 352
    Top = 40
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 404
    Top = 96
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
  object RxMDiaconos: TRxMemoryData
    FieldDefs = <>
    Left = 320
    Top = 8
    object RxMDiaconosMembro: TIntegerField
      FieldName = 'Membro'
    end
    object RxMDiaconosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object DsDiaconos: TDataSource
    DataSet = RxMDiaconos
    Left = 320
    Top = 40
  end
end
