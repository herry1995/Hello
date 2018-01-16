object Fm_Main: TFm_Main
  Left = 0
  Top = 0
  Caption = #27880#20876#34920#20889#20837#21024#38500
  ClientHeight = 278
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo_Text: TMemo
    Left = 0
    Top = 0
    Width = 433
    Height = 233
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Btn_List: TButton
    Left = 32
    Top = 245
    Width = 75
    Height = 25
    Caption = 'WriteOut'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Btn_ListClick
  end
  object Btn_Write: TButton
    Left = 166
    Top = 245
    Width = 75
    Height = 25
    Caption = 'WriteIn'
    TabOrder = 2
    OnClick = Btn_WriteClick
  end
  object Btn_Delete: TButton
    Left = 294
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 3
    OnClick = Btn_DeleteClick
  end
end
