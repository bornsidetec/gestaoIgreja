program IEQSoft;

uses
  Forms,
  SysUtils,
  Main in 'Main.pas' {FormMain},
  UDmJetro in 'UDmJetro.pas' {DMJetro: TDataModule},
  Cultos in 'Cultos.pas' {FormCultos},
  Membros in 'Membros.pas' {FormMembros},
  Visitantes in 'Visitantes.pas' {FormVisitantes},
  Funcoes in 'Funcoes.pas',
  About in 'About.pas' {FormAbout},
  Login in 'Login.pas' {FormLogin},
  Pastores in 'Pastores.pas' {FormPastores},
  Selecao in 'Selecao.pas' {FormSelecao},
  Igrejas in 'Igrejas.pas' {FormIgrejas},
  RelAniversariantes in 'RelAniversariantes.pas' {FormRelAniversariantes},
  RelVisitantes in 'RelVisitantes.pas' {FormRelVisitantes},
  CDL in 'CDL.pas' {FormCDL},
  Diaconos in 'Diaconos.pas' {FormDiaconos},
  Balanco in 'Balanco.pas' {FormBalanco},
  Comparativo in 'Comparativo.pas' {FormComparativo},
  ComparativoFinan in 'ComparativoFinan.pas' {FormComparativoFinan},
  Usuarios in 'Usuarios.pas' {FormUsuarios},
  Sair in 'Sair.pas' {FormSair},
  RelDizimistas in 'RelDizimistas.pas' {FormRelDizimistas},
  Saidas in 'Saidas.pas' {FormSaidas},
  SustentoPastoral in 'SustentoPastoral.pas' {FormSustentoPastoral},
  Taxas in 'Taxas.pas' {FormTaxas},
  RelMembros in 'RelMembros.pas' {FormRelMembros},
  PreImpMembros in 'PreImpMembros.pas' {FormPreImpMembros},
  Criancas in 'Criancas.pas' {FormCriancas},
  Permissoes in 'Permissoes.pas' {FormPermissoes},
  Entradas in 'Entradas.pas' {FormEntradas},
  RelSustentoPastoral in 'RelSustentoPastoral.pas' {FormRelSustentoPastoral},
  Viagens in 'Viagens.pas' {FormViagens},
  RelViagens in 'RelViagens.pas' {FormRelViagens},
  PreImpREFC in 'PreImpREFC.pas' {FormPreImpREFC},
  PreImpViagens in 'PreImpViagens.pas' {FormPreImpViagens},
  PreImpSustento in 'PreImpSustento.pas' {FormPreImpSustento},
  Atas in 'Atas.pas' {FormAtas},
  Tabelas in 'Tabelas.pas' {FormTabelas},
  PreImpAtas in 'PreImpAtas.pas' {FormPreImpAtas},
  CartaoMembro in 'CartaoMembro.pas' {FormCartaoMembro},
  Lideranca in 'Lideranca.pas' {FormLideranca},
  Fornecedores in 'Fornecedores.pas' {FormFornecedores},
  Doacoes in 'Doacoes.pas' {FormDoacoes},
  Vendas in 'Vendas.pas' {FormVendas},
  Objetos in 'Objetos.pas' {FormObjetos},
  Emprestimos in 'Emprestimos.pas' {FormEmprestimos},
  Devolucoes in 'Devolucoes.pas' {FormDevolucoes},
  RelEmprestimos in 'RelEmprestimos.pas' {FormRelEmprestimos},
  EtiquetaObjeto in 'EtiquetaObjeto.pas' {FormEtiquetaObjeto},
  TransferenciasPastor in 'TransferenciasPastor.pas' {FormTransferenciasPastor},
  PreImpVisitantes in 'PreImpVisitantes.pas' {FormPreImpVisitantes},
  Professores in 'Professores.pas' {FormProfessores},
  ClassesEBQ in 'ClassesEBQ.pas' {FormClassesEBQ},
  Matriculas in 'Matriculas.pas' {FormMatriculas},
  PreImpCriancas in 'PreImpCriancas.pas' {FormPreImpCriancas},
  Fechamento in 'Fechamento.pas' {FormFechamento},
  Cartas in 'Cartas.pas' {FormCartas},
  Eventos in 'Eventos.pas' {FormEventos},
  Avisos in 'Avisos.pas' {FormAvisos},
  CertificadoBatismo in 'CertificadoBatismo.pas' {FormCertificadoBatismo},
  CertificadoApCrianca in 'CertificadoApCrianca.pas' {FormCertificadoApCrianca},
  CertificadoCasamento in 'CertificadoCasamento.pas' {FormCertificadoCasamento},
  ImpCartas in 'ImpCartas.pas' {FormImpCartas},
  PreImpRDC in 'PreImpRDC.pas' {FormPreImpRDC},
  EnvelopeDizimo in 'EnvelopeDizimo.pas' {FormEnvelopeDizimo},
  EnvelopeOfertaEspecial in 'EnvelopeOfertaEspecial.pas' {FormEnvelopeOfertaEspecial},
  Backup in 'Backup.pas' {FormBackup},
  ImpRemetentes in 'ImpRemetentes.pas' {FormImpRemetentes},
  Alteracoes in 'Alteracoes.pas' {FormAlteracoes},
  EnviaSMS in 'EnviaSMS.pas' {FormEnviaSMS},
  SMSInstantaneo in 'SMSInstantaneo.pas' {FormSMSInstantaneo},
  REFC in 'REFC.pas' {FormREFC},
  REFC2 in 'REFC2.pas' {FormREFC2},
  ImportaCEP in 'ImportaCEP.pas' {FormImportaCEP},
  EnviaSMSModem in 'EnviaSMSModem.pas' {FormEnviaSMSModem},
  Assembleia in 'Assembleia.pas' {FormAssembleia},
  HistoricoSMS in 'HistoricoSMS.pas' {FormHistoricoSMS},
  Redes in 'Redes.pas' {FormRedes},
  Setores in 'Setores.pas' {FormSetores},
  Areas in 'Areas.pas' {FormAreas},
  Celulas in 'Celulas.pas' {FormCelulas},
  RelatorioCelula in 'RelatorioCelula.pas' {FormRelatorioCelula};

{$R *.res}

var
  Dias, DemoDias : Integer;
  s: String;
  DemoVersao: Boolean;

const
  Tipo : String = 'Normal';

begin
  Application.Initialize;
  Application.Title := 'IEQSoft';
  
  {
  dias := 0;

  if Tipo = 'Demo' then
    DemoBD;

  DemoVersao := (Tipo = 'Demo') {and DemoLicenca(DemoDias)} {;

  if (not RegExiste('L')) and (not DemoVersao) then
  begin
    ErrorBox(MsgCopyRight + #13 +
             MsgContato + #13 +
             MsgFone + #13 +
             MsgEmail);
    Application.Terminate;
  end

  else if not RegExiste('B') then
  begin
    ErrorBox(MsgArquivoDados + #13 +
             MsgContato + #13 +
             MsgFone + #13 +
             MsgEmail);
    Application.Terminate;
  end
  else if (not LiberacaoR(Dias)) and (not DemoVersao) then
  begin
    ErrorBox(MsgDesativado + #13 +
             MsgContato + #13 +
             MsgFone + #13 +
             MsgEmail);
    if FormAbout = nil then
      Application.CreateForm(TFormAbout, FormAbout);
  FormAbout.ShowModal;

    Dias := 0;
    if not LiberacaoR(Dias) then
    begin
      Application.Terminate;
      Exit;
    end;
  end
  else
  begin
    if DemoVersao then
      InfoBox('Versão Demonstrativa Limitada a 5 cadastros.')
    else if (Dias > 0)  then
      InfoBox('Falta(m) ' + IntToStr(Dias) + ' dia(s) para expirar a Licença.');

    }Application.CreateForm(TDMJetro, DMJetro);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormLogin, FormLogin);
  FormMain.Show;
    FormLogin.ShowModal;
    Application.Run;
  //end;

end.
