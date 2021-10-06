unit PreImpViagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls, DB, RxMemDS, RxGIF, MemDS,
  DBAccess, Uni;

type
  TFormPreImpViagens = class(TForm)
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape14: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape8: TQRShape;
    QRLabel32: TQRLabel;
    QRShape9: TQRShape;
    QRLabel33: TQRLabel;
    QRShape10: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape23: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape24: TQRShape;
    QRLabel37: TQRLabel;
    QRShape25: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape11: TQRShape;
    QRLabel10: TQRLabel;
    QRShape12: TQRShape;
    QRLabel11: TQRLabel;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape17: TQRShape;
    QRLabel13: TQRLabel;
    QRShape18: TQRShape;
    QRLabel15: TQRLabel;
    QRShape15: TQRShape;
    QRShape19: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel14: TQRLabel;
    QRShape26: TQRShape;
    QRLabel16: TQRLabel;
    QRShape31: TQRShape;
    QRLabel17: TQRLabel;
    QRShape32: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape33: TQRShape;
    QRLabel21: TQRLabel;
    QRShape34: TQRShape;
    QRLabel22: TQRLabel;
    QRShape35: TQRShape;
    QRLabel23: TQRLabel;
    QRShape36: TQRShape;
    Rx: TRxMemoryData;
    RxCodigo: TIntegerField;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBText30: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPreImpViagens: TFormPreImpViagens;

implementation

{$R *.dfm}

procedure TFormPreImpViagens.FormCreate(Sender: TObject);
begin
  QryConfig.Open;
  Rx.Open;
  Rx.Append;
  RxCodigo.AsInteger := 1;
  Rx.Post;
end;

procedure TFormPreImpViagens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryConfig.Close;
  Rx.Close;
  FormPreImpViagens := nil;
  Action := caFree;
end;

end.
