unit Sigtron_FS345;

interface

uses DataModulo, RXCtrls, Forms, RxQuery,  UnitLibrary, SysUtils, Dialogs, StdCtrls ;

  function  VerificaECFLigada_DARUMA_FRAMEWORK : Boolean;
  function  VerificaZPendente_DARUMA_FRAMEWORK : Boolean;

  function  Leitura_X_DARUMA_FRAMEWORK : boolean ;

  function  Reducao_Z_DARUMA_FRAMEWORK : boolean ;

  function  AbrirGaveta_Daruma_FRAMEWORK : Boolean;

  function  Guilhotina_Daruma_FRAMEWORK : Boolean;

  function  AbrirCupomFiscal_DARUMA_FRAMEWORK(Var NroCupom : String) : boolean ;

  function  ImprimeItem_Daruma_FRAMEWORK(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double; Unidade: String): boolean ;

  function  CancelaItem_DARUMA_FRAMEWORK(Posicao: String) : boolean ;

  function  CancelarCupomFiscal_DARUMA_FRAMEWORK : boolean ;

  function  FecharCupomFiscal_DARUMA_FRAMEWORK(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano, Placa:string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;

  function  EnviaFP_DARUMA_FRAMEWORK(Descricao_FormaPagamento : string; Valor : double) : boolean ;
  function  AbrirCNFV_DARUMA_FRAMEWORK(Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String) : Boolean ;
  function  LinhaTextoLivre_DARUMA_FRAMEWORK(Texto : string) : boolean ;
  function  FecharCNFV_DARUMA_FRAMEWORK :Boolean;

  function  Sangria_Daruma_Framework(Valor : Double; Forma_de_Pagamento: String) : boolean ;
  function  Suprimento_Daruma_Framework(Valor : Double; Forma_de_Pagamento: String) : boolean ;

  function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
  function  Zeros(Str:String; Tam:Integer; Orient:String) : String ;

  //RELATORIO GERENCIAL
  function  AbreRelatorioGerencial_DARUMA_FrameWork():Boolean;
  function  EmiteRelatorioGerencial_DARUMA_FrameWork(Texto:String):Boolean;
  function  FechamentoRelatorioGerencial_DARUMA_FrameWork():Boolean;
var
  ChrRet : array[0..999] of Char;
  IntRet : integer ;
  Arquivo : TMemo;

implementation

uses TelaCompSigtron, UnitCheckoutLibrary, DB, Daruma_Framework_FISCAL ;

function VerificaECFLigada_DARUMA_FRAMEWORK : Boolean;
begin
  intret := rVerificarImpressoraLigada_ECF_Daruma();
  if intret = 1 then
    VerificaECFLigada_DARUMA_FRAMEWORK := True
  else
    VerificaECFLigada_DARUMA_FRAMEWORK := False;
end;

function VerificaZPendente_DARUMA_FRAMEWORK : Boolean;
Var Str_VerificarRZ: String;
begin
  SetLength (Str_VerificarRZ,1);
  intret := rVerificarReducaoZ_ECF_Daruma(Str_VerificarRZ);
  if intret = 1 then
    VerificaZPendente_DARUMA_FRAMEWORK := True
  else
    VerificaZPendente_DARUMA_FRAMEWORK := False;
end;

function AbreRelatorioGerencial_DARUMA_FrameWork():Boolean;
begin
  intret := iRGAbrirPadrao_ECF_Daruma();

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    AbreRelatorioGerencial_DARUMA_FrameWork := True
  else
    begin
      AbreRelatorioGerencial_DARUMA_FrameWork := True;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbreRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbreRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbreRelatorioGerencial_DARUMA_FrameWork := False;
              end;
      end;
    end;
end;

function  EmiteRelatorioGerencial_DARUMA_FrameWork(Texto:String):Boolean;
begin
  intret := iRGImprimirTexto_ECF_Daruma(Texto);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    EmiteRelatorioGerencial_DARUMA_FrameWork := True
  else
    begin
      EmiteRelatorioGerencial_DARUMA_FrameWork := True;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                EmiteRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                EmiteRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                EmiteRelatorioGerencial_DARUMA_FrameWork := False;
              end;
      end;
    end;
end;

function  FechamentoRelatorioGerencial_DARUMA_FrameWork():Boolean;
begin
   intret := iRGFechar_ECF_Daruma();

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    FechamentoRelatorioGerencial_DARUMA_FrameWork := True
  else
    begin
      FechamentoRelatorioGerencial_DARUMA_FrameWork := True ;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                FechamentoRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                FechamentoRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                FechamentoRelatorioGerencial_DARUMA_FrameWork := False;
              end;
      end;
    end;
end;

function Leitura_X_DARUMA_FRAMEWORK : boolean;
begin
  IntRet := iLeituraX_ECF_Daruma ;

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Leitura_X_DARUMA_FRAMEWORK := True
  else
    begin
      Leitura_X_DARUMA_FRAMEWORK := True ;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Leitura_X_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Leitura_X_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Leitura_X_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function Reducao_Z_DARUMA_FRAMEWORK : boolean;
begin
  IntRet := iReducaoZ_ECF_Daruma(' ', ' ') ;
  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Reducao_Z_DARUMA_FRAMEWORK := True
  else
    begin
      Reducao_Z_DARUMA_FRAMEWORK := True ;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Reducao_Z_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Reducao_Z_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Reducao_Z_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function AbrirCupomFiscal_DARUMA_FRAMEWORK(Var NroCupom : String) : boolean ;
Var Str_Informacao: String;
begin
  NroCupom := '000000';

  IntRet := iCFAbrirPadrao_ECF_Daruma;

  if (IntRet = 1) or (IntRet = -12) or (IntRet = -6) then
    begin
      Str_Informacao:= StringOFChar(#0,6);
      NroCupom := IntToStr(rRetornarInformacao_ECF_Daruma('26',Str_Informacao));
      if NroCupom <> '1' Then
        NroCupom:= InputBox('Checkout','Falha ao Recuperar Nro Cupom Fiscal. Informe o Numero do Cupom Fiscal:','')
      else
        NroCupom:= Str_Informacao;
      AbrirCupomFiscal_DARUMA_FRAMEWORK := True;
    end
  else
    begin
      AbrirCupomFiscal_DARUMA_FRAMEWORK := True;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbrirCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbrirCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbrirCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function ImprimeItem_Daruma_FRAMEWORK(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double; Unidade:String): boolean ;
var ValorUnitarioEcf, ValorDescontoEcf, QuantEcf, TipoDescEcf, FormatSTRValor, FormatSTRQTde : String;
var TotalItemECF, TotalItemCalc : Double;
begin
  Case DM.SQLTerminalAtivo.FieldByName('TERMINRODECVALORUNIT').AsInteger of
    2: FormatSTRValor := '0.00';
    3: FormatSTRValor := '0.000';
  End;
  Case DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger of
    2: FormatSTRQTde := '0.00';
    3: FormatSTRQTde := '0.000';
  End;

  ValorUnitarioEcf := FormatFloat(FormatSTRValor,Valor_Unitario);

  TipoDescEcf := Tipo_de_Desconto;

  if Valor_do_Desconto > 0 then
    ValorDescontoEcf := FormatFloat('0.00',Valor_do_Desconto)
  else
    ValorDescontoEcf := '0,00';

  case DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').Value of
  2 : QuantEcf := FormatFloat('0.00',Quantidade);
  3 : begin
        TotalItemECF    := StrToFloat(FormatFloat('0.00', StrToFloat(FormatFloat(FormatSTRValor,Valor_Unitario)) * StrToFloat(FormatFloat('0.000',Quantidade))));
        TotalItemCalc   := StrToFloat(FormatFloat('0.000',Quantidade))*StrToFloat(FormatFloat('0.000',Valor_Unitario));

        while (TotalItemECF>TotalItemCalc) do
          begin
            Valor_Unitario:= Valor_Unitario + 0.001;
            // Quantidade    := Quantidade + 0.001;
            TotalItemCalc := Quantidade * Valor_Unitario;
          end;

        ValorUnitarioEcf   := FormatFloat(FormatSTRValor,Valor_Unitario);
        QuantEcf := FormatFloat('0.000', Quantidade);
      end;
  end;

  IntRet := iCFVender_ECF_Daruma(Aliquota, QuantEcf, ValorUnitarioECF, TipoDescEcf, ValorDescontoEcf,  Codigo, Unidade, Descricao);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    ImprimeItem_Daruma_FRAMEWORK := True
  else
    begin
      ImprimeItem_Daruma_FRAMEWORK := True ;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                ImprimeItem_Daruma_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                ImprimeItem_Daruma_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                ImprimeItem_Daruma_FRAMEWORK := False;
              end;
      end;
    end;
end;

function CancelaItem_DARUMA_FRAMEWORK(Posicao: String) : boolean ;
begin
  intret := iCFCancelarItem_ECF_Daruma(Posicao);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    CancelaItem_DARUMA_FRAMEWORK := True
  else
    begin
      CancelaItem_DARUMA_FRAMEWORK := True ;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                CancelaItem_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                CancelaItem_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                CancelaItem_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function FecharCupomFiscal_DARUMA_FRAMEWORK(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano, Placa :string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
var
  MsgFimCupom, NumerarioDescricaoDaruma, VlrAcrescDescSTR : string ;
  TotalVista, TotalPrazo : double ;
  I : Integer;
begin
  // INICIAR FECHAMENTO CUPOM
  VlrAcrescDescSTR := FormatFloat('##0.00',VlrAcrescDesc);

  if TipoAcrescDesc = 'A' then
    iCFTotalizarCupom_ECF_Daruma( 'A$', VlrAcrescDescSTR )
  else
    iCFTotalizarCupom_ECF_Daruma( 'D$', VlrAcrescDescSTR ) ;

  // CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalVista := 0 ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
    begin
      TotalPrazo :=  TotalPrazo + StrToFloat(FormatFloat('##0.00',SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat));
      SQLFPPrazo.Next;
    end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First;
  // i := SQLFPVista.RecordCount;
  while not SQLFPVista.Eof do
    begin
      NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPVista.Fieldbyname('NUMEICOD').AsString);
  {    if (i = 1) and (VlrTroco > 0) then
        iCFEfetuarPagamentoFormatado_ECF_Daruma(NumerarioDescricaoDaruma, FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat+VlrTroco))
      else}
        iCFEfetuarPagamentoFormatado_ECF_Daruma(NumerarioDescricaoDaruma, FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat));

      TotalVista := TotalVista + StrToFloat(FormatFloat('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)) ;
      SQLFPVista.Next ;
    end ;

  SQLFPPrazo.First ;
  while not SQLFPPrazo.EOF do
    begin
      if (TotalVista + TotalPrazo) < Valor then
        TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

      {Adilson - Foi colocado para imprimir na forma prazo em mais de um numerario}
      NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      iCFEfetuarPagamentoFormatado_ECF_Daruma(NumerarioDescricaoDaruma, FormatCurr('##0.00',SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat));

      SQLFPPrazo.Next;
    end;

  if ((TotalVista + TotalPrazo) > Valor) then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

 { if TotalPrazo > 0 then
    begin
      NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      iCFEfetuarPagamentoFormatado_ECF_Daruma(NumerarioDescricaoDaruma, FormatCurr('##0.00',TotalPrazo));
    end;}

  // Identifica o Consumidor
  if DocumentoCli <> '' then
    iCFIdentificarConsumidor_ECF_Daruma(copy(ConverteAcentos(NomeCli),1,35),
                                        ConverteAcentos(Copy(EnderecoCli, 01, 35)),
                                        DocumentoCli);

  //IMPRIMIR DADOS DO CLIENTE
  if ImprimeDadosClienteCupom = 'S' then
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Val aprox dos Tributos R$' + FloatToStr(VlrImpostoMedio) + ' ('+FloatToStr(AliqImpostoMedio)+'%) Fonte: IBPT' + Chr(10) +
                       'ID:' + IDCupom +'-Pl:'+Placa+ '-KM:'+KmCliente+ Chr(10) +
                       'Usuario: ' + UsuarioAtualNome + Chr(10) +
                       'Vend: ' + copy(Vendedor,1,10) +
                       '  Plano: ' + copy(Plano,1,17) + Chr(10) +
                       'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       'DOC: ' + DocumentoCli                               + Chr(10) +
                       'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'Cid: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'
      else
        MsgFimCupom := 'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT' + Chr(10) +
                       'Cup.ID:' + IDCupom +'  Pl:'+Placa+ '  KM:' + KmCliente + Chr(10) +
                       'Usuario: ' + UsuarioAtualNome + Chr(10) +
                       'Vend: ' + copy(Vendedor,1,10) +
                       '  Plano: ' + copy(Plano,1,17) + Chr(10) +
                       'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       'DOC: ' + DocumentoCli                               + Chr(10) +
                       'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'Cid: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) ;

    end
  else
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'CNPJ/CPF: ' + DocumentoCli                      + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'       + Chr(10) +
                       'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT'

      else
        MsgFimCupom := 'CNPJ/CPF: ' + DocumentoCli                      + Chr(10) +
                       'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT';
    end;

  IntRet := iCFEncerrarConfigMsg_ECF_Daruma( MsgFimCupom );

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    FecharCupomFiscal_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                FecharCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                FecharCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                FecharCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end;

function CancelarCupomFiscal_DARUMA_FRAMEWORK : boolean ;
begin
  intret := iCFCancelar_ECF_Daruma();

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    CancelarCupomFiscal_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                CancelarCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                CancelarCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                CancelarCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function  EnviaFP_DARUMA_FRAMEWORK(Descricao_FormaPagamento : string; Valor : double) : boolean ;
Var
  Vlr : string ;
begin
  Vlr := FormatFloat('##0.00',Valor);
  intret := iCFEfetuarPagamentoFormatado_ECF_Daruma(Descricao_FormaPagamento, Vlr);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    EnviaFP_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                EnviaFP_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                EnviaFP_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                EnviaFP_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function  AbrirCNFV_DARUMA_FRAMEWORK( Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String ) : Boolean ;
var
  Vlr : string;
begin
  Vlr := FormatFloat('##0.00',Valor_Pago);
  intret := iCCDAbrirPadrao_ECF_Daruma();

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    AbrirCNFV_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbrirCNFV_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbrirCNFV_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbrirCNFV_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function LinhaTextoLivre_DARUMA_FRAMEWORK(Texto : string) : boolean ;
begin
  intret := iCCDImprimirTexto_ECF_Daruma(Texto);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    LinhaTextoLivre_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                LinhaTextoLivre_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                LinhaTextoLivre_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                LinhaTextoLivre_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function FecharCNFV_DARUMA_FRAMEWORK : Boolean ;
begin
  intret := iCCDFechar_ECF_Daruma;

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    FecharCNFV_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                FecharCNFV_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                FecharCNFV_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                FecharCNFV_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
var Valor : string ;
begin
  Valor := FormatFloat('#,##0.00', Numero);
  if Pos(',', Valor) > 0 then
    Delete(Valor, Pos(',', Valor), 1);
  if Pos('.',Valor) > 0 then
    Delete(Valor, Pos('.', Valor), 1);
  ConvFloatToStrECF := Zeros(Valor, Tam, 'Dir') ;
end ;

function Zeros(Str:String; Tam:Integer; Orient:String) : String ;
Var Dif, i : integer ;
begin
  Dif := Tam - Length(Str) ;
  for i := 1 to Dif do
  begin
    if Orient = 'Esq' then
      Str := Str + '0' ;
    if Orient = 'Dir' then
      Str := '0' + Str ;
  End ;
  Zeros := Str ;
end ;

function AbrirGaveta_Daruma_FRAMEWORK : Boolean;
begin
  intret := eAbrirGaveta_ECF_Daruma;

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    AbrirGaveta_Daruma_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbrirGaveta_Daruma_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbrirGaveta_Daruma_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbrirGaveta_Daruma_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function Guilhotina_Daruma_FRAMEWORK : Boolean;
begin
  intret := eAcionarGuilhotina_ECF_Daruma('1');

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Guilhotina_Daruma_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Guilhotina_Daruma_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Guilhotina_Daruma_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Guilhotina_Daruma_FRAMEWORK := False;
              end;
      end;
    end;
end;

function  Sangria_Daruma_Framework(Valor : Double; Forma_de_Pagamento: String) : boolean ;
var Vlr, NumerarioDescricaoDaruma : String;
begin
  NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,Forma_de_Pagamento);
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := iSangria_ECF_Daruma(Vlr, NumerarioDescricaoDaruma);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Sangria_Daruma_Framework := True
  else
    begin
      Sangria_Daruma_Framework := True;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Sangria_Daruma_Framework := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Sangria_Daruma_Framework := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Sangria_Daruma_Framework := False;
              end;
      end;
    end;
end ;

function  Suprimento_Daruma_Framework(Valor : Double; Forma_de_Pagamento: String) : boolean ;
var Vlr, NumerarioDescricaoDaruma : String;
begin
  NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,Forma_de_Pagamento);
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := iSuprimento_ECF_Daruma(Vlr, NumerarioDescricaoDaruma);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Suprimento_Daruma_Framework := True
  else
    begin
      Suprimento_Daruma_Framework := True ;
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Suprimento_Daruma_Framework := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Suprimento_Daruma_Framework := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Suprimento_Daruma_Framework := False;
              end;
      end;
    end;
end ;

end.
