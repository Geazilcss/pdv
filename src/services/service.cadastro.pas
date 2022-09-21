unit service.cadastro;

interface

uses
  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.SysUtils,

  service.conexao;

type
  TServiceCadastro = class(TServiceConexao)
    QRY_filial: TFDQuery;
    QRY_filialFIL_CODIGO: TIntegerField;
    QRY_filialFIL_RAZAO: TStringField;
    QRY_filialFIL_FANTASIA: TStringField;
    QRY_filialFIL_CNPJ: TStringField;
    QRY_filialFIL_TELEFONE: TStringField;
    QRY_abreCaixa: TFDQuery;
    QRY_abreCaixaABR_CODIGO: TIntegerField;
    QRY_abreCaixaABR_DATAABERTURA: TDateField;
    QRY_abreCaixaABR_HRAABERTURA: TTimeField;
    QRY_abreCaixaABR_DTAFECHAMENTO: TDateField;
    QRY_abreCaixaABR_HRAFECHAMENTO: TTimeField;
    QRY_abreCaixaABR_VLRINICIAL: TFMTBCDField;
    QRY_abreCaixaABR_VLRFINAL: TFMTBCDField;
    QRY_abreCaixaABR_CODIGOUSUARIO: TIntegerField;
    QRY_abreCaixaABR_STATUS: TStringField;
    QRY_abreCaixaABR_OBSERVACAO: TStringField;
    QRY_produto: TFDQuery;
    QRY_produtoPR1_NOMECOMPLETO: TStringField;
    QRY_produtoPR1_CODIGOBARRA: TStringField;
    QRY_produtoPR2_VENDAVISTA: TFMTBCDField;
    QRY_produtoPR2_VENDAPRAZO: TFMTBCDField;
  private
    { Private declarations }
  public


  procedure GET_produtos(AValue: string);




  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceCadastro }

procedure TServiceCadastro.GET_produtos(AValue: string);
begin
  QRY_produto.Close;
  QRY_produto.Params[0].AsString := AValue;
  QRY_produto.Open();
end;

end.
