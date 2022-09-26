unit providers.functions;

interface

uses
  Vcl.Forms,
  System.SysUtils,
  view.telaFundo;

{procedures}
procedure CriaForm(const AClasse: TCustomFormClass;  out Form);

implementation

// ======================= implementação ===============================


procedure CriaForm(const AClasse: TCustomFormClass; out Form);
var
 MeuForm: TCustomForm absolute Form;
begin
  if not Assigned(MeuForm) then
  begin
    Application.CreateForm(AClasse, Form);
    try
      ViewTelaFundo.Show;
      MeuForm.ShowModal;
    finally
      ViewTelaFundo.Hide;
      FreeAndNil(MeuForm);
    end;
  end;
end;

end.
