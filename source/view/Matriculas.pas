unit Matriculas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, rxToolEdit, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  RXDBCtrl, DB, ADODB, Uni, DBAccess, MemDS, Menus;

type
  TFormMatriculas = class(TForm)
    PanelFiltro: TPanel;
    BtnPesquisar: TBitBtn;
    Label1: TLabel;
    ComboBoxClasse: TComboBox;
    PanelBotoes: TPanel;
    BtnMatricular: TBitBtn;
    BtnSair: TBitBtn;
    PanelAluno: TPanel;
    Label14: TLabel;
    Label21: TLabel;
    SpdBtnMembros: TSpeedButton;
    CboAluno: TComboBox;
    EditMembro: TEdit;
    Label2: TLabel;
    DateEditMatricula: TDateEdit;
    PanelLista: TPanel;
    QryMatriculas: TUniQuery;
    Ds: TDataSource;
    QryMatriculasCodigo: TIntegerField;
    QryMatriculasClasse: TIntegerField;
    QryMatriculasMembro: TIntegerField;
    QryMatriculasAluno: TStringField;
    QryMatriculasInicio: TDateTimeField;
    QryMatriculasFim: TDateTimeField;
    QryMatriculasUserInsert: TIntegerField;
    QryMatriculasDataInsert: TDateTimeField;
    QryMatriculasUserUpdate: TIntegerField;
    QryMatriculasDataUpdate: TDateTimeField;
    DBGrid: TRxDBGrid;
    SpdBtnAddClasse: TSpeedButton;
    PopupMenu: TPopupMenu;
    CancelarMatrcula1: TMenuItem;
    GroupBox1: TGroupBox;
    ReativarMatrcula1: TMenuItem;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnMatricularClick(Sender: TObject);
    procedure EditMembroExit(Sender: TObject);
    procedure EditMembroKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure SpdBtnAddClasseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CancelarMatrcula1Click(Sender: TObject);
    procedure ReativarMatrcula1Click(Sender: TObject);
    procedure ComboBoxClasseChange(Sender: TObject);
    procedure EditMembroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ListaAlunos;
    procedure LimpaDadosAlunos;
    procedure NomeAlunos;
  public
    { Public declarations }
  end;

var
  FormMatriculas: TFormMatriculas;

implementation

uses Funcoes, UDmJetro, ClassesEBQ, Main, StrUtils;

{$R *.dfm}

procedure TFormMatriculas.BtnPesquisarClick(Sender: TObject);
begin
  ListaAlunos;
end;

procedure TFormMatriculas.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMatriculas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryMatriculas.Close;
  FormMatriculas := nil;
  Action := caFree;
end;

procedure TFormMatriculas.ListaAlunos;
begin

  if ComboBoxClasse.Items.Count = 0 then
  begin
    InfoBox('Nenhuma Classe Cadastrada.' + #13 + 'Favor realizar o Cadastro da Classe.');
    Abort;
  end;

  with QryMatriculas do
  begin
    Close;
    ParamByName('Classe').Value := copy(ComboBoxClasse.Text, 1, 4);
    Open;
  end;
end;

procedure TFormMatriculas.BtnMatricularClick(Sender: TObject);
begin

  if ComboBoxClasse.Items.Count = 0 then
  begin
    InfoBox('Nenhuma Classe Cadastrada.' + #13 + 'Favor realizar o Cadastro da Classe.');
    Abort;
  end;

  if QryMatriculas.State in [dsInactive] then
  begin
    InfoBox('Favor realizar a pesquisa.');
    BtnPesquisar.SetFocus;
    Abort;
  end;

  if CboAluno.Text = EmptyStr then
  begin
    InfoBox('Informe o nome do aluno.');
    CboAluno.SetFocus;
    Abort;
  end;

  if DateEditMatricula.Date = 0 then
  begin
    InfoBox('Informe a data da matrícula.');
    DateEditMatricula.SetFocus;
    Abort;
  end;

  if Trim(EditMembro.Text) <> EmptyStr then
  begin
    if not DisponibilidadeMatricula(StrToInt(EditMembro.Text)) then
    begin
      InfoBox('Aluno já matriculado.');
      EditMembro.SetFocus;
      Abort;
    end;
  end;  

  if not YesNoBox('Confirma a Matrícula') then
    Abort;

  QryMatriculas.Append;
  QryMatriculasClasse.AsString       := copy(ComboBoxClasse.Text, 1, 4);
  QryMatriculasMembro.AsString       := EditMembro.Text;
  QryMatriculasAluno.AsString        := CboAluno.Text;
  QryMatriculasInicio.AsDateTime     := DateEditMatricula.Date;
  QryMatriculasUserInsert.AsInteger  := FormMain.Usuario;
  QryMatriculasDataInsert.AsDateTime := now;
  QryMatriculas.Post;

  ListaAlunos;

  LimpaDadosAlunos;
  EditMembro.SetFocus;

end;

procedure TFormMatriculas.LimpaDadosAlunos;
begin

  CboAluno.Text     := EmptyStr;
  CboAluno.Enabled  := True;
  DateEditMatricula.Date := 0;
  EditMembro.Clear;

end;

procedure TFormMatriculas.EditMembroExit(Sender: TObject);
begin
  if trim(EditMembro.Text) = '' then
  begin
    CboAluno.Enabled := True;
    CboAluno.Text := '';
    CboAluno.SetFocus;
  end
  else
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + EditMembro.Text);
      Open;
      CboAluno.Text := FieldByName('Nome').AsString;

      if (IsEmpty) then
      begin
        InfoBox('Membro não localizado.');
        EditMembro.SetFocus;
        Exit;
      end;
    end;
    CboAluno.Enabled := False;
    DateEditMatricula.SetFocus;
  end;

end;

procedure TFormMatriculas.EditMembroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not ( key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormMatriculas.SpdBtnMembrosClick(Sender: TObject);
begin
  EditMembro.SetFocus;
  EditMembro.Text := Buscar('Membros','FichaNumero','Nome','Nome')

end;

procedure TFormMatriculas.SpdBtnAddClasseClick(Sender: TObject);
begin

  Self.Cursor := crHourGlass;
  if FormClassesEBQ = nil then
    Application.CreateForm(TFormClassesEBQ, FormClassesEBQ);
  FormClassesEBQ.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMatriculas.FormActivate(Sender: TObject);
begin
  ComboTabelaAuxiliar('Classes','',ComboBoxClasse);
  NomeAlunos;
end;

procedure TFormMatriculas.CancelarMatrcula1Click(Sender: TObject);
begin
  if not QryMatriculasFim.IsNull then
    Abort;

  if not YesNoBox('Confirma o cancelamento da Matrícula?') then
    Abort;

  QryMatriculas.Edit;
  QryMatriculasFim.AsDateTime := Now;
  QryMatriculas.Post;

  //ListaAlunos;

end;

procedure TFormMatriculas.ReativarMatrcula1Click(Sender: TObject);
begin
  if QryMatriculasFim.IsNull then
    Abort;

  if not YesNoBox('Confirma a reativação da Matrícula?') then
    Abort;

  QryMatriculas.Edit;
  QryMatriculasFim.AsVariant := Null;
  QryMatriculas.Post;

  //ListaAlunos;
end;

procedure TFormMatriculas.NomeAlunos;
begin
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Nome from Criancas where Status = 1');
    SQL.Add('Union');
    SQL.Add('select Nome from Visitantes where Status = 1');
    //SQL.Add('order by Nome');
    Open;
    CboAluno.Clear;
    CboAluno.Items.Add('');
    while not Eof do
    begin
      CboAluno.Items.Add(FieldByName('Nome').AsString);
      Next;
    end;
  end;
end;

procedure TFormMatriculas.ComboBoxClasseChange(Sender: TObject);
begin
  QryMatriculas.Close;
end;

procedure TFormMatriculas.EditMembroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

end.
