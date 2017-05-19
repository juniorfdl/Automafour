inherited FormCadastroConvenio: TFormCadastroConvenio
  Caption = 'Cadastro de Conv'#234'nios'
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
              object Label3: TLabel
                Left = 4
                Top = 4
                Width = 69
                Height = 13
                Caption = '% Desconto'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 118
                Top = 4
                Width = 44
                Height = 13
                Caption = '% Taxa'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 232
                Top = 4
                Width = 105
                Height = 13
                Caption = 'Dia de Vencimento'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit4: TDBEdit
                Left = 2
                Top = 17
                Width = 111
                Height = 21
                DataField = 'CONVN2DESC'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 116
                Top = 17
                Width = 111
                Height = 21
                DataField = 'CONVN2TAXA'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 230
                Top = 17
                Width = 134
                Height = 21
                DataField = 'CONVDVENC'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object GroupBox1: TGroupBox
                Left = 2
                Top = 39
                Width = 252
                Height = 56
                Caption = 'Per'#237'odo de Compra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object Label6: TLabel
                  Left = 7
                  Top = 17
                  Width = 64
                  Height = 13
                  Caption = 'Data Inicial'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 130
                  Top = 17
                  Width = 56
                  Height = 13
                  Caption = 'Data Final'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBDateEdit1: TDBDateEdit
                  Left = 4
                  Top = 30
                  Width = 121
                  Height = 21
                  DataField = 'CONVDINICIOCOMPRA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  NumGlyphs = 2
                  ParentFont = False
                  TabOrder = 0
                end
                object DBDateEdit2: TDBDateEdit
                  Left = 127
                  Top = 30
                  Width = 121
                  Height = 21
                  DataField = 'CONVDFIMCOMPRA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  NumGlyphs = 2
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            object DBEdit2: TDBEdit
              Left = 152
              Top = 56
              Width = 784
              Height = 21
              DataField = 'CONVA60DESCR'
              DataSource = DSTemplate
              TabOrder = 0
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
              Left = 122
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit3
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
              Width = 111
              Height = 21
              DataField = 'CONVICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 120
              Top = 16
              Width = 502
              Height = 21
              DataField = 'CONVA60DESCR'
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
      'Select * From Convenio Where (%MFiltro)')
    object SQLTemplateCONVICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CONVICOD'
      Origin = 'DB.CONVENIO.CONVICOD'
      Visible = False
    end
    object SQLTemplateCONVA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CONVA60DESCR'
      Origin = 'DB.CONVENIO.CONVA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCONVN2DESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'CONVN2DESC'
      Origin = 'DB.CONVENIO.CONVN2DESC'
    end
    object SQLTemplateCONVN2TAXA: TFloatField
      DisplayLabel = 'Taxa'
      FieldName = 'CONVN2TAXA'
      Origin = 'DB.CONVENIO.CONVN2TAXA'
    end
    object SQLTemplateCONVDVENC: TIntegerField
      DisplayLabel = 'Vencimento'
      FieldName = 'CONVDVENC'
      Origin = 'DB.CONVENIO.CONVDVENC'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONVENIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONVENIO.REGISTRO'
    end
    object SQLTemplateCONVDFIMCOMPRA: TDateTimeField
      DisplayLabel = 'Data Inicial'
      FieldName = 'CONVDFIMCOMPRA'
      Origin = 'DB.CONVENIO.CONVDFIMCOMPRA'
    end
    object SQLTemplateCONVDINICIOCOMPRA: TDateTimeField
      DisplayLabel = 'Data Final'
      FieldName = 'CONVDINICIOCOMPRA'
      Origin = 'DB.CONVENIO.CONVDINICIOCOMPRA'
    end
  end
end
