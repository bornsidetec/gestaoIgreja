object FormCultos: TFormCultos
  Left = 437
  Top = 131
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Financeiro e Estat'#237'stico de Culto - REFC'
  ClientHeight = 523
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 690
    Height = 484
    ActivePage = TabSheetManutencao
    Align = alClient
    TabOrder = 0
    object TabSheetListagem: TTabSheet
      Caption = 'Listagem'
      object PanelFiltro: TPanel
        Left = 0
        Top = 0
        Width = 682
        Height = 65
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          682
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
          Left = 567
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
        Width = 682
        Height = 391
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid: TRxDBGrid
          Left = 2
          Top = 2
          Width = 678
          Height = 387
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
              FieldName = 'DiaSemana'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Horario'
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
        Width = 682
        Height = 456
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
          Left = 152
          Top = 8
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label5: TLabel
          Left = 8
          Top = 48
          Width = 26
          Height = 13
          Caption = 'Igreja'
          FocusControl = DBEdit3
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
        object Label2: TLabel
          Left = 256
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Hor'#225'rio'
        end
        object LabelMissoes: TLabel
          Left = 8
          Top = 88
          Width = 329
          Height = 13
          AutoSize = False
          Caption = '3'#186' DOMINGO DE MISS'#213'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 24
          Width = 133
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
          Left = 152
          Top = 24
          Width = 97
          Height = 21
          DataField = 'Data'
          DataSource = Ds
          NumGlyphs = 2
          TabOrder = 1
          StartOfWeek = Sun
          OnExit = DBDateEdit1Exit
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 104
          Width = 329
          Height = 68
          Caption = 'Pastores Presentes'
          TabOrder = 5
          object DBEdit10: TDBEdit
            Left = 8
            Top = 16
            Width = 313
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PastoresPresentes1'
            DataSource = Ds
            TabOrder = 0
          end
          object DBEdit11: TDBEdit
            Left = 8
            Top = 40
            Width = 313
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PastoresPresentes2'
            DataSource = Ds
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 344
          Top = 104
          Width = 329
          Height = 68
          Caption = 'Visitas Especiais'
          TabOrder = 6
          object DBEdit12: TDBEdit
            Left = 8
            Top = 16
            Width = 313
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VisitasEspeciais1'
            DataSource = Ds
            TabOrder = 0
          end
          object DBEdit13: TDBEdit
            Left = 8
            Top = 40
            Width = 313
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VisitasEspeciais2'
            DataSource = Ds
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 172
          Width = 329
          Height = 68
          Caption = 'Pregador'
          TabOrder = 7
          object DBEdit16: TDBEdit
            Left = 8
            Top = 40
            Width = 313
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Pregador'
            DataSource = Ds
            TabOrder = 1
            OnChange = DBEdit16Change
          end
          object chkPastorTitular: TCheckBox
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = 'Pastor Titular'
            TabOrder = 0
            OnClick = chkPastorTitularClick
          end
        end
        object GroupBox4: TGroupBox
          Left = 344
          Top = 172
          Width = 329
          Height = 68
          Caption = 'Di'#225'conos'
          TabOrder = 8
          object ComboBoxDiaconos1: TDBLookupComboBox
            Left = 8
            Top = 16
            Width = 313
            Height = 21
            DataField = 'Diaconos1'
            DataSource = Ds
            KeyField = 'Nome'
            ListField = 'Nome'
            ListSource = DsDiaconos
            NullValueKey = 46
            TabOrder = 0
          end
          object ComboBoxDiaconos2: TDBLookupComboBox
            Left = 8
            Top = 40
            Width = 313
            Height = 21
            DataField = 'Diaconos2'
            DataSource = Ds
            KeyField = 'Nome'
            ListField = 'Nome'
            ListSource = DsDiaconos
            NullValueKey = 46
            TabOrder = 1
          end
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 64
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Igreja'
          DataSource = Ds
          TabOrder = 3
          OnKeyDown = DBEdit3KeyDown
        end
        object GroupBoxEstatistico: TGroupBox
          Left = 344
          Top = 8
          Width = 329
          Height = 97
          Caption = 'Estat'#237'stico'
          TabOrder = 4
          object Label10: TLabel
            Left = 8
            Top = 12
            Width = 47
            Height = 13
            Caption = 'Presentes'
          end
          object Label9: TLabel
            Left = 96
            Top = 12
            Width = 45
            Height = 13
            Caption = 'Visitantes'
          end
          object Label4: TLabel
            Left = 176
            Top = 12
            Width = 64
            Height = 13
            Caption = 'Testemunhos'
          end
          object Label6: TLabel
            Left = 8
            Top = 52
            Width = 122
            Height = 13
            Caption = 'Batismo no Esp'#237'rito Santo'
          end
          object Label7: TLabel
            Left = 168
            Top = 52
            Width = 109
            Height = 13
            Caption = 'Crian'#231'as Apresentadas'
          end
          object Label8: TLabel
            Left = 256
            Top = 12
            Width = 56
            Height = 13
            Caption = 'Convers'#245'es'
          end
          object DBEdit9: TDBEdit
            Left = 8
            Top = 28
            Width = 81
            Height = 21
            DataField = 'TotalPresentes'
            DataSource = Ds
            MaxLength = 4
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 96
            Top = 28
            Width = 73
            Height = 21
            DataField = 'Visitantes'
            DataSource = Ds
            MaxLength = 4
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 176
            Top = 28
            Width = 73
            Height = 21
            DataField = 'Testemunho'
            DataSource = Ds
            MaxLength = 4
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 8
            Top = 68
            Width = 153
            Height = 21
            DataField = 'BatismoEspiritoSanto'
            DataSource = Ds
            MaxLength = 4
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 168
            Top = 68
            Width = 153
            Height = 21
            DataField = 'CriancasApresentadas'
            DataSource = Ds
            MaxLength = 4
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 256
            Top = 28
            Width = 65
            Height = 21
            DataField = 'Conversoes'
            DataSource = Ds
            MaxLength = 4
            TabOrder = 3
          end
        end
        object DBEdit2: TDBEdit
          Left = 256
          Top = 24
          Width = 41
          Height = 21
          DataField = 'Horario'
          DataSource = Ds
          TabOrder = 2
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 240
          Width = 665
          Height = 211
          Caption = 'Financeiro'
          TabOrder = 9
          object Label11: TLabel
            Left = 8
            Top = 16
            Width = 67
            Height = 13
            Caption = 'Ofertas Gerais'
          end
          object Label12: TLabel
            Left = 8
            Top = 60
            Width = 82
            Height = 13
            Caption = 'Ofertas Especiais'
          end
          object Label13: TLabel
            Left = 8
            Top = 104
            Width = 90
            Height = 13
            Caption = 'Ofertas de Miss'#245'es'
          end
          object Label16: TLabel
            Left = 8
            Top = 148
            Width = 76
            Height = 13
            Caption = 'Outras Entradas'
          end
          object Label14: TLabel
            Left = 192
            Top = 16
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object Label18: TLabel
            Left = 456
            Top = 16
            Width = 24
            Height = 13
            Caption = 'Valor'
          end
          object Label19: TLabel
            Left = 560
            Top = 16
            Width = 49
            Height = 13
            Caption = 'N'#186'Cheque'
          end
          object Label20: TLabel
            Left = 624
            Top = 16
            Width = 31
            Height = 13
            Caption = 'Banco'
          end
          object Label21: TLabel
            Left = 112
            Top = 16
            Width = 38
            Height = 13
            Caption = 'Membro'
            FocusControl = DBEdit3
          end
          object SpdBtnMembros: TSpeedButton
            Left = 164
            Top = 31
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
          object RxDBCalcEdit1: TRxDBCalcEdit
            Left = 8
            Top = 32
            Width = 97
            Height = 21
            DataField = 'OfertasGerais'
            DataSource = Ds
            DisplayFormat = 'R$ #,###,##0.00'
            NumGlyphs = 2
            TabOrder = 0
            OnExit = RxDBCalcEdit1Exit
          end
          object RxDBCalcEdit2: TRxDBCalcEdit
            Left = 8
            Top = 76
            Width = 97
            Height = 21
            DataField = 'OfertasEspeciais'
            DataSource = Ds
            DisplayFormat = 'R$ #,###,##0.00'
            NumGlyphs = 2
            TabOrder = 1
            OnExit = RxDBCalcEdit1Exit
          end
          object RxDBCalcEdit3: TRxDBCalcEdit
            Left = 8
            Top = 120
            Width = 97
            Height = 21
            DataField = 'OfertasMissoes'
            DataSource = Ds
            DisplayFormat = 'R$ #,###,##0.00'
            NumGlyphs = 2
            TabOrder = 2
            OnExit = RxDBCalcEdit1Exit
          end
          object RxDBCalcEdit4: TRxDBCalcEdit
            Left = 8
            Top = 164
            Width = 97
            Height = 21
            DataField = 'OutrasEntradas'
            DataSource = Ds
            DisplayFormat = 'R$ #,###,##0.00'
            NumGlyphs = 2
            TabOrder = 3
            OnExit = RxDBCalcEdit1Exit
          end
          object CboDizimista: TComboBox
            Left = 192
            Top = 32
            Width = 257
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 5
          end
          object RxCalcEditValor: TRxCalcEdit
            Left = 456
            Top = 32
            Width = 97
            Height = 21
            DisplayFormat = '#,##0.00'
            NumGlyphs = 2
            TabOrder = 6
          end
          object EditNCheque: TEdit
            Left = 560
            Top = 32
            Width = 57
            Height = 21
            MaxLength = 8
            TabOrder = 7
            OnKeyPress = EditNChequeKeyPress
          end
          object EditNBanco: TEdit
            Left = 624
            Top = 32
            Width = 33
            Height = 21
            MaxLength = 3
            TabOrder = 8
            OnKeyPress = EditNBancoKeyPress
          end
          object EditMembro: TEdit
            Left = 112
            Top = 32
            Width = 49
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 8
            TabOrder = 4
            OnExit = EditMembroExit
            OnKeyDown = EditMembroKeyDown
            OnKeyPress = EditNChequeKeyPress
          end
        end
      end
      object PageControlValor: TPageControl
        Left = 119
        Top = 296
        Width = 550
        Height = 137
        ActivePage = TabSheetDizimos
        Style = tsFlatButtons
        TabOrder = 1
        object TabSheetDizimos: TTabSheet
          Caption = 'D'#237'zimos'
          object DBGridDizimistas: TRxDBGrid
            Left = 0
            Top = 0
            Width = 542
            Height = 106
            Align = alClient
            Color = 16776176
            DataSource = DsDizimistas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenuDizimistas
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyPress = DBGridDizimistasKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'Membro'
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Width = 262
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NumCheque'
                Title.Caption = 'N'#186'Cheque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NumBanco'
                Title.Caption = 'N'#186'Banco'
                Visible = True
              end>
          end
        end
        object TabSheetOfertas: TTabSheet
          Caption = 'Ofertas Especiais'
          ImageIndex = 1
          object DBGridOfertantes: TRxDBGrid
            Left = 0
            Top = 0
            Width = 542
            Height = 106
            Align = alClient
            Color = clBtnHighlight
            DataSource = DsOfertantes
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenuOfertantes
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyPress = DBGridDizimistasKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'Membro'
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Width = 262
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NumCheque'
                Title.Caption = 'N'#186'Cheque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NumBanco'
                Title.Caption = 'N'#186'Banco'
                Visible = True
              end>
          end
        end
      end
      object BtnAddDizimista: TBitBtn
        Left = 480
        Top = 296
        Width = 89
        Height = 25
        Caption = 'D'#237'zimos'
        TabOrder = 2
        OnClick = BtnAddDizimistaClick
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
          000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
          00F088888880FFFFFFF088888884444444448800008444444444880EE0888888
          8888000EE000888888880EEEEEE0888888880EEEEEE088888888000EE0008888
          8888880EE088888888888800008888888888}
      end
      object BtnAddOfertante: TBitBtn
        Left = 576
        Top = 296
        Width = 89
        Height = 25
        Caption = 'Ofertas'
        TabOrder = 3
        OnClick = BtnAddOfertanteClick
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
      object PanelTotalDizimos: TPanel
        Left = 233
        Top = 430
        Width = 214
        Height = 18
        BevelOuter = bvLowered
        Color = 16776176
        TabOrder = 4
        object Label15: TLabel
          Left = 4
          Top = 2
          Width = 80
          Height = 13
          Caption = 'Total de D'#237'zimos'
        end
        object LblDizimos: TLabel
          Left = 137
          Top = 2
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
      end
      object PanelTotalOfertas: TPanel
        Left = 451
        Top = 430
        Width = 214
        Height = 18
        BevelOuter = bvLowered
        Color = clBtnHighlight
        TabOrder = 5
        object Label22: TLabel
          Left = 4
          Top = 2
          Width = 124
          Height = 13
          Caption = 'Total de Ofertas Especiais'
        end
        object LblOfertas: TLabel
          Left = 137
          Top = 2
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
      end
      object Panel1: TPanel
        Left = 16
        Top = 430
        Width = 214
        Height = 18
        BevelOuter = bvLowered
        Color = cl3DLight
        TabOrder = 6
        object LblTotalArrecadacao: TLabel
          Left = 137
          Top = 2
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
        object Label17: TLabel
          Left = 4
          Top = 2
          Width = 63
          Height = 13
          Caption = 'Total Culto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 484
    Width = 690
    Height = 39
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 686
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
      object EditRetorno: TEdit
        Left = 312
        Top = 0
        Width = 113
        Height = 30
        TabOrder = 0
        Visible = False
      end
    end
    object BtnSMS: TBitBtn
      Left = 592
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Enviar SMS'
      TabOrder = 1
      OnClick = BtnSMSClick
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFCFCF2F3F3F3F3F3F3F4F4F3F4F4F3F3F3F2F3F3FBFC
        FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF5F5
        F59B99998983838783828883838883838782828983839A9999F5F5F5FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC5C6C69B8E8FC0ACADBB
        A7A9BEABAABDABAABBA9A9C0ADAB9B8E8EC5C6C6FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFC2C3C3AA9D9D7169687670705A595A5B5858
        766E6E736A6CA99D9DC2C3C3FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFC2C3C3A99D9D877E7EA099999692929592929F9898898080A99D
        9DC2C3C3FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC2C3
        C3A99F9F999292C9C3C3D2CFCFD1CFCFC9C2C29B9394AA9F9FC2C3C3FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC1C2C2B0A6A780787874
        6F6F545250545252746F6F817A7AB0A6A6C1C2C2FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFC1C2C2ABA3A3DED4D4E6DCDDF5EDECF4ECED
        E6DDDCDED3D3ABA3A3C1C2C2FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFC1C1C2BAB2B15B595362615859595F59595F5D575D585456BAB1
        B1C1C2C2FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C1
        C1C3BBB62B306C3B2E9CA0773A9D6D4079A05E456151C0B6B9C0C1C1FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C1C1C3BABC5763555C
        9A64518E684B8A6447895C525C55C4BBBBC0C1C1FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFBFC0C0C3BBBD757B76AFEEC091DCA58BDAA0
        94E1A86C7770C2BCBDC0C0C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFC0C1C1C3C0C1838A86CFF5DAC1E7CCB6E1C2AFE5BD7C867FC4BF
        C0C1C1C1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFBFBF
        BFC5C2C37E8A827ABF9476B88E71B68A6BB8867A897FC6C2C4C0C0C0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFC5C4C5939085BE
        AD77BDAD7ABEAD7BC0AE78939086C5C4C5BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFC8C8C8A3A2A4A3A4AA95949A96959B
        A4A4A9A3A2A5C8C8C8BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFC9C9C9D7D7D7EDEBEBEBE9EACAC5C8CCC8CAECE9EAEDEBEBD7D7
        D7C9C9C9FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FECCCCCCAFB0AFB2B3B3B5B6B6B5B6B5B2B3B3AFB0AFCCCCCCFEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
    end
  end
  object Ds: TDataSource
    DataSet = QryCultos
    Left = 496
    Top = 8
  end
  object ActionList1: TActionList
    Images = FormMain.ImageList24
    Left = 468
    Top = 8
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
  object DsDiaconos: TDataSource
    DataSet = QryDiaconos
    Left = 528
    Top = 8
  end
  object DsDizimistas: TDataSource
    DataSet = QryDizimistas
    Left = 560
    Top = 8
  end
  object PopupMenuDizimistas: TPopupMenu
    OnPopup = PopupMenuDizimistasPopup
    Left = 620
    Top = 392
    object Excluir1: TMenuItem
      Caption = 'Excluir Dizimista'
      OnClick = Excluir1Click
    end
  end
  object QryDiaconos: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select M.Nome '
      'from Diaconos D'
      'inner join Membros M on M.FichaNumero = D.Membro'
      'where Ano = Extract(Year from current_timestamp)')
    DMLRefresh = True
    Left = 400
    Top = 8
    object stringField12: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object QryCultos: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from Cultos'
      'where codigo = -1')
    DMLRefresh = True
    BeforeInsert = QryCultosBeforeInsert
    BeforeEdit = QryCultosBeforeEdit
    BeforePost = QryCultosBeforePost
    AfterPost = QryCultosAfterPost
    AfterCancel = QryCultosAfterCancel
    BeforeDelete = QryCultosBeforeDelete
    AfterScroll = QryCultosAfterScroll
    OnCalcFields = QryCultosCalcFields
    OnNewRecord = QryCultosNewRecord
    Left = 368
    Top = 8
    object QryCultosCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryCultosIgreja: TIntegerField
      DisplayLabel = 'C'#243'digo da Igreja'
      FieldName = 'Igreja'
      Required = True
    end
    object QryCultosData: TDateTimeField
      FieldName = 'Data'
      Required = True
    end
    object QryCultosHorario: TStringField
      DisplayLabel = 'Hor'#225'rio'
      FieldName = 'Horario'
      Required = True
      EditMask = '##:##'
      Size = 5
    end
    object QryCultosTestemunho: TIntegerField
      FieldName = 'Testemunho'
    end
    object QryCultosBatismoEspiritoSanto: TIntegerField
      FieldName = 'BatismoEspiritoSanto'
    end
    object QryCultosCriancasApresentadas: TIntegerField
      FieldName = 'CriancasApresentadas'
    end
    object QryCultosConversoes: TIntegerField
      FieldName = 'Conversoes'
    end
    object QryCultosVisitantes: TIntegerField
      FieldName = 'Visitantes'
    end
    object QryCultosTotalPresentes: TIntegerField
      FieldName = 'TotalPresentes'
    end
    object QryCultosPastoresPresentes1: TStringField
      FieldName = 'PastoresPresentes1'
      Size = 25
    end
    object QryCultosPastoresPresentes2: TStringField
      FieldName = 'PastoresPresentes2'
      Size = 25
    end
    object QryCultosVisitasEspeciais1: TStringField
      FieldName = 'VisitasEspeciais1'
      Size = 25
    end
    object QryCultosVisitasEspeciais2: TStringField
      FieldName = 'VisitasEspeciais2'
      Size = 25
    end
    object QryCultosPregador: TStringField
      FieldName = 'Pregador'
      Size = 25
    end
    object QryCultosOfertasGerais: TCurrencyField
      FieldName = 'OfertasGerais'
    end
    object QryCultosOfertasEspeciais: TCurrencyField
      FieldName = 'OfertasEspeciais'
    end
    object QryCultosOfertasMissoes: TCurrencyField
      FieldName = 'OfertasMissoes'
    end
    object QryCultosOutrasEntradas: TCurrencyField
      FieldName = 'OutrasEntradas'
    end
    object QryCultosDiaconos1: TStringField
      FieldName = 'Diaconos1'
      Size = 50
    end
    object QryCultosDiaconos2: TStringField
      FieldName = 'Diaconos2'
      Size = 50
    end
    object QryCultosImpressao: TStringField
      FieldName = 'Impressao'
      Size = 1
    end
    object QryCultosFechamento: TStringField
      FieldName = 'Fechamento'
      Size = 1
    end
    object QryCultosUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryCultosDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryCultosUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryCultosDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
    object QryCultosDiaSemana: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiaSemana'
      Size = 10
      Calculated = True
    end
    object QryCultosBairroIgreja: TStringField
      FieldKind = fkCalculated
      FieldName = 'BairroIgreja'
      Size = 50
      Calculated = True
    end
  end
  object QryDizimistas: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from DizimistasCulto'
      'where Culto = :cCulto')
    DMLRefresh = True
    AfterPost = QryDizimistasAfterCancel
    AfterCancel = QryDizimistasAfterCancel
    BeforeDelete = QryDizimistasBeforeDelete
    AfterDelete = QryDizimistasAfterCancel
    Left = 432
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cCulto'
      end>
    object QryDizimistasCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryDizimistasCulto: TIntegerField
      FieldName = 'Culto'
    end
    object QryDizimistasMembro: TIntegerField
      FieldName = 'Membro'
    end
    object QryDizimistasNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QryDizimistasValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object QryDizimistasNumCheque: TStringField
      FieldName = 'NumCheque'
      Size = 8
    end
    object QryDizimistasNumBanco: TStringField
      FieldName = 'NumBanco'
      Size = 3
    end
    object QryDizimistasMembroNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'MembroNome'
      Size = 50
      Calculated = True
    end
  end
  object QryOfertantes: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from OfertantesCulto'
      'where Culto = :cCulto')
    DMLRefresh = True
    AfterPost = QryDizimistasAfterCancel
    AfterCancel = QryDizimistasAfterCancel
    BeforeDelete = QryDizimistasBeforeDelete
    AfterDelete = QryDizimistasAfterCancel
    Left = 432
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cCulto'
      end>
    object QryOfertantesCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryOfertantesCulto: TIntegerField
      FieldName = 'Culto'
    end
    object QryOfertantesMembro: TIntegerField
      FieldName = 'Membro'
    end
    object QryOfertantesNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QryOfertantesValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object QryOfertantesNumCheque: TStringField
      FieldName = 'NumCheque'
      Size = 8
    end
    object QryOfertantesNumBanco: TStringField
      FieldName = 'NumBanco'
      Size = 3
    end
    object QryOfertantesMembroNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'MembroNome'
      Size = 50
      Calculated = True
    end
  end
  object DsOfertantes: TDataSource
    DataSet = QryOfertantes
    Left = 560
    Top = 48
  end
  object PopupMenuOfertantes: TPopupMenu
    OnPopup = PopupMenuOfertantesPopup
    Left = 572
    Top = 392
    object MenuItem1: TMenuItem
      Caption = 'Excluir Oferta'
      OnClick = MenuItem1Click
    end
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 476
    Top = 48
  end
end
