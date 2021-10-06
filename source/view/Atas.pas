unit Atas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  ToolWin, rxToolEdit, RXDBCtrl, DBActns, ActnList, DBCtrls, RxDBComb, DateUtils,
  jpeg, ADODB, Uni, DBAccess, MemDS, RxMemDS, QRCtrls, QuickRpt;

type
  TFormAtas = class(TForm)
    PageControl: TPageControl;
    PanelBotoes: TPanel;
    TabSheetListagem: TTabSheet;
    TabSheetManutencao: TTabSheet;
    PanelFiltro: TPanel;
    PanelGrid: TPanel;
    PanelDados: TPanel;
    Ds: TDataSource;
    BtnPesquisar: TBitBtn;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton3: TToolButton;
    DBGrid: TRxDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    PanelBanner: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    QryAtas: TUniQuery;
    ToolButton4: TToolButton;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    QryAtasCodigo: TIntegerField;
    QryAtasTipo: TIntegerField;
    QryAtasAssuntos: TMemoField;
    QryAtasUserInsert: TIntegerField;
    QryAtasDataInsert: TDateTimeField;
    QryAtasUserUpdate: TIntegerField;
    QryAtasDataUpdate: TDateTimeField;
    QryAtasDescTipo: TStringField;
    Label4: TLabel;
    RxDBCboTipo: TRxDBComboBox;
    Label2: TLabel;
    DBDateEdit: TDBDateEdit;
    Label5: TLabel;
    DBMemoAssuntos: TDBMemo;
    Notebook: TNotebook;
    Label1: TLabel;
    Label6: TLabel;
    GroupBoxFiltro: TGroupBox;
    cboFiltro: TComboBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    CboTipo: TComboBox;
    TabSheetPresentes: TTabSheet;
    DsPresencasAta: TDataSource;
    PanelPresencas: TPanel;
    RxDBGridPresenca: TRxDBGrid;
    DBNavigator: TDBNavigator;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    SpdBtnCDL: TSpeedButton;
    Label9: TLabel;
    DBEditNome: TDBEdit;
    Label10: TLabel;
    DBEditCargo: TDBEdit;
    QryPresencasAta: TUniQuery;
    QryPresencasAtaCodigo: TIntegerField;
    QryPresencasAtaAta: TIntegerField;
    QryPresencasAtaCDL: TIntegerField;
    QryPresencasAtaNome: TStringField;
    QryPresencasAtaCargo: TStringField;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    QryAtasDataInicio: TDateTimeField;
    QryAtasHoraInicio: TStringField;
    QryAtasDataFim: TDateTimeField;
    QryAtasHotaFim: TStringField;
    QryAtasImpressao: TStringField;
    Label12: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    BtnImprimir: TBitBtn;
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRSubDetail1: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    RxMem: TRxMemoryData;
    RxMemCodigo: TIntegerField;
    RxMemTipoAta: TStringField;
    RxMemEndRua: TStringField;
    RxMemEndNumero: TStringField;
    RxMemEndComplemento: TStringField;
    RxMemEndBairro: TStringField;
    RxMemEndCidade: TStringField;
    RxMemEndEstado: TStringField;
    RxMemDataInicioExtenso: TStringField;
    RxMemHoraInicioExtenso: TStringField;
    RxMemDataFimExtenso: TStringField;
    RxMemHoraFimExtenso: TStringField;
    RxMemSecretario: TStringField;
    RxMemPastor: TStringField;
    RxMemAssuntos: TMemoField;
    RxMAssinaturas: TRxMemoryData;
    RxMAssinaturasSecretario: TStringField;
    RxMAssinaturasPastor: TStringField;
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditCEPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QryAtasAfterCancel(DataSet: TDataSet);
    procedure QryAtasAfterPost(DataSet: TDataSet);
    procedure QryAtasBeforeDelete(DataSet: TDataSet);
    procedure QryAtasBeforeEdit(DataSet: TDataSet);
    procedure QryAtasBeforeInsert(DataSet: TDataSet);
    procedure QryAtasCalcFields(DataSet: TDataSet);
    procedure cboFiltroChange(Sender: TObject);
    procedure SpdBtnCDLClick(Sender: TObject);
    procedure QryPresencasAtaAfterCancel(DataSet: TDataSet);
    procedure QryPresencasAtaBeforeEdit(DataSet: TDataSet);
    procedure QryPresencasAtaBeforeInsert(DataSet: TDataSet);
    procedure DBEdit4Exit(Sender: TObject);
    procedure QryAtasBeforePost(DataSet: TDataSet);
    procedure QryPresencasAtaNewRecord(DataSet: TDataSet);
    procedure QryPresencasAtaBeforePost(DataSet: TDataSet);
    procedure QryAtasBeforeCancel(DataSet: TDataSet);
    procedure QryPresencasAtaBeforeCancel(DataSet: TDataSet);
    procedure QryAtasNewRecord(DataSet: TDataSet);
    procedure BtnImprimirClick(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados;

  end;

var
  FormAtas: TFormAtas;

implementation

uses UDmJetro, Funcoes, Main;

{$R *.dfm}

procedure TFormAtas.ToolButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAtas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryAtas.Close;
  FormAtas := nil;
  Action := caFree;
end;

procedure TFormAtas.FormCreate(Sender: TObject);
begin

  PermissaoBotoes(ToolBar1);

  PageControl.ActivePageIndex := 0;
  Notebook.PageIndex          := 0;
  cboFiltro.ItemIndex         := 0;



end;

procedure TFormAtas.EditCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #13, #8]) then
    key := #0;
end;

procedure TFormAtas.BtnPesquisarClick(Sender: TObject);
begin
  with QryAtas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select A.* from Atas A');
    SQL.Add('where');
    case cboFiltro.ItemIndex of
      0 : begin
            SQL.Add('A.Tipo = :pTipo');
            ParamByName('pTipo').Value := Copy(CboTipo.Text, 1, 4);
          end;
      1 : begin
            SQL.Add('A.DataInicio between :dt1 and :dt2');
            ParamByName('dt1').AsDateTime := DateEditIni.Date;
            ParamByName('dt2').AsDateTime := DateEditFim.Date + 0.99999999;
          end;
    end;
    SQL.Add('order by A.DataInicio desc');
    Open;
    if IsEmpty then
    begin
      InfoBox('Nenhuma Informação Encontrada!');
      Exit;
    end;
  end;

end;

procedure TFormAtas.FormShow(Sender: TObject);
begin
  AbreQuery(QryAtas, 'Atas');


  CboTipo.SetFocus;

end;

procedure TFormAtas.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetManutencao;
end;

procedure TFormAtas.PageControlChange(Sender: TObject);
begin
  if (QryAtas.State = dsInsert) or
     (QryAtas.State = dsEdit) then
    PageControl.ActivePageIndex := 1;

  if (QryPresencasAta.State = dsInsert) or
     (QryPresencasAta.State = dsEdit) then
    PageControl.ActivePageIndex := 2;

  if PageControl.ActivePageIndex = 2 then
  begin
    QryPresencasAta.Close;
    QryPresencasAta.ParamByName('Ata').Value := QryAtasCodigo.AsInteger;
    QryPresencasAta.Open;
  end;

end;

procedure TFormAtas.QryAtasAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

end;

procedure TFormAtas.QryAtasAfterPost(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelDados.Enabled := False;

end;

procedure TFormAtas.QryAtasBeforeDelete(DataSet: TDataSet);
begin
  if not YesNoBox('Deseja excluir este registro?') then
    Abort;

end;

procedure TFormAtas.QryAtasBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryAtasDataInicio.FocusControl;
end;

procedure TFormAtas.QryAtasBeforeInsert(DataSet: TDataSet);
begin
  DataSet.Tag := 1;

  PageControl.ActivePageIndex := 1;
  PanelDados.Enabled := True;
  QryAtasDataInicio.FocusControl;

end;

procedure TFormAtas.QryAtasCalcFields(DataSet: TDataSet);
begin

  Descricao(DataSet as TUniQuery, 'TiposAta', 'Tipo', 'DescTipo');

  {
  DataSet.FieldByName('DescTipo').AsString := '';
  if not DataSet.FieldByName('Tipo').IsNull then
  begin
    with DMJetro.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Nome from Membros');
      SQL.Add('where FichaNumero = ' + IntToStr(QryDiaconosMembro.AsInteger) );
      Open;
      QryDiaconosNomeMembro.AsString := FieldByName('Nome').AsString;

      if IsEmpty then
      begin
        InfoBox('Membro não localizado.');
        DataSet.FieldByName('Tipo').FocusControl;
      end;

    end;
  end;
  }
end;

procedure TFormAtas.cboFiltroChange(Sender: TObject);
begin
  Notebook.PageIndex := cboFiltro.ItemIndex;

end;

procedure TFormAtas.SpdBtnCDLClick(Sender: TObject);
begin
  QryPresencasAtaCDL.FocusControl;
  QryPresencasAtaCDL.AsString := Buscar('CDL','CDL.Codigo', 'Membros.Nome, CargosCDL.Descricao as Cargo', 'Nome',
                                     'Inner Join Membros on Membros.FichaNumero = CDL.Membro ' +
                                     'Inner Join CargosCDL on CargosCDL.Codigo = CDL.Cargo ' +
                                     'where Ano = Year(current_timestamp)', 3);

end;

procedure TFormAtas.QryPresencasAtaAfterCancel(DataSet: TDataSet);
begin
  DataSet.Tag := 0;
  //Pagecontrol.ActivePageIndex := 0;
  PanelPresencas.Enabled := False;

end;

procedure TFormAtas.QryPresencasAtaBeforeEdit(DataSet: TDataSet);
begin
  DataSet.Tag := 2;

  PanelPresencas.Enabled := True;
  QryPresencasAtaCDL.FocusControl;

end;

procedure TFormAtas.QryPresencasAtaBeforeInsert(DataSet: TDataSet);
begin
  if QryAtas.IsEmpty then
    Abort;

  DataSet.Tag := 1;

  PanelPresencas.Enabled := True;
  QryPresencasAtaCDL.FocusControl;

end;

procedure TFormAtas.DBEdit4Exit(Sender: TObject);
begin

  DBEditNome.Enabled  := QryPresencasAtaCDL.IsNull;
  DBEditCargo.Enabled := QryPresencasAtaCDL.IsNull;

  if QryPresencasAtaCDL.IsNull then
    Abort;

  with DMJetro.QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Membros.Nome, CargosCDL.Descricao from CDL');
    SQL.Add('Inner Join Membros on Membros.FichaNumero = CDL.Membro ');
    SQL.Add('Inner Join CargosCDL on CargosCDL.Codigo = CDL.Cargo ');
    SQL.Add('where CDL.Codigo = ' + QryPresencasAtaCDL.AsString);
    Open;
    if (IsEmpty) then
    begin
      InfoBox('CDL não localizado.');
      QryPresencasAtaCDL.FocusControl;
      Exit;
    end
    else
    begin
      QryPresencasAtaNome.AsString  := FieldByName('Nome').AsString;
      QryPresencasAtaCargo.AsString := FieldByName('Descricao').AsString;
    end;
  end;

end;

procedure TFormAtas.QryAtasBeforePost(DataSet: TDataSet);
begin
  DataSet.Fields.Fields[0].FocusControl;

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

procedure TFormAtas.QryPresencasAtaNewRecord(DataSet: TDataSet);
begin
  QryPresencasAtaAta.AsInteger := QryAtasCodigo.AsInteger;
end;

procedure TFormAtas.QryPresencasAtaBeforePost(DataSet: TDataSet);
begin
  DataSet.Fields.Fields[0].FocusControl;
end;

procedure TFormAtas.QryAtasBeforeCancel(DataSet: TDataSet);
begin
  DataSet.Fields.Fields[0].FocusControl;
end;

procedure TFormAtas.QryPresencasAtaBeforeCancel(DataSet: TDataSet);
begin
  DataSet.Fields.Fields[0].FocusControl;
end;

procedure TFormAtas.QryAtasNewRecord(DataSet: TDataSet);
begin
  QryAtasImpressao.AsString := '0';
end;

procedure TFormAtas.BtnImprimirClick(Sender: TObject);
begin
  if (QryAtas.State <> dsBrowse) or
     (QryAtas.IsEmpty) then
    Abort;

  BuscarDados;

  QuickRep.Preview;

end;

procedure TFormAtas.BuscarDados;
begin

  with QryAtas do
  begin

    RxMem.Close;
    RxMem.Open;

    RxMem.Append;
    RxMemCodigo.AsInteger := FieldByName('Codigo').AsInteger;
    RxMemTipoAta.AsString := FieldByName('DescTipo').AsString;

    DmJetro.QryAux.Close;
    DmJetro.QryAux.SQL.Clear;
    DmJetro.QryAux.SQL.Add('select P.Nome Pastor, I.EndRua, I.EndNumero,');
    DmJetro.QryAux.SQL.Add('       I.EndBairro, I.EndCidade, I.EndEstado');
    DmJetro.QryAux.SQL.Add('from Igrejas I');
    DmJetro.QryAux.SQL.Add('Inner Join Pastores P on P.Codigo = I.Pastor');
    DmJetro.QryAux.SQL.Add('where I.Codigo = 1');
    DmJetro.QryAux.Open;

    RxMemEndRua.AsString    := DMJetro.QryAux.FieldByName('EndRua').AsString;
    RxMemEndNumero.AsString := DMJetro.QryAux.FieldByName('EndNumero').AsString;
    RxMemEndBairro.AsString := DMJetro.QryAux.FieldByName('EndBairro').AsString;
    RxMemEndCidade.AsString := DMJetro.QryAux.FieldByName('EndCidade').AsString;
    RxMemEndEstado.AsString := DMJetro.QryAux.FieldByName('EndEstado').AsString;

    RxMemPastor.AsString    := DMJetro.QryAux.FIeldByName('Pastor').AsString;

    RxMemDataInicioExtenso.AsString := ExtensoData(FieldByName('DataInicio').AsDateTime);
    RxMemHoraInicioExtenso.AsString := ExtensoHoras(StrToTime(FieldByName('HoraInicio').AsString));
    RxMemDataFimExtenso.AsString    := ExtensoData(FieldByName('DataFim').AsDateTime);
    RxMemHoraFimExtenso.AsString    := ExtensoHoras(StrToTime(FieldByName('HoraFim').AsString));

    DmJetro.QryAux.Close;
    DmJetro.QryAux.SQL.Clear;
    DmJetro.QryAux.SQL.Add('select M.Nome from CDL');
    DmJetro.QryAux.SQL.Add('inner join Membros M on M.FichaNumero = CDL.Membro');
    DmJetro.QryAux.SQL.Add('where Cargo = 3');
    DmJetro.QryAux.SQL.Add('  and Ano = :ano');
    DMJetro.QryAux.ParamByName('ano').Value := FormatDateTime('YYYY', FieldByName('DataInicio').AsDateTime);
    DmJetro.QryAux.Open;

    RxMemSecretario.AsString := DMJetro.QryAux.fieldByName('Nome').AsString;

    RxMemAssuntos.AsString :=
                    RxMemTipoAta.AsString +
                    ' da Igreja do Evangelho Quadrangular, situada a ' +
                    RxMemEndRua.AsString + ', ' +
                    RxMemEndNumero.AsString + ', Bairro ' +
                    RxMemEndBairro.AsString + ' na cidade de ' +
                    RxMemEndCidade.AsString + ' em ' +
                    RxMemEndEstado.AsString + ', iniciou-se as ' +
                    RxMemHoraInicioExtenso.AsString + ' do dia ' +
                    RxMemDataInicioExtenso.AsString + ', ' +
                    FieldByName('Assuntos').AsString +

                    'Nada mais tendo a tratar deu-se encerramento as ' +
                    RxMemHoraFimExtenso.AsString + ' do dia ' +
                    RxMemDataFimExtenso.AsString + ', ' +
                    'com a benção apostólica. Eu ' +
                    RxMemSecretario.AsString +
                    ' lavro a presente ata que após lida e aprovada assino juntamente com o presidente.';
  end;
  RxMem.First;

end;

procedure TFormAtas.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  RxMAssinaturas.Close;
  RxMAssinaturas.Open;

  RxMAssinaturas.Append;
  RxMAssinaturasPastor.AsString     := RxMemPastor.AsString;
  RxMAssinaturasSecretario.AsString := RxMemSecretario.AsString;
  RxMAssinaturas.Post;
end;

procedure TFormAtas.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
    SpdBtnCDL.Click;
end;

procedure TFormAtas.FormActivate(Sender: TObject);
begin
  ComboTabelaAuxiliar('TiposAta', '', CboTipo);
  RxComboTabelaAuxiliar('TiposAta','',RxDBCboTipo);

end;

end.
