object frmPrincipal: TfrmPrincipal
  Left = 199
  Top = 111
  Width = 696
  Height = 480
  Caption = 'Editor de Texto Coandnick'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  WindowMenu = Janelas1
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 415
    Width = 688
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object MainMenu1: TMainMenu
    Left = 648
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Novo1: TMenuItem
        Caption = 'Novo'
        GroupIndex = 1
        OnClick = Novo1Click
      end
      object Abrir1: TMenuItem
        Caption = 'Abrir...'
        GroupIndex = 1
        OnClick = Abrir1Click
      end
      object Salvar1: TMenuItem
        Caption = 'Salvar'
        GroupIndex = 1
        OnClick = Salvar1Click
      end
      object SalvarComo1: TMenuItem
        Caption = 'Salvar Como...'
        GroupIndex = 2
        OnClick = SalvarComo1Click
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        GroupIndex = 2
        OnClick = Fechar1Click
      end
      object FecharTodas1: TMenuItem
        Caption = 'Fechar Todas'
        GroupIndex = 2
        OnClick = FecharTodas1Click
      end
      object Imprimir1: TMenuItem
        Caption = 'Imprimir'
        GroupIndex = 3
        OnClick = Imprimir1Click
      end
      object Sair1: TMenuItem
        Caption = 'Sair...'
        GroupIndex = 4
        OnClick = Sair1Click
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Recortar1: TMenuItem
        Caption = 'Recortar'
        OnClick = Recortar1Click
      end
      object Copiar1: TMenuItem
        Caption = 'Copiar'
        OnClick = Copiar1Click
      end
      object Colar1: TMenuItem
        Caption = 'Colar'
        OnClick = Colar1Click
      end
      object SelecionarTudo1: TMenuItem
        Caption = 'Selecionar Tudo...'
        OnClick = SelecionarTudo1Click
      end
    end
    object Alterar1: TMenuItem
      Caption = 'Formatar'
      object Fonte1: TMenuItem
        Caption = 'Fonte'
        OnClick = Fonte1Click
      end
      object Estilos1: TMenuItem
        Caption = 'Estilos'
        object Negrito1: TMenuItem
          Caption = 'Negrito'
          OnClick = Negrito1Click
        end
        object Itlico1: TMenuItem
          Caption = 'Itálico'
          OnClick = Itlico1Click
        end
        object Sublinhado1: TMenuItem
          Caption = 'Sublinhado'
          OnClick = Sublinhado1Click
        end
      end
      object Alinhamento1: TMenuItem
        Caption = 'Alinhamento'
        object Esquerda1: TMenuItem
          Caption = 'Esquerda'
          OnClick = Esquerda1Click
        end
        object Direita1: TMenuItem
          Caption = 'Direita'
          OnClick = Direita1Click
        end
        object Centro1: TMenuItem
          Caption = 'Centro'
          OnClick = Centro1Click
        end
      end
    end
    object Janelas1: TMenuItem
      Caption = 'Janelas'
      object Cascata1: TMenuItem
        Caption = 'Cascata'
        OnClick = Cascata1Click
      end
      object LadoaLado1: TMenuItem
        Caption = 'Lado a Lado'
        object Horizontal1: TMenuItem
          Caption = 'Horizontal'
          OnClick = Horizontal1Click
        end
        object Vertical1: TMenuItem
          Caption = 'Vertical'
          OnClick = Vertical1Click
        end
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object SobreoEditordeTextoCoandnick1: TMenuItem
        Caption = 'Sobre o Editor de Texto Coandnick'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'CDK'
    Filter = 'Arquivo do Coandnick (*.cdk)|*.cdk|Todos os arquivos (*.*)|*.*'
    Left = 648
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'CDK'
    Filter = 'Arquivos do Coandnick (*.cdk)|*.cdk|Arquivos Texto (*.txt)|*.txt'
    Left = 648
    Top = 72
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 648
    Top = 104
  end
  object PrintDialog1: TPrintDialog
    Left = 648
    Top = 136
  end
  object Timer1: TTimer
    Left = 648
    Top = 168
  end
end
