object FormPrincipal: TFormPrincipal
  Left = 462
  Top = 204
  Width = 507
  Height = 87
  Caption = 'Extrato Mesa'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbEmpresa: TRxLabel
    Left = 4
    Top = 4
    Width = 483
    Height = 39
    Alignment = taCenter
    AutoSize = False
    Caption = 'Imprimindo Extrato!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    ShadowColor = 15195349
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Memo: TMemo
    Left = 440
    Top = 9
    Width = 39
    Height = 29
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
  end
  object TblPedidoFinanceiro: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoFinan.DB'
    Left = 17
    Top = 64
    object TblPedidoFinanceiroPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoFinanceiroVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TblPedidoFinanceiroValor: TFloatField
      FieldName = 'Valor'
    end
    object TblPedidoFinanceiroNumerario: TStringField
      FieldName = 'Numerario'
      Size = 15
    end
    object TblPedidoFinanceiroTipopadrao: TStringField
      FieldName = 'Tipopadrao'
      Size = 5
    end
  end
  object TblPreVendaItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TblMemPreVendaItem.DB'
    Left = 11
    Top = 9
    object TblPreVendaItemTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDAITEM.TERMICOD'
    end
    object TblPreVendaItemPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDAITEM.PRVDICOD'
    end
    object TblPreVendaItemPVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Origin = 'DB.PREVENDAITEM.PVITIPOS'
    end
    object TblPreVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PREVENDAITEM.PRODICOD'
    end
    object TblPreVendaItemDescricaoRed: TStringField
      FieldName = 'DescricaoRed'
      Size = 30
    end
    object TblPreVendaItemPVITN3QTD: TFloatField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
    end
    object TblPreVendaItemPVITN3VLRUNIT: TFloatField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
      DisplayFormat = '##0.00'
    end
    object TblPreVendaItemPVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblPreVendaItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblPreVendaItemTotalItem: TFloatField
      DisplayLabel = 'Vlr Total Item'
      FieldName = 'TotalItem'
      DisplayFormat = '#0.00'
    end
    object TblPreVendaItemMarcado: TBooleanField
      FieldName = 'Marcado'
    end
    object TblPreVendaItemVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object TblPreVendaItemMesaICod: TIntegerField
      FieldName = 'MesaICod'
    end
    object TblPreVendaItemContaICod: TIntegerField
      FieldName = 'ContaICod'
    end
    object TblPreVendaItemValorServico: TFloatField
      FieldName = 'ValorServico'
    end
    object TblPreVendaItemBORDA01: TStringField
      FieldName = 'BORDA01'
      Origin = 'DB.PREVENDAITEM.BORDA01'
      Size = 60
    end
    object TblPreVendaItemBORDA02: TStringField
      FieldName = 'BORDA02'
      Origin = 'DB.PREVENDAITEM.BORDA02'
      Size = 60
    end
    object TblPreVendaItemBORDA03: TStringField
      FieldName = 'BORDA03'
      Origin = 'DB.PREVENDAITEM.BORDA03'
      Size = 60
    end
    object TblPreVendaItemSABOR01: TStringField
      FieldName = 'SABOR01'
      Origin = 'DB.PREVENDAITEM.SABOR01'
      Size = 60
    end
    object TblPreVendaItemSABOR02: TStringField
      FieldName = 'SABOR02'
      Origin = 'DB.PREVENDAITEM.SABOR02'
      Size = 60
    end
    object TblPreVendaItemSABOR03: TStringField
      FieldName = 'SABOR03'
      Origin = 'DB.PREVENDAITEM.SABOR03'
      Size = 60
    end
    object TblPreVendaItemSABOR04: TStringField
      FieldName = 'SABOR04'
      Origin = 'DB.PREVENDAITEM.SABOR04'
      Size = 60
    end
    object TblPreVendaItemSABOR05: TStringField
      FieldName = 'SABOR05'
      Origin = 'DB.PREVENDAITEM.SABOR05'
      Size = 60
    end
    object TblPreVendaItemSABOR06: TStringField
      FieldName = 'SABOR06'
      Origin = 'DB.PREVENDAITEM.SABOR06'
      Size = 60
    end
  end
  object ACBrPosPrinter: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    CortaPapel = False
    Left = 71
    Top = 10
  end
end
