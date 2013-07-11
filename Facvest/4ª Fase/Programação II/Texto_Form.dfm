object frmTexto: TfrmTexto
  Left = 197
  Top = 110
  Width = 696
  Height = 480
  Caption = 'frmTexto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 688
    Height = 453
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyPress = RichEdit1KeyPress
  end
end
