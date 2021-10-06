object FormMembros: TFormMembros
  Left = 289
  Top = 153
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 504
  ClientWidth = 727
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 65
    Width = 727
    Height = 400
    ActivePage = TabSheetManutencao
    Align = alClient
    TabOrder = 0
    OnChange = PageControlChange
    object TabSheetListagem: TTabSheet
      Caption = 'Listagem'
      object PanelFiltro: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 65
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          719
          65)
        object GroupBoxFiltro: TGroupBox
          Left = 8
          Top = 8
          Width = 161
          Height = 49
          Caption = 'Filtro'
          TabOrder = 0
          object cboFiltro: TComboBox
            Left = 8
            Top = 16
            Width = 145
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = 'NOME'
            OnChange = cboFiltroChange
            Items.Strings = (
              'NOME'
              'STATUS'
              'CEP')
          end
        end
        object BtnPesquisar: TBitBtn
          Left = 604
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
          Left = 176
          Top = 8
          Width = 425
          Height = 49
          TabOrder = 1
          object TPage
            Left = 0
            Top = 0
            Caption = 'Nome'
            object Label1: TLabel
              Left = 8
              Top = 0
              Width = 28
              Height = 13
              Caption = 'Nome'
            end
            object EditNome: TEdit
              Left = 8
              Top = 16
              Width = 401
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Status'
            object RadioGroupStatus: TRadioGroup
              Left = 8
              Top = 0
              Width = 409
              Height = 49
              Caption = 'Status'
              Columns = 5
              ItemIndex = 0
              Items.Strings = (
                'Ativo'
                'Licen'#231'a'
                'Transferido'
                'Disciplina'
                'Exclu'#237'do')
              TabOrder = 0
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'CEP'
            object Label2: TLabel
              Left = 8
              Top = 0
              Width = 21
              Height = 13
              Caption = 'CEP'
            end
            object EditCEP: TEdit
              Left = 8
              Top = 16
              Width = 121
              Height = 21
              MaxLength = 8
              TabOrder = 0
              OnKeyPress = EditCEPKeyPress
            end
          end
        end
      end
      object PanelGrid: TPanel
        Left = 0
        Top = 65
        Width = 719
        Height = 307
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid: TRxDBGrid
          Left = 2
          Top = 2
          Width = 715
          Height = 303
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
              FieldName = 'Nome'
              Width = 495
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StatusDesc'
              Title.Caption = 'Status'
              Width = 142
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
        Width = 719
        Height = 372
        Align = alClient
        BevelInner = bvLowered
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 66
          Height = 13
          Caption = 'Ficha N'#250'mero'
          FocusControl = DBEdit1
        end
        object Label5: TLabel
          Left = 8
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 8
          Top = 88
          Width = 97
          Height = 13
          Caption = 'Data de Nascimento'
        end
        object Label9: TLabel
          Left = 133
          Top = 88
          Width = 78
          Height = 13
          Caption = 'Data de Batismo'
        end
        object Label10: TLabel
          Left = 256
          Top = 88
          Width = 72
          Height = 13
          Caption = 'Membro Desde'
        end
        object Label7: TLabel
          Left = 380
          Top = 88
          Width = 60
          Height = 13
          Caption = 'Naturalidade'
          FocusControl = DBEdit4
        end
        object Label8: TLabel
          Left = 8
          Top = 128
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object Label11: TLabel
          Left = 160
          Top = 128
          Width = 85
          Height = 13
          Caption = 'Nome do C'#244'njuge'
          FocusControl = EditConjuge
        end
        object Label12: TLabel
          Left = 8
          Top = 168
          Width = 54
          Height = 13
          Caption = 'Filia'#231#227'o Pai'
          FocusControl = DBEdit5
        end
        object Label13: TLabel
          Left = 283
          Top = 168
          Width = 60
          Height = 13
          Caption = 'Filia'#231#227'o M'#227'e'
          FocusControl = DBEdit6
        end
        object Label14: TLabel
          Left = 8
          Top = 208
          Width = 16
          Height = 13
          Caption = 'RG'
          FocusControl = DBEdit7
        end
        object Label15: TLabel
          Left = 124
          Top = 208
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEdit8
        end
        object Label16: TLabel
          Left = 256
          Top = 208
          Width = 61
          Height = 13
          Caption = 'Escolaridade'
        end
        object Label17: TLabel
          Left = 432
          Top = 208
          Width = 43
          Height = 13
          Caption = 'Profiss'#227'o'
        end
        object Label18: TLabel
          Left = 8
          Top = 248
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit9
        end
        object Label19: TLabel
          Left = 120
          Top = 248
          Width = 54
          Height = 13
          Caption = 'Logradouro'
          FocusControl = DBEdit11
        end
        object Label20: TLabel
          Left = 568
          Top = 248
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit12
        end
        object Label21: TLabel
          Left = 160
          Top = 288
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit13
        end
        object Label22: TLabel
          Left = 408
          Top = 288
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit14
        end
        object Label23: TLabel
          Left = 8
          Top = 288
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit15
        end
        object Label24: TLabel
          Left = 652
          Top = 288
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object Label25: TLabel
          Left = 8
          Top = 328
          Width = 51
          Height = 13
          Caption = 'FoneResid'
          FocusControl = DBEdit16
        end
        object Label26: TLabel
          Left = 184
          Top = 328
          Width = 56
          Height = 13
          Caption = 'FoneCelular'
          FocusControl = DBEdit17
        end
        object SpdBtnCEP: TSpeedButton
          Left = 92
          Top = 263
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
        object Label48: TLabel
          Left = 360
          Top = 328
          Width = 25
          Height = 13
          Caption = 'Email'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 24
          Width = 133
          Height = 21
          CharCase = ecUpperCase
          Color = 16776176
          DataField = 'FichaNumero'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 64
          Width = 385
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Nome'
          DataSource = Ds
          TabOrder = 4
        end
        object DBDateEdit1: TDBDateEdit
          Left = 8
          Top = 104
          Width = 121
          Height = 21
          DataField = 'DataNascimento'
          DataSource = Ds
          NumGlyphs = 2
          TabOrder = 7
          StartOfWeek = Sun
        end
        object DBDateEdit2: TDBDateEdit
          Left = 132
          Top = 104
          Width = 121
          Height = 21
          DataField = 'DataBatismo'
          DataSource = Ds
          NumGlyphs = 2
          TabOrder = 8
          StartOfWeek = Sun
        end
        object DBDateEdit3: TDBDateEdit
          Left = 256
          Top = 104
          Width = 121
          Height = 21
          DataField = 'MembroDesde'
          DataSource = Ds
          NumGlyphs = 2
          TabOrder = 9
          StartOfWeek = Sun
        end
        object DBEdit4: TDBEdit
          Left = 380
          Top = 104
          Width = 173
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Naturalidade'
          DataSource = Ds
          TabOrder = 10
        end
        object EditConjuge: TDBEdit
          Left = 160
          Top = 144
          Width = 393
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NomeConjuge'
          DataSource = Ds
          TabOrder = 12
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 184
          Width = 270
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FiliacaoPai'
          DataSource = Ds
          TabOrder = 13
        end
        object DBEdit6: TDBEdit
          Left = 283
          Top = 184
          Width = 270
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FiliacaoMae'
          DataSource = Ds
          TabOrder = 14
        end
        object DBEdit7: TDBEdit
          Left = 8
          Top = 224
          Width = 113
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = Ds
          TabOrder = 15
        end
        object DBEdit8: TDBEdit
          Left = 124
          Top = 224
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = Ds
          TabOrder = 16
        end
        object DBEdit9: TDBEdit
          Left = 8
          Top = 264
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndCep'
          DataSource = Ds
          TabOrder = 19
          OnExit = DBEdit9Exit
          OnKeyDown = DBEdit9KeyDown
          OnKeyPress = EditCEPKeyPress
        end
        object DBEdit11: TDBEdit
          Left = 120
          Top = 264
          Width = 445
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndRua'
          DataSource = Ds
          TabOrder = 20
        end
        object DBEdit12: TDBEdit
          Left = 568
          Top = 264
          Width = 144
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndNumero'
          DataSource = Ds
          TabOrder = 21
          OnKeyPress = EditCEPKeyPress
        end
        object DBEdit13: TDBEdit
          Left = 160
          Top = 304
          Width = 243
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndBairro'
          DataSource = Ds
          TabOrder = 23
        end
        object DBEdit14: TDBEdit
          Left = 408
          Top = 304
          Width = 238
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndCidade'
          DataSource = Ds
          TabOrder = 24
        end
        object DBEdit15: TDBEdit
          Left = 8
          Top = 304
          Width = 147
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EndComplemento'
          DataSource = Ds
          TabOrder = 22
        end
        object DBCboUF: TDBComboBox
          Left = 652
          Top = 304
          Width = 60
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
          TabOrder = 25
        end
        object DBEdit16: TDBEdit
          Left = 8
          Top = 344
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FoneResid'
          DataSource = Ds
          TabOrder = 26
        end
        object DBEdit17: TDBEdit
          Left = 184
          Top = 344
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FoneCelular'
          DataSource = Ds
          TabOrder = 27
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 8
          Top = 144
          Width = 149
          Height = 21
          DataField = 'EstadoCivil'
          DataSource = Ds
          ItemHeight = 13
          Items.Strings = (
            'SOLTEIRO'
            'CASADO'
            'VIUVO'
            'DESQUITADO')
          TabOrder = 11
          Values.Strings = (
            'SOLTEIRO'
            'CASADO'
            'VIUVO'
            'DESQUITADO')
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 152
          Top = 8
          Width = 401
          Height = 37
          Caption = 'Status'
          Columns = 5
          DataField = 'Status'
          DataSource = Ds
          Items.Strings = (
            'Ativo'
            'Suspenso'
            'Transferido'
            'Disciplina'
            'Exclu'#237'do')
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object BtnImpVisitante: TBitBtn
          Left = 560
          Top = 16
          Width = 73
          Height = 25
          Caption = 'Visitantes'
          TabOrder = 2
          Visible = False
          OnClick = BtnImpVisitanteClick
        end
        object DBRadioGroupSexo: TDBRadioGroup
          Left = 400
          Top = 48
          Width = 153
          Height = 37
          Caption = 'Sexo'
          Columns = 2
          DataField = 'Sexo'
          DataSource = Ds
          Items.Strings = (
            'Masculino'
            'Feminino')
          TabOrder = 5
          Values.Strings = (
            'M'
            'F')
        end
        object BtnImpCriancas: TBitBtn
          Left = 640
          Top = 16
          Width = 73
          Height = 25
          Caption = 'Crian'#231'as'
          TabOrder = 3
          Visible = False
          OnClick = BtnImpCriancasClick
        end
        object PanelFotos: TPanel
          Left = 560
          Top = 51
          Width = 153
          Height = 154
          BevelInner = bvLowered
          TabOrder = 6
          object PanelControles: TPanel
            Left = 2
            Top = 114
            Width = 149
            Height = 38
            Align = alBottom
            BevelInner = bvLowered
            TabOrder = 1
            object BtnProcurar: TBitBtn
              Left = 8
              Top = 8
              Width = 33
              Height = 25
              Hint = 'Abrir foto do computador'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = BtnProcurarClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FF1E96CB
                1E96CB1E96CBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF1E96CB92E7F454D8F044C4E539B7E01E96CB1E96CB0D
                8EC7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1E96CBB4EFF7
                84FFFF83FEFF80F8FF79F3FE6AE2F74DCBEA1E96CB1E96CB0D8EC7FF00FFFF00
                FFFF00FFFF00FFFF00FF1E96CB75CBE696FFFF75F6FF79F4FF78F3FF79F3FF7D
                F6FF7BF4FF76EEFF6BE7FB1E96CBFF00FFFF00FFFF00FFFF00FF0D8EC728A4D3
                A0F8FC73F7FF79F4FF77F3FF76F0FF74EFFF73EFFF73EFFF77E3EE68E5FF1FA1
                D4FF00FFFF00FFFF00FF0D8EC71E96CB52C1E184FEFF77F4FF77F3FF76F0FF74
                EFFF73F3FF76CED083BAAF60CCE61E96CBFF00FFFF00FFFF00FF0D8EC71E96CB
                4CB6DCA1FFFF6DF4FF72F3FF72EFFF73F3FF78CFD089C2BA97DACF76B4B470D9
                EB1E96CBFF00FFFF00FF0D8EC757D0F61E96CB88D8EB9AF4FB92F2FB90FAFF7F
                D4D57FCAC597E0D897DCD082C6C287BFB21E96CBFF00FFFF00FF0D8EC768DDFA
                40C1EF1E96CB1E96CB1E96CB4099B47DC4BD84EBF086DEDD93DCD17EC6C58BCB
                BA87C4B01E96CBFF00FF0D8EC77AEFFF5BD9F84DCAF642C4F470756B922B011E
                96CB5AC9D59EE5EAAFE5D595CFCC9CD0C0AAE3C41E96CBFF00FF0D8EC789FFFF
                7EFCFF68EEFF5DADB5922B01E6AA7A726C621E96CB1896CA1896CA84BFCC83BA
                C486BFC41E96CB922B010D8EC78AFFFF7AFAFF79F4FF69F3FF69AFB1922B01AD
                88775D62490E845704B4E31896CA1896CA1896CA922B01FF00FF0D8EC79FFCFE
                7DFEFF7AF8FF7DF8FF65EEFF52919D922B01EABC98A793650791683CC4BFF898
                29922B01FF00FFFF00FFFF00FF1896CA83EAF480EAF782EEFA27A6D50D8EC7FF
                00FF922B01FFD8AA697B4C148B5C922B01FF00FFFF00FFFF00FFFF00FFFF00FF
                1490C91896CA1996CC0D8EC7FF00FFFF00FFFF00FF922B01C99675862D05FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF922B01FF00FFFF00FFFF00FFFF00FFFF00FF}
            end
            object BtnCapturar: TBitBtn
              Left = 41
              Top = 8
              Width = 33
              Height = 25
              Hint = 'Tirar foto via WEBCAM'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = BtnCapturarClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF292929545353292929292929292929FF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF201F1F383636
                8E8B8AE5E3E34B4B4B8C8A8A7E7B7B4F4D4E363535292929292929FF00FFFF00
                FFFF00FFFF00FFFF00FF413D3CB6ABA9DDD8D7EEEDEB4B4B4BA6A5A6F6F2F2EB
                E7E9C6C2C2787474595756535251323231282828292929FF00FF57514FB5A9A6
                C2BFBFEFEDED4B4B4BACABACF7F7F7D5D4D57F7D7D5655555E5E5D5351518C89
                87777472504B49212120454140787270878484F2F0EF4B4B4BB5B5B5FEFEFF79
                7575464444CFCED0A09D9D7A75754E4E4C9C92909F8F8B2323234742419F9795
                908E8CF0EFEF4B4B4BBABCBCD3D1D4635E5F939396A38E79C191607060575D57
                56998E8B9C8C882423234641419F96938F8C8BF2EFEF4B4B4BB5B5B6C7C6C77B
                7979808082B09983FFEBB89374566B635F837A789D8C892423234541409E9592
                908E8CF2EFEF4B4B4BABAAAAD3D1D1706F6F838080776E6ABBA0827A67546C64
                608176759A8A862423234C46459E96938A8887F7F4F44B4B4B9D9A9CEDE9E98C
                8A8A575757635A58655A566E645F605957998B8895847F242323484341736B6B
                C0BCBCDEDDDD4B4B4BABA5A6D4CFCFC9C1C27E7A794140404945444F4B498278
                768174709080792423234A4544C4B7B6C6C1C15858588F8989C4BBBBC0B7B7C1
                B8B8C4BAB8B2A7A5ADA1A0A59795938C8BF0EFF08B86822323232726265E5A59
                4645454544448E8E8E6F6D6D8682828E8887867F7F7D74738379768478758B82
                7FC6C5C6C6C5C6232323FF00FFFF00FFFF00FF2323231E1E1E44444437383844
                4444575757605E5F656262645E5D504A48393534423D3B1F1F1FFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF1F1F1F1E1E1E4948492828283230302C2A
                2A1B1C1C212020FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            end
            object BtnOkFoto: TBitBtn
              Left = 74
              Top = 8
              Width = 33
              Height = 25
              Hint = 'Confirmar foto da WEBCAM'
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = BtnOkFotoClick
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333388F3333333333000033334224333333333333
                338338F3333333330000333422224333333333333833338F3333333300003342
                222224333333333383333338F3333333000034222A22224333333338F338F333
                8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                0000333333333A222433333333333338F338F33300003333333333A222433333
                333333338F338F33000033333333333A222433333333333338F338F300003333
                33333333A222433333333333338F338F00003333333333333A22433333333333
                3338F38F000033333333333333A223333333333333338F830000333333333333
                333A333333333333333338330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object BtnLimpar: TBitBtn
              Left = 107
              Top = 8
              Width = 33
              Height = 25
              Hint = 'Limpar imagem'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = BtnLimparClick
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00090909090909
                09090909090909090909FBFFFBFFFB09090909090909090909090909090909FB
                FF09090909090909090909090909090900000009090909090909090909090900
                FFFBFF000909090909090909090900FFA4FFFBFF00090909090909090900FFA4
                FF07A4FBFF0009090909090900FFA4FF07A4FBFFFBA4000909090900FFA4FF07
                A4FBFFFBA40707000909000000FF07A4FBFFFBA40707070009090909090000FB
                FFFBA407070700090909090909090900FBA4070707A404000909090909090909
                0007070700040404000909090909090909000000090004040400090909090909
                0909090909090004040009090909090909090909090909000009}
            end
          end
          object PanelImagem: TPanel
            Left = 2
            Top = 2
            Width = 149
            Height = 112
            Align = alClient
            BevelInner = bvLowered
            TabOrder = 0
            object DBImage1: TDBImage
              Left = 2
              Top = 2
              Width = 145
              Height = 108
              Align = alClient
              DataField = 'Foto'
              DataSource = Ds
              Stretch = True
              TabOrder = 0
            end
            object PanelCaptura: TPanel
              Left = 2
              Top = 2
              Width = 145
              Height = 108
              Align = alClient
              BevelInner = bvLowered
              BevelWidth = 2
              Caption = 'PanelCaptura'
              Color = clSilver
              TabOrder = 1
              Visible = False
              object VideoCap1: TVideoCap
                Left = 4
                Top = 4
                Width = 137
                Height = 100
                align = alClient
                color = clSilver
                DriverOpen = False
                DriverIndex = 0
                DriverName = 'Microsoft WDM Image Capture (Win32)'
                VideoOverlay = False
                VideoPreview = False
                PreviewScaleToWindow = True
                PreviewScaleProportional = True
                PreviewRate = 30
                MicroSecPerFrame = 33333
                FrameRate = 30
                CapAudio = False
                VideoFileName = 'Video.avi'
                SingleImageFile = 'E:\Foto.jpg'
                CapTimeLimit = 0
                CapIndexSize = 0
                CapToFile = True
                CapAudioFormat.Channels = Stereo
                CapAudioFormat.Resolution = r16Bit
                BufferFileSize = 0
              end
            end
          end
        end
        object RxDBCboEscolaridades: TRxDBComboBox
          Left = 256
          Top = 224
          Width = 173
          Height = 21
          DataField = 'Escolaridade'
          DataSource = Ds
          ItemHeight = 13
          TabOrder = 17
        end
        object RxDBCboProfissoes: TRxDBComboBox
          Left = 432
          Top = 224
          Width = 281
          Height = 21
          DataField = 'Profissao'
          DataSource = Ds
          ItemHeight = 13
          TabOrder = 18
        end
        object DBEdit2: TDBEdit
          Left = 360
          Top = 344
          Width = 350
          Height = 21
          CharCase = ecLowerCase
          DataField = 'Email'
          DataSource = Ds
          TabOrder = 28
        end
      end
    end
    object TabSheetAconselhamento: TTabSheet
      Caption = 'Aconselhamento'
      ImageIndex = 2
      object PanelMembros: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 49
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label27: TLabel
          Left = 8
          Top = 8
          Width = 38
          Height = 13
          Caption = 'Membro'
        end
        object Label28: TLabel
          Left = 432
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label29: TLabel
          Left = 576
          Top = 8
          Width = 32
          Height = 13
          Caption = 'Celular'
        end
        object DBText1: TDBText
          Left = 8
          Top = 24
          Width = 417
          Height = 17
          DataField = 'Nome'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 432
          Top = 24
          Width = 137
          Height = 17
          DataField = 'FoneResid'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 576
          Top = 24
          Width = 137
          Height = 17
          DataField = 'FoneCelular'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object PanelAconselhamento: TPanel
        Left = 0
        Top = 49
        Width = 719
        Height = 323
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object PanelConselhos: TPanel
          Left = 2
          Top = 2
          Width = 715
          Height = 167
          Align = alTop
          BevelInner = bvLowered
          Enabled = False
          TabOrder = 1
          object Label30: TLabel
            Left = 8
            Top = 48
            Width = 58
            Height = 13
            Caption = 'Dificuldades'
          end
          object Label31: TLabel
            Left = 8
            Top = 8
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdit20
          end
          object Label32: TLabel
            Left = 136
            Top = 8
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object Label35: TLabel
            Left = 264
            Top = 8
            Width = 34
            Height = 13
            Caption = 'Hor'#225'rio'
          end
          object Label36: TLabel
            Left = 352
            Top = 48
            Width = 49
            Height = 13
            Caption = 'Conselhos'
          end
          object DBMemoDificuldades: TDBMemo
            Left = 8
            Top = 64
            Width = 337
            Height = 97
            DataField = 'Dificuldades'
            DataSource = DsAconselhamento
            TabOrder = 3
          end
          object DBEdit20: TDBEdit
            Left = 8
            Top = 24
            Width = 121
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = 16776176
            DataField = 'Codigo'
            DataSource = DsAconselhamento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBDateEdit: TDBDateEdit
            Left = 136
            Top = 24
            Width = 121
            Height = 21
            DataField = 'Data'
            DataSource = DsAconselhamento
            NumGlyphs = 2
            TabOrder = 1
            StartOfWeek = Sun
          end
          object DBEditHorario: TDBEdit
            Left = 264
            Top = 24
            Width = 41
            Height = 21
            DataField = 'Horario'
            DataSource = DsAconselhamento
            TabOrder = 2
          end
          object DBMemoConselhos: TDBMemo
            Left = 352
            Top = 64
            Width = 353
            Height = 97
            DataField = 'Conselhos'
            DataSource = DsAconselhamento
            TabOrder = 4
          end
        end
        object DBNavigator: TDBNavigator
          Left = 544
          Top = 16
          Width = 160
          Height = 25
          DataSource = DsAconselhamento
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          ConfirmDelete = False
          TabOrder = 0
        end
        object PanelHistoricoConselhos: TPanel
          Left = 2
          Top = 169
          Width = 715
          Height = 152
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 2
          object Label33: TLabel
            Left = 8
            Top = 8
            Width = 166
            Height = 13
            Caption = 'Hist'#243'rico de Aconselhamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGridAconselhamento: TDBGrid
            Left = 8
            Top = 24
            Width = 697
            Height = 121
            Color = clInfoBk
            DataSource = DsAconselhamento
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Data'
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheetVisitas: TTabSheet
      Caption = 'Visitas'
      ImageIndex = 3
      object PanelMembros2: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 49
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label34: TLabel
          Left = 8
          Top = 8
          Width = 38
          Height = 13
          Caption = 'Membro'
        end
        object Label37: TLabel
          Left = 432
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label38: TLabel
          Left = 576
          Top = 8
          Width = 32
          Height = 13
          Caption = 'Celular'
        end
        object DBText4: TDBText
          Left = 8
          Top = 24
          Width = 417
          Height = 17
          DataField = 'Nome'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 432
          Top = 24
          Width = 137
          Height = 17
          DataField = 'FoneResid'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 576
          Top = 24
          Width = 137
          Height = 17
          DataField = 'FoneResid'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object PanelVisitas: TPanel
        Left = 0
        Top = 49
        Width = 719
        Height = 323
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object PanelDadosVisitas: TPanel
          Left = 2
          Top = 2
          Width = 715
          Height = 167
          Align = alTop
          BevelInner = bvLowered
          Enabled = False
          TabOrder = 1
          object Label40: TLabel
            Left = 8
            Top = 8
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdit24
          end
          object Label41: TLabel
            Left = 136
            Top = 8
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object Label43: TLabel
            Left = 264
            Top = 8
            Width = 34
            Height = 13
            Caption = 'Hor'#225'rio'
          end
          object Label44: TLabel
            Left = 8
            Top = 48
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
          end
          object Label39: TLabel
            Left = 312
            Top = 8
            Width = 64
            Height = 13
            Caption = 'Tipo de Visita'
          end
          object DBEdit24: TDBEdit
            Left = 8
            Top = 24
            Width = 121
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = 16776176
            DataField = 'Codigo'
            DataSource = DsVisitas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBDataVisita: TDBDateEdit
            Left = 136
            Top = 24
            Width = 121
            Height = 21
            DataField = 'Data'
            DataSource = DsVisitas
            NumGlyphs = 2
            TabOrder = 1
            StartOfWeek = Sun
          end
          object DBHorarioVisita: TDBEdit
            Left = 264
            Top = 24
            Width = 41
            Height = 21
            DataField = 'Horario'
            DataSource = DsVisitas
            TabOrder = 2
          end
          object DBMemoObservacaoVisita: TDBMemo
            Left = 8
            Top = 64
            Width = 697
            Height = 97
            DataField = 'Observacao'
            DataSource = DsVisitas
            TabOrder = 4
          end
          object RxDBCboVisitas: TRxDBComboBox
            Left = 312
            Top = 24
            Width = 217
            Height = 21
            DataField = 'Tipo'
            DataSource = DsVisitas
            ItemHeight = 13
            TabOrder = 3
          end
        end
        object DBNavigatorVisitas: TDBNavigator
          Left = 544
          Top = 16
          Width = 160
          Height = 25
          DataSource = DsVisitas
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          ConfirmDelete = False
          TabOrder = 0
        end
        object PanelHistoricoVisitas: TPanel
          Left = 2
          Top = 169
          Width = 715
          Height = 152
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 2
          object Label42: TLabel
            Left = 8
            Top = 8
            Width = 110
            Height = 13
            Caption = 'Hist'#243'rico de Visitas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGridVisita: TDBGrid
            Left = 8
            Top = 24
            Width = 697
            Height = 121
            Color = clInfoBk
            DataSource = DsVisitas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Data'
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheetFinanceiro: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 4
      object PanelMembros3: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 49
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label45: TLabel
          Left = 8
          Top = 8
          Width = 38
          Height = 13
          Caption = 'Membro'
        end
        object Label47: TLabel
          Left = 432
          Top = 8
          Width = 43
          Height = 13
          Caption = 'Profiss'#227'o'
        end
        object DBText7: TDBText
          Left = 8
          Top = 24
          Width = 417
          Height = 17
          DataField = 'Nome'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 432
          Top = 24
          Width = 193
          Height = 17
          DataField = 'DescProfissao'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 632
          Top = 8
          Width = 19
          Height = 13
          Caption = 'Ano'
        end
        object EditAno: TEdit
          Left = 632
          Top = 24
          Width = 33
          Height = 21
          Color = clBtnHighlight
          MaxLength = 4
          TabOrder = 0
          OnKeyPress = EditCEPKeyPress
        end
        object BtnFindAno: TBitBtn
          Left = 672
          Top = 8
          Width = 41
          Height = 36
          TabOrder = 1
          OnClick = BtnFindAnoClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0E1285A
            9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            C8D1E3285EA55BD3F977DBF426589F707B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFC8D2E52963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
            D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC7FE3FA44AFF1177F
            E41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D6EA2971C15CD5FC7EE3FA
            44AFF1177FE41F63BDC9D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF7F6F7E7E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551
            C3F47EE3FA44AFEF177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
            F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFFE6C4FFEECDFFF5CC
            C0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2C9DBF1FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF5D56618E7753F2C18FFFCFA9FFD6B3FF
            E6C9FFEDD0FFF2D3FFF8D8FFFCDF97ACA6453B45726374C8C1CBE0EEFAD4E3F5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC
            91F6BD91FFD8B6FFE8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CD
            C9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
            DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
            F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FFE7CEFFEDD4FFF2DA
            FFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF706471C4905DDDA479D39A6FF8BF94FFD0ACFFDABCFF
            EBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8E1FFF9DEFFFAD75D525FF0F0F1FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA1
            76E5AC81FDC498FFDCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D
            7179D6D5D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
            D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
            D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FFDABDFFCBA3FFE6D1
            FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA8A0ACA68053CB9267EBB287FFD9BBFFEADAFFF1E7FF
            DEC5F1B88DFFDBBFFFCCA3FED3AEFFD8B6FFDDC0D3C594796F7CFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC3
            98FFDCC2FFE5D2FFCCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BC
            B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
            9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
            91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DDA479DBA277E3AA7F
            EAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAB2ABB598867DAD875AC38C5BBC
            8558C28B5DCF9967BA9668958475968F9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
            E4B7AFBA9D91A09F919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object PanelDizimos: TPanel
        Left = 0
        Top = 49
        Width = 360
        Height = 323
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 1
        object RxDBGridDizimos: TRxDBGrid
          Left = 2
          Top = 33
          Width = 356
          Height = 288
          Align = alClient
          Color = 16776176
          DataSource = DsDizimos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DescMes'
              Title.Caption = 'M'#234's'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end>
        end
        object PanelTituloDizimos: TPanel
          Left = 2
          Top = 2
          Width = 356
          Height = 31
          Align = alTop
          Caption = 'D'#237'zimos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
        end
      end
      object PanelOfertas: TPanel
        Left = 360
        Top = 49
        Width = 359
        Height = 323
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 2
        object RxDBGridOfertas: TRxDBGrid
          Left = 2
          Top = 33
          Width = 355
          Height = 288
          Align = alClient
          Color = clBtnHighlight
          DataSource = DsOfertas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DescMes'
              Title.Caption = 'M'#234's'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end>
        end
        object PanelTituloOfertas: TPanel
          Left = 2
          Top = 2
          Width = 355
          Height = 31
          Align = alTop
          Caption = 'Ofertas Especiais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object TabSheetMaps: TTabSheet
      Caption = 'Mapas [Google]'
      ImageIndex = 5
      object PanelMaps: TPanel
        Left = 0
        Top = 113
        Width = 719
        Height = 259
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object WebBrowser: TWebBrowser
          Left = 2
          Top = 2
          Width = 715
          Height = 255
          Align = alClient
          TabOrder = 1
          ControlData = {
            4C000000E64900005B1A00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126209000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object Memo1: TMemo
          Left = 10
          Top = 195
          Width = 689
          Height = 169
          Lines.Strings = (
            
              '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http:/' +
              '/www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'
            '<html xmlns="http://www.w3.org/1999/xhtml">'
            '  <head>'
            
              '    <meta http-equiv="content-type" content="text/html; charset=' +
              'UTF-8"/>'
            '    <title>Google Maps API Example - Geocoding API</title>'
            
              '    <script src="http://maps.google.com/maps?file=api&amp;v=2.x&' +
              'amp;key=ABQIAAAAUOSCfglbs8bLQQk2vW11WhQ2U2QlXR3V9v2Fee40ZjFIRkz3' +
              'VhTG_N7WLCI0m5-YAiR0gYXzz_UeJA" type="text/javascript"></script>'
            '    <script type="text/javascript">'
            '    //<![CDATA['
            ''
            '    var map = null;'
            '    var geocoder = null;'
            '    var address = "#ENDERECO#";'
            ''
            '    function load() {'
            '      if (GBrowserIsCompatible()) {'
            '        map = new GMap2(document.getElementById("map"));'
            '        geocoder = new GClientGeocoder();'
            '        showAddress();'
            '      }'
            '    }'
            ''
            '    function showAddress() {'
            '      if (geocoder) {'
            '        geocoder.getLatLng('
            '          address,'
            '          function(point) {'
            '            if (!point) {'
            '              alert(address + "   Nao Localizado...");'
            '            } else {'
            '              map.setCenter(point, 16);'
            '              var marker = new GMarker(point);'
            '              map.addOverlay(marker);'
            '              map.addControl(new GSmallMapControl());'
            '            }'
            '          }'
            '        );'
            '      }'
            '    }'
            '    //]]>'
            '    </script>'
            '  </head>'
            ''
            '  <body onload="load()" onunload="GUnload()">'
            '      <div id="map" style="width: 550px; height: 330px"></div>'
            '  </body>'
            '</html>'
            '')
          TabOrder = 0
          Visible = False
          WordWrap = False
        end
      end
      object Membros4: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 113
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object Label49: TLabel
          Left = 8
          Top = 8
          Width = 38
          Height = 13
          Caption = 'Membro'
        end
        object Label50: TLabel
          Left = 432
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label51: TLabel
          Left = 576
          Top = 8
          Width = 32
          Height = 13
          Caption = 'Celular'
        end
        object DBText8: TDBText
          Left = 8
          Top = 24
          Width = 417
          Height = 17
          DataField = 'Nome'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 432
          Top = 24
          Width = 137
          Height = 17
          DataField = 'FoneResid'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 576
          Top = 24
          Width = 137
          Height = 17
          DataField = 'FoneResid'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 8
          Top = 40
          Width = 54
          Height = 13
          Caption = 'Logradouro'
        end
        object DBText12: TDBText
          Left = 8
          Top = 56
          Width = 361
          Height = 17
          DataField = 'EndRua'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 384
          Top = 40
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object DBText13: TDBText
          Left = 384
          Top = 56
          Width = 73
          Height = 17
          DataField = 'EndNumero'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label54: TLabel
          Left = 480
          Top = 40
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object DBText14: TDBText
          Left = 480
          Top = 56
          Width = 233
          Height = 17
          DataField = 'EndComplemento'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label55: TLabel
          Left = 8
          Top = 72
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object DBText15: TDBText
          Left = 8
          Top = 88
          Width = 241
          Height = 17
          DataField = 'EndBairro'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label56: TLabel
          Left = 272
          Top = 72
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object DBText16: TDBText
          Left = 272
          Top = 88
          Width = 265
          Height = 17
          DataField = 'EndCidade'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label57: TLabel
          Left = 568
          Top = 72
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object DBText17: TDBText
          Left = 568
          Top = 88
          Width = 33
          Height = 17
          DataField = 'EndEstado'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label58: TLabel
          Left = 624
          Top = 72
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object DBText18: TDBText
          Left = 624
          Top = 88
          Width = 89
          Height = 17
          DataField = 'EndCep'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
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
    Top = 465
    Width = 727
    Height = 39
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 723
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
  object PanelBanner: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 65
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      727
      65)
    object Image1: TImage
      Left = 471
      Top = 1
      Width = 259
      Height = 63
      Anchors = [akTop, akRight]
      Picture.Data = {
        0A544A504547496D616765074C0000FFD8FFE000104A46494600010101012C01
        2C0000FFE110904578696600004D4D002A000000080003876900040000000100
        00083E9C9D00010000000C0000107CEA1C00070000080C00000032000000001C
        EA00000008000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000002900300020000001400001068EA1C0007000008
        0C0000085C000000001CEA000000080000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000323031343A30323A323720
        30313A34343A3332004200720075006E006F000000FFE20C584943435F50524F
        46494C4500010100000C484C696E6F021000006D6E74725247422058595A2007
        CE00020009000600310000616373704D53465400000000494543207352474200
        00000000000000000000000000F6D6000100000000D32D485020200000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000011637072740000015000000033646573630000018400
        00006C77747074000001F000000014626B707400000204000000147258595A00
        000218000000146758595A0000022C000000146258595A000002400000001464
        6D6E640000025400000070646D6464000002C400000088767565640000034C00
        00008676696577000003D4000000246C756D69000003F8000000146D65617300
        00040C0000002474656368000004300000000C725452430000043C0000080C67
        5452430000043C0000080C625452430000043C0000080C746578740000000043
        6F70797269676874202863292031393938204865776C6574742D5061636B6172
        6420436F6D70616E790000646573630000000000000012735247422049454336
        313936362D322E31000000000000000000000012735247422049454336313936
        362D322E31000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000058595A200000000000
        00F35100010000000116CC58595A200000000000000000000000000000000058
        595A200000000000006FA2000038F50000039058595A20000000000000629900
        00B785000018DA58595A2000000000000024A000000F840000B6CF6465736300
        0000000000001649454320687474703A2F2F7777772E6965632E636800000000
        000000000000001649454320687474703A2F2F7777772E6965632E6368000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000064657363000000000000002E494543203631393636
        2D322E312044656661756C742052474220636F6C6F7572207370616365202D20
        7352474200000000000000000000002E4945432036313936362D322E31204465
        6661756C742052474220636F6C6F7572207370616365202D2073524742000000
        0000000000000000000000000000000000000064657363000000000000002C52
        65666572656E63652056696577696E6720436F6E646974696F6E20696E204945
        4336313936362D322E3100000000000000000000002C5265666572656E636520
        56696577696E6720436F6E646974696F6E20696E2049454336313936362D322E
        3100000000000000000000000000000000000000000000000000007669657700
        0000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E0000000158
        595A2000000000004C09560050000000571FE76D656173000000000000000100
        0000000000000000000000000000000000028F00000002736967200000000043
        52542063757276000000000000040000000005000A000F00140019001E002300
        28002D00320037003B00400045004A004F00540059005E00630068006D007200
        77007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C100
        C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D0113011901
        1F0125012B01320138013E0145014C0152015901600167016E0175017C018301
        8B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA020302
        0C0214021D0226022F02380241024B0254025D02670271027A0284028E029802
        A202AC02B602C102CB02D502E002EB02F50300030B03160321032D0338034303
        4F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F9040604
        130420042D043B0448045504630471047E048C049A04A804B604C404D304E104
        F004FE050D051C052B053A05490558056705770586059605A605B505C505D505
        E505F6060606160627063706480659066A067B068C069D06AF06C006D106E306
        F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B08
        1F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F09
        640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE0A
        C50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C
        430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30D
        DE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F
        960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F11
        6D118C11AA11C911E81207122612451264128412A312C312E313031323134313
        63138313A413C513E5140614271449146A148B14AD14CE14F015121534155615
        78159B15BD15E0160316261649166C168F16B216D616FA171D17411765178917
        AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD1A
        041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C
        7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F
        131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A121
        CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C24
        AB24DA250925382568259725C725F726272657268726B726E827182749277A27
        AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B2A
        CF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E
        162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A31
        8231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D835
        13354D358735C235FD3637367236AE36E937243760379C37D738143850388C38
        C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C653C
        A43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440
        A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A44
        CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D749
        1D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D
        934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E652
        31527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A956
        F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B955B
        E55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60
        FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E766
        3D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6B
        A76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E071
        3A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B76
        F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C817C
        E17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD8230829282
        F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE89
        33899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F
        9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C996
        34969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C899C
        F79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376A3
        E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB
        02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B2
        4BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94AB9
        C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC1
        67C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC9
        3AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BAD1
        3CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D9
        6CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1
        CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0EA
        5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF3
        19F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC
        07FC98FD29FDBAFE4BFEDCFF6DFFFFFFE10B5B687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D
        27EFBBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B63
        3964273F3E0D0A3C786D703A786D706D65746120786D6C6E733A786D703D2261
        646F62653A6E733A6D6574612F223E3C7264663A52444620786D6C6E733A7264
        663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D
        7264662D73796E7461782D6E7323223E3C7264663A4465736372697074696F6E
        207264663A61626F75743D22757569643A66616635626464352D626133642D31
        3164612D616433312D6433336437353138326631622220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F223E3C64633A63726561746F723E3C7264663A53657120786D6C6E733A7264
        663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D
        7264662D73796E7461782D6E7323223E3C7264663A6C693E4272756E6F3C2F72
        64663A6C693E3C2F7264663A5365713E0D0A0909093C2F64633A63726561746F
        723E3C2F7264663A4465736372697074696F6E3E3C7264663A44657363726970
        74696F6E207264663A61626F75743D22757569643A66616635626464352D6261
        33642D313164612D616433312D6433336437353138326631622220786D6C6E73
        3A746966663D22687474703A2F2F6E732E61646F62652E636F6D2F746966662F
        312E302F223E3C746966663A6172746973743E4272756E6F3C2F746966663A61
        72746973743E3C2F7264663A4465736372697074696F6E3E3C7264663A446573
        6372697074696F6E207264663A61626F75743D22757569643A66616635626464
        352D626133642D313164612D616433312D643333643735313832663162222078
        6D6C6E733A657869663D22687474703A2F2F6E732E61646F62652E636F6D2F65
        7869662F312E302F223E3C657869663A4461746554696D654F726967696E616C
        3E323031342D30322D32375430343A34343A33325A3C2F657869663A44617465
        54696D654F726967696E616C3E3C2F7264663A4465736372697074696F6E3E3C
        2F7264663A5244463E3C2F786D703A786D706D6574613E0D0A3C3F787061636B
        657420656E643D2777273F3E2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        202020202020202020202020FFDB004300010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101FFDB00430101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        01010101010101010101010101010101010101010101FFC20011080042010203
        012200021101031101FFC4001D00010002030101010100000000000000000006
        0704050803010209FFC4001C0101000202030100000000000000000000000304
        020705060809FFDA000C03010002100310000001E3F1ED0F0D8000000001A8E4
        9E17B4766A94DCCB0DA4D1C6EDF1B6020FAA8AC59AD4C6A6AB3B5392DAF766CA
        0277158B1257427F4674B6DCE38FCCFE01B7F4F0760E040000000000AC39FEEE
        AEFA0EE3F966FDAF66AAD5CDA5784B59E748FE671E8B0E4FA8C72D37BCAE1715
        9D3624CFB3F596CCE44FEAAF13F7678F3D4954503ABF1F7AFCFF000DB5AA8000
        000000049BDAD1AD6698D4DEF45E787DDD79F64C1371A69E5117B557DF6797E9
        8E583A492E056B39BD61E516F9DFF412E8E3FDA53DB9F4E87ADFCA0000000000
        00121B3A90DE579EC8A772F0B3C3777F7336CA393671AFDFE27825393139CF5B
        EC78B65E8EB3D5DB36797C719B636BCEADE57F2769EB01620000000000000000
        000000000000FFC4002510000203010002020201050000000000000405020306
        01001314401516120710213050FFDA0008010100010502FBAB131CDFCEF3B1EF
        D03C8F8A0A954C19ACC4B330F04AD8A316D01886CE9BB4E9689D9A159489FB7A
        0F79670808EB748A5ADC7F28334ECB42A554F41A404C420163A84036C1113763
        ABAA08B515C2B7DF436047A107EBEC639C931AA8C4A1CF2BA95248C15EB724A8
        67256A07ACD79B35AAC14EE549E76633B34CD4E5B77B34B8E5433286C1409433
        D011EFD225EA070CF2CAC34E889CEFA189FF000BE4FF00BF62B9934126BB6A58
        5CCB53FAF0FF00BC2DA00CE1A02CC9AB2152BA94B0B35FAE54C9B7744B9D70B4
        6A1BCDB65129608F52DD466EF5A91D97A42BFA6403637258ED43F68ECEFC6ABF
        659DE7D1A53B1BEB2C12C1979084EC9FE30EF180BF08DF215CACF290FF009F7E
        38D3AFC58B4E644A2CED69BA45F487468F412736FD14F47B48F55B3B3944EFAE
        51EC64BFFC12B3328AE5AD63C859E4E750F44ECAC6B2D2448D60857302A8B56E
        7FC4F73BB489191399FD25B6531B6228D0F254861D5DEF65D5DCFE4587B42850
        197672EF809A5D711A245B6F205FC757CAF2EAF3BC39A6818ABB662D792F40B6
        42554FE950C980B0BC920AB3FB7CC2F9E4A529F7CAECB299C18AB2B9F9A44378
        71E53123FE47FFC4003411000104020102040404040700000000000301020405
        06111213210007314114152251243032810820619123404271A1D1F1FFDA0008
        010301013F01FE7A3C7056D0A658CBB50D54489320C0429A2C995D69561C9023
        6B632F36E951BC978B9111FB5D235772B17B80DBCFA68D10D6526BDE88674009
        0C3E0E6B0832AAAEBA484611BA615ED7A3B9334F56EFC0AA6D0C73C50D74E2C9
        8CAD4931D914CE3015C441350C246731F2239AC4E4D445554D2EBEAF03C7EF4C
        D7B834F64568D4ED7BC50CC46B5D188E0C86F2635CD5704AC78DED6ABDC8F6B9
        BC5DC5742ABB23C53CE0C0985851955244A1C72B80156EB975088DE2DE1B457F
        AF4D15149D345F0FA298AB581842953E658C049EB103025B4801B8A460F4AF6F
        190278D885F8A1718C9C919D45722F83E33631ABA34B38640E64BB63D502A5D1
        0E935EE8F18477991BADAB76560DAC68DDCBF5A138774F22FC9C4F313CC31E35
        960ECEA2AA351D9DE4C633F033E68A37C3C38E082628CCD4549D611CD248361D
        C204656BC6D490E73729A3763393E458E3CED94EA0BDB7A6592D446B647CB2C2
        54243F145546F55A0191CC455463DE4622AA311CEFC8C4258E063B5891EE71F8
        252E425B0B71DA4886A64AE8ED1006C0C628CC649044195C178D02666D8F1951
        1CA8E3488D7506D22505EC7AB3BB2A9F6525F65665AD2D8D714626423B6691ED
        299911EC3AA46717A883707FC3DA3512E320881AFC824D6DAB0B64616338F7C7
        04DD2993D2BE314969642445649E814BC63A4AFA54889BE68AE455836C10DBE0
        9012E581AFACAD4B0B42B67F08CF9F2D2C6C258E53D0E832C8FAC319C33295FD
        57B99C7A8F55504E013139AF2DCC1029596F3203614E7C3B58D636B3C9F11493
        6B955C39F0A508A8F74B51358116F8919C39F8953A24C7E454D5373020CD643C
        66BABAC0939B1234DADA9848C9F123D935780BAB28AE3AF12B10C8D56F25D391
        302C42E33058D0296CE8F22B4A0C5E68B4EC8031CC5B6B8B0E806347945284FD
        46D7C6285920059139A0194CD8E2635A62790F466C1F09BACDF30A3A6A9854F0
        6EECEB27867DADC5DFCB581292EFF1F672BA2B0A52D38A34218D39C995D91EC8
        C8379FCC1CF71BCA04B1719C223E331E5DBD8E476B32C6CC992E432EF2D25C82
        CB505EC804391169DF1DE21A5428A48DA7692421F9F173BF202147A72772D2F6
        444477DF5B5720DFEFBEDEBDB6BA4D6CC2E9E9537C5DE9C915153B22EBBB19BE
        CBEC9ECA8BDFC4588B2B97154456F7EEAA89ADA27B35CBBDFF00B76F0F4D3DC8
        9D936BA4FB7BEBF6DEBF6F08D6A7AAEF5AE5FABB724EDEDDFD537A5F1120CAB2
        9B0AB6BA3926CF9F2410A1C48AC790D2A5CA38C118011FABC852146C6A26936A
        AAAAD6B5EF6794985F977E54E514751611ACB3EF35A21E3CEC9A55495AB87F94
        A0951D412A7D9CF91360D30A4D6C59691664D904916245904144140074C25F3E
        7F88FC933DF9C6134EC8151858ADA743792B4C6912B25875564604334A9AFE90
        C75B29620A7B60410B406FC2F5E44A08C6C7FE488AD6A69EDDFD953D53BEF5DD
        CDEDCBBFDFBAFEC47A3FF4B78B53FBAF644DAF754F44D76FEBEFE0121E0DF073
        9AABB4556F15DA2FA7EA4F65EE9FD97C39793957EFFF0049FF00BE292B6B2D9A
        F8F2B2285433C6EE517E7629ACA696C54D74D6D6046B37D6CA62AAAB7E615458
        0566B52E315AAD25159E3DE52F5323AFC829731F31161C88B8C368D245863B86
        966088091924FB49F59571EDEFE34631C343595D00B0E0C83BECECA691E18D09
        D5D9B6435912FA247B4B0E393A93E7CF598673ECD0E529A4A4B57B97AEB2C867
        BA510CA6219519F58B8AA14C5193870174B8EFFD7C9177A5F4E0DD2EFF00AAFF
        00C7F94FFFC40032110002020201020404050207000000000001030204051112
        06210007133114324151081522304261811620244071A1D1FFDA000801020101
        3F01FF003E4B2D3A361155349975EE459B26107293E9A6AEB9C896FE93DB9686
        C7CBA1B27C273341946B641CF5D44DA8EE02CCE109721294670FAF3E3289FD50
        898EB52DC41F13BD496A5BA76EB412E04A9B272C2D8044CCF09F2E32D40191D1
        EC07B6FB789E531AB3113BF52064166226F5C490D80628EA4410270909C49001
        89076363C4EE545B975996510B0ED15264D806337EDC604ECF2D1E3EDCBF8F2F
        11C9200B93B134D6455B3F0C1ECB2830648423297689DAA7194B87A33DB7B72E
        20785E62A3AD350B62A55D1497759743D7F0F10D6CD71593BD03A84A4646435F
        29872F1E7FF9BF67CB0F2EA7D4BD311A192CC5BCE633074276206E63E9B2CFC4
        5DB362EA56C4990F81C7584565CD898B2C5A128B0CABC633E94CEC7AA3A5BA6F
        A96089558F506070F9B15644CA55FF0034C755BA51C88065E94DEC5C66403384
        17322266631FD8CEA25672B73D5C7E52CC218B855A32A6A7859B4D3364A53742
        4B87A5132809C6659096A5194360696A6E3ECD37E4F1ADB8B185AD5151A95216
        E152D425395859AF1060B93E3258F5443899067EBEE4F8A18B7CED62D56E94A1
        5173CC657E1D8BE68AC6D3A11A7527DA4AF5210DB4A7B88EFE5D0D0B3458CA3D
        4964D0932D5CB66AD381ADB6C6B23E16AA669895F282BF4B1A26BE11E1112DF0
        8EBC32B3639BAF1850B2CE12A35EC9B15E2FA4EAB4AB47D2C8D7B400956B099C
        38840999327EF0972E3E1359E818ABF7A859B15E4FCBDAB75635E4F6D7B77AC1
        9567B6A11CA7C1300B1B84B8120E86C6FAFF00CC0E9FE83E36BA8AA66B0D8DCD
        E6573F88560ACDCAD5E8E329FACD7DA4D55581159B6E519ADC9AF57D672166C3
        64C295FE247A8D1D79D71D3FE5FF0045750E5F31732F7B078FCB62CA6851E9D8
        6598E52F05AAD4AA1B1F98D65E6DB6B212F53D1A557E65CEE49D0ABE5DF97FD4
        BD2AD16FA9FAEAC75458A987C6F4D626963716BE98E9DA981C554AEAA61F80AD
        62ED6B59985883987301B59B2AF25D628E1CE30FD8738C0F18F1D81B265C7EDB
        D00590FA6BBFB77D0D9DF84B7D4D83AE51F7E24107B91BED29EBB8F627EC476F
        16AD8ABC790244BB761B3BD13F59446B5FF3DFC2CEE1127B9D0D9FBEBB6FFBEB
        7FDFC1948FB0D6F7C7E5FE3EFF005EDEC75B1E2E5FA98CA3772792B2BA58FC7D
        6B17AE5BB738293569D4431F66C3D9ED05294A63244ECE80111294E109F9BFD6
        FE63F9B5D2B9DCCE3ECE33CBEF292DA2CD0E98AB9754875979BCFA96058A98FC
        5D0AF46F669D5B276A99B54A8D65D7C6A8575B6E3720FF0051CAF207F0D3D35E
        5FFE4DD71999E4331D6CEC3D0BB0564D29AD53A62E65B1897DD4D4A30F558CC9
        D58DB6E3E590BEF9584FFAA08AD55CC6CE1FB2D54A7DE12D1FA83EC7B6B7B119
        1DEBB7DBB0FAF852CC01E52E523EFF0061DCCB43B03EE77DFF00A7B01E1F5A0F
        D738C6406880790D11EFF29FE43B1FB7B8F111C6207DBFF4F8CEE4F2988942C5
        5E9BBB9FC7B23C6D7E46DA4CCDD460EFEA471390B38B864EA4C0025F97659590
        54F7CAA595484D79FC5F51F9BDE974D647A7B37D19E5C0B95EDF544B3B2AD8EE
        A3EB55526AEC57E99C7E2A86532B630FD3F66D250FCFE53239055DBF5D10C5E3
        28AE0EB37A392E86E9CCA5CE9FB963158EE5D2C17FE1F80A498C31650A4A6B1A
        621002B8A6B44235168095A4166E0DE60A90A62F9FA8DF5796BBF0E246B63DF9
        CB635FD07FDFFB4FFFC4003D1000020103030105050603060700000000010203
        0411120513210014222331413242516171061015334052629193243034437381
        50535482A1D2F0FFDA0008010100063F02FD6CFD8D50F674CDCC8D8024DF0894
        D8F88F66C41B2F07265E8AB0208241078208F307E63F435953FF004F4D3CC3EB
        1C6CC3F991D56EA4357A8A7EC8D28557798AC9B30ACCE4CBBEBB63BC05F07EAA
        52B24798D2CA8B1CF21C9CA4884E0CE7972856F9312D67009B01D184D43CECA6
        CCD4F1192353FEA5D55FEB1971F3EBB4514EB3477C5AD75646FDB22300C87EA3
        91C8B8E7AAB8E5ABC5E8DCC732ED4B7DC0C536E3EE78AD92B7B170002C48504F
        547593CAF0C35F7ECD9C4F9B5BD59533C0720DC9B588EB63B6FBD8EEECCBB17F
        2FCCC2D8FF0019EE7AE58F3D355D54C9153ADBC43CE597B2102DCBB37BA10127
        CFCBAECF4B39DFB12B1CB1B44D205E498EFC3587256F9DAED8D813D504235596
        29A916373A72413E12EDE7565A49D5D61194785C32B70A1792D6EB6AAEA7C6B5
        F6225696400F9170A2C97F319B29239008EA73A6D59DE927A784A8CE1A88FBFB
        C4D8E2D8B2C25734BAF256F7E3AD3A5D46A76C76589D9E566791E499778A28EF
        49238CCF0A18803E03A108A978598E28D3C4D1C6C7D3C4E553EB2603A81A3376
        9A59E497E52090C56FA6DC696FADFD6DD6A0A97B178DCDFF007CB04523DBE593
        1FFEE7F4357CD9A730D3AFFDF2A971FD2493AFC49750714CD19AA934EBCA91E1
        9E39F1218DDCA859398D78E2E4817074F87B23CF53D86A71624994A979E5CCF7
        8EFC28ABCFB0AFB6BC229EA91A6A3A6AA9AAA9E29E6967892637990498A17070
        440C14618DED91EF1BF5AAD15331142B04CCEB725516358A61FD06778413CD89
        04DCF5A8EA5A84427559BB913DF6DA69D9E5919C7BD80C4053753B8491703AD0
        B448808E048D061100A228E696D20451C0C20A6B816B79754E69A8E9E9E51571
        451BC51AAC8576A52E24703390596E4C858E5637BF5A32D3869A5A3A6A692580
        7B6EA69557B83DF922F20BED302D8DCF06091E90E9FAC5046BE141E0D3CDB1DC
        6711851E27369A37EF63EF380D8FDA5D5AD98D3E9AB30F9986D0C5FECD153B8F
        A1EAAF57D4512B6A24AB92302A144880E292C92146BA977696C320700BDDB5FA
        D352862481B50F0DE1880540FBB1C6922C6385CF70821405263BDAE58914D252
        4D5D47A6AC714741033A97410A48FCA24854348C37182DDA2455BAF0452516AD
        F66A4D1299F753F1114F94102B534E8DDAA314B4C5F2B8104DBB9D354EDCE15C
        ADBAD3E8E86A2A6AE98411C91D4D602B3CC1E35B48C86285A3BADB1468C32AD8
        3166BB1ACD7352AA82A28236A8AA78ACFBAF6B88A9EDDD418F7110891AECAA98
        59BA6FC3C4AB4C42B2895F3652E33297C10F877DB20EE7791AD34AB673FDFD25
        369F4FBE16A1A69BC5822C708CA47F9D2C795F75FD9BDADCDB8EA2D2A4821A7A
        258E283F368C5E388284123C52CB311DD05B1176F507CBA3A2997C5277FB4DB8
        ED97CB3C7FE5DBC1FDC62FE2E869B0D2C734718DB82A3C09304F776E46991715
        F70544775165B00001AB4EFF00DAB5BD4A9A68B8917B9BF7C86F4A515A4676DD
        95CB637450B7B5DF66AE3DAA896A659A44CE392D7091A77A36743DC8C370C6D7
        E79BF536AD5106145144CB4B299616C88A74A7168D6469572CA693BC8B6FADBA
        D360A2837208E495EA5F7604C32DA4438C9223362BBA7B81BF9F545A8E8AEEE2
        99238DE884D8A1D976646DA674495595B6E45BE7655B5FCD6A75FD4E9E3A798C
        726CD2C782996568B687773711A6008F15F36739B7AB1D4BF14836E5AF902BA1
        9229738423DC9685E451934D20B5EFC797975511E93125750CCF9265830F82B3
        C7B91491CC16CAECA76DEC3CEC02E9FA97DA18246A64759247A6A8A3CA9F695D
        E9E28E1C9EF8CF85D157BC589330259FAA2D574BD6E3D2B558E9E1ED78D1AD44
        AE628E48DBB45176F8F6A691668A2AEDC326269E348F6CB3B31AAFB472FE1DA2
        E935CE9D9E88B53C9AD4F4D2152A5966795686EBE31671B8098624CF2960AAA9
        5216448F083FD693C38EC3D71273B7C14FA74CA647B39C98646CCDE7930BF27E
        679FD12CCB00489C3323D44F4F4824548DA5768FB54B0EE2AC48D2164BA8552D
        7B03D615503C44DC026CC8C57DAC2542D1BE3EF62C6DEBF72C71AB3BBB054440
        599998D82AA8E4927800727AFC9B7C8CB083FCB73AAAA504BAC133A24845B762
        07C2947A632C78C8A412A5581524107EE38DBBA3262CE8800B85B967655F3603
        CFD7A732488891C6F2B189E1A87B2FA08D261E77F32CA3E7E43A9DE1A8999A08
        84A564A648C32EEC515B25AA979BCA0FB1E879FB962A1439A10E66B944839E24
        7907B1623BB6BB923B809EA49DAA1EA6AE74C65908C5002D9B0406EE6EC064EC
        FDEB038AF52544C4A41102CECB1BB851EA6D1AB1FF00C74B1C21A3A180931237
        B52BF96F4807038E235E7105B9BB103F432CDD99EB7B141DABB2C6A59A76DE86
        08D6C124BAA493ACB2028CAD1C6CAC083D4024D27567274ED52A2491E595AF51
        5745562457268799A48920817D9C488D446D8D9E9229348D4D52B5050D46E195
        C4060658A9AB5D3B12DE5A685E3DB92F1168A2684931B499B29F35254FD41B1E
        AE38220AB20FC08A49C823E60F23AD3E6974E85E4968A964918996ECEF023331
        F13D5893D428A2CA91D4228F82A6A55E883E3DD50147C801E9F752DA96090D45
        2E72BC8F57773DAE7502D1D4C680010C7C051CADCF3D46E94F184A9A15DD8B29
        B1F149C8A9695A407B80FE65BFDBA9128E9CAEFC22295E52F75B4914A76C6FC8
        B62D101DE170BF126E21A4A7179266B7C957CD9DBF8516ECDF21C73D5268B4C3
        72AA70EEFE5912B13C8D51507D33DBC634F8702C8B7E935AD62AE2A4D35A270B
        0CB376788875F0DE382F80F2B8799B759795C8107AFB49511B1685F4CADDBF3B
        324669A35703D320B90F5E7F472415321869EB22ECD2CCA3230F8B14F1CB8DC5
        C2CD047B9CDF6B3B73C75049249A82B41A7EA94525E9A0B301A7D7CF14F92D63
        2324D4D232D2B46CF1CFD91CE6ABC8A29E496B02E9EBDAD566A78916AAB2665A
        88E92E2A99B2118A7ED223593B3A65B8CB2158FA24F249B93F33D220F6A44A88
        907EE926A79628D7EAF232A8F99E9606D3E31250C54B4A913B54896A0226D3B8
        B53944DBDB05D5D87B765BDBAA57910C6F253CB298CDEEBBD5F5B2AF9D8F28EA
        CB703242ADE447DD2C51CCD610308E3926658D4171B985E54488E2F249B83175
        61746524DE7924C2AE6ECB2ED07786BDF218E368D9A72715BE37538F55C6AA8D
        6255A6528E74E829CAC9DAE940C655A78D83152E386E54B0F2BF4FAA56203A95
        7AE1454CDC3AC5C377C79AAB1C649BE0A224E246B74B55DC9A61BF5350D3CBB4
        9818CC3ED6DCD8F32A246AB1381C0C42024474328ABAA8701CC5A948CF70727D
        D65D20EE66CDC6EE43140638E1E7AAB6A28D167ABA0969C0A9D50B6226C5AC63
        FC229FC4BA05B34AAA0F99F5E9E3718BC6EC8EBF06438B0E38E08F4FD1ED53D6
        5445173E1091B6BBC0863B66E8090C41205C8247AF5BB533CB5121F7E691A46B
        7C2EE49B7CBCBEFF00F1553FD797FF006E8B3B1663E6CC4927EA4F27EE592276
        8E443757425594FC88E4743F14D39B7879D669AD1D3C927CE5A665ECACE7DE75
        54CBD474935369F575D570A84A7935434E1200BEC0094DDC658FFCB5C170FF00
        2DD2F7E9AA6AE43248DC0F4545F448D7C9507C3EAC6EC493FF0008FFC4002110
        010100020202030101010000000000000111002131414051106181715091FFDA
        0008010100013F21F35C221A5E162DEB8EC294EC39CA680762088EC7C1DD33F1
        179F6203B50CA75E35852420C406A9AD3255B4B0FBE1018214F9334962542EFA
        06C21D352097ACB6B40C93A8AB9596A7DC210222341E5D99406083A31EA6A580
        FB076C55FD257513980441D12B8379E092821441AF368AA1B92491D084A9CBAF
        18A64E9D044442482E5429A0311B466B181C5572246471167168F455DB378160
        DD321AE1A6EB0540F4BD16A19BD6059A1B5E026957A486AD47C6B41BDB1AEE6E
        57812A7F463FEC80C80B28586A7227B3072085237B720EBF647B01E885FBFBED
        E8EE4C6EC005A86AAAA0E978472E04AC419D42FA548562177909E82E2340F4C5
        0202DD58887613D6AFAC9EAE455E4CBE8D73940E581D2F003D6B88F0BB866F67
        3A7A3A47D181FD4E7CCE1C410D35CE98DCF648BEA420C41D077C2308507671D9
        EB14799398D398A950FF00B5F4B813C662027694D254D4B6A0F5937A635A4023
        13B6188781524EA1C747EAAFEAD6E53D01C608BE7B46554400A187300394011A
        A1D3A54783EA7A0325C8DE6526DC27389704A8137F6C9196E68209BC0C6C2443
        3501402C7A2089BB222EA40235BE41B5AB606D152532AE16559C6934E0858940
        9B509D18BA4C1399586978434479902D99655BBE45AC614AB8CD987281516255
        C1717ADDE649A801433375E182BE242D22B5905B93ECE1287F55532E74717416
        F7BBA05D5835BBE15C9E6EA4A422CCA0807A9356B0092480BE8453E014BB1382
        2BE025100B892884690C4E45044E1128E9CD8AC7BA310A909C44463E7EB44FC2
        2946CA00C4D165333CA6A044F74A09C19763432114610219F0C83255CADC9502
        D91A648F3A021608E24EF3A60B65B83DA1D3DBA576E6B7A90345A8A0DB6B1F08
        CA019058935B42F1D660CC1C8366091F5320306BB76ABD95030CCFA409C29F4A
        0FC4C68B216695C1D004362099A20DF53F80AC2015D06765808DBCB515D54E30
        7C06A9442C84725CB02970F1982FA9D788855534A0B93AF09592063996F230EB
        A56CDB72A1D5B740502A6A156830F69A1AA4C62D8504784C72396CA630DDDED6
        A0CF038200DC1A787D352FD63E0FA0246A1234102057689B2018E42C2BA633B9
        4090DD860EB23952ABFD5B89D91B045BBAFB1626311DDFE28FCAEFA568C362A6
        831C8444880A5CE5F18F56E0CBC1717DA94C7719B79CF40E88CC47112AE92926
        9AC0705881EBD0745CBE4EADCDCC3ED495AC810A7332D6CD461DC0B8391670AA
        380CC8FA21A42108D2B7D9115D4A955152334A786E502F4C43180DCA2288C6C2
        A8EF7291615818E83E430041A0000F41C714A7D65FDA94FB5F8FB4AE3EC789D6
        9D94E302CD2D7B7675B6A173B57523F0761C5D455A36563EA5AC3AA6F2AC1B55
        3FE4DDFFDA000C0301000200030000001000000000000F10D281040322000000
        0000000A29D05E5C7C28000000000001C83B26BAB4C000000000000008A98CBA
        4E89100000000000000000000000000003FFC4001C1101010101010100030000
        000000000000011121003130204041FFDA0008010301013F10FCCCC229519200
        AEE1E717A39687216000A692D7A9D7BDC3276387D9CDF93C53526CB22F09BAA5
        F11AE0F268007A6A22FBF0E22A80B597C844663772976AF0F09798FBFE6B07C1
        D7B92D23E3928FCB0345A112CA5EF342CCD3D119098F907C89DDF386D3FF00E2
        97E418A075B3495F502789BBA1EE86585E54392412A1720AF40628B518E23121
        BC48D12B9E1BA3ED90734AE59B2E1D1C0D15A15F23FE7B1CCFE3F52122B6541C
        00224683805E990911A4195A1100819C18AF3432824AD80655C229090A81602E
        A18AEA05D5E80969183464001C63ECC34B9DA34CB5EBD0476134A6049CC8DE42
        BAABB13D983E443E7F246C159530F82802121104F4438F00784CA018810C0A02
        95541E65019042244EC31B14EF71D1ECAC0AC02B15082C303B2F20268954A60A
        3A09AEE323A9F5922EC0CEE2AE8CE9BD2933B9243C4A02AA21A45560884217F4
        FF00FFC4001D1101010101010002030000000000000000011121003130411020
        40FFDA0008010201013F10FDD0F2D3C4CDE89535C041EC223DE406852A9B0208
        3805AB6D86865140ED037956D3774D98287E701F9A3D901F7442C9C912F62BEA
        5CB6EB6D231A4D985640C5BC0204962F1DF82F29EDD75A2BCB1BC5FE180D1484
        842DD15ADABC21ABAB23559733D13CB40A46CD2CE3EFA44340B5E2876A7E9A99
        8B3C8E007652F4D3384049C067B9CCA110BD37683C4E3A5DD4C7C49FA3552B57
        586D0D01650EB37F731ECEC1774967E158B14229E692B4957E8084013E808AC0
        A9728A286A5E2844F61B18084A56C0D47942401429060B4C3050607501B0AD2D
        4DAA93587975C477D344313A5118ECDCE6EB586D1BC45EE76752A88A12817E2A
        8DCDB41C9E88008884AA605521BD2FA155542E9154000393B950EC08428BB162
        A3DE6387CB35215580815A8575ED3FE1A441584D257E1C04DF516277B10E0170
        49AC3D82400D7355D8B6C4A288B84C02822D683F8FFFC4001F10010101010002
        03000300000000000000011100213140104151506171FFDA0008010100013F10
        F779314B06668B30AA67510BCB2674093802208FA20F96B195AC5E7CCF08AA62
        9B8AB3A111AB3D818821704CCABA8142E18D628F5218A33C9742D02E0BC81010
        141B462B2B43F94A3B2248A1C34F380AB71440DB9961D50E3E5C217D07FC3E6C
        DBA40C5246F0BE9E646C4DD0AA3221938E6D07B6F5D353AA1071C4D24677AC2E
        A77D8D0E35A8B58410A9EA90C64920C5546BC219AA60006A8533F63A22C3476F
        F51C0B42A22C4B98262A046502B5A843C11E8BDFE4F6781DE5E60FDAD046C988
        2B0CE3E8AD09E1E5A297768C40DCC647336274420D8E17C85D5DEA71AFF178AF
        2FCE3A4B17511D061102E92EE1A10E15F730995BCC9A4FE6C505CBBDE2F41002
        F76441EC1F590DD6085F2C37EC967ABCAE00D8E528461356F100DC3ED48EAB09
        57993B92719591741F8CA435052D12D26482C66EA83266D5425417CC3795C7EC
        C0357FF82699907401283DB94A5E746923A7A1A8BA61838E10A85A3CCB4D61DB
        677EF388E9C51D1A5D119EDF37473C2DA1868CE4D38DB8BE3C2B97326588326E
        D41588C04D34B07089B35F00B0454184C4D76E85A70E054232304869C62E485D
        9FB43BD7D6F1B10F07874ACC1DFCEEC3600CC7EBBD136E1B0E3932B0B7B4E212
        1DF20648FE323A72ECD52C767292DFB5813EFA6E1084E4966E7F9240E39C6207
        0A8F3B88EBA3A6BCF9C1E8AFA49D01895CE02457B69CBB48B29CD18D6D839C1F
        1DF0F16CB1320C89ED50245B70860202260212F0C7F81B6657DC0BFF00AF06FA
        68F2FC1B220FE15FB3FF00407EE8BA2CA147B9840F8A4E6444A80692806813B0
        72A8FE6CA7D3DEA0F620F3362E4B5195016E6A13487829631DEBE960C1EB3EC4
        D55E3D311F5065BD72E3702841CCB49C0A08AE069DED8BA47A8071A8A719CCBE
        8B5466C8B010B01070A92DF0162CD6424100ED19CBD4850FA8DB218638392F51
        49320648EE4762D50C03D4C604FE9E18640205509182BA3BE313C0CC1570D834
        23887719045BCF98B1ABD42C4D3DF9D4D08F51B87628B4E4493D263578BEDF12
        EDD9D3E0800FD447688D1386026312DA42861FE0853BE4388F1DD42FEDD3ED7E
        A113A226285516E17069C08938B7ABED294E34A9F463C497C295D94C47185668
        885C2B9543CE86A04395652B6AA70106B50C00631CF28904F263413542FF0042
        7E6513C2FF00D6D062890DF93B69C804EE1E04605DD890335AED7B39C6CA6ACD
        3A9817D276A48EA50B5929A9063792BC0583865509CF928EE060100000700003
        86B78D59A03350054C02F3E087544C44252152144A919D4C023D779C348EA6DC
        70177EB4A571B0D28B73095E18F97BFF0012C687FFD9}
    end
    object Image2: TImage
      Left = 0
      Top = 1
      Width = 479
      Height = 63
      Anchors = [akLeft, akTop, akRight]
      Picture.Data = {
        0A544A504547496D616765A6120000FFD8FFE000104A46494600010101012C01
        2C0000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC000110801B3024503012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F9FE
        8A28AFE8B3F99C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A00FFD9}
    end
    object Label4: TLabel
      Left = 8
      Top = 32
      Width = 225
      Height = 24
      Caption = 'Cadastro de Membros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
  end
  object Ds: TDataSource
    DataSet = QryMembros
    Left = 416
    Top = 8
  end
  object ActionList1: TActionList
    Images = FormMain.ImageList24
    Left = 388
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
  object QryMembros: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from Membros'
      'where FichaNumero = -1')
    DMLRefresh = True
    BeforeInsert = QryMembrosBeforeInsert
    BeforeEdit = QryMembrosBeforeEdit
    BeforePost = QryMembrosBeforePost
    AfterPost = QryMembrosAfterPost
    BeforeCancel = QryMembrosBeforeCancel
    AfterCancel = QryMembrosAfterCancel
    BeforeDelete = QryMembrosBeforeDelete
    AfterScroll = QryMembrosAfterScroll
    OnCalcFields = QryMembrosCalcFields
    OnNewRecord = QryMembrosNewRecord
    Left = 360
    Top = 8
    object QryMembrosFichaNumero: TIntegerField
      FieldName = 'FichaNumero'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryMembrosNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 80
    end
    object QryMembrosSexo: TStringField
      FieldName = 'Sexo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryMembrosFoto: TBlobField
      FieldName = 'Foto'
    end
    object QryMembrosCartaoMembro: TStringField
      FieldName = 'CartaoMembro'
      FixedChar = True
      Size = 1
    end
    object QryMembrosDataNascimento: TDateTimeField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'DataNascimento'
      Required = True
    end
    object QryMembrosDataValidade: TDateTimeField
      FieldName = 'DataValidade'
    end
    object QryMembrosDataBatismo: TDateTimeField
      FieldName = 'DataBatismo'
    end
    object QryMembrosMembroDesde: TDateTimeField
      DisplayLabel = 'Membro Desde'
      FieldName = 'MembroDesde'
    end
    object QryMembrosNaturalidade: TStringField
      FieldName = 'Naturalidade'
      Size = 50
    end
    object QryMembrosEstadoCivil: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'EstadoCivil'
      Size = 50
    end
    object QryMembrosNomeConjuge: TStringField
      FieldName = 'NomeConjuge'
      Size = 50
    end
    object QryMembrosFiliacaoPai: TStringField
      FieldName = 'FiliacaoPai'
      Size = 50
    end
    object QryMembrosFiliacaoMae: TStringField
      FieldName = 'FiliacaoMae'
      Size = 50
    end
    object QryMembrosRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object QryMembrosCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object QryMembrosEscolaridade: TIntegerField
      FieldName = 'Escolaridade'
    end
    object QryMembrosProfissao: TIntegerField
      FieldName = 'Profissao'
    end
    object QryMembrosDescProfissao: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescProfissao'
      Size = 50
      Calculated = True
    end
    object QryMembrosEndRua: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'EndRua'
      Size = 50
    end
    object QryMembrosEndNumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EndNumero'
      Size = 6
    end
    object QryMembrosEndBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'EndBairro'
      Size = 50
    end
    object QryMembrosEndComplemento: TStringField
      FieldName = 'EndComplemento'
      Size = 30
    end
    object QryMembrosEndCidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'EndCidade'
      Size = 50
    end
    object QryMembrosEndEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'EndEstado'
      Size = 2
    end
    object QryMembrosEndCep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EndCep'
      Size = 8
    end
    object QryMembrosFoneResid: TStringField
      FieldName = 'FoneResid'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 10
    end
    object QryMembrosFoneCelular: TStringField
      FieldName = 'FoneCelular'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 10
    end
    object QryMembrosEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object QryMembrosStatus: TIntegerField
      FieldName = 'Status'
    end
    object QryMembrosStatusDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusDesc'
      Calculated = True
    end
    object QryMembrosUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryMembrosDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object QryMembrosUserUpdate: TIntegerField
      FieldName = 'UserUpdate'
    end
    object QryMembrosDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
  end
  object QryAconselhamento: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from Aconselhamento'
      'where Membro = :membro'
      'order by Data desc')
    DMLRefresh = True
    BeforeInsert = QryAconselhamentoBeforeInsert
    BeforeEdit = QryAconselhamentoBeforeInsert
    BeforePost = QryAconselhamentoBeforePost
    AfterPost = QryAconselhamentoAfterPost
    AfterCancel = QryAconselhamentoAfterPost
    BeforeDelete = QryMembrosBeforeDelete
    OnNewRecord = QryAconselhamentoNewRecord
    Left = 364
    Top = 41
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'membro'
      end>
    object QryAconselhamentoCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryAconselhamentoMembro: TIntegerField
      FieldName = 'Membro'
      Required = True
    end
    object QryAconselhamentoData: TDateTimeField
      FieldName = 'Data'
      Required = True
    end
    object QryAconselhamentoHorario: TStringField
      DisplayLabel = 'Hor'#225'rio'
      FieldName = 'Horario'
      Required = True
      EditMask = '00:00;1;_'
      Size = 5
    end
    object QryAconselhamentoDificuldades: TMemoField
      FieldName = 'Dificuldades'
      Required = True
      BlobType = ftMemo
    end
    object QryAconselhamentoConselhos: TMemoField
      FieldName = 'Conselhos'
      Required = True
      BlobType = ftMemo
    end
  end
  object DsAconselhamento: TDataSource
    DataSet = QryAconselhamento
    Left = 412
    Top = 41
  end
  object QryVisitas: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from Visitas'
      'where Membro = :membro'
      'order by Data desc')
    DMLRefresh = True
    BeforeInsert = QryAconselhamentoBeforeInsert
    BeforeEdit = QryAconselhamentoBeforeInsert
    BeforePost = QryVisitasBeforePost
    AfterPost = QryAconselhamentoAfterPost
    AfterCancel = QryAconselhamentoAfterPost
    BeforeDelete = QryMembrosBeforeDelete
    OnNewRecord = QryAconselhamentoNewRecord
    Left = 364
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'membro'
      end>
    object QryVisitasCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryVisitasMembro: TIntegerField
      FieldName = 'Membro'
      Required = True
    end
    object QryVisitasData: TDateTimeField
      FieldName = 'Data'
      Required = True
    end
    object QryVisitasHorario: TStringField
      DisplayLabel = 'Hor'#225'rio'
      FieldName = 'Horario'
      Required = True
      EditMask = '00:00;1;_'
      Size = 5
    end
    object QryVisitasTipo: TIntegerField
      FieldName = 'Tipo'
      Required = True
    end
    object QryVisitasObservacao: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
  end
  object DsVisitas: TDataSource
    DataSet = QryVisitas
    Left = 412
    Top = 73
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 472
    Top = 72
  end
  object QryDizimos: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      
        'select Extract(MONTH from C.Data) NumMes, sum(DC.Valor) as Valor' +
        ' from DizimistasCulto DC'
      'Inner Join Cultos C on C.Codigo = DC.Culto'
      'where C.Data between :dt1 and :dt2'
      '  and DC.Membro = :Membro'
      'group by Extract(Month from C.Data)')
    DMLRefresh = True
    OnCalcFields = QryDizimosCalcFields
    Left = 364
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt1'
      end
      item
        DataType = ftUnknown
        Name = 'dt2'
      end
      item
        DataType = ftUnknown
        Name = 'Membro'
      end>
    object QryDizimosNumMes: TIntegerField
      FieldName = 'NumMes'
      ReadOnly = True
    end
    object QryDizimosDescMes: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescMes'
      Size = 15
      Calculated = True
    end
    object QryDizimosValor: TCurrencyField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
    end
  end
  object DsDizimos: TDataSource
    DataSet = QryDizimos
    Left = 412
    Top = 105
  end
  object QryOfertas: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      
        'select Extract(MONTH from C.Data) NumMes, sum(OC.Valor) as Valor' +
        ' from OfertantesCulto OC'
      'Inner Join Cultos C on C.Codigo = OC.Culto'
      'where C.Data between :dt1 and :dt2'
      '  and OC.Membro = :Membro'
      'group by Extract(Month from C.Data)')
    DMLRefresh = True
    OnCalcFields = QryOfertasCalcFields
    Left = 364
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt1'
      end
      item
        DataType = ftUnknown
        Name = 'dt2'
      end
      item
        DataType = ftUnknown
        Name = 'Membro'
      end>
    object QryOfertasNumMes: TIntegerField
      FieldName = 'NumMes'
      ReadOnly = True
    end
    object QryOfertasDescMes: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescMes'
      Size = 15
      Calculated = True
    end
    object QryOfertasValor: TCurrencyField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
    end
  end
  object DsOfertas: TDataSource
    DataSet = QryOfertas
    Left = 412
    Top = 137
  end
end
