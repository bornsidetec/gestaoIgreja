unit EnvelopeDizimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, RxGIF, DB, RxMemDS, RLReport;

type
  TFormEnvelopeDizimo = class(TForm)
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
  FormEnvelopeDizimo: TFormEnvelopeDizimo;

implementation

{$R *.dfm}

procedure TFormEnvelopeDizimo.FormCreate(Sender: TObject);
begin
  Rx.Open;
  Rx.Append;
  RxCodigo.AsInteger := 1;
  Rx.Post;
end;

procedure TFormEnvelopeDizimo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Rx.Close;
  FormEnvelopeDizimo := nil;
  Action := caFree;
end;

end.
