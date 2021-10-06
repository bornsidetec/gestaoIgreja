unit ImpRemetentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ExtCtrls, QRCtrls, QuickRpt, DB,
  RxMemDS, Mask, Grids, DBGrids, RXDBCtrl, Menus, RXSpin;

type
  TFormImpRemetentes = class(TForm)
    PanelDados: TPanel;
    PanelBotoes: TPanel;
    SpinEdit1: TRxSpinEdit;
    Label1: TLabel;
    BtnImprimir: TBitBtn;
    BtnSair: TBitBtn;
    Label2: TLabel;
    EditNome: TEdit;
    Label3: TLabel;
    EditRua: TEdit;
    Label4: TLabel;
    EditNumero: TEdit;
    Label5: TLabel;
    EditComplemento: TEdit;
    Label6: TLabel;
    EditBairro: TEdit;
    Label7: TLabel;
    EditCidade: TEdit;
    Label8: TLabel;
    CboEstado: TComboBox;
    SpdBtnAdd: TSpeedButton;
    LabelQtd: TLabel;
    RxRemetentes: TRxMemoryData;
    RxRemetentesNome: TStringField;
    RxRemetentesEndBairro: TStringField;
    RxRemetentesEndComplemento: TStringField;
    RxRemetentesEndCep: TStringField;
    RxRemetentesCIDADEESTADO: TStringField;
    RxRemetentesRUANUMERO: TStringField;
    QuickRep1: TQuickRep;
    DetailBand2: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    RxRemetentesEndRua: TStringField;
    RxRemetentesEndNumero: TStringField;
    RxRemetentesEndCidade: TStringField;
    RxRemetentesEndEstado: TStringField;
    Label9: TLabel;
    EditCEP: TMaskEdit;
    Label10: TLabel;
    SpinCol: TRxSpinEdit;
    Label11: TLabel;
    SpinLin: TRxSpinEdit;
    Ds: TDataSource;
    PopupMenu: TPopupMenu;
    RxDBGrid1: TRxDBGrid;
    Excluir1: TMenuItem;
    SpdBtnClear: TSpeedButton;
    BtnVisualizar: TBitBtn;
    BtnImpPastores: TBitBtn;
    BtnImpIgreja: TBitBtn;
    Rx: TRxMemoryData;
    RxNome: TStringField;
    RxEndRua: TStringField;
    RxEndNumero: TStringField;
    RxEndBairro: TStringField;
    RxEndComplemento: TStringField;
    RxEndCidade: TStringField;
    RxEndEstado: TStringField;
    RxEndCep: TStringField;
    RxRUANUMERO: TStringField;
    RxCIDADEESTADO: TStringField;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure SpdBtnClearClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure RxBeforeDelete(DataSet: TDataSet);
    procedure RxCalcFields(DataSet: TDataSet);
    procedure BtnImpPastoresClick(Sender: TObject);
    procedure BtnImpIgrejaClick(Sender: TObject);
    procedure CboEstadoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function VerificaCampos: Boolean;
  public
    { Public declarations }
    CodigoPastor : String;

  end;

var
  FormImpRemetentes: TFormImpRemetentes;

implementation

uses Funcoes, UDmJetro;

{$R *.dfm}

procedure TFormImpRemetentes.BtnSairClick(Sender: TObject);
begin
  Rx.Close;
  Close;
end;

procedure TFormImpRemetentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormImpRemetentes := nil;
end;

procedure TFormImpRemetentes.EditNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not ( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormImpRemetentes.SpdBtnAddClick(Sender: TObject);
var
  i : Integer;
begin

  if not VerificaCampos then
    Abort;

  For i := 1 to SpinEdit1.AsInteger do
  begin
    Rx.Append;
    RxNome.AsString           := EditNome.Text;
    RxEndRua.AsString         := EditRua.Text;
    RxEndNumero.AsString      := EditNumero.Text;
    RxEndComplemento.AsString := EditComplemento.Text;
    RxEndBairro.AsString      := EditBairro.Text;
    RxEndCidade.AsString      := EditCidade.Text;
    RxEndEstado.AsString      := CboEstado.Text;
    RxEndCep.AsString         := EditCep.Text;
    Rx.Post;
  end;
  LabelQtd.Caption := IntToStr(Rx.RecordCount)
end;

procedure TFormImpRemetentes.FormCreate(Sender: TObject);
begin
  Rx.Open;
end;

procedure TFormImpRemetentes.BtnImprimirClick(Sender: TObject);
var
  i : integer;
begin

  if Rx.IsEmpty then
  begin
    InfoBox('Nenhuma informação para impressão.');
    Abort;
  end;

  RxRemetentes.Close;
  RxRemetentes.Open;
  Rx.First;
  //RxRemetentes.LoadFromDataSet(Rx, Rx.RecordCount, lmAppend);
  while not Rx.Eof do
  begin
    RxRemetentes.Append;
    For i:= 0 to Rx.FieldCount -1 do
    begin
      RxRemetentes.Fields[i].Value := Rx.Fields[i].Value;
    end;
    RxRemetentes.Post;
    Rx.Next;
  end;

  RxRemetentes.First;
  AjusteEtiqueta(RxRemetentes, SpinLin.AsInteger, SpinCol.AsInteger, 9, False);

  if Sender = BtnVisualizar then
    QuickRep1.Preview
  else
    QuickRep1.Print;

end;

procedure TFormImpRemetentes.Excluir1Click(Sender: TObject);
begin

  Rx.Delete;
end;

function TFormImpRemetentes.VerificaCampos: Boolean;
begin

  Result := True;

  if trim(EditNome.Text) = EmptyStr then
  begin
    InfoBox('Informe o Nome.');
    EditNome.SetFocus;
    Result := False;
    Exit;
  end;

  if trim(EditRua.Text) = EmptyStr then
  begin
    InfoBox('Informe a Rua.');
    EditRua.SetFocus;
    Result := False;
    Exit;
  end;

  if trim(EditNumero.Text) = EmptyStr then
  begin
    InfoBox('Informe o Número.');
    EditNumero.SetFocus;
    Result := False;
    Exit;
  end;
  {
  if trim(EditComplemento.Text) = EmptyStr then
  begin
    InfoBox('Informe o Complemento.');
    EditComplemento.SetFocus;
    Result := False;
    Exit;
  end;
  }
  if trim(EditBairro.Text) = EmptyStr then
  begin
    InfoBox('Informe o Bairro.');
    EditBairro.SetFocus;
    Result := False;
    Exit;
  end;

  if trim(EditCidade.Text) = EmptyStr then
  begin
    InfoBox('Informe a Cidade.');
    EditCidade.SetFocus;
    Result := False;
    Exit;
  end;

  if trim(EditCEP.Text) = EmptyStr then
  begin
    InfoBox('Informe o CEP.');
    EditCEP.SetFocus;
    Result := False;
    Exit;
  end;

end;

procedure TFormImpRemetentes.SpdBtnClearClick(Sender: TObject);
begin
  Rx.Close;
  Rx.Open;

  EditNome.Clear;
  EditRua.Clear;
  EditNumero.Clear;
  EditComplemento.Clear;
  EditBairro.Clear;
  EditCidade.Clear;
  CboEstado.ItemIndex := 0;
  EditCEP.Clear;
  EditNome.SetFocus;

end;

procedure TFormImpRemetentes.PopupMenuPopup(Sender: TObject);
begin
  if Rx.IsEmpty then
    Abort;

end;

procedure TFormImpRemetentes.RxBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;
end;

procedure TFormImpRemetentes.RxCalcFields(DataSet: TDataSet);
begin
  if not (Rx.Fields[0].AsString = EmptyStr) then
  begin
    RxRUANUMERO.AsString    := RxEndRUA.AsString + ', ' + RxEndNumero.AsString;
    RxCIDADEESTADO.AsString := RxEndCIDADE.AsString + ' - ' + RxEndESTADO.AsString;
  end;
end;

procedure TFormImpRemetentes.BtnImpPastoresClick(Sender: TObject);
begin
  CodigoPastor := Buscar('Pastores','Codigo','Nome','Nome');

  if CodigoPastor <> EmptyStr then
  begin
    with DMJetro.QryAux2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Pastores');
      SQL.Add('where Codigo = ' + CodigoPastor);
      Open;
      EditNome.Text := FieldByName('Nome').AsString;
      EditRua.Text := FieldByName('EndRua').AsString;
      EditNumero.Text := FieldByName('EndNumero').AsString;
      EditComplemento.Text := FieldByName('EndComplemento').AsString;
      EditBairro.Text := FieldByName('EndBairro').AsString;
      EditCidade.Text := FieldByName('EndCidade').AsString;
      CboEstado.Text := FieldByName('EndEstado').AsString;
      EditCep.Text := FieldByName('EndCep').AsString;
    end;
  end;

end;

procedure TFormImpRemetentes.BtnImpIgrejaClick(Sender: TObject);
begin
  with DMJetro.QryAux2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Igrejas');
    Open;
    EditNome.Text := 'IGREJA DO EVANGELHO QUADRANGULAR';
    EditRua.Text := FieldByName('EndRua').AsString;
    EditNumero.Text := FieldByName('EndNumero').AsString;
    EditComplemento.Text := FieldByName('EndComplemento').AsString;
    EditBairro.Text := FieldByName('EndBairro').AsString;
    EditCidade.Text := FieldByName('EndCidade').AsString;
    CboEstado.Text := FieldByName('EndEstado').AsString;
    EditCep.Text := FieldByName('EndCep').AsString;
  end;
end;

procedure TFormImpRemetentes.CboEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

end.
