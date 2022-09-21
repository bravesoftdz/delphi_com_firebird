unit View.formapgto;

interface

uses
  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,

  Provider.constants,
  Service.cadastro,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,

  View.base,

  Winapi.Messages,
  Winapi.Windows, View.mensagens;

type
  TViewFormaPGTO = class(TViewBase)
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlIcone: TPanel;
    imgIcone: TImage;
    pnlRodape: TPanel;
    pnlBtnSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlFPagamentos: TPanel;
    pnlInfoPgto: TPanel;
    DBG_dados: TDBGrid;
    dsFPagamentos: TDataSource;
    pnlTotais: TPanel;
    DBG_formasPagamentos: TDBGrid;
    TBL_formasPGTO: TFDMemTable;
    TBL_formasPGTOid_formapgto: TIntegerField;
    TBL_formasPGTOvalor_pgto: TCurrencyField;
    dsFPagamentosEscolhidos: TDataSource;
    TBL_formasPGTOnome_formapagamento: TStringField;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    edtTotalVenda: TEdit;
    lbl3: TLabel;
    lbl1: TLabel;
    edtVlrFaturado: TEdit;
    lbl2: TLabel;
    edtVlrRestante: TEdit;
    pnlValor: TPanel;
    pnlTitValor: TPanel;
    Label1: TLabel;
    edtVlrFaturar: TEdit;
    pnlBtnOk: TPanel;
    btnOk: TSpeedButton;
    TBL_formasPGTOgerar_receber: TStringField;
    TBL_formasPGTOid_cliente: TIntegerField;
    TBL_formasPGTOid_numdocto: TStringField;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_dadosDblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    FValorVenda: Double;
  public
    property ValorVenda: Double read FValorVenda write FValorVenda;
  end;

var
  ViewFormaPGTO: TViewFormaPGTO;

implementation

{$R *.dfm}

procedure TViewFormaPGTO.btnOkClick(Sender: TObject);
var
  valor_faturado, valor_restante: double;
begin //salvar temporariamente a forma de pagamento
  inherited;
  TBL_formasPGTO.Open;
  TBL_formasPGTO.Insert;
  TBL_formasPGTOid_formapgto.AsInteger       := ServiceCadastro.QRY_formasPGTOFOR_CODIGO.AsInteger;
  TBL_formasPGTOvalor_pgto.AsFloat           := StrToFloatDef(edtVlrFaturar.Text, 0);
  TBL_formasPGTOnome_formapagamento.AsString := ServiceCadastro.QRY_formasPGTOFOR_DESCRICAO.AsString;
  TBL_formasPGTOgerar_receber.AsString       := ServiceCadastro.QRY_formasPGTOFOR_GERARECEBER.AsString;
  TBL_formasPGTOid_cliente.AsInteger         := ServiceCadastro.QRY_movestoqueMOV_CLIENTE.AsInteger;
  TBL_formasPGTOid_numdocto.AsString         := IntToStr(ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger);

  TBL_formasPGTO.Post;

  //calculando a diferenca
  valor_faturado      := StrToFloatDef(edtVlrFaturar.Text, 0);
  edtVlrFaturado.Text := FloatToStr(valor_faturado + StrToFloatDef(edtVlrFaturado.Text, 0));

  valor_restante      := FValorVenda - StrToFloatDef(edtVlrFaturado.Text, 0);
  edtVlrRestante.Text := FloatToStr(valor_restante);



  edtVlrFaturar.Clear;
  pnlValor.Visible := False;
  DBG_dados.SetFocus;

end;

procedure TViewFormaPGTO.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewFormaPGTO.btnSalvarClick(Sender: TObject);
begin //salvar
  inherited;

  TBL_formasPGTO.First;
  while not TBL_formasPGTO.Eof do
  begin

    // gravando o caixa
    PUT_caixa('E', 'VENDA N. ' + IntToStr(ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger),
                                 TBL_formasPGTOvalor_pgto.AsFloat,
                                 TBL_formasPGTOid_formapgto.AsInteger,
                                 ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger );

    // gravando o receber
    if TBL_formasPGTOgerar_receber.AsString =  'S' then
    begin

      PUT_receber(TBL_formasPGTOid_numdocto.AsString,
                  TBL_formasPGTOid_cliente.AsInteger,
                  TBL_formasPGTOvalor_pgto.AsFloat);

    end;





    TBL_formasPGTO.Next;

  end;

  TViewMensagens.Mensagem('Venda salva com Sucesso.','Sucesso','I',[mbOk]);
  Self.Close;

end;

procedure TViewFormaPGTO.DBG_dadosDblClick(Sender: TObject);
begin // duas vezes forma de pagamento
  inherited;

  if StrToFloatDef(edtVlrRestante.Text, 0) > 0 then
  begin

    pnlValor.Visible   := True;
    edtVlrFaturar.Text := edtVlrRestante.Text;
    edtVlrFaturar.SetFocus;

  end
  else begin
    TViewMensagens.Mensagem('Não há mais valor para Faturar.','Atenção','E',[mbOk]);
  end;


end;

procedure TViewFormaPGTO.FormShow(Sender: TObject);
begin // show
  inherited;
  ServiceCadastro.QRY_formasPGTO.Close;
  ServiceCadastro.QRY_formasPGTO.Open();

  edtTotalVenda.Text  := FloatToStr(FValorVenda);
  edtVlrRestante.Text := FloatToStr(FValorVenda);

end;

end.
