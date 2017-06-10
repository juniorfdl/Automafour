inherited FormTelaImportacaoPedidoVenda: TFormTelaImportacaoPedidoVenda
  Left = 13
  Width = 790
  Height = 572
  Caption = 'Importa'#231#227'o Pedido de Venda'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 774
    Height = 533
    inherited PanelCentral: TPanel
      Width = 770
      Height = 449
      BorderWidth = 10
      inherited PanelBarra: TPanel
        Left = 10
        Top = 10
        Width = 0
        Height = 429
      end
      object PanelLegenda: TPanel
        Left = 1
        Top = 1
        Width = 805
        Height = 53
        Color = 16249066
        TabOrder = 1
        object DBText1: TDBText
          Left = 84
          Top = 6
          Width = 106
          Height = 18
          DataField = 'PRODICOD'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelProd: TLabel
          Left = 16
          Top = 6
          Width = 61
          Height = 18
          AutoSize = False
          Caption = 'Produto :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 195
          Top = 6
          Width = 567
          Height = 18
          DataField = 'PRODA60DESCR'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 99
          Top = 30
          Width = 175
          Height = 16
          DataField = 'Referencia'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 15
          Top = 30
          Width = 79
          Height = 16
          AutoSize = False
          Caption = 'Refer'#234'ncia :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 283
          Top = 30
          Width = 31
          Height = 16
          AutoSize = False
          Caption = 'Cor :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 325
          Top = 30
          Width = 243
          Height = 16
          DataField = 'Cor'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 582
          Top = 30
          Width = 52
          Height = 16
          AutoSize = False
          Caption = 'Grade :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 643
          Top = 30
          Width = 117
          Height = 16
          DataField = 'Grade'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ListBoxGrade: TListBox
          Left = 432
          Top = 0
          Width = 121
          Height = 129
          ItemHeight = 13
          TabOrder = 0
          Visible = False
        end
      end
      object PanelCab: TPanel
        Left = 0
        Top = 55
        Width = 789
        Height = 15
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 2
        DesignSize = (
          789
          15)
        object L1: TLabel
          Left = 1
          Top = 0
          Width = 43
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L2: TLabel
          Left = 49
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L3: TLabel
          Left = 93
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L4: TLabel
          Left = 137
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L5: TLabel
          Left = 183
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L6: TLabel
          Left = 227
          Top = 0
          Width = 38
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L7: TLabel
          Left = 270
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L8: TLabel
          Left = 315
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L9: TLabel
          Left = 359
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L10: TLabel
          Left = 404
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L11: TLabel
          Left = 448
          Top = 0
          Width = 38
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L12: TLabel
          Left = 491
          Top = 0
          Width = 38
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L13: TLabel
          Left = 534
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L14: TLabel
          Left = 580
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L15: TLabel
          Left = 625
          Top = 0
          Width = 38
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LTotP: TLabel
          Left = 666
          Top = 0
          Width = 44
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Caption = 'Tot. Ped'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LTotN: TLabel
          Left = 713
          Top = 0
          Width = 51
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Caption = 'Tot. NF '
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Shape1: TShape
          Left = 44
          Top = 0
          Width = 4
          Height = 15
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape2: TShape
          Left = 89
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape3: TShape
          Left = 133
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape4: TShape
          Left = 178
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape5: TShape
          Left = 222
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape6: TShape
          Left = 265
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape7: TShape
          Left = 310
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape8: TShape
          Left = 354
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape9: TShape
          Left = 399
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape10: TShape
          Left = 443
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape11: TShape
          Left = 486
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape12: TShape
          Left = 529
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape13: TShape
          Left = 574
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape14: TShape
          Left = 619
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape15: TShape
          Left = 662
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape16: TShape
          Left = 711
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape18: TShape
          Left = 759
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
      end
      object DBGridLista: TDBGrid
        Left = 2
        Top = 70
        Width = 776
        Height = 368
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSTblQtde
        FixedColor = 16767449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgEditing, dgColLines, dgRowLines, dgCancelOnExit]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q9'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '9'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 22
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q11'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = '11'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q12'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '12'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q13'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '13'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q14'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '14'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q15'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = '15'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'QTotal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 48
            Visible = True
          end>
      end
      object ProgressBar: TProgressBar
        Left = -2
        Top = 447
        Width = 776
        Height = 33
        TabOrder = 4
        Visible = False
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 770
      inherited PanelCabecalho: TPanel
        Width = 770
        inherited PanelNavigator: TPanel
          Width = 770
          object Label1: TLabel [0]
            Left = 197
            Top = 9
            Width = 123
            Height = 13
            Caption = 'Quantidade do Pedido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel [1]
            Left = 473
            Top = 9
            Width = 111
            Height = 13
            Caption = 'Quantidade da Nota'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BtnOk: TSpeedButton [2]
            Left = 5
            Top = 3
            Width = 75
            Height = 25
            Caption = 'OK'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              DE040000424DDE0400000000000036040000280000000C0000000E0000000100
              080000000000A8000000130B0000130B0000000100000001000000000000A7C2
              B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
              88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000111111111100
              11111111111111111111000B0011111111111111110009090011111111111111
              1100090F10001111111111110009090D0E0011111111110009090B000C060011
              11111100090800000A0200111111000909000011000206001111000708001111
              0003020011111100001111111100030600111111111111111100050200111111
              1111111111110003040011111111111111110001020011111111111111111100
              0011}
            ParentFont = False
            OnClick = BtnOkClick
          end
          object Label3: TLabel [3]
            Left = 359
            Top = 9
            Width = 71
            Height = 13
            Caption = '<- Legenda ->'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 770
          end
        end
      end
    end
  end
  object SQLTemplate: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    DataSource = FormCadastroNotaFiscal.DSTemplate
    SQL.Strings = (
      'Select '
      
        '    C.*,P.PRODA60DESCR,P.PRODIAGRUPGRADE,P.CORICOD,P.GRADICOD,P.' +
        'GRTMICOD,P.PRODA60REFER'
      'From '
      '    PedidoVendaItem C, Produto P'
      'Where '
      '    P.PRODICOD = C.PRODICOD AND'
      '    PDVDA13ID=:PDVDA13ID AND '
      '    (%MFiltro)'
      'order by'
      '   P.PRODIAGRUPGRADE, P.CORICOD, P.GRTMICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 61
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLTemplatePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITIITEM'
    end
    object SQLTemplatePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
    end
    object SQLTemplatePVITN3QUANT: TFloatField
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
    end
    object SQLTemplatePVITN2VLRUNIT: TFloatField
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
    end
    object SQLTemplatePVITN2PERCDESC: TFloatField
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
    end
    object SQLTemplatePVITN2VLRDESC: TFloatField
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDAITEM.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePVITN3QUANTVEND: TFloatField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
    end
    object SQLTemplatePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLTemplateCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLTemplateGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLTemplateGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLTemplatePRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCorLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'CorLookUp'
      LookupDataSet = SQLCor
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      Size = 30
      Lookup = True
    end
    object SQLTemplatePVITN2PERCCOMIS: TFloatField
      FieldName = 'PVITN2PERCCOMIS'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCCOMIS'
    end
  end
  object TblQtde: TMemoryTable
    BeforeInsert = TblQtdeBeforeInsert
    BeforeDelete = TblQtdeBeforeDelete
    OnNewRecord = TblQtdeNewRecord
    TableName = 'TblQtde'
    Left = 89
    Top = 2
    object TblQtdePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblQtdePDVDA13ID: TStringField
      Tag = 1
      DisplayLabel = 'C'#243'd.Pedido'
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOCOMPRAITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object TblQtdePVITIITEM: TIntegerField
      Tag = 1
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'PVITIITEM'
      Origin = 'DB.PEDIDOCOMPRAITEM.PVITIITEM'
    end
    object TblQtdePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblQtdeBCDField1: TFloatField
      FieldName = '1'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField2: TFloatField
      FieldName = '2'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField3: TFloatField
      FieldName = '3'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField4: TFloatField
      FieldName = '4'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField5: TFloatField
      FieldName = '5'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField6: TFloatField
      FieldName = '6'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField7: TFloatField
      FieldName = '7'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField8: TFloatField
      FieldName = '8'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField9: TFloatField
      FieldName = '9'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField10: TFloatField
      FieldName = '10'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField11: TFloatField
      FieldName = '11'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField12: TFloatField
      FieldName = '12'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField13: TFloatField
      FieldName = '13'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField14: TFloatField
      FieldName = '14'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField15: TFloatField
      FieldName = '15'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeTotal: TFloatField
      FieldName = 'Total'
      OnChange = TblQtdeTotalChange
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TblQtdeQ1: TFloatField
      FieldName = 'Q1'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ2: TFloatField
      FieldName = 'Q2'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ3: TFloatField
      FieldName = 'Q3'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ4: TFloatField
      FieldName = 'Q4'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ5: TFloatField
      FieldName = 'Q5'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ6: TFloatField
      FieldName = 'Q6'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ7: TFloatField
      FieldName = 'Q7'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ8: TFloatField
      FieldName = 'Q8'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ9: TFloatField
      FieldName = 'Q9'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ10: TFloatField
      FieldName = 'Q10'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ11: TFloatField
      FieldName = 'Q11'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ12: TFloatField
      FieldName = 'Q12'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ13: TFloatField
      FieldName = 'Q13'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ14: TFloatField
      FieldName = 'Q14'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQ15: TFloatField
      FieldName = 'Q15'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeQTotal: TFloatField
      FieldName = 'QTotal'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TblQtdeCod1: TIntegerField
      FieldName = 'Cod1'
      Visible = False
    end
    object TblQtdeCod2: TIntegerField
      FieldName = 'Cod2'
      Visible = False
    end
    object TblQtdeCod3: TIntegerField
      FieldName = 'Cod3'
      Visible = False
    end
    object TblQtdeCod4: TIntegerField
      FieldName = 'Cod4'
      Visible = False
    end
    object TblQtdeCod5: TIntegerField
      FieldName = 'Cod5'
      Visible = False
    end
    object TblQtdeCod6: TIntegerField
      FieldName = 'Cod6'
      Visible = False
    end
    object TblQtdeCod7: TIntegerField
      FieldName = 'Cod7'
      Visible = False
    end
    object TblQtdeCod8: TIntegerField
      FieldName = 'Cod8'
      Visible = False
    end
    object TblQtdeCod9: TIntegerField
      FieldName = 'Cod9'
      Visible = False
    end
    object TblQtdeCod10: TIntegerField
      FieldName = 'Cod10'
      Visible = False
    end
    object TblQtdeCod11: TIntegerField
      FieldName = 'Cod11'
      Visible = False
    end
    object TblQtdeCod12: TIntegerField
      FieldName = 'Cod12'
      Visible = False
    end
    object TblQtdeCod13: TIntegerField
      FieldName = 'Cod13'
      Visible = False
    end
    object TblQtdeCod14: TIntegerField
      FieldName = 'Cod14'
      Visible = False
    end
    object TblQtdeCod15: TIntegerField
      FieldName = 'Cod15'
      Visible = False
    end
    object TblQtdeCodTotal: TIntegerField
      FieldName = 'CodTotal'
    end
    object TblQtdeP1: TIntegerField
      FieldName = 'P1'
      Visible = False
    end
    object TblQtdeP2: TIntegerField
      FieldName = 'P2'
      Visible = False
    end
    object TblQtdeP3: TIntegerField
      FieldName = 'P3'
      Visible = False
    end
    object TblQtdeP4: TIntegerField
      FieldName = 'P4'
      Visible = False
    end
    object TblQtdeP5: TIntegerField
      FieldName = 'P5'
      Visible = False
    end
    object TblQtdeP6: TIntegerField
      FieldName = 'P6'
      Visible = False
    end
    object TblQtdeP7: TIntegerField
      FieldName = 'P7'
      Visible = False
    end
    object TblQtdeP8: TIntegerField
      FieldName = 'P8'
      Visible = False
    end
    object TblQtdeP9: TIntegerField
      FieldName = 'P9'
      Visible = False
    end
    object TblQtdeP10: TIntegerField
      FieldName = 'P10'
      Visible = False
    end
    object TblQtdeP11: TIntegerField
      FieldName = 'P11'
      Visible = False
    end
    object TblQtdeP12: TIntegerField
      FieldName = 'P12'
      Visible = False
    end
    object TblQtdeP13: TIntegerField
      FieldName = 'P13'
      Visible = False
    end
    object TblQtdeP14: TIntegerField
      FieldName = 'P14'
      Visible = False
    end
    object TblQtdeP15: TIntegerField
      FieldName = 'P15'
      Visible = False
    end
    object TblQtdePTotal: TIntegerField
      FieldName = 'PTotal'
      Visible = False
    end
    object TblQtdeCor: TStringField
      FieldName = 'Cor'
      Size = 60
    end
    object TblQtdeReferencia: TStringField
      FieldName = 'Referencia'
      Size = 60
    end
    object TblQtdeGrade: TIntegerField
      FieldName = 'Grade'
      DisplayFormat = '#'
      EditFormat = '#'
    end
    object TblQtdeLegValor: TStringField
      FieldName = 'LegValor'
      Size = 5
    end
    object TblQtdePVITN3VLRUNIT: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PEDIDOCOMPRAITEM.PVITN3VLRUNIT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TblQtdeLegDesc: TStringField
      FieldName = 'LegDesc'
      Size = 5
    end
    object TblQtdePVITN3PERCDESC: TFloatField
      FieldName = 'PVITN3PERCDESC'
      Origin = 'DB.PEDIDOCOMPRAITEM.PVITN3PERCDESC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TblQtdePVITN2PERCCOMIS: TFloatField
      FieldName = 'PVITN2PERCCOMIS'
    end
  end
  object DSTblQtde: TDataSource
    DataSet = TblQtde
    Left = 89
    Top = 30
  end
  object SQLGradeTamanho: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    GradeTamanho'
      'Where '
      '    GRADICOD=:GRADICOD'
      'order by'
      '    GRTMICOD')
    Macros = <>
    Left = 61
    Top = 30
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
      end>
    object SQLGradeTamanhoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLGradeTamanhoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLGradeTamanhoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From COR')
    Macros = <>
    Left = 61
    Top = 58
    object SQLCorCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSNotaFiscalItem: TDataSource
    DataSet = FormCadastroNotaFiscalItem.SQLTemplate
    Left = 224
    Top = 8
  end
end
