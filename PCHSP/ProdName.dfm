object ProductName: TProductName
  Left = 0
  Top = 0
  Caption = 'ProductName'
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
  OnCreate = FormCreate
  PixelsPerInch = 321
  TextHeight = 13
  object F1LBL1: TLabel
    Left = 40
    Top = 8
    Width = 259
    Height = 43
    Caption = 'Update Existing Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object F1LBL2: TLabel
    Left = 32
    Top = 167
    Width = 163
    Height = 30
    Caption = 'Minimium Stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F1LBL3: TLabel
    Left = 32
    Top = 239
    Width = 137
    Height = 30
    Caption = 'Current Stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F1LBL4: TLabel
    Left = 38
    Top = 315
    Width = 99
    Height = 30
    Caption = 'Unit Price'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object PLBL3: TLabel
    Left = 38
    Top = 68
    Width = 139
    Height = 30
    Caption = 'Product Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL1: TLabel
    Left = 464
    Top = 8
    Width = 283
    Height = 43
    Caption = 'Register a new product'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object F2LBL2: TLabel
    Left = 448
    Top = 88
    Width = 63
    Height = 30
    Caption = 'Name '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL3: TLabel
    Left = 448
    Top = 152
    Width = 85
    Height = 30
    Caption = 'Quantity'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL4: TLabel
    Left = 448
    Top = 224
    Width = 156
    Height = 30
    Caption = 'Minimum Stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL5: TLabel
    Left = 448
    Top = 296
    Width = 99
    Height = 30
    Caption = 'Unit Price'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F2LBL6: TLabel
    Left = 448
    Top = 369
    Width = 83
    Height = 30
    Caption = 'Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object F1ED1: TEdit
    Left = 201
    Top = 177
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object F1ED2: TEdit
    Left = 201
    Top = 249
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object F1BTN1: TButton
    Left = 72
    Top = 416
    Width = 137
    Height = 49
    Caption = 'Update'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = F1BTN1Click
  end
  object F1ED3: TEdit
    Left = 201
    Top = 325
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object PName: TComboBox
    Left = 32
    Top = 104
    Width = 226
    Height = 21
    TabOrder = 4
    Text = 'Select a product'
    OnChange = PNameChange
  end
  object F2ED1: TEdit
    Left = 552
    Top = 96
    Width = 201
    Height = 21
    TabOrder = 5
    TextHint = 'Name of the product'
  end
  object F2ED2: TEdit
    Left = 560
    Top = 160
    Width = 193
    Height = 21
    TabOrder = 6
    TextHint = 'Enter a number'
  end
  object F2ED3: TEdit
    Left = 632
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 7
    TextHint = 'Minimum Required'
  end
  object F2ED4: TEdit
    Left = 632
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 8
    TextHint = 'Price of the product'
  end
  object F2BT1: TButton
    Left = 520
    Top = 448
    Width = 105
    Height = 49
    Caption = 'Add'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = F2BT1Click
  end
  object F2DBCM1: TDBLookupComboBox
    Left = 608
    Top = 378
    Width = 145
    Height = 21
    KeyField = 'SupplierID'
    ListField = 'SupplierName'
    ListSource = F2DS1
    TabOrder = 10
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
    Top = 200
  end
  object ADOFQ1: TADOQuery
    Active = True
    Connection = ADOF1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ProductName from StockFile;')
    Left = 304
    Top = 256
  end
  object ADOFT1: TADOTable
    Connection = ADOF1
    CursorType = ctStatic
    TableName = 'StockFile'
    Left = 304
    Top = 320
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
    Left = 736
    Top = 496
  end
  object F2DS1: TDataSource
    DataSet = ADOF2T2
    Left = 680
    Top = 504
  end
  object ADOF2T1: TADOTable
    Active = True
    Connection = ADOF2C1
    CursorType = ctStatic
    TableName = 'StockFile'
    Left = 680
    Top = 448
  end
  object ADOF2T2: TADOTable
    Active = True
    Connection = ADOF2C1
    CursorType = ctStatic
    TableName = 'Supplier'
    Left = 736
    Top = 448
  end
end
