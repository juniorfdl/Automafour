inherited FormTelaImportadorXML: TFormTelaImportadorXML
  Left = 205
  Top = 37
  Width = 1102
  Height = 687
  Caption = 'Importador de XMLs'
  Color = 12572888
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1086
    Height = 648
    inherited PanelCentral: TPanel
      Width = 1082
      Height = 564
      inherited PanelBarra: TPanel
        Width = 1
        Height = 564
      end
      object pnlImportador: TPanel
        Left = 1
        Top = 0
        Width = 1081
        Height = 564
        Align = alClient
        Caption = 'pnlImportador'
        Color = 16249066
        TabOrder = 1
        object pgcImportador: TPageControl
          Left = 1
          Top = 1
          Width = 1079
          Height = 397
          ActivePage = tsXMLs
          Align = alClient
          TabOrder = 0
          object tsXMLs: TTabSheet
            Caption = 'Arquivos Dispon'#237'veis'
            ImageIndex = 5
            OnShow = tsXMLsShow
            object pnlNfImp: TPanel
              Left = 0
              Top = 0
              Width = 353
              Height = 369
              Align = alLeft
              TabOrder = 0
              object cxGrid4: TcxGrid
                Left = 1
                Top = 177
                Width = 351
                Height = 191
                Align = alClient
                TabOrder = 0
                object cxGrid4DBTableView1: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  OnCellClick = cxGrid4DBTableView1CellClick
                  OnCellDblClick = cxGrid4DBTableView1CellDblClick
                  DataController.DataSource = dsXML
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OptionsView.Header = False
                  Styles.Selection = cxStyle1
                  object cxGrid4DBTableView1id: TcxGridDBColumn
                    DataBinding.FieldName = 'id'
                    Visible = False
                  end
                  object cxGrid4DBTableView1chave_acesso: TcxGridDBColumn
                    DataBinding.FieldName = 'chave_acesso'
                    Width = 436
                  end
                end
                object cxGrid4Level1: TcxGridLevel
                  GridView = cxGrid4DBTableView1
                end
              end
              object pnl: TPanel
                Left = 1
                Top = 156
                Width = 351
                Height = 21
                Align = alTop
                Alignment = taLeftJustify
                Caption = 'Notas Dispon'#237'veis para Importa'#231#227'o'
                Color = 10053171
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object btTransfImportados: TSpeedButton
                  Left = 184
                  Top = 3
                  Width = 164
                  Height = 17
                  Caption = 'Mover p Importados'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btTransfImportadosClick
                end
              end
              object Panel1: TPanel
                Left = 1
                Top = 1
                Width = 351
                Height = 155
                Align = alTop
                Color = 16249066
                TabOrder = 2
                object btReloadArquivos: TSpeedButton
                  Left = 317
                  Top = 4
                  Width = 22
                  Height = 20
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF0027A8DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF0029ACDE0027A9DC0025A6DB00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF002BAFDF002DAEDF002BABDE0025A6DB00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF002BAFDF004FBCE7004CBAE60026A7DC0024A4DB00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF002BAFDF0084D3F20055BDE7002EAADE0024A4
                    DB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF002DB2E00070CCEE0083D2F2007ECEF1004AB6
                    E40024A5DB0022A2DA00FF00FF00FF00FF00FF00FF00FF00FF0038C2E70036C0
                    E60035BDE50033BBE40031B8E3002FB6E20086D7F3002FB6EB004ABCEC0080CE
                    F10051B9E6002CA8DD0023A2DA00FF00FF00FF00FF00FF00FF003AC4E80075DA
                    F20093E6F80091E3F7008DE0F6008ADCF5008ADBF50088D7F40084D3F2007FCF
                    F1007CCCF0007AC9EF0048B4E30023A3DA00209ED800FF00FF003BC7E9004FCD
                    EC0098E9F9004AD5F30045CFF10040CAF00038C2EE0089D9F4002EB4E1002CB1
                    E0002BAEDF0029ACDE0027A9DC0025A6DB0023A3DA00FF00FF00FF00FF003BC7
                    E90080E1F5008EE6F80043D2F3003FCDF10039C7EF008CDCF50058C6EA002EB4
                    E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003DC9
                    EA005BD4EF0099EAF90047D6F40042D0F2003DCBF0006ED5F3007FD7F3004AC0
                    E7002FB4E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF003DCAEA0093E9F90072E1F70045D4F30041CEF2003CC9F0008ADCF50070D0
                    EF003DBBE4002FB5E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF003FCCEB0064D9F1009AEBFA0048D8F40044D3F3003FCEF1003AC8F0008CDC
                    F50062CBED0031B8E300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF003FCCEB009AEDFA0099EBF90097E8F90094E5F80091E2F7008EDF
                    F6008BDBF50056C7EB0031B8E300FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF0040CEEC003FCCEB003ECBEA003CC9E9003BC7E9003AC4E80038C2
                    E70036C0E60035BDE50033BBE40031B8E300FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                  OnClick = btReloadArquivosClick
                end
                object DirectoryEditNFERecebidas: TDirectoryEdit
                  Left = 5
                  Top = 4
                  Width = 308
                  Height = 21
                  InitialDir = 'C:\Easy2Solutions\NFe\Recebidos'
                  NumGlyphs = 1
                  TabOrder = 0
                  Text = 'C:\Easy2Solutions\NFe\Recebidos'
                  OnChange = DirectoryEditNFERecebidasChange
                end
                object grpOperacaoEstoque: TGroupBox
                  Left = 4
                  Top = 24
                  Width = 344
                  Height = 43
                  Caption = 'Opera'#231#227'o de Estoque'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  object dblkcbbOpEstoque: TDBLookupComboBox
                    Left = 9
                    Top = 15
                    Width = 329
                    Height = 21
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    KeyField = 'OPESICOD'
                    ListField = 'OPESA60DESCR'
                    ListSource = dsOpEstoque
                    ParentFont = False
                    TabOrder = 0
                    OnCloseUp = dblkcbbOpEstoqueCloseUp
                  end
                end
                object GroupBox2: TGroupBox
                  Left = 4
                  Top = 67
                  Width = 344
                  Height = 41
                  Caption = 'Conta Despesa'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  object dblkcbbContaDespesa: TDBLookupComboBox
                    Left = 6
                    Top = 14
                    Width = 332
                    Height = 21
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    KeyField = 'PLCTA15COD'
                    ListField = 'PLCTA60DESCR'
                    ListSource = dsContaDespesa
                    ParentFont = False
                    TabOrder = 0
                    OnCloseUp = dblkcbbOpEstoqueCloseUp
                  end
                end
                object grpOrigem: TGroupBox
                  Left = 5
                  Top = 108
                  Width = 343
                  Height = 41
                  Caption = 'Localiza XML usando o leitor Cd Barras'
                  Color = 16249066
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 3
                  object BtnPedidos: TSpeedButton
                    Left = 314
                    Top = 13
                    Width = 24
                    Height = 24
                    Hint = 'Acessa Pedidos de Compra'
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
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = BtnPedidosClick
                  end
                  object edtChaveProcura: TEdit
                    Left = 5
                    Top = 15
                    Width = 306
                    Height = 21
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnKeyDown = edtChaveProcuraKeyDown
                  end
                end
              end
            end
            object GroupBox3: TGroupBox
              Left = 353
              Top = 0
              Width = 648
              Height = 369
              Align = alLeft
              Caption = 'Dados da Nota Fiscal'
              TabOrder = 1
              object cxGridVis: TcxGrid
                Left = 2
                Top = 100
                Width = 644
                Height = 267
                Align = alClient
                TabOrder = 0
                object cxGridDBTableViewVis: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  OnCustomDrawCell = cxGrid1DBTableViewItensCustomDrawCell
                  DataController.DataSource = dsVisualizacao
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = ',0.00'
                      Kind = skSum
                      Column = cxGridDBColumn10
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn4: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o do Produto'
                    DataBinding.FieldName = 'descricao'
                    Width = 351
                  end
                  object cxGridDBColumn8: TcxGridDBColumn
                    DataBinding.FieldName = 'unidade'
                    HeaderAlignmentHorz = taCenter
                    Width = 43
                  end
                  object cxGridDBColumn10: TcxGridDBColumn
                    DataBinding.FieldName = 'quantidade'
                    HeaderAlignmentHorz = taRightJustify
                    Width = 73
                  end
                  object cxGridDBColumn11: TcxGridDBColumn
                    DataBinding.FieldName = 'valor_unitario'
                    HeaderAlignmentHorz = taRightJustify
                    Width = 77
                  end
                  object cxGridDBColumn12: TcxGridDBColumn
                    DataBinding.FieldName = 'valor_parcial'
                    HeaderAlignmentHorz = taRightJustify
                    Width = 75
                  end
                end
                object cxGridLevelVis: TcxGridLevel
                  GridView = cxGridDBTableViewVis
                end
              end
              object v: TPanel
                Left = 2
                Top = 15
                Width = 644
                Height = 85
                Align = alTop
                BevelOuter = bvNone
                Color = 16249066
                TabOrder = 1
                object Label42: TLabel
                  Left = 33
                  Top = 11
                  Width = 59
                  Height = 13
                  Caption = 'Fornecedor:'
                end
                object Label31: TLabel
                  Left = 6
                  Top = 37
                  Width = 86
                  Height = 13
                  Caption = 'Natureza (CFOP):'
                end
                object Label34: TLabel
                  Left = 383
                  Top = 64
                  Width = 42
                  Height = 13
                  Caption = 'Emiss'#227'o:'
                  Transparent = True
                end
                object Label30: TLabel
                  Left = 485
                  Top = 37
                  Width = 44
                  Height = 13
                  Caption = 'Total NF:'
                end
                object btnCadFornecedor: TSpeedButton
                  Tag = 3
                  Left = 562
                  Top = 1
                  Width = 70
                  Height = 26
                  Cursor = crHandPoint
                  Action = actCadFornecedor
                  Caption = 'Novo'
                  Enabled = False
                  Flat = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FFFFFF00AA8E
                    8E09BFA5994CE1D3CEB4E6DAD6D7E3D7D4E1E2D5D1EAE1D4D0E8E2D5D0DEE1D5
                    D0D1DBCAC59FBA9E923F228233E02E8A33DCFFFFFF00FFFFFF00DACBC69CE8DF
                    DBFEEFE8E5FFF6F3F1FFF8F6F5FFF8F6F5FFF8F6F5FFF8F6F5FFF8F6F5FFF8F6
                    F5FFF7F5F4FFEFEAE8FF248A2BFF319D45FFFFFFFF00FFFFFF00E6DBD78EF0EA
                    E7FFF5F0EFFFF8F5F4FFF9F7F6FFF9F7F6FFF9F7F6FFF9F7F6FFF9F7F6FFF9F7
                    F6FF4DA74DFF2F9330FF30A13AFF2FA441FF2A9E3BFF2AA03CD0E5E4E30CE6DC
                    D8FDF5F1EFFFFAF8F7FFF9F7F6FFFAF8F7FFFAF8F7FFFAF8F7FFFAF8F7FFFAF8
                    F7FF68B86AFF45A84DFF52B75DFF54B961FF42A94EFF50B262D9FFFFFF00EFE8
                    E66AF1EBEAFEF7F5F4FFFAF8F8FFF9F7F7FFFBF9F9FFFBF9F9FFFBF9F9FFFBF8
                    F8FFF9F7F6FFF8F5F5F750B65FFF53B863FFFFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FCFAFA1DF2ECEA91F2EAEAEDECE8E7FBE0E2E9FFD2D5DCFEF1EDEDF5FBF9
                    F9DAFCFAFA75FCFAFA1274C882E46EC882E2FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00D4D3D306D9E6F3FECEDDECFFA2B7CBFFCAD9E5E8FDFB
                    FB01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00AAC1D3F397B4CCFF90ABC2FFAEC0D3C3FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF009EBDD8FEC3DEF5FFCBE2F7FF9DB5C9EAFFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00ACCBEB53C0DBF4FFD2E6F8FFD5E8F8FFD1E3F5F8C2DB
                    F30FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00AABFD50CB0D1EECFC8DEF4FFDAE9F8FFE0EDF9FFDEECF8FFC1D9
                    EF98FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00A4C8DB0EA5C4E1EAC6DEF4FFD9E9F7FFE0EDF9FFDFECF8FFB2C8
                    E0BEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0095B0CDF5BFDAF2FFD2E1F2FFD3E0F1FFCCDDEEFF95AD
                    C8DDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0087A2C0E0819CB8FF7992AEFF9BB1C6FFB6C7DBFF9EB8
                    D4ABFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0088A5C43B819DBBF77892B0FF94ABC4FF9BB3CDEA97B3
                    D104FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008DABCA5F90AFCE37FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
                  ParentFont = False
                end
                object Label1: TLabel
                  Left = 316
                  Top = 38
                  Width = 66
                  Height = 13
                  Caption = 'S'#233'rie/N'#186' NFe:'
                  Transparent = True
                end
                object Label4: TLabel
                  Left = 517
                  Top = 64
                  Width = 42
                  Height = 13
                  Caption = 'Entrada:'
                  Transparent = True
                end
                object Label2: TLabel
                  Left = 8
                  Top = 65
                  Width = 31
                  Height = 13
                  Caption = 'Chave'
                end
                object Edit3: TEdit
                  Left = 93
                  Top = 9
                  Width = 49
                  Height = 21
                  Color = clBtnFace
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  Visible = False
                end
                object edtDescOperacaoVis: TEdit
                  Left = 94
                  Top = 35
                  Width = 217
                  Height = 21
                  Color = 16249066
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
                object edtTotalNotaVis: TCurrencyEdit
                  Left = 535
                  Top = 34
                  Width = 101
                  Height = 21
                  TabStop = False
                  AutoSize = False
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object edtChaveNfe: TMaskEdit
                  Left = 44
                  Top = 60
                  Width = 332
                  Height = 21
                  Color = 16249066
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                end
                object edtCodigoNFVis: TEdit
                  Left = 408
                  Top = 35
                  Width = 64
                  Height = 21
                  Color = 16249066
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 4
                end
                object edtSerieNota: TEdit
                  Left = 384
                  Top = 35
                  Width = 20
                  Height = 21
                  Color = 16249066
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 5
                end
                object edtEmissaoVis: TDateEdit
                  Left = 429
                  Top = 60
                  Width = 84
                  Height = 21
                  Color = 16249066
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  NumGlyphs = 2
                  ParentFont = False
                  YearDigits = dyTwo
                  TabOrder = 6
                end
                object edtDataEntrada: TDateEdit
                  Left = 561
                  Top = 60
                  Width = 76
                  Height = 21
                  NumGlyphs = 2
                  YearDigits = dyTwo
                  TabOrder = 7
                end
                object edtCodigoFornecedor: TEdit
                  Left = 93
                  Top = 5
                  Width = 42
                  Height = 21
                  Color = 16249066
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 8
                end
                object edtCnpjFornecedorVis: TEdit
                  Left = 140
                  Top = 5
                  Width = 104
                  Height = 21
                  Color = 16249066
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 9
                end
                object edtNomeFornecedorVis: TEdit
                  Left = 249
                  Top = 5
                  Width = 305
                  Height = 21
                  Color = 16249066
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 10
                end
              end
            end
          end
          object tsInfoNfe: TTabSheet
            Caption = 'Informa'#231#245'es da NF-e'
            OnShow = tsInfoNfeShow
            DesignSize = (
              1071
              369)
            object Label27: TLabel
              Left = 13
              Top = 181
              Width = 361
              Height = 13
              AutoSize = False
              Caption = 'Observa'#231#245'es / Mensagens da NF-e'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object grpTotaisImpostos: TGroupBox
              Left = 5
              Top = 18
              Width = 742
              Height = 157
              Caption = 'Totais / Impostos'
              TabOrder = 0
              object Label6: TLabel
                Left = 31
                Top = 18
                Width = 69
                Height = 13
                Caption = 'Base C. ICMS:'
              end
              object Label7: TLabel
                Left = 44
                Top = 45
                Width = 56
                Height = 13
                Caption = 'Valor ICMS:'
              end
              object Label8: TLabel
                Left = 53
                Top = 99
                Width = 47
                Height = 13
                Caption = 'Valor S.T:'
              end
              object Label11: TLabel
                Left = 44
                Top = 72
                Width = 56
                Height = 13
                Caption = 'Base C. ST:'
              end
              object Label12: TLabel
                Left = 419
                Top = 99
                Width = 35
                Height = 13
                Caption = 'Isento:'
              end
              object Label13: TLabel
                Left = 417
                Top = 126
                Width = 37
                Height = 13
                Caption = 'Outras:'
              end
              object Label15: TLabel
                Left = 230
                Top = 47
                Width = 45
                Height = 13
                Caption = 'Valor IPI:'
              end
              object Label16: TLabel
                Left = 218
                Top = 102
                Width = 57
                Height = 13
                Caption = 'Valor Frete:'
              end
              object Label17: TLabel
                Left = 209
                Top = 75
                Width = 66
                Height = 13
                Caption = 'Vlr. Produtos:'
              end
              object Label18: TLabel
                Left = 594
                Top = 45
                Width = 44
                Height = 13
                Caption = 'Total NF:'
              end
              object Label19: TLabel
                Left = 400
                Top = 20
                Width = 54
                Height = 13
                Caption = 'Descontos:'
              end
              object Label20: TLabel
                Left = 208
                Top = 20
                Width = 67
                Height = 13
                Caption = 'Cr'#233'dito ICMS:'
              end
              object Label21: TLabel
                Left = 385
                Top = 73
                Width = 69
                Height = 13
                Caption = 'Valor COFINS:'
              end
              object Label22: TLabel
                Left = 407
                Top = 46
                Width = 47
                Height = 13
                Caption = 'Valor PIS:'
              end
              object Label23: TLabel
                Left = 562
                Top = 18
                Width = 77
                Height = 13
                Caption = 'Total Item Esp.:'
              end
              object Label24: TLabel
                Left = 37
                Top = 126
                Width = 63
                Height = 13
                Caption = 'ICMS Retido:'
              end
              object Label14: TLabel
                Left = 210
                Top = 130
                Width = 65
                Height = 13
                Caption = 'Valor Seguro:'
              end
              object edtBIcms: TCurrencyEdit
                Left = 105
                Top = 16
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object edtValorIcms: TCurrencyEdit
                Left = 105
                Top = 42
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object edtValorST: TCurrencyEdit
                Left = 105
                Top = 96
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
              object edtBSt: TCurrencyEdit
                Left = 105
                Top = 69
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object edtValorIsento: TCurrencyEdit
                Left = 459
                Top = 95
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
              end
              object edtValorOutras: TCurrencyEdit
                Left = 459
                Top = 122
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
              end
              object edtValorIpi: TCurrencyEdit
                Left = 281
                Top = 44
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 6
              end
              object edtValorFrete: TCurrencyEdit
                Left = 281
                Top = 98
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 7
              end
              object edtValorProd: TCurrencyEdit
                Left = 281
                Top = 72
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 8
              end
              object edtTotalNF: TCurrencyEdit
                Left = 642
                Top = 42
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 9
              end
              object edtDescontos: TCurrencyEdit
                Left = 458
                Top = 15
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 10
              end
              object edtCreditoIcms: TCurrencyEdit
                Left = 282
                Top = 16
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 11
              end
              object edtValorCofins: TCurrencyEdit
                Left = 458
                Top = 68
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 12
              end
              object edtValorPis: TCurrencyEdit
                Left = 458
                Top = 42
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 13
              end
              object edtICMSRetido: TCurrencyEdit
                Left = 105
                Top = 124
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 14
              end
              object edtItemEspecial: TCurrencyEdit
                Left = 642
                Top = 15
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 15
              end
              object edtSeguro: TCurrencyEdit
                Left = 281
                Top = 125
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 16
              end
            end
            object mmoObs: TMemo
              Left = 6
              Top = 198
              Width = 845
              Height = 158
              Anchors = [akLeft, akTop, akRight]
              ScrollBars = ssVertical
              TabOrder = 1
            end
            object edtCNPJDestinatario: TEdit
              Left = 760
              Top = 168
              Width = 89
              Height = 21
              TabOrder = 2
              Visible = False
            end
          end
          object tsItens: TTabSheet
            Caption = 'Produtos/Servi'#231'os'
            ImageIndex = 1
            OnShow = tsItensShow
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 1071
              Height = 370
              Align = alClient
              TabOrder = 0
              object cxGrid1DBTableViewItens: TcxGridDBTableView
                PopupMenu = pmGrid
                NavigatorButtons.ConfirmDelete = False
                OnCustomDrawCell = cxGrid1DBTableViewItensCustomDrawCell
                DataController.DataSource = dsItens
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                object cxgrdbclmnGrid1DBTableView1sequencia: TcxGridDBColumn
                  DataBinding.FieldName = 'sequencia'
                  Visible = False
                end
                object cxgrdbclmnGrid1DBTableView1codigo: TcxGridDBColumn
                  Caption = 'C'#243'digo do Fornec.'
                  DataBinding.FieldName = 'codigo'
                  Width = 94
                end
                object cxgrdbclmnGrid1DBTableView1codigo_gravar: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'codigo_gravar'
                  Width = 39
                end
                object cxgrdbclmnGrid1DBTableView1ean: TcxGridDBColumn
                  DataBinding.FieldName = 'ean'
                  Width = 88
                end
                object cxgrdbclmnGrid1DBTableView1descricao: TcxGridDBColumn
                  Caption = 'Descri'#231#227'o do Produto'
                  DataBinding.FieldName = 'descricao'
                  Width = 296
                end
                object cxgrdbclmnGrid1DBTableView1unidade: TcxGridDBColumn
                  Caption = 'UN'
                  DataBinding.FieldName = 'unidade'
                  HeaderAlignmentHorz = taCenter
                  Width = 30
                end
                object cxgrdbclmnGrid1DBTableView1ncm: TcxGridDBColumn
                  Caption = 'NCM'
                  DataBinding.FieldName = 'ncm'
                end
                object cxgrdbclmnGrid1DBTableView1cest: TcxGridDBColumn
                  Caption = 'CEST'
                  MinWidth = 10
                  Width = 10
                end
                object cxgrdbclmnGrid1DBTableView1cst_icms: TcxGridDBColumn
                  Caption = 'CST/CSOSN'
                  DataBinding.FieldName = 'cst_icms'
                  HeaderAlignmentHorz = taCenter
                  Width = 63
                end
                object cxgrdbclmnGrid1DBTableView1cfop_nf_entrada: TcxGridDBColumn
                  Caption = 'CFOP Entr.'
                  DataBinding.FieldName = 'cfop_nf_entrada'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 59
                end
                object cxgrdbclmnGrid1DBTableView1cfop_gravar: TcxGridDBColumn
                  Caption = 'CFOP'
                  DataBinding.FieldName = 'cfop_gravar'
                  HeaderAlignmentHorz = taCenter
                  Width = 32
                end
                object cxgrdbclmnGrid1DBTableView1quantidade: TcxGridDBColumn
                  Caption = 'Qtde'
                  DataBinding.FieldName = 'quantidade'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 59
                end
                object cxgrdbclmnGrid1DBTableView1quantidade_emb: TcxGridDBColumn
                  Caption = 'Capac. Emb.'
                  DataBinding.FieldName = 'quantidade_emb'
                end
                object cxgrdbclmnGrid1DBTableView1valor_compra_anterior: TcxGridDBColumn
                  Caption = 'Ultimo Custo'
                  DataBinding.FieldName = 'valor_compra_anterior'
                end
                object cxgrdbclmnGrid1DBTableView1valor_unitario: TcxGridDBColumn
                  Caption = 'Valor Embal.'
                  DataBinding.FieldName = 'valor_unitario'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 66
                end
                object cxgrdbclmnGrid1DBTableView1valor_desconto: TcxGridDBColumn
                  Caption = 'Vlr. Desc'
                  DataBinding.FieldName = 'valor_desconto'
                  HeaderAlignmentHorz = taCenter
                  Width = 55
                end
                object cxgrdbclmnGrid1DBTableView1total_item: TcxGridDBColumn
                  Caption = 'Total '#205'tem'
                  DataBinding.FieldName = 'total_item'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 66
                end
                object cxgrdbclmnGrid1DBTableView1Percentual_Diferenca_Compra: TcxGridDBColumn
                  Caption = '%Dif. Compra'
                  DataBinding.FieldName = 'percentual_diferenca_compra'
                end
                object cxgrdbclmnGrid1DBTableView1base_icms: TcxGridDBColumn
                  Caption = 'Base ICMS'
                  DataBinding.FieldName = 'base_icms'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 56
                end
                object cxgrdbclmnGrid1DBTableView1valor_icms: TcxGridDBColumn
                  Caption = 'Vlr. ICMS'
                  DataBinding.FieldName = 'valor_icms'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 61
                end
                object cxgrdbclmnGrid1DBTableView1aliquota_icms: TcxGridDBColumn
                  Caption = '% ICMS'
                  DataBinding.FieldName = 'aliquota_icms'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 44
                end
                object cxgrdbclmnGrid1DBTableView1cst_ipi: TcxGridDBColumn
                  Caption = 'CST IPI'
                  DataBinding.FieldName = 'cst_ipi'
                  HeaderAlignmentHorz = taCenter
                  Width = 41
                end
                object cxgrdbclmnGrid1DBTableView1valor_ipi: TcxGridDBColumn
                  Caption = 'Vlr. IPI'
                  DataBinding.FieldName = 'valor_ipi'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 50
                end
                object cxgrdbclmnGrid1DBTableView1aliquota_ipi: TcxGridDBColumn
                  Caption = '% IPI'
                  DataBinding.FieldName = 'aliquota_ipi'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 45
                end
                object cxGrid1DBTableViewItenscst_pis: TcxGridDBColumn
                  Caption = 'CST PIS'
                  DataBinding.FieldName = 'cst_pis'
                  HeaderAlignmentHorz = taCenter
                  Width = 43
                end
                object cxgrdbclmnGrid1DBTableView1base_pis: TcxGridDBColumn
                  Caption = 'Base PIS'
                  DataBinding.FieldName = 'base_pis'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 59
                end
                object cxgrdbclmnGrid1DBTableView1aliquota_pis: TcxGridDBColumn
                  Caption = '% PIS'
                  DataBinding.FieldName = 'aliquota_pis'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 47
                end
                object cxgrdbclmnGrid1DBTableView1valor_pis: TcxGridDBColumn
                  Caption = 'Vlr. PIS'
                  DataBinding.FieldName = 'valor_pis'
                  HeaderAlignmentHorz = taRightJustify
                end
                object cxGrid1DBTableViewItenscst_cofins: TcxGridDBColumn
                  Caption = 'CST COFINS'
                  DataBinding.FieldName = 'cst_cofins'
                  HeaderAlignmentHorz = taCenter
                  Width = 65
                end
                object cxgrdbclmnGrid1DBTableView1base_cofins: TcxGridDBColumn
                  Caption = 'Base COFINS'
                  DataBinding.FieldName = 'base_cofins'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 81
                end
                object cxgrdbclmnGrid1DBTableView1aliquota_cofins: TcxGridDBColumn
                  Caption = '% COFINS'
                  DataBinding.FieldName = 'aliquota_cofins'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 57
                end
                object cxgrdbclmnGrid1DBTableView1valor_cofins: TcxGridDBColumn
                  Caption = 'Vlr. COFINS'
                  DataBinding.FieldName = 'valor_cofins'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 62
                end
                object cxgrdbclmnGrid1DBTableView1valor_frete: TcxGridDBColumn
                  Caption = 'Vlr. Frete'
                  DataBinding.FieldName = 'valor_frete'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 50
                end
                object cxgrdbclmnGrid1DBTableView1valor_seguro: TcxGridDBColumn
                  Caption = 'Vlr. Seguro'
                  DataBinding.FieldName = 'valor_seguro'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 58
                end
                object cxgrdbclmnGrid1DBTableView1valor_outras_despesas: TcxGridDBColumn
                  Caption = 'Vlr. Outras Desp.'
                  DataBinding.FieldName = 'valor_outras_despesas'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 100
                end
                object cxgrdbclmnGrid1DBTableView1base_icms_st: TcxGridDBColumn
                  Caption = 'Base ICMS ST'
                  DataBinding.FieldName = 'base_icms_st'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 71
                end
                object cxgrdbclmnGrid1DBTableView1valor_icms_st: TcxGridDBColumn
                  Caption = 'Vlr. ICMS ST'
                  DataBinding.FieldName = 'valor_icms_st'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 76
                end
                object cxgrdbclmnGrid1DBTableView1perc_mva: TcxGridDBColumn
                  Caption = '% MVA'
                  DataBinding.FieldName = 'perc_mva'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 52
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableViewItens
              end
            end
          end
          object tsTransporte: TTabSheet
            Caption = 'Transporte'
            ImageIndex = 2
            OnShow = tsTransporteShow
            object grpInfoTransp: TGroupBox
              Left = 8
              Top = 3
              Width = 582
              Height = 137
              Caption = 'Dados de Transporte'
              TabOrder = 0
              object Label38: TLabel
                Left = 4
                Top = 22
                Width = 114
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Nome/Raz'#227'o Social:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label39: TLabel
                Left = 4
                Top = 49
                Width = 114
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Frete por conta:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label47: TLabel
                Left = 58
                Top = 78
                Width = 60
                Height = 13
                Alignment = taRightJustify
                Caption = 'Quantidade:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label50: TLabel
                Left = 77
                Top = 105
                Width = 41
                Height = 13
                Alignment = taRightJustify
                Caption = 'N'#250'mero:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label49: TLabel
                Left = 253
                Top = 104
                Width = 33
                Height = 13
                Alignment = taRightJustify
                Caption = 'Marca:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label48: TLabel
                Left = 246
                Top = 79
                Width = 40
                Height = 13
                Alignment = taRightJustify
                Caption = 'Esp'#233'cie:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label52: TLabel
                Left = 415
                Top = 104
                Width = 63
                Height = 13
                Alignment = taRightJustify
                Caption = 'Peso L'#237'quido:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label51: TLabel
                Left = 422
                Top = 79
                Width = 56
                Height = 13
                Alignment = taRightJustify
                Caption = 'Peso Bruto:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label40: TLabel
                Left = 308
                Top = 49
                Width = 114
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Placa:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label41: TLabel
                Left = 519
                Top = 48
                Width = 17
                Height = 13
                Caption = 'UF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clInfoText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object edtCnpjTransp: TEdit
                Left = 123
                Top = 19
                Width = 104
                Height = 21
                Color = 16249066
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object edtNomeTransp: TEdit
                Left = 234
                Top = 19
                Width = 335
                Height = 21
                Color = 16249066
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object cbbTipoFrete: TComboBox
                Left = 123
                Top = 46
                Width = 145
                Height = 21
                ItemHeight = 13
                TabOrder = 2
                Text = 'Selecione...'
                Items.Strings = (
                  'CIF'
                  'FOB')
              end
              object edtQuantidade: TCurrencyEdit
                Left = 123
                Top = 75
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object edtNumero: TEdit
                Left = 123
                Top = 102
                Width = 86
                Height = 21
                Color = 16249066
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object edtEspecie: TEdit
                Left = 291
                Top = 76
                Width = 73
                Height = 21
                Color = 16249066
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
              end
              object edtMarca: TEdit
                Left = 291
                Top = 101
                Width = 73
                Height = 21
                Color = 16249066
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
              end
              object edtPesoLiquido: TCurrencyEdit
                Left = 483
                Top = 101
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 7
              end
              object edtPesoBruto: TCurrencyEdit
                Left = 483
                Top = 75
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 8
              end
              object edtPlaca: TEdit
                Left = 424
                Top = 45
                Width = 73
                Height = 21
                Color = 16249066
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
              end
              object edtUF: TEdit
                Left = 539
                Top = 45
                Width = 30
                Height = 21
                Color = 16249066
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
              end
            end
          end
          object tsFaturamento: TTabSheet
            Caption = 'Faturamento'
            ImageIndex = 3
            OnShow = tsFaturamentoShow
            DesignSize = (
              1071
              369)
            object Label25: TLabel
              Left = 8
              Top = 110
              Width = 136
              Height = 20
              AutoSize = False
              Caption = 'Duplicatas Geradas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object cxGrid2: TcxGrid
              Left = 8
              Top = 128
              Width = 1055
              Height = 234
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              object cxGrid2DBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsContaPagar
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.GroupByBox = False
                object cxgrdbclmnGrid2DBTableView1id: TcxGridDBColumn
                  DataBinding.FieldName = 'id'
                  Visible = False
                end
                object cxgrdbclmnGrid2DBTableView1codigo: TcxGridDBColumn
                  DataBinding.FieldName = 'codigo'
                end
                object cxgrdbclmnGrid2DBTableView1data_pagamento: TcxGridDBColumn
                  DataBinding.FieldName = 'data_pagamento'
                  HeaderAlignmentHorz = taCenter
                  Width = 92
                end
                object cxgrdbclmnGrid2DBTableView1dia_semana: TcxGridDBColumn
                  Caption = 'Dia'
                  DataBinding.FieldName = 'dia_semana'
                  Width = 162
                end
                object cxgrdbclmnGrid2DBTableView1valor_pagamento: TcxGridDBColumn
                  DataBinding.FieldName = 'valor_pagamento'
                  HeaderAlignmentHorz = taRightJustify
                  Width = 114
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
            object grpInformacoesFat: TGroupBox
              Left = 8
              Top = 4
              Width = 701
              Height = 101
              Caption = 'Dados de Duplicatas a Pagar'
              TabOrder = 1
              object Label85: TLabel
                Left = 12
                Top = 72
                Width = 89
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Qde. Parcelas:'
              end
              object Label26: TLabel
                Left = 34
                Top = 46
                Width = 67
                Height = 13
                Caption = 'Total Faturar:'
              end
              object Label84: TLabel
                Left = 12
                Top = 21
                Width = 89
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Hist'#243'rico:'
              end
              object Label28: TLabel
                Left = 156
                Top = 72
                Width = 89
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Intervalo Dias:'
              end
              object Label29: TLabel
                Left = 284
                Top = 72
                Width = 89
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Dia Base: '
              end
              object btnlimparFinanceiro: TSpeedButton
                Tag = 3
                Left = 524
                Top = 14
                Width = 162
                Height = 26
                Cursor = crHandPoint
                Action = actlimparFinanceiro
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000005050E4135055E8685257E8C05157E7E75256E8D65257
                  E7C35156E66A4848DA0700000000000000000000000000000000000000000000
                  0000000000005256E53B5256E8EB5257E8FF5257E8FF5257E8FF5257E8FF5257
                  E8FF5257E8FF5256E7E55057E84F000000000000000000000000000000000000
                  0000474DE84F4A4FE7F83C40DFFF3C3FDAFF4E53E6FF5156E7FF5257E8FF5156
                  E7FF3F41DBFF4145DFFF5257E8F85256E93B0000000000000000000000004848
                  DA074046E6E53539DEFF9E9FE9FFD7D7F6FF373AD7FF494EE6FF4B50E6FF3A3C
                  D7FFD7D8F6FFA0A1E9FF4145DFFF5256E8EB5050E4130000000000000000373E
                  E66A3A40E6FF3235D9FFD4D5F6FFFFFFFFFFD7D7F6FF3538D6FF3638D7FFD7D7
                  F6FFFFFFFFFFD7D7F6FF3B3FDAFF4E53E7FF5055E66800000000000000003036
                  E4C33339E5FF343BE5FF2C2FD6FFCECFF5FFFFFFFFFFD6D7F6FFD7D7F6FFFFFF
                  FFFFD7D7F6FF3538D6FF444AE6FF474DE7FF494EE7C00000000000000000292F
                  E4D62C32E5FF2E34E5FF3037E5FF292CD6FFCACBF4FFFFFFFFFFFFFFFFFFD6D7
                  F6FF3234D6FF3E42E5FF3E44E6FF4046E6FF4247E5E700000000000000002328
                  E4E72A30E5FF393FE6FF3F46E6FF3639D7FFDADBF8FFFFFFFFFFFFFFFFFFD7D8
                  F7FF393BD7FF4C51E7FF484EE8FF3E44E7FF3B41E5D600000000000000002127
                  E4C14C51EAFF4D52E9FF3C3ED9FFDADAF7FFFFFFFFFFDBDCF8FFCBCBF3FFFFFF
                  FFFFD8D9F7FF3F42D8FF5A60E9FF5C61EAFF373EE6C40000000000000000161A
                  E468464CE9FF4548DCFFD9D9F7FFFFFFFFFFDBDBF7FF4547D9FF4548DBFFCBCC
                  F3FFFFFFFFFFD9D9F7FF4C4FDEFF565CEAFF2D32E46A00000000000000000D1A
                  E4132129E5EC5357E3FFA3A3E9FFDADAF7FF4C4EDBFF7276EDFF7479EFFF4F51
                  DCFFCCCDF4FFA2A3EAFF5B5FE4FF343BE5E72424DA0700000000000000000000
                  00000811E03B2C34E6F96367E5FF5B5DE0FF8387F0FF8589F1FF868AF1FF878B
                  F1FF6063E1FF686BE4FF3B40E8F91D23E54F0000000000000000000000000000
                  0000000000000309E14F1820E4E7666BEDFF9296F2FF999CF3FF999CF3FF9598
                  F3FF6C71EEFF232BE5EC1519E53B000000000000000000000000000000000000
                  000000000000000000000000DA070007E26A030AE2C31F25E5DA1E26E4E9090F
                  E1C00911E1680D0DE41300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                ParentFont = False
              end
              object btnCopiarDuplicatasNF: TSpeedButton
                Tag = 3
                Left = 524
                Top = 40
                Width = 162
                Height = 26
                Cursor = crHandPoint
                Action = actCopiarDuplicatasNF
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                  FF00FFFFFF00FEF5EF02B48157FFB07E55FFA08859FF998A5BFFA47350FFA06F
                  4EFF9D6C4DFF99684BFF96654AFF93634880FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FEF6F007B78459FFFEF6F0FFCFE9C9FF7CD58BFFD2E7C7FFFEEF
                  E5FFFDEDE1FFFDEDE0FFF8EFE8FFBD9F8EFF92624860FFFFFF00B48157FFB07E
                  55FFAC7A53FFAB7A57FFB98659FFF7F3EAFFBCE4BBFF71D484FF6AD17FFFA0DB
                  A3FFF0EAD7FFFDECDFFFFEF8F3FFE9DFD9FF956449F192624839B78459FFFEF6
                  F0FFFEF4ECFFD9EACFFF82B870FF70D283FF66CF7BFF83DC94FF80DB91FF6ED3
                  82FF75D285FFC1E2B8FFF4F1E4FFFEF8F4FFE0CDC2FF946449FFBA875AF0FEF5
                  EFFFB2E2B4FF66CF7AFF94E3A3FF8DE09CFF8CE09BFF92E2A1FF89DE99FF7AD8
                  8CFF6CD280FF93D99AFFE4E9D0FFFDEDE0FFFDEEE3FF96664AFFBD8A5BFFBEE6
                  BFFF8ADF9AFF6AD07EFF79C174FF9FDEA7FF92DA9DFF8CE09BFF7CD98EFF75D3
                  86FFC6E6C1FFFEF1E7FFFEEFE4FFFEEDE1FFFDEDE0FF99684BFFA89E65FF81D6
                  8FFFB2E3B5FFECF1E1FFC5925FFFFEF6F1FFD0EACCFF78D78BFF9DDDA5FFEFF1
                  E4FFFEF4EDFFFEF3EAFFFEF1E7FFFEEFE4FFFEEFE4FF9C6B4CFFA4A467FFD9ED
                  D4FFFEF6F0FFFEF6F0FFC89460FFFEF6F1FFDFEED8FFCEEACBFFFEF6F0FFFEF6
                  F0FFFEF5EFFFFEF4EDFFFEF3EAFFFEF1E7FFFEF1E7FF9E6D4DFFBE9661FFFBF5
                  EFFFFEF6F0FFFEF6F0FFCA9762FFFEF6F1FFFEF6F0FFFEF6F0FFFEF6F0FFFEF6
                  F0FFFEF6F0FFFEF5EFFFFEF4EDFFFEF3EAFFFEF2E9FFA1704FFFC89460FFFEF6
                  F1FFFEF6F0FFFEF6F0FFCD9963FFFEF6F1FFFEF6F0FFFEF6F0FFFEF6F0FFFEF6
                  F0FFFEF6F0FFFEF6F0FFFEF5EFFFFEF4EDFFFEF4ECFFA47350FFCA9762FFFEF6
                  F1FFFEF6F0FFFEF6F0FFCF9B64FFFEF6F1FFF3DEB3FFF1D7AAFFEECD9DFFEAC0
                  8FFFE7B683FFE6B17CFFE6B17CFFE6B17CFFFEF5EFFFA77651FFCD9963FFFEF6
                  F1FFFEF6F0FFFEF6F0FFD19D64FFFEF6F1FFF3DEB2FFF1D6A9FFEECC9BFFEABF
                  8DFFE7B581FFE6B07AFFE6B07AFFE6B07AFFFEF6F0FFAA7953FFCF9B64FFFEF6
                  F1FFF3DEB3FFF1D8ACFFD29E65FFFEF8F3FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7
                  F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF8F3FFAD7B54FFD19D64FFFEF6
                  F1FFF3DEB2FFF1D6AAFFD4A066FFD29E65FFD09C64FFCD9963FFCA9761FFC794
                  60FFC3905EFFC08D5DFFBC895BFFB88659FFB48258FFB07E56FFD29E65FFFEF8
                  F3FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7
                  F2FFFEF8F3FFAD7B54FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D4A066FFD29E
                  65FFD09C64FFCD9963FFCA9761FFC79460FFC3905EFFC08D5DFFBC895BFFB886
                  59FFB48258FFB07E56FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00}
                ParentFont = False
              end
              object seNParcelas: TSpinEdit
                Left = 104
                Top = 69
                Width = 49
                Height = 22
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 0
                MinValue = 0
                ParentFont = False
                TabOrder = 0
                Value = 1
                OnChange = seNParcelasChange
                OnKeyPress = seNParcelasKeyPress
              end
              object edtValorFaturar: TCurrencyEdit
                Left = 103
                Top = 43
                Width = 87
                Height = 21
                TabStop = False
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object edtHistorico: TEdit
                Left = 103
                Top = 18
                Width = 408
                Height = 21
                TabOrder = 2
                Text = 'COMPRA DE MERCADORIA REF. NF '
              end
              object seIntervaloDias: TSpinEdit
                Left = 248
                Top = 69
                Width = 49
                Height = 22
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 0
                MinValue = 0
                ParentFont = False
                TabOrder = 3
                Value = 30
                OnChange = seIntervaloDiasChange
                OnKeyPress = seNParcelasKeyPress
              end
              object seDiaBase: TSpinEdit
                Left = 376
                Top = 69
                Width = 49
                Height = 22
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 31
                MinValue = 0
                ParentFont = False
                TabOrder = 4
                Value = 0
                OnChange = seIntervaloDiasChange
                OnKeyPress = seNParcelasKeyPress
              end
              object chkEntrada: TCheckBox
                Left = 448
                Top = 72
                Width = 97
                Height = 17
                Caption = 'Entrada'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                OnClick = chkEntradaClick
              end
            end
          end
          object TabConsultaSefaz: TTabSheet
            Caption = 'Gerenciar Manisfesta'#231#227'o'
            ImageIndex = 5
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 1071
              Height = 34
              Align = alTop
              TabOrder = 0
              object btConsultarXmlsSefaz: TSpeedButton
                Left = 8
                Top = 4
                Width = 152
                Height = 25
                Caption = 'Pesquisar NFe SEFAZ'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = btConsultarXmlsSefazClick
              end
              object btnInformaCienciaOperacao: TSpeedButton
                Tag = 3
                Left = 184
                Top = 4
                Width = 152
                Height = 25
                Cursor = crHandPoint
                Caption = 'Ciencia da Emiss'#227'o'
                Enabled = False
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object btnInformaConfirmaOperacao: TSpeedButton
                Tag = 3
                Left = 343
                Top = 4
                Width = 152
                Height = 25
                Cursor = crHandPoint
                Caption = 'Confirma Opera'#231#227'o'
                Enabled = False
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object btnInformaDesconheceOperacao: TSpeedButton
                Tag = 3
                Left = 500
                Top = 4
                Width = 152
                Height = 25
                Cursor = crHandPoint
                Caption = 'Desconhe a Opera'#231#227'o'
                Enabled = False
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object btnInformaOperacaoNaoRealizada: TSpeedButton
                Tag = 3
                Left = 657
                Top = 4
                Width = 152
                Height = 25
                Cursor = crHandPoint
                Caption = 'Opera'#231#227'o n'#227'o Realizada'
                Enabled = False
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object btnDownLoadXML: TSpeedButton
                Tag = 3
                Left = 815
                Top = 4
                Width = 152
                Height = 25
                Cursor = crHandPoint
                Caption = 'Download do XML'
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = btnDownLoadXMLClick
              end
            end
            object DBGridManifestos: TDBGrid
              Left = 0
              Top = 34
              Width = 1071
              Height = 336
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              DataSource = dsNFSEFAZ
              FixedColor = 10053171
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DTEVENTO'
                  Title.Caption = 'Dt Consulta'
                  Width = 82
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CHAVE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SERIE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMERO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SituacaoNota'
                  Title.Caption = 'Situa'#231#227'o NF'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SIT_EVENTO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTEMISSAO'
                  Title.Caption = 'Emitida'
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EMIT_CNPJ'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EMIT_IE'
                  Title.Caption = 'IE'
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EMIT_RAZAO'
                  Width = 289
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORTOTAL'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PROT_EVENTO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'JUSTIFICATIVA'
                  Visible = True
                end>
            end
          end
        end
        object pgcValidacoes: TPageControl
          Left = 1
          Top = 398
          Width = 1079
          Height = 165
          ActivePage = tsValidacoes
          Align = alBottom
          Images = cxImageList
          TabOrder = 1
          object tsValidacoes: TTabSheet
            Caption = 'Avisos e Inconsist'#234'ncias de Importa'#231#227'o'
            ImageIndex = -1
            object cxGrid3: TcxGrid
              Left = 0
              Top = 0
              Width = 1071
              Height = 136
              Align = alClient
              TabOrder = 0
              object cxGrid3DBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsValidacao
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GridLines = glNone
                OptionsView.GroupByBox = False
                OptionsView.Header = False
                object cxGrid3DBTableView1Column1: TcxGridDBColumn
                  Width = 20
                end
                object cxGrid3DBTableView1id: TcxGridDBColumn
                  DataBinding.FieldName = 'id'
                  Visible = False
                end
                object cxGrid3DBTableView1Flag: TcxGridDBColumn
                  Caption = '#'
                  DataBinding.FieldName = 'tipo'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = cxImageList
                  Properties.Items = <
                    item
                      ImageIndex = 0
                      Value = 'Cr'#237'tica'
                    end
                    item
                      ImageIndex = 2
                      Value = 'Informa'#231#227'o'
                    end
                    item
                      ImageIndex = 1
                      Value = 'Erro'
                    end>
                  Width = 24
                end
                object cxGrid3DBTableView1tipo: TcxGridDBColumn
                  DataBinding.FieldName = 'tipo'
                  Width = 109
                end
                object cxGrid3DBTableView1descricao: TcxGridDBColumn
                  DataBinding.FieldName = 'descricao'
                  Width = 453
                end
                object cxGrid3DBTableView1valor: TcxGridDBColumn
                  DataBinding.FieldName = 'valor'
                  Width = 452
                end
              end
              object cxGrid3Level1: TcxGridLevel
                GridView = cxGrid3DBTableView1
              end
            end
          end
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 1082
      inherited PanelCabecalho: TPanel
        Width = 1082
        inherited LabelTitulo: TLabel
          Left = 690
          Top = 291
        end
        object lblAcao: TLabel [1]
          Left = 753
          Top = 16
          Width = 3
          Height = 13
        end
        inherited PanelNavigator: TPanel
          Width = 1082
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 1082
            inherited BtnFecharTela: TSpeedButton
              Left = 999
            end
            object btnGravarDados: TSpeedButton
              Tag = 3
              Left = 153
              Top = 4
              Width = 152
              Height = 25
              Cursor = crHandPoint
              Action = actGravarDados
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object btnPortalNFE: TSpeedButton
              Tag = 3
              Left = 473
              Top = 4
              Width = 152
              Height = 25
              Cursor = crHandPoint
              Action = actPortalNFE
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object btnSelecionarArquivo: TSpeedButton
              Tag = 3
              Left = 1
              Top = 4
              Width = 152
              Height = 25
              Cursor = crHandPoint
              Action = actSelecionarArquivo
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object btnSiteSefazRS: TSpeedButton
              Tag = 3
              Left = 321
              Top = 4
              Width = 152
              Height = 25
              Cursor = crHandPoint
              Action = actSiteSefazRS
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object ckTestaItem: TCheckBox
              Left = 644
              Top = 9
              Width = 181
              Height = 17
              Caption = 'Testa Capacidade Embalagem'
              TabOrder = 0
            end
            object ckImportaFinanceiro: TCheckBox
              Left = 832
              Top = 9
              Width = 150
              Height = 17
              Caption = 'N'#227'o Importar Financeiro'
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 924
    Top = 10
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.PathNFe = 'C:\Easy2Solutions\NFe\Recebidos'
    Configuracoes.Arquivos.PathInu = 'C:\Easy2Solutions\NFe\Recebidos'
    Configuracoes.WebServices.UF = 'RS'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 538
    Top = 8
  end
  object actPrincipal: TActionList
    Images = cxImageList
    OnUpdate = actPrincipalUpdate
    Left = 784
    Top = 9
    object actSelecionarArquivo: TAction
      Caption = 'Processar Arquivo'
      Hint = 'Clique para abrir um arquivo do tipo .xml em seu computador...'
      OnExecute = actSelecionarArquivoExecute
    end
    object actGravarDados: TAction
      Caption = '&Gravar Nota Fiscal'
      Hint = 'Clique para que seja feita a grava'#231#227'o da nota fiscal importada.'
      OnExecute = actGravarDadosExecute
    end
    object actGerarParcelas: TAction
      Caption = 'Gerar Parcelas'
      Hint = 'Clique para gerar duplicatas com base nos valores importados'
    end
    object actVincularProduto: TAction
      Caption = 'Vincular Produto'
      ShortCut = 16470
      OnExecute = actVincularProdutoExecute
    end
    object actAbrirCadProdutoVinc: TAction
      Caption = 'Abrir Cadastro Prod. Vinculado'
    end
    object actCfopConvert: TAction
      Caption = 'Adicionar Convers'#227'o CFOP'
      ShortCut = 16451
      OnExecute = actCfopConvertExecute
    end
    object actCadFornecedor: TAction
      Caption = 'Cadastrar'
      OnExecute = actCadFornecedorExecute
    end
    object actSiteSefazRS: TAction
      Caption = 'SEFAZ-RS'
      OnExecute = actSiteSefazRSExecute
    end
    object actPortalNFE: TAction
      Caption = 'Portal NF-e'
      OnExecute = actPortalNFEExecute
    end
    object actlimparFinanceiro: TAction
      Caption = 'Ignorar Financeiro'
      OnExecute = actlimparFinanceiroExecute
    end
    object actAlterarCapacEmb: TAction
      Caption = 'Alterar Capacidade da Embalagem'
      ShortCut = 16449
      OnExecute = actAlterarCapacEmbExecute
    end
    object actCadNCM: TAction
      Caption = 'Cadastrar NCM'
      OnExecute = actCadNCMExecute
    end
    object actCopiarDuplicatasNF: TAction
      Caption = 'Copiar Duplicatas NF'
      ImageIndex = 3
      OnExecute = actCopiarDuplicatasNFExecute
    end
  end
  object dlgOpenXML: TOpenDialog
    Filter = 'Arquivos XML|*.xml'
    InitialDir = 'C:\'
    Title = 'Administrativo'
    Left = 813
    Top = 9
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'sequencia'
    Params = <>
    Left = 112
    Top = 9
    object cdsItenssequencia: TIntegerField
      FieldName = 'sequencia'
      Visible = False
    end
    object cdsItenscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object cdsItenscodigo_gravar: TStringField
      FieldName = 'codigo_gravar'
      Size = 30
    end
    object cdsItensdescricao: TStringField
      FieldName = 'descricao'
      Size = 400
    end
    object cdsItensncm: TStringField
      FieldName = 'ncm'
      Size = 10
    end
    object cdsItenscfop_nf_entrada: TIntegerField
      Alignment = taCenter
      FieldName = 'cfop_nf_entrada'
    end
    object cdsItenscfop_gravar: TIntegerField
      Alignment = taCenter
      FieldName = 'cfop_gravar'
    end
    object cdsItensunidade: TStringField
      Alignment = taCenter
      FieldName = 'unidade'
      Size = 10
    end
    object cdsItensquantidade: TFloatField
      FieldName = 'quantidade'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_parcial: TFloatField
      FieldName = 'valor_parcial'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      DisplayFormat = ',0.00'
    end
    object cdsItenstotal_item: TFloatField
      FieldName = 'total_item'
      DisplayFormat = ',0.00'
    end
    object cdsItenscst_icms: TStringField
      Alignment = taCenter
      FieldName = 'cst_icms'
      Size = 3
    end
    object cdsItensbase_icms: TFloatField
      FieldName = 'base_icms'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_icms: TFloatField
      FieldName = 'valor_icms'
      DisplayFormat = ',0.00'
    end
    object cdsItensaliquota_icms: TFloatField
      FieldName = 'aliquota_icms'
      DisplayFormat = ',0.00'
    end
    object cdsItenscst_ipi: TStringField
      Alignment = taCenter
      FieldName = 'cst_ipi'
      Size = 3
    end
    object cdsItensvalor_ipi: TFloatField
      FieldName = 'valor_ipi'
      DisplayFormat = ',0.00'
    end
    object cdsItensaliquota_ipi: TFloatField
      FieldName = 'aliquota_ipi'
      DisplayFormat = ',0.00'
    end
    object cdsItensbase_pis: TFloatField
      FieldName = 'base_pis'
      DisplayFormat = ',0.00'
    end
    object cdsItensaliquota_pis: TFloatField
      FieldName = 'aliquota_pis'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_pis: TFloatField
      FieldName = 'valor_pis'
      DisplayFormat = ',0.00'
    end
    object cdsItensbase_cofins: TFloatField
      FieldName = 'base_cofins'
      DisplayFormat = ',0.00'
    end
    object cdsItensaliquota_cofins: TFloatField
      FieldName = 'aliquota_cofins'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_cofins: TFloatField
      FieldName = 'valor_cofins'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_frete: TFloatField
      FieldName = 'valor_frete'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_seguro: TFloatField
      FieldName = 'valor_seguro'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_outras_despesas: TFloatField
      FieldName = 'valor_outras_despesas'
      DisplayFormat = ',0.00'
    end
    object cdsItensbase_icms_st: TFloatField
      FieldName = 'base_icms_st'
      DisplayFormat = ',0.00'
    end
    object cdsItensvalor_icms_st: TFloatField
      FieldName = 'valor_icms_st'
      DisplayFormat = ',0.00'
    end
    object cdsItensaliquota_icms_st: TFloatField
      FieldName = 'aliquota_icms_st'
    end
    object cdsItensperc_mva: TFloatField
      FieldName = 'perc_mva'
      DisplayFormat = ',0.00'
    end
    object cdsItenscst_pis: TStringField
      Alignment = taCenter
      FieldName = 'cst_pis'
      Size = 3
    end
    object cdsItenscst_cofins: TStringField
      Alignment = taCenter
      FieldName = 'cst_cofins'
      Size = 3
    end
    object cdsItensquantidade_emb: TFloatField
      DisplayLabel = 'Quant. Emb.'
      FieldName = 'quantidade_emb'
      DisplayFormat = ',0.00'
    end
    object cdsItensean: TStringField
      DisplayLabel = 'EAN'
      FieldName = 'ean'
    end
    object cdsItenseantrib: TStringField
      DisplayLabel = 'EAN Trib'
      FieldName = 'eantrib'
    end
    object cdsItensvalor_compra_anterior: TFloatField
      FieldName = 'valor_compra_anterior'
      DisplayFormat = ',0.00'
    end
    object cdsItenspercentual_diferenca_compra: TFloatField
      FieldName = 'percentual_diferenca_compra'
    end
    object cdsItensorigem_produto: TStringField
      FieldName = 'origem_produto'
      Size = 1
    end
    object cdsItenscest: TStringField
      FieldName = 'cest'
      Size = 10
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 141
    Top = 9
  end
  object pmGrid: TPopupMenu
    OnPopup = pmGridPopup
    Left = 197
    Top = 9
    object CadastrarReferenciaMarcados: TMenuItem
      Action = actVincularProduto
      Caption = 'Vincular a outro Produto Cadastrado'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AdicionarProdutoRapido: TMenuItem
      Caption = 'Fazer Cadastro Rapido do Produto'
      ShortCut = 16464
      OnClick = AdicionarProdutoRapidoClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AlterarCapacidadedaEmbalagem1: TMenuItem
      Action = actAlterarCapacEmb
      Caption = 'Alterar Capacidade da Embalagem de Compra'
    end
    object CadastrodoProduto1: TMenuItem
      Action = actAbrirCadProdutoVinc
      Caption = 'Abrir Cadastro do Produto Vinculado'
      Visible = False
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CadastrarNCM1: TMenuItem
      Action = actCadNCM
      Caption = 'Cadastrar NCM Manualmente'
      ShortCut = 16462
    end
    object AdicionarConversoCFOP1: TMenuItem
      Action = actCfopConvert
    end
  end
  object cdsContaPagar: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id'
    Params = <>
    Left = 285
    Top = 9
    object cdsContaPagarid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsContaPagarcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagardata_pagamento: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Pagamento'
      FieldName = 'data_pagamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarvalor_pagamento: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_pagamento'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
    end
    object cdsContaPagardia_semana: TStringField
      FieldName = 'dia_semana'
      Size = 25
    end
  end
  object dsContaPagar: TDataSource
    DataSet = cdsContaPagar
    Left = 253
    Top = 9
  end
  object dsOpEstoque: TDataSource
    AutoEdit = False
    DataSet = sqlOpEstoque
    Left = 397
    Top = 9
  end
  object dsContaDespesa: TDataSource
    AutoEdit = False
    DataSet = sqlContaDespesa
    Left = 460
    Top = 9
  end
  object cdsTemp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PDCPA13ID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'PRODICOD'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 597
    Top = 9
    Data = {
      490000009619E0BD010000001800000002000000000003000000490009504443
      5041313349440100490000000100055749445448020002000D000850524F4449
      434F4404000100000000000000}
    object cdsTempPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Size = 13
    end
    object cdsTempPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
  end
  object dsTemp: TDataSource
    DataSet = cdsTemp
    Left = 629
    Top = 9
  end
  object cdsValidacao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 81
    Top = 9
    Data = {
      760000009619E0BD010000001800000004000000000003000000760004746970
      6F01004900000001000557494454480200020023000964657363726963616F01
      0049000000010005574944544802000200C8000576616C6F7201004900000001
      0005574944544802000200640002696404000100000000000000}
    object cdsValidacaotipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsValidacaodescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsValidacaovalor: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsValidacaoid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsValidacao: TDataSource
    DataSet = cdsValidacao
    Left = 52
    Top = 9
  end
  object cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 656246
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000330000
          0033000000330000003300000033000000330000003300000033000000330000
          00330000003300000033000000330000003300000033000000333A82CAFF397F
          C8FF387DC7FF387CC7FF397CC7FF397CC7FF387DC7FF387EC9FF387EC9FF387D
          C7FF397CC7FF397CC7FF387CC7FF387DC7FF397FC8FF3A82CAFF3B86CDFF55E3
          FFFF55E3FFFF56E1FFFF56E1FFFF56E2FFFF56E5FFFF55E9FFFF55E9FFFF56E5
          FFFF56E2FFFF56E1FFFF56E1FFFF55E3FFFF55E3FFFF3B86CDFF214A75947AB8
          E4FF52DBFFFF4BD5FFFF4DD5FFFF4DD6FFFF4BDCFFFF67493FFF67493FFF4BDC
          FFFF4DD6FFFF4DD5FFFF4BD5FFFF52DBFFFF7AB8E4FF214A7594000000003F82
          C9FFA3E0FAFF40CFFFFF44CEFFFF46CFFFFF44D6FFFF775C50FF775C50FF44D6
          FFFF46CFFFFF44CEFFFF40CFFFFFA3E0FAFF3F82C9FF00000000000000000E22
          36445B97D4FF9EE8FFFF38C7FFFF3DC8FFFF3DCFFFFF4BBCE9FF4BBCE9FF3DCF
          FFFF3DC8FFFF38C7FFFF9EE8FFFF5B97D4FF0E22364400000000000000000000
          0000255C93BB90BFE6FF6FD7FFFF32C3FFFF34CBFFFF644B3FFF644B3FFF34CB
          FFFF32C3FFFF6FD7FFFF90BFE6FF255C93BB0000000000000000000000000000
          0000000000003C82C9FFC1E8FDFF50CCFFFF27C5FFFF69554CFF69554CFF27C5
          FFFF50CCFFFFC1E8FDFF3C82C9FF000000000000000000000000000000000000
          000000000000122C45585797D5FFC6F3FFFF3ACAFFFF6C5B54FF6C5B54FF3ACA
          FFFFC6F3FFFF5797D5FF122C4558000000000000000000000000000000000000
          000000000000000000002966A2CF86BEEAFFA4ECFFFF6C5D53FF6C5D53FFA4EC
          FFFF86BEEAFF2966A2CF00000000000000000000000000000000000000000000
          000000000000000000000205080A3A83CBFFB2E5FFFF9EC8DEFF9EC8DEFFB2E5
          FFFF3A83CBFF0205080A00000000000000000000000000000000000000000000
          00000000000000000000000000001737566D5398D7FFC1F0FFFFC1F0FFFF5398
          D7FF1737566D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002966A2CF84C3F1FF84C3F1FF2966
          A2CF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000007111A213384CDFF3384CDFF0711
          1A21000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000606111321235F683E42AFC04A4FD2E74549C3D63F43
          B1C32224606A0202060700000000000000000000000000000000000000000000
          0000000000001314353B4C50D6EB5257E8FF5257E8FF5257E8FF5257E8FF5257
          E8FF5257E8FF4A4ED0E5191B484F000000000000000000000000000000000000
          00001618484F484DE1F83C40DFFF3C3FDAFF4E53E6FF5156E7FF5257E8FF5156
          E7FF3F41DBFF4145DFFF5055E2F81314363B0000000000000000000000000202
          06073A3FCFE53539DEFF9E9FE9FFD7D7F6FF373AD7FF494EE6FF4B50E6FF3A3C
          D7FFD7D8F6FFA0A1E9FF4145DFFF4C50D6EB060611130000000000000000171A
          606A3A40E6FF3235D9FFD4D5F6FFFFFFFFFFD7D7F6FF3538D6FF3638D7FFD7D7
          F6FFFFFFFFFFD7D7F6FF3B3FDAFF4E53E7FF21235E680000000000000000252A
          AFC33339E5FF343BE5FF2C2FD6FFCECFF5FFFFFFFFFFD6D7F6FFD7D7F6FFFFFF
          FFFFD7D7F6FF3538D6FF444AE6FF474DE7FF373BAEC000000000000000002328
          C0D62C32E5FF2E34E5FF3037E5FF292CD6FFCACBF4FFFFFFFFFFFFFFFFFFD6D7
          F6FF3234D6FF3E42E5FF3E44E6FF4046E6FF3C41D0E700000000000000002025
          CFE72A30E5FF393FE6FF3F46E6FF3639D7FFDADBF8FFFFFFFFFFFFFFFFFFD7D8
          F7FF393BD7FF4C51E7FF484EE8FF3E44E7FF3237C1D60000000000000000191E
          ADC14C51EAFF4D52E9FF3C3ED9FFDADAF7FFFFFFFFFFDBDCF8FFCBCBF3FFFFFF
          FFFFD8D9F7FF3F42D8FF5A60E9FF5C61EAFF2B30B1C40000000000000000090B
          5D68464CE9FF4548DCFFD9D9F7FFFFFFFFFFDBDBF7FF4547D9FF4548DBFFCBCC
          F3FFFFFFFFFFD9D9F7FF4C4FDEFF565CEAFF13155F6A00000000000000000102
          11131F26D4EC5357E3FFA3A3E9FFDADAF7FF4C4EDBFF7276EDFF7479EFFF4F51
          DCFFCCCDF4FFA2A3EAFF5B5FE4FF3036D0E70101060700000000000000000000
          00000204343B2B33E1F96367E5FF5B5DE0FF8387F0FF8589F1FF868AF1FF878B
          F1FF6063E1FF686BE4FF3A3FE3F9090B474F0000000000000000000000000000
          0000000000000103464F161DCFE7666BEDFF9296F2FF999CF3FF999CF3FF9598
          F3FF6C71EEFF2128D4EC0506353B000000000000000000000000000000000000
          000000000000000000000000060700035E6A0308ADC31B20C4DA1C23D1E9070C
          AAC004075C680101111300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000005000000170000002C00000046000000460000
          002C000000170000000500000000000000000000000000000000000000000000
          000000000000000000120B0B0B5C767676B4AFAFAFD2E6E6E6EFE6E6E6EFAFAF
          AFD2767676B40B0B0B5C00000012000000000000000000000000000000000000
          0000000000283D3D3D91DDDDDDEAFCFAF7FFDFC9B4FFCAA580FFCCA882FFE2CD
          B9FFFCFAF7FFDDDDDDEA3D3D3D91000000280000000000000000000000000000
          00123D3D3D91FDFDFDFEE1CEBBFFA66423FFAB5500FFAE5700FFAE5801FFAE57
          00FFB77029FFE7D5C2FFFDFDFDFE3D3D3D910000001200000000000000050B0B
          0B5CDDDDDDEAE1CEBBFF9C5006FFB36211FFCECECEFFD5D5D5FFDDDDDDFFE4E4
          E4FFAE5700FFB05A05FFE8D4C3FFDDDDDDEA0B0B0B5C00000005000000177676
          76B4FCFAF7FF995B1FFFB05B06FFBF7C37FFB7691BFFDFDFDFFFE6E6E6FFB769
          1BFFB25F0CFFAE5700FFBC732BFFFCF9F7FF767676B4000000170000002CAFAF
          AFD2DEC9B2FF994D00FFBA6F25FFB3610FFFAE5700FFE9E9E9FFF0F0F0FFB667
          19FFB86D21FFB36211FFAE5700FFE5D0BBFFAFAFAFD20000002C00000046E6E6
          E6EFC09B76FFA45507FFB86C20FFAE5700FFAE5700FFF2F2F2FFFAFAFAFFB260
          0DFFB66718FFB86D21FFB3610FFFD2AE88FFE6E6E6EF0000004600000046E6E6
          E6EFC09B76FFA9611AFFB36211FFAE5700FFF2EFECFFFCFCFCFFFAFAFAFFB05C
          07FFB36210FFB7691CFFB7691BFFD2AD89FFE6E6E6EF000000460000002CAFAF
          AFD2DEC9B2FF965A1DFFB6681AFFBA7127FFC07E3AFFCD9964FFD7B18CFFC280
          3EFFBF7A34FFBB7229FFB96E23FFDFCBB6FFAFAFAFD20000002C000000177676
          76B4FCFAF7FF9A6633FFBB742CFFBF7B36FFC58647FFD2AB85FFD6B08BFFC88D
          52FFC58748FFC38241FFC78B4EFFFCFAF7FF767676B400000017000000050B0B
          0B5CDDDDDDEADBC5AFFF8C4D12FFC17E3BFFCE9D6BFFF5F5F5FFFEFEFEFFD3A6
          79FFC88E53FFC58648FFE1CFBCFFDDDDDDEA0B0B0B5C00000005000000000000
          00123D3D3D91FDFDFDFED8BFA7FF945820FF99622CFFEFE4D9FFE9E0D6FFCF9B
          68FFA06C3BFFD8C0AAFFFDFDFDFE3D3D3D910000001200000000000000000000
          0000000000283D3D3D91DDDDDDEAFBF8F4FFD2B79BFFB88F69FFB8906AFFD3B8
          9FFFFBF8F4FFDDDDDDEA3D3D3D91000000280000000000000000000000000000
          000000000000000000120B0B0B5C767676B4AFAFAFD2E6E6E6EFE6E6E6EFAFAF
          AFD2767676B40B0B0B5C00000012000000000000000000000000000000000000
          0000000000000000000000000005000000170000002C00000046000000460000
          002C000000170000000500000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000002020202B48157FFB07E55FFA08859FF998A5BFFA47350FFA06F
          4EFF9D6C4DFF99684BFF96654AFF4A3224800000000000000000000000000000
          00000000000007070707B78459FFFEF6F0FFCFE9C9FF7CD58BFFD2E7C7FFFEEF
          E5FFFDEDE1FFFDEDE0FFF8EFE8FFBD9F8EFF37251B6000000000B48157FFB07E
          55FFAC7A53FFAB7A57FFB98659FFF7F3EAFFBCE4BBFF71D484FF6AD17FFFA0DB
          A3FFF0EAD7FFFDECDFFFFEF8F3FFE9DFD9FF8D5F45F121161039B78459FFFEF6
          F0FFFEF4ECFFD9EACFFF82B870FF70D283FF66CF7BFF83DC94FF80DB91FF6ED3
          82FF75D285FFC1E2B8FFF4F1E4FFFEF8F4FFE0CDC2FF946449FFAF7F55F0FEF5
          EFFFB2E2B4FF66CF7AFF94E3A3FF8DE09CFF8CE09BFF92E2A1FF89DE99FF7AD8
          8CFF6CD280FF93D99AFFE4E9D0FFFDEDE0FFFDEEE3FF96664AFFBD8A5BFFBEE6
          BFFF8ADF9AFF6AD07EFF79C174FF9FDEA7FF92DA9DFF8CE09BFF7CD98EFF75D3
          86FFC6E6C1FFFEF1E7FFFEEFE4FFFEEDE1FFFDEDE0FF99684BFFA89E65FF81D6
          8FFFB2E3B5FFECF1E1FFC5925FFFFEF6F1FFD0EACCFF78D78BFF9DDDA5FFEFF1
          E4FFFEF4EDFFFEF3EAFFFEF1E7FFFEEFE4FFFEEFE4FF9C6B4CFFA4A467FFD9ED
          D4FFFEF6F0FFFEF6F0FFC89460FFFEF6F1FFDFEED8FFCEEACBFFFEF6F0FFFEF6
          F0FFFEF5EFFFFEF4EDFFFEF3EAFFFEF1E7FFFEF1E7FF9E6D4DFFBE9661FFFBF5
          EFFFFEF6F0FFFEF6F0FFCA9762FFFEF6F1FFFEF6F0FFFEF6F0FFFEF6F0FFFEF6
          F0FFFEF6F0FFFEF5EFFFFEF4EDFFFEF3EAFFFEF2E9FFA1704FFFC89460FFFEF6
          F1FFFEF6F0FFFEF6F0FFCD9963FFFEF6F1FFFEF6F0FFFEF6F0FFFEF6F0FFFEF6
          F0FFFEF6F0FFFEF6F0FFFEF5EFFFFEF4EDFFFEF4ECFFA47350FFCA9762FFFEF6
          F1FFFEF6F0FFFEF6F0FFCF9B64FFFEF6F1FFF3DEB3FFF1D7AAFFEECD9DFFEAC0
          8FFFE7B683FFE6B17CFFE6B17CFFE6B17CFFFEF5EFFFA77651FFCD9963FFFEF6
          F1FFFEF6F0FFFEF6F0FFD19D64FFFEF6F1FFF3DEB2FFF1D6A9FFEECC9BFFEABF
          8DFFE7B581FFE6B07AFFE6B07AFFE6B07AFFFEF6F0FFAA7953FFCF9B64FFFEF6
          F1FFF3DEB3FFF1D8ACFFD29E65FFFEF8F3FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7
          F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF8F3FFAD7B54FFD19D64FFFEF6
          F1FFF3DEB2FFF1D6AAFFD4A066FFD29E65FFD09C64FFCD9963FFCA9761FFC794
          60FFC3905EFFC08D5DFFBC895BFFB88659FFB48258FFB07E56FFD29E65FFFEF8
          F3FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7F2FFFEF7
          F2FFFEF8F3FFAD7B54FF00000000000000000000000000000000D4A066FFD29E
          65FFD09C64FFCD9963FFCA9761FFC79460FFC3905EFFC08D5DFFBC895BFFB886
          59FFB48258FFB07E56FF00000000000000000000000000000000}
      end>
  end
  object cdsXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 251
    Top = 272
    object cdsXMLid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsXMLchave_acesso: TStringField
      FieldName = 'chave_acesso'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dsXML: TDataSource
    DataSet = cdsXML
    Left = 284
    Top = 271
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 13
    Top = 9
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 5220351
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object cdsVisualizacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'sequencia'
    Params = <>
    Left = 457
    Top = 363
    object cdsVisualizacaosequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object StringField3: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 400
    end
    object StringField5: TStringField
      Alignment = taCenter
      DisplayLabel = 'Unid.'
      FieldName = 'unidade'
      Size = 10
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Quant. NF'
      FieldName = 'quantidade'
      DisplayFormat = ',0.00'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valor_unitario'
      DisplayFormat = ',0.00'
    end
    object FloatField3: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'valor_parcial'
      DisplayFormat = ',0.00'
    end
  end
  object dsVisualizacao: TDataSource
    DataSet = cdsVisualizacao
    Left = 486
    Top = 363
  end
  object zProduto: TZQuery
    SQL.Strings = (
      'Select * from Produto where prodicod is null')
    Params = <>
    Left = 800
    Top = 97
  end
  object zProdutoFornecedor: TZQuery
    SQL.Strings = (
      'Select * from ProdutoFornecedor where prodicod is null')
    Params = <>
    Left = 829
    Top = 97
  end
  object zNcm: TZQuery
    SQL.Strings = (
      'Select * from NCM where ncmicod is null')
    Params = <>
    Left = 860
    Top = 97
  end
  object SQLProdutoEditar: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From NOTACOMPRA Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 753
    Top = 257
  end
  object SQLNota: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From NOTACOMPRA Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 667
    Top = 265
  end
  object sqlContaDespesa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANODECONTAS'
      'where'
      '  PLCTCANALSINT = '#39'A'#39
      'and'
      '  PLCTCTIPOSALDO = '#39'D'#39
      'order by PLCTA60DESCR')
    Macros = <>
    Left = 431
    Top = 9
  end
  object sqlOpEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      ' OPESICOD,'
      ' OPESA60DESCR,'
      ' SERIA5COD,'
      ' CFOPA5CODDENTROUF,'
      ' CFOPA5CODFORAUF,'
      ' OPESCENTRADASAIDA,'
      ' OPESCORIGEMDESTINO,'
      ' PENDENTE,'
      ' REGISTRO,'
      ' OPESA18CAMPOIMP,'
      ' OPESCCALCIPI,'
      ' OPESCCALCICMS,'
      ' PDVDA13ID,'
      ' OPESCGERAFINANCEIRO,'
      ' ACUMICOD,'
      ' PLCTA15CODCRED,'
      ' PLCTA15CODDEB,'
      ' OPESA18CAMPOIMPFIS,'
      ' OPESCCALCICMSFIS,'
      ' OPESCCALCIPIFIS,'
      ' OPESCCALCSUBST,'
      ' OPESCCALCSUBSTFIS,'
      ' OPERACAO_E_S,'
      ' OPESA60DESDENTRO,'
      ' OPESA60DESFORA,'
      ' OPESCCOMISSAO'
      'FROM'
      ' OPERACAOESTOQUE')
    Macros = <>
    Left = 368
    Top = 9
  end
  object SQLNFSEFAZ: TRxQuery
    OnCalcFields = SQLNFSEFAZCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From NFSEFAZ Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 753
    Top = 325
    object SQLNFSEFAZCHAVE: TStringField
      DisplayLabel = 'Chave'
      FieldName = 'CHAVE'
      Origin = 'DB.NFSEFAZ.CHAVE'
      Size = 44
    end
    object SQLNFSEFAZSERIE: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'SERIE'
      Origin = 'DB.NFSEFAZ.SERIE'
      Size = 5
    end
    object SQLNFSEFAZNUMERO: TIntegerField
      DisplayLabel = 'Numero NF'
      FieldName = 'NUMERO'
      Origin = 'DB.NFSEFAZ.NUMERO'
    end
    object SQLNFSEFAZDTEMISSAO: TDateTimeField
      DisplayLabel = 'Data Emissao'
      FieldName = 'DTEMISSAO'
      Origin = 'DB.NFSEFAZ.DTEMISSAO'
    end
    object SQLNFSEFAZEMIT_CNPJ: TStringField
      DisplayLabel = 'CNPJ/CPF Emitente'
      FieldName = 'EMIT_CNPJ'
      Origin = 'DB.NFSEFAZ.EMIT_CNPJ'
      Size = 14
    end
    object SQLNFSEFAZEMIT_IE: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estatual'
      FieldName = 'EMIT_IE'
      Origin = 'DB.NFSEFAZ.EMIT_IE'
      Size = 15
    end
    object SQLNFSEFAZEMIT_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social / Nome'
      FieldName = 'EMIT_RAZAO'
      Origin = 'DB.NFSEFAZ.EMIT_RAZAO'
      Size = 60
    end
    object SQLNFSEFAZVALORTOTAL: TFloatField
      DisplayLabel = 'Valor Total NF'
      FieldName = 'VALORTOTAL'
      Origin = 'DB.NFSEFAZ.VALORTOTAL'
    end
    object SQLNFSEFAZENTRADA_SAIDA: TStringField
      DisplayLabel = 'Entrada/Saida'
      FieldName = 'ENTRADA_SAIDA'
      Origin = 'DB.NFSEFAZ.ENTRADA_SAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLNFSEFAZSIT_NFE: TStringField
      DisplayLabel = 'Stua'#231#227'o NF'
      FieldName = 'SIT_NFE'
      Origin = 'DB.NFSEFAZ.SIT_NFE'
      FixedChar = True
      Size = 1
    end
    object SQLNFSEFAZSIT_EVENTO: TStringField
      DisplayLabel = 'Situa'#231#227'o da Manifesta'#231#227'o'
      FieldName = 'SIT_EVENTO'
      Origin = 'DB.NFSEFAZ.SIT_EVENTO'
      FixedChar = True
      Size = 1
    end
    object SQLNFSEFAZDTEVENTO: TDateTimeField
      DisplayLabel = 'Dt Consulta Sefaz'
      FieldName = 'DTEVENTO'
      Origin = 'DB.NFSEFAZ.DTEVENTO'
    end
    object SQLNFSEFAZPROT_EVENTO: TStringField
      DisplayLabel = 'Protocolo'
      FieldName = 'PROT_EVENTO'
      Origin = 'DB.NFSEFAZ.PROT_EVENTO'
      Size = 30
    end
    object SQLNFSEFAZNSUCONSULTA: TIntegerField
      DisplayLabel = 'NSU'
      FieldName = 'NSUCONSULTA'
      Origin = 'DB.NFSEFAZ.NSUCONSULTA'
    end
    object SQLNFSEFAZJUSTIFICATIVA: TStringField
      DisplayLabel = 'Justificativa'
      FieldName = 'JUSTIFICATIVA'
      Origin = 'DB.NFSEFAZ.JUSTIFICATIVA'
      Size = 60
    end
    object SQLNFSEFAZSituacaoNota: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoNota'
      Size = 10
      Calculated = True
    end
  end
  object dsNFSEFAZ: TDataSource
    DataSet = SQLNFSEFAZ
    Left = 782
    Top = 325
  end
  object zCest: TZQuery
    SQL.Strings = (
      'Select * from CESTNCM')
    Params = <>
    Left = 893
    Top = 96
  end
end
