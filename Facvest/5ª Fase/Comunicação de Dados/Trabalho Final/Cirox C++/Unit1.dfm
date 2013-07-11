object FormPrincipal: TFormPrincipal
  Left = 278
  Top = 163
  Width = 590
  Height = 431
  Caption = 'Cirox -( FAz atEh CaFeh)- :p'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 224
    Top = 2
    Width = 6
    Height = 29
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 31
    Width = 577
    Height = 321
    Color = clRed
    TabOrder = 0
  end
  object AreaMovimeto: TPanel
    Left = 4
    Top = 39
    Width = 569
    Height = 305
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    Caption = ' '
    Color = clYellow
    ParentBiDiMode = False
    TabOrder = 1
    OnMouseDown = AreaMovimetoMouseDown
    object Label3: TLabel
      Left = 193
      Top = 105
      Width = 171
      Height = 66
      Caption = 'Mouse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -53
      Font.Name = 'MS Reference Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 240
      Top = 57
      Width = 73
      Height = 66
      Caption = 'Do'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -53
      Font.Name = 'MS Reference Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 5
      Width = 520
      Height = 66
      Caption = #193'rea de Movimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -53
      Font.Name = 'MS Reference Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 484
      Top = 83
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label6: TLabel
      Left = 484
      Top = 116
      Width = 7
      Height = 13
      Caption = 'Y'
    end
    object Edit1: TEdit
      Left = 496
      Top = 80
      Width = 49
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 496
      Top = 112
      Width = 49
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 16
      Top = 272
      Width = 81
      Height = 21
      TabOrder = 2
      Text = 'Desconectado'
    end
    object BtnEnviar: TButton
      Left = 456
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Enviar'
      TabOrder = 3
      OnClick = BtnEnviarClick
    end
    object BtnReceber: TButton
      Left = 456
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Receber'
      TabOrder = 4
      OnClick = BtnReceberClick
    end
    object Edit4: TEdit
      Left = 304
      Top = 232
      Width = 49
      Height = 21
      TabOrder = 5
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 304
      Top = 264
      Width = 49
      Height = 21
      TabOrder = 6
      Text = 'Edit5'
    end
    object BtnMouse: TButton
      Left = 451
      Top = 192
      Width = 83
      Height = 25
      Caption = 'Controla Mouse'
      TabOrder = 7
      OnClick = BtnMouseClick
    end
    object Button1: TButton
      Left = 16
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Enviar TXT'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 192
      Top = 72
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 9
      Visible = False
    end
  end
  object btnConect: TButton
    Left = 19
    Top = 282
    Width = 89
    Height = 25
    Caption = 'on/off'
    TabOrder = 2
    OnClick = btnConectClick
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 55
    object Aquivo1: TMenuItem
      Caption = '&Aquivo'
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sai&r'
        OnClick = Sair1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
    end
    object Sobre1: TMenuItem
      Caption = '&?'
      object N5: TMenuItem
        Caption = '-'
      end
      object SobreoCirox1: TMenuItem
        Caption = '&Sobre o Cirox'
        OnClick = SobreoCirox1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
    end
  end
  object ComPort: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    OnAfterOpen = ComPortOpen
    OnAfterClose = ComPortClose
    Left = 56
    Top = 89
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 56
    Top = 127
  end
  object Timer2: TTimer
    Interval = 10
    OnTimer = Timer2Timer
    Left = 56
    Top = 167
  end
  object OpenDialog1: TOpenDialog
    Left = 128
    Top = 55
  end
  object SaveDialog1: TSaveDialog
    Left = 91
    Top = 55
  end
end
