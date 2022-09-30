unit view.principal;

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

  providers.functions,

  view.abrirCaixa,
  view.base, view.formapgto, view.telaFundo;

type
  TViewPrincipal = class(TViewBase)
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
    TBL_itens: TFDMemTable;
    TBL_itenscod_item: TIntegerField;
    TBL_itensqtd_produto: TCurrencyField;
    TBL_itensvlr_unitario: TCurrencyField;
    TBL_itensvlr_desconto: TCurrencyField;
    TBL_itensvlr_total: TCurrencyField;
    TBL_itensnome_produto: TStringField;
    dsItens: TDataSource;
    edtSubTotal: TEdit;
    Timer_hora: TTimer;
    lblFaturar: TLabel;
    procedure imgLogoEmpresaBrancaMouseEnter(Sender: TObject);
    procedure imgLogoEmpresaAmarelaMouseLeave(Sender: TObject);
    procedure imgLogoEmpresaAmarelaClick(Sender: TObject);
    procedure lblAbreCaixaClick(Sender: TObject);
    procedure edtCodigoBarrasExit(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtQTDExit(Sender: TObject);
    procedure TBL_itensAfterPost(DataSet: TDataSet);
    procedure DBG_produtosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsItensDataChange(Sender: TObject; Field: TField);
    procedure Timer_horaTimer(Sender: TObject);
    procedure lblFaturarClick(Sender: TObject);
  private

    var
      TOTAL_VENDA: double;


  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.DBG_produtosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin  // deixando a cor branca
  inherited;
//  DBG_produtos.Canvas.Brush.Color := $00F8F8F8;
//  DBG_produtos.Canvas.Font.Color  := clBlack;
//  DBG_produtos.Canvas.FillRect(Rect);
//  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TViewPrincipal.FormResize(Sender: TObject);
begin // Resize
  inherited;
  FService.DimensionarGrid( DBG_produtos );
end;

procedure TViewPrincipal.dsItensDataChange(Sender: TObject; Field: TField);
begin // DataChange
  inherited;
  FService.DimensionarGrid( DBG_produtos );
end;

procedure TViewPrincipal.edtCodigoBarrasExit(Sender: TObject);
var
  VLR_UNITARIO, QTD, VLR_SUBTOTAL: double;
begin

  if Length(edtCodigoBarras.Text) > 0 then
  begin

    FService.GET_produtos(edtCodigoBarras.Text);
    edtVlrUnitario.Text := FloatToStr(FService.QRY_produtoPR2_VENDAVISTA.AsFloat);

    VLR_UNITARIO := FService.QRY_produtoPR2_VENDAVISTA.AsFloat;
    QTD          := StrToFloatDef(edtQTD.Text, 1);
    VLR_SUBTOTAL := VLR_UNITARIO * QTD;

    edtSubTotal.Text := FloatToStr(VLR_SUBTOTAL);


    //inserindo na grid

    TBL_itens.Open;
    TBL_itens.Insert;
    TBL_itenscod_item.AsInteger    := FService.QRY_produtoPR1_CODIGO.AsInteger;
    TBL_itensqtd_produto.AsFloat   := QTD;
    TBL_itensvlr_unitario.AsFloat  := VLR_UNITARIO;
    TBL_itensvlr_desconto.AsFloat  := 0;
    TBL_itensvlr_total.AsFloat     := VLR_SUBTOTAL;
    TBL_itensnome_produto.AsString := FService.QRY_produtoPR1_NOMECOMPLETO.AsString;
    TBL_itens.Post;

    //limpando os edits
    edtQTD.Text         := '1';
    edtVlrUnitario.Text := '0';

    edtCodigoBarras.Clear;
    edtCodigoBarras.SetFocus;

  end;

end;

procedure TViewPrincipal.edtQTDExit(Sender: TObject);
begin
  inherited;
  edtCodigoBarras.SetFocus;
end;

procedure TViewPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #43 then
  begin

    key := #0;
    edtQTD.SetFocus;

  end;
end;



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
  inherited;
  CriaForm(TViewAbrirCaixa, ViewAbrirCaixa);
end;

procedure TViewPrincipal.lblFaturarClick(Sender: TObject);
begin // faturamento
  inherited;

  ViewFormaPGTO := TViewFormaPGTO.Create(Self);
  try

    ViewFormaPGTO.ValorVenda := StrToFloatDef(edtTotalAPagar.Text, 0);

    ViewFormaPGTO.TBL_itensVenda.CopyDataSet(TBL_itens);

    ViewTelaFundo.Show;
    ViewFormaPGTO.ShowModal;

  finally
    ViewTelaFundo.Hide;
    FreeAndNil(ViewFormaPGTO);
  end;


end;

procedure TViewPrincipal.TBL_itensAfterPost(DataSet: TDataSet);
begin // somando
  inherited;

  TOTAL_VENDA := 0;

  TBL_itens.DisableControls;
  TBL_itens.First;
  while not TBL_itens.Eof do
  begin

    TOTAL_VENDA := TOTAL_VENDA + TBL_itensvlr_total.AsFloat;

    TBL_itens.Next;
  end;

  TBL_itens.EnableControls;

  edtTotalAPagar.Text := FloatToStr(TOTAL_VENDA);

end;

procedure TViewPrincipal.Timer_horaTimer(Sender: TObject);
begin
  inherited;
  lblHora.Caption := TimeToStr(Time);
end;

end.
