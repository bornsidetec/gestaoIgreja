object FormConfig: TFormConfig
  Left = 435
  Top = 176
  BorderStyle = bsToolWindow
  Caption = 'Configurar Banco de Dados'
  ClientHeight = 296
  ClientWidth = 217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelDados: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 258
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 88
      Width = 39
      Height = 13
      Caption = 'Servidor'
    end
    object Label2: TLabel
      Left = 8
      Top = 128
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object Label3: TLabel
      Left = 8
      Top = 168
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object Label4: TLabel
      Left = 8
      Top = 208
      Width = 31
      Height = 13
      Caption = 'Senha'
    end
    object Label5: TLabel
      Left = 8
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Autoriza'#231#227'o'
    end
    object SpdBtnOk: TSpeedButton
      Left = 188
      Top = 22
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
        9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
        034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
        06013402FF00FFFF00FFFF00FF044F09066B110AAB1F1BAF2A08A012029D0A03
        9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
        10AC300DAB2870D0800AA318039E0C039E0C039E0C039E0C039E0C039E0C039F
        0C03A70C024C04FF00FF0357060D822317B6410EA92DBCEAC213A91E039E0C03
        9E0B039E0B039E0C039E0C039E0C039E0C03A50C037B0801420303570617A341
        18B54A11AB34EEFAEF3FBC49049F0D039E0C05A00F34B73E059F0E039E0C039E
        0C03A10C03960A01420306680D21B1511EB75120B54FE9F8EED0F0D82DB84E17
        AF3916AB2EAFE5B495DC9A06A00F039E0C03A00C039F0C014A040874123EBD69
        2ABA5C21B55397E0B2FFFFFFE5F7ED92DEB081D899DAF3DDFFFFFFA6E2AB10A6
        1B03A00C039F0C02520506780E54C57A44C6741CB24E2EBB5EC2EDD3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1E6BC07A518039D0C01460306780E4CBD69
        83DDA722B6551CB24E2CBA5D89DAA7D1F2DDFFFFFFFFFFFFFFFFFFDDF4E338BB
        5206A716038C0A014603FF00FF21A336AAE7C568D08E16AF481BB14C22B5542B
        B85C57CA81FFFFFFC4EDCE26B4410BA42009AF1C036B0AFF00FFFF00FF21A336
        56C573C5F0D866CF8C20B45219B14C20B55236BD6798E0B11FB24812AA340FB0
        2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
        BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
        FF00FF4BBF674BBF6798E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43538B45446
        BC6642B8632BA649138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpdBtnOkClick
    end
    object SpdBtnOpen: TSpeedButton
      Left = 188
      Top = 142
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1696CB1F9FD11293CBFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB
        9AF3FB6CEAF830B1DC30B1DC30B1DC1FA0D31395CBFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1696CB90E2F287FFFF7FFBFF81FAFF7DF4FF74
        EEFE69E3F830B1DC30B1DC23A5D5FF00FFFF00FFFF00FFFF00FFFF00FF1696CB
        72CBE696FEFF77F6FF78F3FF77F2FF76F2FF76F0FF77F0FF7DF3FF5AD3F2199A
        D0FF00FFFF00FFFF00FFFF00FF1696CB1696CB95EBF878F8FF78F3FF77F2FF75
        F0FF74EEFE72EDFE73EDFF5CD5F33CBBE3FF00FFFF00FFFF00FFFF00FF1696CB
        60DDF01696CB87FEFF74F4FF75F3FF73F0FF74EEFE72EDFE73EDFF57D3F25ED8
        F3189CCFFF00FFFF00FFFF00FF1696CB7AF7FC1696CB92E2F292EBF88EEDFA8A
        F4FF73EFFF70EDFE73EDFF55CFEF0159043EBFE3FF00FFFF00FFFF00FF1696CB
        86FEFF6CEEFA1696CB1696CB1696CB1696CB9AEEFA77F0FF6EEEFF01590441E0
        730159040F92CAFF00FFFF00FF1696CB82FBFF7EFAFF7DFAFF7DF8FF77F4FF51
        D4EF1696CB88DAF001590436CB5F2DC5511CB035015904FF00FFFF00FF1696CB
        83FCFF7BF8FF79F6FF78F3FF79F4FF7AF7FF6AEAFC1696CB1696CB0A73121CB0
        330A80131F9ACFFF00FFFF00FF1696CB8EFFFF7BFBFF79F7FF7AF6FF76E7F877
        E6F87DE9FB7EEDFC82F0FF04670A0C9A18036906FF00FFFF00FFFF00FF1392CA
        1696CB87F2FA88F4FC6CE3F61899CE1392CA1696CB1797CC1D9CCF04770A0589
        0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB1C99CE1898CCFF00FFFF
        00FFFF00FFFF00FF036F07058A0C036706FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF015603035E06046F0A037308025F05FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpdBtnOpenClick
    end
    object Label6: TLabel
      Left = 8
      Top = 48
      Width = 42
      Height = 13
      Caption = 'Software'
    end
    object EditServidor: TEdit
      Left = 8
      Top = 104
      Width = 201
      Height = 21
      TabOrder = 1
    end
    object EditBanco: TEdit
      Left = 8
      Top = 144
      Width = 179
      Height = 21
      TabOrder = 2
    end
    object EditUsuario: TEdit
      Left = 8
      Top = 184
      Width = 201
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object EditSenha: TEdit
      Left = 8
      Top = 224
      Width = 201
      Height = 21
      PasswordChar = '*'
      TabOrder = 4
    end
    object EditAutorizacao: TEdit
      Left = 8
      Top = 24
      Width = 179
      Height = 21
      Color = clInfoBk
      MaxLength = 8
      PasswordChar = '*'
      TabOrder = 0
      OnKeyPress = EditAutorizacaoKeyPress
    end
    object CboSoftware: TComboBox
      Left = 8
      Top = 64
      Width = 201
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 5
      Text = 'IEQSoft'
      OnChange = CboSoftwareChange
      Items.Strings = (
        'BZone'
        'IEQSoft')
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 258
    Width = 217
    Height = 38
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      217
      38)
    object BtnSalvar: TBitBtn
      Left = 56
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      Left = 136
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Banco de Dados Firebird (*.fbd)|*.fdb'
    Left = 184
    Top = 72
  end
  object XPManifest1: TXPManifest
    Left = 152
    Top = 72
  end
end
