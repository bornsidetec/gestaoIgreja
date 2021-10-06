unit PreImpRDC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, QRCtrls, RxGIF, QuickRpt, ExtCtrls, MemDS,
  DBAccess, Uni;

type
  TFormPreImpRDC = class(TForm)
    Rx: TRxMemoryData;
    RxCodigo: TIntegerField;
    QuickRep: TQuickRep;
    QRBand1: TQRBand;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRLabel2: TQRLabel;
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
    QRLabel90: TQRLabel;
    QRDBText1: TQRDBText;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBImage1: TQRDBImage;
    QRDBText191: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPreImpRDC: TFormPreImpRDC;

implementation

{$R *.dfm}

procedure TFormPreImpRDC.FormCreate(Sender: TObject);
begin
  QryConfig.Open;

  Rx.Open;
  Rx.Append;
  RxCodigo.AsInteger := 1;
  Rx.Post;

end;

procedure TFormPreImpRDC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryConfig.Close;
  Rx.Close;
  FormPreImpRDC := nil;
  Action := caFree;
end;

end.
