object CustManagement: TCustManagement
  Left = 0
  Top = 0
  Caption = 'Customer Management'
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
  OnActivate = DBGrids
  PixelsPerInch = 321
  TextHeight = 13
  object CLBL2: TLabel
    Left = 343
    Top = 268
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
  object CLBL1: TLabel
    Left = 252
    Top = 8
    Width = 281
    Height = 43
    Alignment = taCenter
    Caption = 'Customer Management'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CLBL3: TLabel
    Left = 669
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
    OnClick = CLBL3Click
  end
  object Name: TLabeledEdit
    Left = 88
    Top = 162
    Width = 169
    Height = 31
    EditLabel.Width = 33
    EditLabel.Height = 16
    EditLabel.Caption = 'Name'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = NameChange
  end
  object Surname: TLabeledEdit
    Left = 88
    Top = 226
    Width = 169
    Height = 31
    EditLabel.Width = 52
    EditLabel.Height = 16
    EditLabel.Caption = 'Surname'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = SurnameChange
  end
  object Address: TLabeledEdit
    Left = 88
    Top = 290
    Width = 169
    Height = 27
    EditLabel.Width = 46
    EditLabel.Height = 16
    EditLabel.Caption = 'Address'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = AddressChange
  end
  object Postcode: TLabeledEdit
    Left = 343
    Top = 98
    Width = 170
    Height = 31
    EditLabel.Width = 51
    EditLabel.Height = 16
    EditLabel.Caption = 'Postcode'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = PostcodeChange
  end
  object Phone: TLabeledEdit
    Left = 343
    Top = 233
    Width = 170
    Height = 31
    EditLabel.Width = 35
    EditLabel.Height = 16
    EditLabel.Caption = 'Phone'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = PhoneChange
  end
  object Gender: TLabeledEdit
    Left = 343
    Top = 162
    Width = 170
    Height = 31
    EditLabel.Width = 41
    EditLabel.Height = 16
    EditLabel.Caption = 'Gender'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = GenderChange
  end
  object DTPC1: TDateTimePicker
    Left = 343
    Top = 290
    Width = 170
    Height = 27
    Date = 42710.876290474540000000
    Time = 42710.876290474540000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object CBT1: TButton
    Left = 632
    Top = 109
    Width = 121
    Height = 49
    Caption = 'Add'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = CBT1Click
  end
  object CBT2: TButton
    Left = 632
    Top = 182
    Width = 121
    Height = 49
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = CBT2Click
  end
  object CBT3: TButton
    Left = 632
    Top = 254
    Width = 121
    Height = 49
    Caption = 'Update'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = CBT3Click
  end
  object CustomerID: TLabeledEdit
    Left = 88
    Top = 98
    Width = 169
    Height = 31
    EditLabel.Width = 71
    EditLabel.Height = 16
    EditLabel.Caption = 'Customer ID'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnChange = CustomerIDChange
  end
  object DBGC1: TDBGrid
    Left = 22
    Top = 361
    Width = 731
    Height = 192
    DataSource = DSC1
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = ResizeGrid
  end
  object ADOCM1: TADOConnection
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
    Left = 104
    Top = 8
  end
  object ADOTCM1: TADOTable
    Active = True
    Connection = ADOCM1
    CursorType = ctStatic
    TableName = 'Customer'
    Left = 72
    Top = 8
  end
  object DSC1: TDataSource
    DataSet = ADOTCM1
    Left = 32
    Top = 8
  end
end
