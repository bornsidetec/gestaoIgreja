unit UImportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ADODB, DB, MemDS, DBAccess, Uni,
  UniProvider, InterBaseUniProvider, Registry, OleServer, ExcelXP, Grids, StrUtils,
  Spin;

type
  TFormImporta = class(TForm)
    Label1: TLabel;
    SpdBtnOpen: TSpeedButton;
    EditPath: TEdit;
    LblExcel: TLabel;
    LblFirebird: TLabel;
    ProgressBarCEP: TProgressBar;
    BtnSair: TBitBtn;
    BtnConectar: TBitBtn;
    BtnProcessar: TBitBtn;
    Conn: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    QryMembros: TUniQuery;
    QryMembrosFichaNumero: TAutoIncField;
    QryMembrosNome: TStringField;
    QryMembrosDataNascimento: TDateTimeField;
    QryMembrosDataValidade: TDateTimeField;
    QryMembrosDataBatismo: TDateTimeField;
    QryMembrosMembroDesde: TDateTimeField;
    QryMembrosNaturalidade: TStringField;
    QryMembrosEstadoCivil: TStringField;
    QryMembrosNomeConjuge: TStringField;
    QryMembrosFiliacaoPai: TStringField;
    QryMembrosFiliacaoMae: TStringField;
    QryMembrosRG: TStringField;
    QryMembrosCPF: TStringField;
    QryMembrosEndRua: TStringField;
    QryMembrosEndNumero: TStringField;
    QryMembrosEndBairro: TStringField;
    QryMembrosEndComplemento: TStringField;
    QryMembrosEndCidade: TStringField;
    QryMembrosEndEstado: TStringField;
    QryMembrosEndCep: TStringField;
    QryMembrosFoneResid: TStringField;
    QryMembrosFoneCelular: TStringField;
    QryMembrosUserInsert: TIntegerField;
    QryMembrosDataInsert: TDateTimeField;
    QryMembrosUserUpdate: TIntegerField;
    QryMembrosDataUpdate: TDateTimeField;
    QryMembrosCartaoMembro: TStringField;
    ADOConn: TADOConnection;
    ADOQryMembros: TADOQuery;
    OpenDialog: TOpenDialog;
    ADOQryMembrosCdigo: TIntegerField;
    ADOQryMembrosNome: TWideStringField;
    ADOQryMembrosEndereo: TWideStringField;
    ADOQryMembrosBairro: TWideStringField;
    ADOQryMembrosCidade: TWideStringField;
    ADOQryMembrosUF: TWideStringField;
    ADOQryMembrosCEP: TWideStringField;
    ADOQryMembrosTelefoneResidencial: TWideStringField;
    ADOQryMembrosCelular: TWideStringField;
    ADOQryMembrosRG: TWideStringField;
    ADOQryMembrosCPF: TWideStringField;
    ADOQryMembrosSexo: TWideStringField;
    ADOQryMembrosDataNascimento: TDateTimeField;
    ADOQryMembrosNaturalidade: TWideStringField;
    ADOQryMembrosNomePai: TWideStringField;
    ADOQryMembrosNomeMe: TWideStringField;
    ADOQryMembrosEstadoCivil: TIntegerField;
    ADOQryMembrosConjuge: TWideStringField;
    ADOQryMembrosDataBatismo: TDateTimeField;
    QryMembrosSEXO: TStringField;
    QryMembrosSTATUS: TIntegerField;
    ADOQryMembrosStatus: TWideStringField;
    StringGrid1: TStringGrid;
    QryMembrosEMAIL: TStringField;
    SpinEdit1: TSpinEdit;
    QryAux: TUniQuery;
    procedure BtnConectarClick(Sender: TObject);
    procedure SpdBtnOpenClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnProcessarClick(Sender: TObject);
    procedure QryMembrosNewRecord(DataSet: TDataSet);
    function TiraMask(S: String): String;
    function XlsToStringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImporta: TFormImporta;

implementation

uses ComObj;

{$R *.dfm}

procedure TFormImporta.BtnConectarClick(Sender: TObject);
var
  Registro : TRegistry;
begin

  LblFirebird.Font.Color := clRed;
  Conn.Connected := False;
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  Registro.OpenKey('SOFTWARE\IEQSoft\Banco',False);

  Conn.Server   := EmptyStr;
  Conn.Database := EmptyStr;
  Conn.Username := EmptyStr;
  Conn.Password := EmptyStr;

  Conn.Server   := Registro.ReadString('Server');;
  Conn.Database := Registro.ReadString('DataBase');
  Conn.Username := Registro.ReadString('UserName');
  Conn.Password := Registro.ReadString('Password');

  Registro.CloseKey;
  Registro.Free;
  try
    Conn.Connected := True;
    LblFirebird.Font.Color := clGreen;
  except
    on e: Exception do
    begin
     showmessage('Erro:' + #13 + e.Message);
     Abort;
    end;
  end;

  if XlsToStringGrid(StringGrid1, EditPath.text) then
  begin
    LblExcel.Font.Color := clGreen;
    SpinEdit1.MaxValue  := StringGrid1.RowCount - 1;
  end;

end;

procedure TFormImporta.SpdBtnOpenClick(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog.Execute then
    EditPath.Text := OpenDialog.FileName;
end;

procedure TFormImporta.BtnSairClick(Sender: TObject);
begin
  LblExcel.Font.Color := clRed;
  LblFirebird.Font.Color := clRed;

  ADOConn.Connected := False;
  Conn.Connected := False;
  Application.Terminate;
end;

procedure TFormImporta.BtnProcessarClick(Sender: TObject);
var
  iIndice : Integer;
  ListaErros : TStringList;
begin
  if (LblExcel.Font.Color = clRed) or
     (Conn.Connected = false) then
  begin
    showmessage('Verificar conexões');
    Abort;
  end;

  ProgressBarCEP.Max := StringGrid1.RowCount - (1+ SpinEdit1.Value);

  ListaErros := TStringList.Create();

  QryMembros.Open;

  with StringGrid1 do //StringGrid
  begin
    try
  	  for iIndice := SpinEdit1.Value to RowCount -1 do
      begin
        ProgressBarCEP.Position := ProgressBarCEP.Position + 1;
        Application.ProcessMessages;

        QryAux.Close;
        QryAux.SQL.Clear;
        QryAux.SQL.Add('select * from membros where nome like ''%' + Uppercase(Cells[1, iIndice]) + '%''');
        QryAux.Open;

        if QryAux.IsEmpty then
        begin

          try
            QryMembros.Append;
            QryMembrosSEXO.AsString     := Cells[0, iIndice];                                  //Coluna 1 do StringGrid - SEXO
            QryMembrosNome.AsString     := Uppercase(Cells[1, iIndice]);                       //Coluna 2 do StringGrid - NOME

            if (Cells[2, iIndice] <> EmptyStr) and
               (Cells[3, iIndice] <> EmptyStr) and
               (Cells[4, iIndice] <> EmptyStr) then
              QryMembrosDataNascimento.AsDateTime := StrToDateTime(Cells[2, iIndice] + '/' +   //Coluna 3 do StringGrid - DIA_nasc
                                                                   Cells[3, iIndice] + '/' +   //Coluna 4 do StringGrid - MES_nasc
                                                                   Cells[4, iIndice])          //Coluna 5 do StringGrid - ANO_nasc
            else
              QryMembrosDataNascimento.AsDateTime := 0;


            if (Cells[6, iIndice] <> EmptyStr) and
               (Cells[7, iIndice] <> EmptyStr) and
               (Cells[8, iIndice] <> EmptyStr) then
              QryMembrosDataBatismo.AsDateTime    := StrToDateTime(Cells[6, iIndice] + '/' +   //Coluna 7 do StringGrid - DIA_bat
                                                                   Cells[7, iIndice] + '/' +   //Coluna 8 do StringGrid - MES_bat
                                                                   Cells[8, iIndice]);         //Coluna 9 do StringGrid - ANO_bat

            QryMembrosEndRua.AsString    := Uppercase(Cells[10, iIndice]);                     //Coluna 10 do StringGrid - NOME
            QryMembrosEndNumero.AsString := Uppercase(Cells[11, iIndice]);                     //Coluna 11 do StringGrid - NOME

            QryMembrosEndCep.AsString    := copy(Cells[12, iIndice],1,5) +                     //Coluna 12 do StringGrid - CEP
                                            copy(Cells[12, iIndice],7,3);

            QryMembrosEndBairro.AsString := Uppercase(Cells[13, iIndice]);                     //Coluna 13 do StringGrid - NOME
            QryMembrosEndCidade.AsString := Uppercase(Cells[14, iIndice]);                     //Coluna 14 do StringGrid - NOME
            QryMembrosEndEstado.AsString := 'SP';                                              //provavelmente será estado SP

            QryMembrosFoneResid.AsString   := IfThen(length(Cells[15, iIndice]) < 10, copy('11' + Cells[15, iIndice],1,10), copy(Cells[15, iIndice],1,10));
            QryMembrosFoneCelular.AsString := copy(Cells[16, iIndice],1,2) + copy(Cells[16, iIndice],4,8);
            QryMembrosEMAIL.asString       := LowerCase(Cells[18, iIndice]);
            QryMembrosNomeConjuge.AsString := Uppercase(Cells[20, iIndice]);
            QryMembrosFiliacaoPai.AsString := Uppercase(Cells[21, iIndice]);
            QryMembrosFiliacaoMae.AsString := Uppercase(Cells[22, iIndice]);
            QryMembrosStatus.AsInteger := 1;
            QryMembros.Post;
          except
            on e : Exception do
            begin
              QryMembros.Cancel;
              ListaErros.Add('Linha: ' + IntToStr(iIndice + 1) + ' (' + E.Message + ')');
              Continue;
            end;
          end;
        end;
      end;
      if ListaErros.Count = 0 then
        showmessage('Completado com sucesso.')
      else
      begin
        ListaErros.SaveToFile('C:\Bornside\IEQSoft\ImportacaoErros.bserr');
        showmessage('Completado com erros.');
      end;
      ProgressBarCEP.Position := 0;
    except
      on e: Exception do
        showmessage('Erro:' + #13 + e.Message);
    end;
  end;
  ListaErros.Free;
end;

procedure TFormImporta.QryMembrosNewRecord(DataSet: TDataSet);
begin
  QryMembrosDataInsert.AsDateTime := now;
  QryMembrosUserInsert.AsInteger  := 1;
end;

function TFormImporta.TiraMask(S: String): String;
begin
  S:= StringReplace(S,'(','',[]);
  S:= StringReplace(S,')','',[]);
  S:= StringReplace(S,'xx','',[]);
  S:= StringReplace(S,'-','',[]);
  TiraMask := S;
end;

function TFormImporta.XlsToStringGrid(AGrid: TStringGrid;
  AXLSFile: string): Boolean;
const
	xlCellTypeLastCell = $0000000B;
var
	XLApp, Sheet: OLEVariant;
	RangeMatrix: Variant;
	x, y, k, r: Integer;
begin
  Result:=False;
  //Cria Excel- OLE Object
  XLApp:=CreateOleObject('Excel.Application');
  try
    //Esconde Excel
    XLApp.Visible:=False;
    //Abre o Workbook
    XLApp.Workbooks.Open(AXLSFile);
    Sheet:=XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];
    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    //Pegar o número da última linha
    x:=XLApp.ActiveCell.Row;
    //Pegar o número da última coluna
    y:=XLApp.ActiveCell.Column;
    //Seta Stringgrid linha e coluna
    AGrid.RowCount:=x;
    AGrid.ColCount:=y;
    //Associaca a variant WorkSheet com a variant do Delphi
    RangeMatrix:=XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;
    //Cria o loop para listar os registros no TStringGrid
    k:=1;
    repeat
      for r:=1 to y do
        AGrid.Cells[(r - 1),(k - 1)]:=RangeMatrix[K, R];
      Inc(k,1);
    until k > x;
    RangeMatrix:=Unassigned;
  finally
    //Fecha o Excel
    if not VarIsEmpty(XLApp) then
      begin
      XLApp.Quit;
      XLAPP:=Unassigned;
      Sheet:=Unassigned;
      Result:=True;
      end;
    end;
end;
end.
