unit view.formapgto;

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
    TBL_formasPGTO: TFDMemTable;
    TBL_formasPGTOID_FORMAPGTO: TIntegerField;
    TBL_formasPGTOVALOR_PGTO: TCurrencyField;
    TBL_formasPGTONOME_FORMAPGTO: TStringField;
    TBL_formasPGTOGERAR_RECEBER: TStringField;
    TBL_formasPGTOID_CLIENTE: TIntegerField;
    dsFormasPGTOEscolhidas: TDataSource;
    TBL_itensVenda: TFDMemTable;
    TBL_itensVendacod_item: TIntegerField;
    TBL_itensVendaqtd_produto: TCurrencyField;
    TBL_itensVendavlr_unitario: TCurrencyField;
    TBL_itensVendavlr_desconto: TCurrencyField;
    TBL_itensVendavlr_total: TCurrencyField;
    TBL_itensVendanome_produto: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBG_formasPGTODblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
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

procedure TViewFormaPGTO.btnOkClick(Sender: TObject);
var
  valor_faturado, valor_restante: double;
begin
  inherited;

  TBL_formasPGTO.Open;
  TBL_formasPGTO.Insert;
  TBL_formasPGTOID_FORMAPGTO.AsInteger       := FService.QRY_formasPGTOFOR_CODIGO.AsInteger;
  TBL_formasPGTOVALOR_PGTO.AsFloat           := StrToFloatDef(edtVlrFaturar.Text, 0);
  TBL_formasPGTONOME_FORMAPGTO.AsString      := FService.QRY_formasPGTOFOR_DESCRICAO.AsString;
  TBL_formasPGTOGERAR_RECEBER.AsString       := FService.QRY_formasPGTOFOR_GERARECEBER.AsString;
  TBL_formasPGTOID_CLIENTE.AsInteger         := 1;

//  TBL_formasPGTOid_numdocto.AsString         := IntToStr(ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger);

  TBL_formasPGTO.Post;

  //calculando a diferenca
  valor_faturado      := StrToFloatDef(edtVlrFaturar.Text, 0);
  edtVlrFaturado.Text := FloatToStr(valor_faturado + StrToFloatDef(edtVlrFaturado.Text, 0));

  valor_restante      := FValorVenda - StrToFloatDef(edtVlrFaturado.Text, 0);
  edtVlrRestante.Text := FloatToStr(valor_restante);

  edtVlrFaturar.Clear;
  pnlValor.Visible := False;
  DBG_formasPGTO.SetFocus;

end;

procedure TViewFormaPGTO.btnSalvarClick(Sender: TObject);
begin   //salvar
  inherited;

  //salvando a venda
  FService.PUT_venda(TBL_itensVenda,1,1,1,FValorVenda,0);

  TBL_formasPGTO.First;
  while not TBL_formasPGTO.Eof do
  begin

    // gravando o caixa
    FService.PUT_caixa('E', 'VENDA PDV N. ' + IntToStr(FService.NUM_VENDA) + ' - ' + TBL_formasPGTONOME_FORMAPGTO.AsString,
                                 TBL_formasPGTOvalor_pgto.AsFloat,
                                 TBL_formasPGTOid_formapgto.AsInteger,
                                 FService.NUM_VENDA );

    // gravando o receber
    if TBL_formasPGTOgerar_receber.AsString =  'S' then
    begin

      FService.PUT_receber(IntToStr(FService.NUM_VENDA) + '-' + IntToStr(TBL_formasPGTOID_FORMAPGTO.AsInteger),
                            TBL_formasPGTOID_CLIENTE.AsInteger,
                            TBL_formasPGTOVALOR_PGTO.AsFloat);

    end;


    TBL_formasPGTO.Next;

  end;


//  ShowMessage('Dados salvos com sucesso.');


  FService.GET_ItemVenda(FService.NUM_VENDA);

  FService.frxReport.ShowReport();

  Self.ModalResult := mrOk;

end;

procedure TViewFormaPGTO.DBG_formasPGTODblClick(Sender: TObject);
begin
  inherited;

  if StrToFloatDef(edtVlrRestante.Text, 0) > 0 then
  begin

    pnlValor.Visible   := True;
    edtVlrFaturar.Text := edtVlrRestante.Text;
    edtVlrFaturar.SetFocus;

  end
  else begin
    ShowMessage('Não há mais valor para Faturar.')
  end;

end;

procedure TViewFormaPGTO.FormShow(Sender: TObject);
begin // show
  inherited;

  dsFormasPGTO.DataSet := FService.QRY_formasPGTO;
  FService.QRY_formasPGTO.Close;
  FService.QRY_formasPGTO.Open();
  DBG_formasPGTO.SetFocus;

  edtVlrVenda.Text    := FloatToStr(FValorVenda);
  edtVlrRestante.Text := FloatToStr(FValorVenda);

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
