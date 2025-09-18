object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 575
    Height = 32
    BiDiMode = bdLeftToRight
    Caption = 'Press any of the buttons below to calculate the intrest'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 264
    Top = 167
    Width = 13
    Height = 32
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnGold: TButton
    Left = 8
    Top = 72
    Width = 94
    Height = 40
    Caption = 'Gold'
    TabOrder = 0
    OnClick = btnGoldClick
  end
  object btnSilver: TButton
    Left = 248
    Top = 72
    Width = 94
    Height = 40
    Caption = 'Silver'
    TabOrder = 1
    OnClick = btnSilverClick
  end
  object btnStandard: TButton
    Left = 508
    Top = 72
    Width = 94
    Height = 40
    Caption = 'Standard'
    TabOrder = 2
    OnClick = btnStandardClick
  end
  object ScrollBar1: TScrollBar
    Left = 8
    Top = 144
    Width = 529
    Height = 17
    Min = -100
    PageSize = 0
    TabOrder = 3
    OnChange = ScrollBar1Change
  end
  object Button1: TButton
    Left = 248
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
  end
end
