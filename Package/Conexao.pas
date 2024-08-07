unit Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, Vcl.Forms, Vcl.Dialogs;

type
  TdmConexao = class(TDataModule)
    FdConexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    Database: string;
    Username: string;
    Senha: string;
    Porta: string;
    Protocol: string;
    procedure LerIni;
    procedure Conectar;
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

uses
  DataModule.Usuarios;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConexao.Conectar;
begin
  with FdConexao do 
  begin
    Connected := False;
    Params.Database := Database;
    Params.UserName := Username;
    Params.Password := Senha;
    Params.Values['Port'] := Porta;
    Params.Values['Protocol'] := Protocol;
    Connected := True;
  end;
end;

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  try
    LerIni;
    Conectar;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao conectar ao banco de dados. Erro: '+ E.Message);
      Application.Terminate;
    end;
  end;
end;



procedure TdmConexao.LerIni;
var
  ArquivoIni: string;
  stlArquivo: TStringList;
begin
  ArquivoIni := ExtractFilePath(Application.ExeName) + Copy(ExtractFileName(Application.ExeName), 1, 18) + 'ini';
  stlArquivo := TStringList.Create;
  try
    stlArquivo.LoadFromFile(ArquivoIni);
    Database := stlArquivo.Values['DATABASE'];
    Username := stlArquivo.Values['USERNAME'];
    Senha    := stlArquivo.Values['PASSWORD'];
    Porta    := stlArquivo.Values['PORTA'];
    Protocol := stlArquivo.Values['PROTOCOL']
  finally
    FreeAndNil(stlArquivo)
  end;
end;

end.
