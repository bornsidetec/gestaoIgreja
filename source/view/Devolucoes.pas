unit Devolucoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, RXDBCtrl, DB, ADODB, Uni, DBAccess, MemDS;

type
  TFormDevolucoes = class(TForm)
    PanelBotoes: TPanel;
    PanelDados: TPanel;
    GroupBox1: TGroupBox;
    RxDBGridHistorico: TRxDBGrid;
    GroupBox2: TGroupBox;
    RxDBGridItens: TRxDBGrid;
    Label1: TLabel;
    EditMembro: TEdit;
    SpdBtnMembros: TSpeedButton;
    LblNomeMembro: TLabel;
    BtnBaixar: TBitBtn;
    BtnSair: TBitBtn;
    QryEmprestimos: TUniQuery;
    QryEmprestimosCodigo: TIntegerField;
    QryEmprestimosMembro: TIntegerField;
    QryEmprestimosData: TDateTimeField;
    QryEmprestimosBaixa: TDateTimeField;
    QryEmprestimosFechamento: TStringField;
    QryEmprestimosUserUpdate: TIntegerField;
    QryEmprestimosDataUpdate: TDateTimeField;
    QryEmprestimosNomeMembro: TStringField;
    DsEmprestimos: TDataSource;
    QryItensEmprestimo: TUniQuery;
    DsItens: TDataSource;
    QryItensEmprestimoCodigo: TIntegerField;
    QryItensEmprestimoEmprestimo: TIntegerField;
    QryItensEmprestimoObjeto: TIntegerField;
    QryItensEmprestimoTituloObjeto: TStringField;
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure EditMembroExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditMembroKeyPress(Sender: TObject; var Key: Char);
    procedure EditMembroEnter(Sender: TObject);
    procedure QryEmprestimosCalcFields(DataSet: TDataSet);
    procedure QryItensEmprestimoCalcFields(DataSet: TDataSet);
    procedure QryEmprestimosAfterOpen(DataSet: TDataSet);
    procedure BtnBaixarClick(Sender: TObject);
    procedure QryEmprestimosBeforePost(DataSet: TDataSet);
    procedure EditMembroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDevolucoes: TFormDevolucoes;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormDevolucoes.SpdBtnMembrosClick(Sender: TObject);
begin
  EditMembro.SetFocus;
  EditMembro.Text := Buscar('Membros','FichaNumero','Nome', 'Nome')
end;

procedure TFormDevolucoes.EditMembroExit(Sender: TObject);
begin
  if EditMembro.Text =  EmptyStr then
    Abort;

  LblNomeMembro.Caption := EmptyStr;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome from Membros');
    SQL.Add('where FichaNumero = :membro');
    ParamByName('Membro').Value := EditMembro.Text;
    Open;

    if IsEmpty then
    begin
      InfoBox('Membro não localizado.');
      EditMembro.SetFocus;
      Abort;
    end;

    LblNomeMembro.Caption := FieldByName('Nome').AsString;

  end;

  QryEmprestimos.Close;
  QryEmprestimos.ParamByName('Membro').Value := EditMembro.Text;
  QryEmprestimos.Open;
   
  if QryEmprestimos.IsEmpty then
  begin
    InfoBox('Nenhum emprestimo localizado.');
    EditMembro.SetFocus;
  end;

end;

procedure TFormDevolucoes.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormDevolucoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormDevolucoes := nil;
  Action := caFree;
end;

procedure TFormDevolucoes.EditMembroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not ( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormDevolucoes.EditMembroEnter(Sender: TObject);
begin
  LblNomeMembro.Caption := EmptyStr;
  QryEmprestimos.Close;
  QryItensEmprestimo.Close;
end;

procedure TFormDevolucoes.QryEmprestimosCalcFields(DataSet: TDataSet);
begin
  QryEmprestimosNomeMembro.AsString := '';
  if not QryEmprestimosMembro.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryEmprestimosMembro.AsInteger) );
      Open;
      QryEmprestimosNomeMembro.AsString := FieldByName('Nome').AsString;
      if IsEmpty then
      begin
        InfoBox('Membro não Localizado.');
        QryEmprestimosMembro.FocusControl;
      end;
    end;
  end; 

end;

procedure TFormDevolucoes.QryItensEmprestimoCalcFields(DataSet: TDataSet);
begin
  QryItensEmprestimoTituloObjeto.AsString := '';
  if not QryItensEmprestimoObjeto.IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Titulo from Objetos');
      SQL.Add('where Codigo = ' + IntToStr(QryItensEmprestimoObjeto.AsInteger) );
      Open;
      QryItensEmprestimoTituloObjeto.AsString := FieldByName('Titulo').AsString;
      if IsEmpty then
      begin
        InfoBox('Objeto não Localizado.');
        QryItensEmprestimoObjeto.FocusControl;
      end;
    end;
  end;
end;

procedure TFormDevolucoes.QryEmprestimosAfterOpen(DataSet: TDataSet);
begin
  QryItensEmprestimo.Open;
end;

procedure TFormDevolucoes.BtnBaixarClick(Sender: TObject);
begin
  if QryEmprestimos.IsEmpty then
    Abort;

  if YesNoBox('Confirma a Devolução?') then
  begin
    with QryEmprestimos do
    begin
      Edit;
      Post;

      Close;
      ParamByName('Membro').AsInteger := StrToInt(EditMembro.Text);
      Open;
    end;
  end;

end;

procedure TFormDevolucoes.QryEmprestimosBeforePost(DataSet: TDataSet);
begin

  QryEmprestimosBaixa.AsDateTime      := Now;
  QryEmprestimosFechamento.AsString   := '1';
  QryEmprestimosDataUpdate.AsDateTime := now;
  QryEmprestimosUserUpdate.AsInteger  := FormMain.Usuario;

end;

procedure TFormDevolucoes.EditMembroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

end.
