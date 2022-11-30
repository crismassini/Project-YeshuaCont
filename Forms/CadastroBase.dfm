object frmCadastroBase: TfrmCadastroBase
  Left = 0
  Top = 0
  Caption = 'frmCadastroBase'
  ClientHeight = 543
  ClientWidth = 808
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 524
    Width = 808
    Height = 19
    Panels = <>
  end
  object pgcCadastro: TPageControl
    Left = 0
    Top = 0
    Width = 808
    Height = 524
    ActivePage = tbsPesquisa
    Align = alClient
    TabOrder = 1
    object tbsPesquisa: TTabSheet
      Caption = 'Pesquisar'
      object dbgPesquisa: TDBGrid
        Left = 0
        Top = 200
        Width = 800
        Height = 296
        Align = alBottom
        DataSource = dsPesquisa
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 800
        Height = 65
        Align = alTop
        Caption = 'Pesquisa de XXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 0
        Top = 65
        Width = 800
        Height = 135
        Align = alClient
        TabOrder = 2
        object lblPesquisar: TLabel
          Left = 16
          Top = 40
          Width = 46
          Height = 13
          Caption = 'Pesquisar'
        end
        object edtPesquisa: TEdit
          Left = 68
          Top = 37
          Width = 273
          Height = 21
          TabOrder = 0
          Text = 'edtPesquisa'
        end
        object Button1: TButton
          Left = 560
          Top = 37
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
        end
        object Button2: TButton
          Left = 641
          Top = 37
          Width = 75
          Height = 25
          Caption = 'Limpar'
          TabOrder = 2
        end
      end
    end
    object tbsCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object dbnCadastro: TDBNavigator
        Left = 0
        Top = 455
        Width = 800
        Height = 41
        DataSource = dsCadastro
        Align = alBottom
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  object dsCadastro: TDataSource
    Left = 680
    Top = 424
  end
  object dsPesquisa: TDataSource
    Left = 616
    Top = 424
  end
end
