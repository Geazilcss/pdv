unit view.base;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,

  service.cadastro,  // responsavel por fazer tudo no banco.

  Winapi.Messages,
  Winapi.Windows;

type
  TViewBase = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  published
    FService: TServiceCadastro;

  public
    { Public declarations }
  end;

var
  ViewBase: TViewBase;

implementation

{$R *.dfm}

procedure TViewBase.FormCreate(Sender: TObject);
begin // create
  FService := TServiceCadastro.Create(Self);
end;

procedure TViewBase.FormDestroy(Sender: TObject);
begin // destroy
  FreeAndNil(FService);
end;

procedure TViewBase.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
    Perform(Wm_NextDlgCtl,0,0);
end;

end.
