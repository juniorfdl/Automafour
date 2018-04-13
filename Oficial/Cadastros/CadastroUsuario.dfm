inherited FormCadastroUsuario: TFormCadastroUsuario
  Left = 263
  Top = 70
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 600
  ClientWidth = 837
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 837
    Height = 600
    inherited PanelCabecalho: TPanel
      Width = 835
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 835
        inherited Panel1: TPanel
          Width = 833
          inherited PanelNavigator: TPanel
            Width = 833
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 833
            end
          end
          inherited PanelLeft: TPanel
            Left = 376
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 835
      Height = 526
      inherited PanelBarra: TPanel
        Height = 526
      end
      inherited PanelFundoDados: TPanel
        Width = 705
        Height = 526
        inherited Panel5: TPanel
          Width = 705
          Height = 526
          inherited PagePrincipal: TPageControl
            Top = 149
            Width = 705
            Height = 377
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 697
                Height = 304
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'USUAICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'USUAA60LOGIN'
                    Width = 488
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 697
                inherited PanelBetween: TPanel
                  Width = 303
                  inherited AdvPanel1: TAdvPanel
                    Width = 303
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 303
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 303
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
              object Label3: TLabel
                Left = 4
                Top = 4
                Width = 35
                Height = 13
                Caption = 'Senha'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 158
                Top = 4
                Width = 34
                Height = 13
                Caption = 'E-Mail'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 2
                Top = 19
                Width = 151
                Height = 21
                Ctl3D = True
                DataField = 'USUAA5SENHA'
                DataSource = DSTemplate
                ParentCtl3D = False
                PasswordChar = '*'
                TabOrder = 0
              end
              object GroupPermissoes: TGroupBox
                Left = 2
                Top = 44
                Width = 628
                Height = 301
                Caption = 'Controles de Permiss'#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object DBCheckBox1: TDBCheckBox
                  Left = 6
                  Top = 18
                  Width = 142
                  Height = 17
                  Caption = 'Desbloquear Cliente'
                  DataField = 'USUACDESBLOQCLI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox2: TDBCheckBox
                  Left = 6
                  Top = 33
                  Width = 265
                  Height = 17
                  Caption = 'Vender no Crediario com Limite Excedido'
                  DataField = 'USUACVENDCLIBLOQ'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox3: TDBCheckBox
                  Left = 6
                  Top = 76
                  Width = 202
                  Height = 17
                  Caption = 'Ver Dados de Compra de Cliente'
                  DataField = 'USUACVERDADCOMPRCLI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 4
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox4: TDBCheckBox
                  Left = 6
                  Top = 91
                  Width = 147
                  Height = 17
                  Caption = 'Cancelar Cupom'
                  DataField = 'USUACCANCVENDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 5
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox5: TDBCheckBox
                  Left = 6
                  Top = 123
                  Width = 202
                  Height = 17
                  Caption = 'Excluir Clientes'
                  DataField = 'USUACEXCLCLI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 7
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox6: TDBCheckBox
                  Left = 6
                  Top = 139
                  Width = 221
                  Height = 17
                  Caption = 'Desativar Pr'#233'-Vendas/Or'#231'amentos'
                  DataField = 'USUACCANCPREVENDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 8
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox7: TDBCheckBox
                  Left = 6
                  Top = 155
                  Width = 202
                  Height = 17
                  Caption = 'Gera libera'#231#227'o de cr'#233'dito'
                  DataField = 'USUACLIBERACREDITO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 9
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox8: TDBCheckBox
                  Left = 6
                  Top = 171
                  Width = 202
                  Height = 17
                  Caption = 'Altera Dados na Tesouraria'
                  DataField = 'USUACLIBERACREDITO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 10
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox9: TDBCheckBox
                  Left = 6
                  Top = 187
                  Width = 202
                  Height = 17
                  Caption = 'Excluir Dados Da Tesouraria'
                  DataField = 'USUACEXCLDADOSTESO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 11
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox10: TDBCheckBox
                  Left = 6
                  Top = 218
                  Width = 259
                  Height = 17
                  Caption = 'Atualiza Saldo de Estoque no Invent'#225'rio'
                  DataField = 'USUCALTERASLDINVENTARIO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 13
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox11: TDBCheckBox
                  Left = 6
                  Top = 203
                  Width = 202
                  Height = 17
                  Caption = 'Excluir Movimenta'#231#227'o Banc'#225'ria'
                  DataField = 'USUACEXCMOVBCO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 12
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox12: TDBCheckBox
                  Left = 6
                  Top = 234
                  Width = 219
                  Height = 17
                  Caption = 'Altera valor de produto na venda'
                  DataField = 'USUACALTVLRVENDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 14
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox13: TDBCheckBox
                  Left = 6
                  Top = 250
                  Width = 283
                  Height = 17
                  Caption = 'Bloquear a fun'#231#227'o CTRL+G para abrir gaveta'
                  DataField = 'USUACBLOQCTRLG'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 15
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox14: TDBCheckBox
                  Left = 322
                  Top = 18
                  Width = 283
                  Height = 17
                  Caption = 'Permite baixar contas a pagar pelo financeiro'
                  DataField = 'USUACBXCPAGFIN'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 16
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox15: TDBCheckBox
                  Left = 322
                  Top = 33
                  Width = 300
                  Height = 17
                  Caption = 'Permite baixar contas a receber pelo financeiro'
                  DataField = 'USUACBXCRECFIN'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 17
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox16: TDBCheckBox
                  Left = 322
                  Top = 48
                  Width = 287
                  Height = 17
                  Caption = 'Ver no Checkout os dados com totais da venda'
                  DataField = 'USUACVISULUCVEND'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 18
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox17: TDBCheckBox
                  Left = 322
                  Top = 64
                  Width = 300
                  Height = 17
                  Caption = 'Permite Encerrar Movimentos Diversos'
                  DataField = 'USUCENCERRAMVTODVS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 19
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox18: TDBCheckBox
                  Left = 322
                  Top = 80
                  Width = 289
                  Height = 17
                  Caption = 'Permite Destravar Imp.Fiscal pelo CTRL+D'
                  DataField = 'USUCDESTRIMPFISC'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 20
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox19: TDBCheckBox
                  Left = 322
                  Top = 96
                  Width = 289
                  Height = 17
                  Caption = 'Permite Vender com Estoque Negativo'
                  DataField = 'USUACLIBERASALDNEG'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 21
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox22: TDBCheckBox
                  Left = 322
                  Top = 112
                  Width = 289
                  Height = 17
                  Caption = 'Permite ver as vendas por per'#237'odo'
                  DataField = 'USUACPERMVVENDAS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 22
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox23: TDBCheckBox
                  Left = 322
                  Top = 127
                  Width = 300
                  Height = 17
                  Caption = 'Permite ver os movimentos de caixa por per'#237'odo'
                  DataField = 'USUACPERMVMOVCX'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 23
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox24: TDBCheckBox
                  Left = 322
                  Top = 142
                  Width = 300
                  Height = 17
                  Caption = 'Permite ver o Resumo Financeiro do Fornecedor'
                  DataField = 'USUACVRESFINFORN'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 24
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox25: TDBCheckBox
                  Left = 322
                  Top = 157
                  Width = 133
                  Height = 17
                  Caption = 'Abre CX e  Leitura X'
                  DataField = 'USUACPERMLEITX'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 25
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox26: TDBCheckBox
                  Left = 466
                  Top = 157
                  Width = 146
                  Height = 17
                  Caption = 'Fecha CX e Redu'#231#227'o Z'
                  DataField = 'USUACPERMREDZ'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 26
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox27: TDBCheckBox
                  Left = 322
                  Top = 172
                  Width = 119
                  Height = 17
                  Caption = 'Permite Sangria'
                  DataField = 'USUACPERMSANGRIA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 27
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox28: TDBCheckBox
                  Left = 466
                  Top = 172
                  Width = 134
                  Height = 17
                  Caption = 'Permite Suprimento'
                  DataField = 'USUACPERMSUPRI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 28
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox29: TDBCheckBox
                  Left = 322
                  Top = 187
                  Width = 300
                  Height = 17
                  Caption = 'Permite ver o Resumo Financeiro na tela Principal'
                  DataField = 'USUACRESUMOFIN'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 29
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox30: TDBCheckBox
                  Left = 322
                  Top = 202
                  Width = 300
                  Height = 17
                  Caption = 'Permite ver o Relat. Caixa no Checkout'
                  DataField = 'USUACPERMRESUCX'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 30
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox31: TDBCheckBox
                  Left = 6
                  Top = 48
                  Width = 265
                  Height = 17
                  Caption = 'Vender no Cheque com Limite Excedido'
                  DataField = 'USUACVENDCLIBLOQCHQ'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox32: TDBCheckBox
                  Left = 6
                  Top = 62
                  Width = 286
                  Height = 17
                  Caption = 'Vender p/cliente em Avisos/Cheq.SFundo/Bloq'
                  DataField = 'USUACVENDCLIBLOQMOTIV'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox33: TDBCheckBox
                  Left = 322
                  Top = 218
                  Width = 300
                  Height = 17
                  Caption = 'Permite abrir Cad.Clientes no Checkout'
                  DataField = 'USUACPVERCLICASH'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 31
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox38: TDBCheckBox
                  Left = 322
                  Top = 233
                  Width = 300
                  Height = 17
                  Caption = 'Libera Tela de Produto nao Encontrado'
                  DataField = 'USUACPRODNOTFOUND'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 32
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox39: TDBCheckBox
                  Left = 323
                  Top = 249
                  Width = 300
                  Height = 17
                  Caption = 'Permite Vender em Planos com Senha'
                  DataField = 'USUACPLANOCOMSENHA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 33
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox40: TDBCheckBox
                  Left = 6
                  Top = 265
                  Width = 300
                  Height = 17
                  Caption = 'Permite Trocar Mercadoria no Checkout'
                  DataField = 'USUACPERMITETROCA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 34
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox41: TDBCheckBox
                  Left = 6
                  Top = 281
                  Width = 300
                  Height = 17
                  Caption = 'Permite Alterar Qtde no Checkout'
                  DataField = 'USUACTROCAQTDE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 35
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox42: TDBCheckBox
                  Left = 165
                  Top = 91
                  Width = 151
                  Height = 17
                  Caption = 'Fechar/Cancelar Mesas'
                  DataField = 'CANCMESA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 36
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox43: TDBCheckBox
                  Left = 6
                  Top = 107
                  Width = 163
                  Height = 17
                  Caption = 'Cancelar Item Do Cupom'
                  DataField = 'USUACCANCITEMVENDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 6
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object DBEdit5: TDBEdit
                Left = 156
                Top = 19
                Width = 453
                Height = 21
                Ctl3D = True
                DataField = 'USUAA60EMAIL'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 2
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 108
            Width = 705
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 705
            Height = 108
            object Label1: TLabel
              Left = 10
              Top = 3
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
              Left = 78
              Top = 3
              Width = 32
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 382
              Top = 2
              Width = 40
              Height = 13
              Caption = 'Master'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 467
              Top = 2
              Width = 125
              Height = 13
              Caption = '% M'#225'x.Desc na Venda'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 13
              Top = 74
              Width = 92
              Height = 13
              Caption = 'Empresa Padrao'
              FocusControl = DBEditEmpresa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaEmpresa: TSpeedButton
              Left = 76
              Top = 86
              Width = 21
              Height = 21
              Hint = 'Acessa Empresa'
              Flat = True
              Glyph.Data = {
                CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                1000030000008801000000000000000000000000000000000000007C0000E003
                00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
              OnClick = RetornaEmpresaClick
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 64
              Height = 19
              Ctl3D = False
              DataField = 'USUAICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 74
              Top = 16
              Width = 302
              Height = 21
              Ctl3D = True
              DataField = 'USUAA60LOGIN'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 1
            end
            object ComboUsuarioMaster: TRxDBComboBox
              Left = 378
              Top = 15
              Width = 81
              Height = 21
              Style = csDropDownList
              Ctl3D = False
              DataField = 'USUACUSERMASTER'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentCtl3D = False
              TabOrder = 2
              Values.Strings = (
                'S'
                'N')
            end
            object DBEdit4: TDBEdit
              Left = 469
              Top = 15
              Width = 124
              Height = 21
              DataField = 'USUAN2PERCDESC'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object GroupBox1: TGroupBox
              Left = 8
              Top = 38
              Width = 585
              Height = 31
              Caption = ' Acesso aos M'#243'dulos '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              object DBCheckBox20: TDBCheckBox
                Left = 9
                Top = 12
                Width = 77
                Height = 17
                Caption = 'Checkout'
                DataField = 'USUACPERMITECASH'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox34: TDBCheckBox
                Left = 386
                Top = 12
                Width = 83
                Height = 17
                Caption = 'Integrador'
                DataField = 'USUACPERMINTEG'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox21: TDBCheckBox
                Left = 189
                Top = 12
                Width = 104
                Height = 17
                Caption = 'Administrativo'
                DataField = 'USUACPERMITEADM'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox35: TDBCheckBox
                Left = 295
                Top = 12
                Width = 81
                Height = 17
                Caption = 'Financeiro'
                DataField = 'USUACPERMITEFIN'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox36: TDBCheckBox
                Left = 85
                Top = 12
                Width = 95
                Height = 17
                Caption = 'Faturamento'
                DataField = 'USUACPERMITEFAT'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox37: TDBCheckBox
                Left = 484
                Top = 12
                Width = 94
                Height = 17
                Caption = 'Configurador'
                DataField = 'USUACPERMITECONFIG'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object DBEditEmpresa: TDBEdit
              Left = 8
              Top = 87
              Width = 62
              Height = 19
              Ctl3D = False
              DataField = 'EMPRESA_ACESSO'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 5
            end
            object DBEdit6: TDBEdit
              Left = 99
              Top = 87
              Width = 493
              Height = 19
              BevelInner = bvNone
              BevelOuter = bvNone
              Ctl3D = False
              DataField = 'EMPRESALOOKUP'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnCriarUsuarioNovocomDadosdoUsuarioAtual: TMenuItem
      Caption = 'Criar Usuario Novo com Perfil do Usuario Atual'
      OnClick = MnCriarUsuarioNovocomDadosdoUsuarioAtualClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnImprimeCrach: TMenuItem
      Caption = 'Imprime Crach'#225' com senha'
      OnClick = MnImprimeCrachClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Usuario Where (%MFiltro)')
    object SQLTemplateUSUAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
      Visible = False
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.USUARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.USUARIO.REGISTRO'
    end
    object SQLTemplateUSUAA5SENHA: TStringField
      FieldName = 'USUAA5SENHA'
      Origin = 'DB.USUARIO.USUAA5SENHA'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateUSUACVERDADCOMPRCLI: TStringField
      FieldName = 'USUACVERDADCOMPRCLI'
      Origin = 'DB.USUARIO.USUACVERDADCOMPRCLI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACDESBLOQCLI: TStringField
      FieldName = 'USUACDESBLOQCLI'
      Origin = 'DB.USUARIO.USUACDESBLOQCLI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUAN2PERCDESC: TFloatField
      FieldName = 'USUAN2PERCDESC'
      Origin = 'DB.USUARIO.USUAN2PERCDESC'
    end
    object SQLTemplateUSUACVENDCLIBLOQ: TStringField
      FieldName = 'USUACVENDCLIBLOQ'
      Origin = 'DB.USUARIO.USUACVENDCLIBLOQ'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACCANCVENDA: TStringField
      FieldName = 'USUACCANCVENDA'
      Origin = 'DB.USUARIO.USUACCANCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACEXCLCLI: TStringField
      FieldName = 'USUACEXCLCLI'
      Origin = 'DB.USUARIO.USUACEXCLCLI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACCANCPREVENDA: TStringField
      FieldName = 'USUACCANCPREVENDA'
      Origin = 'DB.USUARIO.USUACCANCPREVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACLIBERACREDITO: TStringField
      FieldName = 'USUACLIBERACREDITO'
      Origin = 'DB.USUARIO.USUACLIBERACREDITO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUCALTERASLDINVENTARIO: TStringField
      FieldName = 'USUCALTERASLDINVENTARIO'
      Origin = 'DB.USUARIO.USUCALTERASLDINVENTARIO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACEXCLDADOSTESO: TStringField
      FieldName = 'USUACEXCLDADOSTESO'
      Origin = 'DB.USUARIO.USUACEXCLDADOSTESO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACALTCAIXATES: TStringField
      FieldName = 'USUACALTCAIXATES'
      Origin = 'DB.USUARIO.USUACALTCAIXATES'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACEXCMOVBCO: TStringField
      FieldName = 'USUACEXCMOVBCO'
      Origin = 'DB.USUARIO.USUACEXCMOVBCO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACALTVLRVENDA: TStringField
      FieldName = 'USUACALTVLRVENDA'
      Origin = 'DB.USUARIO.USUACALTVLRVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUAA60EMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'USUAA60EMAIL'
      Origin = 'DB.USUARIO.USUAA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateUSUACBLOQCTRLG: TStringField
      DisplayLabel = 'Bloqueia a fun'#231#227'o CTRL + G'
      FieldName = 'USUACBLOQCTRLG'
      Origin = 'DB.USUARIO.USUACBLOQCTRLG'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACUSERMASTER: TStringField
      FieldName = 'USUACUSERMASTER'
      Origin = 'DB.USUARIO.USUACUSERMASTER'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACVERTODASEMPR: TStringField
      FieldName = 'USUACVERTODASEMPR'
      Origin = 'DB.USUARIO.USUACVERTODASEMPR'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACBXCPAGFIN: TStringField
      FieldName = 'USUACBXCPAGFIN'
      Origin = 'DB.USUARIO.USUACBXCPAGFIN'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACBXCRECFIN: TStringField
      FieldName = 'USUACBXCRECFIN'
      Origin = 'DB.USUARIO.USUACBXCRECFIN'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACVISULUCVEND: TStringField
      FieldName = 'USUACVISULUCVEND'
      Origin = 'DB.USUARIO.USUACVISULUCVEND'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUCENCERRAMVTODVS: TStringField
      FieldName = 'USUCENCERRAMVTODVS'
      Origin = 'DB.USUARIO.USUCENCERRAMVTODVS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUCDESTRIMPFISC: TStringField
      FieldName = 'USUCDESTRIMPFISC'
      Origin = 'DB.USUARIO.USUCDESTRIMPFISC'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACLIBERASALDNEG: TStringField
      FieldName = 'USUACLIBERASALDNEG'
      Origin = 'DB.USUARIO.USUACLIBERASALDNEG'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMITECONFIG: TStringField
      FieldName = 'USUACPERMITECONFIG'
      Origin = 'DB.USUARIO.USUACPERMITECONFIG'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMINTEG: TStringField
      FieldName = 'USUACPERMINTEG'
      Origin = 'DB.USUARIO.USUACPERMINTEG'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMVMOVCX: TStringField
      FieldName = 'USUACPERMVMOVCX'
      Origin = 'DB.USUARIO.USUACPERMVMOVCX'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMVVENDAS: TStringField
      FieldName = 'USUACPERMVVENDAS'
      Origin = 'DB.USUARIO.USUACPERMVVENDAS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACVRESFINFORN: TStringField
      FieldName = 'USUACVRESFINFORN'
      Origin = 'DB.USUARIO.USUACVRESFINFORN'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMLEITX: TStringField
      FieldName = 'USUACPERMLEITX'
      Origin = 'DB.USUARIO.USUACPERMLEITX'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMREDZ: TStringField
      FieldName = 'USUACPERMREDZ'
      Origin = 'DB.USUARIO.USUACPERMREDZ'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMSANGRIA: TStringField
      FieldName = 'USUACPERMSANGRIA'
      Origin = 'DB.USUARIO.USUACPERMSANGRIA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMSUPRI: TStringField
      FieldName = 'USUACPERMSUPRI'
      Origin = 'DB.USUARIO.USUACPERMSUPRI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACRESUMOFIN: TStringField
      FieldName = 'USUACRESUMOFIN'
      Origin = 'DB.USUARIO.USUACRESUMOFIN'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMRESUCX: TStringField
      FieldName = 'USUACPERMRESUCX'
      Origin = 'DB.USUARIO.USUACPERMRESUCX'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACVENDCLIBLOQCHQ: TStringField
      FieldName = 'USUACVENDCLIBLOQCHQ'
      Origin = 'DB.USUARIO.USUACVENDCLIBLOQCHQ'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACVENDCLIBLOQMOTIV: TStringField
      FieldName = 'USUACVENDCLIBLOQMOTIV'
      Origin = 'DB.USUARIO.USUACVENDCLIBLOQMOTIV'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPVERCLICASH: TStringField
      FieldName = 'USUACPVERCLICASH'
      Origin = 'DB.USUARIO.USUACPVERCLICASH'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMITEADM: TStringField
      FieldName = 'USUACPERMITEADM'
      Origin = 'DB.USUARIO.USUACPERMITEADM'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMITEFAT: TStringField
      FieldName = 'USUACPERMITEFAT'
      Origin = 'DB.USUARIO.USUACPERMITEFAT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMITEFIN: TStringField
      FieldName = 'USUACPERMITEFIN'
      Origin = 'DB.USUARIO.USUACPERMITEFIN'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMITECASH: TStringField
      FieldName = 'USUACPERMITECASH'
      Origin = 'DB.USUARIO.USUACPERMITECASH'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPRODNOTFOUND: TStringField
      FieldName = 'USUACPRODNOTFOUND'
      Origin = 'DB.USUARIO.USUACPRODNOTFOUND'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPLANOCOMSENHA: TStringField
      FieldName = 'USUACPLANOCOMSENHA'
      Origin = 'DB.USUARIO.USUACPLANOCOMSENHA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACPERMITETROCA: TStringField
      FieldName = 'USUACPERMITETROCA'
      Origin = 'DB.USUARIO.USUACPERMITETROCA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACTROCAQTDE: TStringField
      FieldName = 'USUACTROCAQTDE'
      Origin = 'DB.USUARIO.USUACTROCAQTDE'
      Size = 1
    end
    object SQLTemplateEMPRESA_ACESSO: TIntegerField
      FieldName = 'EMPRESA_ACESSO'
      Origin = 'DB.USUARIO.EMPRESA_ACESSO'
    end
    object SQLTemplateEMPRESALOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'EMPRESALOOKUP'
      LookupDataSet = TblEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60NOMEFANT'
      KeyFields = 'EMPRESA_ACESSO'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCANCMESA: TStringField
      FieldName = 'CANCMESA'
      Origin = 'DB.USUARIO.CANCMESA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUSUACCANCITEMVENDA: TStringField
      FieldName = 'USUACCANCITEMVENDA'
      Origin = 'EASY_GESTAO.USUARIO.USUACCANCITEMVENDA'
      FixedChar = True
      Size = 1
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Usuario'
      'set'
      '  USUAICOD = :USUAICOD,'
      '  USUAA60LOGIN = :USUAA60LOGIN,'
      '  USUAA5SENHA = :USUAA5SENHA,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  USUACVERDADCOMPRCLI = :USUACVERDADCOMPRCLI,'
      '  USUACDESBLOQCLI = :USUACDESBLOQCLI,'
      '  USUAN2PERCDESC = :USUAN2PERCDESC,'
      '  USUACVENDCLIBLOQ = :USUACVENDCLIBLOQ,'
      '  USUACCANCVENDA = :USUACCANCVENDA'
      'where'
      '  USUAICOD = :OLD_USUAICOD')
    InsertSQL.Strings = (
      'insert into Usuario'
      
        '  (USUAICOD, USUAA60LOGIN, USUAA5SENHA, PENDENTE, REGISTRO, USUA' +
        'CVERDADCOMPRCLI, '
      
        '   USUACDESBLOQCLI, USUAN2PERCDESC, USUACVENDCLIBLOQ, USUACCANCV' +
        'ENDA)'
      'values'
      
        '  (:USUAICOD, :USUAA60LOGIN, :USUAA5SENHA, :PENDENTE, :REGISTRO,' +
        ' :USUACVERDADCOMPRCLI, '
      
        '   :USUACDESBLOQCLI, :USUAN2PERCDESC, :USUACVENDCLIBLOQ, :USUACC' +
        'ANCVENDA)')
    DeleteSQL.Strings = (
      'delete from Usuario'
      'where'
      '  USUAICOD = :OLD_USUAICOD')
  end
  object ppEtiqCdBarras: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '11000000'
      '80000000'
      '151000000')
    DataPipeline = Pipe
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 7000
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 700
    Top = 1
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe'
    object ppColumnHeaderBand3: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 6746888
      mmPrintPosition = 0
      object ppDBText20: TppDBText
        UserName = 'ppDBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 1050133
        mmLeft = 5530332
        mmTop = 1609993
        mmWidth = 10780734
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'ppLabel1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Funcion'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1050133
        mmLeft = 420159
        mmTop = 1609993
        mmWidth = 4480199
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'ppDBBarCode1'
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = Pipe
        PrintHumanReadable = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3136112
        mmLeft = 560124
        mmTop = 3010171
        mmWidth = 12567204
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppColumnFooterBand3: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object Pipe: TppBDEPipeline
    DataSource = DSTemplate
    UserName = 'Pipe'
    Left = 672
    Top = 1
    object PipeppField1: TppField
      FieldAlias = 'USUAICOD'
      FieldName = 'USUAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeppField2: TppField
      FieldAlias = 'USUAA60LOGIN'
      FieldName = 'USUAA60LOGIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeppField3: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeppField4: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeppField5: TppField
      FieldAlias = 'USUAA5SENHA'
      FieldName = 'USUAA5SENHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeppField6: TppField
      FieldAlias = 'USUACVERDADCOMPRCLI'
      FieldName = 'USUACVERDADCOMPRCLI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeppField7: TppField
      FieldAlias = 'USUACDESBLOQCLI'
      FieldName = 'USUACDESBLOQCLI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeppField8: TppField
      FieldAlias = 'USUAN2PERCDESC'
      FieldName = 'USUAN2PERCDESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeppField9: TppField
      FieldAlias = 'USUACVENDCLIBLOQ'
      FieldName = 'USUACVENDCLIBLOQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeppField10: TppField
      FieldAlias = 'USUACCANCVENDA'
      FieldName = 'USUACCANCVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeppField11: TppField
      FieldAlias = 'USUACEXCLCLI'
      FieldName = 'USUACEXCLCLI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeppField12: TppField
      FieldAlias = 'USUACCANCPREVENDA'
      FieldName = 'USUACCANCPREVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeppField13: TppField
      FieldAlias = 'USUACLIBERACREDITO'
      FieldName = 'USUACLIBERACREDITO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeppField14: TppField
      FieldAlias = 'USUCALTERASLDINVENTARIO'
      FieldName = 'USUCALTERASLDINVENTARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeppField15: TppField
      FieldAlias = 'USUACEXCLDADOSTESO'
      FieldName = 'USUACEXCLDADOSTESO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeppField16: TppField
      FieldAlias = 'USUACALTCAIXATES'
      FieldName = 'USUACALTCAIXATES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeppField17: TppField
      FieldAlias = 'USUACEXCMOVBCO'
      FieldName = 'USUACEXCMOVBCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeppField18: TppField
      FieldAlias = 'USUACALTVLRVENDA'
      FieldName = 'USUACALTVLRVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeppField19: TppField
      FieldAlias = 'USUAA60EMAIL'
      FieldName = 'USUAA60EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeppField20: TppField
      FieldAlias = 'USUACBLOQCTRLG'
      FieldName = 'USUACBLOQCTRLG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeppField21: TppField
      FieldAlias = 'USUACUSERMASTER'
      FieldName = 'USUACUSERMASTER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeppField22: TppField
      FieldAlias = 'USUACVERTODASEMPR'
      FieldName = 'USUACVERTODASEMPR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeppField23: TppField
      FieldAlias = 'USUACBXCPAGFIN'
      FieldName = 'USUACBXCPAGFIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipeppField24: TppField
      FieldAlias = 'USUACBXCRECFIN'
      FieldName = 'USUACBXCRECFIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeppField25: TppField
      FieldAlias = 'USUACVISULUCVEND'
      FieldName = 'USUACVISULUCVEND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeppField26: TppField
      FieldAlias = 'USUCENCERRAMVTODVS'
      FieldName = 'USUCENCERRAMVTODVS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeppField27: TppField
      FieldAlias = 'USUCDESTRIMPFISC'
      FieldName = 'USUCDESTRIMPFISC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipeppField28: TppField
      FieldAlias = 'USUACLIBERASALDNEG'
      FieldName = 'USUACLIBERASALDNEG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipeppField29: TppField
      FieldAlias = 'USUACPERMITECONFIG'
      FieldName = 'USUACPERMITECONFIG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipeppField30: TppField
      FieldAlias = 'USUACPERMINTEG'
      FieldName = 'USUACPERMINTEG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipeppField31: TppField
      FieldAlias = 'USUACPERMVMOVCX'
      FieldName = 'USUACPERMVMOVCX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PipeppField32: TppField
      FieldAlias = 'USUACPERMVVENDAS'
      FieldName = 'USUACPERMVVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object PipeppField33: TppField
      FieldAlias = 'USUACVRESFINFORN'
      FieldName = 'USUACVRESFINFORN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
  end
  object SQLEspelhoNovoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 504
    Top = 2
  end
  object TblEmpresa: TTable
    DatabaseName = 'DB'
    TableName = 'EMPRESA'
    Left = 538
    Top = 2
    object TblEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Required = True
    end
    object TblEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
end
