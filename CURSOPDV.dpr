program CURSOPDV;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  service.base in 'src\services\service.base.pas' {ServiceBase: TDataModule},
  service.conexao in 'src\services\service.conexao.pas' {ServiceConexao: TDataModule},
  service.cadastro in 'src\services\service.cadastro.pas' {ServiceCadastro: TDataModule},
  view.base in 'src\views\view.base.pas' {ViewBase},
  view.base.listas in 'src\views\view.base.listas.pas' {ViewBaseListas},
  view.abrirCaixa in 'src\views\view.abrirCaixa.pas' {ViewAbrirCaixa},
  providers.functions in 'src\providers\providers.functions.pas',
  providers.variaveis in 'src\providers\providers.variaveis.pas',
  view.telaFundo in 'src\views\view.telaFundo.pas' {ViewTelaFundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TViewTelaFundo, ViewTelaFundo);
  Application.Run;
end.
