inherited FormTelaPlanoContas: TFormTelaPlanoContas
  Left = 296
  Top = 60
  Width = 808
  Height = 608
  Caption = 'Plano de Contas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 792
    Height = 570
    inherited PanelCentral: TPanel
      Width = 788
      Height = 486
      inherited PanelBarra: TPanel
        Top = 153
        Width = 0
        Height = 333
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 105
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object Label50: TLabel
          Left = 12
          Top = 14
          Width = 143
          Height = 13
          Caption = 'N'#237'veis do Plano de Contas'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox22: TGroupBox
          Left = 8
          Top = 32
          Width = 480
          Height = 60
          Caption = 'Tamanho dos N'#237'veis'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object LNivel1: TLabel
            Left = 11
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 1'
            Enabled = False
          end
          object LNivel2: TLabel
            Left = 56
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 2'
            Enabled = False
          end
          object LNivel3: TLabel
            Left = 103
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 3'
            Enabled = False
          end
          object LNivel4: TLabel
            Left = 149
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 4'
            Enabled = False
          end
          object LNivel5: TLabel
            Left = 196
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 5'
            Enabled = False
          end
          object LNivel6: TLabel
            Left = 243
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 6'
            Enabled = False
          end
          object LNivel7: TLabel
            Left = 289
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 7'
            Enabled = False
          end
          object LNivel8: TLabel
            Left = 336
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 8'
            Enabled = False
          end
          object LNivel9: TLabel
            Left = 382
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 9'
            Enabled = False
          end
          object LNivel10: TLabel
            Left = 428
            Top = 17
            Width = 44
            Height = 13
            Caption = 'N'#237'vel 10'
            Enabled = False
          end
          object ComboNivel1: TRxDBComboBox
            Left = 10
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL1'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 0
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel2: TRxDBComboBox
            Left = 56
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL2'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 1
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel3: TRxDBComboBox
            Left = 103
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL3'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 2
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel4: TRxDBComboBox
            Left = 149
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL4'
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 3
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel5: TRxDBComboBox
            Left = 196
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL5'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 4
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel6: TRxDBComboBox
            Left = 242
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL6'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 5
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel7: TRxDBComboBox
            Left = 289
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL7'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 6
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel8: TRxDBComboBox
            Left = 335
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL8'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 7
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel9: TRxDBComboBox
            Left = 382
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL9'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 8
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel10: TRxDBComboBox
            Left = 428
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL10'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 9
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
        end
        object ComboNiveis: TRxDBComboBox
          Left = 160
          Top = 6
          Width = 44
          Height = 21
          Style = csDropDownList
          DataField = 'CFGCNIVEIS'
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
          OnChange = ComboNiveisChange
        end
      end
      object Panel_Reg: TPanel
        Left = 0
        Top = 105
        Width = 788
        Height = 48
        Align = alTop
        ParentColor = True
        TabOrder = 2
        object Label51: TLabel
          Left = 8
          Top = 6
          Width = 35
          Height = 13
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 265
          Top = 8
          Width = 41
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 325
          Top = 8
          Width = 36
          Height = 13
          Caption = 'Conta:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CodReduzido: TDBEdit
          Left = 265
          Top = 22
          Width = 55
          Height = 21
          Hint = 'Digite o C'#243'digo e Pressione Enter'
          DataField = 'PLCTICODREDUZ'
          MaxLength = 5
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = CodReduzidoEnter
          OnExit = CodReduzidoExit
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 639
          Top = 0
          Width = 146
          Height = 43
          Caption = 'Conta'
          Columns = 2
          DataField = 'PLCTCANALSINT'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sint'#233'tica'
            'Anal'#237'tica')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'S'
            'A')
          OnExit = CodReduzidoExit
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 450
          Top = 0
          Width = 187
          Height = 43
          Caption = 'Saldo'
          Columns = 3
          DataField = 'PLCTCTIPOSALDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Cr'#233'dito'
            'D'#233'bito'
            'Ambos')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'C'
            'D'
            'A')
          OnExit = CodReduzidoExit
        end
        object CodigoEdit: TDBEdit
          Left = 325
          Top = 22
          Width = 122
          Height = 21
          Color = clActiveCaption
          DataField = 'PLCTA30CODEDIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          OnExit = CodReduzidoExit
        end
        object NomeEdit: TDBEdit
          Left = 8
          Top = 22
          Width = 252
          Height = 21
          DataField = 'PLCTA60DESCR'
          TabOrder = 4
          OnChange = NomeEditChange
          OnExit = NomeEditExit
        end
      end
      object ListaConta: TListBox
        Left = 550
        Top = 2
        Width = 41
        Height = 97
        ItemHeight = 13
        TabOrder = 3
        Visible = False
      end
      object PanelArvore: TPanel
        Left = 0
        Top = 153
        Width = 788
        Height = 333
        Align = alClient
        Caption = 'PanelArvore'
        TabOrder = 4
        object Arvore: TTreeView
          Left = 1
          Top = 1
          Width = 786
          Height = 315
          Hint = 'Bot'#227'o Direito do Mouse'
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HideSelection = False
          Indent = 19
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          OnChange = ArvoreChange
          OnCompare = ArvoreCompare
          OnDblClick = ArvoreDblClick
        end
        object ProgressBar: TProgressBar
          Left = 1
          Top = 316
          Width = 786
          Height = 16
          Align = alBottom
          TabOrder = 1
          Visible = False
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 788
      inherited PanelCabecalho: TPanel
        Width = 788
        inherited PanelNavigator: TPanel
          Width = 788
          object BtnGravar: TSpeedButton [0]
            Tag = 3
            Left = 5
            Top = 3
            Width = 70
            Height = 25
            Cursor = crHandPoint
            Hint = 'Fechar Tela'
            Caption = '&Gravar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000130B0000130B0000000100000001000000000000DCE4
              E4007975BE00817DC6002D2D2D004F4D8A005B579E005F5EA7006866AF00716D
              B6008986CD0008080800FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
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
              00000000000000000000000000000000000000000000000000000C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000B
              0B0B0B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0001010000000000000C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0001010101000000000C0C0C0C0C0C0C0C0C0C0C
              0C0C00000001010101010100000C0C0C0C0C0C0C0C0C0C0C0C0C000200010101
              01010100000C0C0C0C0C0C0C0C000000000000020300010101010100000C0C0C
              0C0C0C0C0C00050607080902030A000101010100000C0C0C0C0C0C0C0C000506
              07080902030A000100040100000C0C0C0C0C0C0C0C0000000000000203000101
              04000100000C0C0C0C0C0C0C0C0C0C0C0C0C00020001010101010100000C0C0C
              0C0C0C0C0C0C0C0C0C0C00000001010101010100000C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0001010101010100000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00010101
              01010100000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C}
            ParentFont = False
            OnClick = BtnGravarClick
          end
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 788
          end
        end
      end
    end
  end
  object DSSQLConfigConta: TDataSource
    OnStateChange = DSSQLConfigContaStateChange
    Left = 107
    Top = 19
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 558
    Top = 90
    object NovaConta: TMenuItem
      Caption = 'Nova &Conta'
      OnClick = NovaContaClick
    end
    object SubConta: TMenuItem
      Caption = 'Nova &Sub Conta'
      OnClick = SubContaClick
    end
    object Excluir: TMenuItem
      Caption = '&Excluir'
      OnClick = ExcluirClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Mn_Exp_Nivel: TMenuItem
      Caption = 'Expandir N'#237'vel'
      OnClick = Mn_Exp_NivelClick
    end
    object Mn_Cnt_Nivel: TMenuItem
      Caption = 'Fechar N'#237'vel'
      OnClick = Mn_Cnt_NivelClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Mn_Exp_Tudo: TMenuItem
      Caption = 'Expandir Tudo'
      OnClick = Mn_Exp_TudoClick
    end
    object Mn_Cnt_Tudo: TMenuItem
      Caption = 'Fechar Tudo'
      OnClick = Mn_Cnt_TudoClick
    end
  end
end
