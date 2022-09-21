unit View.receber;

interface

uses
  Data.DB,

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
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  View.base.listas,

  Winapi.Messages,
  Winapi.Windows, Provider.constants;

type
  TViewReceber = class(TViewBaseListas)
    DBG_parcelas: TDBGrid;
    dsParcelas: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewReceber: TViewReceber;

implementation

{$R *.dfm}

procedure TViewReceber.FormShow(Sender: TObject);
begin // show
  inherited;
  GET_receber;
end;

end.
