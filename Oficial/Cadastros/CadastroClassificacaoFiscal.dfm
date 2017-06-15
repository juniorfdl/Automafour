inherited FormCadastroClassificacaoFiscal: TFormCadastroClassificacaoFiscal
  Left = 27
  Top = 8
  Caption = 'Cadastro de Classifica'#231#227'o Fiscal'
  ClientHeight = 537
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 752
    Height = 537
    inherited PanelCabecalho: TPanel
      Width = 750
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 750
        inherited Panel1: TPanel
          Width = 748
          inherited PanelNavigator: TPanel
            Width = 748
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 748
            end
          end
          inherited PanelLeft: TPanel
            Left = 291
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 750
      Height = 463
      inherited PanelBarra: TPanel
        Height = 463
      end
      inherited PanelFundoDados: TPanel
        Width = 620
        Height = 463
        inherited Panel5: TPanel
          Width = 620
          Height = 463
          inherited PagePrincipal: TPageControl
            Width = 620
            Height = 381
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 612
                Height = 308
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CLFSICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLFSA30DESCR'
                    Width = 321
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 612
                inherited PanelBetween: TPanel
                  Width = 218
                  inherited AdvPanel1: TAdvPanel
                    Width = 218
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 218
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 218
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 620
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 620
            object Label1: TLabel
              Left = 8
              Top = 4
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
              Left = 78
              Top = 4
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
              Top = 17
              Width = 64
              Height = 21
              DataField = 'CLFSICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 75
              Top = 17
              Width = 184
              Height = 21
              DataField = 'CLFSA30DESCR'
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
      'Select * From CLASSIFICACAOFISCAL Where (%MFiltro)')
    object SQLTemplateCLFSICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLFSICOD'
      Origin = 'DB.CLASSIFICACAOFISCAL.CLFSICOD'
      Visible = False
    end
    object SQLTemplateCLFSA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CLFSA30DESCR'
      Origin = 'DB.CLASSIFICACAOFISCAL.CLFSA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLASSIFICACAOFISCAL.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLASSIFICACAOFISCAL.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update CLASSIFICACAOFISCAL'
      'set'
      '  CLFSICOD = :CLFSICOD,'
      '  CLFSA30DESCR = :CLFSA30DESCR,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  CLFSICOD = :OLD_CLFSICOD')
    InsertSQL.Strings = (
      'insert into CLASSIFICACAOFISCAL'
      '  (CLFSICOD, CLFSA30DESCR, PENDENTE, REGISTRO)'
      'values'
      '  (:CLFSICOD, :CLFSA30DESCR, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from CLASSIFICACAOFISCAL'
      'where'
      '  CLFSICOD = :OLD_CLFSICOD')
  end
end
