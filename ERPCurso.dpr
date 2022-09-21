program ERPCurso;

uses
  Vcl.Forms,
  View.principal in 'src\views\View.principal.pas' {ViewPrincipal},
  Service.conexao in 'src\services\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.cadastro in 'src\services\Service.cadastro.pas' {ServiceCadastro: TDataModule},
  Provider.constants in 'src\providers\Provider.constants.pas',
  View.base in 'src\views\View.base.pas' {ViewBase},
  View.base.listas in 'src\views\View.base.listas.pas' {ViewBaseListas},
  View.clientes in 'src\views\View.clientes.pas' {ViewClientes},
  View.bonus in 'src\views\View.bonus.pas' {ViewBonus},
  View.fornecedores in 'src\views\View.fornecedores.pas' {ViewFornecedores},
  Provider.conversao in 'src\providers\Provider.conversao.pas',
  View.produtos in 'src\views\View.produtos.pas' {ViewProdutos},
  View.mensagens in 'src\views\View.mensagens.pas' {ViewMensagens},
  View.fundo in 'src\views\View.fundo.pas' {ViewFundo},
  View.funcionarios in 'src\views\View.funcionarios.pas' {ViewFuncionarios},
  View.vendas in 'src\views\View.vendas.pas' {ViewVendas},
  View.formapgto in 'src\views\View.formapgto.pas' {ViewFormaPGTO},
  View.caixa in 'src\views\View.caixa.pas' {ViewCaixa},
  View.receber in 'src\views\View.receber.pas' {ViewReceber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TViewBonus, ViewBonus);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(TViewClientes, ViewClientes);
  Application.CreateForm(TViewFornecedores, ViewFornecedores);
  Application.CreateForm(TViewProdutos, ViewProdutos);
  Application.CreateForm(TViewMensagens, ViewMensagens);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.CreateForm(TViewFuncionarios, ViewFuncionarios);
  Application.CreateForm(TViewVendas, ViewVendas);
  Application.CreateForm(TViewFormaPGTO, ViewFormaPGTO);
  Application.CreateForm(TViewCaixa, ViewCaixa);
  Application.CreateForm(TViewReceber, ViewReceber);
  Application.Run;
end.
