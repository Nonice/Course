object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 700
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 700
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 360
    ExplicitHeight = 41
  end
  object PageControl1: TPageControl
    Left = 185
    Top = 0
    Width = 904
    Height = 700
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      object Label1: TLabel
        Left = 64
        Top = 120
        Width = 65
        Height = 25
        Caption = 'Label1'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitLeft = 6
      ExplicitTop = 28
      object Label2: TLabel
        Left = 200
        Top = 208
        Width = 31
        Height = 13
        Caption = 'Label2'
      end
    end
  end
end
