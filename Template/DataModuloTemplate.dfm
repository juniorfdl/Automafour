object DMTemplate: TDMTemplate
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 742
  Top = 128
  Height = 324
  Width = 602
  object DB: TDatabase
    DatabaseName = 'DB'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 53
    Top = 9
  end
  object SQLTemplate: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 53
    Top = 60
  end
  object Campos: TTableItems
    DatabaseName = 'DB'
    Left = 53
    Top = 113
  end
  object UpdateSQLExclusao: TUpdateSQL
    ModifySQL.Strings = (
      'update Exclusao'
      'set'
      '  EXCLA13ID = :EXCLA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  EXCLICOD = :EXCLICOD,'
      '  EXCLA60TABELA = :EXCLA60TABELA,'
      '  EXCLA255CHAVE = :EXCLA255CHAVE,'
      '  EXCLA255VALOR = :EXCLA255VALOR,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  USUAA60LOGIN = :USUAA60LOGIN'
      'where'
      '  EXCLA13ID = :OLD_EXCLA13ID and'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  EXCLICOD = :OLD_EXCLICOD and'
      '  EXCLA60TABELA = :OLD_EXCLA60TABELA and'
      '  EXCLA255CHAVE = :OLD_EXCLA255CHAVE and'
      '  EXCLA255VALOR = :OLD_EXCLA255VALOR and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO and'
      '  USUAA60LOGIN = :OLD_USUAA60LOGIN')
    InsertSQL.Strings = (
      'insert into Exclusao'
      
        '  (EXCLA13ID, EMPRICOD, EXCLICOD, EXCLA60TABELA, EXCLA255CHAVE, ' +
        'EXCLA255VALOR, '
      '   PENDENTE, REGISTRO, USUAA60LOGIN)'
      'values'
      
        '  (:EXCLA13ID, :EMPRICOD, :EXCLICOD, :EXCLA60TABELA, :EXCLA255CH' +
        'AVE, :EXCLA255VALOR, '
      '   :PENDENTE, :REGISTRO, :USUAA60LOGIN)')
    DeleteSQL.Strings = (
      'delete from Exclusao'
      'where'
      '  EXCLA13ID = :OLD_EXCLA13ID and'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  EXCLICOD = :OLD_EXCLICOD and'
      '  EXCLA60TABELA = :OLD_EXCLA60TABELA and'
      '  EXCLA255CHAVE = :OLD_EXCLA255CHAVE and'
      '  EXCLA255VALOR = :OLD_EXCLA255VALOR and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO and'
      '  USUAA60LOGIN = :OLD_USUAA60LOGIN')
    Left = 204
    Top = 168
  end
  object SQLExclusao: TRxQuery
    Tag = 2
    CachedUpdates = True
    BeforeInsert = SQLExclusaoBeforeInsert
    BeforePost = SQLExclusaoBeforePost
    OnNewRecord = SQLExclusaoNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Exclusao'
      'Where (%MFiltro)')
    UpdateObject = UpdateSQLExclusao
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 53
    Top = 167
    object SQLExclusaoEXCLA13ID: TStringField
      Tag = 2
      FieldName = 'EXCLA13ID'
      Origin = 'DB.EXCLUSAO.EXCLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLExclusaoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EXCLUSAO.EMPRICOD'
    end
    object SQLExclusaoEXCLICOD: TIntegerField
      Tag = 1
      FieldName = 'EXCLICOD'
      Origin = 'DB.EXCLUSAO.EXCLICOD'
    end
    object SQLExclusaoEXCLA60TABELA: TStringField
      FieldName = 'EXCLA60TABELA'
      Origin = 'DB.EXCLUSAO.EXCLA60TABELA'
      FixedChar = True
      Size = 60
    end
    object SQLExclusaoEXCLA255CHAVE: TStringField
      FieldName = 'EXCLA255CHAVE'
      Origin = 'DB.EXCLUSAO.EXCLA255CHAVE'
      FixedChar = True
      Size = 255
    end
    object SQLExclusaoEXCLA255VALOR: TStringField
      FieldName = 'EXCLA255VALOR'
      Origin = 'DB.EXCLUSAO.EXCLA255VALOR'
      FixedChar = True
      Size = 255
    end
    object SQLExclusaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EXCLUSAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLExclusaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EXCLUSAO.REGISTRO'
    end
    object SQLExclusaoUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.EXCLUSAO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object DSExclusao: TDataSource
    DataSet = SQLExclusao
    Left = 120
    Top = 167
  end
  object DSListagem: TDataSource
    Left = 112
    Top = 9
  end
  object DSEmail: TDataSource
    Left = 168
    Top = 9
  end
  object SQLProdutoSaldoDia: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PRODUTOSALDODIA where (%MFiltro)'
      'Order By '
      'PSDIDDATA Desc')
    UpdateObject = UpdateSQLProdutoSaldo
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 53
    Top = 214
    object SQLProdutoSaldoDiaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDODIA.EMPRICOD'
    end
    object SQLProdutoSaldoDiaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDODIA.PRODICOD'
    end
    object SQLProdutoSaldoDiaPSDIDDATA: TDateTimeField
      FieldName = 'PSDIDDATA'
      Origin = 'DB.PRODUTOSALDODIA.PSDIDDATA'
    end
    object SQLProdutoSaldoDiaPSDIN3QTDE: TFloatField
      FieldName = 'PSDIN3QTDE'
      Origin = 'DB.PRODUTOSALDODIA.PSDIN3QTDE'
    end
    object SQLProdutoSaldoDiaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDODIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSaldoDiaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDODIA.REGISTRO'
    end
  end
  object SQLProdutoSaldoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PRODUTOSALDO')
    Macros = <>
    Left = 285
    Top = 214
    object SQLProdutoSaldoAuxEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoAuxPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLProdutoSaldoAuxPSLDN3QTDE: TFloatField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
    end
    object SQLProdutoSaldoAuxPSLDN3QTDMIN: TFloatField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
    end
    object SQLProdutoSaldoAuxPSLDN3QTDMAX: TFloatField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
    end
    object SQLProdutoSaldoAuxPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSaldoAuxREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDO.REGISTRO'
    end
  end
  object UpdateSQLProdutoSaldo: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTOSALDODIA'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  PRODICOD = :PRODICOD,'
      '  PSDIDDATA = :PSDIDDATA,'
      '  PSDIN3QTDE = :PSDIN3QTDE,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD and'
      '  PSDIDDATA = :OLD_PSDIDDATA')
    InsertSQL.Strings = (
      'insert into PRODUTOSALDODIA'
      
        '  (EMPRICOD, PRODICOD, PSDIDDATA, PSDIN3QTDE, PENDENTE, REGISTRO' +
        ')'
      'values'
      '  (:EMPRICOD, :PRODICOD, :PSDIDDATA, :PSDIN3QTDE, :PENDENTE, '
      ':REGISTRO)')
    DeleteSQL.Strings = (
      'delete from PRODUTOSALDODIA'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD and'
      '  PSDIDDATA = :OLD_PSDIDDATA')
    Left = 169
    Top = 214
  end
  object SQLAcesso: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIOPERMISSOES '
      'where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 136
    Top = 62
  end
end
