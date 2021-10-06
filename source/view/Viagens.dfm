object FormViagens: TFormViagens
  Left = 250
  Top = 166
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Viagens'
  ClientHeight = 518
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
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 544
    Height = 479
    ActivePage = TabSheetListagem
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
        Height = 386
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid: TRxDBGrid
          Left = 2
          Top = 2
          Width = 532
          Height = 382
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
              FieldName = 'DataSaida'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataChegada'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Motivo'
              Width = 306
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
        Height = 451
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
          Left = 96
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Data Sa'#237'da'
        end
        object Label4: TLabel
          Left = 200
          Top = 8
          Width = 69
          Height = 13
          Caption = 'Data Chegada'
        end
        object Label2: TLabel
          Left = 304
          Top = 8
          Width = 32
          Height = 13
          Caption = 'Motivo'
        end
        object Label10: TLabel
          Left = 8
          Top = 176
          Width = 28
          Height = 13
          Caption = 'Cargo'
        end
        object Label5: TLabel
          Left = 8
          Top = 216
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label11: TLabel
          Left = 408
          Top = 216
          Width = 48
          Height = 13
          Caption = 'Prontu'#225'rio'
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
          Left = 96
          Top = 24
          Width = 97
          Height = 21
          DataField = 'DataSaida'
          DataSource = Ds
          NumGlyphs = 2
          TabOrder = 1
          StartOfWeek = Sun
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 256
          Width = 521
          Height = 181
          Caption = 'Gastos'
          TabOrder = 10
          object LblGastos: TLabel
            Left = 440
            Top = 162
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
          object Label14: TLabel
            Left = 8
            Top = 16
            Width = 67
            Height = 13
            Caption = 'Tipo do Gasto'
          end
          object Label18: TLabel
            Left = 288
            Top = 16
            Width = 24
            Height = 13
            Caption = 'Valor'
          end
          object Label19: TLabel
            Left = 408
            Top = 16
            Width = 49
            Height = 13
            Caption = 'N'#186' Recibo'
          end
          object Label15: TLabel
            Left = 346
            Top = 162
            Width = 91
            Height = 13
            Caption = 'Total de Gastos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CboTipoGasto: TComboBox
            Left = 8
            Top = 32
            Width = 273
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 0
            Items.Strings = (
              'HOSPEDAGEM'
              'ALIMENTA'#199#195'O'
              'TRANSPORTE'
              'PED'#193'GIO'
              'COMBUST'#205'VEL'
              'OUTROS')
          end
          object RxCalcEditValor: TRxCalcEdit
            Left = 288
            Top = 32
            Width = 113
            Height = 21
            DisplayFormat = '#,##0.00'
            NumGlyphs = 2
            TabOrder = 1
          end
          object EditNRecibo: TEdit
            Left = 408
            Top = 32
            Width = 67
            Height = 21
            MaxLength = 10
            TabOrder = 2
            OnKeyPress = EditNReciboKeyPress
          end
          object BtnAddGasto: TBitBtn
            Left = 480
            Top = 28
            Width = 33
            Height = 25
            TabOrder = 3
            OnClick = BtnAddGastoClick
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
        object DBDateEdit2: TDBDateEdit
          Left = 200
          Top = 24
          Width = 97
          Height = 21
          DataField = 'DataChegada'
          DataSource = Ds
          NumGlyphs = 2
          TabOrder = 2
          StartOfWeek = Sun
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 48
          Width = 521
          Height = 61
          Caption = 'Sa'#237'da'
          TabOrder = 4
          object Label6: TLabel
            Left = 60
            Top = 16
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label7: TLabel
            Left = 8
            Top = 16
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object SpdBtnCidades1: TSpeedButton
            Left = 116
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
            OnClick = SpdBtnCidades1Click
          end
          object DBText1: TDBText
            Left = 145
            Top = 40
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'NomeSaidaCidade'
            DataSource = Ds
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBCboUFSaida: TDBComboBox
            Left = 8
            Top = 32
            Width = 47
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'SaidaEstado'
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
            TabOrder = 0
            OnChange = DBCboUFSaidaChange
          end
          object DBEdit4: TDBEdit
            Left = 60
            Top = 32
            Width = 53
            Height = 21
            CharCase = ecUpperCase
            DataField = 'SaidaCidade'
            DataSource = Ds
            TabOrder = 1
            OnKeyDown = DBEdit4KeyDown
            OnKeyPress = EditNReciboKeyPress
          end
        end
        object DBEdit2: TDBEdit
          Left = 304
          Top = 24
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Motivo'
          DataSource = Ds
          TabOrder = 3
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 112
          Width = 521
          Height = 61
          Caption = 'Destino'
          TabOrder = 5
          object Label8: TLabel
            Left = 60
            Top = 16
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label9: TLabel
            Left = 8
            Top = 16
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object SpdBtnCidades2: TSpeedButton
            Left = 116
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
            OnClick = SpdBtnCidades2Click
          end
          object DBText2: TDBText
            Left = 145
            Top = 40
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'NomeDestinoCidade'
            DataSource = Ds
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBCboUFDestino: TDBComboBox
            Left = 8
            Top = 32
            Width = 47
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'DestinoEstado'
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
            TabOrder = 0
            OnChange = DBCboUFSaidaChange
          end
          object DBEdit5: TDBEdit
            Left = 60
            Top = 32
            Width = 53
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DestinoCidade'
            DataSource = Ds
            TabOrder = 1
            OnKeyDown = DBEdit5KeyDown
            OnKeyPress = EditNReciboKeyPress
          end
        end
        object DBComboBoxCargo: TDBComboBox
          Left = 8
          Top = 192
          Width = 177
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'Cargo'
          DataSource = Ds
          ItemHeight = 13
          Items.Strings = (
            'PASTOR'
            'PASTOR AUXILIAR'
            'OBREIRO'
            'PRESIDENTE G.M.'
            'COORDENADOR')
          TabOrder = 6
          OnClick = DBComboBoxCargoClick
        end
        object BtnImpPastor: TBitBtn
          Left = 191
          Top = 188
          Width = 73
          Height = 25
          Caption = 'Pastores'
          TabOrder = 7
          OnClick = BtnImpPastorClick
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 232
          Width = 393
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Nome'
          DataSource = Ds
          TabOrder = 8
        end
        object DBEdit6: TDBEdit
          Left = 408
          Top = 232
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Prontuario'
          DataSource = Ds
          TabOrder = 9
          OnKeyPress = EditNReciboKeyPress
        end
      end
      object DBGridGastos: TRxDBGrid
        Left = 16
        Top = 312
        Width = 505
        Height = 105
        DataSource = DsGastos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenuGastos
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = DBGridGastosKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'NumRecibo'
            Title.Caption = 'Recibo'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Title.Caption = 'Descri'#231#227'o'
            Width = 248
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 110
            Visible = True
          end>
      end
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 479
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
    DataSet = QryViagens
    Left = 424
    Top = 8
  end
  object ActionList1: TActionList
    Images = FormMain.ImageList24
    Left = 396
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
  object DsGastos: TDataSource
    DataSet = QryGastos
    Left = 456
    Top = 8
  end
  object RxMDizimistas: TRxMemoryData
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
    Left = 490
    Top = 8
    object RxMDizimistasNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object PopupMenuGastos: TPopupMenu
    OnPopup = PopupMenuGastosPopup
    Left = 492
    Top = 384
    object Excluir1: TMenuItem
      Caption = 'Excluir Gasto'
      OnClick = Excluir1Click
    end
  end
  object QryViagens: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from Viagens'
      'where codigo = -1')
    DMLRefresh = True
    BeforeInsert = QryViagensBeforeInsert
    BeforeEdit = QryViagensBeforeEdit
    BeforePost = QryViagensBeforePost
    AfterPost = QryViagensAfterPost
    AfterCancel = QryViagensAfterCancel
    BeforeDelete = QryViagensBeforeDelete
    AfterScroll = QryViagensAfterScroll
    OnCalcFields = QryViagensCalcFields
    OnNewRecord = QryViagensNewRecord
    Left = 328
    Top = 8
    object QryViagensCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryViagensDataSaida: TDateTimeField
      DisplayLabel = 'Data de Sa'#237'da'
      FieldName = 'DataSaida'
      Required = True
    end
    object QryViagensDataChegada: TDateTimeField
      DisplayLabel = 'Data de Chegada'
      FieldName = 'DataChegada'
      Required = True
    end
    object QryViagensMotivo: TStringField
      FieldName = 'Motivo'
      Required = True
      Size = 100
    end
    object QryViagensSaidaCidade: TIntegerField
      DisplayLabel = 'Cidade de Origem'
      FieldName = 'SaidaCidade'
      Required = True
    end
    object QryViagensNomeSaidaCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeSaidaCidade'
      Size = 60
      Calculated = True
    end
    object QryViagensSaidaEstado: TStringField
      DisplayLabel = 'Estado de Origem'
      FieldName = 'SaidaEstado'
      Required = True
      Size = 2
    end
    object QryViagensDestinoCidade: TIntegerField
      DisplayLabel = 'Cidade de Destino'
      FieldName = 'DestinoCidade'
      Required = True
    end
    object QryViagensNomeDestinoCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeDestinoCidade'
      Size = 60
      Calculated = True
    end
    object QryViagensDestinoEstado: TStringField
      DisplayLabel = 'Estado de Destino'
      FieldName = 'DestinoEstado'
      Required = True
      Size = 2
    end
    object QryViagensCargo: TStringField
      FieldName = 'Cargo'
      Required = True
    end
    object QryViagensCargoDescricao: TStringField
      FieldName = 'CargoDescricao'
    end
    object QryViagensNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object QryViagensProntuario: TStringField
      FieldName = 'Prontuario'
      Size = 10
    end
    object QryViagensFechamento: TStringField
      FieldName = 'Fechamento'
      Size = 1
    end
    object QryViagensUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryViagensDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryViagensUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryViagensDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
  end
  object QryGastos: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from GastosViagem'
      'where Codigo = -1'
      '--where Culto = :cCulto')
    DMLRefresh = True
    AfterPost = QryGastosAfterCancel
    AfterCancel = QryGastosAfterCancel
    BeforeDelete = QryGastosBeforeDelete
    AfterDelete = QryGastosAfterCancel
    Left = 360
    Top = 8
    object QryGastosCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryGastosViagem: TIntegerField
      FieldName = 'Viagem'
    end
    object QryGastosNumRecibo: TStringField
      FieldName = 'NumRecibo'
      Size = 10
    end
    object QryGastosTipo: TStringField
      FieldName = 'Tipo'
    end
    object QryGastosValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
end
