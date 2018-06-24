inherited FormTelaConsultaProduto: TFormTelaConsultaProduto
  Left = 314
  Top = 74
  Width = 731
  Height = 598
  ActiveControl = EditProcura
  Caption = 'Consulta Produtos'
  Color = 13225421
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 715
    Height = 560
    Color = 13225421
    ParentColor = False
    inherited PanelCentral: TPanel
      Width = 711
      Height = 471
      Color = 13225421
      inherited PanelProcura: TPanel
        Width = 711
        Color = 13225421
        object LabelValorProcura: TLabel [0]
          Left = 326
          Top = 3
          Width = 193
          Height = 13
          Caption = '&Digite aqui o valor ser Procurado...'
          FocusControl = EditProcura
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited EditProcura: TMaskEdit
          Width = 365
        end
        inherited PanelIndice: TPanel
          Color = 13225421
          inherited LblProcurarPor: TLabel
            Left = 5
            Top = 4
          end
          inherited LblOrdenarPor: TLabel
            Left = 163
            Top = 4
          end
        end
      end
      inherited DBGridLista: TDBGrid
        Width = 711
        Height = 188
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODICOD'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODA60DESCR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 307
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODA30ADESCRREDUZ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODN3VLRVENDA'
            Title.Caption = 'Vlr.Venda'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 390
        Width = 711
        Height = 81
        Align = alBottom
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSSQLProdutoSaldo
        FixedColor = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRICOD'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EmpresaLookup'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 338
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PSLDN3QTDE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PSLDN3QTDMIN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PSLDN3QTDMAX'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 235
        Width = 711
        Height = 155
        Align = alBottom
        Color = 13225421
        TabOrder = 3
        object PageControl1: TPageControl
          Left = 1
          Top = 1
          Width = 709
          Height = 153
          ActivePage = TabSheet1
          Align = alClient
          HotTrack = True
          Style = tsFlatButtons
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = 'Dados Principais'
            object Label47: TLabel
              Left = 4
              Top = 3
              Width = 37
              Height = 13
              Caption = 'Barras'
              FocusControl = DBEdit38
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label48: TLabel
              Left = 160
              Top = 3
              Width = 67
              Height = 13
              Caption = 'Estruturado'
              FocusControl = DBEdit39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 303
              Top = 3
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              FocusControl = DBEdit40
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label50: TLabel
              Left = 584
              Top = 3
              Width = 44
              Height = 13
              Caption = 'Balan'#231'a'
              FocusControl = DBEdit41
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label51: TLabel
              Left = 4
              Top = 43
              Width = 67
              Height = 13
              Caption = 'Valor Venda'
              FocusControl = DBEdit42
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label52: TLabel
              Left = 80
              Top = 43
              Width = 78
              Height = 13
              Caption = 'Al'#237'quota Icms'
              FocusControl = DBEdit46
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label53: TLabel
              Left = 191
              Top = 43
              Width = 35
              Height = 13
              Caption = 'Marca'
              FocusControl = DBEdit47
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label54: TLabel
              Left = 316
              Top = 43
              Width = 34
              Height = 13
              Caption = 'Grupo'
              FocusControl = DBEdit48
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label55: TLabel
              Left = 478
              Top = 43
              Width = 55
              Height = 13
              Caption = 'SubGrupo'
              FocusControl = DBEdit49
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label56: TLabel
              Left = 80
              Top = 82
              Width = 81
              Height = 13
              Caption = 'Data Ini.Prom.'
              FocusControl = DBEdit50
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label57: TLabel
              Left = 175
              Top = 82
              Width = 82
              Height = 13
              Caption = 'Dt.T'#233'rm.Prom.'
              FocusControl = DBEdit51
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label58: TLabel
              Left = 4
              Top = 82
              Width = 65
              Height = 13
              Caption = 'Valor Prom.'
              FocusControl = DBEdit52
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label59: TLabel
              Left = 265
              Top = 82
              Width = 67
              Height = 13
              Caption = 'Dt.Cadastro'
              FocusControl = DBEdit53
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label60: TLabel
              Left = 348
              Top = 82
              Width = 63
              Height = 13
              Caption = 'Dt.Ult.Alter'
              FocusControl = DBEdit54
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label61: TLabel
              Left = 431
              Top = 82
              Width = 19
              Height = 13
              Caption = 'Cor'
              FocusControl = DBEdit55
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label62: TLabel
              Left = 593
              Top = 82
              Width = 53
              Height = 13
              Caption = 'Tamanho'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label63: TLabel
              Left = 458
              Top = 3
              Width = 61
              Height = 13
              Caption = 'C'#243'd.Antigo'
              FocusControl = DBEdit57
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit38: TDBEdit
              Left = 4
              Top = 17
              Width = 150
              Height = 21
              TabStop = False
              AutoSize = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODA60CODBAR'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit39: TDBEdit
              Left = 157
              Top = 17
              Width = 140
              Height = 21
              TabStop = False
              AutoSize = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODA30CODESTRUT'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit40: TDBEdit
              Left = 300
              Top = 17
              Width = 150
              Height = 21
              TabStop = False
              AutoSize = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODA60REFER'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit41: TDBEdit
              Left = 579
              Top = 17
              Width = 67
              Height = 21
              TabStop = False
              AutoSize = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODICODBALANCA'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit42: TDBEdit
              Left = 4
              Top = 57
              Width = 74
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODN3VLRVENDA'
              DataSource = DSTemplate
              ParentBiDiMode = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit46: TDBEdit
              Left = 80
              Top = 57
              Width = 105
              Height = 21
              TabStop = False
              AutoSize = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'IcmsLookup'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit47: TDBEdit
              Left = 187
              Top = 57
              Width = 122
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'MarcaLookup'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit48: TDBEdit
              Left = 312
              Top = 57
              Width = 159
              Height = 21
              TabStop = False
              AutoSize = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'GrupoLookup'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit49: TDBEdit
              Left = 474
              Top = 57
              Width = 170
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'SubGrupoLookup'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit50: TDBEdit
              Left = 80
              Top = 96
              Width = 87
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODDINIPROMO'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 9
            end
            object DBEdit51: TDBEdit
              Left = 171
              Top = 96
              Width = 91
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODDFIMPROMO'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 10
            end
            object DBEdit52: TDBEdit
              Left = 4
              Top = 96
              Width = 73
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODN3VLRVENDAPROM'
              DataSource = DSTemplate
              ParentBiDiMode = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 11
            end
            object DBEdit53: TDBEdit
              Left = 263
              Top = 96
              Width = 80
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODDCAD'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 12
            end
            object DBEdit54: TDBEdit
              Left = 346
              Top = 96
              Width = 80
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODDULTALTER'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 13
            end
            object DBEdit55: TDBEdit
              Left = 429
              Top = 96
              Width = 159
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'CorLookup'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 14
            end
            object DBEdit57: TDBEdit
              Left = 453
              Top = 17
              Width = 124
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODA15CODANT'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 15
            end
            object DBEdit56: TDBEdit
              Left = 591
              Top = 96
              Width = 54
              Height = 19
              TabStop = False
              AutoSize = False
              BevelOuter = bvNone
              Color = 16249066
              Ctl3D = True
              DataField = 'TAMANHOLOOKUP'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 16
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Dados Adicionais'
            ImageIndex = 1
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 217
              Height = 122
              Align = alLeft
              BevelInner = bvSpace
              BevelOuter = bvLowered
              ParentColor = True
              TabOrder = 0
              object Label42: TLabel
                Left = 7
                Top = 13
                Width = 42
                Height = 13
                Caption = 'Servi'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 111
                Top = 13
                Width = 75
                Height = 13
                Caption = 'Mov. Estoque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label38: TLabel
                Left = 7
                Top = 57
                Width = 77
                Height = 13
                Caption = 'Capac. Embal.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label28: TLabel
                Left = 111
                Top = 57
                Width = 95
                Height = 13
                Caption = 'C'#243'd. Composi'#231#227'o'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RxDBComboBox3: TRxDBComboBox
                Left = 7
                Top = 27
                Width = 97
                Height = 21
                Style = csDropDownList
                Color = 12572888
                Ctl3D = False
                DataField = 'PRODCSERVICO'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'N')
              end
              object RxDBComboBox4: TRxDBComboBox
                Left = 111
                Top = 27
                Width = 97
                Height = 21
                Style = csDropDownList
                Color = 12572888
                Ctl3D = False
                DataField = 'PRODCTIPOBAIXA'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  'Pai'
                  'Filho'
                  'Ambos')
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                Values.Strings = (
                  'P'
                  'F'
                  'A')
              end
              object DBEdit37: TEvDBNumEdit
                Left = 7
                Top = 72
                Width = 96
                Height = 19
                AutoHideCalculator = False
                Color = 12572888
                Ctl3D = False
                DataField = 'PRODN3CAPACEMBAL'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit9: TDBEdit
                Left = 111
                Top = 72
                Width = 97
                Height = 19
                Color = 12572888
                Ctl3D = False
                DataField = 'PRODICOD'
                DataSource = DSSQLProdutoComposicao
                ParentCtl3D = False
                TabOrder = 3
              end
            end
            object Panel6: TPanel
              Left = 217
              Top = 0
              Width = 169
              Height = 122
              Align = alLeft
              BevelInner = bvSpace
              BevelOuter = bvLowered
              Caption = 'Foto do Produto'
              ParentColor = True
              TabOrder = 1
              object ImageProduto: TImage
                Left = 2
                Top = 2
                Width = 165
                Height = 118
                Align = alClient
                Center = True
                Proportional = True
                Stretch = True
                Transparent = True
              end
            end
            object Panel7: TPanel
              Left = 386
              Top = 0
              Width = 320
              Height = 122
              Align = alLeft
              BevelInner = bvSpace
              BevelOuter = bvLowered
              ParentColor = True
              TabOrder = 2
              object DBGridProdutoSerie: TDBGrid
                Left = 2
                Top = 23
                Width = 316
                Height = 97
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLProdutoSerie
                FixedColor = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRSEA60NROSERIE'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlack
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 288
                    Visible = True
                  end>
              end
              object Panel8: TPanel
                Left = 2
                Top = 2
                Width = 316
                Height = 21
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object DBCheckBox2: TDBCheckBox
                  Left = 1
                  Top = 3
                  Width = 296
                  Height = 17
                  AllowGrayed = True
                  Caption = 'Controlar este produto pelo n'#250'mero de s'#233'rie'
                  DataField = 'PRODCTEMNROSERIE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Dados T'#233'cnicos'
            ImageIndex = 2
            object DBEdit13: TDBMemo
              Left = 0
              Top = 0
              Width = 701
              Height = 122
              Align = alClient
              Color = clWhite
              DataField = 'PRODA255DESCRTEC'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 711
      inherited PanelCabecalho: TPanel
        Width = 711
        inherited LabelDataHoraAlteracao: TLabel
          Left = 450
        end
        inherited PanelNavigator: TPanel
          Width = 711
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 711
            inherited BtnFecharTela: TSpeedButton
              Left = 622
            end
          end
        end
      end
    end
  end
  object SQLClassificacaoFiscal: TRxQuery [1]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLASSIFICACAOFISCAL')
    Macros = <>
    Left = 228
    Top = 39
  end
  object SQLUnidade: TRxQuery [2]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from UNIDADE')
    Macros = <>
    Left = 396
    Top = 11
  end
  object SQLCor: TRxQuery [3]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from COR')
    Macros = <>
    Left = 424
    Top = 11
  end
  object SQLIcms: TRxQuery [4]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ICMS')
    Macros = <>
    Left = 452
    Top = 11
  end
  object SQLGradeTamanho: TRxQuery [5]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRADETAMANHO')
    Macros = <>
    Left = 368
    Top = 11
  end
  object SQLGrade: TRxQuery [6]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRADE')
    Macros = <>
    Left = 340
    Top = 11
  end
  object SQLMarca: TRxQuery [7]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MARCA')
    Macros = <>
    Left = 228
    Top = 11
  end
  object SQLVariacao: TRxQuery [8]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from VARIACAO')
    Macros = <>
    Left = 312
    Top = 11
  end
  object SQLGrupo: TRxQuery [9]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRUPO')
    Macros = <>
    Left = 256
    Top = 11
  end
  object SQLSubGrupo: TRxQuery [10]
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from SUBGRUPO')
    Macros = <>
    Left = 284
    Top = 11
  end
  object SQLProdutoSaldo: TRxQuery [11]
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  PRODUTOSALDO '
      'where'
      '  PRODICOD = :PRODICOD')
    Macros = <>
    Left = 256
    Top = 39
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
    object SQLProdutoSaldoEMPRICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLProdutoSaldoPSLDN3QTDE: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
    end
    object SQLProdutoSaldoPSLDN3QTDMIN: TFloatField
      DisplayLabel = 'Qtd.M'#237'nima'
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
    end
    object SQLProdutoSaldoPSLDN3QTDMAX: TFloatField
      DisplayLabel = 'Qtd.M'#225'xima'
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
    end
    object SQLProdutoSaldoEmpresaLookup: TStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60NOMEFANT'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
  end
  object DSSQLProdutoSaldo: TDataSource [12]
    DataSet = SQLProdutoSaldo
    Left = 284
    Top = 39
  end
  object SQLEmpresa: TRxQuery [13]
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From EMPRESA')
    Macros = <>
    Left = 312
    Top = 39
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  inherited DSTemplate: TDataSource
    OnDataChange = DSTemplateDataChange
    Left = 152
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'Produto'
      'Where'
      'PRODCATIVO = '#39'S'#39' and'
      'PRODICOD = PRODIAGRUPGRADE and '
      '(%MFiltro)')
    object SQLTemplatePRODICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Interno'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
      Visible = False
    end
    object SQLTemplatePRODA30ADESCRREDUZ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o Reduzida'
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePRODIAGRUPGRADE: TIntegerField
      DisplayLabel = 'C'#243'd.Agrupamento'
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLTemplatePRODA15CODANT: TStringField
      DisplayLabel = 'C'#243'd.Antigo'
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.PRODUTO.PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLTemplateGradeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'GradeLookup'
      LookupDataSet = SQLGrade
      LookupKeyFields = 'GRADICOD'
      LookupResultField = 'GRADA30DESCR'
      KeyFields = 'GRADICOD'
      Visible = False
      Size = 30
      Lookup = True
    end
    object SQLTemplateGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLTemplateTAMANHOLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'TAMANHOLOOKUP'
      LookupDataSet = SQLGradeTamanho
      LookupKeyFields = 'GRADICOD;GRTMICOD'
      LookupResultField = 'GRTMA5DESCR'
      KeyFields = 'GRADICOD;GRTMICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLTemplateCorLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CorLookup'
      LookupDataSet = SQLCor
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      Visible = False
      Size = 30
      Lookup = True
    end
    object SQLTemplateICMSICOD: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
    object SQLTemplateIcmsLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'IcmsLookup'
      LookupDataSet = SQLIcms
      LookupKeyFields = 'ICMSICOD'
      LookupResultField = 'ICMSA60DESCR'
      KeyFields = 'ICMSICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLFSICOD: TIntegerField
      FieldName = 'CLFSICOD'
      Origin = 'DB.PRODUTO.CLFSICOD'
    end
    object SQLTemplateClassificacaoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassificacaoLookup'
      LookupDataSet = SQLClassificacaoFiscal
      LookupKeyFields = 'CLFSICOD'
      LookupResultField = 'CLFSA30DESCR'
      KeyFields = 'CLFSICOD'
      Visible = False
      Size = 30
      Lookup = True
    end
    object SQLTemplateUNIDICOD: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLTemplateUnidadeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadeLookup'
      LookupDataSet = SQLUnidade
      LookupKeyFields = 'UNIDICOD'
      LookupResultField = 'UNIDA5DESCR'
      KeyFields = 'UNIDICOD'
      Visible = False
      Size = 5
      Lookup = True
    end
    object SQLTemplateMARCICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Marca'
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLTemplateMarcaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'MarcaLookup'
      LookupDataSet = SQLMarca
      LookupKeyFields = 'MARCICOD'
      LookupResultField = 'MARCA60DESCR'
      KeyFields = 'MARCICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateGRUPICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Grupo'
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLTemplateGrupoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'GrupoLookup'
      LookupDataSet = SQLGrupo
      LookupKeyFields = 'GRUPICOD'
      LookupResultField = 'GRUPA60DESCR'
      KeyFields = 'GRUPICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object SQLTemplateSubGrupoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'SubGrupoLookup'
      LookupDataSet = SQLSubGrupo
      LookupKeyFields = 'GRUPICOD;SUBGICOD'
      LookupResultField = 'SUBGA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object SQLTemplateVariacaoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VariacaoLookup'
      LookupDataSet = SQLVariacao
      LookupKeyFields = 'GRUPICOD;SUBGICOD;VARIICOD'
      LookupResultField = 'VARIA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD;VARIICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePRODICODPAI: TIntegerField
      FieldName = 'PRODICODPAI'
      Origin = 'DB.PRODUTO.PRODICODPAI'
    end
    object SQLTemplatePRODCTIPOBAIXA: TStringField
      FieldName = 'PRODCTIPOBAIXA'
      Origin = 'DB.PRODUTO.PRODCTIPOBAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePRODA60REFER: TStringField
      DisplayLabel = 'Ref.F'#225'brica'
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
    object SQLTemplatePRODA15APAVIM: TStringField
      FieldName = 'PRODA15APAVIM'
      Origin = 'DB.PRODUTO.PRODA15APAVIM'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePRODA15RUA: TStringField
      FieldName = 'PRODA15RUA'
      Origin = 'DB.PRODUTO.PRODA15RUA'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePRODA15PRATEL: TStringField
      FieldName = 'PRODA15PRATEL'
      Origin = 'DB.PRODUTO.PRODA15PRATEL'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePRODN3PESOBRUTO: TFloatField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PRODUTO.PRODN3PESOBRUTO'
    end
    object SQLTemplatePRODN3PESOLIQ: TFloatField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.PRODUTO.PRODN3PESOLIQ'
    end
    object SQLTemplatePRODN3CAPACEMBAL: TFloatField
      ConstraintErrorMessage = '1'
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
    end
    object SQLTemplatePRODDCAD: TDateTimeField
      DisplayLabel = 'Dt.Cadastro'
      FieldName = 'PRODDCAD'
      Origin = 'DB.PRODUTO.PRODDCAD'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePRODDULTALTER: TDateTimeField
      DisplayLabel = 'Dt.Ult.altera'#231#227'o'
      FieldName = 'PRODDULTALTER'
      Origin = 'DB.PRODUTO.PRODDULTALTER'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePRODDINIPROMO: TDateTimeField
      DisplayLabel = 'Dt.In'#237'cio Promo'
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePRODDFIMPROMO: TDateTimeField
      DisplayLabel = 'Dt.Final Promo'
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePRODN2COMISVISTA: TFloatField
      FieldName = 'PRODN2COMISVISTA'
      Origin = 'DB.PRODUTO.PRODN2COMISVISTA'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object SQLTemplatePRODN3VLRCOMPRA: TFloatField
      ConstraintErrorMessage = '1'
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object SQLTemplatePRODN3VLRCUSTO: TFloatField
      ConstraintErrorMessage = '1'
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
    object SQLTemplatePRODDIMOBOLIZ: TDateTimeField
      FieldName = 'PRODDIMOBOLIZ'
      Origin = 'DB.PRODUTO.PRODDIMOBOLIZ'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePRODN3VLRVENDA: TFloatField
      ConstraintErrorMessage = '1'
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object SQLTemplatePRODN3QTDEBAIXA: TFloatField
      FieldName = 'PRODN3QTDEBAIXA'
      Origin = 'DB.PRODUTO.PRODN3QTDEBAIXA'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object SQLTemplatePRODN3VLRVENDAPROM: TFloatField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object SQLTemplatePRODN3VLRCUSTOMED: TFloatField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
    object SQLTemplatePRODN3PERCIPI: TFloatField
      FieldName = 'PRODN3PERCIPI'
      Origin = 'DB.PRODUTO.PRODN3PERCIPI'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object SQLTemplatePRODN3PERCMARGLUCR: TFloatField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
      DisplayFormat = '###,##0.00'
      EditFormat = '##0.00'
    end
    object SQLTemplatePRODCATIVO: TStringField
      FieldName = 'PRODCATIVO'
      Origin = 'DB.PRODUTO.PRODCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePRODCSERVICO: TStringField
      FieldName = 'PRODCSERVICO'
      Origin = 'DB.PRODUTO.PRODCSERVICO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePRODCGERACOMIS: TStringField
      FieldName = 'PRODCGERACOMIS'
      Origin = 'DB.PRODUTO.PRODCGERACOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTO.REGISTRO'
    end
    object SQLTemplatePRODN2COMISPRAZO: TFloatField
      FieldName = 'PRODN2COMISPRAZO'
      Origin = 'DB.PRODUTO.PRODN2COMISPRAZO'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object SQLTemplatePRODIORIGEM: TIntegerField
      FieldName = 'PRODIORIGEM'
      Origin = 'DB.PRODUTO.PRODIORIGEM'
    end
    object SQLTemplatePRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o Principal'
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
      Origin = 'DB.PRODUTO.PRODBIMAGEM'
      Size = 1
    end
    object SQLTemplatePRODCTEMNROSERIE: TStringField
      FieldName = 'PRODCTEMNROSERIE'
      Origin = 'DB.PRODUTO.PRODCTEMNROSERIE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePRODA255DESCRTEC: TMemoField
      FieldName = 'PRODA255DESCRTEC'
      Origin = 'DB.PRODUTO.PRODA255DESCRTEC'
      BlobType = ftMemo
      Size = 2000
    end
  end
  object FormStorage1: TFormStorage [16]
    Options = []
    StoredProps.Strings = (
      'ComboOrder.Text'
      'ComboOrdem.Text')
    StoredValues = <>
    Left = 480
    Top = 11
  end
  object SQLProdutoSerie: TRxQuery [17]
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      'PRSEA60NROSERIE'
      'from'
      'PRODUTOSERIE'
      'where'
      'PRODICOD = :PRODICOD'
      'and'
      '(PRSECSTATUS = '#39'D'#39' or PRSECSTATUS is null)')
    Macros = <>
    Left = 344
    Top = 45
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLProdutoSeriePRSEA60NROSERIE: TStringField
      DisplayLabel = 'N'#250'mero(s) de S'#233'rie'
      FieldName = 'PRSEA60NROSERIE'
      Origin = 'DB.PRODUTOSERIE.PRSEA60NROSERIE'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProdutoSerie: TDataSource [18]
    DataSet = SQLProdutoSerie
    Left = 372
    Top = 45
  end
  object SQLProdutoComposicao: TRxQuery [19]
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT PRODICOD FROM PRODUTOCOMPOSICAO'
      'WHERE PRODICODFILHO = :PRODICOD')
    Macros = <>
    Left = 410
    Top = 45
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLProdutoComposicaoPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Composi'#231#227'o'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODICOD'
    end
  end
  object DSSQLProdutoComposicao: TDataSource [20]
    DataSet = SQLProdutoComposicao
    Left = 438
    Top = 45
  end
end
