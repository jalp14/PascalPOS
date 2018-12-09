object FM1: TFM1
  Left = 0
  Top = 0
  Width = 351
  Height = 446
  TabOrder = 0
  OnClick = FrameClick
  object F1LBL1: TLabel
    Left = 48
    Top = 24
    Width = 226
    Height = 37
    Caption = 'Update Existing Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object F1LBL2: TLabel
    Left = 40
    Top = 153
    Width = 123
    Height = 23
    Caption = 'Minimium Stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F1LBL3: TLabel
    Left = 40
    Top = 201
    Width = 104
    Height = 23
    Caption = 'Current Stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F1LBL4: TLabel
    Left = 40
    Top = 249
    Width = 75
    Height = 23
    Caption = 'Unit Price'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object PLBL3: TLabel
    Left = 40
    Top = 74
    Width = 80
    Height = 16
    Caption = 'Product Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object F1ED1: TEdit
    Left = 184
    Top = 157
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object F1ED2: TEdit
    Left = 184
    Top = 205
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object F1BTN1: TButton
    Left = 96
    Top = 320
    Width = 121
    Height = 41
    Caption = 'Update'
    TabOrder = 2
    OnClick = F1BTN1Click
  end
  object F1ED3: TEdit
    Left = 184
    Top = 253
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object PName: TComboBox
    Left = 40
    Top = 104
    Width = 209
    Height = 21
    TabOrder = 4
    Text = 'Select a product'
  end
  object ADOF1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=PCHSP' +
      '.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:' +
      'System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database' +
      ' Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking ' +
      'Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk' +
      ' Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cre' +
      'ate System Database=False;Jet OLEDB:Encrypt Database=False;Jet O' +
      'LEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Withou' +
      't Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 304
    Top = 192
  end
  object ADOFQ1: TADOQuery
    Active = True
    Connection = ADOF1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ProductName from StockFile;')
    Left = 304
    Top = 248
  end
end
