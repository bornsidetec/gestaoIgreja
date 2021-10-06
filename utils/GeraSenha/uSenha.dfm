object FormSenha: TFormSenha
  Left = 253
  Top = 122
  BorderStyle = bsToolWindow
  Caption = 'Contra-Senha'
  ClientHeight = 89
  ClientWidth = 153
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object EditCliente: TEdit
    Left = 8
    Top = 24
    Width = 57
    Height = 21
    MaxLength = 8
    TabOrder = 0
  end
  object BtnSenha: TButton
    Left = 72
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Senha'
    TabOrder = 1
    OnClick = BtnSenhaClick
  end
  object EditSenha: TEdit
    Left = 8
    Top = 56
    Width = 137
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 2
  end
end
