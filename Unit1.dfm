object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1044#1077#1088#1077#1074#1086' '#1055#1080#1092#1072#1075#1086#1088#1072
  ClientHeight = 434
  ClientWidth = 782
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 647
    Top = 8
    Width = 122
    Height = 16
    Caption = #1052#1072#1089#1096#1090#1072#1073#1080#1088#1086#1074#1072#1085#1080#1077
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 647
    Top = 217
    Width = 115
    Height = 16
    Caption = #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 647
    Top = 87
    Width = 38
    Height = 16
    Caption = #1057#1076#1074#1080#1075
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 633
    Height = 417
    Caption = #1060#1088#1072#1082#1090#1072#1083
    TabOrder = 0
    object Image1: TImage
      Left = 8
      Top = 8
      Width = 615
      Height = 400
    end
  end
  object Plus: TBitBtn
    Left = 647
    Top = 30
    Width = 93
    Height = 22
    Caption = #1059#1074#1077#1083#1080#1095#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    OnClick = PlusClick
  end
  object Minus: TBitBtn
    Left = 647
    Top = 58
    Width = 93
    Height = 23
    Caption = #1059#1084#1077#1085#1100#1096#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    OnClick = MinusClick
  end
  object Edit1: TEdit
    Left = 647
    Top = 239
    Width = 93
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 3
    Text = #1064#1072#1075#1080' (n):'
    OnClick = Edit1Click
  end
  object Edit2: TEdit
    Left = 647
    Top = 269
    Width = 93
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 4
    Text = #1059#1075#1086#1083' ('#1072'):'
    OnClick = Edit2Click
  end
  object Play: TBitBtn
    Left = 647
    Top = 299
    Width = 93
    Height = 81
    Caption = #1047#1040#1055#1059#1057#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 5
    OnClick = PlayClick
  end
  object Save: TButton
    Left = 647
    Top = 386
    Width = 93
    Height = 40
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 6
    OnClick = SaveClick
  end
  object Right: TBitBtn
    Left = 647
    Top = 105
    Width = 93
    Height = 23
    Caption = #1042#1087#1088#1072#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 7
    OnClick = RightClick
  end
  object Left: TBitBtn
    Left = 647
    Top = 134
    Width = 93
    Height = 23
    Caption = #1042#1083#1077#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 8
    OnClick = LeftClick
  end
  object Up: TBitBtn
    Left = 647
    Top = 163
    Width = 93
    Height = 23
    Caption = #1042#1074#1077#1088#1093
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 9
    OnClick = UpClick
  end
  object Down: TBitBtn
    Left = 647
    Top = 192
    Width = 93
    Height = 23
    Caption = #1042#1085#1080#1079
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 10
    OnClick = DownClick
  end
end
