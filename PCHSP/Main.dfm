object MainM: TMainM
  Left = 0
  Top = 0
  Caption = 'Main Menu '
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 321
  TextHeight = 13
  object ALBL1: TLabel
    Left = 308
    Top = 13
    Width = 168
    Height = 43
    Alignment = taCenter
    Caption = 'Welcome User'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ALBL2: TLabel
    AlignWithMargins = True
    Left = 663
    Top = 8
    Width = 157
    Height = 48
    Alignment = taCenter
    Caption = 'Name of the user'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    GlowSize = 10
    ParentFont = False
    OnClick = ALBL2Click
  end
  object MBT1: TButton
    Left = 83
    Top = 192
    Width = 121
    Height = 41
    Caption = 'Place an order'
    TabOrder = 0
    OnClick = MBT1Click
  end
  object MBT2: TButton
    Left = 304
    Top = 192
    Width = 121
    Height = 41
    Caption = 'Check Stock'
    TabOrder = 1
    OnClick = MBT2Click
  end
  object MBT3: TButton
    Left = 531
    Top = 192
    Width = 121
    Height = 41
    Caption = 'Customer Management'
    TabOrder = 2
    OnClick = MBT3Click
  end
  object MBT4: TButton
    Left = 531
    Top = 304
    Width = 121
    Height = 41
    Caption = 'Staff Management'
    TabOrder = 3
    OnClick = MBT4Click
  end
  object MBT5: TButton
    Left = 83
    Top = 304
    Width = 121
    Height = 41
    Caption = 'Product Management'
    TabOrder = 4
    OnClick = MBT5Click
  end
  object MBT6: TButton
    Left = 304
    Top = 304
    Width = 121
    Height = 41
    Caption = 'Invoice and Receipt'
    TabOrder = 5
    WordWrap = True
    OnClick = MBT6Click
  end
  object MBT7: TButton
    Left = 83
    Top = 400
    Width = 121
    Height = 41
    Caption = 'Performance'
    TabOrder = 6
    OnClick = MBT7Click
  end
end
