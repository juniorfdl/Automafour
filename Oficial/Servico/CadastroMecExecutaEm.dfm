inherited FormCadastroMecExecutaEm: TFormCadastroMecExecutaEm
  Caption = 'Servi'#231'os Executados Em...'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
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
              object Label1: TLabel
                Left = 24
                Top = 16
                Width = 38
                Height = 13
                Caption = 'C'#243'digo'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 28
                Top = 72
                Width = 145
                Height = 13
                Caption = 'Servi'#231'os Executados Em...'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 27
                Top = 118
                Width = 186
                Height = 13
                Caption = 'Tipo Servi'#231'o ( Exclusivo para Gr'#225'ficas )'
                Color = 12572888
                ParentColor = False
              end
              object DBEdit1: TDBEdit
                Left = 24
                Top = 32
                Width = 134
                Height = 21
                Color = 12572888
                DataField = 'ORDEXEID'
                DataSource = DSTemplate
                Enabled = False
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 28
                Top = 88
                Width = 329
                Height = 21
                DataField = 'ORDA25EXECUTAEM'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object ComboTipoImpr: TRxDBComboBox
                Left = 27
                Top = 132
                Width = 198
                Height = 21
                Style = csDropDownList
                DataField = 'TIPOSERVICO'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  'Cadernos Personalizados'
                  'Impress'#227'o Plana'
                  'Formul'#225'rios')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 2
                Values.Strings = (
                  'C'
                  'I'
                  'F')
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From ORD_EXECUTAREM Where (%MFiltro)')
    object SQLTemplateORDEXEID: TIntegerField
      Tag = 1
      FieldName = 'ORDEXEID'
      Origin = 'DB.ORD_EXECUTAREM.ORDEXEID'
    end
    object SQLTemplateORDA25EXECUTAEM: TStringField
      DisplayLabel = 'Executar Em'
      FieldName = 'ORDA25EXECUTAEM'
      Origin = 'DB.ORD_EXECUTAREM.ORDA25EXECUTAEM'
      Size = 25
    end
    object SQLTemplateTIPOSERVICO: TStringField
      FieldName = 'TIPOSERVICO'
      Origin = 'DB.ORD_EXECUTAREM.TIPOSERVICO'
      FixedChar = True
      Size = 1
    end
  end
end
