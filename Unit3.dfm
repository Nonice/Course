object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'SkyCorp'
  ClientHeight = 641
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1012
    Height = 641
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    OwnerDraw = True
    RaggedRight = True
    ScrollOpposite = True
    TabHeight = 150
    TabOrder = 0
    TabPosition = tpLeft
    TabWidth = 50
    OnDrawTab = PageControl1DrawTab
    ExplicitHeight = 661
    object TabSheet1: TTabSheet
      Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077
      OnShow = TabSheet1Show
      ExplicitHeight = 653
      object Label1: TLabel
        Left = 6
        Top = 10
        Width = 204
        Height = 24
        Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1090#1072#1088#1080#1092#1072':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 6
        Top = 295
        Width = 70
        Height = 23
        Caption = #1050#1083#1080#1077#1085#1090':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 324
        Width = 34
        Height = 13
        Caption = #1055#1086#1080#1089#1082':'
      end
      object Label4: TLabel
        Left = 6
        Top = 543
        Width = 23
        Height = 13
        Caption = #1048#1084#1103':'
      end
      object Label5: TLabel
        Left = 157
        Top = 543
        Width = 48
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
      end
      object Label6: TLabel
        Left = 157
        Top = 587
        Width = 30
        Height = 13
        Caption = #1044#1072#1090#1072':'
      end
      object Label7: TLabel
        Left = 345
        Top = 587
        Width = 51
        Height = 13
        Caption = #1058#1077#1088#1084#1110#1085' '#1044#1110#1111':'
      end
      object Label8: TLabel
        Left = 6
        Top = 587
        Width = 36
        Height = 13
        Caption = #1058#1072#1088#1080#1092':'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 153
        Top = 606
        Width = 186
        Height = 21
        Date = 44522.000000000000000000
        Time = 0.734164733796205800
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 345
        Top = 606
        Width = 186
        Height = 21
        Date = 44518.000000000000000000
        Time = 0.741126921297109200
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 2
        Top = 606
        Width = 145
        Height = 21
        KeyField = 'ID'
        ListField = #1053#1072#1079#1074#1072
        ListSource = DataModule2.DataSService
        TabOrder = 2
      end
      object DBGrid2: TDBGrid
        Left = 6
        Top = 372
        Width = 779
        Height = 165
        DataSource = DataModule2.DataSCustomersQ
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
      end
      object Edit1: TEdit
        Left = 16
        Top = 336
        Width = 225
        Height = 21
        TabOrder = 4
        OnChange = Edit1Change
      end
      object Edit2: TEdit
        Left = 6
        Top = 560
        Width = 145
        Height = 21
        TabOrder = 5
      end
      object Edit3: TEdit
        Left = 157
        Top = 560
        Width = 145
        Height = 21
        TabOrder = 6
      end
      object Button3: TButton
        Left = 553
        Top = 543
        Width = 232
        Height = 38
        Caption = #1054#1092#1086#1088#1084#1080#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = Button3Click
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 40
        Width = 782
        Height = 244
        DataSource = DataModule2.DataSConnectInfo
        TabOrder = 8
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
      object Button4: TButton
        Left = 553
        Top = 290
        Width = 232
        Height = 38
        Caption = #1054#1090#1095#1105#1090' '#1086' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = Button4Click
      end
      object Button6: TButton
        Left = 247
        Top = 336
        Width = 55
        Height = 21
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 10
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 345
        Top = 551
        Width = 104
        Height = 30
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1055#1086#1083#1103
        TabOrder = 11
        OnClick = Button7Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
      ImageIndex = 1
      OnShow = TabSheet2Show
      ExplicitHeight = 653
      object Label10: TLabel
        Left = 3
        Top = 0
        Width = 110
        Height = 23
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 163
        Top = 29
        Width = 93
        Height = 13
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1077#1088#1074#1077#1088#1091':'
      end
      object Label12: TLabel
        Left = 3
        Top = 29
        Width = 94
        Height = 13
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091':'
      end
      object Label9: TLabel
        Left = 328
        Top = 29
        Width = 102
        Height = 13
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1076#1083#1078#1085#1086#1089#1090#1080':'
      end
      object Label13: TLabel
        Left = 712
        Top = 68
        Width = 62
        Height = 23
        Caption = #1042#1099#1074#1086#1076':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 519
        Top = 29
        Width = 90
        Height = 13
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1090#1072#1088#1080#1092#1091':'
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 3
        Top = 44
        Width = 145
        Height = 21
        DataField = #1050#1083#1110#1108#1085#1090
        KeyField = 'ID'
        ListField = #1050#1083#1110#1108#1085#1090
        ListSource = DataModule2.DataSConnectInfo
        TabOrder = 0
        OnClick = DBLookupComboBox2Click
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 163
        Top = 44
        Width = 145
        Height = 21
        KeyField = 'ID'
        ListField = #1055#1088#1080#1079#1085#1072#1095#1077#1085#1085#1103'_'#1053#1072#1079#1074#1072
        ListSource = DataModule2.DataSServer
        TabOrder = 1
        OnClick = DBLookupComboBox3Click
      end
      object DBGrid3: TDBGrid
        Left = 2
        Top = 80
        Width = 663
        Height = 551
        DataSource = DataModule2.DataSQSlave
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1086#1089#1072#1076#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Visible = True
          end>
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 328
        Top = 44
        Width = 185
        Height = 21
        KeyField = #1055#1086#1089#1072#1076#1072
        ListField = #1055#1086#1089#1072#1076#1072
        ListSource = DataModule2.DataSTested
        TabOrder = 3
        OnClick = DBLookupComboBox4Click
      end
      object Button5: TButton
        Left = 704
        Top = 44
        Width = 89
        Height = 21
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button8: TButton
        Left = 688
        Top = 97
        Width = 121
        Height = 40
        Caption = #1057#1087#1080#1089#1086#1082#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
        TabOrder = 5
        OnClick = Button8Click
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 519
        Top = 44
        Width = 145
        Height = 21
        KeyField = 'ID'
        ListField = #1053#1072#1079#1074#1072
        ListSource = DataModule2.DataSService
        TabOrder = 6
        OnClick = DBLookupComboBox5Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 904
    Top = 592
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
