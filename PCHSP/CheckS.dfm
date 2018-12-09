object CStock: TCStock
  Left = 0
  Top = 0
  Caption = 't'
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
  OnActivate = DBGrid
  PixelsPerInch = 321
  TextHeight = 13
  object CSLBL1: TLabel
    Left = 319
    Top = 8
    Width = 146
    Height = 43
    Alignment = taCenter
    Caption = 'Check Stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CSLBL2: TLabel
    Left = 64
    Top = 388
    Width = 94
    Height = 16
    Caption = 'Search by Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object CSLBL3: TLabel
    Left = 462
    Top = 387
    Width = 41
    Height = 16
    Caption = 'Sort By'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGCS1: TDBGrid
    Left = 80
    Top = 72
    Width = 632
    Height = 257
    DataSource = DSCS1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = ResizeC
  end
  object CSEDT1: TEdit
    Left = 164
    Top = 387
    Width = 146
    Height = 21
    TabOrder = 1
    OnChange = CSEDT1Change
  end
  object CCB1: TComboBox
    Left = 520
    Top = 386
    Width = 145
    Height = 21
    TabOrder = 2
    OnChange = CCB1Change
    Items.Strings = (
      'Alphabetically'
      'Low to High Price'
      'High to Low Price')
  end
  object ADOTC1: TADOTable
    Active = True
    Connection = ADOCS1
    CursorType = ctStatic
    TableName = 'StockFile'
    Left = 680
    Top = 504
  end
  object ADOCS1: TADOConnection
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
    Left = 624
    Top = 504
  end
  object DSCS1: TDataSource
    DataSet = ADOTC1
    Left = 744
    Top = 504
  end
  object ADOCQ1: TADOQuery
    Connection = ADOCS1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from StockFile;')
    Left = 560
    Top = 512
  end
end
