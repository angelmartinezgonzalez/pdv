object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 97
    Height = 13
    Caption = 'Importe en N'#250'mero:'
  end
  object Label2: TLabel
    Left = 32
    Top = 125
    Width = 81
    Height = 13
    Caption = 'Importe en Letra'
  end
  object EditImporteEnNumero: TEdit
    Left = 32
    Top = 59
    Width = 273
    Height = 21
    TabOrder = 0
    Text = '150.50'
  end
  object EditImporteEnLetra: TEdit
    Left = 32
    Top = 144
    Width = 609
    Height = 21
    TabOrder = 1
    Text = 'EditImporteEnLetra'
  end
  object BtnConvierteNumALetra: TButton
    Left = 336
    Top = 56
    Width = 185
    Height = 25
    Caption = 'ConvierteNumALetra'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 576
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 32
    Top = 192
    Width = 609
    Height = 21
    TabOrder = 4
    Text = 'EditImporteEnLetra'
  end
  object BtnClassFunciona: TButton
    Left = 368
    Top = 104
    Width = 153
    Height = 25
    Caption = 'ClassFunciona'
    TabOrder = 5
    OnClick = BtnClassFuncionaClick
  end
  object Button3: TButton
    Left = 568
    Top = 104
    Width = 121
    Height = 25
    Caption = 'Button3'
    TabOrder = 6
  end
end
