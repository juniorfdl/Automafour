object FormTelaDadosVersao: TFormTelaDadosVersao
  Left = 190
  Top = 99
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 585
  ClientWidth = 804
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 804
    Height = 35
    Align = alTop
    Alignment = taCenter
    Caption = 'Dados da Vers'#227'o'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = 14531001
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clNavy
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object dxfLabel13: TRxLabel
    Left = 159
    Top = 437
    Width = 410
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxfLabel14: TRxLabel
    Left = 159
    Top = 467
    Width = 481
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxfLabel15: TRxLabel
    Left = 159
    Top = 498
    Width = 314
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DadosTerminal: TRxLabel
    Left = 0
    Top = 565
    Width = 804
    Height = 20
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = 'DadosTerminal'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Panel4: TPanel
    Left = 139
    Top = 59
    Width = 523
    Height = 494
    BevelOuter = bvNone
    BorderWidth = 3
    Color = 14531001
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Memo1: TRxRichEdit
      Left = 5
      Top = 5
      Width = 513
      Height = 484
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        #9#9#9'Altera'#231#245'es / Problemas Solucionados'
        ''
        'V E R S '#195' O   1.97'
        ''
        '04/02/2002'
        
          '- Foi criada uma op'#231#227'o para que o Ctrl+N quando acionado no reto' +
          'rno de itens'
        'exiba os itens de retorno;'
        
          '- Foi inclu'#237'da a data de emiss'#227'o no impress'#227'o do pedido com reto' +
          'rno;'
        
          '- Foi resolvido o problema de n'#227'o excluir o lan'#231'amento do cadern' +
          'o do cliente'
        'quando cancelava uma cupom;'
        ''
        'V E R S '#195' O   1.95'
        ''
        '29/01/2002'
        
          '- Foi resolvido o problema de n'#227'o selecionar portador, situa'#231#227'o ' +
          'e banco quando eram'
        
          'digitadas a iniciais na tela de dados do cheque no fechamento do' +
          ' cupom;'
        '- Foi colocado na tela de consulta de cupons o Total de Retorno;'
        ''
        'V E R S '#195' O   1.94'
        ''
        '29/12/2001'
        '- Foi criada uma rotina para devolu'#231#227'o de mercadorias;'
        '- Foi criada a op'#231#227'o para poder digitar cheques;'
        '- Foi criada uma rotina para efeutar vendas consignadas;'
        
          '- Foi criada uma rotina para abater valores de venda consignada ' +
          'com cheques ou'
        '  com devolu'#231#227'o de mercadorias;'
        ''
        'V E R S '#195' O   1.93p'
        ''
        '29/12/2001'
        
          '- Foi resolvido o problema de lentid'#227'o no recebimento do credi'#225'r' +
          'io;'
        
          '- Foi criada uma rotina para poder digitar uma informa'#231#227'o n'#227'o nu' +
          'm'#233'rica do produto'
        
          '  quando o sistema est'#225' solicitando os produtos e ent'#227'o ir'#225' abri' +
          'r a tela de Consulta'
        
          '  de Itens mostrando na lista somente os produtos que iniciarem ' +
          'com a informa'#231#227'o digitada'
        
          '  de acordo com o campo de procura selecionado. Esta rotina tamb' +
          #233'm foi implementada'
        '  para Cientes, Vendedores, Planos e Numer'#225'rios;'
        
          '- Foi criada uma rotina que possibilita que o usu'#225'rio tecle seta' +
          ' para baixo quando o'
        
          '  sistema estiver solicitando um Plano, Vendedor, Numer'#225'rio '#224' Vi' +
          'sta ou '#224' Prazo e'
        '  abra as telas de consultas dos respectivos dados;'
        ''
        'V E R S '#195' O   1.93m'
        ''
        '23/12/2001'
        
          '- Foi inclu'#237'do a cidade do cliente no fechamento do cupom fiscal' +
          ' nos ECFs Bematech MP20FI-II;'
        
          '- Foi corrigido o problema de n'#227'o setar um vendedor nos itens do' +
          ' cupom quando a venda n'#227'o era'
        '  importada de uma pr'#233'-venda;'
        ''
        '21/12/2001'
        
          '- Foi corrigido o problema de n'#227'o destacar valor do troco no ECF' +
          ' Sigtron 345;'
        ''
        '19/12/2001'
        
          '- Foi inclu'#237'do o extrato de caderno na tela de cadastro de clien' +
          'te ;'
        ''
        'V E R S '#195' O   1.93k'
        '13/12/2001'
        
          '- Foi corrigido o problema de n'#227'o imprimir o troco na ECF Bemate' +
          'ch ;'
        ''
        'V E R S '#195' O   1.93i'
        '12/12/2001'
        
          '- Foi corrigido o problema de n'#227'o testar RG e CPF repetidos no c' +
          'adastro de clientes ;'
        
          '- Foi corrigido o problema de calcular errado o valor das parcel' +
          'as vencidas nos dados de'
        '  compras do cadastro de clientes ;'
        ''
        'V E R S '#195' O   1.92h'
        ''
        '11/12/2001'
        '- Foi corrigido o problema de n'#227'o emitir a redu'#231#227'o Z ;'
        
          '- Foi corrigido o problema de n'#227'o gravar data de primeira e '#250'lti' +
          'ma compra no cliente'
        '  no final da venda;'
        ''
        '10/12/2001'
        
          '- Foi corrigido o seguinte problema, quando se fazia uma venda c' +
          'om valor a vista e era'
        
          '  informado uma valor maior  o  sistema  calculava  o troco corr' +
          'etamente, mas'
        
          '  jogava o valor integral para o numer'#225'rio a vista ao inv'#233's de l' +
          'an'#231'ar descontando'
        
          '  o troco, isto fazia tamb'#233'm com que n'#227'o fechasse no caixa o val' +
          'or do numer'#225'rio a'
        '  vista e por conseq'#252#234'ncia o saldo;'
        ''
        '04/12/2001'
        
          '- Foi alterado o relat'#243'rio de Movimenta'#231#227'o do Caixa para listar ' +
          'cada lan'#231'amento em uma s'#243
        
          '  linha mostrando tamb'#233'm Juro,Multa e Desconto totalizando as co' +
          'lunas D'#233'bito, Cr'#233'dito,'
        '  Juro, Multa e Desconto no final de cada dia;'
        ''
        'V E R S '#195' O   1.92g'
        ''
        '27/11/2001'
        
          '- Foi criada na configura'#231#227'o no terminal para informar o numer'#225'r' +
          'io padr'#227'o para o'
        '  recebimento do credi'#225'rio;'
        ''
        'V E R S '#195' O   1.92f'
        ''
        '27/11/2001'
        
          '- Foi criada a possibilidade de trabalhar com produtos pesados l' +
          'endo etiquetas'
        '  geradas pela balan'#231'a;'
        
          '- Foi criada uma configura'#231#227'o para n'#227'o exibir a mensagem pergunt' +
          'ando se deseja ou n'#227'o'
        '  encerrar o Cupom ou Pr'#233'-Venda;'
        
          '- Foi colocada na sa'#237'da do sistema uma pergunta para ver se deve' +
          ' desligar o windows ao'
        '  sair do PDV;'
        ''
        'V E R S '#195' O   1.92i'
        ''
        '27/11/2001'
        
          '- Corre'#231#227'o do problema de n'#227'o atualizar o campo REGISTRO na tabe' +
          'la CONTASRECEBER quando '#233
        '  recebida uma parcela de credi'#225'rio ;'
        ''
        '26/11/2001'
        
          '- No recebimento de credi'#225'rio o sistema passou a lancar no movim' +
          'enta'#231#227'o do caixa o valor com'
        '  juros, multa,desconto;'
        ''
        'V E R S '#195' O   1.92g'
        ''
        '23/11/2001'
        
          '- Foi criada a op'#231#227'o para poder alterar a Data de "Baixa" e de "' +
          'C'#225'lculo" de juros, multa e'
        'desconto na tela de Recebimento de Credi'#225'rio;'
        
          '- Corre'#231#227'o do problema de imprimir no Relat'#243'rio de Movimento do ' +
          'Caixa os valores referentes ao'
        
          'estorno de um cupom cancelado na coluna Cr'#233'dito quando deveria s' +
          'er na coluna D'#233'bito;'
        ''
        'V E R S '#195' O   1.92f'
        ''
        '22/11/2001'
        '- Foi criada a op'#231#227'o para entrada ser quitada automaticamente;'
        ''
        '21/11/2001'
        
          '- Foi criada a op'#231#227'o de autenticar opera'#231#227'o de caixa na tela mov' +
          'imenta'#231#227'o de caixa;'
        ''
        '20/11/2001'
        
          '- Foi criada uma rotina para imprimir a autoriza'#231#227'o de compra na' +
          ' tela dependentes;'
        ''
        '19/11/2001'
        
          '- Foi criada uma rotina para imprimir a entrada se ainda n'#227'o est' +
          'iver quitada quando imprime um'
        '  carn'#234' avulso na tela de Clientes;'
        
          '- N'#227'o est'#225' alterando corretamente as parcelas a prazo quando '#233' a' +
          'lterado o valor da entrada em um'
        '  plano com entrada;'
        
          '- Corre'#231#227'o do problema de n'#227'o pesquisar pelo c'#243'digo de barras no' +
          ' Tira-Teima;'
        
          '- Foi criada uma rotina para recalcular o plano e informar os nu' +
          'mer'#225'rios automaticamente ap'#243's'
        '  informar um desconto no total da venda;'
        ''
        'V E R S '#195' O   1.92c'
        ''
        '17/11/2001'
        
          '- Foi criada a op'#231#227'o de DESATIVAR um Pr'#233'-venda atrav'#233'z da tecla ' +
          'F6 na tela de importa'#231#227'o de Pr'#233'-'
        '  venda;'
        
          '- Foi criada a op'#231#227'o de informar qual Opera'#231#227'o de Caixa deve sol' +
          'icitar a digita'#231#227'o de valor na'
        '  Movimenta'#231#227'o do Caixa(F12);'
        
          '- No Fechamento da venda se estiver pedindo o vendedor e alterar' +
          ' para o plano quando vai encerrar'
        '  a venda emite um aviso que o vendedor n'#227'o foi informado,'
        
          '  ent'#227'o o sistema pede novamente o vendedor e perde na sequencia' +
          ' de fechamento;'
        ''
        'V E R S '#195' O   1.92b'
        ''
        '14/11/2001'
        
          '- Quando se altera o cliente, o plano ou a entrada na tela de fe' +
          'chamento do cupom est'#225' duplicando'
        '  a taxa de credi'#225'rio;'
        ''
        'V E R S '#195' O   1.92a'
        ''
        '13/11/2001'
        
          '- Foi criada a possibilidade de alterar a data base de c'#225'lculo d' +
          'e Juro, Multa e Desconto nos dados'
        
          '  de compra do Cadastro de Cliente e tamb'#233'm na tela de recebimen' +
          'to de credi'#225'rio;'
        
          '- Quando se altera o SEXO ou o ESTADO CIVIL no cliente e grava u' +
          'm dos dois fica em branco;'
        
          '- Foi criada a configura'#231#227'o para poder informar uma quantidade p' +
          'adr'#227'o no PDV para que n'#227'o fique '
        'mais'
        
          '  solicitando quantidade enquanto informa os itens, com a possib' +
          'ilidade de alter'#225'-la para itens '
        'espec'#237'ficos;'
        ''
        '12/11/2001'
        
          '- Quando vai informar o plano em uma venda que passa de R$ 1.000' +
          ',00 da uma erro;'
        
          '- Foi inclu'#237'da a op'#231#227'o para digitar o numero do documento "00101' +
          '10000012" de forma simplificada '
        
          '"1.11.12" no Recebimento do Credi'#225'rio e Cancelamento de Cupom na' +
          ' tela de Movimenta'#231#227'o de Caixa;'
        
          '- Foi criada a op'#231#227'o de dar desconto em percentual no total da v' +
          'enda;'
        ''
        '10/11/2001'
        
          '- Foi inclu'#237'da a rotina para re-imprimir pr'#233'-venda na tela inici' +
          'al pelo "F6";'
        ''
        'V E R S '#195' O   1.91'
        ''
        '08/11/2001'
        
          '- Foi inclu'#237'da a rotina para diminuir valor do acr'#233'scimo aplicad' +
          'o pelo plano no fechamento da venda;'
        ''
        '07/11/2001'
        '- Foi inclu'#237'da a rotina para troca de operador;'
        
          '- Foi inclu'#237'da a rotina p/gravar o c'#243'digo do operador que cancel' +
          'ou o cupom.'
        '  Esta informa'#231#227'o aparece na tela Consulta de Cupom;'
        ''
        '06/11/2001'
        '- N'#227'o est'#225' calculando desconto por antencipacao de Credi'#225'rio;'
        '- N'#227'o est'#225' calculando troco no recebimento de credi'#225'rio;'
        
          '- N'#227'o est'#225' aplicando multa quando documento foi enviado para emp' +
          'resa de cobranca;'
        '- Est'#225' deixando qualquer usu'#225'rios desbloquear cliente;'
        
          '- Est'#225' deixando qualquer usu'#225'rios ver dados de compra do cliente' +
          ';'
        
          '- Est'#225' deixando os usu'#225'rios dar qualquer valor de desconto na ve' +
          'nda;'
        '- Est'#225' deixando qualquer usu'#225'rios cancelar a venda;'
        
          '- Deveria existir um usu'#225'rio com possibilidade de vender para cl' +
          'iente bloqueado;'
        ''
        'V E R S '#195' O   1.85'
        ''
        '31/10/2001'
        
          '- N'#227'o est'#225' estornando os valores do caixa quando cancela um cupo' +
          'm;'
        
          '- Nos dados de compra esta saindo a entrada depois das parcelas ' +
          'a prazo;'
        ''
        '29/10/2001'
        '- N'#227'o '#233' poss'#237'vel alterar o valor das parcelas a prazo;'
        '- N'#227'o existe uma rotina de troca;'
        ''
        '25/10/2001'
        '- N'#227'o existe uma rotina para re-imprimir a Pr'#233'-Venda;'
        '- N'#227'o existe uma rotina para apagar Pre-Vendas j'#225' importadas;'
        ''
        '20/10/2001'
        
          '- Quando se informa um plano com desconto e depois troca para ou' +
          'tro sem desconto n'#227'o est'#225' limpando '
        'o'
        'desconto do plano anterior;'
        ''
        '16/10/2001'
        '- N'#227'o deixar excluir clientes que tem compras;'
        ''
        '15/10/2001'
        '- Rotina para cancelar um cupom inteiro;'
        '- Deve poder sair de todas as telas do PDV com ESC;'
        ''
        '14/10/2001'
        
          '- Est'#225' permitindo alterar numerario de parcela a prazo quando pl' +
          'ano '#233' s'#243' a vista;'
        
          '- Quando se esta alterando numerario de parcela a prazo e da men' +
          'sagem para encerrar a venda '
        'mesmo'
        '  dando enter n'#227'o encerra;'
        ''
        '13/10/2001'
        '- N'#227'o est'#225' autenticando a entrada;')
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssNone
      TabOrder = 0
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 48
    Top = 148
  end
  object WallPaper: TEvWallPaper
    Style = wsStretch
    Left = 76
    Top = 148
  end
end
