unit service.base;

interface

uses
  System.Classes,
  System.SysUtils;

type
  TServiceBase = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceBase: TServiceBase;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
