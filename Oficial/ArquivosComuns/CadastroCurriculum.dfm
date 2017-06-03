inherited FormCadastroCurriculum: TFormCadastroCurriculum
  Left = 239
  Caption = 'Cadastro de Curriculum Vitae'
  ClientWidth = 882
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 882
    inherited PanelCabecalho: TPanel
      Width = 880
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 880
        inherited Panel1: TPanel
          Width = 878
          inherited PanelNavigator: TPanel
            Width = 878
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 878
            end
          end
          inherited PanelLeft: TPanel
            Left = 421
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 880
      inherited PanelBarra: TPanel
        object GroupBoxFOTO: TGroupBox
          Left = 0
          Top = 304
          Width = 130
          Height = 145
          Align = alBottom
          Caption = ' Foto '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object ImageProduto: TImage
            Left = 2
            Top = 40
            Width = 126
            Height = 99
            Center = True
            Proportional = True
            Stretch = True
            Transparent = True
          end
          object BtnCapturaFoto: TSpeedButton
            Tag = 1
            Left = 4
            Top = 16
            Width = 60
            Height = 19
            Cursor = crHandPoint
            Hint = 'Capturar Imagem'
            AllowAllUp = True
            Caption = 'Capturar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Layout = blGlyphTop
            Margin = 0
            ParentFont = False
            Spacing = 1
            OnClick = BtnCapturaFotoClick
          end
          object BtnRemoveFoto: TSpeedButton
            Tag = 1
            Left = 66
            Top = 16
            Width = 60
            Height = 19
            Cursor = crHandPoint
            Hint = 'Remover Foto'
            AllowAllUp = True
            Caption = 'Remover'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Layout = blGlyphTop
            Margin = 0
            ParentFont = False
            Spacing = 1
            OnClick = BtnRemoveFotoClick
          end
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 750
        inherited Panel5: TPanel
          Width = 750
          inherited PagePrincipal: TPageControl
            Width = 750
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 742
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CUVIA60NOME'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUVIA15FONE1'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUVIA15FONE2'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUVIA11CPF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUVIA10RG'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 742
                inherited PanelBetween: TPanel
                  Width = 348
                  inherited AdvPanel1: TAdvPanel
                    Width = 348
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 348
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 348
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
              object Label40: TLabel
                Left = 6
                Top = 2
                Width = 52
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEditEnd
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label42: TLabel
                Left = 6
                Top = 39
                Width = 34
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label43: TLabel
                Left = 254
                Top = 39
                Width = 38
                Height = 13
                Caption = 'Cidade'
                FocusControl = DBEdit22
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelCgc_CPF: TLabel
                Left = 6
                Top = 75
                Width = 20
                Height = 13
                Caption = 'CPF'
                FocusControl = DBEditCpf
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelIE_RG: TLabel
                Left = 119
                Top = 75
                Width = 89
                Height = 13
                Caption = 'Cart.Identidade'
                FocusControl = DBEditIE
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 247
                Top = 75
                Width = 28
                Height = 13
                Caption = 'CTPS'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 394
                Top = 75
                Width = 82
                Height = 13
                Caption = 'Cart.Motorista'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label22: TLabel
                Left = 7
                Top = 112
                Width = 58
                Height = 13
                Caption = 'Ult.Salario'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 121
                Top = 112
                Width = 100
                Height = 13
                Caption = 'Pretens'#227'o Salario'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 254
                Top = 111
                Width = 70
                Height = 13
                Caption = 'Setor/Cargo'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 6
                Top = 148
                Width = 67
                Height = 13
                Caption = 'Referencias'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 6
                Top = 211
                Width = 119
                Height = 13
                Caption = 'Empregos Anteriores'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 8
                Top = 274
                Width = 79
                Height = 13
                Caption = 'Antecedentes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEditEnd: TDBEdit
                Left = 3
                Top = 15
                Width = 525
                Height = 21
                DataField = 'CUVIA60END'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit21: TDBEdit
                Left = 3
                Top = 52
                Width = 243
                Height = 21
                DataField = 'CUVIA60BAI'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit22: TDBEdit
                Left = 250
                Top = 52
                Width = 278
                Height = 21
                DataField = 'CUVIA60CID'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEditCpf: TDBEdit
                Left = 4
                Top = 88
                Width = 110
                Height = 21
                DataField = 'CUVIA11CPF'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEditIE: TDBEdit
                Left = 117
                Top = 88
                Width = 124
                Height = 21
                DataField = 'CUVIA10RG'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit7: TDBEdit
                Left = 244
                Top = 88
                Width = 143
                Height = 21
                DataField = 'CUVIA20CTPS'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit2: TDBEdit
                Left = 391
                Top = 88
                Width = 136
                Height = 21
                DataField = 'CUVIA20CARTMOT'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object EvDBNumEdit2: TEvDBNumEdit
                Left = 4
                Top = 125
                Width = 111
                Height = 21
                AutoHideCalculator = False
                DataField = 'CUVIN2ULTSALARIO'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 7
              end
              object EvDBNumEdit1: TEvDBNumEdit
                Left = 118
                Top = 125
                Width = 111
                Height = 21
                AutoHideCalculator = False
                DataField = 'CUVIN2PRETSALARIO'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 8
              end
              object DBEdit3: TDBEdit
                Left = 250
                Top = 124
                Width = 278
                Height = 21
                DataField = 'CUVIA30SETOR'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object MemoREF: TDBMemo
                Left = 3
                Top = 162
                Width = 526
                Height = 46
                DataField = 'CUVITREFPESSOAL'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 10
              end
              object DBMemo1: TDBMemo
                Left = 3
                Top = 225
                Width = 526
                Height = 46
                DataField = 'CUVITEMPRESAS'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 11
              end
              object DBMemo2: TDBMemo
                Left = 3
                Top = 288
                Width = 526
                Height = 46
                DataField = 'CUVITANTECED'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 12
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 750
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 750
            object Label2: TLabel
              Left = 11
              Top = 4
              Width = 89
              Height = 13
              Caption = 'Nome Completo'
              FocusControl = DBEditNome
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 346
              Top = 4
              Width = 37
              Height = 13
              Caption = 'Fone 1'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 468
              Top = 4
              Width = 37
              Height = 13
              Caption = 'Fone 2'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label77: TLabel
              Left = 592
              Top = 4
              Width = 113
              Height = 13
              Caption = 'Data de Nascimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEditNome: TDBEdit
              Left = 8
              Top = 17
              Width = 333
              Height = 21
              DataField = 'CUVIA60NOME'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 343
              Top = 17
              Width = 120
              Height = 21
              DataField = 'CUVIA15FONE1'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit1: TDBEdit
              Left = 465
              Top = 17
              Width = 120
              Height = 21
              DataField = 'CUVIA15FONE2'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBDateEdit8: TDBDateEdit
              Left = 588
              Top = 17
              Width = 117
              Height = 21
              DataField = 'CUVIDNASC'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 3
              YearDigits = dyFour
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From Curriculum Where (%MFiltro)')
    object SQLTemplateCUVIA13ID: TStringField
      Tag = 2
      FieldName = 'CUVIA13ID'
      Origin = 'DB.CURRICULUM.CUVIA13ID'
      Visible = False
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CURRICULUM.EMPRICOD'
    end
    object SQLTemplateCUVIICOD: TIntegerField
      Tag = 1
      FieldName = 'CUVIICOD'
      Origin = 'DB.CURRICULUM.CUVIICOD'
    end
    object SQLTemplateCUVIDENTREGA: TDateTimeField
      FieldName = 'CUVIDENTREGA'
      Origin = 'DB.CURRICULUM.CUVIDENTREGA'
    end
    object SQLTemplateCUVIDNASC: TDateTimeField
      FieldName = 'CUVIDNASC'
      Origin = 'DB.CURRICULUM.CUVIDNASC'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLTemplateCUVIA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CUVIA60NOME'
      Origin = 'DB.CURRICULUM.CUVIA60NOME'
      Size = 60
    end
    object SQLTemplateCUVIA60END: TStringField
      DisplayLabel = 'Endereco'
      FieldName = 'CUVIA60END'
      Origin = 'DB.CURRICULUM.CUVIA60END'
      Size = 60
    end
    object SQLTemplateCUVIA60BAI: TStringField
      FieldName = 'CUVIA60BAI'
      Origin = 'DB.CURRICULUM.CUVIA60BAI'
      Size = 60
    end
    object SQLTemplateCUVIA60CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CUVIA60CID'
      Origin = 'DB.CURRICULUM.CUVIA60CID'
      Size = 60
    end
    object SQLTemplateCUVIA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CUVIA15FONE1'
      Origin = 'DB.CURRICULUM.CUVIA15FONE1'
      Size = 15
    end
    object SQLTemplateCUVIA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CUVIA15FONE2'
      Origin = 'DB.CURRICULUM.CUVIA15FONE2'
      Size = 15
    end
    object SQLTemplateCUVIA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CUVIA11CPF'
      Origin = 'DB.CURRICULUM.CUVIA11CPF'
      Size = 11
    end
    object SQLTemplateCUVIA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'CUVIA10RG'
      Origin = 'DB.CURRICULUM.CUVIA10RG'
      Size = 10
    end
    object SQLTemplateCUVIA20CTPS: TStringField
      FieldName = 'CUVIA20CTPS'
      Origin = 'DB.CURRICULUM.CUVIA20CTPS'
    end
    object SQLTemplateCUVIA20CARTMOT: TStringField
      FieldName = 'CUVIA20CARTMOT'
      Origin = 'DB.CURRICULUM.CUVIA20CARTMOT'
    end
    object SQLTemplateCUVIA20TITELEIT: TStringField
      DisplayLabel = 'Tit.Eleitor'
      FieldName = 'CUVIA20TITELEIT'
      Origin = 'DB.CURRICULUM.CUVIA20TITELEIT'
    end
    object SQLTemplateCUVIA30SETOR: TStringField
      DisplayLabel = 'Setor / Cargo'
      FieldName = 'CUVIA30SETOR'
      Origin = 'DB.CURRICULUM.CUVIA30SETOR'
      Size = 30
    end
    object SQLTemplateCUVIN2ULTSALARIO: TBCDField
      DisplayLabel = 'Vlr.Ult.Salario'
      FieldName = 'CUVIN2ULTSALARIO'
      Origin = 'DB.CURRICULUM.CUVIN2ULTSALARIO'
      Precision = 15
      Size = 2
    end
    object SQLTemplateCUVIN2PRETSALARIO: TBCDField
      DisplayLabel = 'Vlr.Pret.Salarial'
      FieldName = 'CUVIN2PRETSALARIO'
      Origin = 'DB.CURRICULUM.CUVIN2PRETSALARIO'
      Precision = 15
      Size = 2
    end
    object SQLTemplateCUVITEMPRESAS: TMemoField
      FieldName = 'CUVITEMPRESAS'
      Origin = 'DB.CURRICULUM.CUVITEMPRESAS'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplateCUVITREFPESSOAL: TMemoField
      FieldName = 'CUVITREFPESSOAL'
      Origin = 'DB.CURRICULUM.CUVITREFPESSOAL'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplateCUVITANTECED: TMemoField
      FieldName = 'CUVITANTECED'
      Origin = 'DB.CURRICULUM.CUVITANTECED'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CURRICULUM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CURRICULUM.REGISTRO'
    end
    object SQLTemplateCUVIBIMAGEM: TBlobField
      FieldName = 'CUVIBIMAGEM'
      Origin = 'DB.CURRICULUM.CUVIBIMAGEM'
      Size = 1
    end
  end
  object PictureDialog: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.jpeg;*.ico;*.' +
      'emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|JPEG Image File (*.' +
      'jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Icons (*.ico)|*.ico|E' +
      'nhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 640
    Top = 2
  end
end
