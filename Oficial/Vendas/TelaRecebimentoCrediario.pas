unit TelaRecebimentoCrediario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, StdCtrls, Mask, ToolEdit, CurrEdit, RXCtrls, ExtCtrls, Grids, DBGrids,
  Db, DBTables, RxQuery, EWall, DBCtrls, dbcgrids, Variants, ppDB, IniFiles,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppVar, ppCtrls,
  ppPrnabl, ppBands, ppCache, Buttons, ConerBtn, CartaoCredito, RDprint,
  RxMemDS, DateUtils;

const
  InformandoDocumento      = 'InformandoDocumento';
  InformandoCliente        = 'InformandoCliente';
  InformandoPosicao        = 'InformandoPosicao';
  AlterandoValorVencimento = 'AlterandoValorVencimento';
  AlterandoValorJuro       = 'AlterandoValorJuro';
  AlterandoValorMulta      = 'AlterandoValorMulta';
  AlterandoValorDesconto   = 'AlterandoValorDesconto';
  InformandoNumerario      = 'InformandoNumerario';
  InformandoValorRecebido  = 'InformandoValorRecebido';
  FinalizandoRecebimento   = 'FinalizandoRecebimento';

type
  TFormTelaRecebimentoCrediario = class(TForm)
    LblNomeSistema: TRxLabel;
    LblInstrucoes: TRxLabel;
    SQLParcelasReceberTemp: TRxQuery;
    SQLParcelasReceberTempTERMICOD: TIntegerField;
    SQLParcelasReceberTempCLIEA13ID: TStringField;
    SQLParcelasReceberTempA13NRODOC: TStringField;
    SQLParcelasReceberTempINROPARC: TIntegerField;
    SQLParcelasReceberTempDVENC: TDateTimeField;
    SQLParcelasReceberTempN2VLRVENC: TFloatField;
    SQLParcelasReceberTempN2VLRJURO: TFloatField;
    SQLParcelasReceberTempN2VLRMULTA: TFloatField;
    SQLParcelasReceberTempN2VLRDESC: TFloatField;
    DSSQLParcelasReceberTemp: TDataSource;
    UpdateSQLParcelasReceberTemp: TUpdateSQL;
    Timer: TTimer;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteNomeCalcField: TStringField;
    DSSQLCupom: TDataSource;
    SQLCupom: TRxQuery;
    SQLParcelasReceberTempA13CUPOID: TStringField;
    SQLContasReceber: TRxQuery;
    SQLParcelasReceberTempN2VLRPAGAR: TFloatField;
    SQLParcelasReceberTempINRODIASATRAS: TFloatField;
    SQLParcelasReceberTempIPOSICAO: TIntegerField;
    SQLParcelasReceberTempCTRCA13ID: TStringField;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomCUPON2TOTITENS: TFloatField;
    SQLCupomCUPON2DESC: TFloatField;
    SQLCupomCUPON2ACRESC: TFloatField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    SQLCupomCUPON2JUROATRAS: TFloatField;
    SQLCupomCUPON2MULTAATRAS: TFloatField;
    SQLParcelasReceberTempDoc_Parc_CalcField: TStringField;
    RxLabel1: TRxLabel;
    SQLlCupomNumerario: TRxQuery;
    SQLlCupomNumerarioCUPOA13ID: TStringField;
    SQLlCupomNumerarioNUMEICOD: TIntegerField;
    SQLlCupomNumerarioCPNMN2VLR: TFloatField;
    SQLlCupomNumerarioCPNMCAUTENT: TStringField;
    SQLRecebimento: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TOTJUROREC: TFloatField;
    SQLContasReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLParcelasReceberTempN2VLRTXCOBR: TFloatField;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TFloatField;
    SQLRecebimentoRECEN2VLRJURO: TFloatField;
    SQLRecebimentoRECEN2VLRMULTA: TFloatField;
    SQLRecebimentoRECEN2DESC: TFloatField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TFloatField;
    SQLParcelasReceberTempNOMECLIENTE: TStringField;
    SQLParcelasReceberTempN2VLRAMORT: TFloatField;
    Panel7: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBCtrlGridParcelas: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText3: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label1: TLabel;
    LblNUMERARIO: TLabel;
    TotalPagar: TCurrencyEdit;
    SQLPrimeiroAviso: TRxQuery;
    SQLSegundoAviso: TRxQuery;
    SQLSPC: TRxQuery;
    SQLAvisoCobranca: TRxQuery;
    ListBoxAvisos: TTextListBox;
    SQLPrimeiroAvisoNOMECLIENTE: TStringField;
    SQLPrimeiroAvisoVENCIMENTO: TDateTimeField;
    SQLPrimeiroAvisoVALOR: TFloatField;
    SQLPrimeiroAvisoENVIADO: TStringField;
    SQLPrimeiroAvisoNROPARCELA: TIntegerField;
    SQLPrimeiroAvisoDATAPROCESSAMENTO: TDateTimeField;
    SQLSegundoAvisoNOMECLIENTE: TStringField;
    SQLSegundoAvisoVENCIMENTO: TDateTimeField;
    SQLSegundoAvisoVALOR: TFloatField;
    SQLSegundoAvisoENVIADO: TStringField;
    SQLSegundoAvisoNROPARCELA: TIntegerField;
    SQLSegundoAvisoDATAPROCESSAMENTO: TDateTimeField;
    SQLAvisoCobrancaNOMECLIENTE: TStringField;
    SQLAvisoCobrancaVENCIMENTO: TDateTimeField;
    SQLAvisoCobrancaVALOR: TFloatField;
    SQLAvisoCobrancaENVIADO: TStringField;
    SQLAvisoCobrancaNROPARCELA: TIntegerField;
    SQLAvisoCobrancaDATAPROCESSAMENTO: TDateTimeField;
    SQLSPCNOMECLIENTE: TStringField;
    SQLSPCVENCIMENTO: TDateTimeField;
    SQLSPCVALOR: TFloatField;
    SQLSPCENVIADO: TStringField;
    SQLSPCNROPARCELA: TIntegerField;
    SQLSPCDATAPROCESSAMENTO: TDateTimeField;
    SQLCupomCUPOCSTATUS: TStringField;
    ReportAutentic: TppReport;
    DBPipeParc: TppDBPipeline;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    Empresa: TppLabel;
    ppLabel13: TppLabel;
    SQLHistorico: TRxQuery;
    SQLHistoricoCLHTTHISTORICO: TMemoField;
    SQLHistoricoCLHTDEMIS: TDateTimeField;
    SQLHistoricoCLHTDPROXCONTATO: TDateTimeField;
    SQLHistoricoCLIEA13ID: TStringField;
    SQLHistoricoCLHTICOD: TIntegerField;
    SQLHistoricoCUPOA13ID: TStringField;
    SQLHistoricoCTRCA13ID: TStringField;
    SQLHistoricoCTRCINROPARC: TIntegerField;
    SQLHistoricoPENDENTE: TStringField;
    SQLHistoricoREGISTRO: TDateTimeField;
    ppDBText10: TppDBText;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLParcelasReceberTempTIPODOC: TStringField;
    DBText14: TDBText;
    Label14: TLabel;
    SQLParcelasReceberTempTipoDocCalc: TStringField;
    EntradaDados: TEdit;
    BtnF3: TConerBtn;
    BtnF1: TConerBtn;
    ReportTotRec: TppReport;
    ppDetailBand2: TppDetailBand;
    lbTotal: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    lbEmpresa: TppLabel;
    ppLabel29: TppLabel;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppTitleBand1: TppTitleBand;
    lbCliente: TppLabel;
    ppLabel17: TppLabel;
    lbOperador: TppLabel;
    SQLProvedorCartao: TRxQuery;
    SQLProvedorCartaoPRCAA13ID: TStringField;
    SQLProvedorCartaoEMPRICOD: TIntegerField;
    SQLProvedorCartaoPRCAICOD: TIntegerField;
    SQLProvedorCartaoPRCAA60DESCR: TStringField;
    SQLProvedorCartaoPRCATPATHENVIA: TMemoField;
    SQLProvedorCartaoPRCATPATHRECEBE: TMemoField;
    SQLProvedorCartaoPRCAA60CARTAO: TStringField;
    SQLProvedorCartaoPRCACCONSCHEQUE: TStringField;
    SQLProvedorCartaoPENDENTE: TStringField;
    SQLProvedorCartaoREGISTRO: TDateTimeField;
    TimerCartao: TTimer;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    SQLParcelasVistaVendaTemp: TRxQuery;
    SQLParcelasVistaVendaTempTERMICOD: TIntegerField;
    SQLParcelasVistaVendaTempNROITEM: TIntegerField;
    SQLParcelasVistaVendaTempNUMEICOD: TIntegerField;
    SQLParcelasVistaVendaTempVALORPARC: TFloatField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    DSSQLParcelasVistaVendaTemp: TDataSource;
    Label15: TLabel;
    SQLCupomCUPOA13IDCUPNEG: TStringField;
    RDPrint: TRDprint;
    SQLRecebimentoNUMEICOD: TIntegerField;
    SQLParcelasReceberTempCTRCN2TOTCORRECAO: TFloatField;
    SQLContasReceberCTRCN2TOTCORRECAO: TFloatField;
    rxMemoryData: TRxMemoryData;
    SQLRecebimentoUSUAICOD: TIntegerField;
    SQLPesquisa: TRxQuery;
    ppLabel15: TppLabel;
    LblTROCO: TLabel;
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure SQLClienteCalcFields(DataSet: TDataSet);
    procedure SQLParcelasReceberTempCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SQLParcelasReceberTempNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure ListBoxAvisosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ReportAutenticBeforePrint(Sender: TObject);
    procedure SQLParcelasReceberTempBeforeDelete(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure EntradaDadosKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaParcelaMaisAntiga;
    procedure BtnF3Click(Sender: TObject);
    procedure BtnF1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FinalizandoRecto : boolean;
    TotalTroco : Double;
    function TemEntrada(Documento : string) : boolean ;
    function AutenticaDocumentoImpressoaNaoFiscal : Boolean;
    function VerificaCartaoCredito : Boolean;
    Procedure RDPrintAutentica ;
  public
    { Public declarations }
    NumerarioCod,
    EstadoRecCredAnt,
    EstadoRecCred, TipoPadrao, ProvedorCartao, NomeNumerarioCartao, Msg : string ;
    DataCalculo, DataBaixa : TDateTime ;
    DataVencto : String;
    Saldo,TotParcRec, TotalCliente : Double;
    Vencimento : TDate;
    SemParcelaAberta, ParcelaAvulsa, TemNumerarioCartaoVista, TemNumerarioCartaoPrazo, FechouCupomFiscal : Boolean;
    TempoLimite, TempoIntervalo: Integer;
    RetornoCartao : TInfoRetorno;
    DadosImpressora : TInfoImpressao;
    xIniFile : TIniFile;
    nImpressora, nPorta, nForma : String;
    procedure PreparaEstadoRec(Estado : string) ;
    function TotalParc : Currency ;
    Function StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
  end;

var
  FormTelaRecebimentoCrediario: TFormTelaRecebimentoCrediario;

implementation

uses TelaItens, TelaTeclasAtalhotelaRecebimetoCrediario,
     DataModulo, UnitLibrary, TelaConsultaContratosCliente,
     TelaConsultaRapidaCliente, TelaConsultaRapidaNumerario,
     UnitCheckoutLibrary, ECFCheckout, FormResources, CadastroCliente,
     IMPNAOFISCAL, WindowsLibrary, WaitWindow, TelaDadosCheque, ExtensoLib,
     VarSYS, ACBrPosPrinter , TelaTroco;

{$R *.DFM}

procedure TFormTelaRecebimentoCrediario.EntradaDadosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  Valor1,
  Valor2,
  PerJurDia,
  PerDescDia, Saldo,
  VlrAPagar : double;
  Entra,
  TemAvisos,
  TemOBS  : boolean;
  DiasAdiant,
  ProxCodRec : integer;
  HistCx, ObsCliente, CodNextContaRec : string;
  iniFile : TextFile;
  AutenticaTxt : String;
  TotalRecibo : array of array of string;
  i, nLin : Integer;
  nx: Real;
  TotalRecbto, TotalDescto, TotalJuros: Extended;
begin
  if (Key = VK_Return) or (key = vk_down) then
    begin
      if (EstadoRecCred = InformandoDocumento) and (EntradaDados.text <> '') then
        begin
          FinalizandoRecto := False;

          if Pos('.', EntradaDados.text) > 0 then
            EntradaDados.text := ConverteCodigo(EntradaDados.Text);

          Entra := false;
          if not ParcelaAvulsa then
            begin
              if Length(EntradaDados.Text) > 10 then
                begin
                  //AS DUAS LINHAS ABAIXO FORAM COLOCADAS PARA RESOLVER UM PROBLEMA QUE
                  //O CODIGO DE BARRAS DO CARNE ESTAVA SENDO IMPRESSO SEM O PRIMEIRO ZERO
                  //NA KATUCHA
                  if Length(EntradaDados.Text) = 12 then
                    EntradaDados.Text := '0' + EntradaDados.Text;

                  SQLCupom.Close;
                  SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID = ''' + EntradaDados.Text + '''';
                  SQLCupom.Open;
                  if not SQLCupom.EOF then
                    Entra := true
                  else
                    begin
                      SQLCupom.Close;
                      SQLCupom.MacroByName('MFiltro').Value := 'CUPOA20CODANT = ''' + Copy(EntradaDados.Text, 1, 10) + '''';
                      SQLCupom.Open;
                      if not SQLCupom.IsEmpty then
                        Entra := true;
                    end;
                end
              else
                begin
                  SQLCupom.Close;
                  SQLCupom.MacroByName('MFiltro').Value := 'CUPOA20CODANT = ''' + EntradaDados.Text + '''';
                  SQLCupom.Open;
                  if not SQLCupom.EOF then
                    Entra := true;
                end;

              // TESTA SE O CUPOM SELECIONADO NÃO ESTÁ CANCELADO
              if not SQLCupom.IsEmpty then
                begin
                  if SQLCupom.FindField('CUPOCSTATUS').AsString = 'C' then
                    begin
                      Informa('Documento Cancelado!');
                      EntradaDados.Clear;
                      Exit;
                    end;
                end;

              if TemEntrada(EntradaDados.Text) then
                begin
                  EntradaDados.Clear;
                  TotalPagar.Value := TotalParc;
                  exit;
                end;
            end
          else
            begin
              SQLContasReceber.Close;
              SQLContasReceber.MacroByName('MFiltro').AsString := ' CTRCA13ID = ''' + EntradaDados.Text + ''' and (CTRCCSTATUS = ''A'' or CTRCCSTATUS = ''N'')';
              SQLContasReceber.Open;
              if not SQLContasReceber.IsEmpty then
                Entra := True
              else
                Entra := False;
            end;

          if (not ParcelaAvulsa) and (Entra) then
            begin
              SQLContasReceber.Close;
              SQLContasReceber.MacroByName('MFiltro').AsString := ' CUPOA13ID = ''' + SQLCupomCUPOA13ID.AsString + ''' and (CTRCCSTATUS = ''A'' or CTRCCSTATUS = ''N'')';
              SQLContasReceber.Open;
            end;

          ListBoxAvisos.Items.Clear;
          TemObs := False;
          if Entra then
            begin
              // VERIFICAR SE EXISTE ALGUMA OBS PARA O CLIENTE EM QUESTAO
              try
                ObsCliente := SQLLocate('CLIENTE','CLIEA13ID','CLIETOBS1','''' + SQLContasReceberCLIEA13ID.AsString + '''');
                if ObsCliente <> '' then
                  begin
                    ListBoxAvisos.Items.Add('****** OBSERVAÇÕES NORMAIS ******');
                    ListBoxAvisos.Items.Add(ObsCliente);
                    TemObs := True;
                  end;
                ObsCliente := SQLLocate('CLIENTE','CLIEA13ID','CLIETOBSCOB','''' + SQLContasReceberCLIEA13ID.AsString + '''');
                if ObsCliente <> '' then
                  begin
                    ListBoxAvisos.Items.Add('****** OBSERVAÇÕES REF.COBRANÇA ******');
                    ListBoxAvisos.Items.Add(ObsCliente);
                    TemObs := True;
                  end;
              except
                Application.ProcessMessages;
              end;

              // ESTA ROTINA IRA TESTAR SE O CONTRATO QUE ESTÁ SENDO RECEBIDO CONSTA
              // EM PRIMEIRO AVISO, SEGUNDO AVISO, SPC OU COBRANÇA O RESULTADO
              // SERÁ MOSTRADO EM UM LIST BOX QUE INICIALMENTE É VISIBLE = FALSE.
              // JONAS BATISTA LOSS.

              // início da rotina.
              if not SQLCupom.IsEmpty then
                begin
                   SQLPrimeiroAviso.Close;
                   SQLSegundoAviso.Close;
                   SQLSPC.Close;
                   SQLAvisoCobranca.Close;
                   SQLPrimeiroAviso.MacroByName('Cupom').Value := 'CUPOA13ID = ''' + SQLCupomCUPOA13ID.AsString + '''';
                   SQLSegundoAviso.MacroByName('Cupom').Value  := 'CUPOA13ID = ''' + SQLCupomCUPOA13ID.AsString + '''';
                   SQLSPC.MacroByName('Cupom').Value           := 'CUPOA13ID = ''' + SQLCupomCUPOA13ID.AsString + '''';
                   SQLAvisoCobranca.MacroByName('Cupom').Value := 'CUPOA13ID = ''' + SQLCupomCUPOA13ID.AsString + '''';
                   SQLPrimeiroAviso.Open;
                   SQLSegundoAviso.Open;
                   SQLSPC.Open;
                   SQLAvisoCobranca.Open;
                   TemAvisos := False;
                   if not SQLPrimeiroAviso.IsEmpty then
                     begin
                       TemAvisos := True;
                       ListBoxAvisos.Items.Append('****** EM PRIMEIRO AVISO ******');
                       SQLPrimeiroAviso.First;
                       while not SQLPrimeiroAviso.Eof do
                         begin
                           ListBoxAvisos.Items.Append('Cliente : ' + SQLPrimeiroAvisoNOMECLIENTE.AsString
                                                                   + ' Parcela/Vencimento: ' + SQLPrimeiroAvisoNROPARCELA.AsString
                                                                   + ' - ' + SQLPrimeiroAvisoVENCIMENTO.AsString
                                                                   + ' Valor: ' + SQLPrimeiroAvisoVALOR.AsString
                                                                   + ' Enviado: ' + SQLPrimeiroAvisoENVIADO.AsString
                                                                   + ' DtProcessamento: ' + SQLPrimeiroAvisoDATAPROCESSAMENTO.AsString);
                           SQLPrimeiroAviso.Next;
                         end;
                     end;
                   if not SQLSegundoAviso.IsEmpty then
                     begin
                       TemAvisos := True;
                       ListBoxAvisos.Items.Append('****** EM SEGUNDO AVISO ******');
                       SQLSegundoAviso.First;
                       while not SQLSegundoAviso.Eof do
                         begin
                           ListBoxAvisos.Items.Append('Cliente : ' + SQLSegundoAvisoNOMECLIENTE.AsString
                                                                   + ' Parcela/Vencimento: ' + SQLSegundoAvisoNROPARCELA.AsString
                                                                   + ' - ' + SQLSegundoAvisoVENCIMENTO.AsString
                                                                   + ' Valor: ' + SQLSegundoAvisoVALOR.AsString
                                                                   + ' Enviado: ' + SQLSegundoAvisoENVIADO.AsString
                                                                   + ' DtProcessamento: ' + SQLSegundoAvisoDATAPROCESSAMENTO.AsString);
                           SQLSegundoAviso.Next;
                         end;
                     end;
                   if not SQLSPC.IsEmpty then
                     begin
                       TemAvisos := True;
                       ListBoxAvisos.Items.Append('****** EM SPC ******');
                       SQLSPC.First;
                       while not SQLSPC.Eof do
                         begin
                           ListBoxAvisos.Items.Append('Cliente : ' + SQLSPCNOMECLIENTE.AsString
                                                                   + ' Parcela/Vencimento: ' + SQLSPCNROPARCELA.AsString
                                                                   + ' - ' + SQLSPCVENCIMENTO.AsString
                                                                   + ' Valor: ' + SQLSPCVALOR.AsString
                                                                   + ' Enviado: ' + SQLSPCENVIADO.AsString
                                                                   + ' DtProcessamento: ' + SQLSPCDATAPROCESSAMENTO.AsString);
                           SQLSPC.Next;
                         end;
                     end;
                   if not SQLAvisoCobranca.IsEmpty then
                     begin
                       TemAvisos := True;
                       ListBoxAvisos.Items.Append('****** EM COBRANÇA ******');
                       SQLAvisoCobranca.First;
                       while not SQLAvisoCobranca.Eof do
                         begin
                           ListBoxAvisos.Items.Append('Cliente : ' + SQLAvisoCobrancaNOMECLIENTE.AsString
                                                                   + ' Parcela/Vencimento: ' + SQLAvisoCobrancaNROPARCELA.AsString
                                                                   + ' - ' + SQLAvisoCobrancaVENCIMENTO.AsString
                                                                   + ' Valor: ' + SQLAvisoCobrancaVALOR.AsString
                                                                   + ' Enviado: ' + SQLAvisoCobrancaENVIADO.AsString
                                                                   + ' DtProcessamento: ' + SQLAvisoCobrancaDATAPROCESSAMENTO.AsString);
                           SQLAvisoCobranca.Next;
                         end;
                     end;
                end;
                // fim da rotina.


              if not SQLContasReceber.Active then
                SQLContasReceber.Open;

              if SQLContasReceber.IsEmpty then
                SemParcelaAberta := true;

              SQLContasReceber.First;
              while not SQLContasReceber.EOF do
                begin
                  //VERIFICAR SE JA EXISTE ESTA PARCELA DO DOCUMENTO DIGITADO NA LISTA
                  DM.SQLTemplate.Close;
                  DM.SQLTemplate.SQL.Clear;
                  DM.SQLTemplate.SQL.Add('select CTRCA13ID,INROPARC from PARCELASRECEBERTEMP');
                  DM.SQLTemplate.SQL.Add('where CTRCA13ID = ''' + SQLContasReceberCTRCA13ID.AsString + '''');
                  DM.SQLTemplate.SQL.Add('and   INROPARC  = ' + SQLContasReceberCTRCINROPARC.AsSTring);
                  DM.SQLTemplate.SQL.Add('and   TERMICOD  = ' + IntToStr(TerminalAtual));
                  DM.SQLTemplate.Open;
                  if DM.SQLTemplate.IsEmpty then
                    begin
                      //ESTA VARIAVEL INFORMA SE O CONTRATO DEVE SER EXCLUIDO DA LISTA DE
                      //CONTRATOS POR CLIENTE
                      DelContrLista := false ;
                      //ESTE TESTE SERVE PARA VER SE O TOTAL DE RECEBIMENTOS JA ALCANÇOU
                      //O TOTAL DEVIDO, SE FOR MENOR INCLUI O SALDO NA LISTA
                     Saldo := SQLContasReceberCTRCN2VLR.AsFloat - SQLContasReceberCTRCN2TOTREC.AsFloat;
                      // Saldo := (SQLContasReceberCTRCN2VLR.AsFloat + SQLContasReceberCTRCN2TOTCORRECAO.AsFloat) - SQLContasReceberCTRCN2TOTREC.AsFloat;

                      if SQLContasReceber.FieldByName('CTRCDULTREC').AsVariant <> null then
                        Vencimento := SQLContasReceber.FieldByName('CTRCDULTREC').AsDateTime
                      else
                        Vencimento := SQLContasReceber.FieldByName('CTRCDVENC').AsDateTime;

                      Valor1 := StrToFloat(FormatFloat('###0.00', SQLContasReceberCTRCN2TOTREC.Value));
                      Valor2 := StrToFloat(FormatFloat('###0.00', SQLContasReceberCTRCN2VLR.Value));
                      if Valor1 < Valor2 then
                        begin
                          SemParcelaAberta := false;
                          // se a tela de consulta de contrados não estiver aberta busca por parcelas mais antigas que a que esta sendo informada
                          // implementado pelo Judi
                          if  Application.findcomponent('FormTelaConsultaContratosCliente') = nil then
                            BuscaParcelaMaisAntiga;

                          SQLParcelasReceberTemp.Append;
                          SQLParcelasReceberTempTERMICOD.Value    := TerminalAtual;
                          if SQLContasReceberCUPOA13ID.AsString <> '' then
                            SQLParcelasReceberTempA13CUPOID.Value := SQLContasReceberCUPOA13ID.AsString
                          else
                            SQLParcelasReceberTempA13CUPOID.Value := SQLContasReceberCTRCA13ID.AsString;

                          SQLParcelasReceberTempA13NRODOC.Value   := SQLContasReceberCUPOA13ID.AsString;
                          SQLParcelasReceberTempCLIEA13ID.Value   := SQLContasReceberCLIEA13ID.AsString;
                          SQLParcelasReceberTempNOMECLIENTE.Value := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + SQLContasReceberCLIEA13ID.AsString + '''');
                          SQLParcelasReceberTempCTRCA13ID.Value   := SQLContasReceberCTRCA13ID.AsString;
                          SQLParcelasReceberTempINROPARC.Value    := SQLContasReceberCTRCINROPARC.Value;
                          SQLParcelasReceberTempDVENC.Value       := SQLContasReceberCTRCDVENC.Value;
                          SQLParcelasReceberTempN2VLRVENC.Value   := Saldo;
                          SQLParcelasReceberTempN2VLRAMORT.Value  := Saldo;
                          //Atualiza Configurações
                          DM.SQLConfigCrediario.Close;
                          DM.SQLConfigCrediario.Open;
                          ///////////////////////////
                          if SQLContasReceberCTRCN2TXJURO.Value > 0 then
                            SQLParcelasReceberTempN2VLRJURO.Value := CalculaJuroMultaDesc(Saldo,
                                                                                          SQLContasReceberCTRCN2TXJURO.Value,
                                                                                          Vencimento,
                                                                                          DataCalculo,
                                                                                          SQLContasReceberCTRCDVENC.Value,
                                                                                          DM.SQLConfigCrediario.ParamByName('CFCRINRODIASTOLJUR').Value,
                                                                                          'Juro',
                                                                                          SQLContasReceberCUPOA13ID.AsString,
                                                                                          SQLContasReceberCTRCINROPARC.AsString)
                          else
                            SQLParcelasReceberTempN2VLRJURO.Value := 0 ;

                          if DM.SQLConfigCrediario.ParamByName('CFCRN2PERCTAXACOBR').Value > 0 then
                            SQLParcelasReceberTempN2VLRTXCOBR.Value := CalculaJuroMultaDesc(Saldo,
                                                                                            DM.SQLConfigCrediario.ParamByName('CFCRN2PERCTAXACOBR').Value,
                                                                                            Vencimento,
                                                                                            DataCalculo,
                                                                                            0,
                                                                                            0,
                                                                                            'TaxaCobranca',
                                                                                            SQLContasReceberCUPOA13ID.AsString,
                                                                                            SQLContasReceberCTRCINROPARC.AsString) ;


                          if (SQLContasReceberCTRCN2TXMULTA.Value > 0) then
                            SQLParcelasReceberTempN2VLRMULTA.Value := CalculaJuroMultaDesc(Saldo,
                                                                                           SQLContasReceberCTRCN2TXMULTA.Value,
                                                                                           Vencimento,
                                                                                           DataCalculo,
                                                                                           SQLContasReceberCTRCDVENC.Value,
                                                                                           DM.SQLConfigCrediario.ParamByName('CFCRINRODIASTOLMUL').Value,
                                                                                           'Multa',
                                                                                           SQLContasReceberCUPOA13ID.AsString,
                                                                                           SQLContasReceberCTRCINROPARC.AsString)
                          else
                            SQLParcelasReceberTempN2VLRMULTA.Value := 0 ;

                          if DM.SQLConfigCrediario.ParamByName('CFCRN2PERCADIANT').Value > 0 then
                            SQLParcelasReceberTempN2VLRDESC.Value := CalculaJuroMultaDesc(Saldo,
                                                                                          DM.SQLConfigCrediario.ParamByName('CFCRN2PERCADIANT').Value,
                                                                                          Vencimento,
                                                                                          DataCalculo,
                                                                                          0,
                                                                                          DM.SQLConfigCrediario.ParamByName('CFCRINRODIASADIANT').Value,
                                                                                          'Desconto',
                                                                                          SQLContasReceberCUPOA13ID.AsString,
                                                                                          SQLContasReceberCTRCINROPARC.AsString)
                          else
                            SQLParcelasReceberTempN2VLRDESC.Value := 0 ;

                          if SQLContasReceberCUPOA13ID.AsString <> '' then
                            SQLParcelasReceberTempTIPODOC.AsString := 'CP'
                          else
                            SQLParcelasReceberTempTIPODOC.AsString := 'AV';

                          SQLParcelasReceberTemp.Post;

                          SQLParcelasReceberTemp.Close ;
                          SQLParcelasReceberTemp.Open ;

                          Break;
                        end
                      else
                        DelContrLista := true;
                    end;
                  SQLContasReceber.Next ;
                end ;
              // MOSTRA HISTORICO DE COBRANCA DO CONTRATO QUE ESTA SENDO RECEBIDO
              // REFERENTE A PARCELA ATUAL.
              if (not SemParcelaAberta) and (not ParcelaAvulsa) and (SQLParcelasReceberTempA13CUPOID.AsString <> '') then
                begin
                  SQLHistorico.Close;
                  SQLHistorico.MacroByName('MFiltro').Value   := 'CUPOA13ID = ''' + SQLParcelasReceberTempA13CUPOID.AsString + ''' AND ' +
                                                                 'CTRCA13ID = ''' + SQLParcelasReceberTempCTRCA13ID.AsString + ''' AND ' +
                                                                 'CTRCINROPARC = ' + SQLParcelasReceberTempINROPARC.AsString;
                  SQLHistorico.Open;
                end;
              if not SQLHistorico.IsEmpty then
                begin
                  ListBoxAvisos.Items.Append('****** HISTÓRICO ******');
                  SQLHistorico.First;
                  while not SQLHistorico.Eof do
                    begin
                      ListBoxAvisos.Items.Append('Data: ' + FormatDateTime('dd/mm/yyyy',SQLHistoricoCLHTDEMIS.AsDateTime) +
                                                 ' Parcela: ' + SQLHistoricoCTRCINROPARC.AsString +
                                                 ' Histórico: ' + SQLHistoricoCLHTTHISTORICO.AsString);
                      SQLHistorico.Next;
                    end;
                end;
              if (TemAvisos) or (TemOBS) or not (SQLHistorico.IsEmpty) then
                begin
                  ListBoxAvisos.Visible := True;
                  ListBoxAvisos.Items.Append('');
                  ListBoxAvisos.Items.Append(' Tecle [ENTER] Para Sair... ');
                  ListBoxAvisos.SetFocus;
                end;
            end
          else
            begin
              Informa('Documento não encontrado!') ;
              exit ;
            end ;

          if SemParcelaAberta then
            begin
              Informa('Documento quitado!') ;
            end ;

          EntradaDados.Clear ;
          TotalPagar.Value := TotalParc ;
          ParcelaAvulsa := False;
          EstadoRecCred := 'InformandoDocumento';
          PreparaEstadoRec(EstadoRecCred);

          exit ;
        end ;

      if (EstadoRecCred = InformandoCliente) or (key = vk_down) then
        begin
          FinalizandoRecto := False;
          ClienteRecto := '' ;
          // Seleciona Cliente
          Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente) ;
          FormTelaConsultaRapidaCliente.VALOR.Text := EntradaDados.text;
          FormTelaConsultaRapidaCliente.ShowModal;
          if FormTelaConsultaRapidaCliente.ModalResult = MrOk then
            begin
              EntradaDados.text := ClienteRecto ;

              FormTelaRecebimentoCrediario.Refresh ;
              LblInstrucoes.Caption := 'AGUARDE, PROCURANDO CONTRATOS DESTE CLIENTE...' ;
              LblInstrucoes.Refresh ;

              Screen.Cursor := crHourglass;
              TotalCliente  := 0;

              DM.MemCtRecParc.Close;
              try
                DM.MemCtRecParc.DeleteTable;
              except
                Application.ProcessMessages;
              end;

              DM.MemCtRecParc.CreateTable;
              DM.MemCtRecParc.AddIndex('RecTemp','CTRCDVENC;CUPODEMIS;CUPOA13ID;CTRCA13ID;CTRCINROPARC', [ixPrimary]);
              DM.MemCtRecParc.IndexFieldNames :=  'CTRCDVENC;CUPODEMIS;CUPOA13ID;CTRCA13ID;CTRCINROPARC';
              DM.MemCtRecParc.Open;

              SQLContasReceber.Close;
              SQLContasReceber.MacroByName('MFiltro').AsString := ' CLIEA13ID = ''' + EntradaDados.Text + ''' and (CTRCCSTATUS = ''A'' or CTRCCSTATUS = ''N'')' +
                                                                  ' AND (CTRCN2VLR > CTRCN2TOTREC)';
              SQLContasReceber.Open;

              //PROCURAR NO CONTASRECEBER SE EXISTEM ALGUM EM ABERTO
              SQLContasReceber.First;
              TotParcRec := 0;
              while not SQLContasReceber.EOF do
                begin
                  TotParcRec := TotParcRec + ( SQLContasReceberCTRCN2VLR.Value -
                                               SQLContasReceberCTRCN2TOTREC.Value );
                  SQLContasReceber.Next;
                end;
              if TotParcRec > 0 then
                begin
                  SQLContasReceber.First;
                  while not SQLContasReceber.EOF do
                    begin
                      Saldo := SQLContasReceberCTRCN2VLR.Value - SQLContasReceberCTRCN2TOTREC.Value;
                      if Saldo > 0 then
                        begin
                          DM.MemCtRecParc.Append ;
                          if SQLContasReceberCUPOA13ID.AsString <> '' then
                            DM.MemCtRecParcCUPOA13ID.Value      := SQLContasReceberCUPOA13ID.Value
                          else
                            DM.MemCtRecParcCUPOA13ID.Value      := 'Parc. Avulsa';

                          DM.MemCtRecParcCUPODEMIS.Value      := SQLContasReceberCTRCDEMIS.Value ;
                          DM.MemCtRecParcCLIEA13ID.Value      := SQLContasReceberCLIEA13ID.Value ;
                          DM.MemCtRecParcCTRCA13ID.Value      := SQLContasReceberCTRCA13ID.Value;
                          DM.MemCtRecParcCTRCINROPARC.Value   := SQLContasReceberCTRCINROPARC.Value;
                          DM.MemCtRecParcCTRCDVENC.Value      := SQLContasReceberCTRCDVENC.Value;
                          DM.MemCtRecParcCTRCDULTREC.AsDateTime := SQLContasReceberCTRCDULTREC.AsDateTime;

                          if (SQLContasReceberCTRCDULTREC.AsVariant <> Null) AND ( SQLContasReceberCTRCDULTREC.AsVariant >  SQLContasReceberCTRCDVENC.AsVariant) then
                            Vencimento := SQLContasReceberCTRCDULTREC.AsDateTime
                          else
                            Vencimento := SQLContasReceberCTRCDVENC.AsDateTime;

                          //Atualiza Configurações
                          DM.SQLConfigCrediario.Close;
                          DM.SQLConfigCrediario.Open;
                          ///////////////////////////
                          if SQLContasReceberCTRCN2TXJURO.Value > 0 then
                            DM.MemCtRecParcCTRCN2VLRJURO.Value := CalculaJuroMultaDesc(Saldo,
                                                                                       SQLContasReceberCTRCN2TXJURO.Value,
                                                                                       Vencimento,
                                                                                       Date,
                                                                                       0,
                                                                                       DM.SQLConfigCrediario.ParamByName('CFCRINRODIASTOLJUR').Value,
                                                                                       'Juro',
                                                                                       SQLContasReceberCUPOA13ID.AsString,
                                                                                       SQLContasReceberCTRCINROPARC.AsString)
                          else
                            DM.MemCtRecParcCTRCN2VLRJURO.Value := 0 ;

                          if DM.SQLConfigCrediario.ParamByName('CFCRN2PERCTAXACOBR').Value > 0 then
                            DM.MemCtRecParcCTRCN2VLRTXCOBR.Value := CalculaJuroMultaDesc(Saldo,
                                                                                           DM.SQLConfigCrediario.ParamByName('CFCRN2PERCTAXACOBR').Value,
                                                                                           Vencimento,
                                                                                           Date,
                                                                                           0,
                                                                                           0,
                                                                                           'TaxaCobranca',
                                                                                           SQLContasReceberCUPOA13ID.AsString,
                                                                                           SQLContasReceberCTRCINROPARC.AsString) ;


                          if (SQLContasReceberCTRCN2TXMULTA.Value > 0) then
                            DM.MemCtRecParcCTRCN2VLRMULTA.Value := CalculaJuroMultaDesc(Saldo,
                                                                                           SQLContasReceberCTRCN2TXMULTA.Value,
                                                                                           Vencimento,
                                                                                           Date,
                                                                                           0,
                                                                                           DM.SQLConfigCrediario.ParamByName('CFCRINRODIASTOLMUL').Value,
                                                                                           'Multa',
                                                                                           SQLContasReceberCUPOA13ID.AsString,
                                                                                           SQLContasReceberCTRCINROPARC.AsString)
                           else
                             DM.MemCtRecParcCTRCN2VLRMULTA.Value := 0 ;

                          if DM.SQLConfigCrediario.ParamByName('CFCRN2PERCADIANT').Value > 0 then
                            DM.MemCtRecParcCTRCN2VLRDESC.Value := CalculaJuroMultaDesc(Saldo,
                                                                                          DM.SQLConfigCrediario.ParamByName('CFCRN2PERCADIANT').Value,
                                                                                          Vencimento,
                                                                                          Date,
                                                                                          0,
                                                                                          DM.SQLConfigCrediario.ParamByName('CFCRINRODIASADIANT').Value,
                                                                                          'Desconto',
                                                                                          SQLContasReceberCUPOA13ID.AsString,
                                                                                          SQLContasReceberCTRCINROPARC.AsString)
                          else
                            DM.MemCtRecParcCTRCN2VLRDESC.Value := 0 ;

                          DM.MemCtRecParcCTRCN2VLR.Value      := (SQLContasReceberCTRCN2VLR.Value +
                                                                   DM.MemCtRecParcCTRCN2VLRJURO.Value +
                                                                   DM.MemCtRecParcCTRCN2VLRMULTA.Value +
                                                                   DM.MemCtRecParcCTRCN2VLRTXCOBR.Value) -
                                                                   DM.MemCtRecParcCTRCN2VLRDESC.Value -
                                                                   SQLContasReceberCTRCN2TOTREC.AsFloat;

                          DM.MemCtRecParcValorOrigem.Value    := Saldo;
                          DM.MemCtRecParc.Post ;
                        end;
                      TotalCliente := TotalCliente + DM.MemCtRecParcCTRCN2VLR.Value;
                      SQLContasReceber.Next ;
                    end;
                end;
              DM.MemCtRecParc.First;
              Screen.Cursor := crDefault ;

              if not DM.MemCtRecParc.EOF then
                begin
                  Application.CreateForm(TFormTelaConsultaContratosCliente, FormTelaConsultaContratosCliente);
                  FormTelaConsultaContratosCliente.ShowModal;
                  if FormTelaConsultaContratosCliente.ModalResult = MrOK then
                    begin
                      if FormTelaConsultaContratosCliente.ValorSaldo.Value > 0 then
                        begin
                          if SQLParcelasReceberTemp.Locate('CTRCA13ID', FormTelaConsultaContratosCliente.IDParcela,[]) then
                            begin
                              SQLParcelasReceberTemp.Edit;
                              SQLParcelasReceberTempN2VLRAMORT.AsFloat := FormTelaConsultaContratosCliente.ValorSaldo.Value -
                                                                          ((SQLParcelasReceberTempN2VLRJURO.AsFloat     +
                                                                            SQLParcelasReceberTempN2VLRMULTA.AsFloat    +
                                                                            SQLParcelasReceberTempN2VLRTXCOBR.AsFloat)  -
                                                                            SQLParcelasReceberTempN2VLRDESC.AsFloat);
                              SQLParcelasReceberTemp.Post;
                              TotalPagar.Value := TotalPagar.Value-(SQLParcelasReceberTempN2VLRVENC.AsFloat-SQLParcelasReceberTempN2VLRAMORT.AsFloat);
                            end;
                        end;
                    end;
                 if Application.FindComponent('FormTelaConsultaContratosCliente') <> nil then
                   FormTelaConsultaContratosCliente.Destroy;
                end
              else
                Informa('Este cliente não tem contratos em aberto!') ;
            end
          else
            if Application.FindComponent('FormTelaConsultaContratosCliente') <> nil then
              FormTelaConsultaContratosCliente.Destroy;

          Screen.Cursor := crDefault ;
          SQLContasReceber.Close ;

          EntradaDados.Clear ;
          EstadoRecCred := InformandoDocumento ;
          PreparaEstadoRec(EstadoRecCred) ;
          exit ;
        end ;

      if EstadoRecCred = AlterandoValorVencimento then
        begin
          FinalizandoRecto := False;

          try
            StrToFloat(EntradaDados.Text) ;
          except
            Informa('Valor inválido!') ;
            EntradaDados.SelectAll ;
            exit ;
          end ;

          VlrAPagar := SQLParcelasReceberTempN2VLRVENC.Value +
                       SQLParcelasReceberTempN2VLRJURO.Value +
                       SQLParcelasReceberTempN2VLRMULTA.Value ;

          if VlrAPagar > StrToFloat(EntradaDados.Text) then
            begin
              SQLParcelasReceberTemp.Edit ;
              SQLParcelasReceberTempN2VLRAMORT.Value := StrToFloat(EntradaDados.Text) -
                                                        SQLParcelasReceberTempN2VLRJURO.Value -
                                                        SQLParcelasReceberTempN2VLRMULTA.Value +
                                                        SQLParcelasReceberTempN2VLRDESC.Value ;
              SQLParcelasReceberTemp.Post ;
            end
          else
            begin
              Informa('O Valor deve ser menor que o original!') ;
              EntradaDados.SelectAll ;
              exit ;
            end ;

          EntradaDados.Clear ;
          TotalPagar.Value := TotalParc ;
          EstadoRecCred := InformandoDocumento ;
          PreparaEstadoRec(EstadoRecCred) ;
          exit ;
        end ;

      if EstadoRecCred = AlterandoValorJuro then
        begin
          FinalizandoRecto := False;

          try
            StrToFloat(EntradaDados.Text) ;
          except
            Informa('Valor inválido!') ;
            EntradaDados.SelectAll ;
            exit ;
          end ;

          SQLParcelasReceberTemp.Edit ;
          SQLParcelasReceberTempN2VLRJURO.AsString := EntradaDados.Text ;
          SQLParcelasReceberTemp.Post ;

          TotalPagar.Value := TotalParc;
          EntradaDados.Clear;
          EstadoRecCred    := InformandoDocumento;
          EstadoRecCredAnt := '';
          PreparaEstadoRec(EstadoRecCred);
          exit;
        end;

      if EstadoRecCred = AlterandoValorMulta then
        begin
          FinalizandoRecto := False;

          try
            StrToFloat(EntradaDados.Text) ;
          except
            Informa('Valor inválido!') ;
            EntradaDados.SelectAll ;
            exit ;
          end ;

          {if SQLParcelasReceberTempN2VLRMULTA.Value > StrToFloat(EntradaDados.Text) then
          begin}
            SQLParcelasReceberTemp.Edit ;
            SQLParcelasReceberTempN2VLRMULTA.AsString := EntradaDados.Text ;
            SQLParcelasReceberTemp.Post ;
          {end
          else begin
            Informa('O Valor deve ser menor que o original!') ;
            EntradaDados.SelectAll ;
            exit ;
          end ;}

          TotalPagar.Value := TotalParc ;
          EntradaDados.Clear ;
          EstadoRecCred    := InformandoDocumento ;
          EstadoRecCredAnt := '' ;
          PreparaEstadoRec(EstadoRecCred) ;
          exit ;
        end ;

      if EstadoRecCred = AlterandoValorDesconto then
        begin
          FinalizandoRecto := False;

          try
            StrToFloat(EntradaDados.Text) ;
          except
            Informa('Valor inválido!') ;
            EntradaDados.SelectAll ;
            exit ;
          end ;

          SQLParcelasReceberTemp.Edit ;
          SQLParcelasReceberTempN2VLRDESC.AsString := EntradaDados.Text ;
          SQLParcelasReceberTemp.Post ;

          TotalPagar.Value := TotalParc ;
          EntradaDados.Clear ;
          EstadoRecCred    := InformandoDocumento ;
          EstadoRecCredAnt := '' ;
          PreparaEstadoRec(EstadoRecCred) ;
          exit ;
        end ;

      if EstadoRecCred = InformandoPosicao then
        begin
          FinalizandoRecto := False;

          if EntradaDados.Text = '' then
            exit ;

          Screen.Cursor := crHourglass ;
          if not SQLParcelasReceberTemp.Locate('IPOSICAO', EntradaDados.Text, []) then
            begin
              Informa('Posição não encontrada!') ;
              exit ;
            end ;
          Screen.Cursor := crDefault ;

          EstadoRecCred := EstadoRecCredAnt ;
          PreparaEstadoRec(EstadoRecCred) ;
          exit ;
        end ;
      //INFORMANDO NUMERÁRIO A VISTA
      if EstadoRecCred = InformandoNumerario then
        begin
          FinalizandoRecto := False;

          if EntradaDados.text = '' then
            begin
              Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
              FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numerários' ;
              FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

              FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
              FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMEA5TIPO <> ''CRD''' ;
              FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;
              FormTelaConsultaRapidaNumerario.ShowModal ;
              EntradaDados.text := IntToStr(NumerarioAtual) ;
            end ;

          NumerarioVista := 0 ;
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from NUMERARIO') ;
          DM.SQLTemplate.SQL.Add('where') ;
          DM.SQLTemplate.SQL.Add('NUMEICOD = ' + EntradaDados.text) ;
          DM.SQLTemplate.Open ;

          DM.SQLTemplate.First ;
          if DM.SQLTemplate.EOF then
            begin
              EntradaDados.SelectAll ;
              Informa('Numerário não encontrado !') ;
              exit ;
            end ;

          ProvedorCartao := '';

          TipoPadrao := DM.SQLTemplate.FieldByName('NUMEA5TIPO').Value ;
          // Pega o Cd do Provedor de cartao se tiver um provedor vinculado ao numerario
          ProvedorCartao := DM.SQLTemplate.FieldByName('PRCAA13ID').AsString ;

          NumerarioCod := EntradaDados.Text ;
          LblNUMERARIO.Caption := DM.SQLTemplate.FieldByName('NUMEA30DESCR').Value ;

          EntradaDados.Clear ;
          EstadoRecCred := InformandoValorRecebido;
          PreparaEstadoRec(EstadoRecCred) ;
          exit ;
        end ;
      //INFORMANDO VALOR RECEBIDO
      if EstadoRecCred = InformandoValorRecebido then
        begin
          FinalizandoRecto := False;

          if EntradaDados.Text = '' then
            begin
              Informa('O valor recebido deve ser informado') ;
              exit ;
            end ;

          try
            EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
          except
            Informa('O valor digitado não é válido') ;
            exit ;
          end ;

          if StrToFloat(EntradaDados.Text) < TotalPagar.Value then
            begin
              Informa('O valor recebido deve ser maior ou igual ao total à pagar') ;
              exit ;
            end ;

          LblTROCO.Caption := 'Recebido:' + FormatFloat('R$ ###0.00', StrToFloat(EntradaDados.Text)) +
                              ' Troco:'   + FormatFloat(' R$ ###00.00', StrToFloat(EntradaDados.Text) - TotalPagar.Value ) ;
          LblTROCO.Refresh ;

          TotalTroco := StrToFloat(EntradaDados.Text) - TotalPagar.Value;

          LblNUMERARIO.Caption := DM.SQLTemplate.FieldByName('NUMEA30DESCR').Value ;

          EntradaDados.Clear ;
          EstadoRecCred := FinalizandoRecebimento ;
          PreparaEstadoRec(EstadoRecCred) ;
          exit ;
        end ;
      //FINALIZANDO RECEBIMENTO
      if EstadoRecCred = FinalizandoRecebimento then
        begin
          if FinalizandoRecto then
            exit;
          // TESTA SE É CARTAO DE CRÉDITO
          if (TipoPadrao = 'CRT') and (ProvedorCartao <> '') then
            begin
              // Limpar tabelas temp Vista e Prazo do Financeiro da Venda
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
              DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
              DM.SQLTemplate.ExecSQL ;
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
              DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
              DM.SQLTemplate.ExecSQL ;
              // Alimenta com os dados do Recebimento na tabela a vista
              SQLParcelasVistaVendaTemp.Close;
              SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
              SQLParcelasVistaVendaTemp.Open;
              SQLParcelasVistaVendaTemp.Append;
              SQLParcelasVistaVendaTempTERMICOD.Value  := TerminalAtual;
              SQLParcelasVistaVendaTempNROITEM.Value   := 1;
              SQLParcelasVistaVendaTempNUMEICOD.Value  := StrToInt(NumerarioCod);
              SQLParcelasVistaVendaTempVALORPARC.Value := TotalPagar.Value;
              SQLParcelasVistaVendaTempTIPOPADR.Value  := TipoPadrao;
              SQLParcelasVistaVendaTemp.Post;

              // Tem q Abrir a tabela a Vista e Prazo pra nao dar erro na funcao FechaCupom
              SQLParcelasVistaVendaTemp.Close;
              SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
              SQLParcelasVistaVendaTemp.Open;
              SQLParcelasPrazoVendaTemp.Close;
              SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
              SQLParcelasPrazoVendaTemp.Open;

              SQLProvedorCartao.Close;
              SQLProvedorCartao.MacroByName('MFiltro').Value := 'PRCAA13ID = '''+ProvedorCartao+'''';
              SQLProvedorCartao.Open;
              if not SQLProvedorCartao.IsEmpty then
                begin
                  ProvedorCartao      := SQLProvedorCartaoPRCAA60CARTAO.AsString;
                  SendDirectory       := SQLProvedorCartaoPRCATPATHENVIA.AsString;
                  ReceiveDirectory    := SQLProvedorCartaoPRCATPATHRECEBE.AsString;
                  DM.NumerarioCartao  := NumerarioCod;
                  NomeNumerarioCartao := LblNUMERARIO.Caption;
                  DM.TotalCartao      := TotalPagar.Value;

                  TemNumerarioCartaoVista := True;
                  TemNumerarioCartaoPrazo := False;
                  {VERIFICANDO SE O CRÉDITO DO CARTÃO FOI APROVADO}
                  if TemNumerarioCartaoPrazo or TemNumerarioCartaoVista then
                    if not VerificaCartaoCredito then
                      begin
                        InformaG('Transação não completada! Troque de numerário ou tente novamente!') ;
                        TemNumerarioCartaoVista := False;
                        TemNumerarioCartaoPrazo := False;
                        Application.Restore;
                        EstadoRecCred := InformandoNumerario ;
                        PreparaEstadoRec(EstadoRecCred) ;
                        Exit;
                      end;

                  NroCupomFiscal := '' ;
                  if not AbrirCupomFiscal(ECFAtual, PortaECFAtual, NroCupomFiscal) and (ECFAtual <> 'SIGTRON FS300') then
                    begin
                      InformaG('Problemas ao tentar abrir o cupom!') ;
                      EntradaDados.SelectAll ;
                      EstadoRecCred := InformandoNumerario ;
                      PreparaEstadoRec(EstadoRecCred) ;
                      Exit;
                    end ;
                  if not ImprimeItemECF(ECFAtual,                                 {Impressora}
                                        PortaECFAtual,                            {Porta}
                                        '',                                       {Numitem}
                                        '0',                                      {Codigo}
                                        'Recebimento Prestacao',                  {Descricao}
                                        TributoTaxaCrediario,                     {Tributo}
                                        '',                                       {TipoDesc}
                                        'UN',                                     {Unid}
                                        1,                                        {Qtde}
                                        dm.TotalCartao,                           {Valor}
                                        0,                                        {Percdesc}
                                        0,                                        {Vlrdesco}
                                        2                                         {NumDecQuant}) then
                    begin
                      CancelarCupomFiscal(ECFAtual,PortaECFAtual);
                      InformaG('Problemas ao imprimir o item no ECF!');
                      EntradaDados.SelectAll ;
                      EstadoRecCred := InformandoNumerario ;
                      PreparaEstadoRec(EstadoRecCred) ;
                      Exit;
                    end;

                  //EMITIR FECHAMENTO CUPOM FISCAL
                  FechouCupomFiscal   := False;
                  EnviouNumerariosECF := False;
                  repeat
                    if not FecharCupomFiscal(ECFAtual,
                                             PortaECFAtual,
                                             Ecf_CNFV,
                                             StrToFloat(FormatFloat('##0.00', dm.TotalCartao)),
                                             0, // ACRESCIMO
                                             0, // DESCONTO
                                             0, // TROCO
                                             SQLParcelasVistaVendaTemp,
                                             SQLParcelasPrazoVendaTemp,
                                             NomeClienteRec,
                                             EnderecoClienteRec,
                                             CidadeClienteRec,
                                             '',
                                             '',
                                             '',
                                             '',
                                             '') then
                      begin
                        if Pergunta('SIM','A impressora fiscal não responde. Deseja tentar novamente?') then
                          FechouCupomFiscal := False
                        else
                          Break;
                      end
                    else
                      FechouCupomFiscal := True;
                  until
                    FechouCupomFiscal;
                  // Se nao conseguir fechar o cupom
                  if not FechouCupomFiscal then
                    begin
                      if RetornoCartao.TransacaoAutorizada then
                        begin
                          Msg := 'A Transação de Transferência Eletrônica de Fundos(TEF) foi cancelada!' + #13 + #13 +
                                 'Rede --> ' + RetornoCartao.NomeRede + #13 +
                                 'Documento(NSU) --> ' + RetornoCartao.NroTransacao + #13;
                          if RetornoCartao.ValorTotal <> ' ' then
                            Msg := Msg + 'Valor --> ' + FormatFloat('##0.00',StrToFloat(RetornoCartao.ValorTotal)/ 100);
                          Application.MessageBox(PChar(Msg),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_ICONINFORMATION + MB_SETFOREGROUND);
                          Confirma(RetornoCartao.NomeRede,RetornoCartao.NroTransacao,RetornoCartao.Finalizacao,False);
                        end;
                      Application.Restore;
                      EntradaDados.SelectAll ;
                      EstadoRecCred := InformandoNumerario ;
                      PreparaEstadoRec(EstadoRecCred) ;
                      Exit;
                    end;
                  // IMPRIME AUTORIZACAO DO CARTAO DE CREDITO
                  if RetornoCartao.TransacaoAutorizada then
                    begin
                      LockWindowUpdate(FormTelaRecebimentoCrediario.Handle);
                      DadosImpressora.ECFAtual           := ECFAtual;
                      DadosImpressora.PortaECFAtual      := PortaECFAtual;
                      DadosImpressora.TotNumECFImp       := RetornaTotalizadorNumerarioECF(Ecf_ID,dm.NumerarioCartao);
                      DadosImpressora.Ecf_CNFV           := Ecf_CNFV;
                      DadosImpressora.Ecf_ID             := Ecf_ID;
                      DadosImpressora.NroCupomFiscal     := NroCupomFiscal;
                      if (ECFAtual = 'DARUMA FS345') then
                        DadosImpressora.DescricaoNumerario := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID, dm.NumerarioCartao)
                      else
                        DadosImpressora.DescricaoNumerario := NomeNumerarioCartao;
                      DadosImpressora.ValorImp           := dm.TotalCartao;

                      // ENVIAR O NRO DE VIAS QUE DESEJA IMPRIMIR
                      if RetornoCartao.QtdeLinhas > 0 then
                        begin
                          if not ImprimeRetorno(RetornoCartao,DadosImpressora,NroViasTEF,False) then
                            CancelarCupomFiscal(ECFAtual,PortaECFAtual);
                        end
                      else
                        begin
                          if (Copy(TipoPadrao,1,3) = 'CHQ') and (RetornoCartao.TransacaoAutorizada) then
                            begin
                              Application.Restore;
                              Informa(RetornoCartao.RetornoOperador);
                            end;
                        end;
                    end;
                   LockWindowUpdate(0);
                end;
            end;
          // Imprimir Cheque com o Total das Prestações selecionadas
          if (TipoPadrao = 'CHQV') or (TipoPadrao = 'CHQP') then
            begin
              if not dm.TblCheques.Active then
                dm.TblCheques.Open ;
              while not dm.TblCheques.eof do
                dm.TblCheques.delete;
              dm.TblCheques.Append ;
              dm.TblChequesDataVecto.Value := DataBaixa ;
              dm.TblChequesValor.Value     := TotalPagar.Value ;
              dm.TblCheques.Post ;
              Application.CreateForm(TFormTelaDadosCheque, FormTelaDadosCheque) ;
              FormTelaDadosCheque.ShowModal;
              if dm.TblCheques.Active then dm.TblCheques.Close ;

              {Cadastrar o Cheque Recebido}
              DM.SQLContasReceber.Close ;
              DM.SQLContasReceber.MacroByName('MFiltro').Value := 'CTRCA13ID is null' ;
              DM.SQLContasReceber.Open ;

              Inc(CodProxCntRecTemp) ;

              CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                                 FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                                 Format('%.6d', [CodProxCntRecTemp]) ;
              CodNextContaRec := CodNextContaRec + DigitVerifEAN(CodNextContaRec)  ;

              DM.SQLContasReceber.Append ;
              DM.SQLContasReceber.ParamByName('CTRCA13ID').Value         := CodNextContaRec ;
              DM.SQLContasReceber.ParamByName('EMPRICOD').AsString       := EmpresaPadrao ;
              DM.SQLContasReceber.ParamByName('TERMICOD').Value          := TerminalAtual ;
              DM.SQLContasReceber.ParamByName('CTRCICOD').Value          := CodProxCntRecTemp ;
              DM.SQLContasReceber.ParamByName('CLIEA13ID').Value         := ClienteVenda ;
              DM.SQLContasReceber.ParamByName('CTRCCSTATUS').Value       := 'A' ;
              DM.SQLContasReceber.ParamByName('CTRCCTIPOREGISTRO').Value := 'N';
              DM.SQLContasReceber.ParamByName('CTRCINROPARC').Value      := 0;
              DM.SQLContasReceber.ParamByName('CTRCN2DESCFIN').Value     := 0 ;
              DM.SQLContasReceber.ParamByName('CTRCN2TXJURO').Value      := 0 ;
              DM.SQLContasReceber.ParamByName('CTRCN2TXMULTA').Value     := 0 ;
              DM.SQLContasReceber.ParamByName('CTRCN2VLR').Value         := TotalPagar.Value ;
              DM.SQLContasReceber.ParamByName('CTRCA5TIPOPADRAO').Value  := TipoPadrao ;
              DM.SQLContasReceber.ParamByName('CTRCN2TOTREC').Value      := 0 ;
              DM.SQLContasReceber.ParamByName('CTRCN2TOTJUROREC').Value  := 0 ;
              DM.SQLContasReceber.ParamByName('CTRCN2TOTMULTAREC').Value := 0 ;
              DM.SQLContasReceber.ParamByName('CTRCN2TOTDESCREC').Value  := 0 ;
              //DADOS CHEQUE
              DM.SQLContasReceber.ParamByName('BANCA5CODCHQ').Value      := dm.TblChequesBANCA5COD.AsString ;
              DM.SQLContasReceber.ParamByName('CTRCA10AGENCIACHQ').Value := dm.TblChequesAGENCIA.AsString ;
              DM.SQLContasReceber.ParamByName('CTRCA15CONTACHQ').Value   := dm.TblChequesCONTA.AsString ;
              DM.SQLContasReceber.ParamByName('CTRCA15NROCHQ').Value     := dm.TblChequesNroCheque.AsString ;
              DM.SQLContasReceber.ParamByName('CTRCA60TITULARCHQ').Value := dm.TblChequesTITULAR.AsString ;
              DM.SQLContasReceber.ParamByName('CTRCA20CGCCPFCHQ').Value  := dm.TblChequesCGCCPF.AsString ;
              if dm.TblChequesDataVecto.AsVariant <> Null then
                DM.SQLContasReceber.ParamByName('CTRCDVENC').AsDateTime  := dm.TblChequesDataVecto.AsDateTime ;
                DM.SQLContasReceber.ParamByName('ALINICOD').AsInteger      := dm.TblChequesALINICOD.AsVariant ;
              DM.SQLContasReceber.ParamByName('PORTICOD').AsInteger      := dm.TblChequesPORTICOD.AsVariant ;
              DM.SQLContasReceber.ParamByName('PENDENTE').Value          := 'S' ;
              DM.SQLContasReceber.ParamByName('REGISTRO').Value          := Now ;
              try
                DM.SQLContasReceber.Post ;
              except
                DM.SQLContasReceber.Cancel ;
              end;
            end;

          {Grava Movimento Caixa}
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''RCCRD''') ;
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.Eof then
            Informa('Não foi encontrada nenhuma operação de caixa para RECEBIMENTO de CREDIÁRIO. O valores do seu caixa não serão informados corretamente !') ;
          //---------------------------\\
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''JURRC''') ;
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.Eof then
            Informa('Não foi encontrada nenhuma operação de caixa para JUROS REC.PARCELA CREDIÁRIO. O valores do seu caixa não serão informados corretamente !') ;
          //---------------------------\\
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''MULRC''') ;
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.Eof then
            Informa('Não foi encontrada nenhuma operação de caixa para MULTA REC.PARCELA CREDIÁRIO. O valores do seu caixa não serão informados corretamente !') ;
          //---------------------------\\
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''DESRC''') ;
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.Eof then
            Informa('Não foi encontrada nenhuma operação de caixa para DESCONTO REC.PARCELA CREDIÁRIO. O valores do seu caixa não serão informados corretamente !') ;
          //---------------------------\\

          SQLRecebimento.Close ;
          SQLRecebimento.Open ;

          if (PortaECFAtual <> '') and (ECFAtual = '') then
            begin
              if not DM.SQLECF.Active then DM.SQLECF.Open;
              DM.SQLECF.First;
              while not DM.SQLECF.Eof do
                begin
                  try
                    if AbrirGaveta(DM.SQLECF.ParamByName('ECFA30MODELO').AsString,PortaECFAtual) then DM.SQLECF.Last;
                  except
                    Application.ProcessMessages;
                  end;
                  DM.SQLECF.Next;
                end;
            end;

          if ECFAtual <> '' then
            AbrirGaveta(ECFAtual, PortaECFAtual)
          else
            if ImpNaoFiscalAtual <> '' then
              AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);

          // Foi criado essa variavel para evitar a Duplicacao quando o usuario aperta varias vezes Enter no final do Recto.
          FinalizandoRecto := True;

          SQLParcelasReceberTemp.First ;
          while not SQLParcelasReceberTemp.EOF do
            begin
              // Teste para ver se ja recebeu essa Parcela hoje!
              { MakeWindowMessage('Consultando Recebimento...');
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select CTRCA13ID from RECEBIMENTO where CTRCA13ID = ''' + SQLParcelasReceberTempCTRCA13ID.Value + '''');
              DM.SQLTemplate.SQL.Add(' and RECEDRECTO = ''' + FormatDateTime('mm/dd/yyyy',DataBaixa) + '''');
              DM.SQLTemplate.Open;
              DestroyWindow;
              if not DM.SQLTemplate.Eof then
                Exit; }


              try
                DataVencto := SQLLocate('CONTASRECEBER','CTRCA13ID','CTRCDEMIS',SQLParcelasReceberTempCTRCA13ID.AsString);
              except
                DataVencto := SQLParcelasReceberTempDVENC.AsString;
              end;
              //SE PARCELA FOR IGUAL A ZERO É UMA ENTRADA
              if (SQLParcelasReceberTempINROPARC.AsInteger > 0) or
                 (SQLParcelasReceberTempDVENC.AsString <> DataVencto) then
                begin
                  MakeWindowMessage('Efetuando Recebimento...');

                  DM.SQLTemplate.Close ;
                  DM.SQLTemplate.SQL.Clear ;
                  DM.SQLTemplate.SQL.Add('select Max(RECEICOD) as Contador from RECEBIMENTO') ;
                  DM.SQLTemplate.SQL.Add('where CTRCA13ID = ''' + SQLParcelasReceberTempCTRCA13ID.Value + '''') ;
                  DM.SQLTemplate.Open ;
                  if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
                    ProxCodRec := DM.SQLTemplate.FieldByName('Contador').Value + 1
                  else
                    ProxCodRec := 1 ;

                  SQLRecebimento.Append ;
                  SQLRecebimentoCTRCA13ID.Value      := SQLParcelasReceberTempCTRCA13ID.Value ;
                  SQLRecebimentoRECEICOD.Value       := ProxCodRec ;
                  SQLRecebimentoRECEDRECTO.Value     := DataBaixa ;
                  SQLRecebimentoRECEDDATAMOV.Value   := DataBaixa ;
                  SQLRecebimentoCLIEA13ID.Value      := SQLParcelasReceberTempCLIEA13ID.Value ;
                  SQLRecebimentoRECEN2VLRRECTO.Value := SQLParcelasReceberTempN2VLRAMORT.Value ;
                  SQLRecebimentoRECEN2VLRJURO.Value  := SQLParcelasReceberTempN2VLRJURO.Value ;
                  SQLRecebimentoRECEN2VLRMULTA.Value := SQLParcelasReceberTempN2VLRMULTA.Value ;
                  SQLRecebimentoRECEN2DESC.Value     := SQLParcelasReceberTempN2VLRDESC.Value ;
                  SQLRecebimentoRECEN2MULTACOBR.Value:= SQLParcelasReceberTempN2VLRTXCOBR.Value ;
                  SQLRecebimentoEMPRICODREC.Value    := StrToInt(EmpresaPadrao) ;
                  SQLRecebimentoTERMICODREC.Value    := TerminalAtual ;
                  SQLRecebimentoUSUAICOD.Value       := UsuarioCorrente;
                  SQLRecebimentoNUMEICOD.AsString    := NumerarioCod ;
                  SQLRecebimentoPENDENTE.Value       := 'S' ;
                  SQLRecebimentoREGISTRO.Value       := Now ;
                  SQLRecebimento.Post;

                  SetLength(totalrecibo,length(TotalRecibo)+1);
                  setLength(TotalRecibo[length(totalRecibo)-1],8);
                  TotalRecibo[(length(TotalRecibo)-1),0]:= Copy(SQLParcelasReceberTempCTRCA13ID.asstring+'              ',0,14);
                  TotalRecibo[(length(TotalRecibo)-1),1]:= Copy(SQLParcelasReceberTempA13NRODOC.AsString+'             ',0,10);
                  TotalRecibo[(length(TotalRecibo)-1),2]:= Copy(SQLParcelasReceberTempINROPARC.AsString+'     ',0,5);
                  TotalRecibo[(length(TotalRecibo)-1),3]:= Copy(SQLParcelasReceberTempDVenc.AsString+'             ',0,12);
                  TotalRecibo[(length(TotalRecibo)-1),4]:= StrTm(FormatFloat('##,###,##0.00',SQLParcelasReceberTempN2vlrVenc.value),9,' ',0);
                  TotalRecibo[(length(TotalRecibo)-1),5]:= StrTm(FormatFloat('##,###,##0.00',SQLParcelasReceberTempN2VLRJURO.value),9,' ',0);
                  TotalRecibo[(length(TotalRecibo)-1),6]:= StrTm(FormatFloat('##,###,##0.00',SQLParcelasReceberTempN2VLRDESC.value),8,' ',0);
                  TotalRecibo[(length(TotalRecibo)-1),7]:= StrTm(FormatFloat('##,###,##0.00',SQLParcelasReceberTempN2VLRAMORT.VALUE+
                                                           SQLParcelasReceberTempN2VLRJURO.VALUE+
                                                           SQLParcelasReceberTempN2VLRMULTA.VALUE-
                                                           SQLParcelasReceberTempN2VLRDESC.VALUE),10,' ',0);
                  TotalRecbto := TotalRecbto + SQLParcelasReceberTempN2VLRAMORT.VALUE+
                                               SQLParcelasReceberTempN2VLRJURO.VALUE+
                                               SQLParcelasReceberTempN2VLRMULTA.VALUE-
                                               SQLParcelasReceberTempN2VLRDESC.VALUE;
                  TotalDescto := TotalDescto + SQLParcelasReceberTempN2VLRDESC.value;
                  TotalJuros  := TotalJuros  + SQLParcelasReceberTempN2VLRJURO.value;

                  //ATUALIZA TOTAIS CABECALHO CONTAS RECEBER
                  AtualizaTotaisCabecalhoContasReceber(SQLParcelasReceberTempCTRCA13ID.Value) ;
                  // ATUALIZA DATA DE QUITACAO DO CUPOM
                  AtualizaDataQuitacaoCupom(SQLParcelasReceberTempA13CUPOID.AsString);

                  DestroyWindow;

                  //GRAVAR MOVIMENTO CAIXA VALOR LIQUIDO DA PARCELA
                  if SQLParcelasReceberTempN2VLRPAGAR.Value > 0 then
                    begin
                      MakeWindowMessage('Gravando Movimento de Caixa...');

                      DM.SQLTemplate.Close ;
                      DM.SQLTemplate.SQL.Clear ;
                      DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
                      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''RCCRD''') ;
                      DM.SQLTemplate.Open ;
                      if not DM.SQLTemplate.EOF then
                        begin
                          if SQLParcelasReceberTempINROPARC.Value > 0 then
                            HistCx := ''
                          else
                            HistCx := 'AUT.NUMER.A VISTA' ;

                          GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                               DM.SQLTotalizar,
                                               EmpresaPadrao,
                                               IntToStr(TerminalAtual),
                                               FormatDateTime('mm/dd/yyyy', Now),
                                               NumerarioCod,
                                               DM.SQLTemplate.Fieldbyname('OPCXICOD').Value,
                                               IntToStr(DM.UsuarioAtual),
                                               SQLParcelasReceberTempA13CUPOID.Value + '/' +
                                               SQLParcelasReceberTempINROPARC.AsString,
                                               SQLParcelasReceberTempN2VLRAMORT.Value,
                                               SQLParcelasReceberTempN2VLRJURO.Value,  //WMOVICAIXN2VLRJURO
                                               SQLParcelasReceberTempN2VLRMULTA.Value, //WMOVICAIXN2VLRMULTA
                                               SQLParcelasReceberTempN2VLRDESC.Value,  //WMOVICAIXN2VLRDEC
                                               '0',{WMVCXA6NUMCUPOM}
                                               'C',{WTIPO}
                                               SQLParcelasReceberTempNOMECLIENTE.Value +' - '+ HistCx,{WMVCXA255HIST}
                                               'N',
                                               '') ;
                        end ;
                      //GRAVAR MOVIMENTO CAIXA REF. AO JURO DA PARCELA
                      if SQLParcelasReceberTempN2VLRJURO.Value > 0 then
                        begin
                          DM.SQLTemplate.Close ;
                          DM.SQLTemplate.SQL.Clear ;
                          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
                          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''JURRC''') ;
                          DM.SQLTemplate.Open ;
                          if not DM.SQLTemplate.EOF then
                            GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                                 DM.SQLTotalizar,
                                                 EmpresaPadrao,
                                                 IntToStr(TerminalAtual),
                                                 FormatDateTime('mm/dd/yyyy', Now),
                                                 NumerarioCod, //'Null',
                                                 DM.SQLTemplate.Fieldbyname('OPCXICOD').Value,
                                                 IntToStr(DM.UsuarioAtual),
                                                 SQLParcelasReceberTempA13CUPOID.Value + '/' +
                                                 SQLParcelasReceberTempINROPARC.AsString,
                                                 SQLParcelasReceberTempN2VLRJURO.Value,
                                                 0,//WMOVICAIXN2VLRJURO
                                                 0,//WMOVICAIXN2VLRMULTA
                                                 0,//WMOVICAIXN2VLRDEC
                                                 '0',{WMVCXA6NUMCUPOM}
                                                 'C',{WTIPO}
                                                 SQLParcelasReceberTempNOMECLIENTE.Value,{WMVCXA255HIST}
                                                 'N',
                                                 '') ;
                        end ;
                      //GRAVAR MOVIMENTO CAIXA REF. A MULTA DA PARCELA
                      if SQLParcelasReceberTempN2VLRMULTA.Value > 0 then
                        begin
                          DM.SQLTemplate.Close ;
                          DM.SQLTemplate.SQL.Clear ;
                          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
                          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''MULRC''') ;
                          DM.SQLTemplate.Open ;
                          if not DM.SQLTemplate.Eof then
                            GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                                 DM.SQLTotalizar,
                                                 EmpresaPadrao,
                                                 IntToStr(TerminalAtual),
                                                 FormatDateTime('mm/dd/yyyy', Now),
                                                 NumerarioCod, //'Null',
                                                 DM.SQLTemplate.Fieldbyname('OPCXICOD').Value,
                                                 IntToStr(DM.UsuarioAtual),
                                                 SQLParcelasReceberTempA13CUPOID.Value + '/' +
                                                 SQLParcelasReceberTempINROPARC.AsString,
                                                 SQLParcelasReceberTempN2VLRMULTA.Value,
                                                 0,//WMOVICAIXN2VLRJURO
                                                 0,//WMOVICAIXN2VLRMULTA
                                                 0,//WMOVICAIXN2VLRDEC
                                                 '0',{WMVCXA6NUMCUPOM}
                                                 'C',{WTIPO}
                                                 SQLParcelasReceberTempNOMECLIENTE.Value {WMVCXA255HIST},
                                                 'N',
                                                 '') ;
                        end ;
                      //GRAVAR MOVIMENTO CAIXA REF. AO DESCONTO DA PARCELA
                      if SQLParcelasReceberTempN2VLRDESC.Value > 0 then
                        begin
                          DM.SQLTemplate.Close ;
                          DM.SQLTemplate.SQL.Clear ;
                          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
                          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''DESRC''') ;
                          DM.SQLTemplate.Open ;
                          if not DM.SQLTemplate.Eof then
                            GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                                 DM.SQLTotalizar,
                                                 EmpresaPadrao,
                                                 IntToStr(TerminalAtual),
                                                 FormatDateTime('mm/dd/yyyy', Now),
                                                 NumerarioCod, //'Null',
                                                 DM.SQLTemplate.Fieldbyname('OPCXICOD').Value,
                                                 IntToStr(DM.UsuarioAtual),
                                                 SQLParcelasReceberTempA13CUPOID.Value + '/' +
                                                 SQLParcelasReceberTempINROPARC.AsString,
                                                 SQLParcelasReceberTempN2VLRDESC.Value,
                                                 0,//WMOVICAIXN2VLRJURO
                                                 0,//WMOVICAIXN2VLRMULTA
                                                 0,//WMOVICAIXN2VLRDEC
                                                 '0',{WMVCXA6NUMCUPOM}
                                                 'D',{WTIPO}
                                                 SQLParcelasReceberTempNOMECLIENTE.Value {WMVCXA255HIST},
                                                 'N',
                                                 '') ;
                        end ;

                      DestroyWindow;

                      if (Dm.SQLTerminalAtivo.FieldByName('TERMCAUTENTIMPMATRI').AsString <> 'S') and
                         (Dm.SQLTerminalAtivo.FieldByName('TERMCNAOAUTRCTOCRD').AsString <> 'S')  and
                         (DM.SQLTerminalAtivo.FieldByName('TERMCIMPCOMPTOTREC').AsString <> 'S')  and
                         (ECFAtual <> '') and (PortaECFAtual <> '') then
                        begin
                          if copy(ECFAtual,1,4) = 'NFCE' then
                            begin
                              try
                                FormTelaItens.MemoRetornoNFE.Lines.Clear;
                                FormTelaItens.MemoRetornoNFE.Lines.Add('</ce><e>RECIBO DE PAGAMENTO</e>');
                                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                FormTelaItens.MemoRetornoNFE.Lines.Add('</ae></fn>Terminal: '+dm.SQLTerminalAtivo.FieldByName('TERMA60DESCR').Value);
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Usuario: '+dm.SQLUsuario.ParamByName('USUAA60LOGIN').Value);
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Impresso em '+FormatDateTime('dd/mm/yy hh:mm',now));
                                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Cliente:  '+SQLParcelasReceberTempNOMECLIENTE.Value);
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Contrato: '+SQLParcelasReceberTempA13CUPOID.AsString);
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Parcela : '+FormatFloat('##00',SQLParcelasReceberTempINROPARC.Value));
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Vencimento: '+FormatDateTime('dd/mm/yyyy',SQLParcelasReceberTempDVENC.value));
                                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Parcela ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRVENC.Value));
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Juros   ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRJURO.Value));
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Multa   ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRMULTA.Value));
                                FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Desc.   ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRDESC.Value));
                                FormTelaItens.MemoRetornoNFE.Lines.Add('<n>Valor a Pagar ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRPAGAR.Value)+'</n>');
                                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                FormTelaItens.MemoRetornoNFE.Lines.Add('</corte_parcial>');
                                dm.ACBrPosPrinter.Device.Desativar;
                                dm.ACBrPosPrinter.Device.Ativar;
                                dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                                dm.ACBrPosPrinter.AbrirGaveta;
                              except
                                Application.ProcessMessages;
                              end;
                              if Pergunta('SIM','Imprimir 2 Via Recibo!') then
                                begin
                                  try
                                    dm.ACBrPosPrinter.Device.Desativar;
                                    dm.ACBrPosPrinter.Device.Ativar;
                                    dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                                    dm.ACBrPosPrinter.AbrirGaveta;
                                  except
                                    Application.ProcessMessages;
                                  end;
                                end;
                              FormTelaItens.MemoRetornoNFE.Lines.Clear;
                            end
                          else
                            Autenticacao( ECFAtual,     //Impressora
                                          PortaECFAtual,//Porta,
                                          Ecf_CNFNV,    //Identificador
                                          Ecf_ID,       //Ecf_ID
                                          SQLParcelasReceberTempA13CUPOID.AsString, //Documento
                                          SQLParcelasReceberTempINROPARC.AsString,  //Parcela
                                          'Recebimento',
                                          SQLParcelasReceberTempN2VLRAMORT.Value +
                                          SQLParcelasReceberTempN2VLRJURO.Value +
                                          SQLParcelasReceberTempN2VLRTXCOBR.Value +
                                          SQLParcelasReceberTempN2VLRMULTA.Value -
                                          SQLParcelasReceberTempN2VLRDESC.Value,  //Valor
                                          StrToInt(NumerarioCod), SQLParcelasReceberTempA13CUPOID.AsString
                                          + ' '  + FormatDateTime('ddmmyy',SQLParcelasReceberTempDVENC.Value)
                                          + ' V' + FormatFloat('##0.00',SQLParcelasReceberTempN2VLRAMORT.Value)
                                          + ' M' + FormatFloat('#0.00',SQLParcelasReceberTempN2VLRMULTA.Value)
                                          + ' J' + FormatFloat('#0.00',SQLParcelasReceberTempN2VLRJURO.Value));    //NumerarioCod

                          if Pergunta('Nao','Deseja Reimprimir o Recibo Prestação!') then
                            begin
                              if copy(ECFAtual,1,4) = 'NFCE' then
                                begin
                                  try
                                    FormTelaItens.MemoRetornoNFE.Lines.Clear;
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('</ce><e>RECIBO DE PAGAMENTO</e>');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('</ae></fn>Terminal: '+dm.SQLTerminalAtivo.FieldByName('TERMA60DESCR').Value);
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Usuario: '+dm.SQLUsuario.ParamByName('USUAA60LOGIN').Value);
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Impresso em '+FormatDateTime('dd/mm/yy hh:mm',now));
                                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Cliente:  '+SQLParcelasReceberTempNOMECLIENTE.Value);
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Contrato: '+SQLParcelasReceberTempA13CUPOID.AsString);
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Parcela : '+FormatFloat('##00',SQLParcelasReceberTempINROPARC.Value));
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Vencimento: '+FormatDateTime('dd/mm/yyyy',SQLParcelasReceberTempDVENC.value));
                                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Parcela ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRVENC.Value));
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Juros   ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRJURO.Value));
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Multa   ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRMULTA.Value));
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Desc.   ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRDESC.Value));
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('<n>Valor a Pagar ' + FormatFloat('R$ ##0.00',SQLParcelasReceberTempN2VLRPAGAR.Value)+'</n>');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                                    FormTelaItens.MemoRetornoNFE.Lines.Add('</corte_parcial>');
                                    dm.ACBrPosPrinter.Device.Desativar;
                                    dm.ACBrPosPrinter.Device.Ativar;
                                    dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                                    dm.ACBrPosPrinter.AbrirGaveta;
                                  finally
                                    Application.ProcessMessages;
                                  end;
                                  if Pergunta('SIM','Imprimir 2 Via Recibo!') then
                                    begin
                                      try
                                        dm.ACBrPosPrinter.Device.Desativar;
                                        dm.ACBrPosPrinter.Device.Ativar;
                                        dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                                        dm.ACBrPosPrinter.AbrirGaveta;
                                      except
                                        Application.ProcessMessages;
                                      end;
                                    end;
                                  FormTelaItens.MemoRetornoNFE.Lines.Clear;
                                end
                              else
                                Autenticacao( ECFAtual, //Impressora
                                              PortaECFAtual,//Porta,
                                              Ecf_CNFNV,//Identificador
                                              Ecf_ID,//Ecf_ID
                                              SQLParcelasReceberTempA13CUPOID.AsString, //Documento
                                              SQLParcelasReceberTempINROPARC.AsString,  //Parcela
                                              'Recebimento',
                                              SQLParcelasReceberTempN2VLRAMORT.Value +
                                              SQLParcelasReceberTempN2VLRJURO.Value +
                                              SQLParcelasReceberTempN2VLRTXCOBR.Value +
                                              SQLParcelasReceberTempN2VLRMULTA.Value -
                                              SQLParcelasReceberTempN2VLRDESC.Value,    //Valor
                                              StrToInt(NumerarioCod), SQLParcelasReceberTempA13CUPOID.AsString
                                              + ' '  + FormatDateTime('ddmmyy',SQLParcelasReceberTempDVENC.Value)
                                              + ' V' + FormatFloat('##0.00',SQLParcelasReceberTempN2VLRAMORT.Value)
                                              + ' M' + FormatFloat('#0.00',SQLParcelasReceberTempN2VLRMULTA.Value)
                                              + ' J' + FormatFloat('#0.00',SQLParcelasReceberTempN2VLRJURO.Value));    //NumerarioCod
                            end;
                        end
                      else
                        begin
                          if Dm.SQLTerminalAtivo.FieldByName('TERMCAUTENTIMPMATRI').AsString = 'S' then
                            begin
                              if (ImpNaoFiscalAtual <> '') and (Dm.SQLTerminalAtivo.FieldByName('TERMCNAOAUTRCTOCRD').AsString <> 'S') then
                                begin
                                  if ImpNaoFiscalAtual = 'BEMATECH MP-20 CI' then
                                    if Pergunta('SIM', 'DESEJA AUTENTICAR O DOCUMENTO ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + ' ?') then
                                      if AutenticaDocumentoImpressoaNaoFiscal then
                                        if Pergunta('SIM', 'DESEJA AUTENTICAR A SEGUNDA VIA DO DOCUMENTO ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + ' ?') then
                                          AutenticaDocumentoImpressoaNaoFiscal;
                                end
                              else
                                begin
                                  if Dm.SQLTerminalAtivo.FieldByName('TERMCNAOAUTRCTOCRD').AsString <> 'S' then
                                    begin
                                      if FileExists('Autentica.txt') then
                                        begin
                                          if Length(TotalRecibo) > 0 then
                                            begin
                                              AssignFile(IniFile,Pchar(DM.PathAplicacao + '\Autentica.Txt')); { File selected in dialog }
                                              Reset(IniFile);
                                              Readln(IniFile, AutenticaTxt);
                                              CloseFile(IniFile);
                                              While pergunta('SIM','Autenticar Documento?') do
                                                begin
                                                  // RDPrint.SetModelo('Gráfico - Compatível com Windows');
                                                  RDPrint.TamanhoQteLinhas      := 3;
                                                  RDPrint.TamanhoQteColunas     := 39;
                                                  RDPrint.SetPrinterbyName(AutenticaTxt);
                                                  RDPrint.SetPrinterbyPorta('LPT1');
                                                  RDPrint.PortaComunicacao      := 'LPT1';
                                                  RDPrint.Abrir;
                                                  RDPrint.Imp(1,1,DateToStr(Date)+ ' ' +
                                                  'R$ '+StrTm(FormatFloat('###,##0.00',TotalRecbto),12,' ',0)+ ' '+
                                                  SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + ''''));
                                                  RDPrint.Novapagina;
                                                  RDPrint.Fechar;
                                                  RDPrint.OpcoesPreview.Preview := False;
                                                  RDPrint.TamanhoQteLinhas      := 12;
                                                  RDPrint.TamanhoQteColunas     := 96;
                                                  RDPrint.UsaGerenciadorImpr    := True;
                                                end;
                                            end;
                                        end
                                      else
                                        begin
                                          if Pergunta('SIM', 'DESEJA AUTENTICAR O DOCUMENTO ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + ' ?') then
                                            begin
                                              if FileExists('MostraJurosMultaDescImpRecto.txt') then
                                                ReportAutentic.Print
                                              else
                                                RDPrintAutentica;

                                              if Pergunta('SIM', 'DESEJA AUTENTICAR A SEGUNDA VIA DO DOCUMENTO ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + ' ?') then
                                                begin
                                                  if FileExists('MostraJurosMultaDescImpRecto.txt') then
                                                    ReportAutentic.Print
                                                  else
                                                    RDPrintAutentica;
                                                end;
                                            end;
                                        end;
                                    end;
                                end;
                            end
                          else
                            begin
                              if ((ECFAtual <> '') or (PortaECFAtual <> '')) and (Dm.SQLTerminalAtivo.FieldByName('TERMCNAOAUTRCTOCRD').AsString <> 'S') then
                                begin
                                  { InformaG('A autenticação não será efetuada. Verifique as configurações do ECF!');
                                  Exit; Ver melhor Adilson}
                                end;
                            end;
                        end;
                    end;
                  {
                  //GRAVAR MOVIMENTO CAIXA VALOR JUROS
                  if SQLParcelasReceberTempN2VLRJURO.Value > 0 then
                    begin
                      DM.SQLTemplate.Close ;
                      DM.SQLTemplate.SQL.Clear ;
                      DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
                      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = '' JURRC''') ;
                      DM.SQLTemplate.Open ;
                    end ;
                  //GRAVAR MOVIMENTO CAIXA VALOR MULTA
                  if SQLParcelasReceberTempN2VLRMULTA.Value > 0 then
                    begin
                      DM.SQLTemplate.Close ;
                      DM.SQLTemplate.SQL.Clear ;
                      DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
                      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = '' MULRC''') ;
                      DM.SQLTemplate.Open ;
                    end ;
                  //GRAVAR MOVIMENTO CAIXA VALOR DESCONTO
                  if SQLParcelasReceberTempN2VLRDESC.Value > 0 then
                    begin
                      DM.SQLTemplate.Close ;
                      DM.SQLTemplate.SQL.Clear ;
                      DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
                      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = '' MULRC''') ;
                      DM.SQLTemplate.Open ;
                    end ;   }
                end
              else
                begin
                  //AUTENTICAR ENTRADA
                  DM.SQLTemplate.Close ;
                  DM.SQLTemplate.SQL.Clear ;
                  DM.SQLTemplate.SQL.Add('update CUPOMNUMERARIO') ;
                  DM.SQLTemplate.SQL.Add('set Pendente=''S'', CPNMCAUTENT = ''S''') ;
                  DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + SQLParcelasReceberTempA13CUPOID.AsString + '''') ;
                  DM.SQLTemplate.ExecSQL ;

                  if (Dm.SQLTerminalAtivo.FieldByName('TERMCAUTENTIMPMATRI').AsString <> 'S') and
                     (Dm.SQLTerminalAtivo.FieldByName('TERMCNAOAUTRCTOCRD').AsString <> 'S')  and
                     (ECFAtual <> '') and (PortaECFAtual <> '') then
                    begin
                      Autenticacao( ECFAtual, //Impressora
                                    PortaECFAtual,//Porta,
                                    Ecf_CNFNV,//Identificador
                                    Ecf_ID,//Ecf_ID
                                    SQLParcelasReceberTempA13CUPOID.AsString,//Documento
                                    SQLParcelasReceberTempINROPARC.AsString,//Parcela
                                    'Recebimento',
                                    SQLParcelasReceberTempN2VLRVENC.Value ,//Valor
                                    StrToInt(NumerarioCod),'');//NumerarioCod
                    end
                  else
                    begin
                      if Dm.SQLTerminalAtivo.FieldByName('TERMCAUTENTIMPMATRI').AsString = 'S' then
                        begin
                          if (ImpNaoFiscalAtual <> '') and (Dm.SQLTerminalAtivo.FieldByName('TERMCNAOAUTRCTOCRD').AsString <> 'S') and
                             (DM.SQLTerminalAtivo.FieldByName('TERMCIMPCOMPTOTREC').AsString <> 'S') then
                            begin
                              if ImpNaoFiscalAtual = 'BEMATECH MP-20 CI' then
                                if Pergunta('SIM', 'DESEJA AUTENTICAR O DOCUMENTO ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + ' ?') then
                                  if AutenticaDocumentoImpressoaNaoFiscal then
                                    if Pergunta('SIM', 'DESEJA AUTENTICAR A SEGUNDA VIA DO DOCUMENTO ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + ' ?') then
                                      AutenticaDocumentoImpressoaNaoFiscal;
                            end
                          else
                            begin
                              if (Dm.SQLTerminalAtivo.FieldByName('TERMCNAOAUTRCTOCRD').AsString <> 'S') and (DM.SQLTerminalAtivo.FieldByName('TERMCIMPCOMPTOTREC').AsString <> 'S') then
                                begin
                                  if Pergunta('SIM', 'DESEJA AUTENTICAR O DOCUMENTO ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + ' ?') then
                                    begin
                                      ReportAutentic.PrinterSetup.PrinterName := DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').Value;
                                      ReportAutentic.Print;
                                    end;
                                  if Pergunta('SIM', 'DESEJA AUTENTICAR A SEGUNDA VIA DO DOCUMENTO ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + ' ?') then
                                    begin
                                      ReportAutentic.PrinterSetup.PrinterName := DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').Value;
                                      ReportAutentic.Print;
                                    end;
                                end;
                            end;
                        end
                      else
                        begin
                          if ((ECFAtual <> '') or (PortaECFAtual <> '')) and (Dm.SQLTerminalAtivo.FieldByName('TERMCNAOAUTRCTOCRD').AsString <> 'S') then
                            begin
                              InformaG('A autenticação não será efetuada. Verifique as configurações do ECF!');
                              Exit;
                            end;
                        end;
                    end;
                end;
              SQLParcelasReceberTemp.Next;
            end;

          if DM.SQLTerminalAtivo.FieldByName('TERMCIMPCOMPTOTREC').AsString = 'S' then
            begin
              if (ECFAtual <> '') and (PortaECFAtual <> '') then
                begin
                  if copy(ECFAtual,1,4) = 'NFCE' then
                    begin
                      try
                        FormTelaItens.MemoRetornoNFE.Lines.Clear;
                        FormTelaItens.MemoRetornoNFE.Lines.Add('</ce><e>RECIBO DE PAGAMENTO</e>');
                        FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                        FormTelaItens.MemoRetornoNFE.Lines.Add('</ae></fn>Terminal: '+dm.SQLTerminalAtivo.FieldByName('TERMA60DESCR').Value);
                        FormTelaItens.MemoRetornoNFE.Lines.Add('Usuario: '+dm.SQLUsuario.ParamByName('USUAA60LOGIN').Value);
                        FormTelaItens.MemoRetornoNFE.Lines.Add('Impresso em '+FormatDateTime('dd/mm/yy hh:mm',now));
                        FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                        FormTelaItens.MemoRetornoNFE.Lines.Add('Cliente:  '+SQLParcelasReceberTempNOMECLIENTE.Value);
                        FormTelaItens.MemoRetornoNFE.Lines.Add('Vencimento: '+FormatDateTime('dd/mm/yyyy',SQLParcelasReceberTempDVENC.value));
                        FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                        FormTelaItens.MemoRetornoNFE.Lines.Add('Total Compras ' + FormatFloat('R$ ##0.00',TotalPagar.Value));
                        FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Juros   ' + FormatFloat('R$ ##0.00',TotalJuros));
                        FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Desc.   ' + FormatFloat('R$ ##0.00',TotalDescto));
                        FormTelaItens.MemoRetornoNFE.Lines.Add('<n>Valor Pago ' + FormatFloat('R$ ##0.00',TotalRecbto)+'</n>');
                        FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                        FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                        FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                        FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                        FormTelaItens.MemoRetornoNFE.Lines.Add('</corte_parcial>');
                        dm.ACBrPosPrinter.Device.Desativar;
                        dm.ACBrPosPrinter.Device.Ativar;
                        dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                        dm.ACBrPosPrinter.AbrirGaveta;
                      finally
                        Application.ProcessMessages;
                      end;
                      if Pergunta('SIM','Imprimir 2 Via Recibo!') then
                        begin
                          try
                            dm.ACBrPosPrinter.Device.Desativar;
                            dm.ACBrPosPrinter.Device.Ativar;
                            dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                            dm.ACBrPosPrinter.AbrirGaveta;
                          except
                            Application.ProcessMessages;
                          end;
                        end;
                      FormTelaItens.MemoRetornoNFE.Lines.Clear;
                    end;
                  if FileExists('ReciboFiscal.txt') then
                    begin
                      if Pergunta('SIM','Imprimir Recibo na Impressora Fiscal') = true then
                        begin
                          Repeat
                            TxtReciboECF := #13+#10+ '-----------    R  E  C  I  B  O   -------------' +#13+#10+ #13+#10+
                                            'Recebi de: '+ SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + '''') +#13+#10+
                                            'O Valor de R$ : '+FormatFloat('##0.00',TotalPagar.Value) +#13+#10+
                                            'Ref. Pagamento de Compras Efetuadas a Prazo. ';

                            TxtReciboEcf := TxtReciboEcf + #13+#10+
                            '------------------------------------------'+#13+#10+
                            'Vencimento R$ Valor    Vencimento R$ Valor'+#13+#10+
                            '------------------------------------------'+#13+#10;
                            for i:= 1 to length(totalrecibo) do
                              begin
                                TxtReciboEcf := TxtReciboEcf +
                                              TotalRecibo[i-1,3]+
                                              TotalRecibo[i-1,4]+ '  '+
                                              TotalRecibo[i-1,3]+
                                              TotalRecibo[i-1,4]+#13+#10;
                                if Length(TxtReciboECF) > 569 then
                                begin
                                  AbrirReciboFiscal(ECFAtual, TxtReciboECF);
                                  TxtReciboECF := ''
                                end;
                              end;
                            if Length(TxtReciboECF) > 569 then
                            begin
                              AbrirReciboFiscal(ECFAtual, TxtReciboECF);
                              TxtReciboECF := ''
                            end;
                            TxtReciboEcf := TxtReciboEcf + #13+#10+
                            '------------------------------------------------'+#13+#10+
                            'Total Juros : '+StrTm(FormatFloat('###,##0.00',TotalJuros), 12,' ',0)+#13+#10+
                            'Total Descto: '+StrTm(FormatFloat('###,##0.00',TotalDescto),12,' ',0)+#13+#10+
                            'Total Pago..: '+StrTm(FormatFloat('###,##0.00',TotalRecbto),12,' ',0)+#13+#10;

                            AbrirReciboFiscal(ECFAtual, TxtReciboECF);
                          Until Pergunta('NAO','Imprimir Outra Via') = False;
                        end;
                    end;
                end
              else
                begin
                  if ImpNaoFiscalAtual <> '' then
                    begin
                      try
                        if AbrirPortaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual) then
                          if ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,DM.SQLEmpresaEMPRA60NOMEFANT.AsString+chr(10),3,0,0,0,1) then
                            begin
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,' DOCUMENTO NAO FISCAL'+chr(10),2,0,0,1,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'     RECEBIMENTO'+chr(10),2,0,0,1,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Recebido.: R$ ' + FormatFloat('#,##0.00',TotalPagar.Value)+'  '+
                                                                                SQLParcelasReceberTempCLIEA13ID.AsString + chr(10),2,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,' Dt: ' + FormatDateTime('dd/mm/yyyy hh:nn',Now) +
                                                                                ' Op: ' + Copy(UsuarioAtualNome,1,20) + chr(10),2,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                              ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                            end;
                      except
                        on E:Exception do
                          begin
                            Informa('Problemas ao imprimir comprovante. ANOTE O ERRO: ' + #13 + E.Message);
                            Screen.Cursor := crDefault;
                            Close;
                            Exit;
                          end;
                      end;
                      FecharPortaNAOFISCAL(ImpNaoFiscalAtual);
                    end
                  else
                    begin
                      // Imprime na impressora indicada o tiket com o total pago pelo cliente
                      if FileExists('Autentica.txt') then
                        begin
                          RDPrint.PortaComunicacao := '';
                          RDPrint.Abrir;
                          RDPrint.ImpC(1,1,'* Recibo de Pagamento *',[Expandido, Normal]);
                          RDPrint.Imp(3,1,'Empresa..: '  + EmpresaAtualNome);
                          RDPrint.Imp(4,1,'Terminal.: '  + TerminalAtualNome);
                          RDPrint.Imp(5,1,'Usuario..: '  + UsuarioAtualNome);
                          RDPrint.Imp(6,1,'Data.....: '  + DateToStr(Date));
                          RDPrint.Imp(7,1,'Cliente..: '  + SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + ''''));
                          RDPrint.Imp(9,1,'Valor Total R$ '+StrTm(FormatFloat('###,##0.00',TotalRecbto),12,' ',0));
                          RDPrint.Imp(12,1,'-----------------------------------------------');
                          RDPrint.Fechar;
                        end
                      else
                        begin
                          ReportTotRec.PrinterSetup.PrinterName := DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').Value;
                          ReportTotRec.Print;
                        end;
                    end;
                end;
            end;

          if FileExists('ImprimeReciboCliente.txt') then
            begin
              if Length(TotalRecibo) > 0 then
                begin
                  if pergunta('SIM','Deseja Imprimir Recibo?') then
                    begin
                      xIniFile := TIniFile.Create('IBGestao.ini');
                      // tenta ler um valor e o testa para verificar sua existencia
                      nImpressora := xIniFile.ReadString('PRINTERS','NAOFISCAL','');
                      nPorta      := xIniFile.ReadString('PRINTERS','NAOFISCALPORT','');
                      nForma      := xIniFile.ReadString('PRINTERS','FORMAPRINT','Normal'); // 'Normal' = impressora normal Unico = somente um do total - Varios = um para cada carne.
                      xIniFile.Free;

                      if nForma = 'Normal' then
                      begin
                        RDPrint.OpcoesPreview.Preview := True;
                        RDPrint.TamanhoQteLinhas      := 33;
                        RDPrint.Abrir;
                        nLin:= 1;
                        RDPrint.ImpF(nLin,1,'RECIBO DE PAGAMENTO',[EXPANDIDO,NEGRITO]); inc(nlin,2);
                        RDPrint.ImpF(nLin,1,DM.SQLEmpresaEMPRA60RAZAOSOC.AsString,[EXPANDIDO,NEGRITO]); inc(nlin);
                        RDPrint.Imp(nLin,1,Trim(DM.SQLEmpresaEMPRA60END.AsString)+' - '+Trim(dm.SQLEmpresaEMPRA60BAI.asstring)+' - '+ Trim(DM.SQLEmpresaEMPRA60CID.AsString)+' - Fone: '+Trim(dm.SQLEmpresaEMPRA20FONE.asstring)); inc(nlin,2);
                        RDPrint.Imp (nLin,1, 'NOME CLIENTE..: '+ SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + '''')); inc(nLin,2);
                        RDPrint.Imp (nLin,1, 'DATA PAGAMENTO: '+DateToStr(DATE)); inc(nLin);
                        ValorExtenso(VExt,TotalRecbto, '', '', 1, 254, '*', 3);
                        RDPrint.Imp (nLin,1,'PAGO O VALOR DE: '+VExt[0]);Inc(nLin);
                        RDPrint.Imp (nLin,1, 'Referente a Pagamento de parcela(s) de compra(s) efetuada(s) a prazo'); inc(nLin);
                        RDPrint.Imp (nLin,1, '----------------------------------------------------------------------------------'); inc(nLin);
                        RDPrint.Imp (nLin,1, 'ID.Parcela    Doc             Vencimento  R$ Parcela  R$ Juros   R$ Desc   R$ Pago'); inc(nLin);
                        RDPrint.Imp (nLin,1, '----------------------------------------------------------------------------------'); inc(nLin);
                        for i:= 1 to length(totalrecibo) do
                          begin
                            RDPrint.Imp(nLin, 1,  TotalRecibo[i-1,0]+
                                                  TotalRecibo[i-1,1]+'/'+
                                                  TotalRecibo[i-1,2]+
                                                  TotalRecibo[i-1,3]+
                                                  TotalRecibo[i-1,4]+
                                                  TotalRecibo[i-1,5]+
                                                  TotalRecibo[i-1,6]+
                                                  TotalRecibo[i-1,7]);
                            inc(nLin);
                            if nLin >= 30 then
                              begin
                                nLin:= 1;
                                RDPrint.Novapagina;
                              end;
                          end;
                        RDPrint.Imp(nLin, 1, '----------------------------------------------------------------------------------'); inc(nLin);
                        RDPrint.Imp(nLin,57,'Total Juros : '+StrTm(FormatFloat('###,##0.00',TotalJuros),12,' ',0));inc(nLin);
                        RDPrint.Imp(nLin,57,'Total Descto: '+StrTm(FormatFloat('###,##0.00',TotalDescto),12,' ',0));inc(nLin);
                        RDPrint.Imp(nLin,57,'Total Pago..: '+StrTm(FormatFloat('###,##0.00',TotalRecbto),12,' ',0));inc(nLin);
                        RDPrint.Fechar;
                        RDPrint.OpcoesPreview.Preview := False;
                        RDPrint.TamanhoQteLinhas      := 12;
                      end else if  nForma = 'Unico' then
                      begin

                       
                        RDPrint.TamanhoQteLinhas      := 20;
                        RDPrint.TamanhoQteColunas     := 50;
                        RDPrint.OpcoesPreview.Preview := False;
                        RDPrint.SetPrinterbyName(nImpressora);
                        RDPrint.SetPrinterbyPorta(nPorta);
                        RDPrint.SetModelo('Grafico');
                        RDPrint.Abrir;
                        nLin:= 1;
                        RDPrint.ImpF(nLin,1,'RECIBO DE PAGAMENTO',[EXPANDIDO,NEGRITO]); inc(nlin,2);
                        RDPrint.ImpF(nLin,1,DM.SQLEmpresaEMPRA60RAZAOSOC.AsString,[EXPANDIDO,NEGRITO]); inc(nlin);
                        RDPrint.Imp(nLin,1,Trim(DM.SQLEmpresaEMPRA60END.AsString)); INC(NLIN);
                        RDPrint.Imp(nLin,1,Trim(DM.SQLEmpresaEMPRA60CID.AsString)+' - Fone: '+Trim(dm.SQLEmpresaEMPRA20FONE.asstring)); inc(nlin,2);
                        RDPrint.Imp (nLin,1, 'NOME CLIENTE..: '+ SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + '''')); inc(nLin,2);
                        RDPrint.Imp (nLin,1, 'DATA PAGAMENTO: '+DateToStr(DATE)); inc(nLin);
                        ValorExtenso(VExt,TotalRecbto, '', '', 1, 254, '*', 3);
                        RDPrint.Imp (nLin,1,'PAGO O VALOR DE: '+VExt[0]);Inc(nLin);
                        RDPrint.Imp (nLin,1, 'Referente Pagamento de parcela(s) de compra(s)');INC(NLIN);
                        RDPrint.Imp (nLin,1, 'efetuada(s) a prazo.'); inc(nLin);
                        RDPrint.Imp (nLin,1, '-----------------------------------------------');inc(nLin);
                        RDPrint.Imp (nLin,1, 'Parcela Vencimento  R$ Parcela  R$ Juro  R$ Pgo'); inc(nLin);
                        RDPrint.Imp (nLin,1, '-----------------------------------------------');inc(nLin);
                        for i:= 1 to length(totalrecibo) do
                        begin
                          RDPrint.Imp(nLin, 1,  TotalRecibo[i-1,2]+
                                                TotalRecibo[i-1,3]+
                                                TotalRecibo[i-1,4]+
                                                TotalRecibo[i-1,5]+
                                                TotalRecibo[i-1,7]); inc(nLin);
                          RDPrint.TamanhoQteLinhas := RDPrint.TamanhoQteLinhas + 1;

                        end;

                        RDPrint.Imp(nLin, 1, '-------------------------------------------------');
                        inc(nLin);
                        RDPrint.Imp(nLin,7,'Total Juros : '+StrTm(FormatFloat('###,##0.00',TotalJuros),12,' ',0));inc(nLin);
                        RDPrint.Imp(nLin,7,'Total Descto: '+StrTm(FormatFloat('###,##0.00',TotalDescto),12,' ',0));inc(nLin);
                        RDPrint.Imp(nLin,7,'Total Pago..: '+StrTm(FormatFloat('###,##0.00',TotalRecbto),12,' ',0));inc(nLin);
                        RDPrint.Fechar;
                        RDPrint.OpcoesPreview.Preview := False;
                        RDPrint.TamanhoQteLinhas      := 12;
                        RDPrint.OpcoesPreview.Preview := False;


                       { // Loja Alaeva
                        RDPrint.SetModelo('Grafico');

                        RDPrint.TamanhoQteLinhas      := 33;
                        RDPrint.OpcoesPreview.Preview := False;

                        RDPrint.Abrir;
                        nLin:= 2;
                        RDPrint.ImpF(1,6, SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + ''''),[Expandido,Negrito]);inc(nLin);
                        RDPrint.ImpF(4,19, StrTm(FormatFloat('###,##0.00',TotalRecbto),12,' ',0),[Expandido,Negrito]);inc(nLin);
                        RDPrint.ImpF(7,19, StrTm(FormatFloat('###,##0.00',TotalCliente-TotalRecbto),12,' ',0),[Expandido,Negrito]);inc(nLin);
                        RDPrint.ImpF(9,8, FormatDateTime('dd/mm/yyyy HH:MM',Now),[Expandido,Negrito]);inc(nLin);

                        RDPrint.ImpF(22,7,DateTimeToStr(Now),[Expandido,Negrito]);inc(nLin);
                        RDPrint.ImpF(25,2,Copy(SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + ''''),0,25),[Expandido,Negrito]);inc(nLin);
                        RDPrint.ImpF(28,19,StrTm(FormatFloat('###,##0.00',TotalRecbto),12,' ',0),[Expandido,Negrito]);inc(nLin);
                        RDPrint.ImpF(30,19, StrTm(FormatFloat('###,##0.00',TotalCliente - TotalRecbto),12,' ',0),[Expandido,Negrito]);inc(nLin);

                        IF SQLLocate('CLIENTE','CLIEA13ID','CLIEDNASC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + '''') <> '' Then
                        begin
                          if (Dayof(StrToDate(SQLLocate('CLIENTE','CLIEA13ID','CLIEDNASC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + ''''))) >= Dayof(Date-5)) and
                          (Dayof(StrToDate(SQLLocate('CLIENTE','CLIEA13ID','CLIEDNASC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + '''')))  <= Dayof(date+5)) and
                          (Monthof(StrToDate(SQLLocate('CLIENTE','CLIEA13ID','CLIEDNASC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + ''''))) >= MonthOf(Date)) and
                          (Monthof(StrToDate(SQLLocate('CLIENTE','CLIEA13ID','CLIEDNASC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + ''''))) <= MonthOf(Date)) Then
                          begin
                            RDPrint.ImpF(33,8, 'Feliz Aniversário',[Expandido,Negrito]);
                          end;
                        end else
                        begin
                          RDPrint.ImpF(33,8, Copy(DM.SQLTerminalAtivoTERMA60MENSAGEMPDV.AsString,0,30),[Negrito]);
                          RDPrint.Imp(34,8, Copy(DM.SQLTerminalAtivoTERMA60MENSAGEMPDV.AsString,31,30));
                        end;
                        RDPrint.Fechar;
                        RDPrint.OpcoesPreview.Preview := False;
                        RDPrint.TamanhoQteLinhas      := 12;
                        }

                      end else
                      begin
                        for i:= 1 to length(totalrecibo) do
                        begin
                          RDPrint.OpcoesPreview.Preview := False;
                          RDPrint.TamanhoQteLinhas      := 20;
                          RDPrint.TamanhoQteColunas     := 50;
                          RDPrint.SetPrinterbyName(nImpressora);
                          RDPrint.SetPrinterbyPorta(nPorta);
                          RDPrint.SetModelo('Grafico');

                          RDPrint.Abrir;
                          nLin:= 1;
                          RDPrint.ImpF(nLin,1,'RECIBO DE PAGAMENTO',[EXPANDIDO,NEGRITO]); inc(nlin,2);
                          RDPrint.ImpF(nLin,1,DM.SQLEmpresaEMPRA60RAZAOSOC.AsString,[EXPANDIDO,NEGRITO]); inc(nlin);
                          RDPrint.Imp(nLin,1,Trim(DM.SQLEmpresaEMPRA60END.AsString)); INC(NLIN);
                          RDPrint.Imp(nLin,1,Trim(DM.SQLEmpresaEMPRA60CID.AsString)+' - Fone: '+Trim(dm.SQLEmpresaEMPRA20FONE.asstring)); inc(nlin,2);
                          RDPrint.Imp (nLin,1, 'NOME CLIENTE..: '+ SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','''' + SQLParcelasReceberTempCLIEA13ID.asstring + '''')); inc(nLin,2);
                          RDPrint.Imp (nLin,1, 'DATA PAGAMENTO: '+DateToStr(DATE)); inc(nLin);
                          ValorExtenso(VExt,TotalRecbto, '', '', 1, 254, ' ',3);
                          RDPrint.Imp (nLin,1, 'PAGO O VALOR DE: '+VExt[0]);Inc(nLin);
                          RDPrint.Imp (nLin,1, 'Referente Pagamento de parcela(s) de compra(s)');INC(NLIN);
                          RDPrint.Imp (nLin,1, 'efetuada(s) a prazo.'); inc(nLin);
                          RDPrint.Imp (nLin,1, '-----------------------------------------------');inc(nLin);
                          RDPrint.Imp (nLin,1, 'Parcela Vencimento  R$ Parcela  R$ Juro  R$ Pgo'); inc(nLin);
                          RDPrint.Imp (nLin,1, '-----------------------------------------------');inc(nLin);
                          RDPrint.Imp(nLin, 1,  TotalRecibo[i-1,2]+
                                                TotalRecibo[i-1,3]+
                                                TotalRecibo[i-1,4]+
                                                TotalRecibo[i-1,5]+
                                                TotalRecibo[i-1,7]);
                          inc(nLin);
                          RDPrint.Imp(nLin, 1, '-------------------------------------------------');
                          inc(nLin);
                          RDPrint.Imp(nLin,7,'Total Juros : '+StrTm(TotalRecibo[i-1,5],12,' ',0));inc(nLin);
                          RDPrint.Imp(nLin,7,'Total Descto: '+StrTm(TotalRecibo[i-1,6],12,' ',0));inc(nLin);
                          RDPrint.Imp(nLin,7,'Total Pago..: '+StrTm(TotalRecibo[i-1,7],12,' ',0));inc(nLin);
                          RDPrint.Fechar;
                          RDPrint.OpcoesPreview.Preview := False;
                          RDPrint.TamanhoQteLinhas      := 12;
                        end;
                      end;
                    end;
                end;
            end;

          // Encerra o Recebimento
          if (TotalTroco > 0) and (DM.SQLTerminalAtivo.FieldByName('TERMCMOSTRATROCOCUP').AsString = 'S') then
            begin
              Application.CreateForm(TFormTelaTroco,FormTelaTroco);
              FormTelaTroco.labeltroco.Caption :=  FormatFloat('R$ ##0.00',TotalTroco);
              FormTelaTroco.ShowModal;
              TotalTroco := 0;
            end;

          // Encerra o Recebimento
          FinalizandoRecto := False;
          Close;
          exit;
        end;
    end;         // Final do primeiro if da procedure
end ;

procedure TFormTelaRecebimentoCrediario.FormCreate(Sender: TObject);
begin
  DataCalculo := Date ;
  DataBaixa   := Date ;

{  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ; }

  LblTROCO.Caption := '' ;
  LblTROCO.Refresh ;
  TotalTroco := 0;

  EstadoRecCred := InformandoDocumento ;
  PreparaEstadoRec(EstadoRecCred) ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('delete from PARCELASRECEBERTEMP') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.ExecSQL ;

  SQLParcelasReceberTemp.Close ;
  SQLParcelasReceberTemp.SQL.Clear ;
  SQLParcelasReceberTemp.SQL.Add('select * from PARCELASRECEBERTEMP') ;
  SQLParcelasReceberTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
//  SQLParcelasReceberTemp.SQL.Add('order by CLIEA13ID, DVENC, A13NRODOC, INROPARC') ;
  SQLParcelasReceberTemp.SQL.Add('order by IPOSICAO') ;
  SQLParcelasReceberTemp.Open ;

  TempoLimite := DM.SQLTerminalAtivo.FieldByName('TERMITMPLIMITESERV').AsInteger;
  TempoIntervalo := DM.SQLTerminalAtivo.FieldByName('TERMIINTERVALOSERV').AsInteger;
  if FileExists('c:\StarTef\STF002.Int')then
    DeleteFile('c:\StarTef\STF002.Int');
  if not SQLProvedorCartao.Active then SQLProvedorCartao.Open;

  FinalizandoRecto := False;
end;

procedure TFormTelaRecebimentoCrediario.TimerTimer(Sender: TObject);
begin
  Caption := 'Data e Hora Atual: ' + FormatDateTime('ddddddddddddd hh:mm', Now) +
                           '    Operador: ' + UsuarioAtualNome +
                           '    Terminal: ' + TerminalAtualNome ;
end;

procedure TFormTelaRecebimentoCrediario.SQLClienteCalcFields(DataSet: TDataSet);
begin
  if SQLClienteCLIEA60NOMEFANT.Value <> '' then
    SQLClienteNomeCalcField.Value := SQLClienteCLIEA60NOMEFANT.Value
  else
    SQLClienteNomeCalcField.Value := SQLClienteCLIEA60RAZAOSOC.Value ;
end;

procedure TFormTelaRecebimentoCrediario.SQLParcelasReceberTempCalcFields(
  DataSet: TDataSet);
begin
  SQLParcelasReceberTempDoc_Parc_CalcField.Value := SQLParcelasReceberTempA13NRODOC.Value + '-' +
                                                    SQLParcelasReceberTempINROPARC.AsString ;

  SQLParcelasReceberTempINRODIASATRAS.AsString := FormatFloat('#', DataCalculo - SQLParcelasReceberTempDVENC.Value) ;

  if SQLParcelasReceberTempN2VLRVENC.Value > SQLParcelasReceberTempN2VLRAMORT.Value then
    SQLParcelasReceberTempN2VLRPAGAR.Value := SQLParcelasReceberTempN2VLRVENC.Value -
                                              (SQLParcelasReceberTempN2VLRVENC.Value - SQLParcelasReceberTempN2VLRAMORT.Value) +
                                              SQLParcelasReceberTempN2VLRJURO.Value +
                                              SQLParcelasReceberTempN2VLRMULTA.Value +
                                              SQLParcelasReceberTempN2VLRTXCOBR.Value -
                                              SQLParcelasReceberTempN2VLRDESC.Value
  else
    SQLParcelasReceberTempN2VLRPAGAR.Value := SQLParcelasReceberTempN2VLRVENC.Value +
                                              SQLParcelasReceberTempN2VLRJURO.Value +
                                              SQLParcelasReceberTempN2VLRMULTA.Value +
                                              SQLParcelasReceberTempN2VLRTXCOBR.Value -
                                              SQLParcelasReceberTempN2VLRDESC.Value ;
                                              
  if SQLParcelasReceberTempTIPODOC.AsString = 'AV' then
    SQLParcelasReceberTempTipoDocCalc.AsString := 'Parcela Avulsa'
  else
    SQLParcelasReceberTempTipoDocCalc.AsString := 'Parcela Cupom';

end;

function TFormTelaRecebimentoCrediario.TotalParc : Currency;
var Valor : double ;
    Pos   : integer ;
begin
  SQLParcelasReceberTemp.DisableControls ;
  SQLParcelasReceberTemp.First ;
  Pos := 1 ;
  while not SQLParcelasReceberTemp.EOF do
  begin
    Valor := Valor + SQLParcelasReceberTempN2VLRPAGAR.Value ;

    SQLParcelasReceberTemp.Edit ;
    SQLParcelasReceberTempIPOSICAO.Value := Pos ;
    SQLParcelasReceberTemp.Post ;

    SQLParcelasReceberTemp.Next ;
    Inc(Pos) ;
  end ;
  TotalParc := Valor ;
  SQLParcelasReceberTemp.EnableControls ;

end ;

procedure TFormTelaRecebimentoCrediario.PreparaEstadoRec(Estado : string) ;
begin
  if EstadoRecCred = InformandoCliente then
  begin
    LblInstrucoes.Caption := 'INFORME O NOME DO CLIENTE PARA PESQUISA' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCred = InformandoDocumento then
  begin
    LblInstrucoes.Caption := 'INFORME O NRO DO CONTRATO QUE DESEJA RECEBER OU NOME DO CLIENTE' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCred = InformandoCliente then
  begin
    LblInstrucoes.Caption := 'INFORME O NOME DO CLIENTE PARA PESQUISA' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCred = FinalizandoRecebimento then
  begin
    LblInstrucoes.Caption := 'TECLE [ENTER] PARA EFETUAR A(S) BAIXA(S) DA(S) PARCELA(S)' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCred = InformandoPosicao then
  begin
    SQLParcelasReceberTemp.Last ;
    EntradaDados.Text := SQLParcelasReceberTempIPOSICAO.asString ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME A POSIÇÃO DA PARCELA DESEJADA' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCred = AlterandoValorVencimento then
  begin
    EntradaDados.Text := FormatFloat('###0.00', SQLParcelasReceberTempN2VLRVENC.Value) ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME O VALOR PARCIAL QUE O CLIENTE ESTÁ PAGANDO' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCredAnt = AlterandoValorJuro then
  begin
    EntradaDados.Text := FormatFloat('###0.00', SQLParcelasReceberTempN2VLRJURO.Value) ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME O NOVO VALOR DO JURO' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCredAnt = AlterandoValorMulta then
  begin
    EntradaDados.Text := FormatFloat('###0.00', SQLParcelasReceberTempN2VLRMULTA.Value) ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME O NOVO VALOR DA MULTA' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCredAnt = AlterandoValorDesconto then
  begin
    EntradaDados.Text := FormatFloat('###0.00', SQLParcelasReceberTempN2VLRDESC.Value) ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME O NOVO VALOR DO DESCONTO' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoRecCred = InformandoNumerario then
  begin
    EntradaDados.Clear ;
    LblInstrucoes.Caption := 'INFORME O NUMERARIO' ;
    LblInstrucoes.Refresh ;
    if DM.SQLTerminalAtivo.FieldByName('TERMINUMERECCRED').AsString <> '' then
      EntradaDados.Text := DM.SQLTerminalAtivo.FieldByName('TERMINUMERECCRED').AsString ;
    exit ;
  end ;

  if EstadoRecCred = InformandoValorRecebido then
  begin
    EntradaDados.Clear ;
    EntradaDados.Text := FormatFloat('###0.00', TotalPagar.Value) ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME O VALOR RECEBIDO' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;
end ;

procedure TFormTelaRecebimentoCrediario.FormShow(Sender: TObject);
begin
  LblNUMERARIO.Caption := '' ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''RCCRD''') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.EOF then
  begin
    Informa('Não foi encontrada nenhuma Operação de Caixa configurada com a SIGLA padrão de Recebimento de Crediário');
    Close ;
    exit ;
  end ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''JURRC''') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.EOF then
  begin
    Informa('Não foi encontrada nenhuma Operação de Caixa configurada com a SIGLA padrão de Juros de Recebimento de Crediário');
    Close ;
    exit ;
  end ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''MULRC''') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.EOF then
  begin
    Informa('Não foi encontrada nenhuma Operação de Caixa configurada com a SIGLA padrão de Multa de Recebimento de Crediário');
    Close ;
    exit ;
  end ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''DESRC''') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.EOF then
  begin
    Informa('Não foi encontrada nenhuma Operação de Caixa configurada com a SIGLA padrão de Desconto de Recebimento de Crediário');
    Close ;
    exit ;
  end ;
end;

procedure TFormTelaRecebimentoCrediario.SQLParcelasReceberTempNewRecord(
  DataSet: TDataSet);
begin
  SQLParcelasReceberTempN2VLRJURO.Value     := 0 ;
  SQLParcelasReceberTempN2VLRMULTA.Value    := 0 ;
  SQLParcelasReceberTempN2VLRDESC.Value     := 0 ;
  SQLParcelasReceberTempINRODIASATRAS.Value := 0 ;
  SQLParcelasReceberTempN2VLRTXCOBR.Value   := 0 ;
end;

function TFormTelaRecebimentoCrediario.TemEntrada(Documento : string) : boolean ;
Var
  ValorEntrada : double ;
begin
  TemEntrada := False ;

  SQLlCupomNumerario.Close ;
  SQLlCupomNumerario.MacroByName('MFiltro').Value := 'CUPOA13ID = ''' + Documento +
                                                     ''' and (CPNMCAUTENT is null or CPNMCAUTENT = '''')' ;
  SQLlCupomNumerario.Open ;
  if not SQLlCupomNumerario.Eof then
  begin
    ValorEntrada := 0 ;
    while not SQLlCupomNumerario.Eof DO
    begin
      ValorEntrada := ValorEntrada + SQLlCupomNumerarioCPNMN2VLR.Value ;
      SQLlCupomNumerario.Next ;
    end ;

    if ValorEntrada > 0 then
    begin
      SQLParcelasReceberTemp.Append ;
      SQLParcelasReceberTempTERMICOD.Value    := TerminalAtual ;
      SQLParcelasReceberTempA13CUPOID.Value   := SQLlCupomNumerarioCUPOA13ID.AsString ;
      SQLParcelasReceberTempA13NRODOC.Value   := SQLlCupomNumerarioCUPOA13ID.AsString ;
      SQLParcelasReceberTempCLIEA13ID.Value   := SQLCupomCLIEA13ID.AsString ;
      SQLParcelasReceberTempNOMECLIENTE.Value := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + SQLCupomCLIEA13ID.AsString + '''') ;
      SQLParcelasReceberTempCTRCA13ID.Value   := 'Entrada' ;
      SQLParcelasReceberTempINROPARC.Value    := 0 ;
      SQLParcelasReceberTempDVENC.Value       := Date ;
      SQLParcelasReceberTempN2VLRVENC.Value   := ValorEntrada ;
      SQLParcelasReceberTempN2VLRJURO.Value   := 0 ;
      SQLParcelasReceberTempN2VLRMULTA.Value  := 0 ;
      SQLParcelasReceberTempN2VLRDESC.Value   := 0 ;
      SQLParcelasReceberTempN2VLRAMORT.Value  := ValorEntrada ;
      SQLParcelasReceberTemp.Post ;

      SQLParcelasReceberTemp.Close ;
      SQLParcelasReceberTemp.Open ;

      TemEntrada := true ;
    end ;
  end ;
end ;

procedure TFormTelaRecebimentoCrediario.FormActivate(Sender: TObject);
begin
  RxLabel1.Caption := 'Data de baixa: ' + DateToStr(DataBaixa) + '       Data de cálculo: ' + DateToStr(DataCalculo) ;
end;

procedure TFormTelaRecebimentoCrediario.ListBoxAvisosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    begin
      ListBoxAvisos.Visible := False;
      EntradaDados.SetFocus;
    end;
end;

procedure TFormTelaRecebimentoCrediario.ReportAutenticBeforePrint(
  Sender: TObject);
begin
  Empresa.Caption := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
end;

procedure TFormTelaRecebimentoCrediario.SQLParcelasReceberTempBeforeDelete(
  DataSet: TDataSet);
begin
  TotalPagar.Value := TotalPagar.Value - SQLParcelasReceberTempN2VLRPAGAR.Value;
  TotalPagar.Refresh;
end;
function TFormTelaRecebimentoCrediario.AutenticaDocumentoImpressoaNaoFiscal : Boolean;
var
  Sair : Boolean;
  Contrato : String;
begin
  try
    if AbrirPortaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual) then
    if ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,DM.SQLEmpresaEMPRA60NOMEFANT.AsString+chr(10),3,0,0,0,1) then
      begin
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,' DOCUMENTO NAO FISCAL'+chr(10),2,0,0,1,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'     AUTENTICACAO'+chr(10),2,0,0,1,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Cliente....: ' + SQLParcelasReceberTempCLIEA13ID.AsString+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,SQLParcelasReceberTempNOMECLIENTE.AsString + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Contrato...: ' + SQLParcelasReceberTempDoc_Parc_CalcField.AsString + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Vencimento.: ' + FormatDateTime('dd/mm/yyyy',SQLParcelasReceberTempDVENC.AsDateTime) + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Parcela..: R$ ' + FormatFloat('#,##0.00',SQLParcelasReceberTempN2VLRVENC.AsFloat) + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Juros....: R$ ' + FormatFloat('#,##0.00',SQLParcelasReceberTempN2VLRJURO.AsFloat) + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Multa....: R$ ' + FormatFloat('#,##0.00',SQLParcelasReceberTempN2VLRMULTA.AsFloat) + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Desconto.: R$ ' + FormatFloat('#,##0.00',SQLParcelasReceberTempN2VLRDESC.AsFloat) + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Recebido.: R$ ' + FormatFloat('#,##0.00',SQLParcelasReceberTempN2VLRPAGAR.AsFloat) + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Dt: ' + FormatDateTime('dd/mm/yyyy hh:nn',Now) +
                                                          ' Op: '+ Copy(UsuarioAtualNome,1,20) + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
      end;
{    if VerificaPapel_NAOFISCAL(ImpNaoFiscalAtual) then
    else
      begin
        Informa('Impressora sem Papel!');
      end;}
    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);

    Informa('Aguarde o Final da Impressão, Posicione o Papel na Impressora e Após Pressione ''OK'' para Autenticar!');
    Sleep(5000);
    Sair := False;
    while not Sair do
      begin
        if not InserirDocumento_NAOFISCAL(ImpNaoFiscalAtual) then
          begin
            if Pergunta('SIM','Documento não inserido, Deseja Tentar Novamente?') then
              Sair := False
            else
              Sair := True;
          end
        else
          Sair := True;
      end;
    Contrato := '';
    Contrato := IntToStr(StrToInt(Copy(SQLParcelasReceberTempA13CUPOID.AsString,1,3))) + '.' +
                IntToStr(StrToInt(Copy(SQLParcelasReceberTempA13CUPOID.AsString,4,3))) + '.' +
                IntToStr(StrToInt(Copy(SQLParcelasReceberTempA13CUPOID.AsString,7,7)));
    AutenticaDoc_NAOFISCAL(ImpNaoFiscalAtual,
                           'Aut:' + Contrato + '-' +
                           SQLParcelasReceberTempINROPARC.AsString + ' ' +
                           FormatFloat('#,##0.00',SQLParcelasReceberTempN2VLRPAGAR.AsFloat) + ' ' +
                           FormatDateTime('dd/mm/yy hh:nn',Now),5);
    FecharPortaNAOFISCAL(ImpNaoFiscalAtual);
    AutenticaDocumentoImpressoaNaoFiscal := True;
  except
    AutenticaDocumentoImpressoaNaoFiscal := False;
  end;
end;

procedure TFormTelaRecebimentoCrediario.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  DocAnt : string ;
begin
  case Key of
     VK_Escape: Close ;

     VK_F1:begin
             Application.CreateForm(TFormTelaTeclasAtalhoTelaRecebimetoCrediario, FormTelaTeclasAtalhoTelaRecebimetoCrediario) ;
             FormTelaTeclasAtalhoTelaRecebimetoCrediario.ShowModal ;
           end ;
     VK_F2:begin
           end ;
     VK_F3:begin
             if ListBoxAvisos.Visible then
               begin
                 ListBoxAvisos.Visible := False;
                 EntradaDados.SetFocus;
               end;

             if TotalPagar.Value <= 0 then
               begin
                 Informa('Nenhum Documento foi Informado. A Operação será Cancelada!');
                 EstadoRecCred := InformandoDocumento ;
                 PreparaEstadoRec(EstadoRecCred) ;
               end
             else
               begin
                 EstadoRecCred := InformandoNumerario ;
                 PreparaEstadoRec(EstadoRecCred) ;
               end;
           end ;
     VK_F4:begin
             EstadoRecCred := InformandoCliente ;
             PreparaEstadoRec(EstadoRecCred) ;
             exit ;
           end ;
     VK_F5:begin
           end ;
     VK_F6:begin
           end ;
     VK_F7:begin
           end ;
     VK_F8:begin
           end ;
     VK_F9:begin
           end ;
    VK_F10:begin
           end ;
    VK_F11:begin
             // Cadastro de Clientes
             CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'');
           end ;
    VK_F12:begin
           end ;
  end;
  if ssAlt in Shift then
    case Upcase(Char(Key)) of
      'J':begin //ALTERAR JUROS
            EstadoRecCred    := InformandoPosicao ;
            EstadoRecCredAnt := AlterandoValorJuro ;
            PreparaEstadoRec(EstadoRecCred) ;
          end ;
      'V':begin //Informar Parcela Avulsa
            if not ParcelaAvulsa then
              begin
                ParcelaAvulsa := True;
                LblInstrucoes.Caption := 'INFORME O ID DA PARCELA QUE DESEJA RECEBER  <Para voltar pressione ALT + V novamente>';
                LblInstrucoes.Refresh;
              end
            else
              begin
                ParcelaAvulsa := False;
                LblInstrucoes.Caption := 'INFORME O NRO DO DOCUMENTO QUE DESEJA RECEBER';
                LblInstrucoes.Refresh ;
              end;
            exit ;
          end ;
    end ;
  if ssCtrl in Shift then
    case Upcase(Char(Key)) of
      'A':begin //RECEBER CONTRATOS ANTIGOS
            DocAnt := InputBox('Receber Contratos Antigos', 'Informe Documento Antigo', '');
            DocAnt := SQLLocate('CUPOM', 'CUPOA20CODANT', 'CUPOA13ID', '''' + Copy(DocAnt, 1, 10) + '''') ;
            if DocAnt = '' then
            begin
              Informa('Documento não encontrado') ;
              exit ;
            end ;

            EntradaDados.Text := DocAnt ;
            EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
          end ;
      'J':begin //ALTERAR JUROS
            exit;
            // FOI MIDIFICADO PARA ALT + J POR UM PROBLEMA COM OS LEITORES DE COD. DE BARRAS
          end ;
      'M':begin //ALTERAR MULTA
            EstadoRecCred    := InformandoPosicao ;
            EstadoRecCredAnt := AlterandoValorMulta ;
            PreparaEstadoRec(EstadoRecCred) ;
          end ;
      'N':begin //ALTERAR NUMERARIO
            EstadoRecCred := InformandoNumerario ;
            PreparaEstadoRec(EstadoRecCred) ;
          end ;
      'D':begin //ALTERAR DESCONTO
            EstadoRecCred    := InformandoPosicao ;
            EstadoRecCredAnt := AlterandoValorDesconto ;
            PreparaEstadoRec(EstadoRecCred) ;
          end ;
      //ABRIR GAVETA
      'G':begin
            AbrirGaveta(ECFAtual, PortaECFAtual) ;
          end ;
      'P':begin //RECEBIENTO PARCIAL
            EstadoRecCred    := InformandoPosicao ;
            EstadoRecCredAnt := AlterandoValorVencimento ;
            PreparaEstadoRec(EstadoRecCred) ;
            exit ;
          end ;
      'S':begin
            Close ;
          end ;
      'T':begin
            try
              DataBaixa := StrToDate(InputBox('Alterar data de baixa da(s) parcela(s)', 'Informa a nova data de baixa', DateToStr(DataBaixa)));
              RxLabel1.Caption := 'Data de baixa: ' + DateToStr(DataBaixa) + '       Data de cálculo: ' + DateToStr(DataCalculo) ;
            except
              Informa('Data inválida') ;
            end ;
          end ;
      'U':begin
            try
              DataCalculo := StrToDate(InputBox('Alterar data de cálculo da(s) parcela(s)', 'Informa a nova data de baixa', DateToStr(DataCalculo)));
              RxLabel1.Caption := 'Data de baixa: ' + DateToStr(DataBaixa) + '       Data de cálculo: ' + DateToStr(DataCalculo) ;
            except
              Informa('Data inválida') ;
            end ;
          end ;
    end ;
end;

procedure TFormTelaRecebimentoCrediario.ppTitleBand1BeforePrint(
  Sender: TObject);
var total : Double;
begin
  total := TotalPagar.Value;
  lbEmpresa.Caption  := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
  lbCliente.Caption  := SQLParcelasReceberTempNOMECLIENTE.AsString;
  lbTotal.Caption    := lbTotal.Caption    + ' ' + FormatFloat('#,##0.00',total);
  lbOperador.Caption := lbOperador.Caption + ' ' + UsuarioAtualNome;
end;

function TFormTelaRecebimentoCrediario.VerificaCartaoCredito : Boolean;
begin
  //********************************************************************//
  //                TRANSAÇÃO COM CARTÕES DE CRÉDITO                    //
  //********************************************************************//
  if ((Trim(ProvedorCartao) = 'VISANET') or
      (Trim(ProvedorCartao) = 'REDECARD') or
      (Trim(ProvedorCartao) = 'AMEX') or
      (Trim(ProvedorCartao) = 'BANRISUL')or
      (Trim(ProvedorCartao) = 'TECBAN')) then
    begin
      if FormTelaItens.GPAtivo then
        begin
          Application.Minimize;
          if (Copy(TipoPadrao,1,3) = 'CHQ') then
            RetornoCartao := LiberaCartao('CHQ',NroCupomFiscal,TotalPagar.Value)
          else
            RetornoCartao := LiberaCartao('CRT',NroCupomFiscal,TotalPagar.Value);
          Result := RetornoCartao.TransacaoAutorizada;
          if not Result then
            begin
              Application.Restore;
              if RetornoCartao.RetornoOperador <> '' then
                Application.MessageBox(PChar(RetornoCartao.RetornoOperador + #13 + #13),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
            end;
        end
      else
        begin
          Application.MessageBox(PChar('O Gerenciador Padrão não está ativo!' + #13 +'Impossível estabelecer conexão para efetuar a venda!'),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
          DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
        end;
    end;
  //********************************************************************//
  //          TÉRMINO DA TRANSAÇÃO COM CARTÕES DE CRÉDITO               //
  //********************************************************************//
end;

Procedure TFormTelaRecebimentoCrediario.RDPrintAutentica ;
var Linha : integer;
begin
    Linha := 1;
    RDPrint.Abrir;
    RDPrint.Imp(Linha, 1,SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao)); Inc(Linha,2);
    RDPrint.Imp(Linha, 1,SQLParcelasReceberTempTERMICOD.AsString+' - Recibo de Pagamento'); Inc(Linha,2);
    RDPrint.Imp(Linha, 1,'Cliente..: '+ SQLParcelasReceberTempCLIEA13ID.AsString); Inc(Linha);
    RDPrint.Imp(Linha, 1,copy(SQLParcelasReceberTempNOMECLIENTE.AsString,1,30)); Inc(Linha);
    RDPrint.Imp(Linha, 1,'Contrato.: ' + SQLParcelasReceberTempA13CUPOID.AsString); Inc(Linha);
    RDPrint.Imp(Linha, 1,'Dt.Vencto: ' + SQLParcelasReceberTempDVENC.AsString); Inc(Linha);
    RDPrint.Imp(Linha, 1,'Pagto em : ' + FormatDateTime('dd/mm/yyyy hh:mm',Now)); Inc(Linha);
    RDPrint.Imp(Linha, 1,'V.Vencto : ');
    RDPrint.ImpVal(Linha,12,'##0.00',SQLParcelasReceberTempN2VLRVENC.Value,[]);
    RDPrint.Imp(Linha, 25,'V.Pagto : ');
    RDPrint.ImpVal(Linha,35,'##0.00',SQLParcelasReceberTempN2VLRPAGAR.Value,[]); Inc(Linha,5);
    RDPrint.Imp(Linha, 1,'...'); Inc(Linha);
    RDPrint.TamanhoQteLinhas := Linha+1;
    RDPrint.Fechar;
end;

procedure TFormTelaRecebimentoCrediario.EntradaDadosKeyPress(
  Sender: TObject; var Key: Char);
begin
{  if (UpperCase(key) >= #97) and (UpperCase(key) <= #122) or (UpperCase(key) >= #65) and (UpperCase(key) <= #90) then
    FormTelaRecebimentoCrediario.FormKeyDown(Sender, F4, [ssAlt]); }
end;

function TFormTelaRecebimentoCrediario.StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
begin
  if Posicao = 0 then // antes do texto (a esquerda)
  begin
    while Length(xStr) < Tamanho do
      Insert(Preenchecom,xStr,0);

  end else if posicao = 1 then // depois do texto (a direita)
  begin
    while Length(xStr) < Tamanho do
      Insert(Preenchecom,xStr,Length(xStr)+1);

  end;
  Result := xStr;
end;

procedure TFormTelaRecebimentoCrediario.BuscaParcelaMaisAntiga;
var xTextConta:String;
begin
  xTextConta := '';
  SQLPesquisa.Close;
  SQLPesquisa.MacroByName('MFiltro').AsString := ' CLIEA13ID = ''' + SQLContasReceberCLIEA13ID.AsString + ''' and (CTRCCSTATUS = ''A'' or CTRCCSTATUS = ''N'')' +
                                                 ' AND (CTRCN2VLR > CTRCN2TOTREC)';

  SQLPesquisa.Open;
  SQLPesquisa.First;
  while not SQLPesquisa.EOF do
    begin
      Saldo := SQLPesquisa.fieldByname('CTRCN2VLR').Value - SQLPesquisa.Fieldbyname('CTRCN2TOTREC').Value;
      if (Saldo > 0 ) and (SQLPesquisa.FieldByName('CTRCDVENC').AsDateTime <= SQLContasReceberCTRCDVENC.AsDateTime) and
      (SQLPesquisa.Fieldbyname('CTRCA13ID').AsString <> SQLContasReceber.Fieldbyname('CTRCA13ID').AsString)then
        begin
        xTextConta := xTextConta + #13#10 + 'Venc: '+SQLPesquisa.Fieldbyname('CTRCDVENC').AsString + '  R$: '+FormatFloat(',0.00',SQLPesquisa.Fieldbyname('CTRCN2VLR').Value);
        End;
      SQLPesquisa.Next;
    End;
  SQLPesquisa.Close;
  If xTextConta <> '' then
    ShowMessage('Existem contas mas antigas que a Selecionada!'+#13#10+xTextConta);
End;

procedure TFormTelaRecebimentoCrediario.BtnF3Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F3, [ssAlt]);
end;

procedure TFormTelaRecebimentoCrediario.BtnF1Click(Sender: TObject);
var Tecla : Word;
begin
  Tecla := VK_F1;
  EntradaDados.SetFocus;
  FormKeyDown(Sender, Tecla, [ssAlt]);
end;

procedure TFormTelaRecebimentoCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.ACBrPosPrinter.Device.Desativar;
  Action := CaFree;
end;

end.
