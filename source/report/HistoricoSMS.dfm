object FormHistoricoSMS: TFormHistoricoSMS
  Left = 251
  Top = 295
  BorderStyle = bsToolWindow
  Caption = 'Hist'#243'rico de SMS'
  ClientHeight = 178
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 178
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object CRDBGrid1: TCRDBGrid
      Left = 2
      Top = 2
      Width = 501
      Height = 174
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
      Align = alClient
      Color = clInfoBk
      DataSource = Ds
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'MENSAGEM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 844
          Visible = True
        end>
    end
  end
  object Ds: TDataSource
    DataSet = qryHistorico
    Left = 392
    Top = 49
  end
  object qryHistorico: TUniQuery
    Connection = DMJetro.Conn
    SQL.Strings = (
      'select distinct(Mensagem) Mensagem '
      'from SMSHistorico'
      'order by data desc')
    Active = True
    Left = 424
    Top = 49
    object qryHistoricoMENSAGEM: TStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'MENSAGEM'
      Required = True
      Size = 140
    end
  end
end
