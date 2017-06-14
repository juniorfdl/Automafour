inherited FormCadastroRemessaBancosContasReceber: TFormCadastroRemessaBancosContasReceber
  Left = 234
  Top = 131
  Caption = 'T'#237'tulos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 87
            Height = 362
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 289
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CTRCA13ID'
                    Width = 104
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NotaFiscalLookUp'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ClienteLookUp'
                    Width = 201
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ValorLookUp'
                    Width = 87
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DataEmissaoLookUp'
                    Width = 75
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DataVenctoLookUp'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RBCRA60STATUS'
                    Width = 248
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RBCRDSTATUS'
                    Width = 82
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
                Top = 229
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 46
            object Label1: TLabel
              Left = 6
              Top = 7
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
              Left = 112
              Top = 7
              Width = 62
              Height = 13
              Caption = 'Dt.Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 20
              Width = 101
              Height = 21
              DataField = 'RMBCICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBDateEdit
              Left = 110
              Top = 20
              Width = 108
              Height = 21
              DataField = 'RMBCDEMIS'
              DataSource = DSMasterTemplate
              NumGlyphs = 2
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 46
            object Label3: TLabel
              Left = 6
              Top = 7
              Width = 99
              Height = 13
              Caption = 'Conta Receber ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnContasReceber: TSpeedButton
              Left = 106
              Top = 21
              Width = 21
              Height = 21
              Hint = 'Acessa Tipo Cliente'
              Flat = True
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                0400000000007000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                DD00DDDDDDDDDDDDDD00}
              OnClick = BtnContasReceberClick
            end
            object Label4: TLabel
              Left = 134
              Top = 7
              Width = 39
              Height = 13
              Caption = 'Cliente'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 322
              Top = 7
              Width = 29
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 481
              Top = 7
              Width = 67
              Height = 13
              Caption = 'Vencimento'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 392
              Top = 7
              Width = 46
              Height = 13
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 570
              Top = 7
              Width = 60
              Height = 13
              Caption = 'Nota Fiscal'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 4
              Top = 20
              Width = 101
              Height = 21
              DataField = 'CTRCA13ID'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEdit3KeyDown
            end
            object DBEdit4: TDBEdit
              Left = 128
              Top = 20
              Width = 185
              Height = 21
              DataField = 'ClienteLookUp'
              DataSource = DSTemplate
              TabOrder = 1
              OnKeyDown = DBEdit3KeyDown
            end
            object DBEdit5: TDBEdit
              Left = 317
              Top = 20
              Width = 68
              Height = 21
              DataField = 'ValorLookUp'
              DataSource = DSTemplate
              TabOrder = 2
              OnKeyDown = DBEdit3KeyDown
            end
            object DBEdit6: TDBEdit
              Left = 389
              Top = 20
              Width = 86
              Height = 21
              DataField = 'DataEmissaoLookUp'
              DataSource = DSTemplate
              TabOrder = 3
              OnKeyDown = DBEdit3KeyDown
            end
            object DBEdit7: TDBEdit
              Left = 479
              Top = 20
              Width = 86
              Height = 21
              DataField = 'DataVenctoLookUp'
              DataSource = DSTemplate
              TabOrder = 4
              OnKeyDown = DBEdit3KeyDown
            end
            object DBEdit8: TDBEdit
              Left = 568
              Top = 20
              Width = 86
              Height = 21
              DataField = 'NotaFiscalLookUp'
              DataSource = DSTemplate
              TabOrder = 5
              OnKeyDown = DBEdit3KeyDown
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object IncluirTtulos1: TMenuItem
      Caption = '&Incluir T'#237'tulos'
      OnClick = IncluirTtulos1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From REMESSABANCOCONTASRECEBER Where '
      'RMBCA13ID=:RMBCA13ID and (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'RMBCA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateRMBCICOD: TIntegerField
      FieldName = 'RMBCICOD'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RMBCICOD'
    end
    object SQLTemplateRMBCA13ID: TStringField
      FieldName = 'RMBCA13ID'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RMBCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCA13ID: TStringField
      DisplayLabel = 'Conta Receber ID'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateClienteLookUp: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'ClienteLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateValorLookUp: TFloatField
      DisplayLabel = 'Valor'
      FieldKind = fkCalculated
      FieldName = 'ValorLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateDataVenctoLookUp: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldKind = fkCalculated
      FieldName = 'DataVenctoLookUp'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      Calculated = True
    end
    object SQLTemplateDataEmissaoLookUp: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkCalculated
      FieldName = 'DataEmissaoLookUp'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      Calculated = True
    end
    object SQLTemplateNotaFiscalLookUp: TStringField
      DisplayLabel = 'Nota Fiscal'
      FieldKind = fkCalculated
      FieldName = 'NotaFiscalLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateRBCRA60STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'RBCRA60STATUS'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RBCRA60STATUS'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateRBCRDSTATUS: TDateTimeField
      DisplayLabel = 'Data Status'
      FieldName = 'RBCRDSTATUS'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RBCRDSTATUS'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
end
