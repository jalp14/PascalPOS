object FM3: TFM3
  Left = 0
  Top = 0
  Width = 723
  Height = 533
  TabOrder = 0
  object FLBL1: TLabel
    Left = 280
    Top = 24
    Width = 204
    Height = 47
    Caption = 'Confirm Order'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FLBL2: TLabel
    Left = 184
    Top = 136
    Width = 119
    Height = 30
    Caption = 'Total Price :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object FLBL3: TLabel
    Left = 184
    Top = 208
    Width = 171
    Height = 30
    Caption = 'Customer Name :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object FED1: TEdit
    Left = 384
    Top = 136
    Width = 121
    Height = 30
    ReadOnly = True
    TabOrder = 0
  end
  object FED2: TEdit
    Left = 384
    Top = 208
    Width = 121
    Height = 30
    ReadOnly = True
    TabOrder = 1
  end
  object FBTN1: TButton
    Left = 184
    Top = 304
    Width = 144
    Height = 49
    Caption = 'Preview Invoice'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object FBTN2: TButton
    Left = 376
    Top = 304
    Width = 153
    Height = 49
    Caption = 'Place Order and Print Invoice'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    WordWrap = True
  end
end
