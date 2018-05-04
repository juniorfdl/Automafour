inherited FormCadastroAnimais: TFormCadastroAnimais
  Left = 313
  Top = 88
  Caption = 'Animais'
  ClientHeight = 535
  ClientWidth = 865
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 865
    Height = 535
    inherited PanelCabecalho: TPanel
      Width = 863
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 863
        inherited Panel1: TPanel
          Width = 861
          inherited PanelNavigator: TPanel
            Width = 861
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 861
            end
          end
          inherited PanelLeft: TPanel
            Left = 404
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 863
      Height = 461
      inherited PanelBarra: TPanel
        Width = 181
        Height = 461
        inherited Button1: TRxSpeedButton
          Width = 174
        end
        inherited Button2: TRxSpeedButton
          Width = 174
        end
        inherited Button3: TRxSpeedButton
          Width = 174
          Caption = '&3  Vacina'#231#227'o'
          Visible = True
          OnClick = Button3Click
        end
        object RxSpeedButton1: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 86
          Width = 174
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4  Agenda'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          OnClick = RxSpeedButton1Click
        end
        object ImageProduto: TImage
          Left = 2
          Top = 148
          Width = 176
          Height = 176
          Center = True
          Proportional = True
          Stretch = True
          Transparent = True
        end
        object Label8: TLabel
          Left = 1
          Top = 133
          Width = 85
          Height = 13
          Caption = 'Foto / Imagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnCapturaFoto: TSpeedButton
          Tag = 1
          Left = 6
          Top = 331
          Width = 84
          Height = 30
          Cursor = crHandPoint
          Hint = 'Capturar Imagem'
          Caption = 'Capturar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Spacing = 1
          OnClick = BtnCapturaFotoClick
        end
        object BtnRemoveFoto: TSpeedButton
          Tag = 1
          Left = 93
          Top = 331
          Width = 84
          Height = 30
          Cursor = crHandPoint
          Hint = 'Remover Foto'
          Caption = 'Remover'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Spacing = 1
          OnClick = BtnRemoveFotoClick
        end
        object BtSalvarImagem: TSpeedButton
          Tag = 1
          Left = 7
          Top = 361
          Width = 170
          Height = 26
          Cursor = crHandPoint
          Hint = 'Capturar Imagem'
          Caption = 'Salvar em Disco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Spacing = 1
          OnClick = BtSalvarImagemClick
        end
      end
      inherited PanelFundoDados: TPanel
        Left = 181
        Width = 682
        Height = 461
        inherited Panel5: TPanel
          Width = 682
          Height = 461
          inherited PagePrincipal: TPageControl
            Top = 53
            Width = 682
            Height = 408
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 674
                Height = 335
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ANIA40NOME'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ANICSEXO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Especie'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Raca'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ANIDNASC'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 674
                inherited PanelBetween: TPanel
                  Width = 280
                  inherited AdvPanel1: TAdvPanel
                    Width = 280
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 280
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 280
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
              object Label2: TLabel
                Left = 15
                Top = 134
                Width = 42
                Height = 13
                Caption = 'Esp'#233'cie'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 15
                Top = 173
                Width = 28
                Height = 13
                Caption = 'Ra'#231'a'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 168
                Top = 214
                Width = 28
                Height = 13
                Caption = 'Sexo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 15
                Top = 214
                Width = 96
                Height = 13
                Caption = 'Data Nascimento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 16
                Top = 55
                Width = 49
                Height = 13
                Caption = 'Pelagem'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 15
                Top = 94
                Width = 178
                Height = 13
                Caption = 'Identifica'#231#227'o / Particularidades'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 16
                Top = 16
                Width = 91
                Height = 13
                Caption = 'Nome do Animal'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ButtonCep: TSpeedButton
                Left = 516
                Top = 187
                Width = 21
                Height = 21
                Hint = 'Acessa Cep'#39's'
                Flat = True
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                  0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                  48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                  0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                  FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                  7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                  B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                  00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                  EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                  FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                  B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0000}
                ParentShowHint = False
                ShowHint = True
                OnClick = ButtonCepClick
              end
              object SpeedButton1: TSpeedButton
                Left = 516
                Top = 149
                Width = 21
                Height = 21
                Hint = 'Acessa Cep'#39's'
                Flat = True
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                  0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                  48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                  0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                  FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                  7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                  B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                  00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                  EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                  FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                  B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0000}
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton1Click
              end
              object DBEdit6: TDBEdit
                Left = 16
                Top = 71
                Width = 524
                Height = 21
                DataField = 'ANIA40PELAGEM'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit7: TDBEdit
                Left = 15
                Top = 110
                Width = 524
                Height = 21
                DataField = 'ANIA40IDENTIF'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 32
                Width = 524
                Height = 21
                DataField = 'ANIA40NOME'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object ComboUnidade: TRxDBLookupCombo
                Left = 15
                Top = 149
                Width = 500
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'ANIIESPECIE'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'ESPEICOD'
                LookupDisplay = 'ESPEA50TIPO'
                LookupSource = DSSQLEspecie
                TabOrder = 3
              end
              object RxDBLookupCombo1: TRxDBLookupCombo
                Left = 15
                Top = 188
                Width = 500
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'ANIIRACA'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'RACAICOD'
                LookupDisplay = 'RACAA50RACA'
                LookupSource = DSSQLRaca
                TabOrder = 4
              end
              object DBDateEdit8: TDBDateEdit
                Left = 15
                Top = 231
                Width = 146
                Height = 21
                DataField = 'ANIDNASC'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 5
              end
              object ComboOrigem: TRxDBComboBox
                Left = 168
                Top = 230
                Width = 207
                Height = 21
                Style = csDropDownList
                DataField = 'ANICSEXO'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  'F'#234'mea'
                  'Macho')
                ParentFont = False
                TabOrder = 6
                Values.Strings = (
                  'F'
                  'M')
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 33
            Width = 682
            Height = 20
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 682
            Height = 33
          end
        end
      end
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object CarteirinhadeVacinao1: TMenuItem
      Caption = 'Carteirinha de Vacina'#231#227'o'
      Visible = False
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      
        'Select * From ANIMAIS Where CLIEA13ID = :CLIEA13ID AND  (%MFiltr' +
        'o)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateANIICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ANIICOD'
      Origin = 'DB.ANIMAIS.ANIICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.ANIMAIS.CLIEA13ID'
      Size = 13
    end
    object SQLTemplateANIA40NOME: TStringField
      DisplayLabel = 'Nome do Animal'
      FieldName = 'ANIA40NOME'
      Origin = 'DB.ANIMAIS.ANIA40NOME'
      Size = 40
    end
    object SQLTemplateANIIESPECIE: TIntegerField
      DisplayLabel = 'C'#243'd.Esp'#233'cie'
      FieldName = 'ANIIESPECIE'
      Origin = 'DB.ANIMAIS.ANIIESPECIE'
    end
    object SQLTemplateANIIRACA: TIntegerField
      DisplayLabel = 'C'#243'd. Ra'#231'a'
      FieldName = 'ANIIRACA'
      Origin = 'DB.ANIMAIS.ANIIRACA'
    end
    object SQLTemplateANICSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'ANICSEXO'
      Origin = 'DB.ANIMAIS.ANICSEXO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateANIDNASC: TDateTimeField
      DisplayLabel = 'Dt Nasc'
      FieldName = 'ANIDNASC'
      Origin = 'DB.ANIMAIS.ANIDNASC'
    end
    object SQLTemplateANIA40PELAGEM: TStringField
      DisplayLabel = 'Pelagem'
      FieldName = 'ANIA40PELAGEM'
      Origin = 'DB.ANIMAIS.ANIA40PELAGEM'
      Size = 40
    end
    object SQLTemplateANIA40IDENTIF: TStringField
      DisplayLabel = 'Identifica'#231#227'o / Particularidades'
      FieldName = 'ANIA40IDENTIF'
      Origin = 'DB.ANIMAIS.ANIA40IDENTIF'
      Size = 40
    end
    object SQLTemplateANIBIMAGEM: TBlobField
      FieldName = 'ANIBIMAGEM'
      Origin = 'DB.ANIMAIS.ANIBIMAGEM'
      Size = 1
    end
    object SQLTemplateEspecie: TStringField
      FieldKind = fkLookup
      FieldName = 'Especie'
      LookupDataSet = SQLEspecie
      LookupKeyFields = 'ESPEICOD'
      LookupResultField = 'ESPEA50TIPO'
      KeyFields = 'ANIIESPECIE'
      Size = 50
      Lookup = True
    end
    object SQLTemplateRaca: TStringField
      FieldKind = fkLookup
      FieldName = 'Raca'
      LookupDataSet = SQLRaca
      LookupKeyFields = 'RACAICOD'
      LookupResultField = 'RACAA50RACA'
      KeyFields = 'ANIIRACA'
      Size = 50
      Lookup = True
    end
  end
  object SQLRaca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT* FROM ANIMAIS_RACA'
      'ORDER BY RACAA50RACA')
    Macros = <>
    Left = 28
    Top = 186
    object SQLRacaRACAICOD: TIntegerField
      FieldName = 'RACAICOD'
      Origin = 'DB.ANIMAIS_RACA.RACAICOD'
    end
    object SQLRacaRACAA50RACA: TStringField
      FieldName = 'RACAA50RACA'
      Origin = 'DB.ANIMAIS_RACA.RACAA50RACA'
      Size = 50
    end
  end
  object DSSQLRaca: TDataSource
    DataSet = SQLRaca
    Left = 60
    Top = 186
  end
  object SQLEspecie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT* FROM ANIMAIS_ESPECIE'
      'ORDER BY ESPEA50TIPO ')
    Macros = <>
    Left = 28
    Top = 222
    object SQLEspecieESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.ANIMAIS_ESPECIE.ESPEICOD'
    end
    object SQLEspecieESPEA50TIPO: TStringField
      FieldName = 'ESPEA50TIPO'
      Origin = 'DB.ANIMAIS_ESPECIE.ESPEA50TIPO'
      Size = 50
    end
  end
  object DSSQLEspecie: TDataSource
    DataSet = SQLEspecie
    Left = 60
    Top = 222
  end
  object PictureDialog: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.jpeg;*.ico;*.' +
      'emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|JPEG Image File (*.' +
      'jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Icons (*.ico)|*.ico|E' +
      'nhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 440
    Top = 2
  end
end
