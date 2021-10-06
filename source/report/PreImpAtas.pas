unit PreImpAtas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, QRCtrls, RxGIF, QuickRpt, ExtCtrls, MemDS,
  DBAccess, Uni;

type
  TFormPreImpAtas = class(TForm)
    Rx: TRxMemoryData;
    RxCodigo: TIntegerField;
    QuickRep: TQuickRep;
    DetailBand2: TQRBand;
    QRDBText2: TQRDBText;
    RxDescTipoAtas: TStringField;
    PageHeaderBand1: TQRBand;
    QRShape67: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel82: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape70: TQRShape;
    QRShape73: TQRShape;
    QRLabel83: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QryConfig: TUniQuery;
    QryConfigNOMEIGREJA: TStringField;
    QryConfigLOGOIGREJA: TMemoField;
    QRDBImage1: TQRDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPreImpAtas: TFormPreImpAtas;

implementation

uses UDmJetro;

{$R *.dfm}

procedure TFormPreImpAtas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryConfig.Close;
  Rx.Close;
  FormPreImpAtas := nil;
  Action := caFree;
end;

procedure TFormPreImpAtas.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Rx.Open;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Descricao from TiposAta order by Descricao');
    Open;
    while not Eof do
    begin
      Rx.Append;
      RxDescTipoAtas.AsString := FieldByName('Descricao').AsString;
      Rx.Post;
      Next;
    end;
  end;

end;

procedure TFormPreImpAtas.FormCreate(Sender: TObject);
begin
  QryConfig.Open;
end;

end.
