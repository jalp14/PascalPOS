object PManagement: TPManagement
  Left = 0
  Top = 0
  Caption = 'Product Management'
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
  object ALBL2: TLabel
    Left = 623
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
  end
  inline FM21: TFM2
    Left = 384
    Top = 0
    Width = 392
    Height = 553
    TabOrder = 1
    ExplicitLeft = 384
    ExplicitWidth = 392
    ExplicitHeight = 553
    inherited F2LBL1: TLabel
      Top = 24
      ExplicitTop = 24
    end
    inherited F2BT1: TButton
      OnClick = FM21F2BT1Click
    end
    inherited ADOF2C1: TADOConnection
      Connected = False
      ConnectionString = 
        'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=PCHSP.mdb;Persist S' +
        'ecurity Info=False;'
    end
    inherited ADOF2T1: TADOTable
      Active = False
    end
    inherited ADOF2T2: TADOTable
      Active = False
    end
  end
  inline FM11: TFM1
    Left = 0
    Top = 0
    Width = 378
    Height = 553
    TabOrder = 0
    ExplicitWidth = 378
    ExplicitHeight = 553
    inherited F1DCM1: TDBLookupComboBox
      OnClick = FM11F1DCM1Click
    end
    inherited F1BTN1: TButton
      OnClick = FM11F1BTN1Click
    end
    inherited ADOF1: TADOConnection
      Connected = False
      ConnectionString = 
        'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=PCHSP' +
        '.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:' +
        'System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database' +
        ' Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking ' +
        'Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk' +
        ' Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cre' +
        'ate System Database=False;Jet OLEDB:Encrypt Database=False;Jet O' +
        'LEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Withou' +
        't Replica Repair=False;Jet OLEDB:SFP=False;'
      Mode = cmUnknown
    end
    inherited ADOFT1: TADOTable
      Active = False
    end
  end
end
