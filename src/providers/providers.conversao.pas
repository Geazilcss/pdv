unit providers.conversao;

interface

uses
  Classes,
  StrUtils,
  SysUtils;

type
  TPCEstoque = (teCompra, teVenda, teDevolucao);

  function EstoqueToStr(const t: TPCEstoque): integer;

implementation

function EstoqueToStr(const t: TPCEstoque): integer;
begin
  case t of
    teCompra:      Result := 1;
    teVenda:       Result := 2;
    teDevolucao:   Result := 3;
  end;
end;

end.
