inherited FormCadastroAgenda: TFormCadastroAgenda
  Left = 201
  Top = 111
  Caption = 'Agenda'
  ClientHeight = 483
  ClientWidth = 771
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 771
    Height = 483
    inherited PanelCabecalho: TPanel
      Width = 769
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 769
        inherited Panel1: TPanel
          Width = 767
          inherited PanelNavigator: TPanel
            Width = 767
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 767
            end
          end
          inherited PanelLeft: TPanel
            Left = 310
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 769
      Height = 409
      inherited PanelBarra: TPanel
        Height = 409
      end
      inherited PanelFundoDados: TPanel
        Width = 639
        Height = 409
        inherited Panel5: TPanel
          Width = 639
          Height = 409
          inherited PagePrincipal: TPageControl
            Top = 201
            Width = 639
            Height = 208
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 631
                Height = 135
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'AGENA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENDCADASTRO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENDCOMPROMISSO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENHCOMPROMISSO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENDALERTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENHALERTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENDCONCLUSAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENA25STATUS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CATEA30DESCR'
                    Title.Caption = 'Categoria'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPA13ID'
                    Title.Caption = 'Atendimento'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREICOD'
                    Title.Caption = 'Tarefa'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'USUAA60LOGIN'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 631
                inherited PanelBetween: TPanel
                  Width = 237
                  inherited AdvPanel1: TAdvPanel
                    Width = 237
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 237
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 237
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
              object Label5: TLabel
                Left = 0
                Top = 0
                Width = 46
                Height = 13
                Align = alTop
                Caption = 'Assunto'
                FocusControl = DBMemo1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBMemo1: TDBMemo
                Left = 0
                Top = 13
                Width = 631
                Height = 161
                Hint = 'Digite o assunto.'
                Align = alClient
                DataField = 'AGENTCOMPROMISSO'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 201
            Width = 639
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 639
            Height = 201
            AutoSize = True
            object gboPrincipal: TGroupBox
              Left = 0
              Top = 0
              Width = 639
              Height = 201
              Align = alClient
              TabOrder = 0
              object Label1: TLabel
                Left = 4
                Top = 8
                Width = 46
                Height = 13
                Caption = 'Assunto'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object btAlerta: TSpeedButton
                Left = 184
                Top = 51
                Width = 153
                Height = 51
                Cursor = crHandPoint
                Caption = 'Exibir Alerta'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFBB4A00BB4A00BB4A00BB4A00BB4A00BB
                  4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00
                  BB4A00BB4A00BB4A00BB4A00FF00FFFF00FFFF00FFFF00FFBB4A00FFFFFFFFF4
                  E7FFF0DEFFEBD5FEE6CB29961CFEDDB8FFD8B0FFD5A7FED1A0F4C696B6926D23
                  6D18DCB182EFC08EFBC995FECB96FECB96BB4A00FF00FFFF00FFFF00FFFF00FF
                  BB4A00FFFFFFFFF8F0FEF4EAFFEFE1FFEBD729961CFEE2C4FEDEBBFED9B1FFD5
                  A9E6BD932C2D2E0E3C4C535A519A7F5FD7AC7FF4C490FECB96BB4A00FF00FFFF
                  00FFFF00FFFF00FFBB4A00FFFFFFFFFCF8FFF8F2FFF4EAFEF0E129961CFFE7CF
                  FEE3C6FEDEBCFEDAB2FED5AA8F8876055F8E35546C5B4140836850C49E75E9BB
                  8ABB4A00FF00FFFF00FFFF00FFFF00FFBB4A00379C2A29961C29961C29961C29
                  961C29961C29961C29961C29961C29961C29961C268C1E28524CCE8987B47474
                  5F3F381F4A17216A18BB4A00FF00FFFF00FFFF00FFFF00FFBB4A00FFFFFFFFFF
                  FFFFFFFFFFFCFBFFFAF429961CFFF2E5FEEFDCFFEAD1FFE6C9FFE0BFFFDCB62A
                  6C2CCC8C8AD99797AA6D6D67403D755E49BB4A00FF00FFFF00FFFF00FFFF00FF
                  BB4A00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFC29961CFEF6EEFEF3E6FFEEDDFFEA
                  D4FEE5CAFFE1C029961CB28472C78C8CD99898A76B6B68413DBB4A00FF00FFFF
                  00FFFF00FFFF00FFBB4A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29961CFFFBF6
                  FFF7EFFFF3E7FFEFDDFEEAD4FFE6CA29961CFEDCB8A67E6DCA9090D59595AD69
                  6973352EFF00FFFF00FFFF00FFFF00FFBB4A00CFCCF87979FF4747FF2C2CFE28
                  28FB1D2EC97372FECCC9F8FFF7F0FEF3E7FEEFDEFEEBD529961CFFE3C2FFDDBA
                  AB8373DC98978677811588AB109AC1FF00FFFF00FFFF00FFBB4A003941EB3E3E
                  E53E3EBB5050B24E4FB13C3AB42C2CD5282DEE1E566B29961C29961C29961C29
                  961C29961C29961C29961C53602C1E8FB504A6ED0024AC000289FF00FFFF00FF
                  4C4DFE4C4DCE8280B0DED4BDCEC2C1ACABCAEAE2CE9391B23C3CAD3232F48F8C
                  FBFFF8F3FFF4EA29961CFEEDD9FEE7CFFEE2C6FFDEBC77B2B40759CF1628D502
                  0FA0FF00FF4848FF5858D9AAA9BFFFFAC9F8D098EDB57AE7A970F7CE9AFFFFEB
                  C9CACA3D3CAB3737FECECEFBFFFAF229961CFFF2E3FFEDDAFEE9D1FEE3C7FEE0
                  BD744F692024CDFF00FFFF00FF6565F77A7AC6FFFFD5FFF7C2FBEFBAFAE3ADF4
                  C78CEEB87BF4CF96FFFBDA8B87AB3736D17575FFFFFCFB29961CFFF7EDFFF3E5
                  FFEFDAFEEAD1FFE5C6BB4A00FF00FFFF00FF3838FF6362E6C7C5D3FFFFDDFFFF
                  CFFFFFD0FFFFD1FFF8C4FFDCA1F6B675F6BC83E6DAC73E3EA94946FEFEECF537
                  9C29FEE8EBFEE5E4FEE1DEFEDCD5FED8CABB4A00FF00FFFF00FF4848FF6A69E1
                  CEDAE5FCFFFEFFFFD8FFFFD3AFAF933B3C3B3B3C3B3B3C3B3B3C3BC6BCC54B4C
                  A6362FE0CC5800CC5800CC5800CC5800CC5800CC5800CC5900BB4A00FF00FFFF
                  00FF4848FF6F6EE2BBD0E3FAFEFFFFFFF6FFFFD8B5B5993B3C3B373834887F65
                  D8A36EAAA5C0484AAC362FE0BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A
                  00FF00FFFF00FFFF00FF3535FF6E6DEAD3C9DCFFFFFFFFFFFFFFFFF3FFFFD9D7
                  D7B056574CA39373FFD092E6D5B84141BA2F2EFFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6A6AFB8F89D3FFFFF4FFFF
                  FFFFFFFFFFFFFBFFFFEFE7E7C7565447BDB08A908BBB3939E5FF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4141FF
                  6968EDBAAFCFFFFFF4FFFFFFFCFFFFF8FCFFFFFFFFFEFCCFADACB44142D42F2E
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FF4646FF5C5CED938CD4E3DDDEE3EEEBCBE3EFEAE9EE9797D8
                  4242E03030FCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3333FF4242FA4B49E9625EE160
                  5EE24444E92F2FF72626FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FF1C1CFF1B1BFF1818FF1717FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                Layout = blGlyphTop
                ParentFont = False
                OnClick = btAlertaClick
              end
              object DBEdit1: TDBEdit
                Left = 4
                Top = 22
                Width = 601
                Height = 21
                DataField = 'AGENA60ASSUNTO'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object gboCompromisso: TGroupBox
                Left = 4
                Top = 46
                Width = 165
                Height = 57
                Hint = 
                  'Indique a Data e Hora do Compromisso'#13#10'<Duplo clique para indicar' +
                  ' a Data Atual e Hora Atual + 2:00>'#13#10'<Selecione o campo data e cl' +
                  'ique no calend'#225'rio ao lado>'
                Caption = 'Compromisso'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label2: TLabel
                  Left = 9
                  Top = 16
                  Width = 27
                  Height = 13
                  Caption = 'Data'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 93
                  Top = 15
                  Width = 27
                  Height = 13
                  Caption = 'Hora'
                  FocusControl = DBHoraCompromisso
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBDataCompromisso: TDBEdit
                  Left = 8
                  Top = 29
                  Width = 80
                  Height = 21
                  Cursor = crHandPoint
                  Hint = 'Escolha no calendario a data desejada'
                  DataField = 'AGENDCOMPROMISSO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnDblClick = DBDataCompromissoDblClick
                end
                object DBHoraCompromisso: TDBEdit
                  Left = 92
                  Top = 29
                  Width = 54
                  Height = 21
                  Cursor = crHandPoint
                  Hint = 'D'#234' um clique duplo para adicionar a hora atual'
                  DataField = 'AGENHCOMPROMISSO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnDblClick = DBHoraCompromissoDblClick
                end
              end
              object gboAlerta: TGroupBox
                Left = 176
                Top = 46
                Width = 175
                Height = 57
                Hint = 
                  'Indique a Data e Hora do Lembrete'#13#10'<Duplo clique para indicar a ' +
                  'Data Atual e Hora Atual + 2:00>'#13#10'<Selecione o campo data e cliqu' +
                  'e no calend'#225'rio ao lado>'
                Caption = 'Alerta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                Visible = False
                object Label6: TLabel
                  Left = 9
                  Top = 16
                  Width = 27
                  Height = 13
                  Caption = 'Data'
                  FocusControl = DBDataAlerta
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 94
                  Top = 16
                  Width = 27
                  Height = 13
                  Caption = 'Hora'
                  FocusControl = DBHoraAlerta
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBDataAlerta: TDBEdit
                  Left = 8
                  Top = 29
                  Width = 80
                  Height = 21
                  Cursor = crHandPoint
                  Hint = 'Escolha no calendario a data desejada'
                  DataField = 'AGENDALERTA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnDblClick = DBDataAlertaDblClick
                  OnExit = DBDataAlertaExit
                end
                object DBHoraAlerta: TDBEdit
                  Left = 93
                  Top = 29
                  Width = 65
                  Height = 21
                  Cursor = crHandPoint
                  Hint = 'D'#234' um clique duplo para adicionar a data atual'
                  DataField = 'AGENHALERTA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnDblClick = DBHoraAlertaDblClick
                  OnExit = DBHoraAlertaExit
                end
              end
              object MonthCalendar1: TMonthCalendar
                Left = 413
                Top = 44
                Width = 190
                Height = 153
                Cursor = crHandPoint
                Hint = 'Indica a data do calend'#225'rio ao campo data selecionado ao lado.'
                CalColors.TitleBackColor = 14536396
                CalColors.TitleTextColor = clNavy
                CalColors.MonthBackColor = clWindow
                CalColors.TrailingTextColor = 16736866
                Date = 0.854681620367046000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = MonthCalendar1Click
              end
              object GroupBox2: TGroupBox
                Left = 4
                Top = 104
                Width = 349
                Height = 90
                TabOrder = 4
                object Label4: TLabel
                  Left = 5
                  Top = 10
                  Width = 37
                  Height = 13
                  Caption = 'Status'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 164
                  Top = 10
                  Width = 55
                  Height = 13
                  Caption = 'Categoria'
                  FocusControl = DBLookUpcategoria
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object lblConclusao: TLabel
                  Left = 6
                  Top = 49
                  Width = 57
                  Height = 13
                  Caption = 'Conclus'#227'o'
                  FocusControl = edbDataConclusao
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Visible = False
                end
                object DBComboStatus: TRxDBComboBox
                  Left = 5
                  Top = 24
                  Width = 153
                  Height = 21
                  Cursor = crHandPoint
                  Style = csDropDownList
                  DataField = 'AGENCSTATUS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'N'#195'O INICIADA'
                    'EM ANDAMENTO'
                    'AGUARDANDO OUTRA PESSOA  '
                    'ADIADA'
                    'CONCLU'#205'DA')
                  TabOrder = 0
                  Values.Strings = (
                    'N'
                    'E'
                    'A'
                    'D'
                    'C')
                end
                object DBLookUpcategoria: TDBLookupComboBox
                  Left = 163
                  Top = 24
                  Width = 172
                  Height = 21
                  Cursor = crHandPoint
                  DataField = 'CATEA30DESCR'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object edbDataConclusao: TDBEdit
                  Left = 6
                  Top = 62
                  Width = 131
                  Height = 21
                  Hint = 'D'#234' um clique duplo para adicionar a data e hora atual'
                  DataField = 'AGENDCONCLUSAO'
                  DataSource = DSTemplate
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  Visible = False
                  OnDblClick = edbDataConclusaoDblClick
                end
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    AutoRefresh = True
    SQL.Strings = (
      'SELECT * FROM AGENDA WHERE (%MFiltro)')
    Left = 240
    Top = 0
    object SQLTemplateAGENA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Agenda'
      FieldName = 'AGENA13ID'
      Origin = 'DB.AGENDA.AGENA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.AGENDA.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.AGENDA.TERMICOD'
    end
    object SQLTemplateAGENICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Cod Agenda'
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDA.AGENICOD'
    end
    object SQLTemplateAGENA60ASSUNTO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Assunto'
      FieldName = 'AGENA60ASSUNTO'
      Origin = 'DB.AGENDA.AGENA60ASSUNTO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAGENDCADASTRO: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'AGENDCADASTRO'
      Origin = 'DB.AGENDA.AGENDCADASTRO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateAGENDCOMPROMISSO: TDateTimeField
      DisplayLabel = 'Data Compromisso'
      FieldName = 'AGENDCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENDCOMPROMISSO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateAGENHCOMPROMISSO: TStringField
      DisplayLabel = 'Hora Compromisso'
      FieldName = 'AGENHCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENHCOMPROMISSO'
      EditMask = '!90:00:00>;1;_'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateAGENDALERTA: TDateTimeField
      DisplayLabel = 'Data Alerta'
      FieldName = 'AGENDALERTA'
      Origin = 'DB.AGENDA.AGENDALERTA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateAGENHALERTA: TStringField
      DisplayLabel = 'Hora Alerta'
      FieldName = 'AGENHALERTA'
      Origin = 'DB.AGENDA.AGENHALERTA'
      EditMask = '!90:00:00>;1;_'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateAGENTCOMPROMISSO: TMemoField
      DisplayLabel = 'Compromisso'
      FieldName = 'AGENTCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENTCOMPROMISSO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplateAGENDCONCLUSAO: TDateTimeField
      DisplayLabel = 'Data Conclus'#227'o'
      FieldName = 'AGENDCONCLUSAO'
      Origin = 'DB.AGENDA.AGENDCONCLUSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateHELPA13ID: TStringField
      DisplayLabel = 'ID Atendimento'
      FieldName = 'HELPA13ID'
      Origin = 'DB.AGENDA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.AGENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.AGENDA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCATEICOD: TIntegerField
      FieldName = 'CATEICOD'
      Origin = 'DB.AGENDA.CATEICOD'
    end
    object SQLTemplateCATEA30DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'CATEA30DESCR'
      LookupDataSet = SQLCategoria
      LookupKeyFields = 'CATEICOD'
      LookupResultField = 'CATEA30DESCR'
      KeyFields = 'CATEICOD'
      Size = 30
      Lookup = True
    end
    object SQLTemplateAGENCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'AGENCSTATUS'
      Origin = 'DB.AGENDA.AGENCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateAGENCALERTA: TStringField
      FieldName = 'AGENCALERTA'
      Origin = 'DB.AGENDA.AGENCALERTA'
      FixedChar = True
      Size = 1
    end
  end
  object SQLAgendaHoje: TQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    Left = 32
    Top = 208
  end
  object DSSQLTarefa: TDataSource
    DataSet = SQLTarefa
    Left = 32
    Top = 336
  end
  object SQLAgendaVer: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from agenda')
    Left = 32
    Top = 272
    object SQLAgendaVerCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
  end
  object Timer1: TTimer
    Left = 32
    Top = 304
  end
  object SQLTarefa: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from tarefa')
    Left = 64
    Top = 336
    object SQLTarefaTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TAREFA.EMPRICOD'
    end
    object SQLTarefaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TAREFA.TERMICOD'
    end
    object SQLTarefaTAREICOD: TIntegerField
      FieldName = 'TAREICOD'
      Origin = 'DB.TAREFA.TAREICOD'
    end
    object SQLTarefaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFA.USUAICOD'
    end
    object SQLTarefaUSUAICODDEST: TIntegerField
      FieldName = 'USUAICODDEST'
      Origin = 'DB.TAREFA.USUAICODDEST'
    end
    object SQLTarefaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TAREFA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaTAREDDIGITACAO: TDateTimeField
      FieldName = 'TAREDDIGITACAO'
      Origin = 'DB.TAREFA.TAREDDIGITACAO'
    end
    object SQLTarefaTAREDLEMBRETE: TDateTimeField
      FieldName = 'TAREDLEMBRETE'
      Origin = 'DB.TAREFA.TAREDLEMBRETE'
    end
    object SQLTarefaTARETSOLICITACAO: TMemoField
      FieldName = 'TARETSOLICITACAO'
      Origin = 'DB.TAREFA.TARETSOLICITACAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTarefaTAREDINICIO: TDateTimeField
      FieldName = 'TAREDINICIO'
      Origin = 'DB.TAREFA.TAREDINICIO'
    end
    object SQLTarefaTARETEXECUCAO: TMemoField
      FieldName = 'TARETEXECUCAO'
      Origin = 'DB.TAREFA.TARETEXECUCAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTarefaTAREDTERMINO: TDateTimeField
      FieldName = 'TAREDTERMINO'
      Origin = 'DB.TAREFA.TAREDTERMINO'
    end
    object SQLTarefaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFA.REGISTRO'
    end
    object SQLTarefaTPTAICOD: TIntegerField
      FieldName = 'TPTAICOD'
      Origin = 'DB.TAREFA.TPTAICOD'
    end
    object SQLTarefaTAREA30TITULO: TStringField
      FieldName = 'TAREA30TITULO'
      Origin = 'DB.TAREFA.TAREA30TITULO'
      FixedChar = True
      Size = 30
    end
    object SQLTarefaHELPA13ID: TStringField
      FieldName = 'HELPA13ID'
      Origin = 'DB.TAREFA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaTARECPENDENTE: TStringField
      FieldName = 'TARECPENDENTE'
      Origin = 'DB.TAREFA.TARECPENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTarefaTAREDPRAZOMAX: TDateTimeField
      FieldName = 'TAREDPRAZOMAX'
      Origin = 'DB.TAREFA.TAREDPRAZOMAX'
    end
    object SQLTarefaTAREDULTAGEND: TDateTimeField
      FieldName = 'TAREDULTAGEND'
      Origin = 'DB.TAREFA.TAREDULTAGEND'
    end
    object SQLTarefaTAREHLEMBRETE: TStringField
      FieldName = 'TAREHLEMBRETE'
      Origin = 'DB.TAREFA.TAREHLEMBRETE'
      FixedChar = True
      Size = 8
    end
  end
  object SQLCategoria: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from categoriaagenda')
    Left = 32
    Top = 368
  end
end
