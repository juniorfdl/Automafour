inherited FormCadastroDecreto: TFormCadastroDecreto
  Left = 23
  Top = 46
  Caption = 'Cadastro de Decretos'
  ClientHeight = 486
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 752
    Height = 486
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
      Height = 412
      inherited PanelBarra: TPanel
        Height = 412
      end
      inherited PanelFundoDados: TPanel
        Width = 620
        Height = 412
        inherited Panel5: TPanel
          Width = 620
          Height = 412
          inherited PagePrincipal: TPageControl
            Top = 81
            Width = 620
            Height = 331
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 612
                Height = 258
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DECRICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DECRA100DESCR'
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
              inherited MemoDetalhes: TMemo
                Left = 2
                Top = 199
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label2: TLabel
                Left = 4
                Top = 3
                Width = 55
                Height = 13
                Caption = 'Descri'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBMemo1: TDBMemo
                Left = 4
                Top = 18
                Width = 597
                Height = 89
                DataField = 'DECRA100DESCR'
                DataSource = DSTemplate
                TabOrder = 0
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 40
            Width = 620
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 620
            Height = 40
            object Label1: TLabel
              Left = 11
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
            object DBEdit1: TDBEdit
              Left = 7
              Top = 17
              Width = 144
              Height = 21
              DataField = 'DECRICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object Decretos1: TMenuItem
      Caption = 'Decretos'
      OnClick = Decretos1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Decreto Where (%MFiltro)')
    object SQLTemplateDECRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DECRICOD'
      Origin = 'DB.DECRETO.DECRICOD'
      Visible = False
    end
    object SQLTemplateDECRA100DESCR: TStringField
      DisplayLabel = 'Decreto'
      FieldName = 'DECRA100DESCR'
      Origin = 'DB.DECRETO.DECRA100DESCR'
      FixedChar = True
      Size = 100
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.DECRETO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.DECRETO.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Decreto'
      'set'
      '  DECRICOD = :DECRICOD,'
      '  DECRA60DESCR = :DECRA60DESCR,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  DECRICOD = :OLD_DECRICOD')
    InsertSQL.Strings = (
      'insert into Decreto'
      '  (DECRICOD, DECRA60DESCR, PENDENTE, REGISTRO)'
      'values'
      '  (:DECRICOD, :DECRA60DESCR, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from Decreto'
      'where'
      '  DECRICOD = :OLD_DECRICOD')
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = Pipe
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 9
    DeviceType = 'Printer'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 64
    Top = 208
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 5040323
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'ppLabel1'
        Caption = 'Listagem de Decretos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 1792026
        mmLeft = 3360215
        mmTop = 840054
        mmWidth = 14191220
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'ppLabel2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1108871
        mmLeft = 3360215
        mmTop = 3570295
        mmWidth = 3214694
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'ppLabel3'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1108871
        mmLeft = 6930510
        mmTop = 3570295
        mmWidth = 4435484
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'ppLine1'
        Pen.Style = psDashDotDot
        Weight = 0.750000000000000000
        mmHeight = 1119983
        mmLeft = 3430330
        mmTop = 4760393
        mmWidth = 45153088
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 1119983
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'ppDBText1'
        DataPipeline = Pipe
        DisplayFormat = '###000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 1050133
        mmLeft = 3360215
        mmTop = 70115
        mmWidth = 3010171
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'ppDBText2'
        AutoSize = True
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4022
        mmLeft = 6930510
        mmTop = 70115
        mmWidth = 17230
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3500180
      mmPrintPosition = 0
    end
  end
  object Pipe: TppBDEPipeline
    DataSource = DSTemplate
    UserName = 'Pipe'
    Left = 34
    Top = 208
    object PipeppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'DECRICOD'
      FieldName = 'DECRICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipeppField2: TppField
      FieldAlias = 'DECRA100DESCR'
      FieldName = 'DECRA100DESCR'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object PipeppField3: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object PipeppField4: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
  end
end
