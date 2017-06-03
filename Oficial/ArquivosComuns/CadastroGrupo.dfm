inherited FormCadastroGrupo: TFormCadastroGrupo
  Left = 372
  Top = 146
  Caption = 'Grupos / Subgrupos / Varia'#231#245'es'
  ClientHeight = 478
  ClientWidth = 948
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 948
    Height = 478
    inherited PanelCabecalho: TPanel
      Width = 946
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 946
        inherited Panel1: TPanel
          Width = 944
          inherited PanelNavigator: TPanel
            Width = 944
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 944
            end
          end
          inherited PanelLeft: TPanel
            Left = 487
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 946
      Height = 404
      inherited PanelBarra: TPanel
        Height = 404
        inherited Button3: TRxSpeedButton
          Caption = '&3 Subgrupos'
          WordWrap = True
          Visible = True
          OnClick = Button1Click
        end
        object GroupBoxFOTO: TGroupBox
          Left = 0
          Top = 245
          Width = 130
          Height = 159
          Align = alBottom
          Caption = 'Foto do Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object ImageGrupo: TImage
            Left = 2
            Top = 56
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
            Top = 15
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
            Top = 15
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
          object BtSalvarImagem: TSpeedButton
            Tag = 1
            Left = 4
            Top = 35
            Width = 122
            Height = 18
            Cursor = crHandPoint
            Hint = 'Capturar Imagem'
            AllowAllUp = True
            Caption = 'Salvar em Disco'
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
            OnClick = BtSalvarImagemClick
          end
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 816
        Height = 404
        inherited Panel5: TPanel
          Width = 816
          Height = 404
          inherited PagePrincipal: TPageControl
            Top = 47
            Width = 816
            Height = 357
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 808
                Height = 284
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'GRUPICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GRUPA60DESCR'
                    Width = 554
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 808
                inherited PanelBetween: TPanel
                  Width = 414
                  inherited AdvPanel1: TAdvPanel
                    Width = 414
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 414
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 414
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
          end
          inherited PanelMaster: TPanel
            Width = 816
            Height = 6
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 816
            object Label1: TLabel
              Left = 7
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
              Left = 74
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 383
              Top = 3
              Width = 129
              Height = 13
              Caption = 'Nro Niveis Restaurante'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 16
              Width = 64
              Height = 21
              DataField = 'GRUPICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 71
              Top = 16
              Width = 305
              Height = 21
              DataField = 'GRUPA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object ComboOrigem: TRxDBComboBox
              Left = 380
              Top = 16
              Width = 134
              Height = 21
              Style = csDropDownList
              DataField = 'GRUPINIVEL'
              DataSource = DSTemplate
              EnableValues = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                '1'
                '2'
                '3')
              ParentFont = False
              TabOrder = 2
              Values.Strings = (
                '1'
                '2'
                '3')
            end
            object DBCheckBox3: TDBCheckBox
              Left = 538
              Top = 17
              Width = 124
              Height = 17
              Caption = 'Listar nos Mobiles '
              DataField = 'LISTARMOBILE'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'select * from GRUPO where (%MFiltro)')
    object SQLTemplateGRUPICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GRUPICOD'
      Origin = 'DB.GRUPO.GRUPICOD'
      Visible = False
    end
    object SQLTemplateGRUPA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRUPA60DESCR'
      Origin = 'DB.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.GRUPO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.GRUPO.REGISTRO'
    end
    object SQLTemplateGRUPBIMAGEM: TBlobField
      FieldName = 'GRUPBIMAGEM'
      Origin = 'DB.GRUPO.GRUPBIMAGEM'
      Size = 1
    end
    object SQLTemplateGRUPINIVEL: TIntegerField
      FieldName = 'GRUPINIVEL'
      Origin = 'DB.GRUPO.GRUPINIVEL'
    end
    object SQLTemplateLISTARMOBILE: TStringField
      FieldName = 'LISTARMOBILE'
      Origin = 'DB.GRUPO.LISTARMOBILE'
      FixedChar = True
      Size = 1
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update GRUPO'
      'set'
      '  GRUPICOD = :GRUPICOD,'
      '  GRUPA60DESCR = :GRUPA60DESCR,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  GRUPICOD = :OLD_GRUPICOD')
    InsertSQL.Strings = (
      'insert into GRUPO'
      '  (GRUPICOD, GRUPA60DESCR, PENDENTE, REGISTRO)'
      'values'
      '  (:GRUPICOD, :GRUPA60DESCR, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from GRUPO'
      'where'
      '  GRUPICOD = :OLD_GRUPICOD')
  end
  object SQLGrupoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from GRUPO Where %Descricao')
    Macros = <
      item
        DataType = ftString
        Name = 'Descricao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 472
    Top = 2
    object SQLGrupoAuxGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.GRUPO.GRUPICOD'
    end
    object SQLGrupoAuxGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'DB.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
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
