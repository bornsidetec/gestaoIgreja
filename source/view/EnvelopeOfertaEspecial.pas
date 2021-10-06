unit EnvelopeOfertaEspecial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, RxGIF, DB, RxMemDS, RLReport;

type
  TFormEnvelopeOfertaEspecial = class(TForm)
    Rx: TRxMemoryData;
    RxCodigo: TIntegerField;
    RLReport: TRLReport;
    Ds: TDataSource;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLImage1: TRLImage;
    RLLabel2: TRLLabel;
    RLMemo1: TRLMemo;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnvelopeOfertaEspecial: TFormEnvelopeOfertaEspecial;

implementation

{$R *.dfm}

procedure TFormEnvelopeOfertaEspecial.FormCreate(Sender: TObject);
begin
  Rx.Open;
  Rx.Append;
  RxCodigo.AsInteger := 1;
  Rx.Post;
end;

procedure TFormEnvelopeOfertaEspecial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Rx.Close;
  FormEnvelopeOfertaEspecial := nil;
  Action := caFree;
end;

end.
