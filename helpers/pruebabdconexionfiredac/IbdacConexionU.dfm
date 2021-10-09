object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 619
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IBCConnection1: TIBCConnection
    Database = 'C:\dev\cppbuilder2010\proyectos\pdv\database\POS.FDB'
    DefaultTransaction = IBCTransaction1
    ClientLibrary = 'fbclient.dll'
    Username = 'sysdba'
    Password = 'masterkey'
    Server = 'localhost'
    Connected = True
    Left = 640
    Top = 320
  end
  object IBCTransaction1: TIBCTransaction
    DefaultConnection = IBCConnection1
    Left = 760
    Top = 336
  end
end
