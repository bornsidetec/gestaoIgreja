object FormAlteracoes: TFormAlteracoes
  Left = 655
  Top = 205
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Altera'#231#245'es'
  ClientHeight = 262
  ClientWidth = 280
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFiltro: TPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 205
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Tabela'
    end
    object Label2: TLabel
      Left = 8
      Top = 160
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object SpdBtnUsuarios: TSpeedButton
      Left = 68
      Top = 175
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
      OnClick = SpdBtnUsuariosClick
    end
    object LblApelidoUsuario: TLabel
      Left = 96
      Top = 183
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object QuickRep: TQuickRep
      Left = 312
      Top = 244
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = RxM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE'
        'QRSTRINGSBAND1')
      Functions.DATA = (
        '0'
        '0'
        #39#39
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
      Zoom = 100
      object PageHeaderBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 87
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = PageHeaderBand1BeforePrint
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          230.187500000000000000
          1899.708333333333000000)
        BandType = rbPageHeader
        object QRLabelSistema: TQRLabel
          Left = 0
          Top = 0
          Width = 348
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            0.000000000000000000
            0.000000000000000000
            920.750000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'IEQSoft - SISTEMA DE GEST'#195'O ECLESI'#193'STICA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRLabelIEQ: TQRLabel
          Left = 0
          Top = 24
          Width = 19
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            0.000000000000000000
            63.500000000000000000
            50.270833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'IEQ'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabelRel: TQRLabel
          Left = 0
          Top = 40
          Width = 149
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            0.000000000000000000
            105.833333333333300000
            394.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'RELAT'#211'RIO DE ALTERA'#199#213'ES'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRImage1: TQRImage
          Left = 653
          Top = 8
          Width = 65
          Height = 65
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            171.979166666666700000
            1727.729166666667000000
            21.166666666666670000
            171.979166666666700000)
          Picture.Data = {
            0954474946496D616765DE150000474946383961C800C800C40000FBD756FF80
            808A8A89B94E9D4886B9010101FEE99E494949CFCFCF5C4F1F5D274F910000DC
            A6CE310D163C6C93FF4141294C6A913C7B282926FFFFFFFF0000ABC1D2FEF5D5
            F4CAD6D5E0EAEFEFEF8E7E48F6E9F3FFDFDFE8F0F677A4CBFFFAEA2C00000000
            C800C8000005FFE0248E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0
            A070482C1A8FC8A472C96C3A9FD0A8744AAD5AAFD8AC76CBED7ABFE0F00A8338
            2130A38A783DAD141A2281443011140A6577A33CCAF07F170182838485868788
            898A8B8C851C2516069293949596979899971A77151977700777021F12770722
            1F6E050C961F390114B2B3B4B5B6B7B8B9BABBBCB517250600C2C3C4C5C6C7C8
            C9C79C051AAB05150DA776771A1D757705C716B0BDDEDFE0E1B8BF24C1CAE7E8
            E9C5CC73D9CC0507A6A313A2D5DBDDE2F9FAFBB417AF23E6D4091C582C41366A
            05E4C1CB86C741B604C8B8E18825EB41A38B18336A7C308B1CC06192224D1219
            921249032753FF9A5C59E9DD2986D94C495078A012318937285208C0E6844E7F
            E586E10C724605C25131B3D5536A22E0D01A3A79F62CF11398D0217624A4E8C0
            49E1B37A4BEF48C850E283537C3BA752EDF84FC45921F5E8A010F50C83A903F5
            9EDDF943E2265AA96A45540D2AECA90F795AE74293F78181830CA63464C03BEF
            C4DB9CB3004FE0476BC11D7A3045DC59C0B922899F6D275C9E40501D286DC8EE
            64A096E1C32B32D7404B2066A0ED6AA899499496E5B9C087780292CBBD339CC2
            83D31DAD16EEDBFA5C5751108F7DFE70074DD955C50C509F3E31F888E6C5E925
            262BBA00E9D2CF47A0260C6068F573A604B8D96D8C13AA091978570264CD1843
            9F61334425DCFF70E9E165C268C3C5275874078E775F7F6F64F0096CEBC0B302
            33C68897CA6F3428781E839FC5F36001CD4938C17C1F9127C285B115205764C6
            1824170A08D863E0087E95278B66E8A5F81F0910C2079D2C1EB9751590341623
            137B0734A08131D2F0650276C788E8A48C369828429105D073E4084972E6228C
            5FD667218DCCEC31821D5716F3590AD420D35B8C6E0A99D689A5A527C199EDB5
            B824054DAAF6E48C5102809880D8D4398C7F5B4923E98F8C8209DC900B066A64
            6A13A4C9CF9A6C5508E58506BDB1E39C0564378C8E7826948C978A6A5AA27963
            A258A6832588BA0FA94C4AD767A6AD6920CF01908E20CAA500748702063E7639
            82598B8689EBFF66BAAAB7A2A1F295CAA77DD5A52A4105A08E80E3AB1E2AC65F
            321622288398D87A6A1CAF48BA17E1A189AE56AC3BEC9DB0A19436A2009E32B4
            9298E0B5649AB9E27B6AE29B9ABE0389ABA50976B80A4057297049B06FD56EFA
            67AEF24E30E8B6F7761BACA9C45A77100B1B5E5A9909D072A84CBB7F75CA5983
            0780EAAB3EC022FA70B5EAB033F109A2AC0B8041899DC089C57AA26C2DA780DE
            6CE4C2254F78F2B76F22238F642CA8F286CBD0A460293A5E526BEBC150833CCB
            020DB4EDF6DB70BF9D8DB6BDBE11F7DD71336C9AC93E3B8D8E340DACAAC22A97
            4A43280959A943B39F44D6521C4C90477EE70992570E93DECEE12B2CB8C808ED
            0202D2588C74FFBF5B16487651B50EFBF4C7F1AE9D9072B0C72E7B7278CE6E3B
            ECBEF60C14D6A76A9710E92AF428EBA49DA4F0AF6B78B0D6F1AD69B74E9C8708
            0880C12BD44F507DF5C09F70BDF5DC6FFF4AEE9AFB5DE3589F4B633433829790
            783AA9AA61F0BB083B0E8FD7E432013EDFBBB7C9B99D09BD20BCD1CD4A57C64C
            A7B24E984D751E6B5C67E6D72335D8CF5EB4D0DDE6B2E6A8DF956F78C260C601
            B24782E3FD2D1B640912669A670BCFA0C20D08289711EE67B5BEF12E651793CD
            E7C40230F20D0E83CA50081C52E7AE18C0AB840C0CDB03312741F111A3782D00
            1D0E2B684315684C1906099C870ED84318FC507E27C4830A8BC0C217794B7F6F
            BA0BF756F03FFF62B0638B253857325215BD8029EF6CF02321163FD0A303DCEE
            8E3AE8E2605EF8C6181620593C325F0D394839991D235574308503DFE7C3F82D
            70837AB11CE40E47033D7E9187163208254DB0A1F389859026D80F14E711333E
            26D066CFDB640BE875034B5E0D8CBDCB12CB64428C546DD005745C622D2B6387
            238970750A74DD1CEE683B34A8A8041520A6ED5CE94258660A632CC85306B716
            033A69ED65A2D81123ADE848D749B272E462A5F58EF2CDCBD5A2887C249E2AEB
            75256365C3812FF880353BB4973E388B58557CC1151758CEC885F370E4EC2733
            F387C953C18A05626188004069945615442C7CC98AD34E19357ED47364EA638E
            92F03741830AFF71054BB12343C97807E28D0278CB9AD636F5D94D8B42E33800
            D568C3F0F733300DC314294C223C6F200F69401454FF5ADC0859D79CE2897336
            321D55F8D2298C8322010134D929E21252B0E5A18DA8C3D9CB7192C62A166DB4
            850485580CD367040438708B389A28F3B05A1AA3C6D4AB33056B479F29C02A08
            0F00B4FA2545D5E6D27072350E49FD95C38C18402C684CAD570D665F15D6416A
            54CD8BAF2C28B11469859809A36C2B75C13E39A3D5634E15AE4AA52961356985
            270A1598A8DC875B2916589E2DD5997D0CA0549FD081B1E115B171642B675F2A
            4E6C8056B0A2652ABAE4248527EE09B67B759E6A9387D13E38F6AB9045D45C63
            5BC1C045A165FFC4386D728BCADB9C65F4B7AE0D2E6C8F712C4026E189B735E5
            5A15BB5C35F4F6B9718D6EBE80B60C5090D508D204894AAD9A5BF6EAA3B37FF5
            ED63D92459EA120331B32582F0980500EDAE37B5FF0DDB51E11B5AB912B6BEA7
            302F10ECA2CBAAC2B191726C2B6F034C61E082B5A6AA43C73B86F68332868863
            1FE6668877EBDEB70E9842C2BD263C46AA03550812190E4E2C84F30160D68237
            1FBA43F1FEE8695DFCD2B069EA157245DBCB58E7B616C9AF2D70E7C4A2611F60
            A01E4C0BCF7E63CCD219F715A646BE3193944C415B1E01210CC6541FF3A9D996
            2EB70CCDEDAA9AA57BE1A3BD6C0815A80700A18CDC074F39C2FF045589C37BE2
            0BB7AF085F76FF873A8E5BE0ED6655C28442EA91C581CEF10E97C53B50C552C2
            7C8E20F777C8E228F277F71C56FAFAF1BE3AC0803BEF40EA7378188186E62B95
            DF7B654E6759AC7FE64105664DEBFB6096BF20D6ED993DAB67E812186262D441
            0692496C5AC77920A64EB67F898CE9012D1ACB1CF51B33BA4C023A56C0AC664D
            A600344019C8492001D726C8ADE9DC82CDBA3485CC06ECA6C39164BF911699EB
            8E87406302EF781B1BC6B896B2AE115DE566C7778FE395A1081050A5CABD7B26
            097877C13560F0460923DB3256767BD1BC6A675F7235D0A438C121D2718F0B64
            DE353B34B7F19CE96FFB3ADC2FFC0027E880905ABB3C4AC726739DCD3C72BC28
            BAD7FC1E2C1FFF1509E69F3BBD18202FB3C819CEEB7D83A3D392FD8026A3F574
            A7C39C71A80E87AA3FCB6A369B4BD25DEF3AA5335B6F3B535D02E85683A6593D
            5D79F83CED518AFAD0A7CEED708646C0265FB3D35285F7B47F7DA89A510BC40B
            CC01FDAC818A310F8C7CCD5E6E36E835D781593CDBBDB0F915C04BF12747B618
            3AAF029D3CE002A84FBDEA57CFFAD6BBFEF5B08FFDEB3912D980A0C402B8CFBD
            EE77CFFBDEFBFEF7C00FBEEF2F7FD5E618DFF8AD2EBCF205426F16E8E4F8D0E7
            CC7C974FFD7334DFF3D1CF3E3F925FFDEE1BE3FA2A088446C64FFEF223E211E5
            D684FAD7CFFEF6BB1F136894BCFCE74FFFFADBFFFEF8CFBFFEF7CFFFFEFBFFFF
            308001153080FF0458800678800898800AB8800CD88006981B2370010C308114
            58811678811898811AB8811CD88116B801395001043082245882267882289882
            2AB8822CD88226982C0C30003238833458833678833898833AB8833C58838942
            0322E8824238844458842808833D98844AB8844C88833F380341688452388554
            488248D8845828830AA00011908559F8843210851EE0806458866678861E6085
            25108332E8816EB88177A0006F3887164883E4F6025198606C108557380060B8
            03FF33048D31837F080379387F7CB886848815D9708738408385888724A8876B
            908824C0867E38044B016B3A808991E80287287F9638029E3804D550000E3004
            761882934802FF32710052155003378B03978A69A08697B88823E08539180109
            213CBC9883B928839FD802A1280204E01010E58AB4D88CB3E8006D318A228089
            90128C37A8001E220D5D688D34C800240089AC38823B45820AF107B2981CE796
            8E71876E30306DEBA88EE7A6101E4002D23801A5B88BDC4883D2E05E05A000F9
            4883C3988938708C1350823D05810AF132B6B1900B394631C09010E95BA8388F
            B738827DD824FF3883B2214F09919103E08DF828838E688CAD380226782C5DF5
            4E491033A84800142902F5788F22E091BEB81E77E091031090C5C802047982F2
            503F22C310397504F5000123F892131093BA389319898DA42002A6B08DF90892
            4C498CE14800FFE36882CA98344741893FB00A12408248A994561992F9B88FCA
            D28F1EA99357999527694013C0926E6404F5E00062498FB8488A4B390119E98B
            C6C12A0D909154C9973338923C5992C88882A79096C126043113967759910470
            91DFF88FD848283799916C399088599028280FDE8110EBD403D4609791099379
            398D855999F9E89469540052698D83098E9C298E249082CA28171BD23F462013
            263896A9698F7B9991F53455FEF88F9B79033D998262717693C30318B0502420
            3C465982C069918A589655698DBEB843F4F806FF389BAB599B58799B290801C5
            89105E3903C273249A7682D73999D92990DB198C976902DC019BC8A997DA6903
            CB8982CAF81FFF2CC98933B01402E29BBF8997D8999C849984B16983D24056A2
            709C38F8A03A289EFD5903FFA9986FE09CA31903C2533C5ED392092A99943902
            167A837E99A232589C1945A136888D81C9835DC8A01ADA992BF893AF80103CF6
            022E9153F58082F179A2A031A33AE897304A833529309979833E45A32EBA8AE4
            E99628889EE932A03B909065D04942AAA0F2999CD460A4159A0D38789F28A08D
            D748A647AA92AA99A14088A32B084250B99839209765E25BA659A2A8B9A0FC39
            00028210495A83D818874EFA528A11A803E05305B0838ACA9AF4E99F70AA82F2
            201761AA0347F11F41DAA5263A9F1E11A26A59A60BB1A836784F27600762AA85
            6F109539A8A8FF77DAA68F7AA3B669922BB8952280A538101674409D2938A49C
            3A0231430D883A004E39A135B8A429008C3518A1A2C0A23ED54B8E6A982BB0A1
            CC599C608103BB9921A041A2F0E9A5441A2ABB720729EA94AB20A8CDB002AA3A
            83831A69E1BA17CEDAA73B19AD91AA8256FA1F0801AD2870A90022162AC8AB0C
            8A96CC60A1FB580A9F2A83FBC850C43A83110A1A813AA83C5757B4A99CF1AA82
            72EAAD734903618106A5B9AFDCDAAB2380961D200F109A3CD440831297027A30
            837E49167690A47E2917CB6AA36F1AAB89C982932A0282660372F91FFAAAB19B
            CAA04EF90A0472AA011B94C7898D016602C89AA86EB4B24A4AA741B92A520AB1
            32EB992C48ABFF71B932347014187B07D5B9AB1BEBB3021433623A39232BAC15
            9B02AA9AB28005A34EEBAD39E9AE6D699E2D58B3D97AB42EC010FF210F2CC8AF
            7D0A29BE7826C243A1CF690AFE88441FA296090B93E0D9A21654AB7780A1AF1A
            B3E529AB2ED89C23FA513080100DA0B27790A75EDBB3708BA2CFE95BC7F99CD4
            E0972D306D6FA0B6D673B24ABBB9DF1998300B85119BA39551AD32E015AF80A0
            2BC8B7AE8A91A3EB5B1160AC6767382EB02189ABB88139A85A9215906BAF265B
            BB71CA9B14BB9E46962E19BBB75F1BBA33899625500F669A9204CA8C253B0181
            EBA2ACE28FB31B86D22BAF9511882FB09BE4C3A52DE8BBC2D99F4A0B94241052
            26200FA06664FF87A35044D38F90FBAE83D3BE922A435CD198B142AD772084F6
            2B937CE99A9C8492DF154FAB0048585B3A35CABD903AB54518A069D9442AB09B
            72B10A5DABBDA0FBBBDF18BE03921FE5F2BF28E00785A44A37F9BC714BB94368
            A5BA991F2D400D3D9C104318C1C3F9B7C77AB68761B7F92AAAEB1B03D22A84A6
            405C4A7487317324990AC1DBEBAAD588BAC73ABE37209D4C1A98059CC3335B84
            9F34717535C03B420D295CBF597CBF8FCAB84E107FD8200132D8C48688C0557B
            C600322E5BE4066BCCB54548C4F89BBF59C0B4383CA5726B84566A43F234C307
            C007230A994448C8716CC886F5A9782C89204C858D3C521AD25512E0B958BCC2
            708C9166FB94FF57B0AC1FE9A8061CBD9D4C8588D1A31249CAA5BCA75FEAC1A8
            FAA14DD0A49B0C8A7A0CC56D6BB2D960CBB79C94C129C13268C457B0216DF8AC
            644CB55548B7C653CC5468C9A8CCC556E0BA6FCBC28AACC35428C20D55006D3C
            C86F4C8DAC19BC529015CF6C96AF2C30C13C84F2B002D450852E79CEC349B098
            3B054C7BC71E0CAB935BC65568A52025C45588CDAC39B45570B0892CB5012DCD
            03ADCEFB6BD0D78CCF859CCAABAC9FFEECCD0E4DA555A88C054DC95388D021E9
            C22F208001871777811776A41FB45C373338C6DF2CD0E12CD1236CCF245D95CC
            DC02D11916FD24011A00C62CD3A4DD7CCAD16CCF2448D073523A222D8539DDA0
            DA9C02D19990FF6FB085C33BBC0370D511B085AC0A0FE3CBCD0DFDC10F8DD423
            A8D422E09D377DD0167DC9727CAC6161D54CB8D5AC2A3DB122A6BF4C92B16CCF
            66DD235A72C523BDD6D588B0FB0C934BD100883ABC5B98D8566DA172AD142AD4
            CFADECCE474DD6F30C583BB5C00580D36B8DCAFAAC25C7910D5CA8A40AD0D595
            63D8A18DB28A9A3E07BBD1463DD3103D85E21C9443A96FE55CC99BEDA83F3B27
            3E75DA594DD5098117B1A3D23061D85219013E0577132D95610DD01E2D85CA18
            36239A3DD950DBC74C966C6DB61A200293010ADBB8D50C31CA023034403B02D1
            1316868DB21B0CAE00F9CF92DBDC4568A56E442047AB440961CC6E6CCACA8CDE
            07D0015045A8FF593DA809A1016540C70253D814EA53A8E0CC31EDCA932D85F0
            8DDC36CBC013D0014BD1D42EF8D44D0B7780B38D000E8B37F00FB3A1101C2E16
            DCCCDA12CCDC8BBCC30C610DA2CC5002A0A8D4FDB9B8DCAD35C81033EA97F040
            2E045E4D3DB5CC36DE8DD0ECDA21FCE03B15A6321C97153EC4B76D964ABBBA66
            FB06D66B039AA69F389EA4777D9879DD820E40136DB1DD861B4D0C61DF7A8ACC
            7CAAC58EFABAFADC0CD7B0E336D0DF6A89A4402ED9422E84CF8DB947E1C5D3A9
            10317E9A649ECB1CDDA05A1898C6FDE544A069FEE88B0F7AE5F09AE52A58E77F
            E0E5AA320390BEE7F78CDFF98CAE59BD8C4A00AC591D9BCBDDDE298E9BD9405C
            7D2C9436B014FF625EE933CEB1F599E98DBB04617A838A7EC08CFE99D9C01717
            8B030AD1BB4BDEEAE6F3D24010B83528D31D1DEA2768A5A49E94A66EAD88C1B3
            ABCEA0C9EA8CD2DE4F56CEDEB45BEB26B8C111DE9C3A40DFF68DE1E83AEDE2FE
            4DCA1DE4C50ECE2768B5F6C4143BC0C632DEE7348E93F25E83B30ECB633DABD5
            00811239EE9543DD961CD8F33EEFC42ED6EE5D82CA28553ECDEF90E3EFBD0EE8
            018F93F50ECF53AB16D6FDCE5910B5048F88C9BC976A71E2A02E8A1BEFA63DF1
            B0190FF265DEDA92E7F1D7EE9218D0F22EFFF2301FF3323FF3345FF3364FF369
            78F298C80018807A3D7F013F1FF43E3FF4404FF4425FF4487FF44A6FF44C9FF4
            448FF1004DD663523FF53AFFF0569F84161F4A54BFF552DF8757FFF53798F5C8
            C4F5645F855E0FF6682FF232208067D8F66EFFF609A8EF1320817458F7767FF7
            19088200B8F77CDFF77EFFF7801FF8823FF8845FF8867FF8889FF88ABFF88CDF
            F88EFFF8901FF9381002003B}
          Stretch = True
        end
        object QRShape6: TQRShape
          Left = 0
          Top = 74
          Width = 718
          Height = 7
          Frame.Color = clSilver
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            18.520833333333330000
            0.000000000000000000
            195.791666666666700000
            1899.708333333333000000)
          Brush.Color = clSilver
          Pen.Color = clSilver
          Shape = qrsRectangle
        end
        object QRMemoFiltro: TQRMemo
          Left = 0
          Top = 56
          Width = 641
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            0.000000000000000000
            148.166666666666700000
            1695.979166666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object PageFooterBand1: TQRBand
        Left = 38
        Top = 161
        Width = 718
        Height = 24
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
          63.500000000000000000
          1899.708333333333000000)
        BandType = rbPageFooter
        object QRShape1: TQRShape
          Left = 0
          Top = 2
          Width = 718
          Height = 3
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            7.937500000000000000
            0.000000000000000000
            5.291666666666667000
            1899.708333333333000000)
          Brush.Color = clSilver
          Pen.Color = clSilver
          Shape = qrsRectangle
        end
        object QRLabel3: TQRLabel
          Left = 0
          Top = 8
          Width = 36
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            21.166666666666670000
            95.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Pagina:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRSysData2: TQRSysData
          Left = 40
          Top = 8
          Width = 35
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            105.833333333333300000
            21.166666666666670000
            92.604166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsPageNumber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          OnPrint = QRSysData2Print
          ParentFont = False
          Transparent = False
          FontSize = 8
        end
        object QRSysData1: TQRSysData
          Left = 658
          Top = 8
          Width = 57
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1740.958333333333000000
            21.166666666666670000
            150.812500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
          FontSize = 8
        end
      end
      object DetailBand1: TQRBand
        Left = 38
        Top = 145
        Width = 718
        Height = 16
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
          42.333333333333330000
          1899.708333333333000000)
        BandType = rbDetail
        object QRDBText2: TQRDBText
          Left = 8
          Top = 1
          Width = 38
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            21.166666666666670000
            2.645833333333333000
            100.541666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxM
          DataField = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object QRDBText3: TQRDBText
          Left = 120
          Top = 1
          Width = 58
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            317.500000000000000000
            2.645833333333333000
            153.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxM
          DataField = 'UserInsert'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object QRDBText5: TQRDBText
          Left = 232
          Top = 1
          Width = 59
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            613.833333333333300000
            2.645833333333333000
            156.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxM
          DataField = 'DataInsert'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object QRDBText6: TQRDBText
          Left = 376
          Top = 1
          Width = 66
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            994.833333333333300000
            2.645833333333333000
            174.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxM
          DataField = 'UserUpdate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object QRDBText7: TQRDBText
          Left = 496
          Top = 1
          Width = 67
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1312.333333333333000000
            2.645833333333333000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = RxM
          DataField = 'DataUpdate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
      end
      object ColumnHeaderBand1: TQRBand
        Left = 38
        Top = 125
        Width = 718
        Height = 20
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
          52.916666666666670000
          1899.708333333333000000)
        BandType = rbColumnHeader
        object QRLabel9: TQRLabel
          Left = 0
          Top = 0
          Width = 42
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            0.000000000000000000
            0.000000000000000000
            111.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C'#211'DIGO'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel10: TQRLabel
          Left = 120
          Top = 0
          Width = 102
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            317.500000000000000000
            0.000000000000000000
            269.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'USU'#193'RIO INSER'#199#195'O'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel11: TQRLabel
          Left = 232
          Top = 0
          Width = 29
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            613.833333333333300000
            0.000000000000000000
            76.729166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'DATA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel12: TQRLabel
          Left = 376
          Top = 0
          Width = 110
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            994.833333333333300000
            0.000000000000000000
            291.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'USU'#193'RIO ALTERA'#199#195'O'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel13: TQRLabel
          Left = 496
          Top = 0
          Width = 29
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1312.333333333333000000
            0.000000000000000000
            76.729166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'DATA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRShape2: TQRShape
          Left = 0
          Top = 15
          Width = 718
          Height = 3
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            7.937500000000000000
            0.000000000000000000
            39.687500000000000000
            1899.708333333333000000)
          Brush.Color = clSilver
          Pen.Color = clSilver
          Shape = qrsRectangle
        end
      end
    end
    object GroupBoxPeriodo: TGroupBox
      Left = 8
      Top = 8
      Width = 265
      Height = 49
      Caption = 'Data da Altera'#231#227'o'
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
    object CboTabela: TComboBox
      Left = 8
      Top = 80
      Width = 265
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 112
      Width = 265
      Height = 41
      Caption = 'Tipo de Altera'#231#227'o'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ambos'
        'Inser'#231#227'o'
        'Altera'#231#227'o')
      TabOrder = 3
    end
    object EditUsuario: TEdit
      Left = 8
      Top = 176
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 8
      TabOrder = 4
      OnExit = EditUsuarioExit
      OnKeyDown = EditUsuarioKeyDown
      OnKeyPress = EditAnoKeyPress
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 205
    Width = 280
    Height = 57
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object BtnImprimir: TBitBtn
      Left = 12
      Top = 8
      Width = 81
      Height = 41
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BtnVisualizarClick
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
    object BtnVisualizar: TBitBtn
      Left = 100
      Top = 8
      Width = 81
      Height = 41
      Caption = '&Visualizar'
      TabOrder = 1
      OnClick = BtnVisualizarClick
      Glyph.Data = {
        5E040000424D5E04000000000000360000002800000012000000130000000100
        18000000000028040000C40E0000C40E00000000000000000000B0C8D0B0C8D0
        B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0
        C8D0B0C8D0B0C8D00000B0C8D000000000000000000000000000000000000000
        0000000000000000000000000000000000B0C8D0B0C8D0000000000000B0C8D0
        0000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000B0C8D0000000000000000000B0C8D00000B0C8D0000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
        007F7F7F000000000000B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000007F7F7FBFBFBFBFBFBF7F7F7F0000007F7F7FB0
        C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00007F7F7FBFBFBFBFBFBFFFFF007F7F7F7F7F7F000000B0C8D0B0C8D0B0C8D0
        0000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
        BFBFBFBFBFBF7F7F7FBFBFBF000000B0C8D0B0C8D0B0C8D00000B0C8D0000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFFFFF00BFBFBFBFBFBF7F7F
        7FBFBFBF000000B0C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000007F7F7FFFFF00FFFF00BFBFBF7F7F7F7F7F7F000000B0
        C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000007F7F7FBFBFBFBFBFBF7F7F7F000000B0C8D0B0C8D0B0C8D0B0C8D0
        0000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000B0C8D0B0C8D0B0
        C8D0B0C8D0B0C8D00000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000BFBFBF000000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0
        0000B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0000000
        000000000000000000000000000000000000000000000000B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0
        C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0
        C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0
        0000}
    end
    object BtnSair: TBitBtn
      Left = 188
      Top = 8
      Width = 81
      Height = 41
      Caption = 'Sai&r'
      TabOrder = 2
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
  end
  object RxM: TRxMemoryData
    FieldDefs = <>
    Left = 240
    Top = 48
    object RxMCodigo: TIntegerField
      FieldName = 'Codigo'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object RxMUserInsert: TStringField
      FieldName = 'UserInsert'
      Size = 12
    end
    object RxMDataInsert: TDateTimeField
      FieldName = 'DataInsert'
    end
    object RxMUserUpdate: TStringField
      FieldName = 'UserUpdate'
      Size = 12
    end
    object RxMDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
  end
end
