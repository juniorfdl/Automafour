inherited FormRelatorioInadimplenciaAnual: TFormRelatorioInadimplenciaAnual
  Caption = 'Estatistica de Vendas + Inadimpl'#234'ncia Anual'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      inherited GroupBox1: TGroupBox
        Visible = False
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'IndiceInadimplenciaAnual.db'
    object TblTemporariaEmpricod: TIntegerField
      FieldName = 'Empricod'
    end
    object TblTemporariaEmpresaRazaoSoc: TStringField
      FieldName = 'EmpresaRazaoSoc'
      Size = 60
    end
    object TblTemporariaAno: TStringField
      FieldName = 'Ano'
      Size = 4
    end
    object TblTemporariaMes: TStringField
      FieldName = 'Mes'
      Size = 15
    end
    object TblTemporariaValorVenda: TFloatField
      FieldName = 'ValorVenda'
    end
    object TblTemporariaValorAReceber: TFloatField
      FieldName = 'ValorAReceber'
    end
    object TblTemporariaValorRecebido: TFloatField
      FieldName = 'ValorRecebido'
    end
    object TblTemporariaVlr_Inadimp: TFloatField
      FieldName = 'Vlr_Inadimp'
    end
    object TblTemporariaPerc_Inadimp: TFloatField
      FieldName = 'Perc_Inadimp'
    end
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 487
    Top = 5
  end
  object sqlParadox: TRxQuery
    DatabaseName = 'UnitGestao_Temp'
    RequestLive = True
    SQL.Strings = (
      'select * from IndiceInadimplenciaAnual'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 528
    Top = 5
    object sqlParadoxEmpricod: TIntegerField
      FieldName = 'Empricod'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".Empricod'
    end
    object sqlParadoxEmpresaRazaoSoc: TStringField
      FieldName = 'EmpresaRazaoSoc'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".EmpresaRazaoSoc'
      Size = 60
    end
    object sqlParadoxAno: TStringField
      FieldName = 'Ano'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".Ano'
      Size = 4
    end
    object sqlParadoxMes: TStringField
      FieldName = 'Mes'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".Mes'
      Size = 15
    end
    object sqlParadoxValorVenda: TFloatField
      FieldName = 'ValorVenda'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".ValorVenda'
    end
    object sqlParadoxValorAReceber: TFloatField
      FieldName = 'ValorAReceber'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".ValorAReceber'
    end
    object sqlParadoxValorRecebido: TFloatField
      FieldName = 'ValorRecebido'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".ValorRecebido'
    end
    object sqlParadoxVlr_Inadimp: TFloatField
      FieldName = 'Vlr_Inadimp'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".Vlr_Inadimp'
    end
    object sqlParadoxPerc_Inadimp: TFloatField
      FieldName = 'Perc_Inadimp'
      Origin = 'UNITGESTAO_TEMP."IndiceInadimplenciaAnual.DB".Perc_Inadimp'
    end
  end
end
