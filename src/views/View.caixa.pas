unit View.caixa;

interface

uses
  Data.DB,

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
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  View.base.listas,

  Winapi.Messages,
  Winapi.Windows,
  Service.cadastro,
  Provider.constants;

type
  TViewCaixa = class(TViewBaseListas)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCaixa: TViewCaixa;

implementation

{$R *.dfm}

procedure TViewCaixa.FormShow(Sender: TObject);
begin // show
  inherited;
  GET_Caixa;
end;

end.
