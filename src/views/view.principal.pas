unit view.principal;

interface

uses
  Data.DB,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Controls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.GIFImg,
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage,
  Vcl.Samples.Spin,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,
  view.abrirCaixa,

  providers.functions;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlLinhaRodape: TPanel;
    pnlRodape: TPanel;
    pnlConsultaProduto: TPanel;
    pnlListaProdutos: TPanel;
    pnlBackground: TPanel;
    pnlTopConsultaProduto: TPanel;
    pnlTituloConsultaProdutos: TPanel;
    edtCodigoBarras: TEdit;
    lblCodigoBarras: TLabel;
    pnlRodapeConsultaProduto: TPanel;
    pnlNomeProduto: TPanel;
    imgLogoProduto: TImage;
    pnlLogoEmpresa: TPanel;
    pnlLogo: TPanel;
    imgLogoEmpresaBranca: TImage;
    imgLogoEmpresaAmarela: TImage;
    pnlTextoEmpresa: TPanel;
    lblNomeEmpresa: TLabel;
    lblSloganEmpresa: TLabel;
    pnlLineLogoEmpresa: TPanel;
    pnlHora: TPanel;
    lblHora: TLabel;
    pnlCidade: TPanel;
    lblVersao: TLabel;
    lblCidade: TLabel;
    pnlCaixaLivre: TPanel;
    lblCaixaLivre: TLabel;
    lblSubTotal: TLabel;
    pnlQtdItem: TPanel;
    lblNomeProduto: TLabel;
    lblQTD: TLabel;
    edtQTD: TEdit;
    lblVlrUnitatio: TLabel;
    edtVlrUnitario: TEdit;
    pnlTotalPagar: TPanel;
    lblTotalAPagar: TLabel;
    edtTotalAPagar: TEdit;
    DBG_produtos: TDBGrid;
    lblAbreCaixa: TLabel;
    procedure imgLogoEmpresaBrancaMouseEnter(Sender: TObject);
    procedure imgLogoEmpresaAmarelaMouseLeave(Sender: TObject);
    procedure imgLogoEmpresaAmarelaClick(Sender: TObject);
    procedure lblAbreCaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.imgLogoEmpresaAmarelaClick(Sender: TObject);
begin
  ShowMessage('Empresa');
end;

procedure TViewPrincipal.imgLogoEmpresaAmarelaMouseLeave(Sender: TObject);
begin // mouse leave
  imgLogoEmpresaBranca.Visible  := True;
  imgLogoEmpresaAmarela.Visible := False;

end;

procedure TViewPrincipal.imgLogoEmpresaBrancaMouseEnter(Sender: TObject);
begin // mouse enter
  imgLogoEmpresaBranca.Visible  := False;
  imgLogoEmpresaAmarela.Visible := True;
end;

procedure TViewPrincipal.lblAbreCaixaClick(Sender: TObject);
begin // abrir caixa
  CriaForm(TViewAbrirCaixa, ViewAbrirCaixa);
end;

end.
