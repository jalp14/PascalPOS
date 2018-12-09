object ConfirmOrder: TConfirmOrder
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Confirm Order'
  ClientHeight = 201
  ClientWidth = 551
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object COLBL3: TLabel
    Left = 8
    Top = 146
    Width = 127
    Height = 33
    Caption = 'Total Price : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object COLBL1: TLabel
    Left = 0
    Top = 24
    Width = 206
    Height = 33
    Caption = 'Name of the Product'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object COLBL2: TLabel
    Left = 0
    Top = 87
    Width = 99
    Height = 33
    Caption = 'Quantity :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ConfirmBtn: TButton
    Left = 384
    Top = 74
    Width = 88
    Height = 31
    Caption = 'Place Order'
    Default = True
    TabOrder = 0
    OnClick = ConfirmBtnClick
  end
  object CancelBtn: TButton
    Left = 384
    Top = 138
    Width = 88
    Height = 32
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 1
  end
end
