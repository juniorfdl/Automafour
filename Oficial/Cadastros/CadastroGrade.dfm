inherited FormCadastroGrade: TFormCadastroGrade
  Left = 285
  Top = 106
  Caption = 'Cadastro de Grade'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 Tamanhos'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'GRADICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GRADA30DESCR'
                    Width = 550
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Lines.Strings = (
                  'GRADETAMANHO')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object DBGridTamanho: TDBGrid
                Left = 0
                Top = 29
                Width = 749
                Height = 312
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLGradeTamanho
                FixedColor = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Color = clSilver
                    Expanded = False
                    FieldName = 'GRTMICOD'
                    ReadOnly = True
                    Title.Caption = 'C'#243'd.'
                    Width = 37
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GRTMA5DESCR'
                    Width = 98
                    Visible = True
                  end>
              end
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 749
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                Color = 15461355
                TabOrder = 1
                object Label3: TLabel
                  Left = 2
                  Top = 2
                  Width = 84
                  Height = 19
                  Caption = 'Tamanhos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBNavigator: TDBNavigator
                  Left = 120
                  Top = 2
                  Width = 234
                  Height = 25
                  DataSource = DSSQLGradeTamanho
                  VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
                  Flat = True
                  Hints.Strings = (
                    'Primeiro Registro'
                    'Registro Anterior'
                    'Pr'#243'ximo Registro'
                    #218'ltimo Registro'
                    'Novo Registro'
                    'Deletar Registro'
                    'Editar Registro'
                    'Salvar'
                    'Cancelar')
                  TabOrder = 0
                end
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 8
              Top = 3
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 76
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 64
              Height = 21
              DataField = 'GRADICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 74
              Top = 16
              Width = 475
              Height = 21
              DataField = 'GRADA30DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * from GRADE where (%MFiltro)')
    object SQLTemplateGRADICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADE.GRADICOD'
      Visible = False
    end
    object SQLTemplateGRADA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRADA30DESCR'
      Origin = 'DB.GRADE.GRADA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.GRADE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.GRADE.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update GRADE'
      'set'
      '  GRADICOD = :GRADICOD,'
      '  GRADA30DESCR = :GRADA30DESCR,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  GRADICOD = :OLD_GRADICOD')
    InsertSQL.Strings = (
      'insert into GRADE'
      '  (GRADICOD, GRADA30DESCR, PENDENTE, REGISTRO)'
      'values'
      '  (:GRADICOD, :GRADA30DESCR, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from GRADE'
      'where'
      '  GRADICOD = :OLD_GRADICOD')
  end
  object SQLGradeTamanho: TRxQuery
    Tag = 1
    BeforePost = SQLGradeTamanhoBeforePost
    AfterPost = SQLGradeTamanhoAfterPost
    BeforeDelete = SQLGradeTamanhoBeforeDelete
    OnNewRecord = SQLGradeTamanhoNewRecord
    OnPostError = SQLGradeTamanhoPostError
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'select * from GRADETAMANHO where GRADICOD = :gradicod'
      'order by'
      'GRTMICOD')
    Macros = <>
    Left = 344
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLGradeTamanhoGRADICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Grade'
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLGradeTamanhoGRTMICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Tamanho'
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLGradeTamanhoGRTMA5DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLGradeTamanhoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.GRADETAMANHO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLGradeTamanhoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.GRADETAMANHO.REGISTRO'
    end
  end
  object DSSQLGradeTamanho: TDataSource
    DataSet = SQLGradeTamanho
    Left = 372
    Top = 304
  end
end
