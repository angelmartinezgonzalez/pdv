object ImporteAletraDelphiF: TImporteAletraDelphiF
  Left = 0
  Top = 0
  Caption = 'ImporteAletraDelphiF'
  ClientHeight = 238
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
    Left = 320
    Top = 57
    Width = 185
    Height = 25
    Caption = 'ConvierteNumALetra'
    TabOrder = 2
    OnClick = BtnConvierteNumALetraClick
  end
  object BtnClassCNumLetra: TButton
    Left = 320
    Top = 96
    Width = 185
    Height = 25
    Caption = 'Class CNumLetra'
    TabOrder = 3
    OnClick = BtnClassCNumLetraClick
  end
end
