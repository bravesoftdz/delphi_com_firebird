unit View.base.listas;

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
  View.base,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.WinXCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Service.cadastro,
  Provider.constants,
  Provider.conversao,
  View.mensagens;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlIcone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlLinhaFundo: TPanel;
    CardPanel_listas: TCardPanel;
    card_pesquisa: TCard;
    card_cadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    pnlTituloCadastro: TPanel;
    lblTituloCadastro: TLabel;
    btnVoltarPessquisa: TSpeedButton;
    pnlVoltar: TPanel;
    pnlBotaoSelecionar: TPanel;
    btnSelecionar: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanel_listasCardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnVoltarPessquisaClick(Sender: TObject);
    procedure DBG_dadosDblClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
  private
  public
    var
      sTELA: string;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin // cancelar
  inherited;
  if dsDados.DataSet.State in dsEditModes then
    dsDados.DataSet.Cancel;
  CardPanel_listas.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin// editar
  inherited;
  CardPanel_listas.ActiveCard := card_cadastro;
  dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin// excluir
  inherited;
  if dsDados.DataSet.RecordCount > 0 then
  begin

    if Self.Tag > 0 then
    begin

      case Self.Tag of

        1: begin

          if TViewMensagens.Mensagem('Deseja mesmo excluir esse cliente?','Exclusão','E',[mbSim, mbNao]) then
          begin
            dsDados.DataSet.Delete;
            TViewMensagens.Mensagem('Cliente Deletado com Sucesso.','Sucesso','I',[mbOk]);
          end;

        end;

        2: begin

          if TViewMensagens.Mensagem('Deseja mesmo excluir esse Fornecedor?','Exclusão','E',[mbSim, mbNao]) then
          begin
            dsDados.DataSet.Delete;
            TViewMensagens.Mensagem('Fornecedor Deletado com Sucesso.','Sucesso','I',[mbOk]);
          end;

        end;

        3: begin
          if TViewMensagens.Mensagem('Deseja mesmo excluir esse Funcionário?','Exclusão','E',[mbSim, mbNao]) then
          begin
            dsDados.DataSet.Delete;
            TViewMensagens.Mensagem('Funcionário Deletado com Sucesso.','Sucesso','I',[mbOk]);
          end;
        end;

      end;

    end
    else begin

      if sTELA = TelasToStr(tpProdutos) then
      begin
        TViewMensagens.Mensagem('Produto Deletado com Sucesso.','Sucesso','D',[mbOk]);
      end;

      if sTELA = TelasToStr(tpCaixa) then
      begin
        TViewMensagens.Mensagem('Caixa Deletado com Sucesso.','Sucesso','D',[mbOk]);
      end;

      if sTELA = TelasToStr(tpGrupo) then
      begin
        TViewMensagens.Mensagem('Grupo Deletado com Sucesso.','Sucesso','D',[mbOk]);
      end;

      if sTELA = TelasToStr(tpSubgrupo) then
      begin
        TViewMensagens.Mensagem('Subgrupo Deletado com Sucesso.','Sucesso','D',[mbOk]);
      end;


    end;

    CardPanel_listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin// novo
  inherited;
  CardPanel_listas.ActiveCard := card_cadastro;
  dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin//salvar
  inherited;

  if dsDados.DataSet.State in dsEditModes then
  begin

    if Self.Tag > 0 then
    begin

      ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := Self.Tag;   // ???
      ServiceCadastro.QRY_pessoas.Post;

      case Self.Tag of

        1: begin
          TViewMensagens.Mensagem('Cliente salvo com Sucesso.','Sucesso','I',[mbOk]);
        end;

        2: begin
          TViewMensagens.Mensagem('Fornecedor salvo com Sucesso.','Sucesso','I',[mbOk]);
        end;

        3: begin
          TViewMensagens.Mensagem('Funcionário salvo com Sucesso.','Sucesso','I',[mbOk]);
        end;

      end;

    end;

//    else begin
//
//
//      dsDados.DataSet.Post;
//
//      if sTELA = TelasToStr(tpProdutos) then
//      begin
//        ShowMessage('Produto Salvo com sucesso.');
//      end;
//
//      if sTELA = TelasToStr(tpCaixa) then
//      begin
//        ShowMessage('Caixa Salvo com sucesso.');
//      end;
//
//      if sTELA = TelasToStr(tpGrupo) then
//      begin
//        ShowMessage('Grupo Salvo com sucesso.');
//      end;
//
//      if sTELA = TelasToStr(tpSubgrupo) then
//      begin
//        ShowMessage('Subgrupo Subgrupo com sucesso.');
//      end;
//
//    end;
//
//    CardPanel_listas.ActiveCard := card_pesquisa;

  end;

end;

procedure TViewBaseListas.btnSelecionarClick(Sender: TObject);
begin //selecionar
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewBaseListas.btnVoltarPessquisaClick(Sender: TObject);
begin // voltar para pesquisa
  inherited;
  CardPanel_listas.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.CardPanel_listasCardChange(Sender: TObject; PrevCard, NextCard: TCard);
begin    // change card
  inherited;
  btnVoltarPessquisa.Visible := False;
  if CardPanel_listas.ActiveCard = card_cadastro then
  begin
    SelectFirst;
    btnVoltarPessquisa.Visible := True;
  end;
end;

procedure TViewBaseListas.DBG_dadosDblClick(Sender: TObject);
begin // clicar duas vezes na grid
  inherited;
  btnEditar.Click;
end;

procedure TViewBaseListas.dsDadosStateChange(Sender: TObject);
begin //status dos botoes
  inherited;

  btnNovo.Enabled         := not (dsDados.State in [dsInsert, dsEdit]);
  btnEditar.Enabled       := btnNovo.Enabled and (dsDados.DataSet.RecordCount > 0);
  btnSalvar.Enabled       := dsDados.State in [dsInsert, dsEdit];
  btnCancelar.Enabled     := btnSalvar.Enabled;
  btnExcluir.Enabled      := btnEditar.Enabled;

end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin // show
  inherited;

  CardPanel_listas.ActiveCard := card_pesquisa;

  if Self.Tag > 0 then
    GET_Pessoas(Self.Tag);


  dsDados.DataSet.Open;

end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin  // mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
