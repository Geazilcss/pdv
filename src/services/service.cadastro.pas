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

  service.conexao,

  Vcl.DBGrids,
  Vcl.Dialogs,

  providers.conversao, frxClass, frxDBSet;

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
    QRY_venda: TFDQuery;
    QRY_vendaItem: TFDQuery;
    QRY_vendaMOV_CODIGO: TIntegerField;
    QRY_vendaMOV_TIPOESTOQUE: TIntegerField;
    QRY_vendaMOV_DATA: TDateField;
    QRY_vendaMOV_HORA: TTimeField;
    QRY_vendaMOV_VLRDESCONTO: TFMTBCDField;
    QRY_vendaMOV_VLRTOTAL: TFMTBCDField;
    QRY_vendaMOV_VENDEDOR: TIntegerField;
    QRY_vendaMOV_CLIENTE: TIntegerField;
    QRY_vendaItemMVI_CODIGO: TIntegerField;
    QRY_vendaItemMVI_CODIGOMOVESTOQUE: TIntegerField;
    QRY_vendaItemMVI_CODITEM: TIntegerField;
    QRY_vendaItemMVI_QUANTIDADE: TFMTBCDField;
    QRY_vendaItemMVI_VLRUNITARIO: TFMTBCDField;
    QRY_vendaItemMVI_VLRTOTAL: TFMTBCDField;
    QRY_vendaItemMVI_VLRDESCONTO: TFMTBCDField;
    QRY_produtoPR1_CODIGO: TIntegerField;
    QRY_formasPGTO: TFDQuery;
    QRY_formasPGTOFOR_CODIGO: TIntegerField;
    QRY_formasPGTOFOR_DESCRICAO: TStringField;
    QRY_formasPGTOFOR_GERARECEBER: TStringField;
    QRY_cadCaixa: TFDQuery;
    QRY_cadCaixaCAI_CODIGO: TIntegerField;
    QRY_cadCaixaCAI_DATAHORA: TSQLTimeStampField;
    QRY_cadCaixaCAI_TIPO: TStringField;
    QRY_cadCaixaCAI_VALOR: TFMTBCDField;
    QRY_cadCaixaCAI_DESCRICAO: TStringField;
    QRY_cadCaixaCAI_IDFORMAPGTO: TIntegerField;
    QRY_cadCaixaCAI_IDVENDA: TIntegerField;
    QRY_receber1: TFDQuery;
    QRY_receber2: TFDQuery;
    QRY_receber1RC1_CODIGO: TIntegerField;
    QRY_receber1RC1_NUMDOCTO: TStringField;
    QRY_receber1RC1_CLIENTE: TIntegerField;
    QRY_receber1RC1_VALOR: TFMTBCDField;
    QRY_receber2RC2_CODIGO: TIntegerField;
    QRY_receber2RC2_NUMDOCTO: TStringField;
    QRY_receber2RC2_DATA: TDateField;
    QRY_receber2RC2_VALORPARCELA: TFMTBCDField;
    QRY_receber2RC2_PARCELA: TStringField;
    QRY_receber2RC2_VENCIMENTO: TDateField;
    QRY_receber2RC2_VALORHAVER: TFMTBCDField;
    QRY_receber2RC2_VALORSALDO: TFMTBCDField;
    frxReport: TfrxReport;
    frxDBDataset_venda: TfrxDBDataset;
    frxDBDataset_vendaItem: TfrxDBDataset;
    frxDBDataset_filial: TfrxDBDataset;
    QRY_vendaItemPR1_NOMECOMPLETO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private


  public
    procedure GET_produtos(AValue: string);
    procedure DimensionarGrid(dbg: TDBGrid);


    procedure PUT_caixa(tipo, descricao: string; valor: double; idFormaPGTO, idVENDA: integer);

    procedure PUT_venda(ADataSet: TDataSet; TipoEstoque, Vendedor, Cliente: integer;
      ValorVenda, Desconto: double);

    procedure PUT_receber(ADocto: string; ID_CLIENTE: integer; ValorDocto: double);

    procedure GET_ItemVenda(ANumVenda: integer);

    var
      NUM_VENDA: integer;




  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceCadastro }

procedure TServiceCadastro.GET_ItemVenda(ANumVenda: integer);
begin //pegando os itens da venda

  QRY_vendaItem.Close;
  QRY_vendaItem.Params[0].AsInteger := ANumVenda;
  QRY_vendaItem.Open();

end;

procedure TServiceCadastro.GET_produtos(AValue: string);
begin // produto pelo código de barras
  QRY_produto.Close;
  QRY_produto.Params[0].AsString := AValue;
  QRY_produto.Open();

  if QRY_produto.RecordCount < 1 then
  begin
    ShowMessage('Produto não encontrado');
    abort;
  end;

end;


procedure TServiceCadastro.PUT_caixa(tipo, descricao: string; valor: double; idFormaPGTO, idVENDA: integer);
begin   // gravando o caixa

  QRY_cadCaixa.Close;
  QRY_cadCaixa.Open();
  QRY_cadCaixa.Insert;

  QRY_cadCaixaCAI_DATAHORA.AsDateTime   := Now;
  QRY_cadCaixaCAI_TIPO.AsString         := tipo;
  QRY_cadCaixaCAI_VALOR.AsFloat         := valor;
  QRY_cadCaixaCAI_DESCRICAO.AsString    := descricao;
  QRY_cadCaixaCAI_IDFORMAPGTO.AsInteger := idFormaPGTO;
  QRY_cadCaixaCAI_IDVENDA.AsInteger     := idVENDA;
  QRY_cadCaixa.Post;

end;

procedure TServiceCadastro.PUT_receber(ADocto: string; ID_CLIENTE: integer; ValorDocto: double);
begin

//salvando o cabeçalho do receber1
  QRY_receber1.Close;
  QRY_receber1.Open();
  QRY_receber1.Insert;
  QRY_receber1RC1_NUMDOCTO.AsString := ADocto;
  QRY_receber1RC1_CLIENTE.AsInteger := ID_CLIENTE;
  QRY_receber1RC1_VALOR.AsFloat     := ValorDocto;
  QRY_receber1.Post;


  //salvando o receber2 ( parcelas )
  QRY_receber2.Close;
  QRY_receber2.Open();
  QRY_receber2.Insert;
  QRY_receber2RC2_NUMDOCTO.AsString     := ADocto;
  QRY_receber2RC2_DATA.AsDateTime       := Date;
  QRY_receber2RC2_VALORPARCELA.AsFloat  := ValorDocto;
  QRY_receber2RC2_PARCELA.AsString      := '1';
  QRY_receber2RC2_VENCIMENTO.AsDateTime := Date + 30;
  QRY_receber2RC2_VALORHAVER.AsFloat    := 0;
  QRY_receber2RC2_VALORSALDO.AsFloat    := ValorDocto;
  QRY_receber2.Post;


end;

procedure TServiceCadastro.PUT_venda(ADataSet: TDataSet; TipoEstoque, Vendedor, Cliente: integer;
      ValorVenda, Desconto: double);
begin // inserindo a venda

  //salvando o cabeçalho da venda
  QRY_venda.Close;
  QRY_venda.Open();
  QRY_venda.Insert;
  QRY_vendaMOV_TIPOESTOQUE.AsInteger := EstoqueToStr(teVenda);
  QRY_vendaMOV_DATA.AsDateTime       := Date;
  QRY_vendaMOV_HORA.AsDateTime       := Time;
  QRY_vendaMOV_VLRDESCONTO.AsFloat   := Desconto;
  QRY_vendaMOV_VLRTOTAL.AsFloat      := ValorVenda;
  QRY_vendaMOV_VENDEDOR.AsInteger    := Vendedor;
  QRY_vendaMOV_CLIENTE.AsInteger     := Cliente;
  QRY_venda.Post;

  ADataSet.First;
  while not ADataSet.Eof do
  begin

    QRY_vendaItem.Close;
    QRY_vendaItem.Open();
    QRY_vendaItem.Insert;
    QRY_vendaItemMVI_CODIGOMOVESTOQUE.AsInteger := QRY_vendaMOV_CODIGO.AsInteger;
    QRY_vendaItemMVI_CODITEM.AsInteger          := ADataSet.FieldByName('cod_item').AsInteger;
    QRY_vendaItemMVI_QUANTIDADE.AsFloat         := ADataSet.FieldByName('qtd_produto').AsFloat;
    QRY_vendaItemMVI_VLRUNITARIO.AsFloat        := ADataSet.FieldByName('vlr_unitario').AsFloat;
    QRY_vendaItemMVI_VLRTOTAL.AsFloat           := ADataSet.FieldByName('vlr_total').AsFloat;
    QRY_vendaItemMVI_VLRDESCONTO.AsFloat        := ADataSet.FieldByName('vlr_desconto').AsFloat;
    QRY_vendaItem.Post;

    ADataSet.Next;
  end;


  NUM_VENDA := 0;
  NUM_VENDA := QRY_vendaMOV_CODIGO.AsInteger;

end;

procedure TServiceCadastro.DataModuleCreate(Sender: TObject);
begin
  inherited;
  QRY_filial.Close;
  QRY_filial.Params[0].AsInteger := 1;
  QRY_filial.Open();
end;

procedure TServiceCadastro.DimensionarGrid(dbg: TDBGrid);
type
  TArray = Array of Integer;
  procedure AjustarColumns(Swidth, TSize: Integer; Asize: TArray);
  var
    idx: Integer;
  begin
    if TSize = 0 then
    begin
      TSize := dbg.Columns.count;
      for idx := 0 to dbg.Columns.count - 1 do
        dbg.Columns[idx].Width := (dbg.Width - dbg.Canvas.TextWidth('AAAAAA')
          ) div TSize
    end
    else
      for idx := 0 to dbg.Columns.count - 1 do
        dbg.Columns[idx].Width := dbg.Columns[idx].Width +
          (Swidth * Asize[idx] div TSize);
  end;

var
  idx, Twidth, TSize, Swidth: Integer;
  AWidth: TArray;
  Asize: TArray;
  NomeColuna: String;
begin
  SetLength(AWidth, dbg.Columns.count);
  SetLength(Asize, dbg.Columns.count);
  Twidth := 0;
  TSize := 0;
  for idx := 0 to dbg.Columns.count - 1 do
  begin
    NomeColuna := dbg.Columns[idx].Title.Caption;
    dbg.Columns[idx].Width := dbg.Canvas.TextWidth
      (dbg.Columns[idx].Title.Caption + 'A');
    AWidth[idx] := dbg.Columns[idx].Width;
    Twidth := Twidth + AWidth[idx];

    if Assigned(dbg.Columns[idx].Field) then
      Asize[idx] := dbg.Columns[idx].Field.Size
    else
      Asize[idx] := 1;

    TSize := TSize + Asize[idx];
  end;
  if TDBGridOption.dgColLines in dbg.Options then
    Twidth := Twidth + dbg.Columns.count;

  // adiciona a largura da coluna indicada do cursor
  if TDBGridOption.dgIndicator in dbg.Options then
    Twidth := Twidth + IndicatorWidth;

  Swidth := dbg.ClientWidth - Twidth;
  AjustarColumns(Swidth, TSize, Asize);

end;

end.
