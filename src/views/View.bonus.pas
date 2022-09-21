unit View.bonus;

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
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.ExtCtrls,
  Vcl.DBCtrls,
  Service.cadastro;

type
  TViewBonus = class(TForm)
    pnlTituloCadCliente: TPanel;
    lblTituloCadastro: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edtPES_CODIGO: TEdit;
    edtPES_RAZAO: TEdit;
    edtPES_FANTASIA: TEdit;
    edtPES_TELEFONE: TEdit;
    edtPES_CNPJCPF: TEdit;
    edtPES_IERG: TEdit;
    edtPES_OBSERVACAO: TEdit;
    btnNovo: TButton;
    lblEditar: TLabel;
    btnEditar: TButton;
    btnSalvar: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBonus: TViewBonus;

implementation

{$R *.dfm}

procedure TViewBonus.btnEditarClick(Sender: TObject);
begin


  //clicou em um item e mandou editar....

  ServiceCadastro.QRY_pessoas.Open('select * from pessoas where pes_codigo = 9');
  ServiceCadastro.QRY_pessoas.Edit;

  edtPES_RAZAO.Text       := ServiceCadastro.QRY_pessoas.FieldByName('PES_RAZAO').AsString       ;
  edtPES_FANTASIA.Text    := ServiceCadastro.QRY_pessoas.FieldByName('PES_FANTASIA').AsString    ;
  edtPES_TELEFONE.Text    := ServiceCadastro.QRY_pessoas.FieldByName('PES_TELEFONE').AsString    ;
  edtPES_CNPJCPF.Text     := ServiceCadastro.QRY_pessoas.FieldByName('PES_CNPJCPF').AsString     ;
  edtPES_IERG.Text        := ServiceCadastro.QRY_pessoas.FieldByName('PES_IERG').AsString        ;
  edtPES_OBSERVACAO.Text  := ServiceCadastro.QRY_pessoas.FieldByName('PES_OBSERVACAO').AsString  ;



 edtPES_RAZAO.Text       := ServiceCadastro.QRY_pessoasPES_RAZAO.AsString          ;
 edtPES_FANTASIA.Text    := ServiceCadastro.QRY_pessoasPES_FANTASIA.AsString       ;
 edtPES_TELEFONE.Text    := ServiceCadastro.QRY_pessoasPES_TELEFONE.AsString       ;
 edtPES_CNPJCPF.Text     := ServiceCadastro.QRY_pessoasPES_CNPJCPF.AsString        ;
 edtPES_IERG.Text        := ServiceCadastro.QRY_pessoasPES_IERG.AsString           ;
 edtPES_OBSERVACAO.Text  := ServiceCadastro.QRY_pessoasPES_OBSERVACAO.AsString     ;




  edtPES_CNPJCPF.SetFocus;

end;

procedure TViewBonus.btnNovoClick(Sender: TObject);
begin
  ServiceCadastro.QRY_pessoas.Open();
  ServiceCadastro.QRY_pessoas.Insert;
  edtPES_CNPJCPF.SetFocus;
end;

procedure TViewBonus.btnSalvarClick(Sender: TObject);
begin

  // salvando modelo 1
  ServiceCadastro.QRY_pessoas.Close;
  ServiceCadastro.QRY_pessoas.SQL.Clear;
  ServiceCadastro.QRY_pessoas.SQL.Add(' insert into PESSOAS ( PES_RAZAO, PES_FANTASIA, PES_TELEFONE,');
  ServiceCadastro.QRY_pessoas.SQL.Add(' PES_CNPJCPF, PES_IERG, PES_OBSERVACAO, PES_TIPOPESSOA)');
  ServiceCadastro.QRY_pessoas.SQL.Add(' values ( :PES_RAZAO, :PES_FANTASIA, :PES_TELEFONE,');
  ServiceCadastro.QRY_pessoas.SQL.Add(' :PES_CNPJCPF, :PES_IERG, :PES_OBSERVACAO, :PES_TIPOPESSOA)  ');


  ServiceCadastro.QRY_pessoas.ParamByName('PES_RAZAO').AsString                      := edtPES_RAZAO.Text;
  ServiceCadastro.QRY_pessoas.ParamByName('PES_FANTASIA').AsString                   := edtPES_FANTASIA.Text;
  ServiceCadastro.QRY_pessoas.ParamByName('PES_TELEFONE').AsString                   := edtPES_TELEFONE.Text;
  ServiceCadastro.QRY_pessoas.ParamByName('PES_CNPJCPF').AsString                    := edtPES_CNPJCPF.Text;
  ServiceCadastro.QRY_pessoas.ParamByName('PES_IERG').AsString                       := edtPES_IERG.Text;
  ServiceCadastro.QRY_pessoas.ParamByName('PES_OBSERVACAO').AsString                 := edtPES_OBSERVACAO.Text;
  ServiceCadastro.QRY_pessoas.ParamByName('PES_TIPOPESSOA').AsInteger                := 1;

  ServiceCadastro.QRY_pessoas.ExecSQL;








  //salvando modelo 2
  ServiceCadastro.QRY_pessoas.Edit;
  ServiceCadastro.QRY_pessoasPES_RAZAO.AsString       := edtPES_RAZAO.Text;
  ServiceCadastro.QRY_pessoasPES_FANTASIA.AsString    := edtPES_FANTASIA.Text;
  ServiceCadastro.QRY_pessoasPES_TELEFONE.AsString    := edtPES_TELEFONE.Text;
  ServiceCadastro.QRY_pessoasPES_CNPJCPF.AsString     := edtPES_CNPJCPF.Text;
  ServiceCadastro.QRY_pessoasPES_IERG.AsString        := edtPES_IERG.Text;
  ServiceCadastro.QRY_pessoasPES_OBSERVACAO.AsString  := edtPES_OBSERVACAO.Text;
  ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := 1;
  ServiceCadastro.QRY_pessoas.Post;



end;

end.
