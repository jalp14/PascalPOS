object PlaceOrder: TPlaceOrder
  Left = 0
  Top = 0
  Caption = 'Place Order'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PLBL1: TLabel
    Left = 301
    Top = 8
    Width = 183
    Height = 43
    Caption = 'Place an Order'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PLBL2: TLabel
    Left = 184
    Top = 130
    Width = 20
    Height = 16
    Caption = 'CID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PLBL3: TLabel
    Left = 184
    Top = 226
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
  object PLBL4: TLabel
    Left = 639
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
    OnClick = PLBL4Click
  end
  object DBCM1: TDBLookupComboBox
    Left = 184
    Top = 152
    Width = 145
    Height = 21
    KeyField = 'CustomerID'
    ListField = 'CustomerID'
    ListSource = DSP1
    TabOrder = 0
  end
  object LED2: TLabeledEdit
    Left = 408
    Top = 152
    Width = 121
    Height = 21
    EditLabel.Width = 102
    EditLabel.Height = 16
    EditLabel.Caption = 'Quantity Required'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 1
    OnChange = LED2Change
  end
  object LED3: TLabeledEdit
    Left = 408
    Top = 248
    Width = 121
    Height = 21
    EditLabel.Width = 72
    EditLabel.Height = 16
    EditLabel.Caption = 'Quantity Left'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object LED1: TLabeledEdit
    Left = 184
    Top = 328
    Width = 121
    Height = 21
    EditLabel.Width = 54
    EditLabel.Height = 16
    EditLabel.Caption = 'Unit Price'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 3
  end
  object PBTN1: TButton
    Left = 408
    Top = 328
    Width = 121
    Height = 49
    Caption = 'Place Order'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = PBTN1Click
  end
  object ProdName: TComboBox
    Left = 184
    Top = 248
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'Select a product'
    OnChange = ProdNameChange
  end
  object ADOPC1: TADOConnection
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
    Left = 56
    Top = 280
  end
  object DSP1: TDataSource
    DataSet = ADOPT1
    Left = 64
    Top = 8
  end
  object DSP2: TDataSource
    DataSet = ADOPT2
    Left = 64
    Top = 64
  end
  object DSP3: TDataSource
    DataSet = ADOPT3
    Left = 64
    Top = 112
  end
  object DSP4: TDataSource
    DataSet = ADOPT4
    Left = 64
    Top = 160
  end
  object ADOPQ1: TADOQuery
    Connection = ADOPC1
    Parameters = <>
    Left = 8
    Top = 376
  end
  object DSP5: TDataSource
    DataSet = ADOPT5
    Left = 64
    Top = 216
  end
  object ADOPT1: TADOTable
    Active = True
    Connection = ADOPC1
    CursorType = ctStatic
    TableName = 'Customer'
    Left = 16
    Top = 8
  end
  object ADOPT2: TADOTable
    Active = True
    Connection = ADOPC1
    CursorType = ctStatic
    TableName = 'StockFile'
    Left = 16
    Top = 64
  end
  object ADOPT3: TADOTable
    Active = True
    Connection = ADOPC1
    CursorType = ctStatic
    TableName = 'OrderFile'
    Left = 16
    Top = 112
  end
  object ADOPT4: TADOTable
    Active = True
    Connection = ADOPC1
    CursorType = ctStatic
    TableName = 'PaymentFile'
    Left = 16
    Top = 160
  end
  object ADOPT5: TADOTable
    Active = True
    Connection = ADOPC1
    CursorType = ctStatic
    TableName = 'OrderToStock'
    Left = 16
    Top = 216
  end
  object ADOPQ2: TADOQuery
    Active = True
    Connection = ADOPC1
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'Select ProductName from StockFile;')
    Left = 8
    Top = 328
  end
  object FR1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42807.905525127300000000
    ReportOptions.LastChange = 42807.905525127300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = demo
    Left = 12
    Top = 272
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 120.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 81.422382096774200000
        Top = 3.779530000000000000
        Width = 64.252010000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'PCHSP')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Left = 66.304262100000000000
        Top = 38.496219350000000000
        Width = 94.488250000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '5 Linccon Avenue,'
          'London,'
          'SW1E 5JL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line1: TfrxLineView
        Top = 94.488249999999990000
        Width = 226.771800000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo3: TfrxMemoView
        Left = 3.779530000000000000
        Top = 113.385900000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[Product]')
        ParentFont = False
        WordWrap = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Left = 185.196970000000000000
        Top = 113.385900000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[Price]')
        ParentFont = False
        WordWrap = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 94.488249999999990000
        Top = 113.385900000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[Quantity]')
        ParentFont = False
        WordWrap = False
        VAlign = vaCenter
      end
      object Line2: TfrxLineView
        Left = -3.779530000000000000
        Top = 291.023810000000000000
        Width = 226.771800000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo6: TfrxMemoView
        Left = 22.839667096774160000
        Top = 309.921460000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'You were served by  [SName]')
        ParentFont = False
        WordWrap = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Left = 66.304262096774170000
        Top = 343.937230000000000000
        Width = 94.488249999999990000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Thank You For Shopping')
        ParentFont = False
        WordWrap = False
        VAlign = vaCenter
      end
    end
  end
end
