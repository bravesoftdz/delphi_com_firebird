unit View.principal;

interface

uses
  Provider.constants,
  Provider.conversao,

  System.Actions,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.StdCtrls,

  View.clientes,
  View.fornecedores,
  View.funcionarios,
  View.produtos,
  View.vendas,

  Winapi.Messages,
  Winapi.Windows,
  View.caixa, View.receber;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoempresa: TLabel;
    pnlVersao: TPanel;
    lblVersaoTitulo: TLabel;
    lblVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUserBranca: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLicenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlConteudoLicenca: TPanel;
    lblTitLicenciado: TLabel;
    lblLicenciado: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnSair: TSpeedButton;
    imgUserLaranja: TImage;
    imgBackground: TImage;
    btnVendas: TSpeedButton;
    btnFuncionarios: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserBrancaMouseEnter(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
  private
    procedure GET_LineMENU(Sender: TObject);
  public
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin // caixa
  GET_LineMENU(Sender);
  ViewCaixa := TViewCaixa.Create(Self);
  try

    ViewCaixa.Top      := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewCaixa.Height) / 2));
    ViewCaixa.Left     := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewCaixa.Width) / 2));

    ViewCaixa.ShowModal;

  finally
    FreeAndNil(ViewCaixa);
  end;
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin // clientes
  GET_LineMENU(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try

    ViewClientes.Top      := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewClientes.Height) / 2));
    ViewClientes.Left     := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewClientes.Width) / 2));

    ViewClientes.Tag := PessoasToInt(tpCliente);
    ViewClientes.ShowModal;

  finally
    FreeAndNil(ViewClientes);
  end;

end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin // config
  GET_LineMENU(Sender);

  ViewReceber := TViewReceber.Create(Self);
  try

    ViewReceber.Top      := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewReceber.Height) / 2));
    ViewReceber.Left     := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewReceber.Width) / 2));
    ViewReceber.ShowModal;

  finally
    FreeAndNil(ViewReceber);
  end;

end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin // fornecedores
  GET_LineMENU(Sender);

  ViewFornecedores := TViewFornecedores.Create(Self);
  try

    ViewFornecedores.Top      := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewFornecedores.Height) / 2));
    ViewFornecedores.Left     := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewFornecedores.Width) / 2));

    ViewFornecedores.Tag := PessoasToInt(tpFornecedores);
    ViewFornecedores.ShowModal;

  finally
    FreeAndNil(ViewFornecedores);
  end;

end;

procedure TViewPrincipal.btnFuncionariosClick(Sender: TObject);
begin // funcionarios
  GET_LineMENU(Sender);

  ViewFuncionarios := TViewFuncionarios.Create(Self);
  try

    ViewFuncionarios.Top      := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewFuncionarios.Height) / 2));
    ViewFuncionarios.Left     := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewFuncionarios.Width) / 2));

    ViewFuncionarios.Tag := PessoasToInt(tpFuncionarios);
    ViewFuncionarios.ShowModal;

  finally
    FreeAndNil(ViewFuncionarios);
  end;

end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin // produtos
  GET_LineMENU(Sender);

  ViewProdutos := TViewProdutos.Create(Self);
  try

    ViewProdutos.Top      := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewProdutos.Height) / 2));
    ViewProdutos.Left     := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewProdutos.Width) / 2));

    ViewProdutos.sTELA := TelasToStr(tpProdutos);
    ViewProdutos.ShowModal;

  finally
    FreeAndNil(ViewProdutos);
  end;

end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.btnVendasClick(Sender: TObject);
begin // vendas
  GET_LineMENU(Sender);
  ViewVendas := TViewVendas.Create(Self);
  try

    ViewVendas.Top      := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewVendas.Height) / 2));
    ViewVendas.Left     := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewVendas.Width) / 2));

//    ViewVendas.Tag := PessoasToInt(tpCliente);
    ViewVendas.ShowModal;

  finally
    FreeAndNil(ViewVendas);
  end;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin // show
  GET_LineMENU(btnClientes);
  lblLicenciado.Caption := sRAZAO_FILIAL;
end;

procedure TViewPrincipal.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left     := 0;
  ShapeMenu.Top      := 0;
  ShapeMenu.Height   := TSpeedButton(Sender).Height;
  ShapeMenu.Top      := TSpeedButton(Sender).top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUserBrancaMouseEnter(Sender: TObject);
begin
  imgUserBranca.Visible  := False;
  imgUserLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin
  imgUserBranca.Visible  := True;
  imgUserLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.
