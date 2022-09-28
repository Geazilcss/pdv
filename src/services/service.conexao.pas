unit service.conexao;

interface

uses
  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.UI,
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
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.IniFiles,
  System.SysUtils,

  service.base;

type
  TServiceConexao = class(TServiceBase)
    FDConn: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LIniFile   : TIniFile;
  LDatabase  : string;
  LUser_Name : string;
  LPassword  : string;
  LServidor  : string;
  LPorta     : integer;
  LCaminho   : string;
begin
  inherited;

  try

    FDConn.Connected := False;

    LCaminho := ExtractFileDir(ParamStr(0)) + '\Login.ini';
//    FBDriverLink.VendorHome := ExtractFileDir(ParamStr(0)) + '\dlls';

    LIniFile := TIniFile.Create(LCaminho);

    LDatabase  := LIniFile.ReadString('Conexao','Database', LDatabase);
    LServidor  := LIniFile.ReadString('Conexao','Servidor', LServidor);
    LPorta     := LIniFile.ReadInteger('Conexao','Porta', LPorta);

    LUser_Name := 'SYSDBA';
    LPassword  := 'masterkey';

    FDConn.Params.Values['Database']  := LDatabase;
    FDConn.Params.Values['User_Name'] := LUser_Name;
    FDConn.Params.Values['Password']  := LPassword;
    FDConn.Params.Values['Server']    := LServidor;
    FDConn.Params.Values['Porta']     := LPorta.ToString;

    FDConn.Connected := True;

  finally
    FreeAndNil(LIniFile);
  end;

end;

end.
