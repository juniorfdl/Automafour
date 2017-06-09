object FormTelaMotivoNaoAtend: TFormTelaMotivoNaoAtend
  Left = 192
  Top = 107
  Width = 535
  Height = 214
  Caption = 'Confirma'#231#227'o'
  Color = 12572888
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label33: TLabel
    Left = 20
    Top = 24
    Width = 160
    Height = 13
    Caption = 'Motivo de N'#227'o Atendimento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 57
    Top = 80
    Width = 406
    Height = 74
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'O sistema exige  que voce escolha um motivo de n'#227'o atendimento, ' +
      'para poder executar algumas opera'#231#245'es internas com exito...     ' +
      '                                                                ' +
      '                                                                ' +
      '                           Pressione a tecla <ENTER> para confir' +
      'mar ou <ESC> para voltar para tela anterior'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object ComboMotivoNaoAtendimento: TRxDBLookupCombo
    Left = 19
    Top = 40
    Width = 486
    Height = 21
    DropDownCount = 8
    DisplayEmpty = 'Escolha um Motivo...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookupField = 'MONAICOD'
    LookupDisplay = 'MONAA60DESCR'
    LookupSource = FormTelaMarcacaoConsulta.DSSQLMotivoNaoAtend
    ParentFont = False
    TabOrder = 0
    OnKeyDown = ComboMotivoNaoAtendimentoKeyDown
  end
end
