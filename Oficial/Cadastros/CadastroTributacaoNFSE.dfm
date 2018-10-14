inherited FormCadastroTributacaoNFSE: TFormCadastroTributacaoNFSE
  Left = 271
  Top = 73
  Caption = 'Cadastro Tributa'#231#227'o NFSe'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ID'
                    Title.Caption = 'C'#243'digo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CODIGO_TRIBUTACAO'
                    Title.Caption = 'C'#243'digo Tributa'#231#227'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SUBITEM'
                    Title.Caption = 'SubItem'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALIQUOTA'
                    Title.Caption = 'Al'#237'quota'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO_SERVICO'
                    Title.Caption = 'Descri'#231#227'o Servi'#231'o'
                    Width = 390
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
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label8: TLabel
                Left = 12
                Top = 9
                Width = 24
                Height = 13
                Caption = 'C'#243'd.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 12
                Top = 52
                Width = 117
                Height = 13
                Caption = 'Descri'#231#227'o do Servi'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 12
                Top = 97
                Width = 102
                Height = 13
                Caption = 'C'#243'digo Tributa'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 12
                Top = 145
                Width = 47
                Height = 13
                Caption = 'Subitem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 12
                Top = 193
                Width = 50
                Height = 13
                Caption = 'Al'#237'quota '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit8: TDBEdit
                Left = 12
                Top = 24
                Width = 59
                Height = 21
                TabStop = False
                DataField = 'ID'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit3: TDBEdit
                Left = 12
                Top = 67
                Width = 485
                Height = 21
                DataField = 'DESCRICAO_SERVICO'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit7: TDBEdit
                Left = 12
                Top = 112
                Width = 173
                Height = 21
                DataField = 'CODIGO_TRIBUTACAO'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 12
                Top = 160
                Width = 125
                Height = 21
                DataField = 'SUBITEM'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit9: TDBEdit
                Left = 12
                Top = 206
                Width = 77
                Height = 21
                DataField = 'ALIQUOTA'
                DataSource = DSTemplate
                TabOrder = 4
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label2: TLabel
              Left = 6
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 59
              Top = 4
              Width = 117
              Height = 13
              Caption = 'Descri'#231#227'o do Servi'#231'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 2
              Top = 17
              Width = 47
              Height = 21
              Color = 16249066
              Ctl3D = True
              DataField = 'ID'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 53
              Top = 17
              Width = 254
              Height = 21
              DataField = 'DESCRICAO_SERVICO'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From TRIBUTACAO_NFSE where (%MFiltro)')
    object SQLTemplateID: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Origin = 'DB.TRIBUTACAO_NFSE.ID'
    end
    object SQLTemplateCODIGO_TRIBUTACAO: TStringField
      DisplayLabel = 'Tributacao'
      FieldName = 'CODIGO_TRIBUTACAO'
      Origin = 'DB.TRIBUTACAO_NFSE.CODIGO_TRIBUTACAO'
      Size = 15
    end
    object SQLTemplateSUBITEM: TStringField
      FieldName = 'SUBITEM'
      Origin = 'DB.TRIBUTACAO_NFSE.SUBITEM'
      Size = 10
    end
    object SQLTemplateALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = 'DB.TRIBUTACAO_NFSE.ALIQUOTA'
      DisplayFormat = '0.00'
    end
    object SQLTemplateDESCRICAO_SERVICO: TStringField
      FieldName = 'DESCRICAO_SERVICO'
      Origin = 'DB.TRIBUTACAO_NFSE.DESCRICAO_SERVICO'
      Size = 100
    end
  end
end
