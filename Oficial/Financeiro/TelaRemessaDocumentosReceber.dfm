inherited FormTelaRemessaDocumentosReceber: TFormTelaRemessaDocumentosReceber
  Left = 6
  Top = 24
  Width = 800
  Caption = 'Incluir T'#237'tulos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 784
    Height = 335
    inherited PanelCentral: TPanel
      Width = 780
      Height = 251
      inherited PanelBarra: TPanel
        Width = 0
        Height = 251
      end
      object PanelFundoBxDocREc: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 251
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object PanelTopBxDocREc: TPanel
          Left = 0
          Top = 0
          Width = 780
          Height = 129
          Align = alTop
          BevelOuter = bvNone
          Color = 14536396
          TabOrder = 0
          object Label1: TLabel
            Left = 2
            Top = 5
            Width = 49
            Height = 13
            Caption = 'Empresa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 2
            Top = 43
            Width = 39
            Height = 13
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 102
            Top = 88
            Width = 43
            Height = 13
            Caption = 'Per'#237'odo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 199
            Top = 106
            Width = 19
            Height = 13
            Caption = 'at'#233
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 474
            Top = 88
            Width = 100
            Height = 13
            Caption = 'Total Selecionado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 300
            Top = 5
            Width = 50
            Height = 13
            Caption = 'Portador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object De: TDateEdit
            Left = 100
            Top = 104
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 4
          end
          object Ate: TDateEdit
            Left = 228
            Top = 104
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 5
          end
          object ComboEmpresa: TRxDBLookupCombo
            Left = 2
            Top = 20
            Width = 294
            Height = 21
            DropDownCount = 8
            LookupField = 'EMPRICOD'
            LookupDisplay = 'EMPRA60RAZAOSOC'
            LookupSource = DSSQLEmpresa
            TabOrder = 0
          end
          object ComboCliente: TRxDBLookupCombo
            Left = 2
            Top = 57
            Width = 593
            Height = 21
            DropDownCount = 8
            LookupField = 'CLIEA13ID'
            LookupDisplay = 'CLIEA60RAZAOSOC'
            LookupSource = DSSQLCliente
            TabOrder = 2
          end
          object TotalContas: TCurrencyEdit
            Left = 474
            Top = 104
            Width = 121
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14536396
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object GroupBox1: TGroupBox
            Left = 322
            Top = 88
            Width = 148
            Height = 37
            Caption = 'Marcar Para Incluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            object Padrao1: TRadioButton
              Left = 10
              Top = 16
              Width = 65
              Height = 17
              Caption = 'Sim'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              TabStop = True
            end
            object Padrao2: TRadioButton
              Left = 79
              Top = 16
              Width = 59
              Height = 17
              Caption = 'N'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
          end
          object ComboPortador: TRxDBLookupCombo
            Left = 300
            Top = 20
            Width = 294
            Height = 21
            DropDownCount = 8
            LookupField = 'PORTICOD'
            LookupDisplay = 'PORTA60DESCR'
            LookupSource = DSSQLConvenio
            TabOrder = 1
          end
          object RadioData: TRadioGroup
            Left = 2
            Top = 78
            Width = 95
            Height = 47
            Caption = '&Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              'Emiss'#227'o'
              'Vencimento')
            ParentFont = False
            TabOrder = 3
          end
        end
        object DBGridLista: TDBGrid
          Left = 0
          Top = 129
          Width = 780
          Height = 122
          Align = alClient
          BorderStyle = bsNone
          DataSource = DSTblRecebimento
          FixedColor = 16767449
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGridListaCellClick
          OnColEnter = DBGridListaColEnter
          OnColExit = DBGridListaColExit
          OnDrawColumnCell = DBGridListaDrawColumnCell
          OnKeyDown = DBGridListaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DtEmissao'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DtVencimento'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClienteNome'
              Width = 302
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Documento'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Parcela'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Baixar'
              Title.Caption = 'Incluir'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Portador'
              Visible = True
            end>
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 780
      inherited PanelCabecalho: TPanel
        Width = 780
        inherited PanelNavigator: TPanel
          Width = 780
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 780
            inherited BtnFecharTela: TSpeedButton
              Left = 698
            end
            object Mensagem: TLabel
              Left = 283
              Top = 9
              Width = 62
              Height = 13
              Caption = 'Mensagem'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object BtnBaixarDoc: TSpeedButton
              Tag = 3
              Left = 149
              Top = 3
              Width = 131
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Incluir Documentos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                92050000424D860900000000000036080000280000000C0000000E0000000100
                1000030000005001000000000000000000000001000000000000007C0000E003
                00001F00000000000000A7C2B300588C7000719D85004D7B620086AB9700436C
                56009EBDA2007497780084AC88004A765E006685690055886D00518268005080
                660056896D003E634F00FFFFFF00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F00000C320000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B042
                B0420000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B0420A3687250000FF7F
                FF7FFF7FFF7FFF7FFF7F0000B042B0420932E9310000FF7FFF7FFF7FFF7FFF7F
                0000B042B0420C3200000A36A7290000FF7FFF7FFF7FFF7F0000B0424E3A0000
                0000C82D2A360000FF7FFF7FFF7F0000B042B04200000000FF7F00002A36A729
                0000FF7FFF7F0000F34E4E3A0000FF7FFF7F00006D422A360000FF7FFF7FFF7F
                00000000FF7FFF7FFF7FFF7F00006D42A7290000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F0000B04A2A360000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                6D42E92D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000014572A360000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7F}
              ParentFont = False
              Spacing = 10
              OnClick = BtnBaixarDocClick
            end
            object BtnSelecionarDoc: TSpeedButton
              Tag = 3
              Left = 2
              Top = 3
              Width = 147
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Selecionar Documentos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96040000424D9604000000000000360000002800000012000000140000000100
                18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
                B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
                A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
                00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
                9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
                E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
                B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
                0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
                86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
                B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
                000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
                9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
                E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
                B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
                9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
                A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
                869000000084A8B469869000000084A8B4698690000000698690546B73000000
                000000000000000000000000000000000000000099B7C069869000000084A8B4
                546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
                000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
                86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000AAC3CA698690000000000000
                0000000000000000000000000000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
                E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              Spacing = 10
              OnClick = BtnSelecionarDocClick
            end
          end
        end
      end
    end
  end
  object Progress: TProgressBar [1]
    Left = 0
    Top = 335
    Width = 784
    Height = 16
    Align = alBottom
    Smooth = True
    TabOrder = 1
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CR.CTRCA13ID,'
      '  CR.EMPRICOD,'
      '  CR.TERMICOD,'
      '  CR.CLIEA13ID,'
      '  CR.CTRCCSTATUS,'
      '  CR.CTRCINROPARC,'
      '  CR.CTRCDVENC,'
      '  CR.CTRCN2VLR,'
      '  CR.CTRCN2DESCFIN,'
      '  CR.CTRCN2TOTREC,'
      '  CR.CTRCDULTREC,'
      '  CR.PORTICOD,'
      '  CR.CTRCA5TIPOPADRAO,'
      '  CR.CTRCA30NRODUPLICBANCO,'
      '  CR.CUPOA13ID,'
      '  CR.BANCA5CODCHQ,'
      '  CR.CTRCA10AGENCIACHQ,'
      '  CR.CTRCA15CONTACHQ,'
      '  CR.CTRCA15NROCHQ,'
      '  CR.CTRCA60TITULARCHQ,'
      '  CR.CTRCA20CGCCPFCHQ,'
      '  CR.CTRCDDEPOSCHQ,'
      '  CR.ALINICOD,'
      '  CL.CLIEA60RAZAOSOC,'
      '  CR.NOFIA13ID,'
      '  CR.CTRCDEMIS,'
      '  PORTADOR.PORTA60DESCR'
      'from'
      '   CONTASRECEBER CR'
      '   left outer join CLIENTE CL ON CR.CLIEA13ID  =  CL.CLIEA13ID'
      '   left outer join CUPOM CP   ON CR.CUPOA13ID  =  CP.CUPOA13ID'
      
        '   left outer join PORTADOR   ON CR.PORTICOD   = PORTADOR.PORTIC' +
        'OD'
      'where'
      '  %MData   and'
      '  ((CR.CTRCCSTATUS <> '#39'C'#39') or (CR.CTRCCSTATUS is null)) and'
      '  (CR.CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      
        '  ((Not CR.CUPOA13ID IS NULL) or (((Not CR.NOFIA13ID is NULL) or' +
        ' (CR.PDVDA13ID is NULL)) OR (Not CR.CUPOA13ID is NULL))) and'
      
        '  (CR.CTRCN2TOTREC    < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null)' +
        ' and'
      '  (%MEmpresa) and'
      '  (%MPortador) and'
      '  (%MCliente) and'
      
        '  CTRCA13ID Not in (Select CTRCA13ID from REMESSABANCOCONTASRECE' +
        'BER)'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPortador'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 264
    Top = 5
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
    end
    object SQLContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasReceberPORTA60DESCR: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  CLIEA13ID, CLIEA60RAZAOSOC '
      'from '
      '  CLIENTE'
      'order by '
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 204
    Top = 5
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 232
    Top = 5
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'order by EMPRA60RAZAOSOC')
    Macros = <>
    Left = 146
    Top = 5
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 174
    Top = 5
  end
  object TblRecebimento: TTable
    AfterPost = TblRecebimentoAfterPost
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'ContasRecebimento.DB'
    Left = 365
    Top = 5
    object TblRecebimentoCTRCA13ID: TStringField
      DisplayLabel = 'Conta Receber'
      FieldName = 'CTRCA13ID'
      Size = 13
    end
    object TblRecebimentoCLIEA13ID: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TblRecebimentoDtVencimento: TDateTimeField
      DisplayLabel = 'Dt. Vcto'
      FieldName = 'DtVencimento'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TblRecebimentoClienteNome: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'ClienteNome'
      Size = 60
    end
    object TblRecebimentoParcela: TIntegerField
      DisplayLabel = 'Prc.'
      FieldName = 'Parcela'
    end
    object TblRecebimentoValor: TFloatField
      FieldName = 'Valor'
      OnChange = TblRecebimentoValorJuroChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorJuro: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'ValorJuro'
      OnChange = TblRecebimentoValorJuroChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorMulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'ValorMulta'
      OnChange = TblRecebimentoValorJuroChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorDesconto: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'ValorDesconto'
      OnChange = TblRecebimentoValorJuroChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorTotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'ValorTotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoBaixar: TBooleanField
      FieldName = 'Baixar'
    end
    object TblRecebimentoDocumento: TStringField
      FieldName = 'Documento'
      Size = 30
    end
    object TblRecebimentoDtEmissao: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DtEmissao'
    end
    object TblRecebimentoPortador: TStringField
      FieldName = 'Portador'
      Size = 60
    end
  end
  object DSTblRecebimento: TDataSource
    DataSet = TblRecebimento
    Left = 393
    Top = 5
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'UNITGESTAO_TEMP'
    SQL.Strings = (
      'select '
      '  Sum(ValorTotal)  as Total '
      'from '
      '  ContasRecebimento.DB')
    Macros = <>
    Left = 444
    Top = 6
    object SQLTotalTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PORTADOR'
      '')
    Macros = <>
    Left = 488
    Top = 5
  end
  object DSSQLConvenio: TDataSource
    DataSet = SQLPortador
    Left = 516
    Top = 5
  end
end
