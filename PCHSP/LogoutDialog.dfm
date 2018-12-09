object LogoutBox: TLogoutBox
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'LogoutPrompt'
  ClientHeight = 144
  ClientWidth = 318
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LLBL11: TLabel
    Left = 24
    Top = 48
    Width = 159
    Height = 30
    Caption = 'Select an option'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object LogBtn: TButton
    Left = 220
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Logout'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = LogBtnClick
  end
  object CancelBtn: TButton
    Left = 220
    Top = 86
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
end
