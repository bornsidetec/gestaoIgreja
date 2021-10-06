object FormFechamento: TFormFechamento
  Left = 408
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fechamento Mensal (Financeiro)'
  ClientHeight = 224
  ClientWidth = 369
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
  PixelsPerInch = 96
  TextHeight = 13
  object PanelDados: TPanel
    Left = 0
    Top = 0
    Width = 369
    Height = 57
    Align = alTop
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
      Left = 192
      Top = 8
      Width = 19
      Height = 13
      Caption = 'Ano'
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
      OnClick = EditAnoChange
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
      Left = 192
      Top = 24
      Width = 65
      Height = 21
      MaxLength = 4
      TabOrder = 1
      OnChange = EditAnoChange
      OnKeyPress = EditAnoKeyPress
    end
    object BtnPesquisar: TBitBtn
      Left = 265
      Top = 8
      Width = 96
      Height = 41
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
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 167
    Width = 369
    Height = 57
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object BtnSair: TBitBtn
      Left = 280
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
    object BtnBaixar: TBitBtn
      Left = 8
      Top = 8
      Width = 81
      Height = 41
      Caption = '&Fechar'
      Enabled = False
      TabOrder = 0
      OnClick = BtnBaixarClick
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DED3A2BCA6789678688A69688A
        69789678A2BDA7D0DED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5CBCBCB
        B6B6B6ADADADADADADB6B6B6CBCBCBE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C5B330
        5F322B592C2B56293B7043447D50447D503B70432B56292B592C305F32AFC5B3
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD3D3D39090908E8E8E8E8E8E9393939696969696969393938E8E8E8E
        8E8E909090D3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDDE8E0688F6C2C5D2E3F784A6BB68B86DBB187DEB384D8AE84D8
        AE87DEB386DBB16BB68B3F784A2C5D2E688E6CDDE8E0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECAEAEAE8F8F8F959595A3A3A3ACACAC
        ACACACABABABABABABACACACACACACA3A3A39595958F8F8FAEAEAEECECECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E0D42F64372C613370B78E8E
        DFB77ED1A469BD855AB47459B27159B2715AB47469BD857ED1A48EDFB770B78E
        2C61332F6337D0E0D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E59090
        90909090A4A4A4ADADADA9A9A9A3A3A3A0A0A09F9F9F9F9F9FA0A0A0A3A3A3A9
        A9A9ADADADA4A4A4909090909090E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DDE9E12F683A38734488D3AC8AD7AE61B87C50AE6654B16C56B26E56B26E56B2
        6E56B26E54B16C50AE6661B87C8AD7AE88D2AC3874442F683ADDE9E1FFFFFFFF
        FFFFFFFFFFFFFFFFEDEDED919191939393ABABABABABABA1A1A19D9D9D9E9E9E
        9F9F9F9F9F9F9F9F9F9F9F9F9E9E9E9D9D9DA1A1A1ABABABABABAB9494949191
        91EDEDEDFFFFFFFFFFFFFFFFFFFFFFFF6896722B67388DD4AF8AD6AD55B16C56
        B06E59B27259B27259B27259B27259B27259B27259B27259B27256B06E55B16C
        8AD6AD8DD4AF2B6737699673FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF909090ACAC
        ACABABAB9E9E9E9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F
        9F9F9F9F9F9E9E9EABABABACACAC909090AFAFAFFFFFFFFFFFFFFFFFFFB1CBB8
        2A6A397BBD9796DCB65AB1705BB4715DB5745DB5745DB57455B16D4FAE675DB5
        735DB5745DB5745DB5745DB5745BB4715AB17096DCB67BBD972A6938B1CCB9FF
        FFFFFFFFFFD4D4D4919191A6A6A6AEAEAE9F9F9FA0A0A0A0A0A0A0A0A0A0A0A0
        9E9E9E9D9D9DA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09F9F9FAEAEAEA6A6
        A6909090D5D5D5FFFFFFFFFFFF2F7544428659A6E5C76CBD845BB3715EB6755E
        B6755EB5754EAE6780C693CAE9D241A95D5DB5745EB6755EB6755EB6755EB675
        5BB3716ABD84A6E5C74286592E7443FFFFFFFFFFFF939393989898B1B1B1A3A3
        A39F9F9FA0A0A0A0A0A0A0A0A09D9D9DA7A7A7B5B5B59B9B9BA0A0A0A0A0A0A0
        A0A0A0A0A0A0A0A09F9F9FA3A3A3B1B1B1989898939393FFFFFFD2E4D828713E
        84C4A097D8B358B16E61B67961B67961B67851AF698BCB9BFFFFFFFFFFFFD1EB
        D94DAD665FB57761B67961B67961B67961B67958B16E97D8B384C4A028713ED3
        E4D9E6E6E6919191A8A8A8ADADAD9F9F9FA1A1A1A1A1A1A1A1A19E9E9EA9A9A9
        BFBFBFBFBFBFB7B7B79D9D9DA0A0A0A1A1A1A1A1A1A1A1A1A1A1A19F9F9FADAD
        ADA8A8A8919191E6E6E6A6C9B124743EB0E6CB7DC69662B67766B97C65B87B4E
        AE68A0D6AFFFFFFFFFFFFFFFFFFFFFFFFFDFF1E349AC6463B77966B97C66B97C
        66B97C62B6777DC696B0E6CB24743EA7CAB3CECECE919191B2B2B2A7A7A7A1A1
        A1A2A2A2A2A2A29D9D9DADADADBFBFBFBFBFBFBFBFBFBFBFBFB9B9B99C9C9CA1
        A1A1A2A2A2A2A2A2A2A2A2A1A1A1A7A7A7B2B2B2919191CECECE76AD8A408D5C
        B5E7D16DBC8367B97B68B97D5FB576B5DFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE9F5ED58B37065B87A69BA7D69BA7D67B97B6DBC83B5E7D1408D5C76
        AC8AB9B9B9989898B3B3B3A3A3A3A2A2A2A2A2A2A0A0A0B1B1B1BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBBBBBB9F9F9FA1A1A1A2A2A2A2A2A2A2A2A2A3A3
        A3B3B3B3989898B9B9B967A37E4D996EB3E5CD6DBB826ABA7F68B97D7CC490FF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFCFFFFFFFFFFFFFFFFFFF2F9F456B06E67B87D
        6CBB816ABA7F6DBB82B3E5CD4D996E67A37EB1B1B19C9C9CB3B3B3A3A3A3A2A2
        A2A2A2A2A6A6A6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBD
        BDBD9F9F9FA2A2A2A3A3A3A2A2A2A3A3A3B3B3B39C9C9CB1B1B166A77F509C6F
        B9E6D071BD866DBB826FBB8465B77C76C289FFFFFFFFFFFF99D2A851AF6AFFFF
        FFFFFFFFFFFFFFFFFFFFFAFDFA68B87D69B87F6DBB8271BD86B9E6D0509C6F66
        A77FB2B2B29C9C9CB3B3B3A4A4A4A3A3A3A3A3A3A2A2A2A5A5A5BFBFBFBFBFBF
        ACACAC9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBEBEBEA2A2A2A2A2A2A3A3A3A4A4
        A4B3B3B39C9C9CB2B2B275B18E409564C3EBDA76BF8B70BD8572BE8772BE8768
        B87E85C9969FD3AD61B6796BBA8171C087FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        76C18A6DBB8276BF8BC3EBDA40956474B18EBABABA9A9A9AB6B6B6A5A5A5A4A4
        A4A4A4A4A4A4A4A2A2A2A8A8A8ADADADA1A1A1A3A3A3A4A4A4BFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFA5A5A5A3A3A3A5A5A5B6B6B69A9A9ABABABAA6D0B820854A
        C4EADB8ECEA270BD8474C08974C08974C08970BD856DBC8274C08974C0896CBB
        8176C289FFFFFFFFFFFFFFFFFFFFFFFF8BCB9C6CBB808ECEA2C4EADB1F8449A8
        D2BACFCFCF939393B6B6B6AAAAAAA4A4A4A5A5A5A5A5A5A5A5A5A4A4A4A3A3A3
        A5A5A5A5A5A5A3A3A3A5A5A5BFBFBFBFBFBFBFBFBFBFBFBFA9A9A9A3A3A3AAAA
        AAB6B6B6939393CFCFCFD3E9DC218B4F99CFB4B2E0C76EBB7F79C18A79C18A79
        C18A79C18A79C18A79C18A79C18A79C18A6EBB818FCD9FFFFFFFDDEFE16CBD80
        72BD856EBB7FB2E0C799CFB4208A4ED4E9DEE7E7E7949494ADADADB2B2B2A3A3
        A3A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A3A3A3AAAAAABF
        BFBFB9B9B9A3A3A3A4A4A4A3A3A3B2B2B2ADADAD949494E7E7E7FFFFFF299459
        45A26FCFEDE588CB9C77BF897CC28E7CC28E7CC28E7CC28E7CC28E7CC28E7CC2
        8E7CC28E72BD8586CA986AB97E7AC08C77BF8988CB9CCFEDE545A26F279358FF
        FFFFFFFFFF9797979C9C9CB8B8B8A9A9A9A5A5A5A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A6A6A6A6A4A4A4A8A8A8A2A2A2A5A5A5A5A5A5A9A9A9B8B8
        B89C9C9C969696FFFFFFFFFFFFB1D9C32091549ED2B8C6E8DC7AC28B7BC18D7D
        C2907DC2907DC2907DC2907DC2907DC2907DC2907DC2907AC18D7DC2907BC18D
        7AC28BC6E8DA9ED2B81F9154B2DAC4FFFFFFFFFFFFD6D6D6959595AEAEAEB6B6
        B6A5A5A5A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A5A5A5B6B6B6AEAEAE959595D7D7D7FFFFFFFFFFFFFFFFFF
        65B78C209558C7E7D9C4E6D87DC38C7CC28D80C49180C49180C49180C49180C4
        9180C49180C49180C4917CC28D7DC38CC4E6D8C7E7D920955864B68CFFFFFFFF
        FFFFFFFFFFFFFFFFB4B4B4969696B5B5B5B5B5B5A6A6A6A6A6A6A7A7A7A7A7A7
        A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A6A6A6A6A6A6B5B5B5B5B5B59696
        96B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFDFF0E7259D6036A46CCCE8DFCFEBE193
        CEA379C38880C69083C79283C79383C79383C79280C69079C38893CEA3CFEBE1
        CCE8DF36A46C249D5FDFF1E8FFFFFFFFFFFFFFFFFFFFFFFFEEEEEE9898989B9B
        9BB6B6B6B7B7B7ABABABA5A5A5A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A5
        A5A5ABABABB7B7B7B6B6B69B9B9B989898EEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD3ECDF24A0631F9D5EA9D9C4E4F3F3C9E6DBA4D5B48CCB9B89C99A89C9
        9A8CCB9BA4D5B4C9E6DBE4F3F3A9D9C41F9D5E24A062D3ECDFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE7E7E7989898979797B0B0B0BBBBBBB6B6B6AEAEAE
        A9A9A9A9A9A9A9A9A9A9A9A9AEAEAEB6B6B6BBBBBBB0B0B0979797989898E7E7
        E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF1E862BE931B9F5F48
        B17FACDCC8E7F2F4EBF5F6E3F0F0E3F0F0EBF5F6E7F2F4ACDCC848B17F1B9F5F
        63BE93DFF1E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EEB5B5B59797979F9F9FB1B1B1BBBBBBBCBCBCBABABABABABABCBCBCBBBBBBB1
        B1B19F9F9F979797B5B5B5EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB2DFCA26A86D1BA26318A26141B27F57BA8D57BA
        8D41B27F18A1611BA26325A76CB2DFCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D89A9A9A989898979797
        9E9E9EA2A2A2A2A2A29E9E9E9797979898989A9A9AD8D8D8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD5EEE3AADDC672C9A162C39762C39772C9A1ABDDC6D6EFE3FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE8E8E8D1D1D1BDBDBDB5B5B5B5B5B5BDBDBDD2D2D2E8
        E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
    end
  end
  object PanelEntradas: TPanel
    Left = 0
    Top = 57
    Width = 369
    Height = 110
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 352
      Height = 13
      Caption = 'Total de Entradas (+).......................'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
    end
    object LblEntradas: TLabel
      Left = 350
      Top = 8
      Width = 10
      Height = 13
      Alignment = taRightJustify
      Color = clBtnHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label15: TLabel
      Left = 8
      Top = 24
      Width = 352
      Height = 13
      Caption = 'Total de Saidas   (-).......................'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
    end
    object LblSaidas: TLabel
      Left = 350
      Top = 24
      Width = 10
      Height = 13
      Alignment = taRightJustify
      Color = clBtnHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Bevel1: TBevel
      Left = 8
      Top = 40
      Width = 353
      Height = 9
      Shape = bsBottomLine
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 352
      Height = 13
      Caption = 'Saldo Anterior    (+).......................'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 8
      Top = 72
      Width = 353
      Height = 9
      Shape = bsBottomLine
    end
    object Label5: TLabel
      Left = 8
      Top = 88
      Width = 352
      Height = 13
      Caption = 'Saldo pr'#243'ximo M'#234's (=).......................'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
    end
    object LblSaldoAtual: TLabel
      Left = 350
      Top = 88
      Width = 10
      Height = 13
      Alignment = taRightJustify
      Color = clBtnHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object EditSaldoAnterior: TRxCalcEdit
      Left = 240
      Top = 52
      Width = 121
      Height = 21
      DisplayFormat = '#,##0.00'
      NumGlyphs = 2
      TabOrder = 0
      OnExit = EditSaldoAnteriorExit
    end
  end
  object QryFechamento: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select * from Fechamento'
      'where codigo = -1')
    DMLRefresh = True
    Left = 184
    Top = 65
    object QryFechamentoCodigo: TIntegerField
      FieldName = 'Codigo'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QryFechamentoMes: TIntegerField
      FieldName = 'Mes'
    end
    object QryFechamentoAno: TIntegerField
      FieldName = 'Ano'
    end
    object QryFechamentoEntradas: TCurrencyField
      FieldName = 'Entradas'
    end
    object QryFechamentoSaidas: TCurrencyField
      FieldName = 'Saidas'
    end
    object QryFechamentoSaldoAnterior: TCurrencyField
      FieldName = 'SaldoAnterior'
    end
    object QryFechamentoSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
    end
    object QryFechamentoUserInsert: TIntegerField
      FieldName = 'UserInsert'
    end
    object QryFechamentoDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
  end
end
