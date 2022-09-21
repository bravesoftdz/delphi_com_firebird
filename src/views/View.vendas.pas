unit View.vendas;

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
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Provider.constants,
  Service.cadastro,
  Vcl.Mask,
  Vcl.DBCtrls,
  View.produtos,


  //dependencias
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  View.mensagens,
  View.formapgto,
  View.fundo;

type
  TViewVendas = class(TViewBaseListas)
    edtCodigoVendedor: TSearchBox;
    lblNomeVendedor: TLabel;
    lblProdutos: TLabel;
    edtProduto: TSearchBox;
    edtQtd: TEdit;
    lblQTD: TLabel;
    edtVlrUnitario: TEdit;
    lbl1: TLabel;
    edtVlrSubTotal: TEdit;
    lbl2: TLabel;
    btnSalvarProduto: TSpeedButton;
    DBG_itensVendas: TDBGrid;
    pnlTotais: TPanel;
    lbl3: TLabel;
    dsItens: TDataSource;
    edtTotalVenda: TEdit;
    TBL_itensMemoria: TFDMemTable;
    TBL_itensMemoriaCOD_MOVESTOQUE: TIntegerField;
    TBL_itensMemoriaCOD_ITEM: TIntegerField;
    TBL_itensMemoriaQTD_ITEM: TCurrencyField;
    TBL_itensMemoriaVLR_UNITARIO: TCurrencyField;
    TBL_itensMemoriaVLR_DESCONTO: TCurrencyField;
    TBL_itensMemoriaVLR_SUBTOTAL: TCurrencyField;
    procedure edtCodigoVendedorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarProdutoClick(Sender: TObject);
    procedure edtProdutoInvokeSearch(Sender: TObject);
    procedure edtQtdExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure GET_SubTotal;

  public
    { Public declarations }
  end;

var
  ViewVendas: TViewVendas;

implementation

{$R *.dfm}

procedure TViewVendas.btnEditarClick(Sender: TObject);
begin //editar venda
  inherited;
  edtTotalVenda.Text := FloatToStrF(TOTAL_VENDA, ffCurrency, 10,2);
end;

procedure TViewVendas.btnNovoClick(Sender: TObject);
begin // novo
  inherited;

  ServiceCadastro.QRY_movestoqueMOV_TIPOESTOQUE.AsInteger := 1; // 1 = venda
  ServiceCadastro.QRY_movestoqueMOV_DATA.AsDateTime       := Date;
  ServiceCadastro.QRY_movestoqueMOV_HORA.AsDateTime       := Time;
  ServiceCadastro.QRY_movestoqueMOV_CLIENTE.AsInteger     := 1; //terá que implementar uma função
                                                                // buscar o cliente do banco.

end;

procedure TViewVendas.btnSalvarClick(Sender: TObject);
var
  TotalVenda: double;
begin


  //atualiza vendaItem para recalcular o valor
  TotalVenda := 0;
  ServiceCadastro.QRY_movestoqueitem.DisableControls;
  ServiceCadastro.QRY_movestoqueitem.First;
  while not ServiceCadastro.QRY_movestoqueitem.Eof do
  begin
    TotalVenda := TotalVenda + ServiceCadastro.QRY_movestoqueitemMVI_VLRTOTAL.AsFloat;
    ServiceCadastro.QRY_movestoqueitem.Next;
  end;
  ServiceCadastro.QRY_movestoqueitem.EnableControls;


  ServiceCadastro.QRY_movestoque.Edit;
  ServiceCadastro.QRY_movestoqueMOV_VLRDESCONTO.AsFloat := 0;
  ServiceCadastro.QRY_movestoqueMOV_VLRTOTAL.AsFloat    := TotalVenda;
  ServiceCadastro.QRY_movestoque.Post;


  //formas de pagamentos ( faturamento )
  ViewFormaPGTO := TViewFormaPGTO.Create(Self);
  try

    ViewFundo.Show;
    ViewFormaPGTO.ValorVenda := TotalVenda;
    ViewFormaPGTO.ShowModal;

  finally
    ViewFundo.Hide;
    FreeAndNil(ViewFormaPGTO);
    btnVoltarPessquisa.Click;
  end;

end;

procedure TViewVendas.btnSalvarProdutoClick(Sender: TObject);
begin //salvando itens
  inherited;

  if not TBL_itensMemoria.IsEmpty then
  begin

    TBL_itensMemoria.Edit;
    TBL_itensMemoriaVLR_UNITARIO.AsFloat := StrToFloatDef(edtVlrUnitario.Text, 0);
    TBL_itensMemoriaQTD_ITEM.AsFloat     := StrToFloatDef(edtQtd.Text, 0);
    TBL_itensMemoriaVLR_DESCONTO.AsFloat := 0;
    TBL_itensMemoriaVLR_SUBTOTAL.AsFloat := StrToFloatDef(edtVlrSubTotal.Text, 0);
    TBL_itensMemoria.Post;

    TBL_itensMemoria.First;
    while not TBL_itensMemoria.Eof do
    begin

      ServiceCadastro.QRY_movestoqueitem.Close;
      ServiceCadastro.QRY_movestoqueitem.Open();
      ServiceCadastro.QRY_movestoqueitem.Insert;
      ServiceCadastro.QRY_movestoqueitemMVI_CODIGOMOVESTOQUE.AsInteger  := TBL_itensMemoriaCOD_MOVESTOQUE.AsInteger;
      ServiceCadastro.QRY_movestoqueitemMVI_CODITEM.AsInteger           := TBL_itensMemoriaCOD_ITEM.AsInteger;
      ServiceCadastro.QRY_movestoqueitemMVI_QUANTIDADE.AsFloat          := TBL_itensMemoriaQTD_ITEM.AsFloat;
      ServiceCadastro.QRY_movestoqueitemMVI_VLRUNITARIO.AsFloat         := TBL_itensMemoriaVLR_UNITARIO.AsFloat;
      ServiceCadastro.QRY_movestoqueitemMVI_VLRTOTAL.AsFloat            := TBL_itensMemoriaVLR_SUBTOTAL.AsFloat;
      ServiceCadastro.QRY_movestoqueitemMVI_VLRDESCONTO.AsFloat         := TBL_itensMemoriaVLR_DESCONTO.AsFloat;
      ServiceCadastro.QRY_movestoqueitem.Post;

      TBL_itensMemoria.Next;

    end;


    GET_VendaItem(ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger);

    edtTotalVenda.Text := FloatToStr(TOTAL_VENDA);

    TBL_itensMemoria.EmptyDataSet;

    edtProduto.Clear;
    edtQtd.Clear;
    edtVlrUnitario.Clear;
    edtVlrSubTotal.Clear;

    edtProduto.SetFocus;

  end;


end;

procedure TViewVendas.edtCodigoVendedorExit(Sender: TObject);
begin //saindo do vendedor
  inherited;
  if StrToIntDef(edtCodigoVendedor.Text, 0) > 0 then
  begin
    GET_Vendedor(StrToInt(edtCodigoVendedor.Text));

    lblNomeVendedor.Caption := '[ ' + sNOME_VENDEDOR + ' ]';

    ServiceCadastro.QRY_movestoqueMOV_VENDEDOR.AsInteger := iCODIGO_VENDEDOR;



    //salvo a venda
    ServiceCadastro.QRY_movestoque.Post;

  end;
end;

procedure TViewVendas.edtProdutoInvokeSearch(Sender: TObject);
begin //procurando o produto
  inherited;

  ViewProdutos := TViewProdutos.Create(Self);
  try

    ViewProdutos.Top      := ViewVendas.Top;
    ViewProdutos.Left     := ViewVendas.Left;

    ViewProdutos.pnlBotaoSelecionar.Visible := True;

    ViewProdutos.ShowModal;

    if ViewProdutos.ModalResult = mrOk then
    begin
      // pega os itens
      edtProduto.Text     := ServiceCadastro.QRY_produto1PR1_NOMECOMPLETO.AsString;
      edtVlrUnitario.Text := FloatToStr(ServiceCadastro.QRY_produto2PR2_VENDAPRAZO.AsFloat);

      TBL_itensMemoria.Close;
      TBL_itensMemoria.Open;
      TBL_itensMemoria.Insert;
      TBL_itensMemoriaCOD_MOVESTOQUE.AsInteger := ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger;
      TBL_itensMemoriaCOD_ITEM.AsInteger       := ServiceCadastro.QRY_produto1PR1_CODIGO.AsInteger;

      edtQtd.SetFocus;

    end;


  finally
    FreeAndNil(ViewProdutos);
  end;

end;

procedure TViewVendas.edtQtdExit(Sender: TObject);
begin //exit da quantidade
  inherited;
  GET_SubTotal;
end;

procedure TViewVendas.FormShow(Sender: TObject);
begin // show
  inherited;
  GET_Vendas;
end;

procedure TViewVendas.GET_SubTotal;
begin // sub. total

  if StrToFloatDef(edtQtd.Text, 0) > 0 then
  begin
    edtVlrSubTotal.Text := FloatToStr((StrToFloatDef(edtQtd.Text, 0)) * (StrToFloatDef(edtVlrUnitario.Text, 0)));
  end;

end;

end.
