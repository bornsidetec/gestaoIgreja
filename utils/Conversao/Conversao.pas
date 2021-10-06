unit Conversao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InterBaseUniProvider, UniProvider, SQLServerUniProvider, DB,
  DBAccess, Uni, StdCtrls, MemDS, ComCtrls, UniDacVcl;

type
  TForm1 = class(TForm)
    UniConnMSSQL: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    UniConnFirebird: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    QryRecebe: TUniQuery;
    QryEnvia: TUniQuery;
    BtnMembros: TButton;
    ProgressBar1: TProgressBar;
    BtnVisitantes: TButton;
    BtnPastores: TButton;
    Qry: TUniQuery;
    BtnIgreja: TButton;
    BtnProgramacao: TButton;
    BtnCultos: TButton;
    BtnCriancas: TButton;
    BtnCDL: TButton;
    BtnDiaconos: TButton;
    BtnOfertas: TButton;
    BtnDizimos: TButton;
    BtnEntradas: TButton;
    BtnSaidas: TButton;
    BtnViagens: TButton;
    BtnGastos: TButton;
    BtnFechamento: TButton;
    BtnFornecedores: TButton;
    ConnDialogMSSQL: TUniConnectDialog;
    ConnDialogFirebird: TUniConnectDialog;
    procedure BtnMembrosClick(Sender: TObject);
    procedure BtnVisitantesClick(Sender: TObject);
    procedure BtnPastoresClick(Sender: TObject);
    procedure BtnIgrejaClick(Sender: TObject);
    procedure BtnProgramacaoClick(Sender: TObject);
    procedure BtnCDLClick(Sender: TObject);
    procedure BtnDiaconosClick(Sender: TObject);
    procedure BtnCriancasClick(Sender: TObject);
    procedure BtnCultosClick(Sender: TObject);
    procedure BtnOfertasClick(Sender: TObject);
    procedure BtnDizimosClick(Sender: TObject);
    procedure BtnEntradasClick(Sender: TObject);
    procedure BtnFornecedoresClick(Sender: TObject);
    procedure BtnSaidasClick(Sender: TObject);
    procedure BtnViagensClick(Sender: TObject);
    procedure BtnGastosClick(Sender: TObject);
    procedure BtnFechamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnMembrosClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Membros order by FichaNumero');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Membros order by FichaNumero');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    UniConnFirebird.StartTransaction;
    try
      QryRecebe.Append;
      for i:=0 to QryEnvia.FieldCount -1 do
      begin
        QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
      end;
      QryRecebe.Post;
    except
      on e: Exception do
      begin
        ShowMessage(e.Message);
        UniConnFirebird.Rollback;
        Abort;
      end;

    end;
    UniConnFirebird.Commit;
    
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_MEMBROS_ID RESTART WITH ' + QryEnvia.FieldByName('FichaNumero').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnVisitantesClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Visitantes order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Visitantes order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      if (QryEnvia.FieldDefs[i].Name = 'DiaNasc') then
      begin
        if ((QryEnvia.FieldByName('DiaNasc').AsInteger <> 0) or
           (QryEnvia.FieldByName('MesNasc').AsInteger <> 0)) and
           (not (QryEnvia.FieldByName('DiaNasc').IsNull) and
           not(QryEnvia.FieldByName('MesNasc').IsNull)) then
          QryRecebe.FieldByName('DataNascimento').AsDateTime := StrToDate(QryEnvia.FieldByName('DiaNasc').AsString +
                                                                          '/' +
                                                                          QryEnvia.FieldByName('MesNasc').AsString +
                                                                          '/2000')
        else
          Continue;
      end
      else if QryEnvia.FieldDefs[i].Name <> 'MesNasc' then
        QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;

  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_VISITANTES_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');
end;

procedure TForm1.BtnPastoresClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Pastores order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Pastores order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
        QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;

  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_PASTORES_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnIgrejaClick(Sender: TObject);
var
  i,j : Integer;
begin
  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Igrejas order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Igrejas order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
        QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;

  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_IGREJAS_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');
end;

procedure TForm1.BtnCDLClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from CDL order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from CDL order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_CDL_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnProgramacaoClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Programacao order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Programacao order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
        QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;

  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_PROGRAMACAO_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnDiaconosClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Diaconos order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Diaconos order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_DIACONOS_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnCriancasClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Criancas order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Criancas order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      if (QryEnvia.FieldDefs[i].Name <> 'FiliacaoPai') and
         (QryEnvia.FieldDefs[i].Name <> 'FiliacaoMae') then

        QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_CRIANCAS_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnCultosClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Cultos order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Cultos order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_CULTOS_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnOfertasClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from OfertantesCulto order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from OfertantesCulto order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_OFERTANTESCULTO_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnDizimosClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from DizimistasCulto order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from DizimistasCulto order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_DIZIMISTASCULTO_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnEntradasClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Entradas order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Entradas order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_ENTRADAS_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnFornecedoresClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Fornecedores order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Fornecedores order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_FORNECEDORES_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnSaidasClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Saidas order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Saidas order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_SAIDAS_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnViagensClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Viagens order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Viagens order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_VIAGENS_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnGastosClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from GastosViagem order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from GastosViagem order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_GASTOSVIAGEM_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

procedure TForm1.BtnFechamentoClick(Sender: TObject);
var
  i,j: Integer;
begin

  QryRecebe.SQL.Clear;
  QryRecebe.SQL.Add('select * from Fechamento order by Codigo');
  QryRecebe.Open;

  QryEnvia.SQL.Clear;
  QryEnvia.SQL.Add('select * from Fechamento order by Codigo');
  QryEnvia.Open;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryEnvia.RecordCount;

  while not QryEnvia.Eof do
  begin
    QryRecebe.Append;
    for i:=0 to QryEnvia.FieldCount -1 do
    begin
      QryRecebe.FieldByName(QryEnvia.FieldDefs[i].Name).Value := QryEnvia.FieldbyName(QryEnvia.FieldDefs[i].Name).Value;
    end;
    QryRecebe.Post;

    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    QryEnvia.Next;
  end;

  Qry.SQL.Clear;
  Qry.SQL.Add('ALTER SEQUENCE GEN_FECHAMENTO_ID RESTART WITH ' + QryEnvia.FieldByName('Codigo').AsString);
  Qry.ExecSQL;

  ProgressBar1.Position := 0;

  ShowMessage('Sucesso.');

end;

end.
