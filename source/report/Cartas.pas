unit Cartas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS, ImgList, RxCombos, Spin, RichEdit;

type
  TFormCartas = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelFiltro: TPanel;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
    BtnPesquisar: TBitBtn;
    DBGrid: TRxDBGrid;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    QryCartas: TUniQuery;
    DBRadioGroup1: TDBRadioGroup;
    ToolBar1: TToolBar;
    ToolButtonVoltar: TToolButton;
    ToolButtonAvancar: TToolButton;
    ToolButtonS1: TToolButton;
    ToolButtonIncluir: TToolButton;
    ToolButtonAlterar: TToolButton;
    ToolButtonExcluir: TToolButton;
    ToolButtonSEdicao1: TToolButton;
    ToolButtonSalvar: TToolButton;
    ToolButtonCancelar: TToolButton;
    ToolButtonSEdicao2: TToolButton;
    ToolButtonSair: TToolButton;
    QryCartasCodigo: TIntegerField;
    QryCartasDescricao: TStringField;
    QryCartasConteudo: TMemoField;
    QryCartasUserInsert: TIntegerField;
    QryCartasDataInsert: TDateTimeField;
    QryCartasUserUpdate: TIntegerField;
    QryCartasDataUpdate: TDateTimeField;
    Label1: TLabel;
    EditDescricao: TEdit;
    DBRichEdit1: TDBRichEdit;
    QryCartasFormato: TIntegerField;
    Panel1: TPanel;
    ToolBar2: TToolBar;
    btnBold: TToolButton;
    btnItalic: TToolButton;
    btnUnder: TToolButton;
    ToolButton5: TToolButton;
    btnLeftAlign: TToolButton;
    btnCenterAlign: TToolButton;
    btnRigthAlign: TToolButton;
    btnJustificar: TToolButton;
    ToolButton8: TToolButton;
    btnFormataFont: TToolButton;
    SpinEditSizeFont: TSpinEdit;
    FontComboBox: TFontComboBox;
    CboDados: TComboBox;
    ImageList: TImageList;
    FontDialog1: TFontDialog;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryCartasBeforeInsert(DataSet: TDataSet);
    procedure QryCartasAfterPost(DataSet: TDataSet);
    procedure QryCartasAfterCancel(DataSet: TDataSet);
    procedure QryCartasBeforeDelete(DataSet: TDataSet);
    procedure QryCartasBeforeEdit(DataSet: TDataSet);
    procedure QryCartasBeforePost(DataSet: TDataSet);
    procedure ToolButtonSairClick(Sender: TObject);
    procedure QryCartasNewRecord(DataSet: TDataSet);
    procedure btnBoldClick(Sender: TObject);
    procedure btnItalicClick(Sender: TObject);
    procedure btnUnderClick(Sender: TObject);
    procedure btnLeftAlignClick(Sender: TObject);
    procedure btnCenterAlignClick(Sender: TObject);
    procedure btnRigthAlignClick(Sender: TObject);
    procedure btnJustificarClick(Sender: TObject);
    procedure btnFormataFontClick(Sender: TObject);
    procedure SpinEditSizeFontChange(Sender: TObject);
    procedure FontComboBoxChange(Sender: TObject);
    procedure CboDadosChange(Sender: TObject);
    procedure DBRichEdit1Change(Sender: TObject);
  private
    { Private declarations }
    FicaUnder, FicaBold, FicaItalic: Boolean;
    procedure JustificarRichEdit(RichEdit :TDBRichEdit; AllText :Boolean);

  public
    { Public declarations }
  end;

var
  FormCartas: TFormCartas;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormCartas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryCartas.Close;

  FormCartas := nil;
  Action := caFree;
end;

procedure TFormCartas.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;

  DBRichEdit1.Font.Name := 'Arial';
  DBRichEdit1.Font.Style := [];
  DBRichEdit1.Text := '';

  //Desmarca os botões de formatação
  btnBold.Down       := False;
  btnItalic.Down     := False;
  btnUnder.Down      := False;

  btnRigthAlign.Down  := False;
  btnCenterAlign.Down := False;
  btnLeftAlign.Down   := False;
  btnJustificar.Down  := False;

  FicaUnder   := not btnUnder.Down;
  FicaBold    := not btnBold.Down;
  FicaItalic  := not btnItalic.Down;

end;

procedure TFormCartas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormCartas.BtnPesquisarClick(Sender: TObject);
begin
  with QryCartas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Cartas');
    SQL.Add('where');
    SQL.Add('Descricao like :pDescricao');
    ParamByName('pDescricao').Value := EditDescricao.text + '%';
    SQL.Add('order by Descricao');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormCartas.FormShow(Sender: TObject);
begin
  AbreQuery(QryCartas, 'Cartas');
  EditDescricao.SetFocus;
end;

procedure TFormCartas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormCartas.PageControlChange(Sender: TObject);
begin
  if QryCartas.State <> dsBrowse then
    PageControl.ActivePageIndex := 1;
end;

procedure TFormCartas.QryCartasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;
end;

procedure TFormCartas.QryCartasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormCartas.QryCartasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  PanelDados.Enabled := False;
end;

procedure TFormCartas.QryCartasBeforeDelete(DataSet: TDataSet);
begin

  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormCartas.QryCartasBeforeEdit(DataSet: TDataSet);
begin

  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  DBEdit3.SetFocus;

end;

procedure TFormCartas.QryCartasBeforePost(DataSet: TDataSet);
begin

  QryCartas.Fields.Fields[0].FocusControl;

  CamposObrigatorios(DataSet as TUniQuery);

  if DataSet.Tag = 1 then
  begin
    DataSet.FieldByName('DataInsert').AsDateTime := now;
    DataSet.FieldByName('UserInsert').AsInteger  := FormMain.Usuario;
    DataSet.FieldByName('DataUpdate').AsDateTime := now;
    DataSet.FieldByName('UserUpdate').AsInteger  := FormMain.Usuario;
  end
  else if DataSet.Tag = 2 then
  begin
    DataSet.FieldByName('DataUpdate').AsDateTime := now;
    DataSet.FieldByName('UserUpdate').AsInteger  := FormMain.Usuario;
  end;

end;

procedure TFormCartas.ToolButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCartas.QryCartasNewRecord(DataSet: TDataSet);
begin
  QryCartasFormato.AsInteger := 2;
end;

procedure TFormCartas.JustificarRichEdit(RichEdit: TDBRichEdit;
  AllText: Boolean);
const
  TO_ADVANCEDTYPOGRAPHY = $1;
  EM_SETTYPOGRAPHYOPTIONS = (WM_USER + 202);
  EM_GETTYPOGRAPHYOPTIONS = (WM_USER + 203);
var
  ParaFormat:TParaFormat;
  SelStart,SelLength :Integer;
begin

  ParaFormat.cbSize := SizeOf(ParaFormat);
  if SendMessage(RichEdit.handle,EM_SETTYPOGRAPHYOPTIONS,
  TO_ADVANCEDTYPOGRAPHY,TO_ADVANCEDTYPOGRAPHY) = 1 then
  begin
    SelStart := RichEdit.SelStart;
    SelLength := RichEdit.SelLength;
    if AllText then
     RichEdit.SelectAll;
    ParaFormat.dwMask := PFM_ALIGNMENT;
    ParaFormat.wAlignment := PFA_JUSTIFY;
    SendMessage(RichEdit.handle, EM_SETPARAFORMAT, 0, LongInt(@ParaFormat));
    RichEdit.SelStart := SelStart;
    RichEdit.SelLength := SelLength;
  end;

end;

procedure TFormCartas.btnBoldClick(Sender: TObject);
begin
  if not FicaBold then
  begin
    btnBold.Down := False;
    DBRichEdit1.SelAttributes.Style := DBRichEdit1.SelAttributes.Style - [fsBold];
  end
  else begin
    btnBold.Down := True;
    DBRichEdit1.SelAttributes.Style := DBRichEdit1.SelAttributes.Style + [fsBold];
  end;
  FicaBold := not btnBold.Down;
end;

procedure TFormCartas.btnItalicClick(Sender: TObject);
begin
  if not FicaItalic then
  begin
    btnItalic.Down := False;
    DBRichEdit1.SelAttributes.Style := DBRichEdit1.SelAttributes.Style - [fsItalic];
  end
  else begin
    btnItalic.Down := True;
    DBRichEdit1.SelAttributes.Style := DBRichEdit1.SelAttributes.Style + [fsItalic];
  end;
  FicaItalic := not btnItalic.Down;
end;

procedure TFormCartas.btnUnderClick(Sender: TObject);
begin
  if not FicaUnder then
  begin
    btnUnder.Down := False;
    DBRichEdit1.SelAttributes.Style := DBRichEdit1.SelAttributes.Style - [fsUnderLine];
  end
  else begin
    btnUnder.Down := True;
    DBRichEdit1.SelAttributes.Style := DBRichEdit1.SelAttributes.Style + [fsUnderLine];
  end;
  FicaUnder := not btnUnder.Down;
end;

procedure TFormCartas.btnLeftAlignClick(Sender: TObject);
begin
  if not btnLeftAlign.Down then
  begin
    btnLeftAlign.Down := True;
    DBRichEdit1.Paragraph.Alignment := taLeftJustify;
    //Desmarca os demais botoes de alinhamento
    btnRigthAlign.Down  := False;
    btnCenterAlign.Down := False;
    btnJustificar.Down  := False;
  end;
end;

procedure TFormCartas.btnCenterAlignClick(Sender: TObject);
begin
  if not btnCenterAlign.Down then
  begin
    btnCenterAlign.Down := True;
    DBRichEdit1.Paragraph.Alignment := taCenter;
    //Desmarca os demais botoes de alinhamento
    btnRigthAlign.Down  := False;
    btnLeftAlign.Down   := False;
    btnJustificar.Down  := False;
  end;
end;

procedure TFormCartas.btnRigthAlignClick(Sender: TObject);
begin

  if not btnRigthAlign.Down then
  begin
    btnRigthAlign.Down := True;
    DBRichEdit1.Paragraph.Alignment := taRightJustify;
    //Desmarca os demais botoes de alinhamento
    btnLeftAlign.Down   := False;
    btnCenterAlign.Down := False;
    btnJustificar.Down  := False;
  end;
end;

procedure TFormCartas.btnJustificarClick(Sender: TObject);
begin
  if not btnJustificar.Down then
  begin
    JustificarRichEdit(DBRichEdit1,False);
    btnJustificar.Down  := True;
    btnLeftAlign.Down   := False;
    btnRigthAlign.Down  := False;
    btnCenterAlign.Down := False;
  end;
end;

procedure TFormCartas.btnFormataFontClick(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    DBRichEdit1.SelAttributes.Name  := FontDialog1.Font.Name;
    DBRichEdit1.SelAttributes.Size  := FontDialog1.Font.Size;
    DBRichEdit1.SetFocus;
    SpinEditSizeFont.Value := FontDialog1.Font.Size;
    FontComboBox.FontName  := FontDialog1.Font.Name;
  end;
end;

procedure TFormCartas.SpinEditSizeFontChange(Sender: TObject);
begin
  DBRichEdit1.SelAttributes.Size := SpinEditSizeFont.Value;
  DBRichEdit1.SetFocus;
end;

procedure TFormCartas.FontComboBoxChange(Sender: TObject);
begin
  DBRichEdit1.SelAttributes.Name  := FontComboBox.FontName;
  DBRichEdit1.SetFocus;
end;

procedure TFormCartas.CboDadosChange(Sender: TObject);
begin

  DBRichEdit1.SelText := '<#' + CboDados.Text + '#>'

end;

procedure TFormCartas.DBRichEdit1Change(Sender: TObject);
begin

  if PanelDados.Enabled = false then
    Exit;

  DBRichEdit1.Font.Size  := DBRichEdit1.SelAttributes.Size;
  DBRichEdit1.Font.Name  := DBRichEdit1.SelAttributes.Name;

  SpinEditSizeFont.Value := DBRichEdit1.SelAttributes.Size;
  FontComboBox.FontName  := DBRichEdit1.SelAttributes.Name;

  btnLeftAlign.Down   := DBRichEdit1.Paragraph.Alignment = taLeftJustify;
  btnRigthAlign.Down  := DBRichEdit1.Paragraph.Alignment = taRightJustify;
  btnCenterAlign.Down := DBRichEdit1.Paragraph.Alignment = taCenter;


  if DBRichEdit1.SelAttributes.Style = [fsBold] then
  begin
    btnBold.Down   := True;
    btnItalic.Down := False;
    btnUnder.Down  := False;
  end
  else if DBRichEdit1.SelAttributes.Style = [fsItalic] then
  begin
    btnBold.Down   := False;
    btnItalic.Down := True;
    btnUnder.Down  := False;
  end
  else if DBRichEdit1.SelAttributes.Style = [fsUnderline] then
  begin
    btnBold.Down   := False;
    btnItalic.Down := False;
    btnUnder.Down  := True;
  end
  else if DBRichEdit1.SelAttributes.Style = [fsBold, fsItalic] then
  begin
    btnBold.Down   := True;
    btnItalic.Down := True;
    btnUnder.Down  := False;
  end
  else if DBRichEdit1.SelAttributes.Style = [fsItalic, fsUnderline] then
  begin
    btnBold.Down   := False;
    btnItalic.Down := True;
    btnUnder.Down  := True;
  end
  else if DBRichEdit1.SelAttributes.Style = [fsBold, fsUnderline] then
  begin
    btnBold.Down   := True;
    btnItalic.Down := False;
    btnUnder.Down  := True;
  end
  else if DBRichEdit1.SelAttributes.Style = [fsBold, fsItalic, fsUnderline] then
  begin
    btnBold.Down   := True;
    btnItalic.Down := True;
    btnUnder.Down  := True;
  end
  else if DBRichEdit1.SelAttributes.Style = [] then
  begin
    btnBold.Down   := False;
    btnItalic.Down := False;
    btnUnder.Down  := False;
  end;

end;

end.
