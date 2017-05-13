inherited FormCadastroCep: TFormCadastroCep
  Align = alClient
  Caption = 'Cadastro de CEP'#180's'
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CEPA8CEP'
                    Title.Caption = 'CEP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CEPA4TIPOLOGRADOURO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CEPA60LOGRADOURO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CEPA60CIDADE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CEPA60BAIRRO1'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CEPA60BAIRRO2'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CEPA2ESTADO'
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
              object Label4: TLabel
                Left = 4
                Top = 4
                Width = 44
                Height = 13
                Caption = 'Bairro 1'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 4
                Top = 44
                Width = 44
                Height = 13
                Caption = 'Bairro 2'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 4
                Top = 83
                Width = 38
                Height = 13
                Caption = 'Cidade'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 4
                Top = 123
                Width = 38
                Height = 13
                Caption = 'Estado'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 532
                Top = 83
                Width = 117
                Height = 13
                Caption = 'C'#243'digo Munic'#237'pio NFe'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit4: TDBEdit
                Left = 1
                Top = 18
                Width = 644
                Height = 21
                DataField = 'CEPA60BAIRRO1'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 1
                Top = 58
                Width = 644
                Height = 21
                DataField = 'CEPA60BAIRRO2'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 1
                Top = 97
                Width = 524
                Height = 21
                DataField = 'CEPA60CIDADE'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit7: TDBEdit
                Left = 1
                Top = 137
                Width = 40
                Height = 21
                DataField = 'CEPA2ESTADO'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit8: TDBEdit
                Left = 529
                Top = 97
                Width = 116
                Height = 21
                DataField = 'CEPICODMUNICIPIO'
                DataSource = DSTemplate
                TabOrder = 3
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 6
              Top = 4
              Width = 20
              Height = 13
              Caption = 'CEP'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 111
              Top = 4
              Width = 22
              Height = 13
              Caption = 'Rua'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 77
              Top = 4
              Width = 24
              Height = 13
              Caption = 'Tipo'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 18
              Width = 69
              Height = 21
              DataField = 'CEPA8CEP'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 106
              Top = 18
              Width = 543
              Height = 21
              DataField = 'CEPA60LOGRADOURO'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 75
              Top = 18
              Width = 29
              Height = 21
              DataField = 'CEPA4TIPOLOGRADOURO'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From CEP Where (%MFiltro)')
    object SQLTemplateCEPA8CEP: TStringField
      FieldName = 'CEPA8CEP'
      Origin = 'DB.CEP.CEPA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateCEPA60LOGRADOURO: TStringField
      DisplayLabel = 'RUA'
      FieldName = 'CEPA60LOGRADOURO'
      Origin = 'DB.CEP.CEPA60LOGRADOURO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCEPA4TIPOLOGRADOURO: TStringField
      DisplayLabel = 'TIPO'
      FieldName = 'CEPA4TIPOLOGRADOURO'
      Origin = 'DB.CEP.CEPA4TIPOLOGRADOURO'
      FixedChar = True
      Size = 4
    end
    object SQLTemplateCEPA60BAIRRO1: TStringField
      DisplayLabel = 'BAIRRO 1'
      FieldName = 'CEPA60BAIRRO1'
      Origin = 'DB.CEP.CEPA60BAIRRO1'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCEPA60BAIRRO2: TStringField
      DisplayLabel = 'BAIRRO 2'
      FieldName = 'CEPA60BAIRRO2'
      Origin = 'DB.CEP.CEPA60BAIRRO2'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCEPA60CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'CEPA60CIDADE'
      Origin = 'DB.CEP.CEPA60CIDADE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCEPA2ESTADO: TStringField
      DisplayLabel = 'ESTADO'
      FieldName = 'CEPA2ESTADO'
      Origin = 'DB.CEP.CEPA2ESTADO'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCEPICODMUNICIPIO: TIntegerField
      FieldName = 'CEPICODMUNICIPIO'
      Origin = 'DB.CEP.CEPICODMUNICIPIO'
    end
  end
end
