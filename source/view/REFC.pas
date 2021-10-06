unit REFC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, QuickRpt, QRCtrls, jpeg, DB,
  RxMemDS, DateUtils, Spin, RxGIF, Mask, rxToolEdit, MemDS, DBAccess, Uni;

type
  TFormREFC = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    Label1: TLabel;
    ComboBoxMes: TComboBox;
    BtnImprimir: TBitBtn;
    BtnVisualizar: TBitBtn;
    BtnSair: TBitBtn;
    RxMREFC: TRxMemoryData;
    LblAno: TLabel;
    EditAno: TEdit;
    RxMREFCIgrejaBairro: TStringField;
    RxMREFCCNPJ: TStringField;
    RxMREFCDia: TStringField;
    RxMREFCMes: TStringField;
    RxMREFCAno: TStringField;
    RxMREFCPastor: TStringField;
    RxMREFCDom: TStringField;
    RxMREFCSeg: TStringField;
    RxMREFCTer: TStringField;
    RxMREFCQua: TStringField;
    RxMREFCQui: TStringField;
    RxMREFCSex: TStringField;
    RxMREFCSab: TStringField;
    RxMREFCHorario: TStringField;
    RxMREFCCuras: TIntegerField;
    RxMREFCBatismoES: TIntegerField;
    RxMREFCCriancas: TIntegerField;
    RxMREFCConversoes: TIntegerField;
    RxMREFCVisitantes: TIntegerField;
    RxMREFCPresentes: TIntegerField;
    RxMREFCCodigo: TIntegerField;
    RxMREFCDizimista1: TStringField;
    RxMREFCDizimista2: TStringField;
    RxMREFCDizimista4: TStringField;
    RxMREFCDizimista5: TStringField;
    RxMREFCDizimista6: TStringField;
    RxMREFCDizimista7: TStringField;
    RxMREFCDizimista8: TStringField;
    RxMREFCDizimista9: TStringField;
    RxMREFCDizimista3: TStringField;
    RxMREFCTotalDizimos: TCurrencyField;
    RxMREFCTotalArrecadacao: TCurrencyField;
    RxMREFCDizimo1: TCurrencyField;
    RxMREFCDizimo2: TCurrencyField;
    RxMREFCDizimo3: TCurrencyField;
    RxMREFCDizimo4: TCurrencyField;
    RxMREFCDizimo5: TCurrencyField;
    RxMREFCDizimo6: TCurrencyField;
    RxMREFCDizimo7: TCurrencyField;
    RxMREFCDizimo8: TCurrencyField;
    RxMREFCDizimo9: TCurrencyField;
    RxMREFCOfertasGerais: TCurrencyField;
    RxMREFCOfertasEspeciais: TCurrencyField;
    RxMREFCOutrasEntradas: TCurrencyField;
    RxMREFCOfertasMissoes: TCurrencyField;
    RxMREFCPastoresPresentes1: TStringField;
    RxMREFCPastoresPresentes2: TStringField;
    RxMREFCVisitasEspeciais1: TStringField;
    RxMREFCVisitasEspeciais2: TStringField;
    RxMREFCPregador: TStringField;
    RxMREFCDiaconos1: TStringField;
    RxMREFCDiaconos2: TStringField;
    RxMREFCTesoureiro: TStringField;
    RxMREFCProntuario: TStringField;
    RxMREFCDizimista10: TStringField;
    RxMREFCDizimo10: TCurrencyField;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape55: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape14: TQRShape;
    QRShape19: TQRShape;
    QRShape34: TQRShape;
    QRShape33: TQRShape;
    QRShape37: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape6: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape38: TQRShape;
    QRShape12: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape36: TQRShape;
    QRShape35: TQRShape;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    QRShape30: TQRShape;
    QRShape29: TQRShape;
    QRShape28: TQRShape;
    QRShape27: TQRShape;
    QRShape26: TQRShape;
    QRShape25: TQRShape;
    QRShape24: TQRShape;
    QRShape23: TQRShape;
    QRShape22: TQRShape;
    QRShape21: TQRShape;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape13: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape20: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRImage2: TQRImage;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape62: TQRShape;
    QRLabel77: TQRLabel;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    RxMRDC: TRxMemoryData;
    RxMRDCCodigo: TIntegerField;
    RxMRDCIgrejaBairro: TStringField;
    RxMRDCCNPJ: TStringField;
    RxMRDCDia: TStringField;
    RxMRDCMes: TStringField;
    RxMRDCAno: TStringField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel91: TQRLabel;
    QRShape81: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel107: TQRLabel;
    QRImage1: TQRImage;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape80: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRLabel106: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText110: TQRDBText;
    QRDBText112: TQRDBText;
    QRDBText115: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape109: TQRShape;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRDBText84: TQRDBText;
    RxMRDCDizimos: TCurrencyField;
    RxMRDCDiaconos1: TStringField;
    RxMRDCDiaconos2: TStringField;
    RxMRDCTesoureiro: TStringField;
    RxMRDCTotalRDC: TCurrencyField;
    RxMRDCDizimista1: TStringField;
    RxMRDCDizimo1: TCurrencyField;
    RxMRDCCheque1: TStringField;
    RxMRDCBanco1: TStringField;
    RxMRDCDizimista2: TStringField;
    RxMRDCDizimo2: TCurrencyField;
    RxMRDCBanco2: TStringField;
    RxMRDCCheque2: TStringField;
    RxMRDCSeq: TIntegerField;
    RxMREFCCheque1: TStringField;
    RxMREFCCheque2: TStringField;
    RxMREFCCheque3: TStringField;
    RxMREFCCheque4: TStringField;
    RxMREFCCheque5: TStringField;
    RxMREFCCheque6: TStringField;
    RxMREFCCheque7: TStringField;
    RxMREFCCheque8: TStringField;
    RxMREFCCheque9: TStringField;
    RxMREFCCheque10: TStringField;
    RxMREFCBanco1: TStringField;
    RxMREFCBanco2: TStringField;
    RxMREFCBanco3: TStringField;
    RxMREFCBanco4: TStringField;
    RxMREFCBanco5: TStringField;
    RxMREFCBanco6: TStringField;
    RxMREFCBanco7: TStringField;
    RxMREFCBanco8: TStringField;
    RxMREFCBanco9: TStringField;
    RxMREFCBanco10: TStringField;
    QRDBText109: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRDBText126: TQRDBText;
    QRDBText127: TQRDBText;
    QRDBText128: TQRDBText;
    QRDBText129: TQRDBText;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText132: TQRDBText;
    QRDBText133: TQRDBText;
    QRDBText134: TQRDBText;
    QRDBText135: TQRDBText;
    QRDBText136: TQRDBText;
    QRDBText137: TQRDBText;
    QRDBText138: TQRDBText;
    QRDBText139: TQRDBText;
    RxMREFCTotalRDC: TCurrencyField;
    RxMRDCDizimista3: TStringField;
    RxMRDCDizimista4: TStringField;
    RxMRDCDizimista5: TStringField;
    RxMRDCDizimista6: TStringField;
    RxMRDCDizimista7: TStringField;
    RxMRDCDizimista8: TStringField;
    RxMRDCDizimista9: TStringField;
    RxMRDCDizimista10: TStringField;
    RxMRDCDizimo3: TCurrencyField;
    RxMRDCDizimo4: TCurrencyField;
    RxMRDCDizimo5: TCurrencyField;
    RxMRDCDizimo6: TCurrencyField;
    RxMRDCDizimo7: TCurrencyField;
    RxMRDCDizimo8: TCurrencyField;
    RxMRDCDizimo9: TCurrencyField;
    RxMRDCDizimo10: TCurrencyField;
    RxMRDCCheque3: TStringField;
    RxMRDCCheque4: TStringField;
    RxMRDCCheque5: TStringField;
    RxMRDCCheque6: TStringField;
    RxMRDCCheque7: TStringField;
    RxMRDCCheque8: TStringField;
    RxMRDCCheque9: TStringField;
    RxMRDCCheque10: TStringField;
    RxMRDCBanco3: TStringField;
    RxMRDCBanco4: TStringField;
    RxMRDCBanco5: TStringField;
    RxMRDCBanco6: TStringField;
    RxMRDCBanco7: TStringField;
    RxMRDCBanco8: TStringField;
    RxMRDCBanco9: TStringField;
    RxMRDCBanco10: TStringField;
    RxMRDCDizimista11: TStringField;
    RxMRDCDizimista12: TStringField;
    RxMRDCDizimista13: TStringField;
    RxMRDCDizimista14: TStringField;
    RxMRDCDizimista15: TStringField;
    RxMRDCDizimista16: TStringField;
    RxMRDCDizimista17: TStringField;
    RxMRDCDizimista18: TStringField;
    RxMRDCDizimista19: TStringField;
    RxMRDCDizimista20: TStringField;
    RxMRDCDizimista25: TStringField;
    RxMRDCDizimista21: TStringField;
    RxMRDCDizimista22: TStringField;
    RxMRDCDizimista23: TStringField;
    RxMRDCDizimista24: TStringField;
    RxMRDCDizimo11: TCurrencyField;
    RxMRDCDizimo12: TCurrencyField;
    RxMRDCDizimo13: TCurrencyField;
    RxMRDCDizimo14: TCurrencyField;
    RxMRDCDizimo15: TCurrencyField;
    RxMRDCDizimo16: TCurrencyField;
    RxMRDCDizimo17: TCurrencyField;
    RxMRDCDizimo18: TCurrencyField;
    RxMRDCDizimo19: TCurrencyField;
    RxMRDCDizimo20: TCurrencyField;
    RxMRDCDizimo21: TCurrencyField;
    RxMRDCDizimo22: TCurrencyField;
    RxMRDCDizimo23: TCurrencyField;
    RxMRDCDizimo24: TCurrencyField;
    RxMRDCDizimo25: TCurrencyField;
    RxMRDCCheque11: TStringField;
    RxMRDCCheque12: TStringField;
    RxMRDCCheque13: TStringField;
    RxMRDCCheque14: TStringField;
    RxMRDCCheque15: TStringField;
    RxMRDCCheque16: TStringField;
    RxMRDCCheque17: TStringField;
    RxMRDCCheque18: TStringField;
    RxMRDCCheque19: TStringField;
    RxMRDCCheque20: TStringField;
    RxMRDCCheque21: TStringField;
    RxMRDCCheque22: TStringField;
    RxMRDCCheque23: TStringField;
    RxMRDCCheque24: TStringField;
    RxMRDCCheque25: TStringField;
    RxMRDCBanco11: TStringField;
    RxMRDCBanco12: TStringField;
    RxMRDCBanco13: TStringField;
    RxMRDCBanco14: TStringField;
    RxMRDCBanco15: TStringField;
    RxMRDCBanco16: TStringField;
    RxMRDCBanco17: TStringField;
    RxMRDCBanco18: TStringField;
    RxMRDCBanco19: TStringField;
    RxMRDCBanco20: TStringField;
    RxMRDCBanco21: TStringField;
    RxMRDCBanco22: TStringField;
    RxMRDCBanco23: TStringField;
    RxMRDCBanco24: TStringField;
    RxMRDCBanco25: TStringField;
    QRDBText140: TQRDBText;
    QRDBText141: TQRDBText;
    QRDBText142: TQRDBText;
    QRDBText143: TQRDBText;
    QRDBText144: TQRDBText;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    QRDBText147: TQRDBText;
    QRDBText148: TQRDBText;
    QRDBText149: TQRDBText;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRDBText152: TQRDBText;
    QRDBText153: TQRDBText;
    QRDBText154: TQRDBText;
    QRDBText155: TQRDBText;
    QRDBText156: TQRDBText;
    QRDBText157: TQRDBText;
    QRDBText158: TQRDBText;
    QRDBText159: TQRDBText;
    QRDBText160: TQRDBText;
    QRDBText161: TQRDBText;
    QRDBText162: TQRDBText;
    QRDBText163: TQRDBText;
    QRDBText164: TQRDBText;
    QRDBText165: TQRDBText;
    QRDBText166: TQRDBText;
    QRDBText167: TQRDBText;
    QRDBText168: TQRDBText;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRDBText173: TQRDBText;
    QRDBText174: TQRDBText;
    QRDBText175: TQRDBText;
    QRDBText176: TQRDBText;
    QRDBText177: TQRDBText;
    QRDBText178: TQRDBText;
    QRDBText179: TQRDBText;
    QRDBText180: TQRDBText;
    QRDBText181: TQRDBText;
    QRDBText182: TQRDBText;
    QRDBText183: TQRDBText;
    QRDBText184: TQRDBText;
    QRDBText185: TQRDBText;
    QRDBText186: TQRDBText;
    QRDBText187: TQRDBText;
    QRDBText188: TQRDBText;
    QRDBText189: TQRDBText;
    QRDBText190: TQRDBText;
    QRLabel90: TQRLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure QRDBText26Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormREFC: TFormREFC;

implementation

uses UDmJetro, ADODB, Funcoes;

{$R *.dfm}

procedure TFormREFC.BtnVisualizarClick(Sender: TObject);
begin
  if (DateEdit1.Text = '  /  /    ') and (EditAno.Text = EmptyStr) then
  begin
    InfoBox('Ano deve ser informado.');
    EditAno.SetFocus;
    Exit;
  end;
  {
  if not Fechado(ComboBoxMes.ItemIndex + 1, StrToInt(EditAno.Text)) then
  begin
    InfoBox('Antes da impressão realizar o fechamento do' + #13 +
            'Mês de ' + ComboBoxMes.Text + ' de ' + EditAno.Text);
    Abort;
  end;
  }

  BuscarDados;

  if RxMREFC.IsEmpty then
  begin
    InfoBox('Nenhuma informação encontrada.');
    Exit;
  end;
  QryConfig.Open;
  if Sender = BtnImprimir then
    QuickRep1.Print
  else if Sender = BtnVisualizar then
    QuickRep1.Preview;


  if not RxMRDC.IsEmpty then
  begin
    RxMRDC.First;

    if Sender = BtnImprimir then
      QuickRep2.Print
    else if Sender = BtnVisualizar then
      QuickRep2.Preview;

  end;
  QryConfig.Close;
end;

procedure TFormREFC.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormREFC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxMREFC.Close;
  FormREFC := nil;
  Action := caFree;
end;

procedure TFormREFC.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormREFC.QRDBText26Print(sender: TObject; var Value: String);
begin
  if Value = 'R$ 0,00' then
    Value := '';  
end;

procedure TFormREFC.FormCreate(Sender: TObject);
begin
  EditAno.Text := IntToStr(YearOf(Date()));
end;

procedure TFormREFC.BuscarDados;
var
  D, I, Seq : integer;
  TotalDizimo, TotalRDC, OfertasEspeciais: Currency;

begin

  with DMJetro.QryRelatorios do
  begin
    SQL.Clear;

    SQL.Add('SELECT C.*, I.CNPJ, I.EndBairro, I.EndCidade,');
    SQL.Add('       P.Nome as Pastor, P.Prontuario');
    SQL.Add('FROM Cultos C');
    SQL.Add('INNER JOIN Igrejas I ON I.Codigo = C.Igreja');
    SQL.Add('INNER JOIN Pastores P ON P.Codigo = I.Pastor');
    SQL.Add('where C.Data between :dt1 and :dt2');
    if DateEdit1.Date > 0 then
    begin
      ParamByName('dt1').AsDateTime := DateEdit1.Date;
      ParamByName('dt2').AsDateTime := DateEdit1.Date + 0.99999999;
    end
    else
    begin
      ParamByName('dt1').AsDateTime := StrToDate('01/'+ FormatFloat('00',ComboBoxMes.ItemIndex +1) + '/' + EditAno.Text);
      ParamByName('dt2').AsDateTime := StrToDate(FormatDateTime('DD/MM/YYYY',EndOfAMonth(StrToInt(EditAno.Text), ComboBoxMes.ItemIndex +1))) + 0.99999999;
    end;
    SQL.Add('Order by C.Data');

    Open;
    RxMREFC.Close;
    RxMREFC.Open;

    RxMRDC.Close;
    RxMRDC.Open;

    while not Eof do
    begin
      RxMREFC.Append;
      RxMREFCCodigo.AsInteger      := FieldByName('Codigo').AsInteger;
      RxMREFCIgrejaBairro.AsString := FieldByName('EndCidade').AsString + ' - ' + FieldByName('EndBairro').AsString;
      RxMREFCCNPJ.AsString         := Copy(FieldByName('CNPJ').AsString, 9, 4) + '-' + Copy(FieldByName('CNPJ').AsString, 13, 2);
      RxMREFCDia.AsString          := FormatDateTime('DD',FieldByName('Data').AsDateTime);
      RxMREFCMes.AsString          := FormatDateTime('MM',FieldByName('Data').AsDateTime);
      RxMREFCAno.AsString          := FormatDateTime('YY',FieldByName('Data').AsDateTime);

      RxMREFCPastor.AsString       := FieldByName('Pastor').AsString;
      RxMREFCProntuario.AsString   := FieldByName('Prontuario').AsString;
      case DayOfTheWeek(FieldByName('Data').AsDateTime) of
        1: RxMREFCSeg.AsString := 'X';
        2: RxMREFCTer.AsString := 'X';
        3: RxMREFCQua.AsString := 'X';
        4: RxMREFCQui.AsString := 'X';
        5: RxMREFCSex.AsString := 'X';
        6: RxMREFCSab.AsString := 'X';
        7: RxMREFCDom.AsString := 'X';
      end;
      RxMREFCHorario.AsString            := FieldByName('Horario').AsString;
      RxMREFCCuras.AsInteger             := FieldByName('Testemunho').AsInteger;
      RxMREFCBatismoES.AsInteger         := FieldByName('BatismoEspiritoSanto').AsInteger;
      RxMREFCCriancas.AsInteger          := FieldByName('CriancasApresentadas').AsInteger;
      RxMREFCConversoes.AsInteger        := FieldByName('Conversoes').AsInteger;
      RxMREFCVisitantes.AsInteger        := FieldByName('Visitantes').AsInteger;
      RxMREFCPresentes.AsInteger         := FieldByName('TotalPresentes').AsInteger;
      RxMREFCPastoresPresentes1.AsString := FieldByName('PastoresPresentes1').AsString;
      RxMREFCPastoresPresentes2.AsString := FieldByName('PastoresPresentes2').AsString;
      RxMREFCVisitasEspeciais1.AsString  := FieldByName('VisitasEspeciais1').AsString;
      RxMREFCVisitasEspeciais2.AsString  := FieldByName('VisitasEspeciais2').AsString;
      RxMREFCPregador.AsString           := FieldByName('Pregador').AsString;
      RxMREFCDiaconos1.AsString          := FieldByName('Diaconos1').AsString;
      RxMREFCDiaconos2.AsString          := FieldByName('Diaconos2').AsString;
      RxMREFCOfertasGerais.AsCurrency    := FieldByName('OfertasGerais').AsCurrency;

      DMJetro.QryAux3.Close;
      DMJetro.QryAux3.SQL.Clear;
      DMJetro.QryAux3.SQL.Add('SELECT SUM(OC.Valor) Ofertas');
      DMJetro.QryAux3.SQL.Add('FROM OfertantesCulto OC');
      DMJetro.QryAux3.SQL.Add('WHERE OC.Culto = :culto');
      DMJetro.QryAux3.ParamByName('culto').Value := FieldByName('Codigo').AsInteger;
      DMJetro.QryAux3.Open;
      OfertasEspeciais := DMJetro.QryAux3.FieldByName('Ofertas').AsCurrency;
      RxMREFCOfertasEspeciais.AsCurrency := OfertasEspeciais +
                                            FieldByName('OfertasEspeciais').AsCurrency;

      RxMREFCOfertasMissoes.AsCurrency   := FieldByName('OfertasMissoes').AsCurrency;
      RxMREFCOutrasEntradas.AsCurrency   := FieldByName('OutrasEntradas').AsCurrency;

      DMJetro.QryAux3.Close;
      DMJetro.QryAux3.SQL.Clear;
      DMJetro.QryAux3.SQL.Add('SELECT SUM(DC.Valor) Dizimos');
      DMJetro.QryAux3.SQL.Add('FROM DizimistasCulto DC');
      DMJetro.QryAux3.SQL.Add('WHERE DC.Culto = :culto');
      DMJetro.QryAux3.ParamByName('culto').Value := FieldByName('Codigo').AsInteger;
      DMJetro.QryAux3.Open;
      TotalDizimo := DMJetro.QryAux3.FieldByName('Dizimos').AsCurrency;
      //TotalRDC    := DMJetro.QryAux3.FieldByName('Dizimos').AsCurrency;
      RxMREFCTotalDizimos.AsCurrency := TotalDizimo;

      DMJetro.QryAux2.Close;
      DMJetro.QryAux2.SQL.Clear;
      DMJetro.QryAux2.SQL.Add('select M.Nome as Tesoureiro');
      DMJetro.QryAux2.SQL.Add('from CDL');
      DMJetro.QryAux2.SQL.Add('inner join Membros M on M.FichaNumero = CDL.Membro');
      DMJetro.QryAux2.SQL.Add('where CDL.Cargo = 2');
      DMJetro.QryAux2.SQL.Add('  and CDL.Ano = :ano');
      DMJetro.QryAux2.ParamByName('ano').Value := FormatDateTime('YYYY', FieldByName('Data').AsDateTime);
      DMJetro.QryAux2.Open;

      RxMREFCTesoureiro.AsString := DMJetro.QryAux2.FieldByName('Tesoureiro').AsString;

      TotalRDC := 0;
      Seq := 0;

      DMJetro.QryAux2.Close;
      DMJetro.QryAux2.SQL.Clear;
      DMJetro.QryAux2.SQL.Add('select * from DizimistasCulto where Culto = '+ FieldByName('Codigo').AsString);
      DMJetro.QryAux2.Open;

      DMJetro.QryAux2.First;

      for i := 1 to DMJEtro.QryAux2.RecordCount do
      begin
        if i <= 10 then
        begin
          RxMREFC.Fields[i].AsString := DMJetro.QryAux2.FieldByName('Nome').AsString;
          RxMREFC.Fields[i+10].AsCurrency := DMJetro.QryAux2.FieldByName('Valor').AsCurrency;
          RxMREFC.Fields[i+20].AsString   := DMJetro.QryAux2.FieldByName('NumCheque').AsString;
          RxMREFC.Fields[i+30].AsString   := DMJetro.QryAux2.FieldByName('NumBanco').AsString;
        end;

        if i > 10 then
        begin
          if (i - 11) Mod 25 = 0 then
          begin
            inc(Seq);
            RxMRDC.Append;
            RxMRDCCodigo.AsInteger      := RxMREFCCodigo.AsInteger;
            RxMRDCSeq.AsInteger         := Seq;
            RxMRDCIgrejaBairro.AsString := RxMREFCIgrejaBairro.AsString;
            RxMRDCCNPJ.AsString         := RxMREFCCNPJ.AsString;
            RxMRDCDia.AsString          := RxMREFCDia.AsString;
            RxMRDCMes.AsString          := RxMREFCMes.AsString;
            RxMRDCAno.AsString          := RxMREFCAno.AsString;
            RxMRDCDiaconos1.AsString    := RxMREFCDiaconos1.AsString;
            RxMRDCDiaconos2.AsString    := RxMREFCDiaconos2.AsString;
            RxMRDCTesoureiro.AsString   := RxMREFCTesoureiro.AsString;
          end;
          RxMRDCTotalRDC.AsCurrency := RxMRDCTotalRDC.AsCurrency + DMJetro.QryAux2.FieldByName('Valor').AsCurrency;
          RxMRDC.Fields[((i-11) Mod 25)].AsString      := DMJetro.QryAux2.FieldByName('Nome').AsString;
          RxMRDC.Fields[((i-11) Mod 25)+25].AsCurrency := DMJetro.QryAux2.FieldByName('Valor').AsCurrency;
          RxMRDC.Fields[((i-11) Mod 25)+50].AsString   := DMJetro.QryAux2.FieldByName('NumCheque').AsString;
          RxMRDC.Fields[((i-11) Mod 25)+75].AsString   := DMJetro.QryAux2.FieldByName('NumBanco').AsString;

          if (i - 11) Mod 25 = 24 then
          begin
            TotalRDC := TotalRDC + RxMRDCTotalRDC.AsCurrency;
            RxMRDC.Post;
          end;

        end;
        DMJetro.QryAux2.Next;
      end;
      if RxMRDC.State = dsInsert then
        RxMRDC.Post;

      TotalRDC                           := TotalRDC + RxMRDCTotalRDC.AsCurrency;
      RxMREFCTotalRDC.AsCurrency         := TotalRDC;
      RxMREFCTotalArrecadacao.AsCurrency := RxMREFCOfertasGerais.AsCurrency +
                                            RxMREFCOfertasEspeciais.AsCurrency +
                                            RxMREFCOutrasEntradas.AsCurrency +
                                            RxMREFCTotalDizimos.AsCurrency;

      RxMREFC.Post;
      Next;
    end;
  end;

end;

end.
