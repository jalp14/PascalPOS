object RPword: TRPword
  Left = 0
  Top = 0
  Caption = 'Reset Password'
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
  object MainLBL1: TLabel
    Left = 164
    Top = 32
    Width = 456
    Height = 43
    Alignment = taCenter
    Caption = 'Enter detials below to reset password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LLBL1: TLabel
    Left = 274
    Top = 126
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
  object LLBL3: TLabel
    Left = 135
    Top = 234
    Width = 202
    Height = 30
    Caption = 'Role in the company'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object LLBL2: TLabel
    Left = 249
    Top = 184
    Width = 88
    Height = 30
    Caption = 'Surname'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object LLBL4: TLabel
    Left = 195
    Top = 288
    Width = 142
    Height = 30
    Caption = 'Email Address'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object UName: TEdit
    Left = 402
    Top = 136
    Width = 145
    Height = 21
    TabOrder = 0
    TextHint = 'Enter your first name'
  end
  object LBT2: TButton
    Left = 298
    Top = 352
    Width = 151
    Height = 49
    Caption = 'Email Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = LBT2Click
  end
  object CMB1: TComboBox
    Left = 402
    Top = 234
    Width = 145
    Height = 21
    TabOrder = 2
    TextHint = 'Select your role '
    Items.Strings = (
      'Admin'
      'Staff')
  end
  object SName: TEdit
    Left = 402
    Top = 184
    Width = 145
    Height = 21
    TabOrder = 3
    TextHint = 'Enter your surname'
  end
  object EmailText: TEdit
    Left = 402
    Top = 288
    Width = 145
    Height = 21
    TabOrder = 4
    TextHint = 'Enter your email address'
  end
  object IdMSg: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 400
    Top = 464
  end
  object IdSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 464
    Top = 464
  end
  object SSLOpenSocket: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 536
    Top = 464
  end
  object ADOQR1: TADOQuery
    Connection = ADOCNR1
    Parameters = <>
    Left = 296
    Top = 464
  end
  object ADOCNR1: TADOConnection
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
    Left = 240
    Top = 464
  end
  object ADORPT1: TADOTable
    Active = True
    Connection = ADOCNR1
    CursorType = ctStatic
    TableName = 'Login'
    Left = 168
    Top = 464
  end
end
