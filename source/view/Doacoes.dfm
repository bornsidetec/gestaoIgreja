object FormDoacoes: TFormDoacoes
  Left = 394
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Registro de Doa'#231#245'es'
  ClientHeight = 522
  ClientWidth = 544
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 544
    Height = 483
    ActivePage = TabSheetManutencao
    Align = alClient
    TabOrder = 0
    object TabSheetListagem: TTabSheet
      Caption = 'Listagem'
      object PanelFiltro: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 65
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          536
          65)
        object GroupBoxPeriodo: TGroupBox
          Left = 8
          Top = 8
          Width = 265
          Height = 49
          Caption = 'Per'#237'odo'
          TabOrder = 0
          object DateEditIni: TDateEdit
            Left = 8
            Top = 16
            Width = 121
            Height = 21
            NumGlyphs = 2
            StartOfWeek = Sun
            TabOrder = 0
          end
          object DateEditFim: TDateEdit
            Left = 136
            Top = 16
            Width = 121
            Height = 21
            NumGlyphs = 2
            StartOfWeek = Sun
            TabOrder = 1
          end
        end
        object BtnPesquisar: TBitBtn
          Left = 421
          Top = 8
          Width = 107
          Height = 49
          Anchors = [akTop, akRight]
          Caption = '&Pesquisar'
          TabOrder = 1
          OnClick = BtnPesquisarClick
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C06E6E6E6E6E6E6E6E6EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C06E6E6E5656566262623E3E3E6E6E6EC0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C06E6E6E7A7A7A6E6E6E9E9E9E6E6E6E3E3E3E6E6E6EC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C09E9E9E6B8FFF4873FF6E6E6E9E9E9E6E6E6E3E3E3E6E6E6EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0B1C7FF6BC6FF48B8FF4873FF6E6E6E9E9E9E7A7A7A3E3E3E6E6E
            6EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C06BC6FF6BC6FF48B8FF4873FF6E6E6E9E9E9E6E6E6E3E3E
            3E6E6E6EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C06BC6FF6BC6FF48B8FF4873FF6E6E6E9E9E9E6E6E
            6E3E3E3E6E6E6EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06BC6FF6BC6FF48B8FF4873FF6E6E6E9E9E
            9E7A7A7A3E3E3EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06BC6FF6BC6FF48B8FF4873FF6E6E
            6E9E9E9E626262C0C0C0C0C0C08686867A7A7A7A7A7A6262626E6E6E7A7A7AC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06BC6FF6BC6FF48B8FF4873
            FF6E6E6E6262626262626E6E6E6262626E6E6E7A7A7A9292927A7A7A6262624A
            4A4A626262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06BC6FF6BC6FF8EAB
            FF868686929292868686929292F0CAA6FFE2B1FFFFD4FFFFD4FFE3D4F0CAA686
            86865656564A4A4AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0868686868686FFAB8EFFE2B1FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FF
            F0D4A4A0A05656564A4A4AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0A4A0A0FFAB8EFFE2B1FFF0D4FFF0D4FFFFD4FFFFD4FFFFD4FFFFD4FFFFFFFF
            FFFFF2F2F29292924A4A4A6E6E6EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0FFAB8EFFE2B1FFF0D4FFE2B1FFFFD4FFFFD4FFFFD4FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE3D46262624A4A4AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0AAAA
            AAF0CAA6FFFFD4FFE2B1FFE2B1FFFFD4FFFFD4FFFFD4FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFD4FFFFD49292924A4A4AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFB1
            B1FFE2B1FFF0D4FFE2B1FFE2B1FFFFD4FFFFD4FFFFD4FFFFD4FFFFFFFFFFFFFF
            FFFFFFFFD4FFFFD4B6B6B64A4A4AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFB1
            B1FFF0D4FFE2B1FFD48EFFE2B1FFF0D4FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FF
            FFD4FFFFD4FFFFD4F0CAA6565656C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFB1
            B1FFF0D4FFE2B1FFD48EFFE2B1FFE2B1FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FF
            FFD4FFFFD4FFFFD4F0CAA6565656C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B6B6
            B6FFE2B1FFFFD4FFE2B1FFE2B1FFE2B1FFE2B1FFFFD4FFFFD4FFFFD4FFFFD4FF
            FFD4FFFFD4FFFFD4FFAB8E565656C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0AAAA
            AAF0CAA6FFFFD4FFF0D4FFF0D4FFE2B1FFE2B1FFE2B1FFE2B1FFF0D4FFF0D4FF
            E2B1FFFFD4FFE2B17A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0AAAAAAFFF0D4FFFFFFFFFFFFFFF0D4FFE2B1FFE2B1FFE2B1FFE2B1FFE2B1FF
            F0D4FFF0D4FFAB8E6E6E6EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0AAAAAAF0CAA6FFFFFFFFFFFFFFFFD4FFF0D4FFE2B1FFE2B1FFE2B1FFF0D4FF
            F0D4F0CAA67A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0AAAAAAAAAAAAFFE3D4FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FFE2B1FF
            AB8E868686C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0AAAAAAA4A0A0A4A0A0F0CAA6F0CAA6F0CAA6F0CAA6A4A0A086
            8686C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
      end
      object PanelGrid: TPanel
        Left = 0
        Top = 65
        Width = 536
        Height = 390
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid: TRxDBGrid
          Left = 2
          Top = 2
          Width = 532
          Height = 386
          Align = alClient
          DataSource = Ds
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGridDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Doador'
              Width = 384
              Visible = True
            end>
        end
      end
    end
    object TabSheetManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      object PanelDados: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 455
        Align = alClient
        BevelInner = bvLowered
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label1: TLabel
          Left = 8
          Top = 88
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label4: TLabel
          Left = 120
          Top = 88
          Width = 77
          Height = 13
          Caption = 'Tipo de Doa'#231#227'o'
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 26
          Height = 13
          Caption = 'Igreja'
          FocusControl = DBEdit2
        end
        object SpdBtnIgrejas: TSpeedButton
          Left = 84
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
          OnClick = SpdBtnIgrejasClick
        end
        object DBText1: TDBText
          Left = 113
          Top = 71
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'BairroIgreja'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 168
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit9
        end
        object Label7: TLabel
          Left = 120
          Top = 168
          Width = 54
          Height = 13
          Caption = 'Logradouro'
          FocusControl = DBEdit11
        end
        object Label20: TLabel
          Left = 464
          Top = 168
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit12
        end
        object Label21: TLabel
          Left = 120
          Top = 208
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit13
        end
        object Label22: TLabel
          Left = 288
          Top = 208
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit14
        end
        object Label23: TLabel
          Left = 8
          Top = 208
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit15
        end
        object Label24: TLabel
          Left = 464
          Top = 208
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object SpdBtnCEP: TSpeedButton
          Left = 92
          Top = 183
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
          OnClick = SpdBtnCEPClick
        end
        object Label11: TLabel
          Left = 8
          Top = 128
          Width = 35
          Height = 13
          Caption = 'Doador'
        end
        object GroupBoxCNPJ_CPF: TGroupBox
          Left = 352
          Top = 128
          Width = 177
          Height = 41
          TabOrder = 5
          object rbCNPJ: TRadioButton
            Left = 4
            Top = 10
            Width = 49
            Height = 12
            Caption = 'CNPJ'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rbCNPJClick
          end
          object rbCPF: TRadioButton
            Left = 4
            Top = 24
            Width = 49
            Height = 12
            Caption = 'CPF'
            TabOrder = 1
            OnClick = rbCNPJClick
          end
          object DBEdit4: TDBEdit
            Left = 58
            Top = 15
            Width = 113
            Height = 21
            DataField = 'CNPJ_CPF'
            DataSource = Ds
            TabOrder = 2
          end
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 24
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          Color = 16776176
          DataField = 'Codigo'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBDateEdit1: TDBDateEdit
          Left = 8
          Top = 104
          Width = 105
          Height = 21
          DataField = 'Data'
          DataSource = Ds
          NumGlyphs = 2
          TabOrder = 2
          StartOfWeek = Sun
        end
        object RxDBCboTipo: TRxDBComboBox
          Left = 120
          Top = 104
          Width = 409
          Height = 21
          DataField = 'Tipo'
          DataSource = Ds
          ItemHeight = 13
          TabOrder = 3
          OnChange = RxDBCboTipoChange
        end
        object DBEdit2: TDBEdit
          Left = 8
          Top = 64
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Igreja'
          DataSource = Ds
          TabOrder = 1
          OnKeyDown = DBEdit2KeyDown
        end
        object DBEdit9: TDBEdit
          Left = 8
          Top = 184
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndCep'
          DataSource = Ds
          TabOrder = 6
          OnExit = DBEdit9Exit
          OnKeyDown = DBEdit9KeyDown
          OnKeyPress = DBEdit9KeyPress
        end
        object DBEdit11: TDBEdit
          Left = 120
          Top = 184
          Width = 337
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndRua'
          DataSource = Ds
          TabOrder = 7
        end
        object DBEdit12: TDBEdit
          Left = 464
          Top = 184
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndNumero'
          DataSource = Ds
          TabOrder = 8
        end
        object DBEdit13: TDBEdit
          Left = 120
          Top = 224
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndBairro'
          DataSource = Ds
          TabOrder = 10
        end
        object DBEdit14: TDBEdit
          Left = 288
          Top = 224
          Width = 169
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndCidade'
          DataSource = Ds
          TabOrder = 11
        end
        object DBEdit15: TDBEdit
          Left = 8
          Top = 224
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndComplemento'
          DataSource = Ds
          TabOrder = 9
        end
        object DBCboUF: TDBComboBox
          Left = 464
          Top = 224
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'EndEstado'
          DataSource = Ds
          ItemHeight = 13
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
          TabOrder = 12
        end
        object PageControlDetalhes: TPageControl
          Left = 8
          Top = 256
          Width = 520
          Height = 193
          ActivePage = TabSheetItens
          Style = tsFlatButtons
          TabOrder = 13
          OnChanging = PageControlDetalhesChanging
          object TabSheetDadosImovel: TTabSheet
            Caption = 'Dados Im'#243'vel'
            object Label12: TLabel
              Left = 0
              Top = 0
              Width = 195
              Height = 13
              Caption = 'Localiza'#231#227'o (rua, avenida, travessa, etc.)'
            end
            object Label13: TLabel
              Left = 288
              Top = 0
              Width = 35
              Height = 13
              Caption = 'Quadra'
            end
            object Label14: TLabel
              Left = 368
              Top = 0
              Width = 21
              Height = 13
              Caption = 'Lote'
            end
            object Label15: TLabel
              Left = 448
              Top = 0
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label16: TLabel
              Left = 106
              Top = 40
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object Label17: TLabel
              Left = 0
              Top = 40
              Width = 64
              Height = 13
              Caption = 'Complemento'
            end
            object Label19: TLabel
              Left = 272
              Top = 40
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label25: TLabel
              Left = 448
              Top = 40
              Width = 33
              Height = 13
              Caption = 'Estado'
            end
            object Label26: TLabel
              Left = 0
              Top = 80
              Width = 67
              Height = 13
              Caption = 'Metragem (m'#178')'
            end
            object Label27: TLabel
              Left = 78
              Top = 80
              Width = 55
              Height = 13
              Caption = 'Tipo Im'#243'vel'
            end
            object Label28: TLabel
              Left = 162
              Top = 80
              Width = 41
              Height = 13
              Caption = 'Escritura'
            end
            object Label29: TLabel
              Left = 246
              Top = 80
              Width = 36
              Height = 13
              Caption = 'Cart'#243'rio'
            end
            object Label30: TLabel
              Left = 330
              Top = 80
              Width = 77
              Height = 13
              Caption = 'Valor Venal (R$)'
            end
            object Label31: TLabel
              Left = 432
              Top = 80
              Width = 68
              Height = 13
              Caption = 'Cert. Negativa'
            end
            object DBEdit5: TDBEdit
              Left = 0
              Top = 16
              Width = 281
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EndLocalizacaoIM'
              DataSource = Ds
              TabOrder = 0
            end
            object DBEdit6: TDBEdit
              Left = 288
              Top = 16
              Width = 73
              Height = 21
              DataField = 'EndQuadraIM'
              DataSource = Ds
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 368
              Top = 16
              Width = 73
              Height = 21
              DataField = 'EndLoteIM'
              DataSource = Ds
              TabOrder = 2
            end
            object DBEdit8: TDBEdit
              Left = 448
              Top = 16
              Width = 65
              Height = 21
              DataField = 'EndNumeroIM'
              DataSource = Ds
              TabOrder = 3
            end
            object DBEdit10: TDBEdit
              Left = 106
              Top = 56
              Width = 161
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EndBairroIM'
              DataSource = Ds
              TabOrder = 4
            end
            object DBEdit16: TDBEdit
              Left = 0
              Top = 56
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EndComplementoIM'
              DataSource = Ds
              TabOrder = 5
            end
            object DBEdit17: TDBEdit
              Left = 272
              Top = 56
              Width = 169
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EndCidadeIM'
              DataSource = Ds
              TabOrder = 6
            end
            object DBComboBox1: TDBComboBox
              Left = 448
              Top = 56
              Width = 65
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              DataField = 'EndEstadoIM'
              DataSource = Ds
              ItemHeight = 13
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
              TabOrder = 7
            end
            object RxDBCalcEdit1: TRxDBCalcEdit
              Left = 0
              Top = 96
              Width = 73
              Height = 21
              DataField = 'MetragemIM'
              DataSource = Ds
              NumGlyphs = 2
              TabOrder = 8
            end
            object DBEdit18: TDBEdit
              Left = 78
              Top = 96
              Width = 79
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TipoImovelIM'
              DataSource = Ds
              TabOrder = 9
            end
            object DBEdit19: TDBEdit
              Left = 162
              Top = 96
              Width = 79
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EscrituraIM'
              DataSource = Ds
              TabOrder = 10
            end
            object DBEdit20: TDBEdit
              Left = 246
              Top = 96
              Width = 79
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CartorioIM'
              DataSource = Ds
              TabOrder = 11
            end
            object RxDBCalcEdit2: TRxDBCalcEdit
              Left = 330
              Top = 96
              Width = 97
              Height = 21
              DataField = 'ValorVenalIM'
              DataSource = Ds
              DisplayFormat = '#,##0.00'
              NumGlyphs = 2
              TabOrder = 12
            end
            object DBEdit21: TDBEdit
              Left = 432
              Top = 96
              Width = 81
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CertidaoNegativaDebitosIM'
              DataSource = Ds
              TabOrder = 13
            end
          end
          object TabSheetItens: TTabSheet
            Caption = 'Itens Doa'#231#227'o'
            ImageIndex = 1
            DesignSize = (
              512
              162)
            object Label8: TLabel
              Left = 288
              Top = 0
              Width = 55
              Height = 13
              Caption = 'Quantidade'
            end
            object LblItens: TLabel
              Left = 440
              Top = 149
              Width = 73
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 338
              Top = 149
              Width = 96
              Height = 13
              Caption = 'Total da Doa'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 376
              Top = 0
              Width = 63
              Height = 13
              Caption = 'Valor Unit'#225'rio'
            end
            object Label5: TLabel
              Left = 0
              Top = 0
              Width = 53
              Height = 13
              Caption = 'Nota Fiscal'
            end
            object Label10: TLabel
              Left = 72
              Top = 0
              Width = 48
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object EditQtd: TRxCalcEdit
              Left = 288
              Top = 16
              Width = 81
              Height = 21
              DisplayFormat = '###,##0'
              NumGlyphs = 2
              TabOrder = 2
            end
            object BtnAddItens: TBitBtn
              Left = 479
              Top = 12
              Width = 33
              Height = 25
              Anchors = [akTop, akRight]
              TabOrder = 4
              OnClick = BtnAddItensClick
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
            object DBGridItens: TRxDBGrid
              Left = 0
              Top = 41
              Width = 513
              Height = 105
              DataSource = DsItens
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = PopupMenuItens
              TabOrder = 5
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnKeyPress = DBGridItensKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NotaFiscal'
                  Title.Caption = 'Nota Fiscal'
                  Width = 63
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Descricao'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 205
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ValorUnitario'
                  Title.Caption = 'Valor Unit'#225'rio'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Qtde'
                  Width = 31
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ValorTotal'
                  Title.Caption = 'Valor Total'
                  Width = 83
                  Visible = True
                end>
            end
            object RxCalcEditValor: TRxCalcEdit
              Left = 376
              Top = 16
              Width = 97
              Height = 21
              DisplayFormat = '#,##0.00'
              NumGlyphs = 2
              TabOrder = 3
            end
            object EditNota: TEdit
              Left = 0
              Top = 16
              Width = 67
              Height = 21
              MaxLength = 10
              TabOrder = 0
            end
            object EditDescricao: TEdit
              Left = 72
              Top = 16
              Width = 209
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 1
            end
          end
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 144
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Doador'
          DataSource = Ds
          TabOrder = 4
        end
        object BtnMembros: TBitBtn
          Left = 272
          Top = 140
          Width = 75
          Height = 25
          Caption = 'Membros'
          TabOrder = 14
          OnClick = BtnMembrosClick
        end
        object QuickRepImovel: TQuickRep
          Left = 1096
          Top = 24
          Width = 635
          Height = 898
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = RxMImpImovel
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
          Zoom = 80
          object QRBand1: TQRBand
            Left = 30
            Top = 30
            Width = 575
            Height = 838
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
              2771.510416666667000000
              1901.692708333333000000)
            BandType = rbDetail
            object QRShape1: TQRShape
              Left = 12
              Top = 12
              Width = 551
              Height = 813
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                2688.828125000000000000
                39.687500000000000000
                39.687500000000000000
                1822.317708333333000000)
              Pen.Width = 2
              Shape = qrsRectangle
            end
            object QRShape2: TQRShape
              Left = 12
              Top = 80
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                264.583333333333400000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRImage1: TQRImage
              Left = 24
              Top = 24
              Width = 90
              Height = 52
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                171.979166666666700000
                79.375000000000000000
                79.375000000000000000
                297.656250000000000000)
              Picture.Data = {
                0954474946496D6167659412000047494638396171004200F70000FFFFFF1818
                18636363737373847373C69494E7ADADCE8484DE7B7B6B3131521818E74242C6
                2121BD1818E718184A0000D6524AAD635A6B2921DEA59CDE6B5A94635A9C4A39
                6B2110D66B52E7947B947B73A57B6BBD3100844A31843110D6B5A5CEAD9CCE7B
                52A53900BD4200DE4A0094847B312118CE5200DE5A00FF6B00944200CEBDAD63
                5A52D6BDA5BDB5AD948C84E7CEB5DEC6ADE7BD94B59473D66B009C5200CEAD84
                DE7B00FFE7C6F7DEBDEFD6B5E7CEADDEC6A5A5947BD6C6ADBDAD94F7DEB5EFD6
                ADDEC69CA56B00E794007B7363FFEFCEEFDEBDD6C6A5B5A584634A187B5200E7
                CE94F7E7BDE7D6ADDECEA5DEC68CE7D6A5FFE79CB59C4A5A4A18947B21846B10
                D6CEADCEC6A5948C6BBDAD6BF7DE73E7CE63C6AD4AAD8C00DEB500BDB58CF7DE
                6BE7C621EFCE21E7C618FFD600E7CE429C8400A58C00B59C00D6B500DEBD00EF
                CE00948C52AD9C29F7DE39AD9C21EFD618948408C6AD00CEB500948C42D6C639
                B5A521C6B518635A00A59400EFD6006B6308736B00847B00C6B500A59C088C84
                00BDB50084847BA5A5944A4A42CECEADA5A58463634A8484639C9C7331312173
                7342B5B5395252186B6B183939005252009CA5639CB5007B8C429CB56B394229
                849C6352733194B58C7384738CAD8CA5CEA584A5849CC69C94BD948CB594739C
                7B5A846B4A6B5A5A736B314A426B7373313939182121527373394A5218293121
                313908101808102152525A18182131314A0808100000104A31525A525A635A63
                3118315A295252294A63315A5A104A2908214A08397339635218428C10638C31
                6BA521739C0863A5086BBD31849C216BB5217B8C29637B18529C316BAD2973AD
                3173B55284AD3973423139CE7394C67B94B56B84C6738C63424A6321314A0010
                7B525A9C1831D61039C6314AA521397B4A528C2131B521393100087B424A8C10
                21730010CE4252B51829AD08188C3139842129E73142DE2939E72131731018CE
                1829DE1021E71021BD0818C60818CE0818DE0818C60010CE0010DE4A52A53139
                CE3139A51821CE1821A51018940008C61018CE1018DE101800000021F9040100
                00B4002C00000000710042004008FE0001081C48B0A0C183080D2273C630A1C3
                8710234A24F88FCA9C59AD5AC98205EB5F0C18305A2089F123110B8CADFECD9A
                E52AE5201C578E208171A490AC00B24EE170762C98B165C5786D9A406C993061
                CC8C323BBACCD8D1A5470B44637164D9B163C58A21F3D56CA25782B08CD86A04
                68E03F580150E180D1A3D6A0175802C04285CA952B962955AE78E203895F1D27
                030470C50914A84E863F81DAE429C626C38F177FCAF449312842A2041429F40F
                1AB3CFCB8011FB4A7AE0AB2603F2A82104805AABB9AC50AD82B5CA12478EADD4
                B56B876EE54A8E4AA8589975C74D1A397294E471E408D3A54B953265329CF893
                27EA9F38A95ABCA93B941DB320FE77F734AAB4F94183BCD8310560459735F0E3
                B351A3067EFDF8F5F3AFD973FF8BFFFD36BCC2067EF4E167DF1AF92548DF826A
                E4B00A1DF1ED9706245B9827510F03B90246245250500E3BF1E4130F3B24C693
                0D0EF3DC13223B22E6034F3FEDC423238BF1F423623CF4200043144DFC238F8D
                32BA13C03AEBB4E3223CECC0130F3C4CC2334F8E30E410C01C08AAB147247BA4
                E185850E0522871E0024C21A00108883C0232B70E9501225D0728B3DD858D08D
                39E654734D37E194138F3CE5B4C30E3F49E6F3E73CE3E01043103E8608CF91F1
                B8A3C00F6A26744A19909856C6221546AAE9A69C3EF4CF2B9D866A1E2B72F0C1
                4441880480912BABD0D5D12CFEB498628D020760714811B6E4F2CFAEADFCF24F
                2B82FD030312C258150C2E0500138C30CE30D34C3358F1945556C700C50C43BF
                D422AA5785D4928719AD6D34CB294F5C11C23D0C88B30E2CAEC0324B1981CC42
                C61CF4AD840F3D7BF2D2C40EB2C8828AB0D214B50C43C214034C274E48F313B3
                4819851452CB2AB38C01FF1463CC6705DF22CCB605C14288254C542AD059B0B4
                3200107EC1F004123CC47084057F66A30F274668C0820E488071C8218ADC2A0B
                B0AD14469D788B2D66CA639115DDDD269DFCC04326AF78D21D28AAA0C2F141A8
                F830401F330C44051D65C08B06156544A8C61FF72118A1816BB0A10A840CD241
                257D742C5865DD6B403847FE206CA01148DE6BC4D00229952CBDC927A5447175
                410394E18840A31081C2085448C0CD39DB78A3CD3D084030CE01DEB083803A20
                2A194F3BD9CC78E3113B44F10F2FEE90AE4D9D8B78A0020723D030C20927DC40
                C30D4410A19F183FFC631FDD6BF471752C380834804089AC110E39FBE4D3A2A0
                F118C0831338BC63A3A0F9B8B34E38E7B8E34E36DE6003CE35D710F0CD3AE728
                40E42CE73820638CF0C8B34E2BEEE4D9A4928B72D2016070807F2CA01FA62311
                3D06B138002C8220AA28431E8CD0402E7D837C793A8704DC61A37EB0C346E1D0
                073C0CC1B17FF881203EC08323FE40C10ABA702091E0831F84109142600215BE
                69892B02B08A55B0A015FEADBA0D2A5465846500E518BC3882340A00021EFC00
                044C2C80149B218D6638E359589CC63440F0428408A00F2D9945AB04F3B360D1
                22074EC0820DF6B10F7AD0231C4780810E9C10031EF405042E43C42C60218B51
                348118CE00CA2F560183AB2C03634F19D8C38CF830661CA319A4E841327C72C5
                6914A0827C8844186CF1AB00FC8310851840117EF0041D1C628F72F9C70CC8B0
                9F59DC6215FF80D336C8610D2324E11F3869C5113670948715C31A9CD881530E
                C930A438C5184E61D83038818A021C8521C7508630A67135317D114C0030C12C
                7042081D082100F278C73CE2711729F46D0E6C88C4365D92832BC0000B20C881
                4D020044018C2233A1FE40CF0BA6210D446C6200A6D0842D4821004D00740083
                288134A6111554344318CD30CA327AD14052E800042008C4400603CB43E08C2F
                4868022C5E700471B8431EE1F8860B78B0831DF8050B42F04B0C907096C17802
                3188199A610E1119C4302DA79D989AD360F08F51C48214855805452BD8825B0C
                00128D10C83380150001E02008870840112C01B400E0231FFC50875D80688956
                D105151C21A32AAE0319F1FCB43B9F581A6482BAB44C442113B3882B2814D389
                42345011AFC00129E8E006B370C42EAE584421BC500539B8010D78108420F6C3
                4A02A9E10B6C088400F84337FDB0014282484315AA60853E04C20A8D656C1F16
                C107D64602138CC8FEC1284A9109C379C2AF152C021F200580430C6240F0F903
                1BFCF007F840686D6A4B6EDA30FB8A2918570D10FA827ED2A62006C5ED088368
                851BB27089505C22134570E12BCAD0071F00800071681B82F833A02F10C1BDF0
                0DDE0D4EF00847504302E7B0073EB6818DFE9AE3052C7085086CC7011A7C6109
                7B585B750B64DD23FC6340760B441EB8C031AB0964106FA854061E4001742009
                442462879F04C522EBD52844376A0703B671A378CC43474168C203AE178F70EC
                431FF248C70240948F76DCC37AECF04638B8610540C080106840907FE8E08735
                A081638A4813005E60843AF4210ED630928843E4C17830C0084798C707F3D18F
                78F8231CE19047FE3E18102323D5A8CCF198000E8E60847F28C0012D56C705D6
                01A378F04351000CD13C7C100319FCE3024A50820224D00115A880C2A10A401F
                28BC8A81A42205AE604738DCC1A470C02F1CA71804183C11017DECA31AD40015
                44BEF10DC164E4AB46C25788DED18E7228A01CEBE0073FE0A16B5E3BC9073C30
                B43CF821A85ED7BA049C52043DDF0080F00EC41469F0430BBB88104D5CCE1CDC
                70CB00DED70DFC626316EEC88798C137A27680625BA7B883A5CB10894C517B22
                3FD080006C51821710C2102E7001210E718D7D28091FE010952BE035105BD801
                126178B7C243850735E861DA0B17D53FD2702A2E152223FFC0614636FE8FB724
                C317BB78C698FE22CEA53EB03B0609B9612BECD2AA8CACA215B35049CC57B191
                8CEC909EB21840108851AD622C4203C948063270918C5FFC6217BD307A2E96BE
                F467FC62E9BF48465716EE8257D061203177055D5CADAA5610C00819488737D6
                218E4CE4400741D0410B7C50009AB4409B1AD189321C19145A40832956299623
                7B99148721C519C560066EDF0D8595B724971BF1E43F4E06022C38010640B800
                04EEF1835728221189F801CE5ECA831E050B070FAD963388A1CB020052A2D72A
                562F1FF6146610431A0320403270A10B5DE02218C568A01FF4F0025C024B16B7
                3805222E1A032CA8A4154394452CDAC68776CD0203FADD47370C81834EFE6305
                4E18C6C584FE81955E70021AC638C65292C2F7620A439AC0804122A621B16716
                E319C758DC3F0471420DFCE3E6462880130C114719DF7C166340076D50068FB0
                12ADA00F7EC20EF3C00938404FEEC20A47400C489114CC500CBF900847300CC7
                A077147848D2240CCB824C1FD033E2F71915980BF1C73185000372A03C005046
                2961043CF00FEBE00DF4E00E18F10A7B400764F0056BA0077AF07B495004D7C0
                0D57D05267817C574045C5B08156710CC3500430300D4F6815462451DCE70CCC
                B20C98E00B250878C9000C8B3300390008220300199712201104DF800EE33001
                2AB10876110B65A00682C10B7791037EB187407016B2C00A86D109A1100AA450
                88A3A009FE25508801A5099A3008A2400AA6300AF6540AA5D003206000A8700B
                819714C5700BD1703588000341F00A910069DAE42E2FA0034F00124E70512AF1
                2B26700EE1504B34F1043CE017428005A564023F330BA1F01839451DDD8105DC
                11549D708C8198539FA0033F50081AC02CC580821B73358B700538B00A797075
                233317B3B0165710032BA30340100332E627EEA00A25C00258B0798F17034E60
                048B7013B3900A3A258C40158C9181344523044EB00A9D50199E8008AA5041F6
                A70A4C900686E52E71840445E0043900043A70044CF00046D20EE19008988008
                3087111C894B1C210B44E356DDF18FF96838DCD11D481004AD600A52030A9A20
                0AD750FE413E5002711000ACB08D7C540A756109ACC20AB12118EE2062EBB00A
                26503236B772EC9243B1C0098FC1568AF14F71058C53F318A32035C7B8092010
                059A401872150A1BB038A790032F40067930900020181C810ABC8056497917B3
                C00B1E90008FF0085E80076B30066C9097030209699060FBA15E737006A5C207
                8EF0088CF01C95A008CFF11C96400994C00A8D500995000A9C10043F500A51F9
                189C700A8B830858D0035A00092E205577A1048BF0085650067A3920AC94066B
                F01F55C2203E480774685D74F00582400770031FC0055C6DE30767A007729006
                9F9506944000FFC09448D31D49B0382731061A25101174596C90067AF0087430
                1F6BFE200869A360FA011FD2F50A767037BAC9206A635DB1492F6B9006746303
                40E00A93501989B10997247F6FF00F9C090002221FFB412568835CD4C536F0B1
                0745300079532006325DE75937D6451F78506777200781E03756B0086CB038F6
                66067C200002910ABE09610C865CF1013C3470022320023520022A3A047FB002
                02103CBCB9077AC036D3D5A055E244FFC060F56109DA78353FD00654302687F0
                97C0333928EA01EB90071DB0041EB00488460DDA800EE8102322D667EC400F06
                D00439403FE4600E12A0002AA000C0E3837F793C76739BF40104A70009F3711F
                7FF3640D640A7D300700700E16A004D720A5E8A00ED85322230222A9C3637FFA
                41FEFCC00025320E4EB0032D804BF2703FF8400ED8B00DDD400DF79500092001
                977A0117500305061F47100BDA592068A00664C03195E63C66900639B00F2396
                8022C60EF720662816222B3223A7430E0C506664266E38C00339500AED5066FC
                D00EF2E055EBE00EF37023F0802F4A0262ECE002455002FF50870B429C79B006
                DB020563420803C0067A100426752324E227F4100331703D2262910858232042
                ABD62322F070044E100433F00FC10A22C4BA0EBCB00EC326234C626248922247
                88004B103C34400437300457A238A1620939706100D0388ED00A0E6024EF4A22
                E2860538800135F2AEF9303D12403A1E2428F2E046C47A0F14800019700FDF20
                FE0F341224EBA00035D60EEAF0672EB22438A20DE4F800268000E8D00FDA2076
                E1F00CA2A20A5220101C0A002C60069110B3EFF0AE34DB0EF3006672340F30B2
                1BF2900DE7600DD5C01E065101F4A00E0EE00E0EA000D6106E169B0FB4560EE0
                946BEDA0242EB26BBA7605517001FAB024BC763FE190B49BA206AE3006006009
                0301010A200EE8800FB9C0409D2200BB72133FD20EFE00B932723A21520EF810
                0E7EC66BC4C60FF37000488003D6D00DFDB06BB42A62E2F0019BE20A6C000914
                040B03410B8EE00709477202D16FE314AC38920DF3C00FEFB0011900041E6002
                2EDBACD8D30E26A029609012E0A29F04B1077930BBB49B1016E00E7BAA0EF180
                400E0A90B6FC6023E4500EE7B02D5E0B003D6065CB1BBD08C102FF200B2B210B
                E2400EF8500EFB300FCB4A0EE7B00EE1CB298E200782301075E007810071E6FB
                15F84600E6C00BA132007A900676301094B0072714C0104C102B2007B34010E3
                9507471BC1118CBA051141A890C11A1CC2A6B107AD00C2227CC2284C1A010100
                003B}
            end
            object QRShape3: TQRShape
              Left = 120
              Top = 12
              Width = 1
              Height = 69
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                228.203125000000000000
                396.875000000000000000
                39.687500000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel1: TQRLabel
              Left = 121
              Top = 16
              Width = 440
              Height = 21
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                69.453125000000000000
                400.182291666666700000
                52.916666666666660000
                1455.208333333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'SECRETARIA GERAL DE ADMINISTRA'#199#195'O E FINAN'#199'AS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 16
            end
            object QRLabel3: TQRLabel
              Left = 121
              Top = 39
              Width = 440
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                400.182291666666700000
                128.984375000000000000
                1455.208333333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'CONSELHO NACIONAL DE DIRETORES'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel2: TQRLabel
              Left = 121
              Top = 51
              Width = 440
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                400.182291666666700000
                168.671875000000000000
                1455.208333333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Av. Gal Ol'#237'mpio da Silveira, 190 - Barra Funda - S'#227'o Paulo - SP'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel4: TQRLabel
              Left = 121
              Top = 65
              Width = 440
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                400.182291666666700000
                214.973958333333300000
                1455.208333333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Fone: (11) 3826-5100/Fax: 3826-5028 | www.sgaf.org.br'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape4: TQRShape
              Left = 12
              Top = 132
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                436.562499999999900000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRShape5: TQRShape
              Left = 476
              Top = 80
              Width = 1
              Height = 53
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                175.286458333333400000
                1574.270833333333000000
                264.583333333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel5: TQRLabel
              Left = 13
              Top = 82
              Width = 462
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                42.994791666666670000
                271.197916666666700000
                1527.968750000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'BENS IM'#211'VEIS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 14
            end
            object QRLabel6: TQRLabel
              Left = 13
              Top = 100
              Width = 462
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666660000
                42.994791666666670000
                330.729166666666700000
                1527.968750000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'TERMO DE DOA'#199#195'O'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 12
            end
            object QRLabel7: TQRLabel
              Left = 13
              Top = 116
              Width = 462
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                42.994791666666670000
                383.645833333333400000
                1527.968750000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = '(Instru'#231#245'es de preenchimento no verso)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel8: TQRLabel
              Left = 477
              Top = 82
              Width = 17
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                1577.578125000000000000
                271.197916666666700000
                56.223958333333340000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#186
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 14
            end
            object QRShape6: TQRShape
              Left = 12
              Top = 160
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                529.166666666666800000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel9: TQRLabel
              Left = 14
              Top = 134
              Width = 108
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                443.177083333333300000
                357.187500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Doador (Raz'#227'o Social/Nome)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText1: TQRDBText
              Left = 24
              Top = 146
              Width = 34
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                482.864583333333400000
                112.447916666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'Doador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRDBText2: TQRDBText
              Left = 488
              Top = 108
              Width = 58
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                66.145833333333340000
                1613.958333333333000000
                357.187500000000000000
                191.822916666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'Codigo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 16
            end
            object QRShape7: TQRShape
              Left = 412
              Top = 132
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1362.604166666667000000
                436.562499999999900000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel10: TQRLabel
              Left = 414
              Top = 134
              Width = 40
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                443.177083333333300000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'CNPJ/CPF'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText3: TQRDBText
              Left = 424
              Top = 146
              Width = 54
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                482.864583333333400000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'CNPJ_CPF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape8: TQRShape
              Left = 12
              Top = 188
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                621.770833333333400000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel11: TQRLabel
              Left = 14
              Top = 162
              Width = 35
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                535.781250000000000000
                115.755208333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Endere'#231'o'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText4: TQRDBText
              Left = 24
              Top = 174
              Width = 45
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                575.468750000000000000
                148.828125000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndRuaD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape9: TQRShape
              Left = 348
              Top = 160
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1150.937500000000000000
                529.166666666666800000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel12: TQRLabel
              Left = 350
              Top = 162
              Width = 10
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1157.552083333333000000
                535.781250000000000000
                33.072916666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#186
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText5: TQRDBText
              Left = 352
              Top = 174
              Width = 57
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1164.166666666667000000
                575.468750000000000000
                188.515625000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndNumeroD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape10: TQRShape
              Left = 412
              Top = 160
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1362.604166666667000000
                529.166666666666800000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel13: TQRLabel
              Left = 414
              Top = 162
              Width = 54
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                535.781250000000000000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Complemento'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText6: TQRDBText
              Left = 424
              Top = 174
              Width = 90
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                575.468750000000000000
                297.656250000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndComplementoD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape11: TQRShape
              Left = 12
              Top = 216
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                714.375000000000000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel14: TQRLabel
              Left = 14
              Top = 190
              Width = 24
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                628.385416666666800000
                79.375000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Bairro'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText7: TQRDBText
              Left = 24
              Top = 202
              Width = 54
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                668.072916666666800000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndBairroD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel15: TQRLabel
              Left = 190
              Top = 190
              Width = 25
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                628.385416666666800000
                628.385416666666800000
                82.682291666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText8: TQRDBText
              Left = 200
              Top = 202
              Width = 58
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                661.458333333333400000
                668.072916666666800000
                191.822916666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndCidadeD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel16: TQRLabel
              Left = 422
              Top = 190
              Width = 26
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                628.385416666666800000
                85.989583333333340000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estado'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText9: TQRDBText
              Left = 432
              Top = 202
              Width = 33
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1428.750000000000000000
                668.072916666666800000
                109.140625000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndEstadoD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel17: TQRLabel
              Left = 470
              Top = 190
              Width = 18
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1554.427083333333000000
                628.385416666666800000
                59.531250000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'CEP'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText10: TQRDBText
              Left = 480
              Top = 202
              Width = 45
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1587.500000000000000000
                668.072916666666800000
                148.828125000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndCepD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape12: TQRShape
              Left = 468
              Top = 188
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1547.812500000000000000
                621.770833333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape13: TQRShape
              Left = 420
              Top = 188
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                621.770833333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape14: TQRShape
              Left = 188
              Top = 188
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                621.770833333333400000
                621.770833333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape15: TQRShape
              Left = 12
              Top = 276
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                912.812500000000100000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRMemo1: TQRMemo
              Left = 16
              Top = 218
              Width = 541
              Height = 57
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                188.515625000000000000
                52.916666666666660000
                720.989583333333500000
                1789.244791666667000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Lines.Strings = (
                
                  'A DOADORA declara que o presente ato '#233' de sua livre e espont'#226'nea' +
                  ' vontade, pelo que renuncia a todos e quaisquer direitos de recl' +
                  'amar a posse do objeto deste termo de doa'#231#227'o, em ju'#237'zo ou fora d' +
                  'ele a qualquer tempo, concedendo todos os direitos a DONAT'#193'RIA p' +
                  'or meio de escritura lavrada e registrada em cart'#243'rio, a qual o ' +
                  'DOADOR e outros a ele ligados assinam e d'#227'o legalidade ao ato.')
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape16: TQRShape
              Left = 12
              Top = 304
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1005.416666666667000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel18: TQRLabel
              Left = 14
              Top = 278
              Width = 38
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                919.427083333333500000
                125.677083333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Donat'#225'ria'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel19: TQRLabel
              Left = 414
              Top = 278
              Width = 22
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                919.427083333333500000
                72.760416666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'CNPJ'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRShape17: TQRShape
              Left = 412
              Top = 276
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1362.604166666667000000
                912.812500000000100000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel20: TQRLabel
              Left = 24
              Top = 290
              Width = 214
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                959.114583333333400000
                707.760416666666800000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'IGREJA DO EVANGELHO QUADRANGULAR'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText11: TQRDBText
              Left = 424
              Top = 290
              Width = 31
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                959.114583333333400000
                102.526041666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'CNPJI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel21: TQRLabel
              Left = 14
              Top = 306
              Width = 35
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                1012.031250000000000000
                115.755208333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Endere'#231'o'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText12: TQRDBText
              Left = 24
              Top = 318
              Width = 40
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                1051.718750000000000000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndRuaI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel22: TQRLabel
              Left = 350
              Top = 306
              Width = 10
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1157.552083333333000000
                1012.031250000000000000
                33.072916666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#186
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText13: TQRDBText
              Left = 352
              Top = 318
              Width = 57
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1164.166666666667000000
                1051.718750000000000000
                188.515625000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndNumeroI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel23: TQRLabel
              Left = 414
              Top = 306
              Width = 54
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                1012.031250000000000000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Complemento'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText14: TQRDBText
              Left = 424
              Top = 318
              Width = 86
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                1051.718750000000000000
                284.427083333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndComplementoI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape18: TQRShape
              Left = 412
              Top = 304
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1362.604166666667000000
                1005.416666666667000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel24: TQRLabel
              Left = 422
              Top = 334
              Width = 26
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                1104.635416666667000000
                85.989583333333340000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estado'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRShape19: TQRShape
              Left = 420
              Top = 332
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                1098.020833333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape20: TQRShape
              Left = 468
              Top = 332
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1547.812500000000000000
                1098.020833333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel25: TQRLabel
              Left = 470
              Top = 334
              Width = 18
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1554.427083333333000000
                1104.635416666667000000
                59.531250000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'CEP'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText15: TQRDBText
              Left = 480
              Top = 346
              Width = 40
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1587.500000000000000000
                1144.322916666667000000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndCepI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape21: TQRShape
              Left = 188
              Top = 332
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                621.770833333333400000
                1098.020833333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel26: TQRLabel
              Left = 190
              Top = 334
              Width = 25
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                628.385416666666800000
                1104.635416666667000000
                82.682291666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText16: TQRDBText
              Left = 200
              Top = 346
              Width = 54
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                661.458333333333400000
                1144.322916666667000000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndCidadeI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel27: TQRLabel
              Left = 14
              Top = 334
              Width = 24
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                1104.635416666667000000
                79.375000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Bairro'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText17: TQRDBText
              Left = 24
              Top = 346
              Width = 49
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                1144.322916666667000000
                162.057291666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndBairroI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape22: TQRShape
              Left = 12
              Top = 360
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1190.625000000000000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRShape23: TQRShape
              Left = 12
              Top = 332
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1098.020833333333000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRShape24: TQRShape
              Left = 348
              Top = 304
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1150.937500000000000000
                1005.416666666667000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRDBText18: TQRDBText
              Left = 432
              Top = 346
              Width = 33
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1428.750000000000000000
                1144.322916666667000000
                109.140625000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndEstadoI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel28: TQRLabel
              Left = 14
              Top = 362
              Width = 25
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                1197.239583333333000000
                82.682291666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Pastor'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText19: TQRDBText
              Left = 24
              Top = 374
              Width = 31
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                1236.927083333333000000
                102.526041666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'Pastor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape25: TQRShape
              Left = 420
              Top = 360
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                1190.625000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel29: TQRLabel
              Left = 422
              Top = 362
              Width = 41
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                1197.239583333333000000
                135.598958333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Prontu'#225'rio'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText20: TQRDBText
              Left = 432
              Top = 374
              Width = 48
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1428.750000000000000000
                1236.927083333333000000
                158.750000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'Prontuario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape26: TQRShape
              Left = 12
              Top = 388
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1283.229166666667000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRMemo2: TQRMemo
              Left = 16
              Top = 390
              Width = 541
              Height = 85
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                281.119791666666700000
                52.916666666666660000
                1289.843750000000000000
                1789.244791666667000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Lines.Strings = (
                
                  'A DONAT'#193'RIA acima identificada, atrav'#233's de seu representante leg' +
                  'al, declara, expressamente, para os fins de direito, ter recebid' +
                  'o doa'#231#227'o do(s) im'#243'vel(is) abaixo discriminado(s). A DONAT'#193'RIA co' +
                  'mpromete-se a utilizar os bens '#250'nica e exclusivamente para atend' +
                  'er as necessidades da institui'#231#227'o. A documenta'#231#227'o origin'#225'ria da ' +
                  'aquisi'#231#227'o ser'#225' entregue pela DOADORA, mediante c'#243'pia deste termo' +
                  ', obrigando-se a DONAT'#193'RIA a conserv'#225'-la em seus arquivos para e' +
                  'feito de fiscaliza'#231#227'o por parte dos '#243'rg'#227'os fiscais aos quais DOA' +
                  'DORA e DONAT'#193'RIOS est'#227'o sujeitos.')
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape27: TQRShape
              Left = 12
              Top = 476
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1574.270833333333000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRShape29: TQRShape
              Left = 12
              Top = 504
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1666.875000000000000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel30: TQRLabel
              Left = 14
              Top = 478
              Width = 150
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                1580.885416666667000000
                496.093750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Localiza'#231#227'o (rua, avenida, travessa, etc.)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText21: TQRDBText
              Left = 24
              Top = 490
              Width = 86
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                1620.572916666667000000
                284.427083333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndLocalizacaoIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape30: TQRShape
              Left = 420
              Top = 476
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                1574.270833333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel31: TQRLabel
              Left = 422
              Top = 478
              Width = 10
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                1580.885416666667000000
                33.072916666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#186
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText22: TQRDBText
              Left = 424
              Top = 490
              Width = 33
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                1620.572916666667000000
                109.140625000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndNumeroIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape31: TQRShape
              Left = 12
              Top = 532
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1759.479166666667000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel32: TQRLabel
              Left = 14
              Top = 534
              Width = 48
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                1766.093750000000000000
                158.750000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Tipo Im'#243'vel'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText23: TQRDBText
              Left = 24
              Top = 546
              Width = 60
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                1805.781250000000000000
                198.437500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'TipoImovelIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape32: TQRShape
              Left = 220
              Top = 532
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                727.604166666666800000
                1759.479166666667000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel33: TQRLabel
              Left = 222
              Top = 534
              Width = 32
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                734.218750000000000000
                1766.093750000000000000
                105.833333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cart'#243'rio'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText24: TQRDBText
              Left = 240
              Top = 546
              Width = 57
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                793.750000000000000000
                1805.781250000000000000
                188.515625000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'CartorioIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape33: TQRShape
              Left = 420
              Top = 532
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                1759.479166666667000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel34: TQRLabel
              Left = 422
              Top = 534
              Width = 82
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                1766.093750000000000000
                271.197916666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Certid. Negat. D'#233'bitos'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText25: TQRDBText
              Left = 432
              Top = 546
              Width = 125
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1428.750000000000000000
                1805.781250000000000000
                413.411458333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'CertidaoNegativaDebitosIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape34: TQRShape
              Left = 12
              Top = 560
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1852.083333333333000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel35: TQRLabel
              Left = 14
              Top = 506
              Width = 24
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                1673.489583333333000000
                79.375000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Bairro'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText26: TQRDBText
              Left = 24
              Top = 518
              Width = 58
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                1713.177083333333000000
                191.822916666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndBairroIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel36: TQRLabel
              Left = 190
              Top = 506
              Width = 25
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                628.385416666666800000
                1673.489583333333000000
                82.682291666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText27: TQRDBText
              Left = 200
              Top = 518
              Width = 62
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                661.458333333333400000
                1713.177083333333000000
                205.052083333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndCidadeIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel37: TQRLabel
              Left = 422
              Top = 506
              Width = 26
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                1673.489583333333000000
                85.989583333333340000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estado'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText28: TQRDBText
              Left = 432
              Top = 518
              Width = 33
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1428.750000000000000000
                1713.177083333333000000
                109.140625000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndEstadoIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel38: TQRLabel
              Left = 470
              Top = 506
              Width = 57
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1554.427083333333000000
                1673.489583333333000000
                188.515625000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Metragem (m'#178')'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText29: TQRDBText
              Left = 500
              Top = 518
              Width = 58
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1653.645833333333000000
                1713.177083333333000000
                191.822916666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'MetragemIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape35: TQRShape
              Left = 468
              Top = 504
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1547.812500000000000000
                1666.875000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape36: TQRShape
              Left = 420
              Top = 504
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                1666.875000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape37: TQRShape
              Left = 188
              Top = 504
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                621.770833333333400000
                1666.875000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape38: TQRShape
              Left = 12
              Top = 606
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                2004.218750000000000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRMemo3: TQRMemo
              Left = 16
              Top = 562
              Width = 541
              Height = 43
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                142.213541666666700000
                52.916666666666660000
                1858.697916666667000000
                1789.244791666667000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Lines.Strings = (
                
                  'A DONAT'#193'RIA compromete-se a incluir os bens acima declarados no ' +
                  'Livro de Patrim'#244'nio da institui'#231#227'o at'#233' o final do m'#234's da concret' +
                  'iza'#231#227'o da doa'#231#227'o, enviando c'#243'pia deste termo '#224' Superintend'#234'ncia ' +
                  'Regional/Diretoria de Campo Mission'#225'rio e ao contador da regi'#227'o/' +
                  'campo para arquivo e registro da doa'#231#227'o.')
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape28: TQRShape
              Left = 276
              Top = 476
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                912.812500000000100000
                1574.270833333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel39: TQRLabel
              Left = 278
              Top = 478
              Width = 26
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                919.427083333333500000
                1580.885416666667000000
                85.989583333333340000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Quadra'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRShape39: TQRShape
              Left = 348
              Top = 476
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1150.937500000000000000
                1574.270833333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel40: TQRLabel
              Left = 350
              Top = 478
              Width = 18
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1157.552083333333000000
                1580.885416666667000000
                59.531250000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Lote'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRShape40: TQRShape
              Left = 460
              Top = 476
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1521.354166666667000000
                1574.270833333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel41: TQRLabel
              Left = 462
              Top = 478
              Width = 54
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1527.968750000000000000
                1580.885416666667000000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Complemento'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText30: TQRDBText
              Left = 464
              Top = 490
              Width = 94
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1534.583333333333000000
                1620.572916666667000000
                310.885416666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndComplementoIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRDBText31: TQRDBText
              Left = 282
              Top = 490
              Width = 64
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                932.656250000000000000
                1620.572916666667000000
                211.666666666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndQuadraIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRDBText32: TQRDBText
              Left = 368
              Top = 490
              Width = 50
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1217.083333333333000000
                1620.572916666667000000
                165.364583333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndLoteIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape41: TQRShape
              Left = 148
              Top = 532
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                489.479166666666800000
                1759.479166666667000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel42: TQRLabel
              Left = 150
              Top = 534
              Width = 58
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                496.093750000000000000
                1766.093750000000000000
                191.822916666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Escritura sob n'#186
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText33: TQRDBText
              Left = 152
              Top = 546
              Width = 65
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                502.708333333333400000
                1805.781250000000000000
                214.973958333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EscrituraIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape42: TQRShape
              Left = 300
              Top = 532
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                992.187500000000000000
                1759.479166666667000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel43: TQRLabel
              Left = 302
              Top = 534
              Width = 63
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                998.802083333333400000
                1766.093750000000000000
                208.359375000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Valor Venal (R$)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText34: TQRDBText
              Left = 360
              Top = 546
              Width = 57
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1190.625000000000000000
                1805.781250000000000000
                188.515625000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'ValorVenalIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel44: TQRLabel
              Left = 16
              Top = 616
              Width = 31
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                52.916666666666660000
                2037.291666666667000000
                102.526041666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'DATA:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText35: TQRDBText
              Left = 80
              Top = 616
              Width = 61
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                264.583333333333400000
                2037.291666666667000000
                201.744791666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'DataExtenso'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel45: TQRLabel
              Left = 16
              Top = 656
              Width = 49
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                52.916666666666660000
                2169.583333333333000000
                162.057291666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'DOADOR:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape43: TQRShape
              Left = 80
              Top = 670
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                264.583333333333400000
                2215.885416666667000000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel46: TQRLabel
              Left = 136
              Top = 672
              Width = 43
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                449.791666666666700000
                2222.500000000000000000
                142.213541666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Assinatura'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRLabel47: TQRLabel
              Left = 450
              Top = 712
              Width = 55
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1488.281250000000000000
                2354.791666666667000000
                181.901041666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Testemunha 2'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRShape44: TQRShape
              Left = 400
              Top = 710
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                1322.916666666667000000
                2348.177083333333000000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRShape45: TQRShape
              Left = 400
              Top = 670
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                1322.916666666667000000
                2215.885416666667000000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel49: TQRLabel
              Left = 450
              Top = 672
              Width = 55
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1488.281250000000000000
                2222.500000000000000000
                181.901041666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Testemunha 1'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRLabel48: TQRLabel
              Left = 16
              Top = 744
              Width = 60
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                52.916666666666660000
                2460.625000000000000000
                198.437500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'DONAT'#193'RIA'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape46: TQRShape
              Left = 80
              Top = 758
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                264.583333333333400000
                2506.927083333333000000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel50: TQRLabel
              Left = 112
              Top = 760
              Width = 92
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                370.416666666666700000
                2513.541666666667000000
                304.270833333333400000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Superintendente/Diretor'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRShape47: TQRShape
              Left = 400
              Top = 758
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                1322.916666666667000000
                2506.927083333333000000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel51: TQRLabel
              Left = 438
              Top = 760
              Width = 80
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1448.593750000000000000
                2513.541666666667000000
                264.583333333333400000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Diretor de Patrim'#244'nio'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRShape48: TQRShape
              Left = 240
              Top = 758
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                793.750000000000000000
                2506.927083333333000000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel52: TQRLabel
              Left = 275
              Top = 760
              Width = 86
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                909.505208333333400000
                2513.541666666667000000
                284.427083333333400000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Pastor Titular da Igreja'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRLabel53: TQRLabel
              Left = 16
              Top = 810
              Width = 537
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                52.916666666666660000
                2678.906250000000000000
                1776.015625000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 
                'C'#243'pias para: 1. Patrim'#244'nio da igreja local  -  2. Doador   -  3.' +
                ' Superintend'#234'ncia  -  4. Contabilidade  -  5. SGAF/CND'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
          end
        end
        object QuickRepItens: TQuickRep
          Left = 573
          Top = -111
          Width = 635
          Height = 898
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = RxMImpImovel
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
          Zoom = 80
          object QRBand2: TQRBand
            Left = 30
            Top = 30
            Width = 575
            Height = 451
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
              1491.588541666667000000
              1901.692708333333000000)
            BandType = rbDetail
            object QRShape49: TQRShape
              Left = 12
              Top = 12
              Width = 551
              Height = 439
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                1451.901041666667000000
                39.687500000000000000
                39.687500000000000000
                1822.317708333333000000)
              Pen.Width = 2
              Shape = qrsRectangle
            end
            object QRShape50: TQRShape
              Left = 12
              Top = 80
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                264.583333333333400000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRImage2: TQRImage
              Left = 24
              Top = 24
              Width = 90
              Height = 52
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                171.979166666666700000
                79.375000000000000000
                79.375000000000000000
                297.656250000000000000)
              Picture.Data = {
                0954474946496D6167659412000047494638396171004200F70000FFFFFF1818
                18636363737373847373C69494E7ADADCE8484DE7B7B6B3131521818E74242C6
                2121BD1818E718184A0000D6524AAD635A6B2921DEA59CDE6B5A94635A9C4A39
                6B2110D66B52E7947B947B73A57B6BBD3100844A31843110D6B5A5CEAD9CCE7B
                52A53900BD4200DE4A0094847B312118CE5200DE5A00FF6B00944200CEBDAD63
                5A52D6BDA5BDB5AD948C84E7CEB5DEC6ADE7BD94B59473D66B009C5200CEAD84
                DE7B00FFE7C6F7DEBDEFD6B5E7CEADDEC6A5A5947BD6C6ADBDAD94F7DEB5EFD6
                ADDEC69CA56B00E794007B7363FFEFCEEFDEBDD6C6A5B5A584634A187B5200E7
                CE94F7E7BDE7D6ADDECEA5DEC68CE7D6A5FFE79CB59C4A5A4A18947B21846B10
                D6CEADCEC6A5948C6BBDAD6BF7DE73E7CE63C6AD4AAD8C00DEB500BDB58CF7DE
                6BE7C621EFCE21E7C618FFD600E7CE429C8400A58C00B59C00D6B500DEBD00EF
                CE00948C52AD9C29F7DE39AD9C21EFD618948408C6AD00CEB500948C42D6C639
                B5A521C6B518635A00A59400EFD6006B6308736B00847B00C6B500A59C088C84
                00BDB50084847BA5A5944A4A42CECEADA5A58463634A8484639C9C7331312173
                7342B5B5395252186B6B183939005252009CA5639CB5007B8C429CB56B394229
                849C6352733194B58C7384738CAD8CA5CEA584A5849CC69C94BD948CB594739C
                7B5A846B4A6B5A5A736B314A426B7373313939182121527373394A5218293121
                313908101808102152525A18182131314A0808100000104A31525A525A635A63
                3118315A295252294A63315A5A104A2908214A08397339635218428C10638C31
                6BA521739C0863A5086BBD31849C216BB5217B8C29637B18529C316BAD2973AD
                3173B55284AD3973423139CE7394C67B94B56B84C6738C63424A6321314A0010
                7B525A9C1831D61039C6314AA521397B4A528C2131B521393100087B424A8C10
                21730010CE4252B51829AD08188C3139842129E73142DE2939E72131731018CE
                1829DE1021E71021BD0818C60818CE0818DE0818C60010CE0010DE4A52A53139
                CE3139A51821CE1821A51018940008C61018CE1018DE101800000021F9040100
                00B4002C00000000710042004008FE0001081C48B0A0C183080D2273C630A1C3
                8710234A24F88FCA9C59AD5AC98205EB5F0C18305A2089F123110B8CADFECD9A
                E52AE5201C578E208171A490AC00B24EE170762C98B165C5786D9A406C993061
                CC8C323BBACCD8D1A5470B44637164D9B163C58A21F3D56CA25782B08CD86A04
                68E03F580150E180D1A3D6A0175802C04285CA952B962955AE78E203895F1D27
                030470C50914A84E863F81DAE429C626C38F177FCAF449312842A2041429F40F
                1AB3CFCB8011FB4A7AE0AB2603F2A82104805AABB9AC50AD82B5CA12478EADD4
                B56B876EE54A8E4AA8589975C74D1A397294E471E408D3A54B953265329CF893
                27EA9F38A95ABCA93B941DB320FE77F734AAB4F94183BCD8310560459735F0E3
                B351A3067EFDF8F5F3AFD973FF8BFFFD36BCC2067EF4E167DF1AF92548DF826A
                E4B00A1DF1ED9706245B9827510F03B90246245250500E3BF1E4130F3B24C693
                0D0EF3DC13223B22E6034F3FEDC423238BF1F423623CF4200043144DFC238F8D
                32BA13C03AEBB4E3223CECC0130F3C4CC2334F8E30E410C01C08AAB147247BA4
                E185850E0522871E0024C21A00108883C0232B70E9501225D0728B3DD858D08D
                39E654734D37E194138F3CE5B4C30E3F49E6F3E73CE3E01043103E8608CF91F1
                B8A3C00F6A26744A19909856C6221546AAE9A69C3EF4CF2B9D866A1E2B72F0C1
                4441880480912BABD0D5D12CFEB498628D020760714811B6E4F2CFAEADFCF24F
                2B82FD030312C258150C2E0500138C30CE30D34C3358F1945556C700C50C43BF
                D422AA5785D4928719AD6D34CB294F5C11C23D0C88B30E2CAEC0324B1981CC42
                C61CF4AD840F3D7BF2D2C40EB2C8828AB0D214B50C43C214034C274E48F313B3
                4819851452CB2AB38C01FF1463CC6705DF22CCB605C14288254C542AD059B0B4
                3200107EC1F004123CC47084057F66A30F274668C0820E488071C8218ADC2A0B
                B0AD14469D788B2D66CA639115DDDD269DFCC04326AF78D21D28AAA0C2F141A8
                F830401F330C44051D65C08B06156544A8C61FF72118A1816BB0A10A840CD241
                257D742C5865DD6B403847FE206CA01148DE6BC4D00229952CBDC927A5447175
                410394E18840A31081C2085448C0CD39DB78A3CD3D084030CE01DEB083803A20
                2A194F3BD9CC78E3113B44F10F2FEE90AE4D9D8B78A0020723D030C20927DC40
                C30D4410A19F183FFC631FDD6BF471752C380834804089AC110E39FBE4D3A2A0
                F118C0831338BC63A3A0F9B8B34E38E7B8E34E36DE6003CE35D710F0CD3AE728
                40E42CE73820638CF0C8B34E2BEEE4D9A4928B72D2016070807F2CA01FA62311
                3D06B138002C8220AA28431E8CD0402E7D837C793A8704DC61A37EB0C346E1D0
                073C0CC1B17FF881203EC08323FE40C10ABA702091E0831F84109142600215BE
                69892B02B08A55B0A015FEADBA0D2A5465846500E518BC3882340A00021EFC00
                044C2C80149B218D6638E359589CC63440F0428408A00F2D9945AB04F3B360D1
                22074EC0820DF6B10F7AD0231C4780810E9C10031EF405042E43C42C60218B51
                348118CE00CA2F560183AB2C03634F19D8C38CF830661CA319A4E841327C72C5
                6914A0827C8844186CF1AB00FC8310851840117EF0041D1C628F72F9C70CC8B0
                9F59DC6215FF80D336C8610D2324E11F3869C5113670948715C31A9CD881530E
                C930A438C5184E61D83038818A021C8521C7508630A67135317D114C0030C12C
                7042081D082100F278C73CE2711729F46D0E6C88C4365D92832BC0000B20C881
                4D020044018C2233A1FE40CF0BA6210D446C6200A6D0842D4821004D00740083
                288134A6111554344318CD30CA327AD14052E800042008C4400603CB43E08C2F
                4868022C5E700471B8431EE1F8860B78B0831DF8050B42F04B0C907096C17802
                3188199A610E1119C4302DA79D989AD360F08F51C48214855805452BD8825B0C
                00128D10C83380150001E02008870840112C01B400E0231FFC50875D80688956
                D105151C21A32AAE0319F1FCB43B9F581A6482BAB44C442113B3882B2814D389
                42345011AFC00129E8E006B370C42EAE584421BC500539B8010D78108420F6C3
                4A02A9E10B6C088400F84337FDB0014282484315AA60853E04C20A8D656C1F16
                C107D64602138CC8FEC1284A9109C379C2AF152C021F200580430C6240F0F903
                1BFCF007F840686D6A4B6EDA30FB8A2918570D10FA827ED2A62006C5ED088368
                851BB27089505C22134570E12BCAD0071F00800071681B82F833A02F10C1BDF0
                0DDE0D4EF00847504302E7B0073EB6818DFE9AE3052C7085086CC7011A7C6109
                7B585B750B64DD23FC6340760B441EB8C031AB0964106FA854061E4001742009
                442462879F04C522EBD52844376A0703B671A378CC43474168C203AE178F70EC
                431FF248C70240948F76DCC37AECF04638B8610540C080106840907FE8E08735
                A081638A4813005E60843AF4210ED630928843E4C17830C0084798C707F3D18F
                78F8231CE19047FE3E18102323D5A8CCF198000E8E60847F28C0012D56C705D6
                01A378F04351000CD13C7C100319FCE3024A50820224D00115A880C2A10A401F
                28BC8A81A42205AE604738DCC1A470C02F1CA71804183C11017DECA31AD40015
                44BEF10DC164E4AB46C25788DED18E7228A01CEBE0073FE0A16B5E3BC9073C30
                B43CF821A85ED7BA049C52043DDF0080F00EC41469F0430BBB88104D5CCE1CDC
                70CB00DED70DFC626316EEC88798C137A27680625BA7B883A5CB10894C517B22
                3FD080006C51821710C2102E7001210E718D7D28091FE010952BE035105BD801
                126178B7C243850735E861DA0B17D53FD2702A2E152223FFC0614636FE8FB724
                C317BB78C698FE22CEA53EB03B0609B9612BECD2AA8CACA215B35049CC57B191
                8CEC909EB21840108851AD622C4203C948063270918C5FFC6217BD307A2E96BE
                F467FC62E9BF48465716EE8257D061203177055D5CADAA5610C00819488737D6
                218E4CE4400741D0410B7C50009AB4409B1AD189321C19145A40832956299623
                7B99148721C519C560066EDF0D8595B724971BF1E43F4E06022C38010640B800
                04EEF1835728221189F801CE5ECA831E050B070FAD963388A1CB020052A2D72A
                562F1FF6146610431A0320403270A10B5DE02218C568A01FF4F0025C024B16B7
                3805222E1A032CA8A4154394452CDAC68776CD0203FADD47370C81834EFE6305
                4E18C6C584FE81955E70021AC638C65292C2F7620A439AC0804122A621B16716
                E319C758DC3F0471420DFCE3E6462880130C114719DF7C166340076D50068FB0
                12ADA00F7EC20EF3C00938404FEEC20A47400C489114CC500CBF900847300CC7
                A077147848D2240CCB824C1FD033E2F71915980BF1C73185000372A03C005046
                2961043CF00FEBE00DF4E00E18F10A7B400764F0056BA0077AF07B495004D7C0
                0D57D05267817C574045C5B08156710CC3500430300D4F6815462451DCE70CCC
                B20C98E00B250878C9000C8B3300390008220300199712201104DF800EE33001
                2AB10876110B65A00682C10B7791037EB187407016B2C00A86D109A1100AA450
                88A3A009FE25508801A5099A3008A2400AA6300AF6540AA5D003206000A8700B
                819714C5700BD1703588000341F00A910069DAE42E2FA0034F00124E70512AF1
                2B26700EE1504B34F1043CE017428005A564023F330BA1F01839451DDD8105DC
                11549D708C8198539FA0033F50081AC02CC580821B73358B700538B00A797075
                233317B3B0165710032BA30340100332E627EEA00A25C00258B0798F17034E60
                048B7013B3900A3A258C40158C9181344523044EB00A9D50199E8008AA5041F6
                A70A4C900686E52E71840445E0043900043A70044CF00046D20EE19008988008
                3087111C894B1C210B44E356DDF18FF96838DCD11D481004AD600A52030A9A20
                0AD750FE413E5002711000ACB08D7C540A756109ACC20AB12118EE2062EBB00A
                26503236B772EC9243B1C0098FC1568AF14F71058C53F318A32035C7B8092010
                059A401872150A1BB038A790032F40067930900020181C810ABC8056497917B3
                C00B1E90008FF0085E80076B30066C9097030209699060FBA15E737006A5C207
                8EF0088CF01C95A008CFF11C96400994C00A8D500995000A9C10043F500A51F9
                189C700A8B830858D0035A00092E205577A1048BF0085650067A3920AC94066B
                F01F55C2203E480774685D74F00582400770031FC0055C6DE30767A007729006
                9F9506944000FFC09448D31D49B0382731061A25101174596C90067AF0087430
                1F6BFE200869A360FA011FD2F50A767037BAC9206A635DB1492F6B9006746303
                40E00A93501989B10997247F6FF00F9C090002221FFB412568835CD4C536F0B1
                0745300079532006325DE75937D6451F78506777200781E03756B0086CB038F6
                66067C200002910ABE09610C865CF1013C3470022320023520022A3A047FB002
                02103CBCB9077AC036D3D5A055E244FFC060F56109DA78353FD00654302687F0
                97C0333928EA01EB90071DB0041EB00488460DDA800EE8102322D667EC400F06
                D00439403FE4600E12A0002AA000C0E3837F793C76739BF40104A70009F3711F
                7FF3640D640A7D300700700E16A004D720A5E8A00ED85322230222A9C3637FFA
                41FEFCC00025320E4EB0032D804BF2703FF8400ED8B00DDD400DF79500092001
                977A0117500305061F47100BDA592068A00664C03195E63C66900639B00F2396
                8022C60EF720662816222B3223A7430E0C506664266E38C00339500AED5066FC
                D00EF2E055EBE00EF37023F0802F4A0262ECE002455002FF50870B429C79B006
                DB020563420803C0067A100426752324E227F4100331703D2262910858232042
                ABD62322F070044E100433F00FC10A22C4BA0EBCB00EC326234C626248922247
                88004B103C34400437300457A238A1620939706100D0388ED00A0E6024EF4A22
                E2860538800135F2AEF9303D12403A1E2428F2E046C47A0F14800019700FDF20
                FE0F341224EBA00035D60EEAF0672EB22438A20DE4F800268000E8D00FDA2076
                E1F00CA2A20A5220101C0A002C60069110B3EFF0AE34DB0EF3006672340F30B2
                1BF2900DE7600DD5C01E065101F4A00E0EE00E0EA000D6106E169B0FB4560EE0
                946BEDA0242EB26BBA7605517001FAB024BC763FE190B49BA206AE3006006009
                0301010A200EE8800FB9C0409D2200BB72133FD20EFE00B932723A21520EF810
                0E7EC66BC4C60FF37000488003D6D00DFDB06BB42A62E2F0019BE20A6C000914
                040B03410B8EE00709477202D16FE314AC38920DF3C00FEFB0011900041E6002
                2EDBACD8D30E26A029609012E0A29F04B1077930BBB49B1016E00E7BAA0EF180
                400E0A90B6FC6023E4500EE7B02D5E0B003D6065CB1BBD08C102FF200B2B210B
                E2400EF8500EFB300FCB4A0EE7B00EE1CB298E200782301075E007810071E6FB
                15F84600E6C00BA132007A900676301094B0072714C0104C102B2007B34010E3
                9507471BC1118CBA051141A890C11A1CC2A6B107AD00C2227CC2284C1A010100
                003B}
            end
            object QRShape51: TQRShape
              Left = 120
              Top = 12
              Width = 1
              Height = 69
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                228.203125000000000000
                396.875000000000000000
                39.687500000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel54: TQRLabel
              Left = 121
              Top = 16
              Width = 440
              Height = 21
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                69.453125000000000000
                400.182291666666700000
                52.916666666666660000
                1455.208333333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'SECRETARIA GERAL DE ADMINISTRA'#199#195'O E FINAN'#199'AS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 16
            end
            object QRLabel55: TQRLabel
              Left = 121
              Top = 39
              Width = 440
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                400.182291666666700000
                128.984375000000000000
                1455.208333333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'CONSELHO NACIONAL DE DIRETORES'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel56: TQRLabel
              Left = 121
              Top = 51
              Width = 440
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                400.182291666666700000
                168.671875000000000000
                1455.208333333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Av. Gal Ol'#237'mpio da Silveira, 190 - Barra Funda - S'#227'o Paulo - SP'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel57: TQRLabel
              Left = 121
              Top = 65
              Width = 440
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                400.182291666666700000
                214.973958333333300000
                1455.208333333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Fone: (11) 3826-5100/Fax: 3826-5028 | www.sgaf.org.br'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape52: TQRShape
              Left = 12
              Top = 132
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                436.562499999999900000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRShape53: TQRShape
              Left = 476
              Top = 80
              Width = 1
              Height = 53
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                175.286458333333400000
                1574.270833333333000000
                264.583333333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel58: TQRLabel
              Left = 13
              Top = 82
              Width = 462
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                42.994791666666670000
                271.197916666666700000
                1527.968750000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'BENS M'#211'VEIS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 14
            end
            object QRLabel59: TQRLabel
              Left = 13
              Top = 100
              Width = 462
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666660000
                42.994791666666670000
                330.729166666666700000
                1527.968750000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'TERMO DE DOA'#199#195'O'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 12
            end
            object QRLabel60: TQRLabel
              Left = 13
              Top = 116
              Width = 462
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                42.994791666666670000
                383.645833333333400000
                1527.968750000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = '(Instru'#231#245'es de preenchimento no verso)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel61: TQRLabel
              Left = 477
              Top = 82
              Width = 17
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                1577.578125000000000000
                271.197916666666700000
                56.223958333333340000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#186
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 14
            end
            object QRShape54: TQRShape
              Left = 12
              Top = 160
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                529.166666666666800000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel62: TQRLabel
              Left = 14
              Top = 134
              Width = 108
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                443.177083333333300000
                357.187500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Doador (Raz'#227'o Social/Nome)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText36: TQRDBText
              Left = 24
              Top = 146
              Width = 34
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                482.864583333333400000
                112.447916666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'Doador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRDBText37: TQRDBText
              Left = 488
              Top = 108
              Width = 58
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                66.145833333333340000
                1613.958333333333000000
                357.187500000000000000
                191.822916666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'Codigo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 16
            end
            object QRShape55: TQRShape
              Left = 412
              Top = 132
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1362.604166666667000000
                436.562499999999900000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel63: TQRLabel
              Left = 414
              Top = 134
              Width = 40
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                443.177083333333300000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'CNPJ/CPF'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText38: TQRDBText
              Left = 424
              Top = 146
              Width = 54
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                482.864583333333400000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'CNPJ_CPF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape56: TQRShape
              Left = 12
              Top = 188
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                621.770833333333400000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel64: TQRLabel
              Left = 14
              Top = 162
              Width = 35
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                535.781250000000000000
                115.755208333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Endere'#231'o'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText39: TQRDBText
              Left = 24
              Top = 174
              Width = 45
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                575.468750000000000000
                148.828125000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndRuaD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape57: TQRShape
              Left = 348
              Top = 160
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1150.937500000000000000
                529.166666666666800000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel65: TQRLabel
              Left = 350
              Top = 162
              Width = 10
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1157.552083333333000000
                535.781250000000000000
                33.072916666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#186
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText40: TQRDBText
              Left = 352
              Top = 174
              Width = 57
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1164.166666666667000000
                575.468750000000000000
                188.515625000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndNumeroD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape58: TQRShape
              Left = 412
              Top = 160
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1362.604166666667000000
                529.166666666666800000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel66: TQRLabel
              Left = 414
              Top = 162
              Width = 54
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                535.781250000000000000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Complemento'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText41: TQRDBText
              Left = 424
              Top = 174
              Width = 90
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                575.468750000000000000
                297.656250000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndComplementoD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape59: TQRShape
              Left = 12
              Top = 216
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                714.375000000000000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel67: TQRLabel
              Left = 14
              Top = 190
              Width = 24
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                628.385416666666800000
                79.375000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Bairro'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText42: TQRDBText
              Left = 24
              Top = 202
              Width = 54
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                668.072916666666800000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndBairroD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel68: TQRLabel
              Left = 190
              Top = 190
              Width = 25
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                628.385416666666800000
                628.385416666666800000
                82.682291666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText43: TQRDBText
              Left = 200
              Top = 202
              Width = 58
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                661.458333333333400000
                668.072916666666800000
                191.822916666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndCidadeD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel69: TQRLabel
              Left = 422
              Top = 190
              Width = 26
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                628.385416666666800000
                85.989583333333340000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estado'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText44: TQRDBText
              Left = 432
              Top = 202
              Width = 33
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1428.750000000000000000
                668.072916666666800000
                109.140625000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndEstadoD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel70: TQRLabel
              Left = 470
              Top = 190
              Width = 18
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1554.427083333333000000
                628.385416666666800000
                59.531250000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'CEP'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText45: TQRDBText
              Left = 480
              Top = 202
              Width = 45
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1587.500000000000000000
                668.072916666666800000
                148.828125000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'EndCepD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape60: TQRShape
              Left = 468
              Top = 188
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1547.812500000000000000
                621.770833333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape61: TQRShape
              Left = 420
              Top = 188
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                621.770833333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape62: TQRShape
              Left = 188
              Top = 188
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                621.770833333333400000
                621.770833333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape64: TQRShape
              Left = 12
              Top = 244
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                806.979166666666800000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel71: TQRLabel
              Left = 14
              Top = 218
              Width = 38
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                720.989583333333500000
                125.677083333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Donat'#225'ria'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel72: TQRLabel
              Left = 414
              Top = 218
              Width = 22
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                720.989583333333500000
                72.760416666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'CNPJ'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRShape65: TQRShape
              Left = 412
              Top = 216
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1362.604166666667000000
                714.375000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel73: TQRLabel
              Left = 24
              Top = 230
              Width = 214
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                760.677083333333400000
                707.760416666666800000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'IGREJA DO EVANGELHO QUADRANGULAR'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText46: TQRDBText
              Left = 424
              Top = 230
              Width = 31
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                760.677083333333400000
                102.526041666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpImovel
              DataField = 'CNPJI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel74: TQRLabel
              Left = 14
              Top = 246
              Width = 35
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                813.593750000000100000
                115.755208333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Endere'#231'o'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText47: TQRDBText
              Left = 24
              Top = 258
              Width = 40
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                853.281250000000000000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndRuaI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel75: TQRLabel
              Left = 350
              Top = 246
              Width = 10
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1157.552083333333000000
                813.593750000000100000
                33.072916666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#186
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText48: TQRDBText
              Left = 352
              Top = 258
              Width = 57
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1164.166666666667000000
                853.281250000000000000
                188.515625000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndNumeroI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel76: TQRLabel
              Left = 414
              Top = 246
              Width = 54
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                813.593750000000100000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Complemento'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText49: TQRDBText
              Left = 424
              Top = 258
              Width = 86
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1402.291666666667000000
                853.281250000000000000
                284.427083333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndComplementoI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape66: TQRShape
              Left = 412
              Top = 244
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1362.604166666667000000
                806.979166666666800000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel77: TQRLabel
              Left = 422
              Top = 274
              Width = 26
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                906.197916666666800000
                85.989583333333340000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estado'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRShape67: TQRShape
              Left = 420
              Top = 272
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                899.583333333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape68: TQRShape
              Left = 468
              Top = 272
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1547.812500000000000000
                899.583333333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel78: TQRLabel
              Left = 470
              Top = 274
              Width = 18
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1554.427083333333000000
                906.197916666666800000
                59.531250000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'CEP'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText50: TQRDBText
              Left = 480
              Top = 286
              Width = 40
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1587.500000000000000000
                945.885416666666600000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndCepI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape69: TQRShape
              Left = 188
              Top = 272
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                621.770833333333400000
                899.583333333333400000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel79: TQRLabel
              Left = 190
              Top = 274
              Width = 25
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                628.385416666666800000
                906.197916666666800000
                82.682291666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText51: TQRDBText
              Left = 200
              Top = 286
              Width = 54
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                661.458333333333400000
                945.885416666666600000
                178.593750000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndCidadeI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel80: TQRLabel
              Left = 14
              Top = 274
              Width = 24
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                906.197916666666800000
                79.375000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Bairro'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText52: TQRDBText
              Left = 24
              Top = 286
              Width = 49
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                945.885416666666600000
                162.057291666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndBairroI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape70: TQRShape
              Left = 12
              Top = 300
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                992.187500000000000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRShape71: TQRShape
              Left = 12
              Top = 272
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                899.583333333333400000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRShape72: TQRShape
              Left = 348
              Top = 244
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1150.937500000000000000
                806.979166666666800000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRDBText53: TQRDBText
              Left = 432
              Top = 286
              Width = 33
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1428.750000000000000000
                945.885416666666600000
                109.140625000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'EndEstadoI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel81: TQRLabel
              Left = 14
              Top = 302
              Width = 25
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                46.302083333333340000
                998.802083333333400000
                82.682291666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Pastor'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText54: TQRDBText
              Left = 24
              Top = 314
              Width = 31
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                79.375000000000000000
                1038.489583333333000000
                102.526041666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'Pastor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape73: TQRShape
              Left = 420
              Top = 300
              Width = 1
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.911458333333340000
                1389.062500000000000000
                992.187500000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRLabel82: TQRLabel
              Left = 422
              Top = 302
              Width = 41
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                998.802083333333400000
                135.598958333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Prontu'#225'rio'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText55: TQRDBText
              Left = 432
              Top = 314
              Width = 48
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1428.750000000000000000
                1038.489583333333000000
                158.750000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'Prontuario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape74: TQRShape
              Left = 12
              Top = 328
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1084.791666666667000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRMemo5: TQRMemo
              Left = 16
              Top = 330
              Width = 541
              Height = 85
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                281.119791666666700000
                52.916666666666660000
                1091.406250000000000000
                1789.244791666667000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Lines.Strings = (
                
                  'A DONAT'#193'RIA acima identificada, atrav'#233's de seu representante leg' +
                  'al, declara, expressamente, para os fins de direito, ter recebid' +
                  'o doa'#231#227'o dos bens abaixo discriminados, no estado. A DONAT'#193'RIA c' +
                  'ompromete-se a utilizar os bens '#250'nica e exclusivamente para aten' +
                  'der as necessidades da institui'#231#227'o. A documenta'#231#227'o origin'#225'ria da' +
                  ' aquisi'#231#227'o ser'#225' entregue pela DOADORA, mediante c'#243'pia deste term' +
                  'o, obrigando-se a DONAT'#193'RIA a conserv'#225'-la em seus arquivos para ' +
                  'efeito de fiscaliza'#231#227'o por parte dos '#243'rg'#227'os fiscais aos quais DO' +
                  'ADORA e DONAT'#193'RIOS est'#227'o sujeitos.')
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape75: TQRShape
              Left = 12
              Top = 416
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1375.833333333333000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel88: TQRLabel
              Left = 366
              Top = 436
              Width = 22
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1210.468750000000000000
                1441.979166666667000000
                72.760416666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Qtde'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel89: TQRLabel
              Left = 190
              Top = 436
              Width = 41
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                628.385416666666800000
                1441.979166666667000000
                135.598958333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Descri'#231#227'o'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel90: TQRLabel
              Left = 15
              Top = 436
              Width = 46
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                49.609375000000000000
                1441.979166666667000000
                152.135416666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Nota Fiscal'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel91: TQRLabel
              Left = 414
              Top = 436
              Width = 47
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1369.218750000000000000
                1441.979166666667000000
                155.442708333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Valor Unit.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel83: TQRLabel
              Left = 14
              Top = 418
              Width = 545
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666660000
                46.302083333333340000
                1382.447916666667000000
                1802.473958333333000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'DESCRI'#199#195'O DAS DOA'#199#213'ES'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 12
            end
            object QRShape77: TQRShape
              Left = 12
              Top = 434
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                1435.364583333333000000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel84: TQRLabel
              Left = 499
              Top = 436
              Width = 47
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1650.338541666667000000
                1441.979166666667000000
                155.442708333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Valor Total'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRShape102: TQRShape
              Left = 62
              Top = 434
              Width = 1
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666660000
                205.052083333333400000
                1435.364583333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape103: TQRShape
              Left = 356
              Top = 434
              Width = 1
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666660000
                1177.395833333333000000
                1435.364583333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape104: TQRShape
              Left = 400
              Top = 434
              Width = 1
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666660000
                1322.916666666667000000
                1435.364583333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape105: TQRShape
              Left = 476
              Top = 434
              Width = 1
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666660000
                1574.270833333333000000
                1435.364583333333000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
          end
          object QRBand3: TQRBand
            Left = 30
            Top = 499
            Width = 575
            Height = 217
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
              717.682291666666700000
              1901.692708333333000000)
            BandType = rbSummary
            object QRShape63: TQRShape
              Left = 12
              Top = 0
              Width = 551
              Height = 217
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                717.682291666666800000
                39.687500000000000000
                0.000000000000000000
                1822.317708333333000000)
              Pen.Width = 2
              Shape = qrsRectangle
            end
            object QRShape78: TQRShape
              Left = 12
              Top = 65
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                214.973958333333300000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRMemo6: TQRMemo
              Left = 16
              Top = 21
              Width = 541
              Height = 43
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                142.213541666666700000
                52.916666666666660000
                69.453125000000000000
                1789.244791666667000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Lines.Strings = (
                
                  'A DONAT'#193'RIA compromete-se a incluir os bens acima declarados no ' +
                  'Livro de Patrim'#244'nio da institui'#231#227'o at'#233' o final do m'#234's da concret' +
                  'iza'#231#227'o da doa'#231#227'o, enviando c'#243'pia deste termo '#224' Superintend'#234'ncia ' +
                  'Regional/Diretoria de Campo Mission'#225'rio e ao contador da regi'#227'o/' +
                  'campo para arquivo e registro da doa'#231#227'o.')
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel85: TQRLabel
              Left = 16
              Top = 69
              Width = 31
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                52.916666666666660000
                228.203125000000000000
                102.526041666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'DATA:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText58: TQRDBText
              Left = 80
              Top = 69
              Width = 61
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                264.583333333333400000
                228.203125000000000000
                201.744791666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'DataExtenso'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel86: TQRLabel
              Left = 16
              Top = 99
              Width = 49
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                52.916666666666660000
                327.421875000000000000
                162.057291666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'DOADOR:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape79: TQRShape
              Left = 80
              Top = 113
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                264.583333333333400000
                373.723958333333300000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel87: TQRLabel
              Left = 136
              Top = 115
              Width = 43
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                449.791666666666700000
                380.338541666666700000
                142.213541666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Assinatura'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRLabel95: TQRLabel
              Left = 450
              Top = 155
              Width = 55
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1488.281250000000000000
                512.630208333333400000
                181.901041666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Testemunha 2'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRShape80: TQRShape
              Left = 400
              Top = 153
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                1322.916666666667000000
                506.015625000000100000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRShape81: TQRShape
              Left = 400
              Top = 113
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                1322.916666666667000000
                373.723958333333300000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel96: TQRLabel
              Left = 450
              Top = 115
              Width = 55
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1488.281250000000000000
                380.338541666666700000
                181.901041666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Testemunha 1'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRLabel97: TQRLabel
              Left = 16
              Top = 179
              Width = 60
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                52.916666666666660000
                592.005208333333400000
                198.437500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'DONAT'#193'RIA'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape85: TQRShape
              Left = 80
              Top = 193
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                264.583333333333400000
                638.307291666666800000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel98: TQRLabel
              Left = 112
              Top = 195
              Width = 92
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                370.416666666666700000
                644.921875000000000000
                304.270833333333400000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Superintendente/Diretor'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRShape89: TQRShape
              Left = 400
              Top = 193
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                1322.916666666667000000
                638.307291666666800000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel99: TQRLabel
              Left = 438
              Top = 195
              Width = 80
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1448.593750000000000000
                644.921875000000000000
                264.583333333333400000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Diretor de Patrim'#244'nio'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRShape90: TQRShape
              Left = 240
              Top = 193
              Width = 153
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                793.750000000000000000
                638.307291666666800000
                506.015625000000100000)
              Shape = qrsHorLine
            end
            object QRLabel100: TQRLabel
              Left = 275
              Top = 195
              Width = 86
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                909.505208333333400000
                644.921875000000000000
                284.427083333333400000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Pastor Titular da Igreja'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRShape91: TQRShape
              Left = 12
              Top = 19
              Width = 551
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                3.307291666666666000
                39.687500000000000000
                62.838541666666680000
                1822.317708333333000000)
              Shape = qrsHorLine
            end
            object QRLabel101: TQRLabel
              Left = 14
              Top = 2
              Width = 412
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666660000
                46.302083333333340000
                6.614583333333332000
                1362.604166666667000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'VALOR TOTAL DAS DOA'#199#213'ES'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 12
            end
            object QRShape92: TQRShape
              Left = 428
              Top = 0
              Width = 1
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                66.145833333333340000
                1415.520833333333000000
                0.000000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRDBText59: TQRDBText
              Left = 493
              Top = 3
              Width = 64
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1630.494791666667000000
                9.921875000000000000
                211.666666666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpMovel
              DataField = 'TotalDoacoes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
          end
          object QRBand4: TQRBand
            Left = 30
            Top = 716
            Width = 575
            Height = 38
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
              125.677083333333300000
              1901.692708333333000000)
            BandType = rbPageFooter
            object QRShape93: TQRShape
              Left = 12
              Top = -1
              Width = 551
              Height = 26
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                85.989583333333340000
                39.687500000000000000
                -3.307291666666666000
                1822.317708333333000000)
              Pen.Width = 2
              Shape = qrsRectangle
            end
            object QRLabel102: TQRLabel
              Left = 16
              Top = 10
              Width = 537
              Height = 12
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                52.916666666666660000
                33.072916666666670000
                1776.015625000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 
                'C'#243'pias para: 1. Patrim'#244'nio da igreja local  -  2. Doador   -  3.' +
                ' Superintend'#234'ncia  -  4. Contabilidade  -  5. SGAF/CND'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
          end
          object QRSubDetail1: TQRSubDetail
            Left = 30
            Top = 481
            Width = 575
            Height = 18
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
              59.531250000000000000
              1901.692708333333000000)
            Master = QuickRepItens
            DataSet = RxMImpItens
            PrintBefore = False
            PrintIfEmpty = True
            object QRShape94: TQRShape
              Left = 12
              Top = 0
              Width = 551
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                39.687500000000000000
                0.000000000000000000
                1822.317708333333000000)
              Pen.Width = 2
              Shape = qrsRectangle
            end
            object QRShape95: TQRShape
              Left = 62
              Top = 0
              Width = 1
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                205.052083333333400000
                0.000000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape96: TQRShape
              Left = 356
              Top = 0
              Width = 1
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                1177.395833333333000000
                0.000000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape101: TQRShape
              Left = 400
              Top = 0
              Width = 1
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                1322.916666666667000000
                0.000000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRShape106: TQRShape
              Left = 476
              Top = 0
              Width = 1
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                59.531250000000000000
                1574.270833333333000000
                0.000000000000000000
                3.307291666666666000)
              Shape = qrsVertLine
            end
            object QRDBText60: TQRDBText
              Left = 368
              Top = 2
              Width = 23
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1217.083333333333000000
                6.614583333333332000
                76.067708333333340000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpItens
              DataField = 'Qtde'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRDBText61: TQRDBText
              Left = 66
              Top = 2
              Width = 47
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                218.281250000000000000
                6.614583333333332000
                155.442708333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpItens
              DataField = 'Descricao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRDBText62: TQRDBText
              Left = 16
              Top = 2
              Width = 50
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                52.916666666666660000
                6.614583333333332000
                165.364583333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpItens
              DataField = 'NotaFiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRDBText63: TQRDBText
              Left = 405
              Top = 2
              Width = 60
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1339.453125000000000000
                6.614583333333332000
                198.437500000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpItens
              DataField = 'ValorUnitario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRDBText64: TQRDBText
              Left = 509
              Top = 2
              Width = 47
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.994791666666670000
                1683.411458333333000000
                6.614583333333332000
                155.442708333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RxMImpItens
              DataField = 'ValorTotal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
          end
        end
      end
      object BtnRecibo: TBitBtn
        Left = 452
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Recibo'
        TabOrder = 1
        OnClick = BtnReciboClick
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
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 483
    Width = 544
    Height = 39
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 540
      Height = 34
      ButtonHeight = 30
      ButtonWidth = 36
      Caption = 'ToolBar1'
      Flat = True
      Images = FormMain.ImageList24
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = DataSetPrior1
      end
      object ToolButton2: TToolButton
        Left = 36
        Top = 0
        Action = DataSetNext1
      end
      object ToolButton5: TToolButton
        Left = 72
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 80
        Top = 0
        Action = DataSetInsert1
      end
      object ToolButton7: TToolButton
        Left = 116
        Top = 0
        Action = DataSetEdit1
      end
      object ToolButton8: TToolButton
        Left = 152
        Top = 0
        Action = DataSetDelete1
      end
      object ToolButton9: TToolButton
        Left = 188
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 196
        Top = 0
        Action = DataSetPost1
      end
      object ToolButton11: TToolButton
        Left = 232
        Top = 0
        Action = DataSetCancel1
      end
      object ToolButton3: TToolButton
        Left = 268
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton13: TToolButton
        Left = 276
        Top = 0
        Caption = 'ToolButton13'
        ImageIndex = 5
        OnClick = ToolButton13Click
      end
    end
  end
  object Ds: TDataSource
    DataSet = QryDoacoes
    Left = 368
  end
  object ActionList1: TActionList
    Images = FormMain.ImageList24
    Left = 340
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      Hint = 'Voltar'
      ImageIndex = 8
      DataSource = Ds
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      Hint = 'Avan'#231'ar'
      ImageIndex = 3
      DataSource = Ds
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      Hint = 'Incluir'
      ImageIndex = 9
      DataSource = Ds
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      Hint = 'Excluir'
      ImageIndex = 2
      DataSource = Ds
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = 'DataSetEdit1'
      Hint = 'Alterar'
      ImageIndex = 0
      DataSource = Ds
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      Hint = 'Salvar'
      ImageIndex = 11
      DataSource = Ds
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      Hint = 'Cancelar'
      ImageIndex = 7
      DataSource = Ds
    end
  end
  object DsItens: TDataSource
    DataSet = QryItens
    Left = 400
  end
  object RxMImpImovel: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Codigo'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Culto'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Valor'
        DataType = ftBCD
        Precision = 19
        Size = 4
      end>
    Left = 434
    object RxMImpImovelCodigo: TIntegerField
      FieldName = 'Codigo'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object RxMImpImovelDoador: TStringField
      FieldName = 'Doador'
      Required = True
      Size = 50
    end
    object RxMImpImovelCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Required = True
      Size = 18
    end
    object RxMImpImovelEndRua: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'EndRuaD'
      Required = True
      Size = 50
    end
    object RxMImpImovelEndNumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EndNumeroD'
      Required = True
      Size = 6
    end
    object RxMImpImovelEndBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'EndBairroD'
      Required = True
      Size = 50
    end
    object RxMImpImovelEndComplemento: TStringField
      FieldName = 'EndComplementoD'
      Size = 30
    end
    object RxMImpImovelEndCidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'EndCidadeD'
      Required = True
      Size = 50
    end
    object RxMImpImovelEndEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'EndEstadoD'
      Required = True
      Size = 2
    end
    object RxMImpImovelEndCep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EndCepD'
      Required = True
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object RxMImpImovelCNPJI: TStringField
      FieldName = 'CNPJI'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object RxMImpImovelPastor: TStringField
      FieldName = 'Pastor'
      Size = 50
    end
    object RxMImpImovelProntuario: TStringField
      FieldName = 'Prontuario'
      Size = 10
    end
    object RxMImpImovelEndRuaI: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'EndRuaI'
      Required = True
      Size = 50
    end
    object RxMImpImovelEndNumeroI: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EndNumeroI'
      Required = True
      Size = 6
    end
    object RxMImpImovelEndBairroI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'EndBairroI'
      Required = True
      Size = 50
    end
    object RxMImpImovelEndComplementoI: TStringField
      FieldName = 'EndComplementoI'
      Size = 30
    end
    object RxMImpImovelEndCidadeI: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'EndCidadeI'
      Required = True
      Size = 50
    end
    object RxMImpImovelEndEstadoI: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'EndEstadoI'
      Required = True
      Size = 2
    end
    object RxMImpImovelEndCepI: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EndCepI'
      Required = True
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object RxMImpImovelEndLocalizacaoIM: TStringField
      FieldName = 'EndLocalizacaoIM'
      Size = 50
    end
    object RxMImpImovelEndQuadraIM: TStringField
      FieldName = 'EndQuadraIM'
    end
    object RxMImpImovelEndLoteIM: TStringField
      FieldName = 'EndLoteIM'
      Size = 15
    end
    object RxMImpImovelEndNumeroIM: TStringField
      FieldName = 'EndNumeroIM'
      Size = 6
    end
    object RxMImpImovelEndBairroIM: TStringField
      FieldName = 'EndBairroIM'
      Size = 50
    end
    object RxMImpImovelEndComplementoIM: TStringField
      FieldName = 'EndComplementoIM'
      Size = 30
    end
    object RxMImpImovelEndCidadeIM: TStringField
      FieldName = 'EndCidadeIM'
      Size = 50
    end
    object RxMImpImovelEndEstadoIM: TStringField
      FieldName = 'EndEstadoIM'
      Size = 2
    end
    object RxMImpImovelMetragemIM: TFloatField
      FieldName = 'MetragemIM'
      DisplayFormat = ',0.##'
    end
    object RxMImpImovelTipoImovelIM: TStringField
      FieldName = 'TipoImovelIM'
    end
    object RxMImpImovelEscrituraIM: TStringField
      FieldName = 'EscrituraIM'
      Size = 10
    end
    object RxMImpImovelCartorioIM: TStringField
      FieldName = 'CartorioIM'
      Size = 10
    end
    object RxMImpImovelValorVenalIM: TCurrencyField
      FieldName = 'ValorVenalIM'
      DisplayFormat = '#,##0.00'
    end
    object RxMImpImovelCertidaoNegativaDebitosIM: TStringField
      FieldName = 'CertidaoNegativaDebitosIM'
      Size = 10
    end
    object RxMImpImovelDataExtenso: TStringField
      FieldName = 'DataExtenso'
      Size = 100
    end
  end
  object PopupMenuItens: TPopupMenu
    OnPopup = PopupMenuItensPopup
    Left = 348
    Top = 272
    object Excluir1: TMenuItem
      Caption = 'Excluir Item'
      OnClick = Excluir1Click
    end
  end
  object QryDoacoes: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from Doacoes'
      'where codigo = -1')
    DMLRefresh = True
    BeforeInsert = QryDoacoesBeforeInsert
    BeforeEdit = QryDoacoesBeforeEdit
    BeforePost = QryDoacoesBeforePost
    AfterPost = QryDoacoesAfterPost
    AfterCancel = QryDoacoesAfterCancel
    BeforeDelete = QryDoacoesBeforeDelete
    AfterScroll = QryDoacoesAfterScroll
    OnCalcFields = QryDoacoesCalcFields
    OnNewRecord = QryDoacoesNewRecord
    Left = 272
    object QryDoacoesCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryDoacoesIgreja: TIntegerField
      DisplayLabel = 'C'#243'digo da Igreja'
      FieldName = 'Igreja'
      Required = True
    end
    object QryDoacoesTipo: TIntegerField
      DisplayLabel = 'Tipo de Doa'#231#227'o'
      FieldName = 'Tipo'
      Required = True
    end
    object QryDoacoesData: TDateTimeField
      FieldName = 'Data'
      Required = True
    end
    object QryDoacoesDoador: TStringField
      FieldName = 'Doador'
      Required = True
      Size = 50
    end
    object QryDoacoesCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Required = True
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object QryDoacoesEndRua: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'EndRua'
      Required = True
      Size = 50
    end
    object QryDoacoesEndNumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EndNumero'
      Required = True
      Size = 6
    end
    object QryDoacoesEndBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'EndBairro'
      Required = True
      Size = 50
    end
    object QryDoacoesEndComplemento: TStringField
      FieldName = 'EndComplemento'
      Size = 30
    end
    object QryDoacoesEndCidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'EndCidade'
      Required = True
      Size = 50
    end
    object QryDoacoesEndEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'EndEstado'
      Required = True
      Size = 2
    end
    object QryDoacoesEndCep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EndCep'
      Required = True
      Size = 8
    end
    object QryDoacoesBairroIgreja: TStringField
      FieldKind = fkCalculated
      FieldName = 'BairroIgreja'
      Size = 50
      Calculated = True
    end
    object QryDoacoesEndLocalizacaoIM: TStringField
      FieldName = 'EndLocalizacaoIM'
      Size = 50
    end
    object QryDoacoesEndQuadraIM: TStringField
      FieldName = 'EndQuadraIM'
    end
    object QryDoacoesEndLoteIM: TStringField
      FieldName = 'EndLoteIM'
      Size = 15
    end
    object QryDoacoesEndNumeroIM: TStringField
      FieldName = 'EndNumeroIM'
      Size = 6
    end
    object QryDoacoesEndBairroIM: TStringField
      FieldName = 'EndBairroIM'
      Size = 50
    end
    object QryDoacoesEndComplementoIM: TStringField
      FieldName = 'EndComplementoIM'
      Size = 30
    end
    object QryDoacoesEndCidadeIM: TStringField
      FieldName = 'EndCidadeIM'
      Size = 50
    end
    object QryDoacoesEndEstadoIM: TStringField
      FieldName = 'EndEstadoIM'
      Size = 2
    end
    object QryDoacoesMetragemIM: TFloatField
      FieldName = 'MetragemIM'
    end
    object QryDoacoesTipoImovelIM: TStringField
      FieldName = 'TipoImovelIM'
    end
    object QryDoacoesEscrituraIM: TStringField
      FieldName = 'EscrituraIM'
      Size = 10
    end
    object QryDoacoesCartorioIM: TStringField
      FieldName = 'CartorioIM'
      Size = 10
    end
    object QryDoacoesValorVenalIM: TCurrencyField
      FieldName = 'ValorVenalIM'
    end
    object QryDoacoesCertidaoNegativaDebitosIM: TStringField
      FieldName = 'CertidaoNegativaDebitosIM'
      Size = 10
    end
    object QryDoacoesDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
    object QryDoacoesUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryDoacoesDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryDoacoesUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
  end
  object QryItens: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from ItensDoacao'
      'where Codigo = -1')
    DMLRefresh = True
    AfterPost = QryItensAfterCancel
    AfterCancel = QryItensAfterCancel
    BeforeDelete = QryItensBeforeDelete
    AfterDelete = QryItensAfterCancel
    OnCalcFields = QryItensCalcFields
    Left = 304
    object QryItensCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryItensDoacao: TIntegerField
      FieldName = 'Doacao'
    end
    object QryItensQtde: TIntegerField
      FieldName = 'Qtde'
    end
    object QryItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object QryItensNotaFiscal: TStringField
      FieldName = 'NotaFiscal'
      Size = 10
    end
    object QryItensValorUnitario: TCurrencyField
      FieldName = 'ValorUnitario'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object QryItensValorTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorTotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
  end
  object RxMImpItens: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Codigo'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Culto'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Valor'
        DataType = ftBCD
        Precision = 19
        Size = 4
      end>
    Left = 466
    object RxMImpItensQtde: TIntegerField
      FieldName = 'Qtde'
      DisplayFormat = '000'
    end
    object RxMImpItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object RxMImpItensNotaFiscal: TStringField
      FieldName = 'NotaFiscal'
      Size = 10
    end
    object RxMImpItensValorUnitario: TCurrencyField
      FieldName = 'ValorUnitario'
      DisplayFormat = '#,##0.00'
    end
    object RxMImpItensValorTotal: TCurrencyField
      FieldName = 'ValorTotal'
      DisplayFormat = '#,##0.00'
    end
  end
  object RxMImpMovel: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Codigo'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Culto'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Valor'
        DataType = ftBCD
        Precision = 19
        Size = 4
      end>
    OnCalcFields = RxMImpMovelCalcFields
    Left = 498
    object RxMImpMovelCodigo: TIntegerField
      FieldName = 'Codigo'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object RxMImpMovelDoador: TStringField
      FieldName = 'Doador'
      Required = True
      Size = 50
    end
    object RxMImpMovelCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Required = True
      Size = 18
    end
    object RxMImpMovelEndRuaD: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'EndRuaD'
      Required = True
      Size = 50
    end
    object RxMImpMovelEndNumeroD: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EndNumeroD'
      Required = True
      Size = 6
    end
    object RxMImpMovelEndBairroD: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'EndBairroD'
      Required = True
      Size = 50
    end
    object RxMImpMovelEndComplementoD: TStringField
      FieldName = 'EndComplementoD'
      Size = 30
    end
    object RxMImpMovelEndCidadeD: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'EndCidadeD'
      Required = True
      Size = 50
    end
    object RxMImpMovelEndEstadoD: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'EndEstadoD'
      Required = True
      Size = 2
    end
    object RxMImpMovelEndCepD: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EndCepD'
      Required = True
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object RxMImpMovelCNPJI: TStringField
      FieldName = 'CNPJI'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object RxMImpMovelPastor: TStringField
      FieldName = 'Pastor'
      Size = 50
    end
    object RxMImpMovelProntuario: TStringField
      FieldName = 'Prontuario'
      Size = 10
    end
    object RxMImpMovelEndRuaI: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'EndRuaI'
      Required = True
      Size = 50
    end
    object RxMImpMovelEndNumeroI: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EndNumeroI'
      Required = True
      Size = 6
    end
    object RxMImpMovelEndBairroI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'EndBairroI'
      Required = True
      Size = 50
    end
    object RxMImpMovelEndComplementoI: TStringField
      FieldName = 'EndComplementoI'
      Size = 30
    end
    object RxMImpMovelEndCidadeI: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'EndCidadeI'
      Required = True
      Size = 50
    end
    object RxMImpMovelEndEstadoI: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'EndEstadoI'
      Required = True
      Size = 2
    end
    object RxMImpMovelEndCepI: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EndCepI'
      Required = True
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object RxMImpMovelTotalDoacoes: TCurrencyField
      FieldName = 'TotalDoacoes'
      DisplayFormat = '#,##0.00'
    end
    object RxMImpMovelCertidaoNegativaDebitosIM: TStringField
      FieldName = 'CertidaoNegativaDebitosIM'
      Size = 10
    end
    object RxMImpMovelDataExtenso: TStringField
      FieldName = 'DataExtenso'
      Size = 100
    end
  end
end
