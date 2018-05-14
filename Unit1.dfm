object Form1: TForm1
  Left = 192
  Top = 107
  Width = 658
  Height = 518
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BarcodeDecoder1: TBarcodeDecoder
    Left = 8
    Top = 8
    Width = 633
    Height = 417
    ParentColor = False
    TabOrder = 0
    ControlData = {
      000700006C410000192B000013007320616E0900000000000000000000000000
      000000000300BF0400000300010000000B0000000B0000000B00FFFF0B000000
      0B0000000B0000000B00FFFF0800020000000000030000000000}
  end
  object Button1: TButton
    Left = 16
    Top = 448
    Width = 75
    Height = 25
    Caption = 'DecodeFile'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 448
    Width = 75
    Height = 25
    Caption = 'About'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 104
    Top = 448
    Width = 241
    Height = 21
    TabOrder = 3
    Text = 'barcodes.jpg'
  end
end
