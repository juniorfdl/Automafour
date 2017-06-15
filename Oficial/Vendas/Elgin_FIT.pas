unit Elgin_FIT;

interface

uses DataModulo, RXCtrls, Forms, RxQuery,  UnitLibrary, SysUtils, Dialogs ;

  function  AbrirPortaECF_Elgin_FIT  : boolean ;
  function  FecharPortaECF_Elgin_FIT : boolean ;

  procedure Leitura_X_Elgin_FIT ;
  procedure Reducao_Z_Elgin_FIT ;

  function  AbrirGaveta_Elgin_FIT : Boolean;

  function  AbrirCupomFiscal_Elgin_FIT(Var NroCupom, Documento : String) : boolean ;

  function  ImprimeItem_Elgin_FIT(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;

  function  CancelaItem_Elgin_FIT(Posicao: String) : boolean ;

  function  CancelarCupomFiscal_Elgin_FIT : boolean ;

  function  FecharCupomFiscal_Elgin_FIT(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;

  function  EnviaFP_Elgin_FIT(Descricao_FormaPagamento : string; Valor : double) : boolean ;

  function  AbrirCNFV_Elgin_FIT(Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String) : Boolean ;
  function  LinhaTextoLivre_Elgin_FIT(Texto : string) : boolean ;
  function  FecharCNFV_Elgin_FIT : Boolean ;

  function  EmiteCNFNV_Elgin_FIT(Identificador, Msg : string; Valor:double) : boolean ;
//  function  Elgin_FIT_AbreRecebimentoNaoFiscal( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer;

  function  Autenticacao_Elgin_FIT(Msg : String) : boolean ;
  function  Sangria_Elgin_FIT(Valor : Double) : boolean ;
  function  Suprimento_Elgin_FIT(Valor : Double; Forma_de_Pagamento: String) : boolean ;

  function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;

  function  Zeros(Str:String; Tam:Integer; Orient:String) : String ;

  //RELATORIO GERENCIAL
  function  AbreRelatorioGerencial_Elgin_FIT():Boolean;
  function  EmiteRelatorioGerencial_Elgin_FIT(Texto:String):Boolean;
  function  FechamentoRelatorioGerencial_Elgin_FIT:Boolean;

  function  ImprimeRespostaCartao_Elgin_FIT(CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : String) : boolean;
var
  ChrRet : array[0..999] of Char;
  IntRet : integer ;

implementation

uses Elgin_FIT_FuncoesDLL, UnitCheckoutLibrary, DB ;

function AbrirPortaECF_Elgin_FIT : boolean ;
begin
   if Elgin_AbrePortaSerial > 0 then
     AbrirPortaECF_Elgin_FIT := True
   else
     AbrirPortaECF_Elgin_FIT := False;
end ;

function FecharPortaECF_Elgin_FIT : boolean ;
begin
   if Elgin_FechaPortaSerial > 0 then
     FecharPortaECF_Elgin_FIT := True
   else
     FecharPortaECF_Elgin_FIT := False;
end ;

function  AbreRelatorioGerencial_Elgin_FIT():Boolean;
begin
   if Elgin_AbreRelatorioGerencial > 0 then
     AbreRelatorioGerencial_Elgin_FIT := True
   else
     AbreRelatorioGerencial_Elgin_FIT := False;
end;

function  EmiteRelatorioGerencial_Elgin_FIT(Texto:String):Boolean;
begin
  if Elgin_RelatorioGerencial(Texto) > 0 then
    EmiteRelatorioGerencial_Elgin_FIT := True
  else
    EmiteRelatorioGerencial_Elgin_FIT := False;
end;

function  FechamentoRelatorioGerencial_Elgin_FIT : Boolean;
begin
   if Elgin_FechaRelatorioGerencial > 0 then
     FechamentoRelatorioGerencial_Elgin_FIT := True
   else
     FechamentoRelatorioGerencial_Elgin_FIT := False;
end;

procedure Leitura_X_Elgin_FIT ;
begin
  Elgin_LeituraX;
end ;

procedure Reducao_Z_Elgin_FIT ;
begin
  IntRet := Elgin_ReducaoZ(' ', ' ') ;
end ;

function AbrirCupomFiscal_Elgin_FIT(Var NroCupom, Documento : String) : boolean ;
begin
  try
    NroCupom := '000000';

    IntRet := Elgin_AbreCupom( pchar(Documento) );

    Elgin_NumeroCupom(NroCupom);
    AbrirCupomFiscal_Elgin_FIT := True;
  except
    AbrirCupomFiscal_Elgin_FIT := False;
  end;
end ;

function ImprimeItem_Elgin_FIT(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;
var ValorUnitarioEcf, ValorDescontoEcf, QuantEcf, TipoDescEcf : string;
var TotalItemECF, TotalItemCalc : Double;
begin
  ValorUnitarioEcf           := FormatFloat('##0.00',Valor_Unitario);
  ValorDescontoEcf           := FormatFloat('##0.00',Valor_do_Desconto);
  if Frac(Quantidade) > 0 then
    begin
      Tipo_de_Quantidade := 'F';
      TipoDescECF        := 'D';
      case DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').Value of
        2 : begin
              QuantEcf := FormatFloat('##0.00',Quantidade);
              IntRet   := Elgin_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, Casas_Decimais, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
            end;
        3 : begin
              TotalItemECF    := StrToFloat(FormatFloat('##0.00', StrToFloat(FormatFloat('##0.00',Valor_Unitario - Valor_do_Desconto))*
                                 StrToFloat(FormatFloat('##0.000',Quantidade))));
              TotalItemCalc   := Quantidade * (Valor_Unitario - Valor_do_Desconto);
              while (TotalItemECF>TotalItemCalc) do
                begin
                  Quantidade    := Quantidade + 0.001;
                  TotalItemCalc := Quantidade * (Valor_Unitario - Valor_do_Desconto);
                end;
              QuantEcf := FormatFloat('##0.000', Quantidade);
              IntRet   := Elgin_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, 2, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
            end;
      end;
    end
  else
    begin
      Tipo_de_Quantidade := 'I';
      QuantEcf := IntToStr(Round(Int(Quantidade)));
      // O Parametro abaixo ''Casas Decimais'' é somente para o Valor Unitario a ser passado
      IntRet := Elgin_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, 2, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
    end;
  if IntRet = 1 then
    ImprimeItem_Elgin_FIT := true
  else
    ImprimeItem_Elgin_FIT := false;
end;

function CancelaItem_Elgin_FIT(Posicao: String) : boolean ;
begin
  try
    IntRet := Elgin_CancelaItemGenerico(Posicao) ;

    CancelaItem_Elgin_FIT := True;
  except
    CancelaItem_Elgin_FIT := False;
  end;
end ;

function  FecharCupomFiscal_Elgin_FIT(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano :string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
var
  MsgFimCupom, NumerarioDescricao, VlrAcrescDescSTR : string ;
  TotalVista,  TotalPrazo : double ;
  I : Integer;
begin
  // INICIAR FECHAMENTO CUPOM
  VlrAcrescDescSTR := FormatFloat('##0.00',VlrAcrescDesc);

  if TipoAcrescDesc = 'A' then
    Elgin_IniciaFechamentoCupom( 'A', '$', VlrAcrescDescSTR )
  else
    Elgin_IniciaFechamentoCupom( 'D', '$', VlrAcrescDescSTR ) ;

  // CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalVista := 0;
  TotalPrazo := 0;
  while not SQLFPPrazo.EOF do
    begin
      TotalPrazo :=  TotalPrazo + StrToFloat(FormatFloat('##0.00',SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat));
      SQLFPPrazo.Next;
    end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First;
  while not SQLFPVista.Eof do
    begin
      NumerarioDescricao := RetornaTotalizadorNumerarioECFElgin_FIT(Ecf_ID,SQLFPVista.Fieldbyname('NUMEICOD').AsString);
      EnviaFP_Elgin_FIT(NumerarioDescricao, StrToFloat(FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)));

      TotalVista := TotalVista + StrToFloat(FormatFloat('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)) ;
      SQLFPVista.Next ;
    end ;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
    begin
      NumerarioDescricao := RetornaTotalizadorNumerarioECFElgin_FIT(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      EnviaFP_Elgin_FIT(NumerarioDescricao, TotalPrazo);
    end;

  //IMPRIMIR DADOS DO CLIENTE
  if ImprimeDadosClienteCupom = 'S' then
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente+ Chr(10) +
                       'Vend: '  + copy(Vendedor,1,10) +
                       ' Plano: ' + copy(Plano,1,17)  + Chr(10) +
                       'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       DocumentoCli                                         + Chr(10) +
                       'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'Cid: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                       'Val aprox dos Tributos R$' + FloatToStr(VlrImpostoMedio) + ' ('+FloatToStr(AliqImpostoMedio)+'%) Fonte: IBPT' + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'
      else
        MsgFimCupom := 'Cup.ID:'   + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente+ Chr(10) +
                       'Vend: '    + copy(Vendedor,1,10) +
                       ' Plano: '  + copy(Plano,1,17) + Chr(10) +
                       'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       DocumentoCli                                         + Chr(10) +
                       'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'Cid: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                       'Val aprox dos Tributos R$' + FloatToStr(VlrImpostoMedio) + ' ('+FloatToStr(AliqImpostoMedio)+'%) Fonte: IBPT';
    end
  else
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Doc.emit p/empr.peq.Porte. Nao gera ICMS'  + Chr(10) +
                       'Val aprox dos Tributos R$' + FloatToStr(VlrImpostoMedio) + ' ('+FloatToStr(AliqImpostoMedio)+'%) Fonte: IBPT'
      else
        MsgFimCupom := 'Val aprox dos Tributos R$' + FloatToStr(VlrImpostoMedio) + ' ('+FloatToStr(AliqImpostoMedio)+'%) Fonte: IBPT';

    end;
  IntRet := Elgin_TerminaFechamentoCupom( MsgFimCupom );
  if IntRet > 0 then
    FecharCupomFiscal_Elgin_FIT := True
  else
    FecharCupomFiscal_Elgin_FIT := False;
end;

function CancelarCupomFiscal_Elgin_FIT : boolean ;
begin
  IntRet := Elgin_CancelaCupom;
  if IntRet > 0 then
    CancelarCupomFiscal_Elgin_FIT := True
  else
    CancelarCupomFiscal_Elgin_FIT := False;
end ;

function  EmiteCNFNV_Elgin_FIT(Identificador, Msg : string; Valor:double) : boolean ;
Var
  Vlr : string ;
begin
  Vlr := FormatCurr('###,##0.00',Valor);
//  IntRet := Elgin_RecebimentoNaoFiscal(Pchar(Trim(Identificador)), Pchar(Trim(Vlr)), Pchar(Trim(Msg)));
  if IntRet > 0 then
    EmiteCNFNV_Elgin_FIT := True
  else
    EmiteCNFNV_Elgin_FIT := False;
end ;

function  EnviaFP_Elgin_FIT(Descricao_FormaPagamento : string; Valor : double) : boolean ;
Var
  Vlr : string ;
begin
  // Vlr := FormatCurr('##0.00',Valor);
  Vlr := FormatFloat('##0.00',Valor);
  if Elgin_EfetuaFormaPagamento(Descricao_FormaPagamento, Vlr) > 0 then
    EnviaFP_Elgin_FIT := True
  else
    EnviaFP_Elgin_FIT := False;
end ;

function  Autenticacao_Elgin_FIT(Msg : String) : boolean ;
begin
  if Elgin_Autenticacao > 0 then
    Autenticacao_Elgin_FIT := True
  else
    Autenticacao_Elgin_FIT := False;
end ;

function  AbrirCNFV_Elgin_FIT( Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String ) : Boolean ;
var
  Vlr, TotalizadorEcf : string;
begin
  if Elgin_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento, Vlr, Numero_do_Cupom ) > 0 then
    AbrirCNFV_Elgin_FIT := True
  else
    AbrirCNFV_Elgin_FIT := False;
end ;

function LinhaTextoLivre_Elgin_FIT(Texto : string) : boolean ;
begin
  if Elgin_UsaComprovanteNaoFiscalVinculado(Texto) > 0 then
    LinhaTextoLivre_Elgin_FIT := True
  else
    LinhaTextoLivre_Elgin_FIT := False;
end ;

function FecharCNFV_Elgin_FIT : Boolean ;
begin
  if Elgin_FechaComprovanteNaoFiscalVinculado > 0 then
    FecharCNFV_Elgin_FIT := True
  else
    FecharCNFV_Elgin_FIT := False;
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

function AbrirGaveta_Elgin_FIT : Boolean;
begin
  if Elgin_AcionaGaveta > 0 then
    AbrirGaveta_Elgin_FIT := True
  else
    AbrirGaveta_Elgin_FIT := False;
end ;

function ImprimeRespostaCartao_Elgin_FIT(CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : String) : boolean;
begin
  if IntRet > 0 then
    ImprimeRespostaCartao_Elgin_FIT := True
  else
    ImprimeRespostaCartao_Elgin_FIT := False;
end;

function  Sangria_Elgin_FIT(Valor : Double) : boolean ;
var Vlr : String;
begin
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := Elgin_Sangria(Vlr) ;
  if IntRet > 0 then
    Sangria_Elgin_FIT := True
  else
    Sangria_Elgin_FIT := False;
end ;

function  Suprimento_Elgin_FIT(Valor : Double; Forma_de_Pagamento: String) : boolean ;
var Vlr : String;
begin
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := Elgin_Suprimento(Vlr, Forma_de_Pagamento) ;
  if IntRet > 0 then
    Suprimento_Elgin_FIT := True
  else
    Suprimento_Elgin_FIT := False;
end ;

end.
