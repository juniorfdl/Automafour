object FormTelaConsultaRapidaItem: TFormTelaConsultaRapidaItem
  Left = -8
  Top = -8
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 706
  ClientWidth = 1366
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel10: TRxLabel
    Left = 860
    Top = 113
    Width = 61
    Height = 19
    Caption = 'GRUPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object ScrollBoxPrincipal: TScrollBox
    Left = 150
    Top = 0
    Width = 1024
    Height = 706
    Align = alLeft
    BorderStyle = bsNone
    Color = 10053171
    ParentColor = False
    TabOrder = 0
    object LblNomeSistema: TRxLabel
      Left = 0
      Top = 0
      Width = 1024
      Height = 45
      Align = alTop
      Alignment = taCenter
      Caption = 'Consulta de Itens'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -37
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object AdvSmoothPanel2: TAdvSmoothPanel
      Left = 19
      Top = 51
      Width = 990
      Height = 91
      Cursor = crDefault
      Caption.Text = '  Filtros de Pesquisa'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.ColorStart = 11563548
      Caption.ColorEnd = 10446362
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowColor = 3355443
      Fill.ShadowOffset = 10
      Version = '1.0.9.0'
      TabOrder = 0
      object LblBonusTroca: TRxLabel
        Left = 13
        Top = 25
        Width = 94
        Height = 23
        Caption = 'Descri'#231#227'o'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel22: TRxLabel
        Left = 259
        Top = 25
        Width = 126
        Height = 23
        Caption = 'Desc.T'#233'cnica'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel23: TRxLabel
        Left = 441
        Top = 25
        Width = 101
        Height = 23
        Caption = 'Referencia'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel24: TRxLabel
        Left = 577
        Top = 25
        Width = 58
        Height = 23
        Caption = 'Marca'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel25: TRxLabel
        Left = 828
        Top = 25
        Width = 137
        Height = 23
        Caption = 'Pav/Rua/Prate'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object VALOR: TEdit
        Left = 7
        Top = 49
        Width = 241
        Height = 27
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = VALORKeyDown
      end
      object EditDescTecnica: TEdit
        Left = 255
        Top = 49
        Width = 177
        Height = 27
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyDown = EditDescTecnicaKeyDown
      end
      object EditRef: TEdit
        Left = 439
        Top = 49
        Width = 125
        Height = 27
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnKeyDown = EditRefKeyDown
      end
      object ComboMarca: TRxDBLookupCombo
        Left = 571
        Top = 48
        Width = 245
        Height = 28
        DropDownCount = 8
        Ctl3D = True
        DisplayEmpty = 'Todas as Marcas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'MARCICOD'
        LookupDisplay = 'MARCA60DESCR'
        LookupSource = dsSQLMarcaCombo
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnKeyDown = ComboMarcaKeyDown
      end
      object EditPrateleira: TEdit
        Left = 918
        Top = 49
        Width = 46
        Height = 27
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnKeyDown = EditPrateleiraKeyDown
      end
      object EditRua: TEdit
        Left = 872
        Top = 49
        Width = 45
        Height = 27
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnKeyDown = EditRuaKeyDown
      end
      object EditPav: TEdit
        Left = 825
        Top = 49
        Width = 45
        Height = 27
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnKeyDown = EditPavKeyDown
      end
    end
    object AdvSmoothPanel1: TAdvSmoothPanel
      Left = 16
      Top = 140
      Width = 994
      Height = 343
      Cursor = crDefault
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.ColorStart = 11563548
      Caption.ColorEnd = 10446362
      Caption.Line = False
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowColor = 3355443
      Fill.ShadowOffset = 10
      Version = '1.0.9.0'
      TabOrder = 1
      object DBGridLista: TDBGrid
        Left = 8
        Top = 34
        Width = 967
        Height = 292
        BorderStyle = bsNone
        Color = clInfoBk
        Ctl3D = False
        DataSource = DSTemplate
        FixedColor = 10053171
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGridListaDrawColumnCell
        OnKeyDown = DBGridListaKeyDown
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'PRODICOD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODA60DESCR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 312
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODA60REFER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MarcaLookup'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Marca'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODN3VLRVENDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Varejo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODN3VLRVENDA2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Atacado1'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODN2VLRVENDA2835D'
            Title.Alignment = taCenter
            Title.Caption = 'Atacado2'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODN2VLRVENDA283542D'
            Title.Alignment = taCenter
            Title.Caption = 'Atacado3'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end>
      end
    end
    object AdvSmoothPanel3: TAdvSmoothPanel
      Left = 112
      Top = 478
      Width = 806
      Height = 223
      Cursor = crDefault
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.ColorStart = 11563548
      Caption.ColorEnd = 10446362
      Caption.Line = False
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowColor = 3355443
      Fill.ShadowOffset = 10
      Version = '1.0.9.0'
      TabOrder = 2
      object DBText8: TDBText
        Left = 10
        Top = 28
        Width = 180
        Height = 23
        Color = clWhite
        DataField = 'PRODA60CODBAR'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 11
        Top = 79
        Width = 181
        Height = 23
        Color = clWhite
        DataField = 'GrupoLookup'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 194
        Top = 28
        Width = 197
        Height = 23
        Color = clWhite
        DataField = 'CorLookup'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 195
        Top = 79
        Width = 197
        Height = 23
        Color = clWhite
        DataField = 'SubGrupoLookup'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RxLabel1: TRxLabel
        Left = 14
        Top = 4
        Width = 102
        Height = 23
        Caption = 'Cd. Barras'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel3: TRxLabel
        Left = 197
        Top = 4
        Width = 35
        Height = 23
        Caption = 'Cor'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel4: TRxLabel
        Left = 14
        Top = 54
        Width = 61
        Height = 23
        Caption = 'Grupo'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel5: TRxLabel
        Left = 197
        Top = 54
        Width = 98
        Height = 23
        Caption = 'SubGrupo'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel6: TRxLabel
        Left = 15
        Top = 107
        Width = 284
        Height = 23
        Caption = 'Descri'#231#227'o T'#233'cnica / Aplica'#231#227'o'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object DBText4: TDBText
        Left = 394
        Top = 28
        Width = 72
        Height = 23
        Color = clWhite
        DataField = 'TAMANHOLOOKUP'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText5: TDBText
        Left = 470
        Top = 28
        Width = 64
        Height = 23
        Color = clWhite
        DataField = 'UnidadeLookup'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText6: TDBText
        Left = 395
        Top = 80
        Width = 139
        Height = 23
        Color = clWhite
        DataField = 'PRODN3VLRVENDAPROM'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object btFalta: TFlatSpeedButton
        Left = 324
        Top = 111
        Width = 94
        Height = 19
        TransparentMode = tmAlways
        Caption = 'Faltas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000DA5
          D9000C7CAD000C7CAD000C7CAD00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000DA5
          D90030BFEB0007CBED000C7CAD00000000000000000000000000000000000000
          000000000000000000000000000000000000000000000DA5D9000DA5D9000DA5
          D9004DD4F20007CBED000C7CAD000C7CAD000C7CAD000000000000000000644C
          3500644C3500644C3500644C3500644C3500B8A89C0030BFEB0089EFFC007BE9
          FB004DD4F2004DD4F20030BFEB0007CBED000C7CAD0000000000644C3500FFFF
          FF00F3ECEC00ECE2DB00A78EBC00A78EBC00F4D4CC0030BFEB00BCFAFC0089EF
          FC007BE9FB004DD4F2004DD4F20030BFEB000C7CAD0000000000644C3500FCFC
          FC00F2F4F400BEBAE2000E32B7000E32B700B5C6D10049B7F90030BFEB0030BF
          EB0097F6FC007BE9FB000DA5D9000DA5D9000C7CAD0000000000644C3500FCFC
          FC00949FE9002953DA003E79F5002953DA002953DA00DACDC800E8DBD40030BF
          EB00BCFAFC0089EFFC000C7CAD00000000000000000000000000644C3500FFFF
          FF003E79F5003E79F50077B2FC00949FE9002953DA00647CDF00F4DCD40044A1
          D50030BFEB0030BFEB0030BFEB00000000000000000000000000644C3500FCFC
          FC00CEDCFC00B1B9F800E1EBF700EFE9FB00949FE9002953DA0089AEC000E4C8
          B800AE9889000000000000000000000000000000000000000000765C4B00FFFF
          FF00FFFFFF00FCF4FC00FCFCFC00FCFCFC00E1EBF700949FE9002953DA00BEBA
          E200765C4B000000000000000000000000000000000000000000765C4B00FFFF
          FF00FCFCFC00F4FCFC00DCECE300DCECE300E6D4E700D5D5D50077B2FC002953
          DA00464E9E000000000000000000000000000000000000000000765C4B00FFFF
          FF00FFFFFF00577C9200575F6000575F6000575F60001B517600E6D4E700949F
          E900464E9E00000000000000000000000000000000000000000080706400FFFF
          FF00FCFCFC008199A90096CCDD007ACBDE005DC1CD00575F6000D5D5D500FCFC
          FC00977B6700000000000000000000000000000000000000000000000000E4BC
          A900CBC2BD00577C9200A6ECF80094E4FC0096CCDD00577C9200D5B7A400B8A8
          9C00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000089AEC00089AEC0008199A90000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphLeft
        ParentFont = False
        OnClick = btFaltaClick
      end
      object lbVerFoto: TRxLabel
        Left = 433
        Top = 107
        Width = 83
        Height = 23
        Caption = 'Ver Foto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic, fsUnderline]
        Layout = tlBottom
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
        OnClick = lbVerFotoClick
      end
      object RxLabel7: TRxLabel
        Left = 395
        Top = 54
        Width = 136
        Height = 23
        Caption = 'Vlr. Promo'#231#227'o'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel8: TRxLabel
        Left = 396
        Top = 4
        Width = 43
        Height = 23
        Caption = 'Tam'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel9: TRxLabel
        Left = 472
        Top = 4
        Width = 45
        Height = 23
        Caption = 'Unid'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object DBText9: TDBText
        Left = 537
        Top = 29
        Width = 113
        Height = 23
        Alignment = taCenter
        Color = clWhite
        DataField = 'PRODA60DIMENSAO'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText2: TDBText
        Left = 655
        Top = 29
        Width = 129
        Height = 23
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'SaldoEmpresa'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object RxLabel11: TRxLabel
        Left = 540
        Top = 4
        Width = 96
        Height = 23
        Caption = 'Dimens'#227'o'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel12: TRxLabel
        Left = 655
        Top = 4
        Width = 133
        Height = 23
        Caption = 'Estoque Atual'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object DBText1: TDBText
        Left = 537
        Top = 80
        Width = 113
        Height = 23
        Alignment = taCenter
        Color = clWhite
        DataField = 'PRODA15APAVIM'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText7: TDBText
        Left = 655
        Top = 80
        Width = 129
        Height = 23
        Alignment = taCenter
        Color = clWhite
        DataField = 'PRODDPREVCOMPRA'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object RxLabel13: TRxLabel
        Left = 540
        Top = 54
        Width = 100
        Height = 23
        Caption = 'Pavimento'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel14: TRxLabel
        Left = 656
        Top = 54
        Width = 130
        Height = 23
        Caption = 'Prev. Entrega'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object DBText14: TDBText
        Left = 537
        Top = 132
        Width = 113
        Height = 23
        Alignment = taCenter
        Color = clWhite
        DataField = 'PRODA15RUA'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText12: TDBText
        Left = 656
        Top = 132
        Width = 129
        Height = 23
        Alignment = taCenter
        Color = clWhite
        DataField = 'PRODDULTCOMPRA'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object RxLabel15: TRxLabel
        Left = 542
        Top = 107
        Width = 38
        Height = 23
        Caption = 'Rua'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel16: TRxLabel
        Left = 653
        Top = 107
        Width = 138
        Height = 23
        Caption = 'Dt.Ult.Compra'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object DBText15: TDBText
        Left = 537
        Top = 185
        Width = 113
        Height = 23
        Alignment = taCenter
        Color = clWhite
        DataField = 'PRODA15PRATEL'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText13: TDBText
        Left = 656
        Top = 185
        Width = 129
        Height = 23
        Alignment = taCenter
        Color = clWhite
        DataField = 'PRODN3QTDULTCOMPRA'
        DataSource = DSTemplate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object RxLabel17: TRxLabel
        Left = 654
        Top = 160
        Width = 131
        Height = 23
        Caption = 'Q.Ult.Compra'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel18: TRxLabel
        Left = 542
        Top = 160
        Width = 90
        Height = 23
        Caption = 'Prateleira'
        Color = 10567680
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
        ShadowPos = spRightBottom
        Transparent = True
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 132
        Width = 526
        Height = 77
        DataField = 'PRODA255DESCRTEC'
        DataSource = DSTemplate
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object ScrollBoxEsquerda: TScrollBox
    Left = 0
    Top = 0
    Width = 150
    Height = 706
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = 10053171
    ParentColor = False
    TabOrder = 1
  end
  object ScrollBoxDireita: TScrollBox
    Left = 1174
    Top = 0
    Width = 192
    Height = 706
    Align = alClient
    BorderStyle = bsNone
    Color = 10053171
    ParentColor = False
    TabOrder = 3
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLProduto
    OnDataChange = DSTemplateDataChange
    Left = 691
    Top = 302
  end
  object SQLProduto: TRxQuery
    OnCalcFields = SQLProdutoCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO where PRODCATIVO = '#39'S'#39
      'order by PRODA60DESCR, PRODA60REFER')
    Macros = <>
    Left = 663
    Top = 302
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA15CODANT: TStringField
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.PRODUTO.PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCRI'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA30ADESCRREDUZ: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODN3PESOBRUTO: TBCDField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PRODUTO.PRODN3PESOBRUTO'
      Size = 3
    end
    object SQLProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoTAMANHOLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'TAMANHOLOOKUP'
      LookupDataSet = SQLGradeTamanho
      LookupKeyFields = 'GRADICOD;GRTMICOD'
      LookupResultField = 'GRTMA5DESCR'
      KeyFields = 'GRADICOD;GRTMICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoPRODN3PESOLIQ: TBCDField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.PRODUTO.PRODN3PESOLIQ'
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00 '
      Size = 3
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODN3CAPACEMBAL: TBCDField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
      Size = 3
    end
    object SQLProdutoMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutoPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutoPRODN3VLRVENDAPROM: TBCDField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      DisplayFormat = '#,##0.00 '
      Size = 3
    end
    object SQLProdutoSaldoEmpresa: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'SaldoEmpresa'
      DisplayFormat = '###0.000'
      Calculated = True
    end
    object SQLProdutoPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
    object SQLProdutoMarcaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'MarcaLookup'
      LookupDataSet = SQLMarca
      LookupKeyFields = 'MARCICOD'
      LookupResultField = 'MARCA60DESCR'
      KeyFields = 'MARCICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoCorLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CorLookup'
      LookupDataSet = SQLCOR
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      Size = 30
      Lookup = True
    end
    object SQLProdutoGrupoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'GrupoLookup'
      LookupDataSet = TblGrupo
      LookupKeyFields = 'GRUPICOD'
      LookupResultField = 'GRUPA60DESCR'
      KeyFields = 'GRUPICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLProdutoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object SQLProdutoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object SQLProdutoSubGrupoLookup: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'SubGrupoLookup'
      LookupDataSet = TblSubGrupo
      LookupKeyFields = 'GRUPICOD;SUBGICOD'
      LookupResultField = 'SUBGA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoVariacaoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VariacaoLookup'
      LookupDataSet = TblVariacao
      LookupKeyFields = 'GRUPICOD;SUBGICOD;VARIICOD'
      LookupResultField = 'VARIA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD;VARIICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoUnidadeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadeLookup'
      LookupDataSet = TblUnidade
      LookupKeyFields = 'UNIDICOD'
      LookupResultField = 'UNIDA5DESCR'
      KeyFields = 'UNIDICOD'
      Size = 5
      Lookup = True
    end
    object SQLProdutoPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutoPRODCSUBSTRIB: TStringField
      FieldName = 'PRODCSUBSTRIB'
      Origin = 'DB.PRODUTO.PRODCSUBSTRIB'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA60DIMENSAO: TStringField
      FieldName = 'PRODA60DIMENSAO'
      Origin = 'DB.PRODUTO.PRODA60DIMENSAO'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
      Origin = 'DB.PRODUTO.PRODBIMAGEM'
      Size = 1
    end
    object SQLProdutoPRODDPREVCOMPRA: TDateTimeField
      FieldName = 'PRODDPREVCOMPRA'
      Origin = 'DB.PRODUTO.PRODDPREVCOMPRA'
    end
    object SQLProdutoPRODDULTCOMPRA: TDateTimeField
      FieldName = 'PRODDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODDULTCOMPRA'
    end
    object SQLProdutoPRODN3QTDULTCOMPRA: TBCDField
      FieldName = 'PRODN3QTDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3QTDULTCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDA2: TBCDField
      FieldName = 'PRODN3VLRVENDA2'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA2'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODA15APAVIM: TStringField
      FieldName = 'PRODA15APAVIM'
      Origin = 'DB.PRODUTO.PRODA15APAVIM'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA15RUA: TStringField
      FieldName = 'PRODA15RUA'
      Origin = 'DB.PRODUTO.PRODA15RUA'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA15PRATEL: TStringField
      FieldName = 'PRODA15PRATEL'
      Origin = 'DB.PRODUTO.PRODA15PRATEL'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA255DESCRTEC: TMemoField
      FieldName = 'PRODA255DESCRTEC'
      Origin = 'DB.PRODUTO.PRODA255DESCRTEC'
      BlobType = ftMemo
      Size = 2000
    end
    object SQLProdutoPRODN2VLRVENDA2835D: TBCDField
      FieldName = 'PRODN2VLRVENDA2835D'
      Origin = 'DB.PRODUTO.PRODN2VLRVENDA2835D'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN2VLRVENDA283542D: TBCDField
      FieldName = 'PRODN2VLRVENDA283542D'
      Origin = 'DB.PRODUTO.PRODN2VLRVENDA283542D'
      Precision = 15
      Size = 3
    end
  end
  object FormStorage: TFormStorage
    Active = False
    Options = [fpState]
    StoredValues = <>
    Left = 747
    Top = 330
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 663
    Top = 358
  end
  object SQLCOR: TTable
    DatabaseName = 'DB'
    TableName = 'COR'
    Left = 663
    Top = 330
    object SQLCORCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Required = True
    end
    object SQLCORCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLMarca: TTable
    DatabaseName = 'DB'
    TableName = 'MARCA'
    Left = 691
    Top = 330
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Required = True
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLGradeTamanho: TTable
    DatabaseName = 'DB'
    TableName = 'GRADETAMANHO'
    Left = 719
    Top = 330
  end
  object TblGrupo: TTable
    DatabaseName = 'DB'
    TableName = 'GRUPO'
    Left = 691
    Top = 358
  end
  object TblSubGrupo: TTable
    DatabaseName = 'DB'
    TableName = 'SUBGRUPO'
    Left = 719
    Top = 358
  end
  object TblVariacao: TTable
    DatabaseName = 'DB'
    TableName = 'VARIACAO'
    Left = 747
    Top = 358
  end
  object TblUnidade: TTable
    DatabaseName = 'DB'
    TableName = 'UNIDADE'
    Left = 719
    Top = 302
  end
  object dsSQLMarcaCombo: TDataSource
    AutoEdit = False
    DataSet = SQLMarcaCombo
    Left = 691
    Top = 395
  end
  object SQLMarcaCombo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select MARCICOD, MARCA60DESCR from Marca'
      'Order by MARCA60DESCR')
    Macros = <>
    Left = 691
    Top = 423
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    BorderColor = 14986888
    PanelAppearanceLight.BorderColor = 14922381
    PanelAppearanceLight.BorderColorHot = clGray
    PanelAppearanceLight.BorderColorDown = 10240783
    PanelAppearanceLight.Color = 16440774
    PanelAppearanceLight.ColorTo = 14854530
    PanelAppearanceLight.ColorHot = 13958143
    PanelAppearanceLight.ColorHotTo = 6538487
    PanelAppearanceLight.ColorDown = 9232890
    PanelAppearanceLight.ColorDownTo = 1940207
    PanelAppearanceLight.ColorMirror = 14854530
    PanelAppearanceLight.ColorMirrorTo = 14854530
    PanelAppearanceLight.ColorMirrorHot = 6538487
    PanelAppearanceLight.ColorMirrorHotTo = 6538487
    PanelAppearanceLight.ColorMirrorDown = 1940207
    PanelAppearanceLight.ColorMirrorDownTo = 1940207
    PanelAppearanceLight.TextColor = clBlack
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = clGray
    PanelAppearanceDark.BorderColorDown = 10240783
    PanelAppearanceDark.Color = 14986888
    PanelAppearanceDark.ColorTo = 14986888
    PanelAppearanceDark.ColorHot = 13958143
    PanelAppearanceDark.ColorHotTo = 6538487
    PanelAppearanceDark.ColorDown = 9232890
    PanelAppearanceDark.ColorDownTo = 1940207
    PanelAppearanceDark.ColorMirror = 14986888
    PanelAppearanceDark.ColorMirrorTo = 14986888
    PanelAppearanceDark.ColorMirrorHot = 6538487
    PanelAppearanceDark.ColorMirrorHotTo = 6538487
    PanelAppearanceDark.ColorMirrorDown = 1940207
    PanelAppearanceDark.ColorMirrorDownTo = 1940207
    PanelAppearanceDark.TextColor = clWhite
    PanelAppearanceDark.TextColorHot = clWhite
    PanelAppearanceDark.TextColorDown = clWhite
    PanelAppearanceDark.TextStyle = []
    Left = 378
    Top = 6
  end
end
