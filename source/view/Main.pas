unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, RxGIF, ExtCtrls, ComCtrls, jpeg, XPMan, ToolWin, DB,
  AppEvnts, RLConsts, StdCtrls;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Membros1: TMenuItem;
    Visitantes1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Pastores1: TMenuItem;
    Igrejas1: TMenuItem;
    Processos1: TMenuItem;
    Impresso1: TMenuItem;
    Usurios1: TMenuItem;
    Financeiro: TMenuItem;
    RelatriodeCulto1: TMenuItem;
    FechamentoMensal1: TMenuItem;
    CartodeMembro1: TMenuItem;
    ImageListMenu: TImageList;
    ImageList16: TImageList;
    ImageList24: TImageList;
    StatusBar1: TStatusBar;
    Image1: TImage;
    XPManifest1: TXPManifest;
    Aniversariantes1: TMenuItem;
    Visitantes2: TMenuItem;
    Remetentes1: TMenuItem;
    CDL1: TMenuItem;
    Diconos1: TMenuItem;
    RelaesHumanas1: TMenuItem;
    REFC1: TMenuItem;
    PreImpressos1: TMenuItem;
    FichadeMembro1: TMenuItem;
    FichadeVisitante1: TMenuItem;
    ranfernciasdePastores1: TMenuItem;
    Sadas1: TMenuItem;
    Patrimnio1: TMenuItem;
    ControledoLivro1: TMenuItem;
    Doaes1: TMenuItem;
    Vendas1: TMenuItem;
    Aquisicoes1: TMenuItem;
    N3: TMenuItem;
    Dizimistas1: TMenuItem;
    N4: TMenuItem;
    RelatriodeViagens1: TMenuItem;
    SustentoPastoral1: TMenuItem;
    QuitacaodeTaxas1: TMenuItem;
    SustentoPastoral2: TMenuItem;
    RelatriodeViagens2: TMenuItem;
    Membros2: TMenuItem;
    Crianas1: TMenuItem;
    Backup1: TMenuItem;
    N5: TMenuItem;
    Apoio1: TMenuItem;
    AlterarUsurio1: TMenuItem;
    Contedo1: TMenuItem;
    Permisses1: TMenuItem;
    Entradas1: TMenuItem;
    RelatriodeViagens3: TMenuItem;
    SustentoPastoral3: TMenuItem;
    RelatriodeCultoREFC1: TMenuItem;
    N6: TMenuItem;
    Configuraes1: TMenuItem;
    Certificados1: TMenuItem;
    Batismo1: TMenuItem;
    ApresentaodeCriana1: TMenuItem;
    AssembliaGeral1: TMenuItem;
    Atas1: TMenuItem;
    Liderana1: TMenuItem;
    Balano1: TMenuItem;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    CartasMalaDireta1: TMenuItem;
    Casamento1: TMenuItem;
    EBQ1: TMenuItem;
    Matrculas1: TMenuItem;
    Classes1: TMenuItem;
    Professores1: TMenuItem;
    N2: TMenuItem;
    Biblioteca1: TMenuItem;
    Livros1: TMenuItem;
    Emprstimos1: TMenuItem;
    Biblioteca2: TMenuItem;
    Etiquetas1: TMenuItem;
    RelaodeEmprstimos1: TMenuItem;
    EscolaBblica1: TMenuItem;
    RelatrioEBQ2: TMenuItem;
    ListadeChamadas1: TMenuItem;
    RelatrioEBQ1: TMenuItem;
    Informaes1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    abelas1: TMenuItem;
    DepartamentosdeUsurios1: TMenuItem;
    DepartamentosdeLiderena1: TMenuItem;
    iposdeSadas1: TMenuItem;
    iposdeEntradas1: TMenuItem;
    iposdeDoaes1: TMenuItem;
    iposdeVisitas1: TMenuItem;
    iposdeAtas1: TMenuItem;
    CargosCDL1: TMenuItem;
    N9: TMenuItem;
    RegistrodeAtas1: TMenuItem;
    Eventos1: TMenuItem;
    Fornecedores1: TMenuItem;
    iposdeObjetos1: TMenuItem;
    Escolaridades1: TMenuItem;
    Profisses1: TMenuItem;
    Devolues1: TMenuItem;
    CategoriasdeClasse1: TMenuItem;
    ResumoDirio1: TMenuItem;
    Grficos1: TMenuItem;
    Comparativo1: TMenuItem;
    Financeiro1: TMenuItem;
    FichadeCrianca1: TMenuItem;
    RelaodeDizimistasRDC1: TMenuItem;
    ApplicationEvents: TApplicationEvents;
    iposdeEventos1: TMenuItem;
    Avisos1: TMenuItem;
    Cartas1: TMenuItem;
    Envelopes1: TMenuItem;
    Dzimos1: TMenuItem;
    OfertaEspecial1: TMenuItem;
    N10: TMenuItem;
    ControledeAlteraes1: TMenuItem;
    N11: TMenuItem;
    EnviodeSMS1: TMenuItem;
    N12: TMenuItem;
    SuporteOnline1: TMenuItem;
    ImportarCEP1: TMenuItem;
    Credencial1: TMenuItem;
    Modem1: TMenuItem;
    BornSide: TLabel;
    Tecnologia: TLabel;
    Clulas1: TMenuItem;
    Redes1: TMenuItem;
    Setores1: TMenuItem;
    reas1: TMenuItem;
    CadastrodeClulas1: TMenuItem;
    Movimento1: TMenuItem;
    RelatrioSemanal1: TMenuItem;
    Multiplicaes1: TMenuItem;
    procedure RelatriodeCulto1Click(Sender: TObject);
    procedure Membros1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Visitantes1Click(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure Pastores1Click(Sender: TObject);
    procedure Igrejas1Click(Sender: TObject);
    procedure Aniversariantes1Click(Sender: TObject);
    procedure Visitantes2Click(Sender: TObject);
    procedure Remetentes1Click(Sender: TObject);
    procedure CDL1Click(Sender: TObject);
    procedure Diconos1Click(Sender: TObject);
    procedure REFC1Click(Sender: TObject);
    procedure Balano1Click(Sender: TObject);
    procedure Comparativo1Click(Sender: TObject);
    procedure Financeiro1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Dizimistas1Click(Sender: TObject);
    procedure Sadas1Click(Sender: TObject);
    procedure SustentoPastoral1Click(Sender: TObject);
    procedure QuitacaodeTaxas1Click(Sender: TObject);
    procedure Membros2Click(Sender: TObject);
    procedure FichadeMembro1Click(Sender: TObject);
    procedure Crianas1Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
    procedure AlterarUsurio1Click(Sender: TObject);
    procedure Permisses1Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure SustentoPastoral3Click(Sender: TObject);
    procedure RelatriodeViagens1Click(Sender: TObject);
    procedure RelatriodeViagens3Click(Sender: TObject);
    procedure RelatriodeCultoREFC1Click(Sender: TObject);
    procedure RelatriodeViagens2Click(Sender: TObject);
    procedure SustentoPastoral2Click(Sender: TObject);
    procedure DepartamentosdeLiderena1Click(Sender: TObject);
    procedure Atas1Click(Sender: TObject);
    procedure CargosCDL1Click(Sender: TObject);
    procedure DepartamentosdeUsurios1Click(Sender: TObject);
    procedure iposdeAtas1Click(Sender: TObject);
    procedure iposdeDoaes1Click(Sender: TObject);
    procedure iposdeEntradas1Click(Sender: TObject);
    procedure iposdeSadas1Click(Sender: TObject);
    procedure iposdeVisitas1Click(Sender: TObject);
    procedure RegistrodeAtas1Click(Sender: TObject);
    procedure CartodeMembro1Click(Sender: TObject);
    procedure Liderana1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Doaes1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure iposdeObjetos1Click(Sender: TObject);
    procedure Escolaridades1Click(Sender: TObject);
    procedure Profisses1Click(Sender: TObject);
    procedure Livros1Click(Sender: TObject);
    procedure Emprstimos1Click(Sender: TObject);
    procedure Devolues1Click(Sender: TObject);
    procedure RelaodeEmprstimos1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure ranfernciasdePastores1Click(Sender: TObject);
    procedure FichadeVisitante1Click(Sender: TObject);
    procedure Professores1Click(Sender: TObject);
    procedure CategoriasdeClasse1Click(Sender: TObject);
    procedure Classes1Click(Sender: TObject);
    procedure Matrculas1Click(Sender: TObject);
    procedure FichadeCrianca1Click(Sender: TObject);
    procedure FechamentoMensal1Click(Sender: TObject);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure CartasMalaDireta1Click(Sender: TObject);
    procedure iposdeEventos1Click(Sender: TObject);
    procedure Eventos1Click(Sender: TObject);
    procedure Avisos1Click(Sender: TObject);
    procedure Batismo1Click(Sender: TObject);
    procedure ApresentaodeCriana1Click(Sender: TObject);
    procedure Casamento1Click(Sender: TObject);
    procedure Cartas1Click(Sender: TObject);
    procedure RelaodeDizimistasRDC1Click(Sender: TObject);
    procedure Dzimos1Click(Sender: TObject);
    procedure OfertaEspecial1Click(Sender: TObject);
    procedure ControledeAlteraes1Click(Sender: TObject);
    procedure SuporteOnline1Click(Sender: TObject);
    procedure ImportarCEP1Click(Sender: TObject);
    procedure Credencial1Click(Sender: TObject);
    procedure Modem1Click(Sender: TObject);
    procedure AssembliaGeral1Click(Sender: TObject);
    procedure Redes1Click(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
    procedure reas1Click(Sender: TObject);
    procedure CadastrodeClulas1Click(Sender: TObject);
    procedure RelatrioSemanal1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AlterarUsuario;
  public
    { Public declarations }
    Usuario: Integer;
    AcaoSair: Integer;
    ParametroSelecao: String;

    Versao: String;
    Banco: String;

    Tabela: String;

  end;

var
  FormMain: TFormMain;

implementation

uses Cultos, Membros, UDmJetro, Visitantes, About, Pastores, Igrejas,
  RelAniversariantes, RelVisitantes, ImpRemetentes, CDL,
  Diaconos, REFC, Balanco, Comparativo, ComparativoFinan, Usuarios, Sair,
  Login, Funcoes, RelDizimistas, Saidas, SustentoPastoral, Taxas,
  RelMembros, PreImpMembros, Criancas, Backup, Permissoes, Entradas,
  RelSustentoPastoral, Viagens, RelViagens, PreImpREFC,
  PreImpViagens, PreImpSustento, Atas, Tabelas, PreImpAtas,
  CartaoMembro, Lideranca, Fornecedores, Doacoes, Vendas, Objetos,
  Emprestimos, Devolucoes, RelEmprestimos, EtiquetaObjeto,
  TransferenciasPastor, PreImpVisitantes, Professores, ClassesEBQ,
  Matriculas, PreImpCriancas, Fechamento, Cartas, Eventos, Avisos,
  CertificadoBatismo, CertificadoApCrianca, CertificadoCasamento,
  ImpCartas, PreImpRDC, EnvelopeDizimo, EnvelopeOfertaEspecial, Alteracoes,
  EnviaSMS, REFC2, ImportaCEP, EnviaSMSModem, Frequentadores, Assembleia,
  Redes, Setores, Areas, Celulas, RelatorioCelula;

{$R *.dfm}

procedure TFormMain.RelatriodeCulto1Click(Sender: TObject);
begin
  if not Permissao('Financeiro > Relatorio de Culto', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCultos = nil then
    Application.CreateForm(TFormCultos, FormCultos);
  FormCultos.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Membros1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Membros', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormMembros = nil then
    Application.CreateForm(TFormMembros, FormMembros);
  FormMembros.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  DMJetro.Conn.Connected := False;
  try
    DMJetro.Conn.Connected := True;
  except
    InfoBox(MsgFalhaConexao);
    Application.Terminate;
  end;
end;

procedure TFormMain.Visitantes1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Visitantes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormVisitantes = nil then
    Application.CreateForm(TFormVisitantes, FormVisitantes);
  FormVisitantes.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.SobreoSistema1Click(Sender: TObject);
begin
  Self.Cursor := crHourGlass;
  if FormAbout = nil then
    Application.CreateForm(TFormAbout, FormAbout);
  FormAbout.ShowModal;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Pastores1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Pastores', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPastores = nil then
    Application.CreateForm(TFormPastores, FormPastores);
  FormPastores.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Igrejas1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Igreja', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormIgrejas = nil then
    Application.CreateForm(TFormIgrejas, FormIgrejas);
  FormIgrejas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Aniversariantes1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Relacoes Humanas > Aniversariantes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRelAniversariantes = nil then
    Application.CreateForm(TFormRelAniversariantes, FormRelAniversariantes);
  FormRelAniversariantes.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Visitantes2Click(Sender: TObject);
begin
  if not Permissao('Impressao > Relacoes Humanas > Visitantes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRelVisitantes = nil then
    Application.CreateForm(TFormRelVisitantes, FormRelVisitantes);
  FormRelVisitantes.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Remetentes1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Relacoes Humanas > Remetentes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormImpRemetentes = nil then
    Application.CreateForm(TFormImpRemetentes, FormImpRemetentes);
  FormImpRemetentes.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.CDL1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > CDL', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCDL = nil then
    Application.CreateForm(TFormCDL, FormCDL);
  FormCDL.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Diconos1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Diaconos', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormDiaconos = nil then
    Application.CreateForm(TFormDiaconos, FormDiaconos);
  FormDiaconos.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.REFC1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Relatorio de Culto (REFC)', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormREFC2 = nil then
    Application.CreateForm(TFormREFC2, FormREFC2);
  FormREFC2.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Balano1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Balanco Financeiro', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormBalanco = nil then
    Application.CreateForm(TFormBalanco, FormBalanco);
  FormBalanco.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Comparativo1Click(Sender: TObject);
begin
  if not Permissao('Graficos > Frequencia', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormComparativo = nil then
    Application.CreateForm(TFormComparativo, FormComparativo);
  FormComparativo.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Financeiro1Click(Sender: TObject);
begin
  if not Permissao('Graficos > Financeiro', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormComparativoFinan = nil then
    Application.CreateForm(TFormComparativoFinan, FormComparativoFinan);
  FormComparativoFinan.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Usurios1Click(Sender: TObject);
begin
  if not Permissao('Apoio > Cadastro de Usuarios', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormUsuarios = nil then
    Application.CreateForm(TFormUsuarios, FormUsuarios);
  FormUsuarios.ShowModal;
  Self.Cursor := crDefault;
end;

procedure TFormMain.AlterarUsuario;
begin
  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.ShowModal;
end;

procedure TFormMain.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  Application.CreateForm(TFormSair, FormSair);
  FormSair.ShowModal;
  FormSair.Free;
  Case AcaoSair of
    0 : CanClose := True;
    1 : AlterarUsuario;
    2 : CanClose := False;
  end;

end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  DMJetro.Conn.Connected := false;
  Application.Terminate;

end;

procedure TFormMain.FormCreate(Sender: TObject);
begin

  Versao := 'Versão: F16.0421';
  DMJetro.Conn.Connected := True;
  AcaoSair := 0;

  Tecnologia.Left := BornSide.Left + BornSide.Width + 8;  

end;

procedure TFormMain.Dizimistas1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Dizimistas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRelDizimistas = nil then
    Application.CreateForm(TFormRelDizimistas, FormRelDizimistas);
  FormRelDizimistas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Sadas1Click(Sender: TObject);
begin
  if not Permissao('Financeiro > Lancamento de Saidas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormSaidas = nil then
    Application.CreateForm(TFormSaidas, FormSaidas);
  FormSaidas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.SustentoPastoral1Click(Sender: TObject);
begin
  if not Permissao('Financeiro > Sustento Pastoral', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormSustentoPastoral = nil then
    Application.CreateForm(TFormSustentoPastoral, FormSustentoPastoral);
  FormSustentoPastoral.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.QuitacaodeTaxas1Click(Sender: TObject);
begin
  if not Permissao('Financeiro > Quitacao de Taxas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormTaxas = nil then
    Application.CreateForm(TFormTaxas, FormTaxas);
  FormTaxas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Membros2Click(Sender: TObject);
begin
  if not Permissao('Impressao > Membros', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRelMembros = nil then
    Application.CreateForm(TFormRelMembros, FormRelMembros);
  FormRelMembros.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.FichadeMembro1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Pre Impressos > Ficha p/ Cadastro de Membros', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPreImpMembros = nil then
    Application.CreateForm(TFormPreImpMembros, FormPreImpMembros);
  FormPreImpMembros.QuickRep.Preview;
  FormPreImpMembros.Close;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Crianas1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Criancas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCriancas = nil then
    Application.CreateForm(TFormCriancas, FormCriancas);
  FormCriancas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Backup1Click(Sender: TObject);
begin
  Self.Cursor := crHourGlass;
  if FormBackup = nil then
    Application.CreateForm(TFormBackup, FormBackup);
  FormBackup.ShowModal;
  Self.Cursor := crDefault;

end;


procedure TFormMain.AlterarUsurio1Click(Sender: TObject);
begin
  AlterarUsuario;
end;

procedure TFormMain.Permisses1Click(Sender: TObject);
begin
  if not Permissao('Apoio > Permissoes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPermissoes = nil then
    Application.CreateForm(TFormPermissoes, FormPermissoes);
  FormPermissoes.ShowModal;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Entradas1Click(Sender: TObject);
begin
  if not Permissao('Financeiro > Lancamento de Entradas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormEntradas = nil then
    Application.CreateForm(TFormEntradas, FormEntradas);
  FormEntradas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.SustentoPastoral3Click(Sender: TObject);
begin
  if not Permissao('Impressao > Sustento Pastoral', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRelSustentoPastoral = nil then
    Application.CreateForm(TFormRelSustentoPastoral, FormRelSustentoPastoral);
  FormRelSustentoPastoral.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.RelatriodeViagens1Click(Sender: TObject);
begin
  if not Permissao('Financeiro > Relatorio de Viagens', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormViagens = nil then
    Application.CreateForm(TFormViagens, FormViagens);
  FormViagens.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.RelatriodeViagens3Click(Sender: TObject);
begin
  if not Permissao('Impressao > Relatorio de Viagens', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRelViagens = nil then
    Application.CreateForm(TFormRelViagens, FormRelViagens);
  FormRelViagens.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.RelatriodeCultoREFC1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Pre Impressos > Relatorio de Culto (REFC)', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPreImpREFC = nil then
    Application.CreateForm(TFormPreImpREFC, FormPreImpREFC);
  FormPreImpREFC.QuickRep.Preview;
  FormPreImpREFC.Close;
  Self.Cursor := crDefault;

end;

procedure TFormMain.RelatriodeViagens2Click(Sender: TObject);
begin
  if not Permissao('Impressao > Pre Impressos > Relatorio de Viagens', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPreImpViagens = nil then
    Application.CreateForm(TFormPreImpViagens, FormPreImpViagens);
  FormPreImpViagens.QuickRep.Preview;
  FormPreImpViagens.Close;
  Self.Cursor := crDefault;

end;

procedure TFormMain.SustentoPastoral2Click(Sender: TObject);
begin
  if not Permissao('Impressao > Pre Impressos > Sustento Pastoral', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPreImpSustento = nil then
    Application.CreateForm(TFormPreImpSustento, FormPreImpSustento);
  FormPreImpSustento.QuickRep.Preview;
  FormPreImpSustento.Close;
  Self.Cursor := crDefault;

end;

procedure TFormMain.DepartamentosdeLiderena1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Departamentos de Lideranca', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'Departamentos';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Atas1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Atas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormAtas = nil then
    Application.CreateForm(TFormAtas, FormAtas);
  FormAtas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.CargosCDL1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Cargos de CDL', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'CargosCDL';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.DepartamentosdeUsurios1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Departamentos de Usuarios', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'DeptoUsuarios';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.iposdeAtas1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Tipos de Atas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'TiposAta';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.iposdeDoaes1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Tipos de Doacoes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'TiposDoacao';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.iposdeEntradas1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Tipos de Entradas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'TipoEntradas';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.iposdeSadas1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Tipos de Saidas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'TipoSaidas';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.iposdeVisitas1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Tipos de Visitas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'TiposVisita';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.RegistrodeAtas1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Pre Impressos > Registro de Atas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPreImpAtas = nil then
    Application.CreateForm(TFormPreImpAtas, FormPreImpAtas);
  FormPreImpAtas.QuickRep.Preview;
  FormPreImpAtas.Close;
  Self.Cursor := crDefault;

end;

procedure TFormMain.CartodeMembro1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Cartao de Membro', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCartaoMembro = nil then
    Application.CreateForm(TFormCartaoMembro, FormCartaoMembro);
  FormCartaoMembro.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Liderana1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Lideranca', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormLideranca = nil then
    Application.CreateForm(TFormLideranca, FormLideranca);
  FormLideranca.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Fornecedores1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Fornecedores', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormFornecedores = nil then
    Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Doaes1Click(Sender: TObject);
begin
  if not Permissao('Patrimonio > Doacoes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormDoacoes = nil then
    Application.CreateForm(TFormDoacoes, FormDoacoes);
  FormDoacoes.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Vendas1Click(Sender: TObject);
begin
  if not Permissao('Patrimonio > Vendas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormVendas = nil then
    Application.CreateForm(TFormVendas, FormVendas);
  FormVendas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.iposdeObjetos1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Tipos de Objetos', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'TiposObjeto';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Escolaridades1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Escolaridades', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'Escolaridades';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Profisses1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Profissoes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'Profissoes';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Livros1Click(Sender: TObject);
begin
  if not Permissao('Biblioteca > Objetos', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormObjetos = nil then
    Application.CreateForm(TFormObjetos, FormObjetos);
  FormObjetos.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Emprstimos1Click(Sender: TObject);
begin
  if not Permissao('Biblioteca > Emprestimos', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormEmprestimos = nil then
    Application.CreateForm(TFormEmprestimos, FormEmprestimos);
  FormEmprestimos.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Devolues1Click(Sender: TObject);
begin
  if not Permissao('Biblioteca > Devolucoes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormDevolucoes = nil then
    Application.CreateForm(TFormDevolucoes, FormDevolucoes);
  FormDevolucoes.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.RelaodeEmprstimos1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Biblioteca > Relacao de Emprestimos', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRelEmprestimos = nil then
    Application.CreateForm(TFormRelEmprestimos, FormRelEmprestimos);
  FormRelEmprestimos.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Etiquetas1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Biblioteca > Etiquetas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormEtiquetaObjeto = nil then
    Application.CreateForm(TFormEtiquetaObjeto, FormEtiquetaObjeto);
  FormEtiquetaObjeto.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.ranfernciasdePastores1Click(Sender: TObject);
begin
  if not Permissao('Processos > Transferencia de Pastor', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormTransferenciasPastor = nil then
    Application.CreateForm(TFormTransferenciasPastor, FormTransferenciasPastor);
  FormTransferenciasPastor.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.FichadeVisitante1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Pre Impressos > Ficha p/ Cadastro de Visitantes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPreImpVisitantes = nil then
    Application.CreateForm(TFormPreImpVisitantes, FormPreImpVisitantes);
  FormPreImpVisitantes.QuickRep.Preview;
  FormPreImpVisitantes.Close;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Professores1Click(Sender: TObject);
begin

  if not Permissao('Escola Biblica > Professores', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormProfessores = nil then
    Application.CreateForm(TFormProfessores, FormProfessores);
  FormProfessores.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.CategoriasdeClasse1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Categorias de Classe', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'CategoriasClasse';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Classes1Click(Sender: TObject);
begin

  if not Permissao('Escola Biblica > Classes', Usuario) then
    Abort;
  
  Self.Cursor := crHourGlass;
  if FormClassesEBQ = nil then
    Application.CreateForm(TFormClassesEBQ, FormClassesEBQ);
  FormClassesEBQ.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Matrculas1Click(Sender: TObject);
begin

  if not Permissao('Escola Biblica > Matriculas', Usuario) then
    Abort;
  
  Self.Cursor := crHourGlass;
  if FormMatriculas = nil then
    Application.CreateForm(TFormMatriculas, FormMatriculas);
  FormMatriculas.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.FichadeCrianca1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Pre Impressos > Ficha p/ Cadastro de Criancas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPreImpCriancas = nil then
    Application.CreateForm(TFormPreImpCriancas, FormPreImpCriancas);
  FormPreImpCriancas.QuickRep.Preview;
  FormPreImpCriancas.Close;
  Self.Cursor := crDefault;

end;

procedure TFormMain.FechamentoMensal1Click(Sender: TObject);
begin
  if not Permissao('Processos > Fechamento Mensal', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormFechamento = nil then
    Application.CreateForm(TFormFechamento, FormFechamento);
  FormFechamento.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.ApplicationEventsException(Sender: TObject;
  E: Exception);
var
  I, X: Integer;
  Texto: String;
  Sair: Boolean;
begin

  {
  if Pos('is not a valid date', E.Message) > 0 then
    InfoBox('Data inválida.')
  else if Pos('must have a value', E.Message) > 0 then
    InfoBox('Campo de preenchimento obrigatório.')
  else if Pos('The DELETE statement conflicted with the REFERENCE constraint ', E.Message) > 0 then
  }

  if Pos('Foreign key references are present for the record', E.Message) > 0 then
    InfoBox('O registro não pode ser excluído, está sendo usado.')
  else if (Pos('violation of PRIMARY or UNIQUE KEY constraint', E.Message) > 0) then
    InfoBox('Registro que você deseja inserir está duplicado.')
  else if (Pos('Foreign key reference target does not exist', E.Message) > 0) then
    InfoBox('O registro não existe na tabela Principal.')
  else if (Pos('is not a valid date', E.Message) > 0) then
    InfoBox('Data inválida.')
  else if (Pos('O aplicativo está usando um valor incorreto para a operação atual', E.Message) > 0) then
    InfoBox('Informação inválida.')
  else if (Pos('Invalid input value.', E.Message) > 0) then
    InfoBox('Informação inválida.')

  else
    InfoBox(E.Message);
end;

procedure TFormMain.CartasMalaDireta1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Cartas (Mala Direta)', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCartas = nil then
    Application.CreateForm(TFormCartas, FormCartas);
  FormCartas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.iposdeEventos1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Tabelas > Tipos de Eventos', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;

  Tabela   := 'TiposEvento';

  if FormTabelas = nil then
    Application.CreateForm(TFormTabelas, FormTabelas);
  FormTabelas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Eventos1Click(Sender: TObject);
begin
  if not Permissao('Cadastros > Eventos', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormEventos = nil then
    Application.CreateForm(TFormEventos, FormEventos);
  FormEventos.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Avisos1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Avisos', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormAvisos = nil then
    Application.CreateForm(TFormAvisos, FormAvisos);
  FormAvisos.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Batismo1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Certificados > Batismo', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCertificadoBatismo = nil then
    Application.CreateForm(TFormCertificadoBatismo, FormCertificadoBatismo);
  FormCertificadoBatismo.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.ApresentaodeCriana1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Certificados > Apresentacao de Crianca', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCertificadoApCrianca = nil then
    Application.CreateForm(TFormCertificadoApCrianca, FormCertificadoApCrianca);
  FormCertificadoApCrianca.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Casamento1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Certificados > Casamento', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCertificadoCasamento = nil then
    Application.CreateForm(TFormCertificadoCasamento, FormCertificadoCasamento);
  FormCertificadoCasamento.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Cartas1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Cartas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormImpCartas = nil then
    Application.CreateForm(TFormImpCartas, FormImpCartas);
  FormImpCartas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.RelaodeDizimistasRDC1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Pre Impressos > Relacao de Dizimistas (RDC)', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormPreImpRDC = nil then
    Application.CreateForm(TFormPreImpRDC, FormPreImpRDC);
  FormPreImpRDC.QuickRep.Preview;
  FormPreImpRDC.Close;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Dzimos1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Envelopes > Dizimo', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormEnvelopeDizimo = nil then
    Application.CreateForm(TFormEnvelopeDizimo, FormEnvelopeDizimo);
  FormEnvelopeDizimo.RLReport.Preview;
  FormEnvelopeDizimo.Close;
  Self.Cursor := crDefault;
end;

procedure TFormMain.OfertaEspecial1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Envelopes > Oferta Especial', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormEnvelopeOfertaEspecial = nil then
    Application.CreateForm(TFormEnvelopeOfertaEspecial, FormEnvelopeOfertaEspecial);
  FormEnvelopeOfertaEspecial.RLReport.Preview;
  FormEnvelopeOfertaEspecial.Close;
  Self.Cursor := crDefault;
end;

procedure TFormMain.ControledeAlteraes1Click(Sender: TObject);
begin
  if not Permissao('Impressao > Controle de Alteracoes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormAlteracoes = nil then
    Application.CreateForm(TFormAlteracoes, FormAlteracoes);
  FormAlteracoes.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.SuporteOnline1Click(Sender: TObject);
begin
  WinExec('Suporte.exe',SW_NORMAL)
end;

procedure TFormMain.ImportarCEP1Click(Sender: TObject);
begin
  Self.Cursor := crHourGlass;
  if FormImportaCEP = nil then
    Application.CreateForm(TFormImportaCEP, FormImportaCEP);
  FormImportaCEP.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Credencial1Click(Sender: TObject);
begin
  if not Permissao('Processos > Envio de SMS > Credencial', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormEnviaSMS = nil then
    Application.CreateForm(TFormEnviaSMS, FormEnviaSMS);
  FormEnviaSMS.Show;
  Self.Cursor := crDefault;

end;

procedure TFormMain.Modem1Click(Sender: TObject);
begin
  if not Permissao('Processos > Envio de SMS > Modem', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormEnviaSMSModem = nil then
    Application.CreateForm(TFormEnviaSMSModem, FormEnviaSMSModem);
  FormEnviaSMSModem.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.AssembliaGeral1Click(Sender: TObject);
begin
  if not Permissao('Processos > Assembleia Geral', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormAssembleia = nil then
    Application.CreateForm(TFormAssembleia, FormAssembleia);
  FormAssembleia.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Redes1Click(Sender: TObject);
begin
  if not Permissao('Celulas > Redes', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRedes = nil then
    Application.CreateForm(TFormRedes, FormRedes);
  FormRedes.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.Setores1Click(Sender: TObject);
begin
  if not Permissao('Celulas > Setores', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormSetores = nil then
    Application.CreateForm(TFormSetores, FormSetores);
  FormSetores.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.reas1Click(Sender: TObject);
begin
  if not Permissao('Celulas > Areas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormAreas = nil then
    Application.CreateForm(TFormAreas, FormAreas);
  FormAreas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.CadastrodeClulas1Click(Sender: TObject);
begin
  if not Permissao('Celulas > Celulas', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormCelulas = nil then
    Application.CreateForm(TFormCelulas, FormCelulas);
  FormCelulas.Show;
  Self.Cursor := crDefault;
end;

procedure TFormMain.RelatrioSemanal1Click(Sender: TObject);
begin
  if not Permissao('Celulas > Movimento > Relatorio Semanal', Usuario) then
    Abort;

  Self.Cursor := crHourGlass;
  if FormRelatorioCelula = nil then
    Application.CreateForm(TFormRelatorioCelula, FormRelatorioCelula);
  FormRelatorioCelula.Show;
  Self.Cursor := crDefault;
end;

initialization
  RLConsts.SetVersion(3,70,'B');

end.
