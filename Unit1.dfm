object Form1: TForm1
  Left = 1020
  Top = 228
  Caption = 'Directories'
  ClientHeight = 425
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 813
    Height = 425
    ActivePage = TabSheet3
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1077#1088#1074#1077#1088#1072
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 805
        Height = 318
        TabStop = False
        Align = alClient
        DataSource = DataModule2.DataSServer
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel2: TPanel
        Left = 0
        Top = 318
        Width = 805
        Height = 79
        Align = alBottom
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 1
        object Button1: TButton
          Left = 8
          Top = 6
          Width = 97
          Height = 43
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 111
          Top = 6
          Width = 97
          Height = 43
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 214
          Top = 6
          Width = 97
          Height = 43
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = Button3Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 805
        Height = 317
        Align = alClient
        DataSource = DataModule2.DataSSlave
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        Left = 0
        Top = 317
        Width = 805
        Height = 80
        Align = alBottom
        Caption = 'Panel4'
        ShowCaption = False
        TabOrder = 1
        object Button7: TButton
          Left = 2
          Top = 16
          Width = 97
          Height = 49
          Caption = ' '#1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = Button7Click
        end
        object Button6: TButton
          Left = 105
          Top = 16
          Width = 105
          Height = 49
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button8: TButton
          Left = 216
          Top = 16
          Width = 105
          Height = 49
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = Button8Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1058#1072#1088#1080#1092#1099
      ImageIndex = 2
      object SpeedButton1: TSpeedButton
        Left = 312
        Top = 184
        Width = 23
        Height = 22
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 805
        Height = 280
        Align = alClient
        DataSource = DataModule2.DataSService
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1080#1087
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1062#1110#1085#1072
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1073#1089#1103#1075
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1086#1078#1083#1080#1074#1110#1089#1090#1100'_'#1088#1086#1079#1096#1080#1088#1077#1085#1085#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1077#1088#1074#1077#1088
            Width = 124
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 280
        Width = 805
        Height = 68
        Align = alBottom
        TabOrder = 1
        Visible = False
        object Label1: TLabel
          Left = 16
          Top = 6
          Width = 34
          Height = 13
          Caption = #1053#1072#1079#1074#1072':'
        end
        object Label2: TLabel
          Left = 16
          Top = 32
          Width = 22
          Height = 13
          Caption = #1058#1080#1087':'
        end
        object Label3: TLabel
          Left = 216
          Top = 6
          Width = 26
          Height = 13
          Caption = #1062#1110#1085#1072':'
        end
        object Label4: TLabel
          Left = 208
          Top = 40
          Width = 34
          Height = 13
          Caption = #1054#1073#1089#1103#1075':'
        end
        object Label6: TLabel
          Left = 376
          Top = 6
          Width = 41
          Height = 13
          Caption = #1057#1077#1088#1074#1077#1088':'
        end
        object Edit1: TEdit
          Left = 72
          Top = 6
          Width = 105
          Height = 21
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 72
          Top = 33
          Width = 105
          Height = 21
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 248
          Top = 6
          Width = 105
          Height = 21
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 248
          Top = 33
          Width = 105
          Height = 21
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 423
          Top = 6
          Width = 145
          Height = 21
          KeyField = 'ID'
          ListField = #1055#1088#1080#1079#1085#1072#1095#1077#1085#1085#1103'_'#1053#1072#1079#1074#1072
          ListSource = DataModule2.DataSServer
          TabOrder = 4
        end
        object Button15: TButton
          Left = 600
          Top = 6
          Width = 105
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 5
          OnClick = Button15Click
        end
        object Button16: TButton
          Left = 600
          Top = 37
          Width = 105
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 6
          OnClick = Button16Click
        end
        object CheckBox1: TCheckBox
          Left = 400
          Top = 33
          Width = 160
          Height = 17
          Caption = #1052#1086#1078#1083#1080#1074#1110#1089#1090#1100' '#1088#1086#1079#1096#1080#1088#1077#1085#1085#1103'.'
          TabOrder = 7
        end
        object Button17: TButton
          Left = 711
          Top = 6
          Width = 89
          Height = 56
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100
          TabOrder = 8
          OnClick = Button17Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 348
        Width = 805
        Height = 49
        Align = alBottom
        TabOrder = 2
        object Button10: TButton
          Left = 16
          Top = 8
          Width = 113
          Height = 35
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 135
          Top = 8
          Width = 82
          Height = 35
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = Button11Click
        end
      end
    end
    object Customers: TTabSheet
      Caption = #1050#1083#1080#1077#1085#1090#1099
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 805
        Height = 305
        Align = alTop
        DataSource = DataModule2.DataSCustomers
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button4: TButton
        Left = 16
        Top = 328
        Width = 97
        Height = 43
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 119
        Top = 328
        Width = 97
        Height = 43
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 2
        OnClick = Button5Click
      end
      object Button9: TButton
        Left = 222
        Top = 328
        Width = 97
        Height = 43
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = Button9Click
      end
    end
    object ConnectInfo: TTabSheet
      Caption = #1057#1087#1088#1072#1074#1082#1072' '#1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1081
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 805
        Height = 289
        Align = alTop
        DataSource = DataModule2.DataSConnectInfo
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1083#1110#1108#1085#1090
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1088#1084#1110#1085#1044#1110#1111
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1062#1110#1085#1072
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 317
        Width = 805
        Height = 80
        Align = alBottom
        TabOrder = 1
        Visible = False
        object Label5: TLabel
          Left = 3
          Top = 13
          Width = 111
          Height = 16
          Caption = #1055#1086#1080#1089#1082'  '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 41
          Top = 35
          Width = 73
          Height = 16
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' ID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit5: TEdit
          Left = 120
          Top = 8
          Width = 296
          Height = 21
          TabOrder = 0
          OnChange = Edit5Change
        end
        object Edit6: TEdit
          Left = 120
          Top = 35
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Button12: TButton
          Left = 247
          Top = 35
          Width = 82
          Height = 22
          Caption = #1053#1072#1081#1090#1080
          TabOrder = 2
          OnClick = Button12Click
        end
        object Button14: TButton
          Left = 335
          Top = 35
          Width = 81
          Height = 22
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 3
          OnClick = Button14Click
        end
      end
      object Button13: TButton
        Left = 3
        Top = 295
        Width = 73
        Height = 33
        Caption = #1055#1086#1080#1089#1082
        TabOrder = 2
        OnClick = Button13Click
      end
    end
  end
end
