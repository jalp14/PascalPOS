object MainStaff: TMainStaff
  Left = 0
  Top = 0
  Caption = '5'
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
  object SLBL1: TLabel
    Left = 307
    Top = 32
    Width = 148
    Height = 37
    Caption = 'Welcome User'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SLBL2: TLabel
    Left = 645
    Top = 8
    Width = 137
    Height = 28
    Caption = 'Name of the user'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SLBL2Click
  end
  object MBT5: TButton
    Left = 104
    Top = 288
    Width = 121
    Height = 41
    Caption = 'Product Management'
    TabOrder = 0
    OnClick = MBT5Click
  end
  object MBT6: TButton
    Left = 320
    Top = 288
    Width = 121
    Height = 41
    Caption = 'Invoice and Receipt'
    TabOrder = 1
    WordWrap = True
    OnClick = MBT6Click
  end
  object MBT3: TButton
    Left = 528
    Top = 152
    Width = 121
    Height = 41
    Caption = 'Customer Management'
    TabOrder = 2
    OnClick = MBT3Click
  end
  object MBT2: TButton
    Left = 320
    Top = 152
    Width = 121
    Height = 41
    Caption = 'Check Stock'
    TabOrder = 3
    OnClick = MBT2Click
  end
  object MBT1: TButton
    Left = 104
    Top = 152
    Width = 121
    Height = 41
    Caption = 'Place an order'
    TabOrder = 4
    OnClick = MBT1Click
  end
end
