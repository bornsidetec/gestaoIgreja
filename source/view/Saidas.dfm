object FormSaidas: TFormSaidas
  Left = 356
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Registro de Sa'#237'das Financeiras'
  ClientHeight = 330
  ClientWidth = 640
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
    Width = 640
    Height = 291
    ActivePage = TabSheetManutencao
    Align = alClient
    TabOrder = 0
    OnChange = PageControlChange
    object TabSheetListagem: TTabSheet
      Caption = 'Listagem'
      object PanelFiltro: TPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 65
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          632
          65)
        object BtnPesquisar: TBitBtn
          Left = 517
          Top = 8
          Width = 107
          Height = 49
          Anchors = [akTop, akRight]
          Caption = '&Pesquisar'
          TabOrder = 2
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
        object Notebook: TNotebook
          Left = 104
          Top = 8
          Width = 297
          Height = 49
          TabOrder = 1
          object TPage
            Left = 0
            Top = 0
            Caption = 'Nome'
            object Label1: TLabel
              Left = 8
              Top = 0
              Width = 68
              Height = 13
              Caption = 'Tipo de Sa'#237'da'
            end
            object ComboBoxTipo: TComboBox
              Left = 8
              Top = 16
              Width = 281
              Height = 21
              Style = csDropDownList
              ItemHeight = 0
              TabOrder = 0
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Prontuario'
            object Label2: TLabel
              Left = 8
              Top = 0
              Width = 38
              Height = 13
              Caption = 'Per'#237'odo'
            end
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
        end
        object GroupBoxFiltro: TGroupBox
          Left = 8
          Top = 8
          Width = 89
          Height = 49
          Caption = 'Filtro'
          TabOrder = 0
          object cboFiltro: TComboBox
            Left = 8
            Top = 16
            Width = 73
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = 'TIPO'
            OnChange = cboFiltroChange
            Items.Strings = (
              'TIPO'
              'DATA')
          end
        end
      end
      object PanelGrid: TPanel
        Left = 0
        Top = 65
        Width = 632
        Height = 198
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid: TRxDBGrid
          Left = 2
          Top = 2
          Width = 628
          Height = 194
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
              FieldName = 'NumSaida'
              Title.Caption = 'N'#250'mero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescTipoSaida'
              Title.Caption = 'Tipo de Saida'
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
        Width = 632
        Height = 263
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
        object Label5: TLabel
          Left = 8
          Top = 48
          Width = 54
          Height = 13
          Caption = 'Fornecedor'
          FocusControl = DBEditFornecedor
        end
        object Label6: TLabel
          Left = 8
          Top = 128
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label15: TLabel
          Left = 137
          Top = 48
          Width = 52
          Height = 13
          Caption = 'CNPJ/CPF'
        end
        object Label7: TLabel
          Left = 133
          Top = 128
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label4: TLabel
          Left = 8
          Top = 88
          Width = 68
          Height = 13
          Caption = 'Tipo de Sa'#237'da'
        end
        object Label8: TLabel
          Left = 241
          Top = 48
          Width = 96
          Height = 13
          Caption = 'Raz'#227'o Social/Nome'
        end
        object SpdBtnTipoSaida: TSpeedButton
          Left = 84
          Top = 103
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
          OnClick = SpdBtnTipoSaidaClick
        end
        object DBText1: TDBText
          Left = 113
          Top = 111
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'DescTipoSaida'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 152
          Top = 8
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit2
        end
        object SpdBtnFornecedores: TSpeedButton
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
          OnClick = SpdBtnFornecedoresClick
        end
        object DBText2: TDBText
          Left = 137
          Top = 71
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'CNPJFornecedor'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 241
          Top = 71
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'NomeFornecedor'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpdBtnAddFornecedor: TSpeedButton
          Left = 108
          Top = 63
          Width = 23
          Height = 22
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
          OnClick = SpdBtnAddFornecedorClick
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
        object DBEditFornecedor: TDBEdit
          Left = 8
          Top = 64
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fornecedor'
          DataSource = Ds
          TabOrder = 2
          OnKeyDown = DBEditFornecedorKeyDown
          OnKeyPress = EditCEPKeyPress
        end
        object DBDateEdit1: TDBDateEdit
          Left = 8
          Top = 144
          Width = 121
          Height = 21
          DataField = 'Data'
          DataSource = Ds
          NumGlyphs = 2
          TabOrder = 4
          StartOfWeek = Sun
        end
        object RxDBCalcEdit1: TRxDBCalcEdit
          Left = 133
          Top = 144
          Width = 164
          Height = 21
          DataField = 'Valor'
          DataSource = Ds
          DisplayFormat = 'R$ #,###,##0.00'
          NumGlyphs = 2
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 104
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TipoSaida'
          DataSource = Ds
          TabOrder = 3
          OnExit = DBEdit4Exit
          OnKeyDown = DBEdit4KeyDown
        end
        object DBEdit2: TDBEdit
          Left = 152
          Top = 24
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NumSaida'
          DataSource = Ds
          TabOrder = 1
          OnKeyPress = EditCEPKeyPress
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 456
          Top = 8
          Width = 169
          Height = 41
          Caption = 'Fechamento'
          Columns = 2
          DataField = 'Fechamento'
          DataSource = Ds
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ReadOnly = True
          TabOrder = 6
          Values.Strings = (
            '1'
            '0')
        end
      end
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 291
    Width = 640
    Height = 39
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 636
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
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton2: TToolButton
        Left = 36
        Top = 0
        Action = DataSetNext1
        ParentShowHint = False
        ShowHint = True
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
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton7: TToolButton
        Left = 116
        Top = 0
        Action = DataSetEdit1
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton8: TToolButton
        Left = 152
        Top = 0
        Action = DataSetDelete1
        ParentShowHint = False
        ShowHint = True
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
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton11: TToolButton
        Left = 232
        Top = 0
        Action = DataSetCancel1
        ParentShowHint = False
        ShowHint = True
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
        Hint = 'Sair'
        Caption = 'ToolButton13'
        ImageIndex = 5
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton13Click
      end
    end
  end
  object Ds: TDataSource
    DataSet = QrySaidas
    Left = 288
  end
  object ActionList1: TActionList
    Images = FormMain.ImageList24
    Left = 260
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
  object QrySaidas: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from Saidas'
      'where codigo = -1')
    DMLRefresh = True
    BeforeInsert = QrySaidasBeforeInsert
    BeforeEdit = QrySaidasBeforeEdit
    BeforePost = QrySaidasBeforePost
    AfterPost = QrySaidasAfterPost
    AfterCancel = QrySaidasAfterCancel
    BeforeDelete = QrySaidasBeforeDelete
    OnCalcFields = QrySaidasCalcFields
    OnNewRecord = QrySaidasNewRecord
    Left = 232
    object QrySaidasCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QrySaidasNumSaida: TStringField
      FieldName = 'NumSaida'
      Size = 10
    end
    object QrySaidasTipoSaida: TIntegerField
      DisplayLabel = 'Tipo de Sa'#237'da'
      FieldName = 'TipoSaida'
      Required = True
    end
    object QrySaidasFornecedor: TIntegerField
      FieldName = 'Fornecedor'
      Required = True
    end
    object QrySaidasValor: TCurrencyField
      FieldName = 'Valor'
      Required = True
      DisplayFormat = 'R$ #,###,##0.00'
      EditFormat = 'R$ #,###,##0.00'
    end
    object QrySaidasData: TDateTimeField
      FieldName = 'Data'
      Required = True
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = 'DD/MM/YYYY'
    end
    object QrySaidasFechamento: TStringField
      FieldName = 'Fechamento'
      Size = 1
    end
    object QrySaidasUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QrySaidasDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QrySaidasUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QrySaidasDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
    object QrySaidasDescTipoSaida: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescTipoSaida'
      Size = 50
      Calculated = True
    end
    object QrySaidasCNPJFornecedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'CNPJFornecedor'
      Size = 14
      Calculated = True
    end
    object QrySaidasNomeFornecedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeFornecedor'
      Size = 50
      Calculated = True
    end
  end
end
