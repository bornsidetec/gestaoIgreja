object FormAtivacao: TFormAtivacao
  Left = 396
  Top = 343
  BorderStyle = bsToolWindow
  Caption = 'Ativa'#231#227'o - BornSide'
  ClientHeight = 185
  ClientWidth = 177
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    177
    185)
  PixelsPerInch = 96
  TextHeight = 13
  object PanelContraSenha: TPanel
    Left = 8
    Top = 136
    Width = 161
    Height = 41
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 41
      Height = 13
      Alignment = taCenter
      Caption = 'Autorizar'
    end
    object SpdBtnAutOk: TSpeedButton
      Left = 136
      Top = 16
      Width = 23
      Height = 22
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
      OnClick = SpdBtnAutOkClick
    end
    object EditAutorizacao: TEdit
      Left = 0
      Top = 16
      Width = 137
      Height = 21
      Color = 16776176
      MaxLength = 8
      PasswordChar = '*'
      TabOrder = 0
    end
  end
  object PanelDados: TPanel
    Left = 8
    Top = 72
    Width = 161
    Height = 53
    BevelOuter = bvNone
    TabOrder = 1
    object CboLimite: TComboBox
      Left = 84
      Top = 0
      Width = 77
      Height = 21
      Hint = 'Vers'#227'o (Limite)'
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '50'
      Items.Strings = (
        '50'
        '100'
        '200'
        '400'
        '700'
        '1000'
        '9999')
    end
    object EditCliente: TEdit
      Left = 0
      Top = 0
      Width = 77
      Height = 21
      Hint = 'C'#243'digo do Cliente'
      MaxLength = 8
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = EditClienteKeyPress
    end
    object EditAno: TEdit
      Left = 0
      Top = 32
      Width = 77
      Height = 21
      Hint = 'Ano'
      MaxLength = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '2015'
      OnKeyPress = EditClienteKeyPress
    end
    object CboTrimestre: TComboBox
      Left = 84
      Top = 32
      Width = 77
      Height = 21
      Hint = 'Trimestre'
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '3'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
  end
  object BtnAtivar: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 33
    Caption = 'Ativar'
    TabOrder = 2
    OnClick = BtnAtivarClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9EB
      DE248B3F1F883A98C8A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFEA5D2B4279E583AB37621974E62AD77FFFFFFE7F3EAFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFEA3D2B333AB6853CD9745BF85249A52359753
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF7FCFAD9F1E635AE6D52CD9751
      CD9546C28829A15C349854FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F3EA59AF772D9D57289E572AA25D33AB
      6939B4744AC68F48C58E48C58E45C18828A15F5DAD78FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF5EE5EB17B28A05A3AB47547C388
      48C58C45C38A44C28944C28B40BE873FBD863FBC853DBB8441BE8728A3624EA6
      6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0E735A05D38B47447
      C58C42C1893EBC853DBB833CBA833BB98139B88038B77F38B67E37B57E36B47C
      34B27A37B57D199049FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F9F537A0
      5F3BB77A40BF8738B77F37B67E36B57D35B57C34B37B33B37A32B17931B07830
      AF772EAE752EAD752DAC7426A56B148943FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF7BBE922DA8663ABA8130B07831B1782FAF752BAA6F27A467219D5D209D
      5E209C5B29A97029A97027A76F28A86F1C995E12894397C9A9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF27985233B2752AAB722AAB7223A1641B9651198E47
      27934F50A76F3C9E61148E4A23A46B22A36A21A26A1392541A8B458DC6A183BD
      97E1EFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1891492BAC7223A56B1A965627
      935090C6A2F6FBF8FFFFFFFEFEFE9DCDAE108C481EA0671B9D640D8B4B298C4D
      FFFFFF70B489097D378AC29DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF138D461EA0
      6615935258AB75FFFFFFD3E7DA4297600978325EA7779BCBAB0C88441495580C
      854352A36EFFFFFF99CBA9198A4910884768B283FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF138A4313915242A063FEFEFEB5D7C01E85450D85490E8A4C36975CB5D8
      C01C864318834185BE98FFFFFFB6D9C223904F17925818915564B181FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF349858138642F3F9F592C5A30B7C39118F531C9861
      169155389A5EDFEEE4FFFFFFFFFFFFD0E7D853A770168C471C975C25A16A229C
      5E67B483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9DAC576B98D68B1810C864218
      965C209E67229F681A965A1F8F4C4EA56D419F631C8D46158D461D975725A269
      27A56D2EAB7326A15E7BBE93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      67108B4A22A06728A66E27A56E28A76F25A2661F9959209A5B229D5F28A46A2C
      AA702FAD752FAD7533B27A37B3783AA464C5E2CEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF1893522CAC742EAD752EAD752FAE7630AF7732B17933B27A33B3
      7A35B47C36B57D36B57D37B67E3BBA8240BF862DA76384C399FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF25A16139B98035B57D37B77F39B98039B980
      3ABA813BBB833CBC843DBD853EBE8541C18847C78E44C1862CA56078BE90FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF28995637B77A43C48B3F
      C08841C28941C28945C58D46C78E46C78D49CA904BCA9043C28432AE6B33A15D
      A2D1B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9DC
      C4319E5B39B7794CCE954BCD944CCE9546C68A36B26F30AB6629A35B279E5638
      A25F99CDABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFA3D0B01B91453BB97951D49956D9A04ACB8E64C08CF1FB
      F7FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4D0B0198F4136B37055D89E
      4BCC8F4EB174E0EFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F8F4FEFEFEC2
      DFCA2F985132AE6B37B5734DAE73E1F0E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBECDF55A56A0A7D2874B685FDFEFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object Panel1: TPanel
    Left = 8
    Top = 48
    Width = 161
    Height = 17
    BevelOuter = bvLowered
    Caption = 'Autorizado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BtnSair: TBitBtn
    Left = 94
    Top = 8
    Width = 75
    Height = 33
    Caption = 'Sair'
    TabOrder = 4
    OnClick = BtnSairClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00044534386B5457837679
      9C9799B4B9BBCCD8D9E3F5F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C317C0C317C0C317C000A4D
      3B68AC33599D3152962B488C21397D15286C0A185C020C4F010D510312570416
      5D061C6507236B092872FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A317D0C
      0D0F0C0D0F0011564477BB4F82C75A8DD26295DA6699DE6598DD679ADF6497DC
      6295DA5787CC426EB32E55991D3F84001257FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0C35820E10120E0F120018613467AB3164A8396CB03F72B6487BBE51
      84C85A8DD25A8DD25E91D65E91D65689CE4679BD3D70B4001962FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0E3986101214111114001F6A3366AA295CA0295C
      A0285B9F275A9E376AAC6295DB315FAB25589C275A9E2A5DA13063A6396CB000
      206BFFFFFFFFFFFFFFFFFFF9FCFAFFFFFFFFFFFF113F8B13141713131700226D
      3467AB2A5DA12B5EA22B5EA22B5EA23363A95F92D7305EA82B5EA22B5EA22B5E
      A22B5CA03A6CB100236EFFFFFFFFFFFFFFFFFF002FE6FFFFFFFFFFFF13429015
      161A14161A0024703467AB2A5DA12B5EA22B5EA22A5DA12E5CA25A8DD22E5CA5
      2B5EA22B5EA22B5EA22655993B6DB2002571FFFFFFFFFFFFFFFFFF002FE60018
      DAFFFFFF16469417181D16191E0026723467AB295CA02B5EA22B5EA2295B9F28
      569B5588CD2C59A22B5EA22B5EA22B5EA22350943D6FB4012773FFFFFFFFFFFF
      FFFFFF002FE61569FF0109CB184A9A191B21191B200028753568AC295CA02B5E
      A22B5EA2245297204A905083C82B579F2B5EA22B5EA22B5DA11E488C3E70B501
      29760033EE0033EE0033EE002FE61669FF095EFE0400B41B1E231B1E23002A78
      3669AD295CA0295B9F245296194085163C844B7EC328549D2B5EA22A5CA02350
      9413387B4072B7012B790033EE5DA2FF3F87FF2876FF1569FF095EFE0055FE08
      009D1E2026002C7A2B599F1D478A1B4488153B7F0E2C700E2E75487BC026529A
      1D498D1A438713367A0B286C4274B9012D7B0033EE599FFF4089FF2874FF1568
      FF095EFE0055FE0052FD070081002E7D142669142669477ABF477ABF477ABF47
      7ABF477ABF477ABF477ABF477ABF477ABF477ABF4376BB012F7E0033EE5DA2FF
      3F87FF2876FF1568FF095DFE0055FE0052FD070081002F7F3166B45287D1315E
      AA315FAA305EA93361AC477ABF315FAA305DA8305DA9305EA8305DA94578BD01
      30800033EE5DA2FF4089FF2876FF1669FF095DFE0055FE08009D25282F003182
      6EA1E880B3F8285B9F285B9F2A5DA03366A84C7FC426529A285B9F285B9F285B
      9F2B5EA2477ABF0132830033EE0033EE0033EE002CE61569FF095DFE0400B428
      2A32272A32003384386BAF24579B275A9E275A9E275A9E2F60A45487CC2B57A0
      275A9E275A9E275A9E245599497CC1013485FFFFFFFFFFFFFFFFFF002CE61668
      FF0109CB2560B12A2D35292C35003586386BAF24579B26599D26599D25589C2C
      5BA05E91D62D5BA426599D25589C24579B204F924A7DC2013687FFFFFFFFFFFF
      FFFFFF002CE60018DAFFFFFF2560B12B2F372B2F37003689386BAF2255992558
      9C25589C24569A28569C699CE1325FAA24579B24579B24579B1B478A4C7FC401
      378AFFFFFFFFFFFFFFFFFF002CE6FFFFFFFFFFFF2560B12D313A2D313A00388B
      386BAF21549824579B24579B20509325509773A6EB3563AF23569A23569A2153
      97163D804D80C501398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B130
      323C2F323D00398C386BAF205397235699205194163F811C448B7CAFF43868B4
      2255992152961842850C2B6C4E81C7013A8DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF2560B131353E30353E003B8E3668AC194A8E18458811367708225E10
      307882B5FA3C6DBA143D7E153C7F1335791131785386CC013C8FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF2560B132373F32373F003C903564AB255197315F
      A73D6DB7487AC8578AD974A7EC7CAFF484B7FC83B6FB7AADF26A9DE25E91D601
      3D91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B1343841343841003D91
      6497DC70A3E87BAEF383B6FB88BBFF85B8FD83B6FB83B6FB78ACF26398E0497F
      CA3069B51C57A6013E92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B125
      60B12560B1003E935388D0437BC53C75C1316BB9215DAD124EA1054297034195
      0845990D4A9D134FA21854A71E5AAB235EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0443963D6DAE5F87BC83A2CBA9BFDBCBD8EAED
      F2F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object XPManifest1: TXPManifest
  end
end
