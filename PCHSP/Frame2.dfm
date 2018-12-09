object FM2: TFM2
  Left = 0
  Top = 0
  Width = 376
  Height = 539
  TabOrder = 0
  object F2LBL1: TLabel
    Left = 64
    Top = 16
    Width = 249
    Height = 37
    Caption = 'Register a new product'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object F2LBL2: TLabel
    Left = 24
    Top = 80
    Width = 57
    Height = 28
    Caption = 'Name '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL3: TLabel
    Left = 24
    Top = 144
    Width = 77
    Height = 28
    Caption = 'Quantity'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL4: TLabel
    Left = 24
    Top = 216
    Width = 140
    Height = 28
    Caption = 'Minimum Stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL5: TLabel
    Left = 24
    Top = 296
    Width = 89
    Height = 28
    Caption = 'Unit Price'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL6: TLabel
    Left = 24
    Top = 368
    Width = 75
    Height = 28
    Caption = 'Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2ED1: TEdit
    Left = 112
    Top = 80
    Width = 201
    Height = 21
    TabOrder = 0
    TextHint = 'Name of the product'
  end
  object F2ED2: TEdit
    Left = 136
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Enter a number'
  end
  object F2ED3: TEdit
    Left = 200
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Minimum Required'
  end
  object F2ED4: TEdit
    Left = 176
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Price of the product'
  end
  object F2BT1: TButton
    Left = 112
    Top = 448
    Width = 97
    Height = 41
    Caption = 'Add'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = F2BT1Click
  end
  object F2DBCM1: TDBLookupComboBox
    Left = 136
    Top = 368
    Width = 145
    Height = 21
    KeyField = 'SupplierID'
    ListField = 'SupplierName'
    ListSource = F2DS1
    TabOrder = 5
  end
  object ADOF2C1: TADOConnection
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
    Left = 336
    Top = 480
  end
  object F2DS1: TDataSource
    DataSet = ADOF2T2
    Left = 264
    Top = 480
  end
  object ADOF2T1: TADOTable
    Active = True
    Connection = ADOF2C1
    CursorType = ctStatic
    TableName = 'StockFile'
    Left = 288
    Top = 440
  end
  object ADOF2T2: TADOTable
    Active = True
    Connection = ADOF2C1
    CursorType = ctStatic
    TableName = 'Supplier'
    Left = 336
    Top = 432
  end
end
