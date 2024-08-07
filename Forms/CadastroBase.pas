unit CadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmCadastroBase = class(TForm)
    StatusBar1: TStatusBar;
    dsCadastro: TDataSource;
    pgcCadastro: TPageControl;
    tbsPesquisa: TTabSheet;
    tbsCadastro: TTabSheet;
    dbgPesquisa: TDBGrid;
    dbnCadastro: TDBNavigator;
    dsPesquisa: TDataSource;
    pnlTitulo: TPanel;
    Panel2: TPanel;
    edtPesquisa: TEdit;
    lblPesquisar: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBase: TfrmCadastroBase;

implementation

{$R *.dfm}

procedure TfrmCadastroBase.FormShow(Sender: TObject);
begin
  pgcCadastro.ActivePage := tbsPesquisa;
end;

end.
