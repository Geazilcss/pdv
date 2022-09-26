unit view.base.listas;

interface

uses
  Data.DB,

  System.Actions,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.base;


type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlLinhaFundo: TPanel;
    CardPanel_conteudo: TCardPanel;
    pnlImgLogo: TPanel;
    imgLogoAzul: TImage;
    imgLogoCinza: TImage;
    lblTitulo: TLabel;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    card_pesquisa: TCard;
    card_cadastro: TCard;
    pnlFiltroPesquisa: TPanel;
    pnlPesquisar: TPanel;
    edtPesquisa: TSearchBox;
    pnlFiltro: TPanel;
    lblPesquisa: TLabel;
    btnEditar: TSpeedButton;
    btnNovo: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    ImageList_24: TImageList;
    dsPadrao: TDataSource;
    DBG_listas: TDBGrid;
    pnlFiltroCadastro: TPanel;
    btnVoltar: TSpeedButton;
    lblTituloCadastro: TLabel;
    procedure imgLogoAzulMouseEnter(Sender: TObject);
    procedure imgLogoCinzaMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private

  public


  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin // cancelar
  inherited;
  dsPadrao.DataSet.Cancel;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin // editar
  inherited;
  CardPanel_conteudo.ActiveCard := card_cadastro;
  dsPadrao.DataSet.Edit;
end;

procedure TViewBaseListas.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin // novo
  inherited;
  CardPanel_conteudo.ActiveCard := card_cadastro;
  dsPadrao.DataSet.Insert;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin // salvar
  inherited;
  dsPadrao.DataSet.Post;
end;

procedure TViewBaseListas.btnVoltarClick(Sender: TObject);
begin // voltar para pesquisa
  inherited;
  CardPanel_conteudo.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.dsPadraoStateChange(Sender: TObject);
begin //botoes do sistema
  inherited;

  btnNovo.Enabled         := not (dsPadrao.State in [dsInsert, dsEdit]);
  btnEditar.Enabled       := btnNovo.Enabled and (dsPadrao.DataSet.RecordCount > 0);
  btnSalvar.Enabled       := dsPadrao.State in [dsInsert, dsEdit];
  btnCancelar.Enabled     := btnSalvar.Enabled;

end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin // show
  inherited;
  CardPanel_conteudo.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.imgLogoAzulMouseEnter(Sender: TObject);
begin
  inherited;
  imgLogoAzul.Visible  := False;
  imgLogoCinza.Visible := True;
end;

procedure TViewBaseListas.imgLogoCinzaMouseLeave(Sender: TObject);
begin
  inherited;
  imgLogoAzul.Visible  := True;
  imgLogoCinza.Visible := False;
end;

procedure TViewBaseListas.lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin  // mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
