unit View.produtos;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  View.base.listas,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Service.cadastro,
  Provider.constants,
  Vcl.Mask,
  Vcl.DBCtrls,
  View.mensagens;

type
  TViewProdutos = class(TViewBaseListas)
    dsProduto2: TDataSource;
    pnlDetalhe: TPanel;
    DBG_detalhe: TDBGrid;
    lbl1: TLabel;
    edtPR1_CODIGO: TDBEdit;
    lbl2: TLabel;
    edtPR1_NOMECOMPLETO: TDBEdit;
    lbl3: TLabel;
    edtPR1_NOMEPOPULAR: TDBEdit;
    lbl4: TLabel;
    edtPR1_CODIGOBARRA: TDBEdit;
    lbl5: TLabel;
    edtPR1_REFERENCIA: TDBEdit;
    lbl6: TLabel;
    edtPR1_NCM: TDBEdit;
    lbl7: TLabel;
    edtPR2_CUSTOINI: TDBEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    edtPR2_VENDAVISTA: TDBEdit;
    lbl10: TLabel;
    edtPR2_VENDAPRAZO: TDBEdit;
    lbl11: TLabel;
    edtPR2_ESTOQUE: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dsProduto2.DataSet.Edit;
end;

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin // novo produto
  inherited;
  ServiceCadastro.QRY_produto1PR1_GRUPO.AsInteger    := 1;
  ServiceCadastro.QRY_produto1PR1_SUBGRUPO.AsInteger := 1;
  ServiceCadastro.QRY_produto2.Open();
  ServiceCadastro.QRY_produto2.Insert;
end;

procedure TViewProdutos.btnSalvarClick(Sender: TObject);
begin // salvar
  inherited;

  ServiceCadastro.QRY_produto1.Edit;
  ServiceCadastro.QRY_produto1.Post;

  ServiceCadastro.QRY_produto2.Edit;
  ServiceCadastro.QRY_produto2PR2_CODIGOPR1.AsInteger    := ServiceCadastro.QRY_produto1PR1_CODIGO.AsInteger;
  ServiceCadastro.QRY_produto2PR2_FILIAL.AsInteger       := iCOD_FILIAL;
  ServiceCadastro.QRY_produto2PR2_SITRIBUTARIA.AsInteger := 1;
  ServiceCadastro.QRY_produto2.Post;

  TViewMensagens.Mensagem('Produto salvo com Sucesso.','Sucesso','I',[mbOk]);

end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin  // show
  inherited;
  GET_Produtos;
end;

end.
