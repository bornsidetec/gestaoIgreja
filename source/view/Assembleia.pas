unit Assembleia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Grids, DBGrids, DBCtrls, ExtCtrls,
  Buttons, QRCtrls, QuickRpt, RxGIF, Spin, Mask, rxToolEdit, RXCtrls, ADODB, Uni, DBAccess, MemDS,
  CheckLst, RXSpin, RLReport, RLRichText, RLTypes, RLConsts, ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Menus;

type
  TFormAssembleia = class(TForm)
    PanelFiltro: TPanel;
    PanelBotoes: TPanel;
    BtnSair: TBitBtn;
    BtnPesquisar: TBitBtn;
    QryDados: TUniQuery;
    BtnConfirmar: TBitBtn;
    ProgressBar: TProgressBar;
    DateEditIni: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditAnoAnterior: TEdit;
    Label3: TLabel;
    EditAnoAtual: TEdit;
    PageControl1: TPageControl;
    TbsDiaconato: TTabSheet;
    TbsCDL: TTabSheet;
    TbsLideranca: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    DBGridCDL: TDBGrid;
    ComboBoxCDL: TComboBox;
    ComboBoxLideres: TComboBox;
    Label8: TLabel;
    EditMembro: TEdit;
    SpdBtnMembros: TSpeedButton;
    LblNomeMembro: TLabel;
    BtnAddMembro: TBitBtn;
    DBGridLideres: TDBGrid;
    RxMCDL: TRxMemoryData;
    RxMCDLMembro: TIntegerField;
    RxMCDLNome: TStringField;
    RxMCDLCargo: TIntegerField;
    RxMCDLDescricao: TStringField;
    RxMLideres: TRxMemoryData;
    RxMLideresMembro: TIntegerField;
    RxMLideresNome: TStringField;
    RxMLideresDescricao: TStringField;
    DsCDL: TDataSource;
    DsLideres: TDataSource;
    RxMLideresDepartamento: TIntegerField;
    PopupMenu: TPopupMenu;
    Excluir1: TMenuItem;
    DBGrid1: TDBGrid;
    RxMDiaconos: TRxMemoryData;
    RxMDiaconosMembro: TIntegerField;
    RxMDiaconosNome: TStringField;
    DsDiaconos: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure EditAnoAnteriorKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnMembrosClick(Sender: TObject);
    procedure EditMembroExit(Sender: TObject);
    procedure BtnAddMembroClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure EditMembroEnter(Sender: TObject);
    procedure EditMembroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMembroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;
  end;

var
  FormAssembleia: TFormAssembleia;

implementation

uses UDmJetro, Funcoes, DateUtils, Math, SMSInstantaneo;

{$R *.dfm}

procedure TFormAssembleia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  FormAssembleia:= nil;
  Action := caFree;

end;

procedure TFormAssembleia.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAssembleia.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('000', StrToInt(Value));
end;

procedure TFormAssembleia.BuscarDados;
begin
  with DmJetro.QryRelatorios do
  begin

    //Diaconos
    Close;
    SQL.Clear;
    SQL.Add('select diaconos.membro, Membros.nome');
    SQL.Add('from DIACONOS');
    SQL.Add('inner join membros on membros.fichanumero = diaconos.membro');
    SQL.Add('where diaconos.ano = :ano');
    SQL.Add('order by membros.nome');
    ParamByName('ano').Value := EditAnoAnterior.Text;
    Open;
    First;
    RxMDiaconos.Close;
    RxMDiaconos.Open;
    while not Eof do
    begin
      RxMDiaconos.Append;
      RxMDiaconosMembro.AsInteger := FieldByName('Membro').AsInteger;
      RxMDiaconosNome.AsString    := FieldByName('Nome').AsString;
      RxMDiaconos.Post;
      Next;
    end;

    //CDL
    Close;
    SQL.Clear;
    SQL.Add('select CDL.membro, Membros.nome, CDL.cargo, CargosCDL.descricao');
    SQL.Add('from CDL');
    SQL.Add('inner join membros on membros.fichanumero = CDL.membro');
    SQL.Add('inner join CargosCDL on CargosCDL.codigo = CDL.cargo');
    SQL.Add('where CDL.ano = :ano');
    SQL.Add('order by membros.nome');
    ParamByName('ano').Value := EditAnoAnterior.Text;
    Open;
    First;
    RxMCDL.Close;
    RxMCDL.Open;
    while not Eof do
    begin
      RxMCDL.Append;
      RxMCDLMembro.AsInteger   := FieldByName('Membro').AsInteger;
      RxMCDLNome.AsString      := FieldByName('Nome').AsString;
      RxMCDLCargo.AsInteger    := FieldByName('Cargo').AsInteger;
      RxMCDLDescricao.AsString := FieldByName('Descricao').AsString;
      RxMCDL.Post;
      Next;
    end;

    //Lideranca
    Close;
    SQL.Clear;
    SQL.Add('select lideres.membro, Membros.nome, lideres.departamento, departamentos.descricao');
    SQL.Add('from LIDERES');
    SQL.Add('inner join membros on membros.fichanumero = LIDERES.membro');
    SQL.Add('inner join departamentos on departamentos.codigo = lideres.departamento');
    SQL.Add('where LIDERES.ano = :ano');
    SQL.Add('order by membros.nome');
    ParamByName('ano').Value := EditAnoAnterior.Text;
    Open;
    First;
    RxMLideres.Close;
    RxMLideres.Open;
    while not Eof do
    begin
      RxMLideres.Append;
      RxMLideresMembro.AsInteger       := FieldByName('Membro').AsInteger;
      RxMLideresNome.AsString          := FieldByName('Nome').AsString;
      RxMLideresDepartamento.AsInteger := FieldByName('Departamento').AsInteger;
      RxMLideresDescricao.AsString     := FieldByName('Descricao').AsString;
      RxMLideres.Post;
      Next;
    end;

  end;
end;

procedure TFormAssembleia.BtnPesquisarClick(Sender: TObject);
begin

  if (DateEditIni.Date = 0) then
  begin
    InfoBox('Data da Assembléia deve ser informada.');
    DateEditIni.SetFocus;
    Exit;
  end;

  if EditAnoAnterior.Text = '' then
  begin
    InfoBox('Ano anterior deve ser informado.');
    EditAnoAnterior.SetFocus;
    Exit;
  end;

  if EditAnoAtual.Text = '' then
  begin
    InfoBox('Ano atual deve ser informado.');
    EditAnoAtual.SetFocus;
    Exit;
  end;

  BuscarDados;

end;

procedure TFormAssembleia.BtnConfirmarClick(Sender: TObject);
var
  Diaconos, SMSNome : String;
  i, Qtd : Integer;
  Destinos : Integer;
begin


  if not YesNoBox('Confirma a Realização da Assembléia?') then
    Abort;

  ProgressBar.Max      := RxMDiaconos.RecordCount + RxMCDL.RecordCount + RxMLideres.RecordCount;
  ProgressBar.Min      := 0;
  ProgressBar.Position := 0;
  ProgressBar.Visible  := True;

  RxMDiaconos.First;
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into DIACONOS (MEMBRO, ANO, STATUS) values (:membro, :ano, 1)');
    while not RxMDiaconos.Eof do
    begin
      ParamByName('membro').AsInteger := RxMDiaconosMembro.AsInteger;
      ParamByName('ano').AsString := EditAnoAtual.Text;
      ExecSQL;
      RxMDiaconos.Next;
      ProgressBar.Position := ProgressBar.Position + 1;
    end;
  end;

  RxMCDL.First;
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into CDL (CARGO, MEMBRO, ANO) values (:cargo, :membro, :ano)');
    while not RxMCDL.Eof do
    begin
      ParamByName('cargo').AsInteger := RxMCDLCargo.AsInteger;
      ParamByName('membro').AsInteger := RxMCDLMembro.AsInteger;
      ParamByName('ano').AsString := EditAnoAtual.Text;
      ExecSQL;
      RxMCDL.Next;
      ProgressBar.Position := ProgressBar.Position + 1;
    end;
  end;

  RxMLideres.First;
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into LIDERES (DEPARTAMENTO, MEMBRO, ANO) values (:departamento, :membro, :ano)');
    while not RxMLideres.Eof do
    begin
      ParamByName('departamento').AsInteger := RxMLideresDepartamento.AsInteger;
      ParamByName('membro').AsInteger := RxMLideresMembro.AsInteger;
      ParamByName('ano').AsString := EditAnoAtual.Text;
      ExecSQL;
      RxMLideres.Next;
      ProgressBar.Position := ProgressBar.Position + 1;
    end;
  end;
  
  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into ASSEMBLEIA (ANO, DATA) values (:ano, :data)');
    ParamByName('ano').AsString := EditAnoAtual.Text;
    ParamByName('data').AsDateTime := DateEditIni.Date;
    ExecSQL;
  end;

  ProgressBar.Visible := False;
  InfoBox('Assembléia Geral efetuada com sucesso');

end;

procedure TFormAssembleia.EditAnoAnteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not( key in ['0'..'9', #13, #8]) then
    key := #0;

end;

procedure TFormAssembleia.SpdBtnMembrosClick(Sender: TObject);
begin
  EditMembro.SetFocus;
  EditMembro.Text := Buscar('Membros','FichaNumero','Nome','Nome')

end;

procedure TFormAssembleia.EditMembroExit(Sender: TObject);
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

end;

procedure TFormAssembleia.BtnAddMembroClick(Sender: TObject);
begin
  if EditMembro.Text = EmptyStr then
  begin
    InfoBox('Informe o Membro.');
    EditMembro.SetFocus;
    Exit;
  end;
  if PageControl1.ActivePage = TbsDiaconato then
  begin
    RxMDiaconos.Append;
    RxMDiaconosMembro.AsInteger   := StrToInt(EditMembro.Text);
    RxMDiaconosNome.AsString      := LblNomeMembro.Caption;
    RxMDiaconos.Post;
  end;
  if PageControl1.ActivePage = TbsCDL then
  begin
    RxMCDL.Append;
    RxMCDLMembro.AsInteger   := StrToInt(EditMembro.Text);
    RxMCDLNome.AsString      := LblNomeMembro.Caption;
    RxMCDLCargo.AsInteger    := StrToInt(copy(ComboBoxCDL.Text, 1, 4));
    RxMCDLDescricao.AsString := Copy(ComboBoxCDL.Text,8,Length(ComboBoxCDL.Text) - 7);
    RxMCDL.Post;
  end;
  if PageControl1.ActivePage = TbsLideranca then
  begin
    RxMLideres.Append;
    RxMLideresMembro.AsInteger   := StrToInt(EditMembro.Text);
    RxMLideresNome.AsString      := LblNomeMembro.Caption;
    RxMLideresDepartamento.AsInteger    := StrToInt(copy(ComboBoxLideres.Text, 1, 4));
    RxMLideresDescricao.AsString := Copy(ComboBoxLideres.Text,8,Length(ComboBoxLideres.Text) - 7);
    RxMLideres.Post;
  end;

end;

procedure TFormAssembleia.FormActivate(Sender: TObject);
begin
  ComboTabelaAuxiliar('CargosCDL', '', ComboBoxCDL);
  ComboTabelaAuxiliar('Departamentos', '', ComboBoxLideres);
  PageControl1.ActivePageIndex := 0;
end;

procedure TFormAssembleia.PopupMenuPopup(Sender: TObject);
begin
  if PageControl1.ActivePage = TbsDiaconato then
  begin
    if RxMDiaconos.IsEmpty then
      Abort;
  end;

  if PageControl1.ActivePage = TbsCDL then
  begin
    if RxMCDL.IsEmpty then
      Abort;
  end;

  if PageControl1.ActivePage = TbsLideranca then
  begin
    if RxMLideres.IsEmpty then
      Abort;
  end;

end;

procedure TFormAssembleia.Excluir1Click(Sender: TObject);
begin
  if PageControl1.ActivePage = TbsDiaconato then
  begin
    RxMDiaconos.Delete
  end;

  if PageControl1.ActivePage = TbsCDL then
  begin
    RxMCDL.Delete
  end;

  if PageControl1.ActivePage = TbsLideranca then
  begin
    RxMLideres.Delete
  end;

end;

procedure TFormAssembleia.EditMembroEnter(Sender: TObject);
begin
  LblNomeMembro.Caption := EmptyStr;

end;

procedure TFormAssembleia.EditMembroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnMembros.Click;
end;

procedure TFormAssembleia.EditMembroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
    key := #0;
end;

end.
