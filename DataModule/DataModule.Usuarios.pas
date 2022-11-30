unit DataModule.Usuarios;

interface

uses
  System.SysUtils, System.Classes, DataModule.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmUsuarios = class(TdtmBase)
    FDTable1CD_USUARIO: TIntegerField;
    FDTable1NOME: TStringField;
    FDTable1SENHA: TStringField;
    FDTable1CONFIRMASENHA: TStringField;
    FDTable1EMAIL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmUsuarios: TdtmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
