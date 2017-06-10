object FormTelaConsultaRapidaPlano: TFormTelaConsultaRapidaPlano
  Left = 146
  Top = 101
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'ADVANCED CONTROL'
  ClientHeight = 563
  ClientWidth = 801
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
  object ScrollBoxPrincipal: TScrollBox
    Left = 0
    Top = 0
    Width = 801
    Height = 563
    Align = alClient
    BorderStyle = bsNone
    Color = 10053171
    ParentColor = False
    TabOrder = 0
    object LblNomeSistema: TRxLabel
      Left = 0
      Top = 0
      Width = 801
      Height = 38
      Align = alTop
      Alignment = taCenter
      Caption = 'Condi'#231#245'es de Pagamento'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object AdvSmoothPanel3: TAdvSmoothPanel
      Left = 10
      Top = 45
      Width = 520
      Height = 508
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
      TabOrder = 0
      object DBGridLista: TDBGrid
        Left = 10
        Top = 8
        Width = 489
        Height = 479
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = False
        DataSource = DSTemplate
        FixedColor = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnKeyDown = DBGridListaKeyDown
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'PLRCICOD'
            Title.Caption = 'C'#243'd'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -27
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLRCA60DESCR'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -27
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 693
            Visible = True
          end>
      end
    end
    object VALOR: TEdit
      Left = 17
      Top = 3
      Width = 138
      Height = 35
      TabStop = False
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnKeyDown = VALORKeyDown
    end
    object AdvSmoothPanel1: TAdvSmoothPanel
      Left = 528
      Top = 45
      Width = 270
      Height = 508
      Cursor = crDefault
      Caption.Text = '  Simula'#231#227'o de Parcelas'
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
      TabOrder = 2
      object DBGrid2: TDBGrid
        Left = 6
        Top = 27
        Width = 247
        Height = 462
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = False
        DataSource = DSSQLParcelasPrazoVendaTemp
        FixedColor = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnKeyDown = DBGridListaKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NROPARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parc'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 31
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATAVENCTO'
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALORVENCTO'
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
    end
    object ckSimulador: TCheckBox
      Left = 656
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Ativa Simulador'
      TabOrder = 3
      OnClick = ckSimuladorClick
    end
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLPlano
    OnDataChange = DSTemplateDataChange
    Left = 124
    Top = 250
  end
  object SQLPlano: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTO'
      'where PLRCFATCASH <> '#39'F'#39
      'order by PLRCA60DESCR')
    Left = 96
    Top = 250
    object SQLPlanoPLRCICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoPLRCA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoPLRCFATCASH: TStringField
      FieldName = 'PLRCFATCASH'
      Origin = 'DB.PLANORECEBIMENTO.PLRCFATCASH'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTO '
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 614
    Top = 366
    object SQLPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoRecebimentoPLRCN2TXJURO: TFloatField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
    end
    object SQLPlanoRecebimentoPLRCN2TXMULTA: TFloatField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
    end
    object SQLPlanoRecebimentoPLRCN2TXCRED: TFloatField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
    end
    object SQLPlanoRecebimentoPLRCN2PERCDESC: TFloatField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
    end
    object SQLPlanoRecebimentoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCN2PERCENTR: TFloatField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
    end
    object SQLPlanoRecebimentoPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLPlanoRecebimentoPLRCN2PERCACRESC: TFloatField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
    end
  end
  object SQLPlanoRecebimentoParcela: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTOPARCELA'
      'where'
      '  %MFiltro'
      'order by '
      '  PLRCICOD, PLRPINROPARC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 642
    Top = 366
    object SQLPlanoRecebimentoParcelaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRCICOD'
    end
    object SQLPlanoRecebimentoParcelaPLRPINROPARC: TIntegerField
      FieldName = 'PLRPINROPARC'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINROPARC'
    end
    object SQLPlanoRecebimentoParcelaPLRPINRODIAS: TIntegerField
      FieldName = 'PLRPINRODIAS'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINRODIAS'
    end
    object SQLPlanoRecebimentoParcelaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoParcelaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.REGISTRO'
    end
  end
  object DSSQLParcelasPrazoVendaTemp: TDataSource
    DataSet = SQLParcelasPrazoVendaTemp
    Left = 642
    Top = 394
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP'
      'where Termicod = :TerminalAtual ')
    Macros = <>
    Left = 614
    Top = 394
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TerminalAtual'
        ParamType = ptUnknown
      end>
    object SQLParcelasPrazoVendaTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TERMICOD'
    end
    object SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField
      DisplayLabel = 'Data Vencto.'
      FieldName = 'DATAVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.DATAVENCTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'NROPARCELA'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NROPARCELA'
      DisplayFormat = '000'
    end
    object SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALORVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.VALORVENCTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasPrazoVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'ckSimulador.Checked')
    StoredValues = <>
    Left = 758
    Top = 9
  end
end
