program ControleContratos;

uses
  Vcl.Forms,
  UInicial in '..\Forms\UInicial.pas' {frmUInicial},
  CadastroBase in '..\Forms\CadastroBase.pas' {frmCadastroBase},
  CadUsuario in '..\Forms\CadUsuario.pas' {frmCadUsuario},
  Conexao in 'Conexao.pas' {dmConexao: TDataModule},
  DataModule.Base in '..\DataModule\DataModule.Base.pas' {dtmBase: TDataModule},
  DataModule.Usuarios in '..\DataModule\DataModule.Usuarios.pas' {dtmUsuarios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmUInicial, frmUInicial);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdtmUsuarios, dtmUsuarios);
  Application.Run;
end.
