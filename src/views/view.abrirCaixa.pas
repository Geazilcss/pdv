unit view.abrirCaixa;

interface

uses
  Data.DB,

  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.base.listas, providers.variaveis;

type
  TViewAbrirCaixa = class(TViewBaseListas)
    lblVlrInicial: TLabel;
    edtVlrInicial: TDBEdit;
    lblObservacao: TLabel;
    edtObservacao: TDBEdit;
    cbxStatus: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewAbrirCaixa: TViewAbrirCaixa;

implementation

{$R *.dfm}

procedure TViewAbrirCaixa.btnNovoClick(Sender: TObject);
begin //novo
  inherited;
  FService.QRY_abreCaixaABR_DATAABERTURA.AsDateTime := Date;
  FService.QRY_abreCaixaABR_HRAABERTURA.AsDateTime  := Time;
  FService.QRY_abreCaixaABR_CODIGOUSUARIO.AsInteger := 1;
  FService.QRY_abreCaixaABR_STATUS.AsString         := 'ABERTO';
  edtVlrInicial.SetFocus;
end;

procedure TViewAbrirCaixa.btnSalvarClick(Sender: TObject);
begin
  inherited;
  NUM_CAIXA := FService.QRY_abreCaixaABR_CODIGO.AsInteger;
  ShowMessage('Dados salvo com sucesso.');
end;

procedure TViewAbrirCaixa.FormShow(Sender: TObject);
begin // show
  inherited;
  dsPadrao.DataSet := FService.QRY_abreCaixa;

//  FService.QRY_abreCaixa.Close;
//  FService.QRY_abreCaixa.Open();

end;

end.
