object QEarnings: TQEarnings
  Left = 0
  Top = 0
  Caption = 'QEarnings'
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
  object QLBL1: TLabel
    Left = 272
    Top = 32
    Width = 241
    Height = 43
    Caption = 'Quarterly Earnings '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object QLBL2: TLabel
    Left = 8
    Top = 129
    Width = 317
    Height = 30
    Caption = 'Calculate Average Cost of Goods'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object QLBL3: TLabel
    Left = 8
    Top = 322
    Width = 100
    Height = 19
    Caption = 'Average Cost:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object QLBL4: TLabel
    Left = 424
    Top = 129
    Width = 312
    Height = 30
    Caption = 'Calculte Average Revenue Made'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object QLBL5: TLabel
    Left = 480
    Top = 322
    Width = 100
    Height = 19
    Caption = 'Average Cost:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object QCB1: TComboBox
    Left = 40
    Top = 184
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'QCB1'
    Items.Strings = (
      '2015'
      '2016'
      '2017')
  end
  object QBtn1: TButton
    Left = 56
    Top = 240
    Width = 113
    Height = 41
    Caption = 'Calculate'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = QBtn1Click
  end
  object QCB2: TComboBox
    Left = 520
    Top = 184
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'QCB2'
    Items.Strings = (
      '2015'
      '2016'
      '2017')
  end
  object QBtn2: TButton
    Left = 536
    Top = 240
    Width = 113
    Height = 40
    Caption = 'Calculate'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = QBtn2Click
  end
  object ADOQCN1: TADOConnection
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
    Left = 24
    Top = 424
  end
  object ADOQQ1: TADOQuery
    Active = True
    Connection = ADOQCN1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from FiscalQuarterEarnings;')
    Left = 104
    Top = 424
  end
  object ADOQQ2: TADOQuery
    Active = True
    Connection = ADOQCN1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from FiscalQuarterEarnings;')
    Left = 176
    Top = 432
  end
end
