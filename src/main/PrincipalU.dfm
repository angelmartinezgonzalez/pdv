object PrincipalF: TPrincipalF
  Left = 0
  Top = 0
  Caption = 'Punto de Venta - DevMex'
  ClientHeight = 456
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 676
    Height = 456
    Align = alClient
    ExplicitLeft = 24
    ExplicitTop = 8
    ExplicitWidth = 393
    ExplicitHeight = 193
  end
  object PanelLogin: TPanel
    Left = 176
    Top = 152
    Width = 353
    Height = 163
    TabOrder = 0
    object LabelLoginInfo: TLabel
      Left = 49
      Top = 141
      Width = 70
      Height = 13
      Caption = 'LabelLoginInfo'
    end
    object GroupBox1: TGroupBox
      Left = 49
      Top = 13
      Width = 249
      Height = 122
      TabOrder = 0
      object LabelLoginUsuario: TLabel
        Left = 16
        Top = 19
        Width = 43
        Height = 13
        Caption = 'Usuario :'
      end
      object LabelLoginContra: TLabel
        Left = 16
        Top = 51
        Width = 40
        Height = 13
        Caption = 'Contra :'
      end
      object EditUsuario: TEdit
        Left = 88
        Top = 16
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'EditUsuario'
      end
      object EditContra: TEdit
        Left = 88
        Top = 48
        Width = 145
        Height = 21
        TabOrder = 1
        Text = 'EditContra'
      end
      object BtnIngresar: TBitBtn
        Left = 152
        Top = 83
        Width = 75
        Height = 25
        Caption = 'Ingresar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
      end
    end
  end
end
