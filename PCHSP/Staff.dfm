object SManagement: TSManagement
  Left = 0
  Top = 0
  Caption = 'Staff Management'
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
  object SLB1: TLabel
    Left = 312
    Top = 376
    Width = 69
    Height = 16
    Caption = 'Joining Date'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SLB2: TLabel
    Left = 280
    Top = 16
    Width = 224
    Height = 43
    Alignment = taCenter
    Caption = 'Staff Management'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 312
    Top = 275
    Width = 24
    Height = 16
    Caption = 'DOB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SLB3: TLabel
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
    OnClick = SLB3Click
  end
  object Name: TLabeledEdit
    Left = 56
    Top = 213
    Width = 169
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 16
    EditLabel.Caption = 'Name'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 0
  end
  object Surname: TLabeledEdit
    Left = 56
    Top = 298
    Width = 169
    Height = 21
    EditLabel.Width = 52
    EditLabel.Height = 16
    EditLabel.Caption = 'Surname'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 1
  end
  object Address: TLabeledEdit
    Left = 56
    Top = 392
    Width = 169
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 16
    EditLabel.Caption = 'Address'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 2
  end
  object Postcode: TLabeledEdit
    Left = 312
    Top = 136
    Width = 185
    Height = 21
    EditLabel.Width = 51
    EditLabel.Height = 16
    EditLabel.Caption = 'Postcode'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 3
  end
  object Phone: TLabeledEdit
    Left = 312
    Top = 213
    Width = 185
    Height = 21
    EditLabel.Width = 35
    EditLabel.Height = 16
    EditLabel.Caption = 'Phone'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 4
  end
  object DTP1: TDateTimePicker
    Left = 312
    Top = 395
    Width = 201
    Height = 25
    Date = 42710.740822395830000000
    Time = 42710.740822395830000000
    TabOrder = 5
  end
  object SBT1: TButton
    Left = 621
    Top = 262
    Width = 113
    Height = 41
    Caption = 'Add'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = SBT1Click
  end
  object SBT2: TButton
    Left = 621
    Top = 365
    Width = 113
    Height = 44
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = SBT2Click
  end
  object SBT3: TButton
    Left = 621
    Top = 469
    Width = 113
    Height = 44
    Caption = 'Update'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = SBT3Click
  end
  object StaffID: TLabeledEdit
    Left = 56
    Top = 136
    Width = 169
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 16
    EditLabel.Caption = 'StaffID'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 9
    OnChange = StaffIDChange
  end
  object DTP2: TDateTimePicker
    Left = 312
    Top = 294
    Width = 201
    Height = 25
    Date = 42710.751816030090000000
    Time = 42710.751816030090000000
    TabOrder = 10
  end
  object EmailA: TLabeledEdit
    Left = 56
    Top = 469
    Width = 169
    Height = 21
    EditLabel.Width = 81
    EditLabel.Height = 16
    EditLabel.Caption = 'Email Address'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 11
  end
  object ADOC1: TADOConnection
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
    Left = 648
    Top = 64
  end
  object ADOStaff: TADOTable
    Active = True
    Connection = ADOC1
    CursorType = ctStatic
    TableName = 'StaffDetails'
    Left = 648
    Top = 128
  end
end
