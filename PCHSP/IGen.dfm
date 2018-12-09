object InvGen: TInvGen
  Left = 0
  Top = 0
  Caption = 'Invoice Generator'
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
  object ILBL1: TLabel
    Left = 190
    Top = 8
    Width = 405
    Height = 43
    Alignment = taCenter
    Caption = 'Generate Invoice or Print Receipt'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ILBL2: TLabel
    Left = 24
    Top = 140
    Width = 183
    Height = 30
    Caption = 'Select a record -->'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object CSLBL3: TLabel
    Left = 288
    Top = 328
    Width = 82
    Height = 16
    Caption = 'Filter and Sort'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGI1: TDBGrid
    Left = 239
    Top = 80
    Width = 337
    Height = 201
    DataSource = DSI1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ICB1: TComboBox
    Left = 376
    Top = 327
    Width = 145
    Height = 21
    TabOrder = 1
    OnChange = ICB1Change
    Items.Strings = (
      'None'
      'Not Paid'
      'Paid'
      'Low to High Price'
      'High to Low Price')
  end
  object Button1: TButton
    Left = 312
    Top = 400
    Width = 153
    Height = 49
    Caption = 'Generate Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ADOIC1: TADOConnection
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
    Top = 464
  end
  object ADOIQ1: TADOQuery
    Active = True
    Connection = ADOIC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from PaymentFile;')
    Left = 736
    Top = 408
  end
  object DSI1: TDataSource
    DataSet = ADOIQ1
    Left = 736
    Top = 360
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ADOIQ2
    BCDToCurrency = False
    Left = 16
    Top = 480
  end
  object ADOIQ2: TADOQuery
    Connection = ADOIC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 16
    Top = 424
  end
  object FR1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42807.757599513900000000
    ReportOptions.LastChange = 42807.864013472220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = Demo
    Left = 16
    Top = 376
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape3: TfrxShapeView
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        Height = 491.338900000000000000
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 60.472480000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Constantia'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PC Hardware Specialist')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 98.267780000000000000
          Height = 60.472480000000000000
          Memo.UTF8W = (
            '5 Linccon Avenue,'
            'London,'
            'SW1E 5JL')
        end
        object Memo3: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779530000000001000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Invoice')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 593.386210000000000000
          Top = 60.472479999999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8W = (
            'Date: [CDate]')
        end
        object Memo19: TfrxMemoView
          Left = 593.386210000000000000
          Top = 94.488249999999990000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            'Invoice No: [InvNo]')
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 593.386210000000000000
          Top = 124.724490000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8W = (
            'CustomerID: [CID]')
          WordWrap = False
        end
      end
      object Memo4: TfrxMemoView
        Left = 15.118120000000000000
        Top = 200.315090000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Bill To')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 15.118120000000000000
        Top = 234.330860000000000000
        Width = 188.976500000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[CName]   [CSurname]')
        ParentFont = False
        WordWrap = False
        VAlign = vaCenter
        Formats = <
          item
          end
          item
          end>
      end
      object Memo7: TfrxMemoView
        Left = 15.118120000000000000
        Top = 264.567100000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[CAddress]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Left = 15.118120000000000000
        Top = 294.803340000000000000
        Width = 90.708720000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[CPostcode]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Left = 15.118120000000000000
        Top = 321.260050000000000000
        Width = 90.708720000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[CPhone]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Shape1: TfrxShapeView
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        Height = 37.795300000000000000
      end
      object Memo9: TfrxMemoView
        Left = 105.826840000000000000
        Top = 385.512060000000000000
        Width = 132.283550000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Product Name')
        ParentFont = False
      end
      object Shape2: TfrxShapeView
        Left = 343.937230000000000000
        Top = 377.953000000000000000
        Width = 147.401670000000000000
        Height = 491.338900000000000000
      end
      object Shape4: TfrxShapeView
        Left = 574.488560000000000000
        Top = 377.953000000000000000
        Width = 143.622140000000000000
        Height = 491.338900000000000000
      end
      object Memo10: TfrxMemoView
        Left = 355.275820000000000000
        Top = 385.512060000000000000
        Width = 132.283550000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Unit Price')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 498.897960000000000000
        Top = 385.512060000000000000
        Width = 68.031540000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Quantity')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 612.283860000000000000
        Top = 385.512060000000000000
        Width = 68.031540000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Amount')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 102.047310000000000000
        Top = 427.086890000000000000
        Width = 132.283550000000000000
        Height = 22.677180000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[CProduct]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Left = 355.275820000000000000
        Top = 427.086890000000000000
        Width = 132.283550000000000000
        Height = 22.677180000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[CUnit]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 510.236550000000000000
        Top = 427.086890000000000000
        Width = 49.133890000000000000
        Height = 22.677180000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[CQty]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 608.504330000000000000
        Top = 427.086890000000000000
        Width = 75.590600000000000000
        Height = 22.677180000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[CAmount]')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 487.559370000000000000
        Top = 888.189550000000100000
        Width = 94.488249999999990000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Subtotal')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
end
