unit view.formapgto;

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

  Winapi.Messages,
  Winapi.Windows,

  view.base;

type
  TViewFormaPGTO = class(TViewBase)
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlImgLogo: TPanel;
    imgLogoCinza: TImage;
    imgLogoAzul: TImage;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlRodape: TPanel;
    pnlTotais: TPanel;
    pnlFormasPGTO: TPanel;
    pnlFormasEscolhidas: TPanel;
    DBG_formasPGTO: TDBGrid;
    DBG_FormasPGTOEscolhidas: TDBGrid;
    pnlBtnSalvar: TPanel;
    btnSalvar: TSpeedButton;
    lblVlrVenda: TLabel;
    lblVlrFaturado: TLabel;
    lblVlrRestante: TLabel;
    edtVlrVenda: TEdit;
    edtVlrFaturado: TEdit;
    edtVlrRestante: TEdit;
    dsFormasPGTO: TDataSource;
    pnlValor: TPanel;
    pnlTitValor: TPanel;
    lblTituloValor: TLabel;
    edtVlrFaturar: TEdit;
    pnlBtnOk: TPanel;
    btnOk: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    FValorVenda: double;
  public
    property ValorVenda: double read FValorVenda write FValorVenda;
  end;

var
  ViewFormaPGTO: TViewFormaPGTO;

implementation

{$R *.dfm}

procedure TViewFormaPGTO.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewFormaPGTO.FormShow(Sender: TObject);
begin // show
  inherited;

  dsFormasPGTO.DataSet := FService.QRY_formasPGTO;
  FService.QRY_formasPGTO.Close;
  FService.QRY_formasPGTO.Open();
  DBG_formasPGTO.SetFocus;

  edtVlrVenda.Text := FloatToStr(FValorVenda);

end;

procedure TViewFormaPGTO.lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin  // mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
