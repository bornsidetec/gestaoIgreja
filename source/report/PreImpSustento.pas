unit PreImpSustento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, QRCtrls, jpeg, QuickRpt, ExtCtrls, RxGIF, MemDS,
  DBAccess, Uni;

type
  TFormPreImpSustento = class(TForm)
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
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
    QRShape8: TQRShape;
    QRLabel32: TQRLabel;
    QRShape9: TQRShape;
    QRLabel33: TQRLabel;
    QRShape10: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel35: TQRLabel;
    Rx: TRxMemoryData;
    RxCodigo: TIntegerField;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBText15: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBText16: TQRDBText;
    QRLabel5: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPreImpSustento: TFormPreImpSustento;

implementation

{$R *.dfm}

procedure TFormPreImpSustento.FormCreate(Sender: TObject);
begin
  QryConfig.Open;
  Rx.Open;
  Rx.Append;
  RxCodigo.AsInteger := 1;
  Rx.Post;
end;

procedure TFormPreImpSustento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryConfig.Close;
  Rx.Close;
  FormPreImpSustento := nil;
  Action := caFree;
end;

end.
