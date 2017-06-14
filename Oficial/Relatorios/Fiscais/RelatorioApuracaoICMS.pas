unit RelatorioApuracaoICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, ppBands,
  ppVar, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppViewr,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioApuracaoICMS = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    SQLEmpresaCab: TRxQuery;
    DSSQLEmpresaCab: TDataSource;
    ComboEmpresaCab: TRxDBLookupCombo;
    TblCredDeb_UfCFOP_Sint: TTable;
    TblCredDeb_UfCFOP_SintTipo: TStringField;
    TblCredDeb_UfCFOP_SintAnoMes: TStringField;
    TblCredDeb_UfCFOP_SintUF_CFOP: TStringField;
    TblCredDeb_UfCFOP_SintVlrContabil: TFloatField;
    TblCredDeb_UfCFOP_SintImpCredDeb: TFloatField;
    TblCredDeb_UfCFOP_SintBaseCalc: TFloatField;
    TblCredDeb_UfCFOP_SintIsentoNaoTrib: TFloatField;
    TblCredDeb_UfCFOP_SintOutras: TFloatField;
    SQLCupom: TRxQuery;
    PipeApurICMSCredEntrResSint: TppBDEPipeline;
    ReportApuracao: TppReport;
    ppTitleBand1: TppTitleBand;
    NomeEmpresa: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ReportCredDeb_UfCFOP_Sint: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText2: TppDBText;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ReportRegApuraMes: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    LabelTipo2: TppLabel;
    NomeEmpresa2: TppLabel;
    CGCEMpresa2: TppLabel;
    ppLabel4: TppLabel;
    Periodo2: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    RptCD_UfCFOP_Ana: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel33: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel34: TppLabel;
    ppDBText21: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel48: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    Periodo3: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc16: TppDBCalc;
    ppLabel49: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel31: TppLabel;
    ppDBText8: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel32: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    DSTblApurICMSCredEntrRes: TDataSource;
    SQLNotaCompra: TRxQuery;
    SQLNotaCompraNOCPA13ID: TStringField;
    SQLNotaCompraEMPRICOD: TIntegerField;
    SQLNotaCompraNOCPICOD: TIntegerField;
    SQLNotaCompraFORNICOD: TIntegerField;
    SQLNotaCompraNOCPA4ANO: TStringField;
    SQLNotaCompraNOCPA5SERIE: TStringField;
    SQLNotaCompraNOCPA30NRO: TStringField;
    SQLNotaCompraNOCPCSTATUS: TStringField;
    SQLNotaCompraPDCPA13ID: TStringField;
    SQLNotaCompraOPESICOD: TIntegerField;
    SQLNotaCompraNOCPDEMISSAO: TDateTimeField;
    SQLNotaCompraNOCPN3SOMAITENS: TBCDField;
    SQLNotaCompraNOCPN3TOTITENS: TBCDField;
    SQLNotaCompraNOCPN3TOTDESC: TBCDField;
    SQLNotaCompraNOCPN3VLRTOTNOTA: TBCDField;
    SQLNotaCompraNOCPN3VLRBASCALICM: TBCDField;
    SQLNotaCompraNOCPN3VLRICMS: TBCDField;
    SQLNotaCompraNOCPN3VLRBCICMSSUB: TBCDField;
    SQLNotaCompraNOCPN3VLRICMSSUB: TBCDField;
    SQLNotaCompraNOCPN3VLRFRETE: TBCDField;
    SQLNotaCompraNOCPN3VLRSEGURO: TBCDField;
    SQLNotaCompraNOCPN3VLROUTRADESP: TBCDField;
    SQLNotaCompraNOCPN3VLRIPI: TBCDField;
    SQLNotaCompraNOCPN3VLRDESC: TBCDField;
    SQLNotaCompraNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotaCompraCFOPA5COD: TStringField;
    TblApurICMSMensal: TTable;
    TblApurICMSMensalTipo: TStringField;
    TblApurICMSMensalAnoMes: TStringField;
    TblApurICMSMensalCodCFOP: TStringField;
    TblApurICMSMensalDescrCFOP: TStringField;
    TblApurICMSMensalVlrContabil: TFloatField;
    TblApurICMSMensalImpCredDeb: TFloatField;
    TblApurICMSMensalBaseCalc: TFloatField;
    TblApurICMSMensalIsentoNaoTrib: TFloatField;
    TblApurICMSMensalOutras: TFloatField;
    DSTblApurICMSMensal: TDataSource;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    PipeApurMes: TppBDEPipeline;
    SQLEmpresaAux: TRxQuery;
    TblCredDeb_UfCFOP_Ana: TTable;
    TblCredDeb_UfCFOP_AnaTipo: TStringField;
    TblCredDeb_UfCFOP_AnaAnoMes: TStringField;
    TblCredDeb_UfCFOP_AnaData: TDateField;
    TblCredDeb_UfCFOP_AnaUF_CFOP: TStringField;
    TblCredDeb_UfCFOP_AnaCFOP: TStringField;
    TblCredDeb_UfCFOP_AnaSerie: TStringField;
    TblCredDeb_UfCFOP_AnaOperacao: TStringField;
    TblCredDeb_UfCFOP_AnaNumNF_Cup: TStringField;
    TblCredDeb_UfCFOP_AnaVlrContabil: TFloatField;
    TblCredDeb_UfCFOP_AnaImpCredDeb: TFloatField;
    TblCredDeb_UfCFOP_AnaBaseCalc: TFloatField;
    TblCredDeb_UfCFOP_AnaIsentoNaoTrib: TFloatField;
    TblCredDeb_UfCFOP_AnaOutras: TFloatField;
    DSTblCredDeb_UfCFOP_Ana: TDataSource;
    PipeCredDeb_UfCFOP_Ana: TppBDEPipeline;
    SQLIcms: TRxQuery;
    SQLIcmsICMSICOD: TIntegerField;
    SQLIcmsICMSN2ALIQUOTA: TBCDField;
    SQLIcmsICMSN2PERCSUBSTSAI: TBCDField;
    SQLIcmsICMSN2PERCSUBSTENT: TBCDField;
    SQLIcmsICMSN2PERCREDUCAO: TBCDField;
    SQLIcmsICMSICODSITTRIB: TIntegerField;
    SQLIcmsICMSA60DESCR: TStringField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLEmpresaAuxEMPRICOD: TIntegerField;
    SQLEmpresaAuxEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaAuxEMPRA60NOMEFANT: TStringField;
    SQLEmpresaAuxEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaAuxEMPRA20FONE: TStringField;
    SQLEmpresaAuxEMPRA20FAX: TStringField;
    SQLEmpresaAuxEMPRA60END: TStringField;
    SQLEmpresaAuxEMPRA60BAI: TStringField;
    SQLEmpresaAuxEMPRA60CID: TStringField;
    SQLEmpresaAuxEMPRA2UF: TStringField;
    SQLEmpresaAuxEMPRA8CEP: TStringField;
    SQLEmpresaAuxEMPRCFISJURID: TStringField;
    SQLEmpresaAuxEMPRA14CGC: TStringField;
    SQLEmpresaAuxEMPRA20IE: TStringField;
    SQLEmpresaAuxEMPRA11CPF: TStringField;
    SQLEmpresaAuxEMPRA10RG: TStringField;
    SQLEmpresaAuxEMPRA60EMAIL: TStringField;
    SQLEmpresaAuxEMPRA60URL: TStringField;
    SQLEmpresaAuxPENDENTE: TStringField;
    SQLEmpresaAuxREGISTRO: TDateTimeField;
    SQLEmpresaAuxEMPRA100INFSPC: TStringField;
    SQLEmpresaAuxEMPRA15CODEAN: TStringField;
    SQLEmpresaAuxEMPRBLOGOTIPO: TBlobField;
    GroupBox3: TGroupBox;
    MemoEventos: TMemo;
    SQLIcmsICMSN2REDBASEICMS: TBCDField;
    SQLNotaCompraOPESCCALCICMS: TStringField;
    SQLNotaCompraNOCPDCANCELAMENTO: TDateTimeField;
    SQLNotaCompraPLPGICOD: TIntegerField;
    SQLNotaCompraPLCTA15COD: TStringField;
    SQLNotaCompraNOCPN3PERCICMSFRET: TBCDField;
    SQLNotaCompraNOCPA254OBS: TMemoField;
    SQLNotaCompraTRANICOD: TIntegerField;
    SQLNotaCompraNOCPA5TIPOFRETE: TStringField;
    SQLNotaCompraPENDENTE: TStringField;
    SQLNotaCompraREGISTRO: TDateTimeField;
    SQLNotaCompraEMPRICODDEST: TIntegerField;
    SQLNotaCompraCLIEA13ID: TStringField;
    SQLNotaCompraUSUAA60LOGIN: TStringField;
    SQLNotaCompraCLIEA13IDDESTINO: TStringField;
    SQLNotaCompraFUNCA13ID: TStringField;
    SQLNotaCompraPLCTA15CODCRED: TStringField;
    SQLNotaCompraPLCTA15CODDEB: TStringField;
    TblApurICMSMensalVlrIPI: TFloatField;
    ppLine1: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDBText27: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    LabelTipo: TppLabel;
    ppDBText28: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel26: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    PeriodoRel1: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueSERIA5COD: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaoEstoquePENDENTE: TStringField;
    SQLOperacaoEstoqueREGISTRO: TDateTimeField;
    SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaoEstoquePDVDA13ID: TStringField;
    SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField;
    SQLOperacaoEstoquePLCTA15CODCRED: TStringField;
    SQLOperacaoEstoquePLCTA15CODDEB: TStringField;
    SQLOperacaoEstoqueACUMICOD: TIntegerField;
    SQLCFOPCFOPCDESTVLRNTRIB: TStringField;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomCUPON2TOTITENS: TBCDField;
    SQLCupomCUPON2DESC: TBCDField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCFOPA5COD: TStringField;
    SQLCupomTIPODOC: TStringField;
    SQLCupomOPESICOD: TIntegerField;
    SQLCupomOPESCCALCICMS: TStringField;
    SQLCupomFORNICOD: TIntegerField;
    SQLCupomEMPRICODDEST: TIntegerField;
    SQLCupomFRETE: TBCDField;
    SQLCupomICMSFRETE: TBCDField;
    SQLCupomCUPON2BASEICMS: TBCDField;
    SQLCupomCUPON2VLRICMS: TBCDField;
    SQLCupomVLRIPI: TBCDField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure Calcular(Dt1, Dt2 : TDateTime; EmpresaCab : string) ;
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure TblCredDeb_UfCFOP_SintNewRecord(DataSet: TDataSet);
    procedure TblApurICMSMensalNewRecord(DataSet: TDataSet);
    procedure TblCredDeb_UfCFOP_AnaNewRecord(DataSet: TDataSet);
    procedure ReportApuracaoPreviewFormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioApuracaoICMS: TFormRelatorioApuracaoICMS;

implementation

uses {DataModuloApuracaoICMS, }UnitLibrary, WaitWindow;

{$R *.dfm}

procedure TFormRelatorioApuracaoICMS.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  if ComboEmpresaCab.Value = '' then
    begin
      ShowMessage('Não foi informado a Empresa que sairá no cabeçalho do relatório!');
      ComboEmpresaCab.SetFocus;
      exit;
    end;
  Calcular(De.Date, Ate.Date, ComboEmpresaCab.Value) ;
end;

procedure TFormRelatorioApuracaoICMS.Calcular(Dt1, Dt2 : TDateTime; EmpresaCab : string) ;
Const
  Descr_Adic1 : array[10..21] of string = ('CREDITO DO IMPOSTO',
                                           'Saldo Credor Periodo Anterior Corrigido',
                                           'Creditos por Entrada',
                                           'Creditos Simbolicos',
                                           'Creditos por Estimulos Exportacao',
                                           'Creditos por Pagamentos Antecipados',
                                           'Creditos por Importacao ou Arrematacao',
                                           'Creditos por Pagamentos Responsabilidade',
                                           'Creditos por Compensacao',
                                           'Creditos Transferencias de Outros Estabelecimentos',
                                           'Creditos Cedidos de Terceiros',
                                           'Estorno de Debitos') ;
  Descr_Adic2 : array[18..26] of string = ('DEBITO DO IMPOSTO',
                                           'Creditos Transferidos p/Outros Estabelecimentos',
                                           'Creditos Cedidos de Terceiros',
                                           'Estorno de Creditos',
                                           'Debitos por Saidas',
                                           'Debitos por Importacao ou Arrematacao',
                                           'Debitos por Responsabilidade',
                                           'Debitos por Responsabilidade nao Comp.',
                                           'Debitos por Compensacao') ;

var
  ValorBaseCalcSom,
  ValorBaseCalcUnit,
  ValorTotal,
  ValorContabil,
  ValorImposto,
  ValorIsentoNTrib,
  ValorOutras,
  Aliquota,
  ValorProduto,
  VlrIPI,
  ValorBaseTemp    : currency ;
  UfCFOP,CFOP      : string ;
  i                : integer;

begin
  MakeWindowMessage('Apurando ICMS');
  try
  //----------------------------------------------------------------------------\\
    if TblCredDeb_UfCFOP_Sint.Active then TblCredDeb_UfCFOP_Sint.Close;
    if TblCredDeb_UfCFOP_Sint.Exists then
      TblCredDeb_UfCFOP_Sint.DeleteTable;
    TblCredDeb_UfCFOP_Sint.CreateTable;
    TblCredDeb_UfCFOP_Sint.Open;
  //----------------------------------------------------------------------------\\
    if TblApurICMSMensal.Active then TblApurICMSMensal.Close;
    if TblApurICMSMensal.Exists then
      TblApurICMSMensal.DeleteTable;
    TblApurICMSMensal.CreateTable;
    TblApurICMSMensal.Open;
  //----------------------------------------------------------------------------\\
    if TblCredDeb_UfCFOP_Ana.Active then TblCredDeb_UfCFOP_Ana.Close;
    if TblCredDeb_UfCFOP_Ana.Exists then
      TblCredDeb_UfCFOP_Ana.DeleteTable;
    TblCredDeb_UfCFOP_Ana.CreateTable;
    TblCredDeb_UfCFOP_Ana.Open;
  //----------------------------------------------------------------------------\\
    SQLEmpresaAux.Close ;
    SQLEmpresaAux.MacroByName('MFiltro').Value := 'EMPRICOD = ' + EmpresaCab ;
    SQLEmpresaAux.Open ;
  //----------------------------------------------------------------------------\\
    //LANCAR CFOP DE ENTRADAS
    SQLCFOP.Open ;
    while not SQLCFOP.Eof do
      begin
        if (SQLCFOPCFOPA5COD.AsString <> '') and
           ((Copy(Trim(SQLCFOPCFOPA5COD.AsString),1,1) = '1') or
           ( Copy(Trim(SQLCFOPCFOPA5COD.AsString),1,1) = '2')) then
          begin
            TblApurICMSMensal.Append ;
            TblApurICMSMensalTipo.Value      := 'CRED_ENTR' ;
            TblApurICMSMensalAnoMes.Value    := FormatDateTime('yymm', Dt1) ;
            TblApurICMSMensalCodCFOP.Value   := SQLCFOPCFOPA5COD.Value ;
            TblApurICMSMensalDescrCFOP.Value := SQLCFOPCFOPA60DESCR.Value ;
            TblApurICMSMensal.Post ;
          end ;
        SQLCFOP.Next ;
      end ;
    //RODAPE CREDITOS
    TblApurICMSMensal.Append ;
    TblApurICMSMensalTipo.Value             := 'CRED_ENTR' ;
    TblApurICMSMensalAnoMes.Value           := 'TOTALCRED' ;
    TblApurICMSMensalCodCFOP.Value          := '' ;
    TblApurICMSMensalDescrCFOP.Value        := 'Totais' ;
    TblApurICMSMensal.Post ;
    for i := 8 to 21 do
      begin
        if i < 11 then
          begin
            TblApurICMSMensal.Append ;
            TblApurICMSMensalTipo.Value             := 'CRED_ENTR' ;
            TblApurICMSMensalAnoMes.Value           := '' ;
            TblApurICMSMensalCodCFOP.Value          := '' ;
            if i = 10 then
              TblApurICMSMensalDescrCFOP.Value := Descr_Adic1[i]
            else
              TblApurICMSMensalDescrCFOP.Value := '' ;
            TblApurICMSMensalVlrContabil.AsString   := '' ;
            TblApurICMSMensalImpCredDeb.AsString    := '' ;
            TblApurICMSMensalBaseCalc.AsString      := '' ;
            TblApurICMSMensalIsentoNaoTrib.AsString := '' ;
            TblApurICMSMensalOutras.AsString        := '' ;
            TblApurICMSMensal.Post ;
          end ;

        if (i >= 11) and (i <= 21) then
          begin
            TblApurICMSMensal.Append ;
            TblApurICMSMensalTipo.Value      := 'CRED_ENTR' ;
            TblApurICMSMensalAnoMes.Value    := FormatDateTime('yymm', Dt1) ;
            if i > 10 then
              TblApurICMSMensalCodCFOP.Value := IntToStr(i) ;
            TblApurICMSMensalDescrCFOP.Value := Descr_Adic1[i] ;
            TblApurICMSMensalVlrContabil.AsString   := '' ;
            TblApurICMSMensalImpCredDeb.AsString    := '' ;
            TblApurICMSMensalBaseCalc.Value         := 0 ;
            TblApurICMSMensalIsentoNaoTrib.AsString := '' ;
            TblApurICMSMensalOutras.AsString        := '' ;
            TblApurICMSMensal.Post ;
          end ;
      end ;
    //LANCAR CFOP DE SAIDAS
    SQLCFOP.First ;
    while not SQLCFOP.Eof do
      begin
        if (SQLCFOPCFOPA5COD.AsString <> '') and
           ((Copy(Trim(SQLCFOPCFOPA5COD.AsString),1,1) = '5') or
           ( Copy(Trim(SQLCFOPCFOPA5COD.AsString),1,1) = '6')) then
          begin
            TblApurICMSMensal.Append ;
            TblApurICMSMensalTipo.Value      := 'DEB_SAI' ;
            TblApurICMSMensalAnoMes.Value    := FormatDateTime('yymm', Dt1);
            TblApurICMSMensalCodCFOP.Value   := SQLCFOPCFOPA5COD.Value;
            TblApurICMSMensalDescrCFOP.Value := SQLCFOPCFOPA60DESCR.Value;
            TblApurICMSMensal.Post ;
          end ;
        SQLCFOP.Next ;
      end ;
    //RODAPE DEBITOS
    TblApurICMSMensal.Append ;
    TblApurICMSMensalTipo.Value             := 'DEB_SAI' ;
    TblApurICMSMensalAnoMes.Value           := 'TOTALDEB' ;
    TblApurICMSMensalCodCFOP.Value          := '' ;
    TblApurICMSMensalDescrCFOP.Value        := 'Totais' ;
    TblApurICMSMensal.Post ;
    for i := 16 to 26 do
      begin
        if i <= 18 then
          begin
            TblApurICMSMensal.Append ;
            TblApurICMSMensalTipo.Value             := 'DEB_SAI' ;
            TblApurICMSMensalAnoMes.Value           := '' ;
            TblApurICMSMensalCodCFOP.Value          := '' ;
            if i = 18 then
              TblApurICMSMensalDescrCFOP.Value := Descr_Adic2[i]
            else
              TblApurICMSMensalDescrCFOP.Value := '' ;
            TblApurICMSMensalVlrContabil.AsString   := '' ;
            TblApurICMSMensalImpCredDeb.AsString    := '' ;
            TblApurICMSMensalBaseCalc.AsString      := '' ;
            TblApurICMSMensalIsentoNaoTrib.AsString := '' ;
            TblApurICMSMensalOutras.AsString        := '' ;
            TblApurICMSMensal.Post ;
          end ;

        if (i >= 19) and (i <= 26) then
          begin
            TblApurICMSMensal.Append ;
            TblApurICMSMensalTipo.Value             := 'DEB_SAI' ;
            TblApurICMSMensalAnoMes.Value           := FormatDateTime('yymm', Dt1) ;
            TblApurICMSMensalCodCFOP.Value          := IntToStr(i) ;
            TblApurICMSMensalDescrCFOP.Value        := Descr_Adic2[i] ;
            TblApurICMSMensalVlrContabil.AsString   := '' ;
            TblApurICMSMensalImpCredDeb.AsString    := '' ;
            TblApurICMSMensalBaseCalc.Value         := 0 ;
            TblApurICMSMensalIsentoNaoTrib.AsString := '' ;
            TblApurICMSMensalOutras.AsString        := '' ;
            TblApurICMSMensal.Post ;
          end ;
      end ;
     //----------------------------------------------------------------------------\\
    //************************************ VERIFICAR ENTRADAS ************************************
    SQLNotaCompra.Close ;
    SQLNotaCompra.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA', '');
    SQLNotaCompra.MacrobyName('MData').Value := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy 00:00:00', Dt1) + '" and ' +
                                                'NOTACOMPRA.NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy 23:59:00', Dt2) + '"' ;

    SQLNotaCompra.Open ;
    SQLNotaCompra.First;
    Screen.Cursor := -11 ;
    while not SQLNotaCompra.EOF do
      begin
        ValorBaseCalcSom := 0;
        ValorImposto     := 0;
        ValorIsentoNTrib := 0;
        ValorContabil    := 0;
        ValorTotal       := 0;
        VlrIPI           := 0;

        ValorTotal        := SQLNotaCompraNOCPN3VLRTOTNOTA.AsFloat;

        ValorContabil     := ValorContabil + ValorTotal;

        ValorBaseCalcUnit := SQLNotaCompraNOCPN3VLRBASCALICM.AsFloat;

        if SQLNotaCompraOPESCCALCICMS.AsString = 'S' then
          ValorImposto    := ValorImposto + SQLNotaCompraNOCPN3VLRICMS.AsFloat;

        ValorBaseTemp     := ValorBaseCalcUnit + SQLNotaCompraNOCPN3VLRIPI.AsFloat;
        if ValorBaseTemp < ValorTotal then
          ValorIsentoNTrib := ValorIsentoNTrib + (ValorTotal - ValorBaseCalcUnit);

        if SQLNotaCompraNOCPN3VLRBCICMSSUB.AsFloat > 0 then
          ValorIsentoNTrib := SQLNotaCompraNOCPN3TOTITENS.AsFloat;

        ValorBaseCalcSom   := ValorBaseCalcSom  + ValorBaseCalcUnit;

        if SQLNotaCompraNOCPN3VLRIPI.AsFloat > 0 then
          VlrIPI := VlrIPI + SQLNotaCompraNOCPN3VLRIPI.AsFloat;

        if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
          SQLOperacaoEstoque.Locate('OPESICOD',SQLNotaCompraOPESICOD.AsString,[]);

        case SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString[1] of
          'C' : UfCFOP := Trim(SQLLocate('CLIENTE'   , 'CLIEA13ID', 'CLIEA2UFRES', '"' + SQLNotaCompraCLIEA13ID.AsString + '"') + '-' + SQLNotaCompraCFOPA5COD.Value);
          'F' : UfCFOP := Trim(SQLLocate('FORNECEDOR', 'FORNICOD' , 'FORNA2UF'   , SQLNotaCompraFORNICOD.AsString)+ '-' + SQLNotaCompraCFOPA5COD.Value);
          'E' : UfCFOP := Trim(SQLLocate('EMPRESA'   , 'EMPRICOD' , 'EMPRA2UF'   , SQLNotaCompraEMPRICOD.AsString)+ '-' + SQLNotaCompraCFOPA5COD.Value);
        end;

        //GRAVAR VALORES SINTETICOS
        if not TblCredDeb_UfCFOP_Sint.Locate('Tipo;UF_CFOP', VarArrayOf(['CRED_ENTR', UfCFOP]), []) then
          begin
            TblCredDeb_UfCFOP_Sint.Append;
            TblCredDeb_UfCFOP_SintTipo.Value          := 'CRED_ENTR';
            TblCredDeb_UfCFOP_SintAnoMes.Value        := FormatDateTime('yymm', SQLNotaCompraNOCPDRECEBIMENTO.Value);
            TblCredDeb_UfCFOP_SintUF_CFOP.Value       := UfCFOP;
            TblCredDeb_UfCFOP_SintVlrContabil.Value   := ValorContabil;
            TblCredDeb_UfCFOP_SintImpCredDeb.Value    := ValorImposto;
            if ValorImposto > 0 then
              TblCredDeb_UfCFOP_SintBaseCalc.Value    := ValorBaseCalcSom
            else
              TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value := ValorIsentoNTrib;
            TblCredDeb_UfCFOP_SintOutras.Value        := 0;
            TblCredDeb_UfCFOP_Sint.Post;
          end
        else
          begin
            TblCredDeb_UfCFOP_Sint.Edit;
            TblCredDeb_UfCFOP_SintVlrContabil.Value     := TblCredDeb_UfCFOP_SintVlrContabil.Value +
                                                           ValorContabil;
            TblCredDeb_UfCFOP_SintImpCredDeb.Value      := TblCredDeb_UfCFOP_SintImpCredDeb.Value +
                                                           ValorImposto;
            if ValorImposto > 0 then
              TblCredDeb_UfCFOP_SintBaseCalc.Value      := TblCredDeb_UfCFOP_SintBaseCalc.Value + ValorBaseCalcSom
            else
              TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value := TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value + ValorIsentoNTrib;
            TblCredDeb_UfCFOP_Sint.Post;
          end;
        //GRAVAR VALORES ANALÍTICOS
        TblCredDeb_UfCFOP_Ana.Append ;
        TblCredDeb_UfCFOP_AnaTipo.Value        := 'CRED_ENTR' ;
        TblCredDeb_UfCFOP_AnaAnoMes.Value      := FormatDateTime('yymm', SQLNotaCompraNOCPDRECEBIMENTO.Value) ;
        TblCredDeb_UfCFOP_AnaData.Value        := SQLNotaCompraNOCPDRECEBIMENTO.Value ;
        TblCredDeb_UfCFOP_AnaCFOP.Value        := SQLNotaCompraCFOPA5COD.Value ;
        TblCredDeb_UfCFOP_AnaSerie.Value       := SQLNotaCompraNOCPA5SERIE.Value ;
        TblCredDeb_UfCFOP_AnaOperacao.Value    := 'CREDITO ICMS' ;
        TblCredDeb_UfCFOP_AnaUF_CFOP.Value     := UfCFOP ;
        TblCredDeb_UfCFOP_AnaNumNF_Cup.Value   := SQLNotaCompraNOCPA30NRO.Value ;
        TblCredDeb_UfCFOP_AnaVlrContabil.Value := ValorContabil ;
        TblCredDeb_UfCFOP_AnaImpCredDeb.Value  := ValorImposto ;
        if ValorImposto > 0 then
          TblCredDeb_UfCFOP_AnaBaseCalc.Value := ValorBaseCalcSom
        else
          TblCredDeb_UfCFOP_AnaIsentoNaoTrib.Value := ValorIsentoNTrib ;
        TblCredDeb_UfCFOP_AnaOutras.Value          := 0 ;
        TblCredDeb_UfCFOP_Ana.Post ;
        //----------------------------------------------------------------------------\\

        if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
          SQLOperacaoEstoque.Locate('OPESICOD',SQLNotaCompraOPESICOD.AsString,[]);

        case SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString[1] of
          'C' : UfCFOP := Trim(SQLLocate('CLIENTE'   , 'CLIEA13ID', 'CLIEA2UFRES', '"' + SQLNotaCompraCLIEA13ID.AsString + '"'));
          'F' : UfCFOP := Trim(SQLLocate('FORNECEDOR', 'FORNICOD' , 'FORNA2UF'   , SQLNotaCompraFORNICOD.AsString));
          'E' : UfCFOP := Trim(SQLLocate('EMPRESA'   , 'EMPRICOD' , 'EMPRA2UF'   , SQLNotaCompraEMPRICOD.AsString));
        end;

        if UfCFOP <> SQLEmpresaAuxEMPRA2UF.AsString then
          CFOP := Trim(SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',SQLNotaCompraOPESICOD.AsString))
        else
          CFOP := Trim(SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLNotaCompraOPESICOD.AsString));

        SQLCFOP.Locate('CFOPA5COD',CFOP,[]);
        if TblApurICMSMensal.Locate('CodCFOP', CFOP, []) then
          begin
            TblApurICMSMensal.Edit ;
            TblApurICMSMensalVlrContabil.Value   := TblApurICMSMensalVlrContabil.Value + ValorContabil ;

            TblApurICMSMensalImpCredDeb.Value    := TblApurICMSMensalImpCredDeb.Value + ValorImposto ;

            if ValorImposto > 0 then
              TblApurICMSMensalBaseCalc.Value    := TblApurICMSMensalBaseCalc.Value + ValorBaseCalcSom
            else
              if SQLCFOPCFOPCDESTVLRNTRIB.AsString = 'I' then
                TblApurICMSMensalIsentoNaoTrib.Value := TblApurICMSMensalIsentoNaoTrib.Value + ValorBaseCalcSom
              else
                TblApurICMSMensalOutras.Value        := TblApurICMSMensalOutras.Value + ValorBaseCalcSom;

            if ValorIsentoNTrib > 0 then
              if SQLCFOPCFOPCDESTVLRNTRIB.AsString = 'I' then
                TblApurICMSMensalIsentoNaoTrib.Value := TblApurICMSMensalIsentoNaoTrib.Value + ValorIsentoNTrib
              else
                TblApurICMSMensalOutras.Value        := TblApurICMSMensalOutras.Value + ValorIsentoNTrib;

            if VlrIPI > 0 then
              TblApurICMSMensalVlrIPI.Value      := TblApurICMSMensalVlrIPI.Value + VlrIPI;

            TblApurICMSMensal.Post;
          end;
        SQLNotaCompra.Next;
      end;

    Screen.Cursor := 0 ;
   //************************************ VERIFICAR VENDAS DE CUPOM ************************************

   ///Retirado Cupom da Pesquisa pedido de Bratch e Aprovado por Jaijme 13/01/2005 Fabiano.

    SQLCupom.Close ;
    SQLCupom.MacrobyName('MEmpresa1').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '');
    SQLCupom.MacrobyName('MData1').Value    := 'NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', Dt1) + '" and ' +
                                               'NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Dt2) + '"';

    SQLCupom.Open ;
    Screen.Cursor := -11 ;
    SQLCupom.First;
    while not SQLCupom.EOF do
      begin
        ValorBaseCalcSom  := 0;
        ValorImposto      := 0;
        ValorIsentoNTrib  := 0;
        ValorContabil     := 0;
        ValorBaseCalcUnit := 0;
        ValorProduto      := 0;
        VlrIPI            := 0;

        ValorProduto      := (SQLCupomCUPON2TOTITENS.AsFloat);

        ValorContabil     := (ValorContabil + ValorProduto + SQLCupomVLRIPI.AsFloat + SQLCupomFRETE.AsFloat);

        ValorBaseCalcUnit  :=  SQLCupomCUPON2BASEICMS.AsFloat;

        if SQLCupomOPESCCALCICMS.AsString = 'S' then
          ValorImposto     := ValorImposto + SQLCupomCUPON2VLRICMS.AsFloat;

        if (ValorBaseCalcUnit < ValorProduto) then
          ValorIsentoNTrib := ValorIsentoNTrib + (ValorProduto - ValorBaseCalcUnit);

        ValorBaseCalcSom   := ValorBaseCalcSom + ValorBaseCalcUnit;

        if SQLCupomVLRIPI.AsFloat > 0 then
          VlrIPI := VlrIPI + SQLCupomVLRIPI.AsFloat;

        if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
        SQLOperacaoEstoque.Locate('OPESICOD',SQLCupomOPESICOD.AsString,[]);

        case SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString[1] of
          'C' : UfCFOP := Trim(SQLLocate('CLIENTE'   , 'CLIEA13ID', 'CLIEA2UFRES', '"' + SQLCupomCLIEA13ID.AsString + '"') + '-' + SQLCupomCFOPA5COD.Value);
          'F' : UfCFOP := Trim(SQLLocate('FORNECEDOR', 'FORNICOD' , 'FORNA2UF'   , SQLCupomFORNICOD.AsString)+ '-' + SQLCupomCFOPA5COD.Value);
          'E' : UfCFOP := Trim(SQLLocate('EMPRESA'   , 'EMPRICOD' , 'EMPRA2UF'   , SQLCupomEMPRICODDEST.AsString)+ '-' + SQLCupomCFOPA5COD.Value);
        end;

        //GRAVAR VALORES SINTÉTICOS
        if not TblCredDeb_UfCFOP_Sint.Locate('Tipo;UF_CFOP', VarArrayOf(['DEB_SAI', UfCFOP]), []) then
          begin
            TblCredDeb_UfCFOP_Sint.Append;
            TblCredDeb_UfCFOP_SintTipo.Value          := 'DEB_SAI';
            TblCredDeb_UfCFOP_SintAnoMes.Value        := FormatDateTime('yymm', SQLCupomCUPODEMIS.Value) ;
            TblCredDeb_UfCFOP_SintUF_CFOP.Value       := UfCFOP ;
            TblCredDeb_UfCFOP_SintVlrContabil.AsFloat   := ValorContabil ;
            TblCredDeb_UfCFOP_SintImpCredDeb.AsFloat    := ValorImposto ;
            TblCredDeb_UfCFOP_SintBaseCalc.AsFloat      := ValorBaseCalcSom ;
            TblCredDeb_UfCFOP_SintIsentoNaoTrib.AsFloat := ValorIsentoNTrib ;
            TblCredDeb_UfCFOP_SintOutras.AsFloat        := 0 ;
            TblCredDeb_UfCFOP_Sint.Post ;
          end
        else
          begin
            TblCredDeb_UfCFOP_Sint.Edit ;
            TblCredDeb_UfCFOP_SintVlrContabil.AsFloat   := TblCredDeb_UfCFOP_SintVlrContabil.AsFloat + ValorContabil ;
            TblCredDeb_UfCFOP_SintImpCredDeb.AsFloat    := TblCredDeb_UfCFOP_SintImpCredDeb.AsFloat + ValorImposto ;
            TblCredDeb_UfCFOP_SintBaseCalc.AsFloat      := TblCredDeb_UfCFOP_SintBaseCalc.AsFloat + ValorBaseCalcSom ;
            TblCredDeb_UfCFOP_SintIsentoNaoTrib.AsFloat := TblCredDeb_UfCFOP_SintIsentoNaoTrib.AsFloat + ValorIsentoNTrib ;
            TblCredDeb_UfCFOP_Sint.Post ;
          end ;
        //GRAVAR VALORES ANALÍTICOS
        TblCredDeb_UfCFOP_Ana.Append ;
        TblCredDeb_UfCFOP_AnaTipo.Value          := 'DEB_SAI' ;
        TblCredDeb_UfCFOP_AnaAnoMes.Value        := FormatDateTime('yymm', SQLCupomCUPODEMIS.Value) ;
        TblCredDeb_UfCFOP_AnaData.Value          := SQLCupomCUPODEMIS.Value ;
        TblCredDeb_UfCFOP_AnaUF_CFOP.Value       := UfCFOP ;
        TblCredDeb_UfCFOP_AnaCFOP.Value          := SQLCupomCFOPA5COD.Value ;
        TblCredDeb_UfCFOP_AnaSerie.Value         := 'U' ;
        TblCredDeb_UfCFOP_AnaOperacao.Value      := 'DEBITO ICMS' ;
        TblCredDeb_UfCFOP_AnaNumNF_Cup.Value     := Copy(SQLCupomCUPOA13ID.Value,8,6) ;
        TblCredDeb_UfCFOP_AnaVlrContabil.Value   := ValorContabil ;
        TblCredDeb_UfCFOP_AnaImpCredDeb.Value    := ValorImposto ;
        if ValorImposto > 0 then
          TblCredDeb_UfCFOP_AnaBaseCalc.Value    := ValorBaseCalcSom ;
        TblCredDeb_UfCFOP_AnaIsentoNaoTrib.Value := ValorIsentoNTrib ;
        TblCredDeb_UfCFOP_AnaOutras.Value        := 0;
        TblCredDeb_UfCFOP_Ana.Post;
  //----------------------------------------------------------------------------\\
        if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
        SQLOperacaoEstoque.Locate('OPESICOD',SQLCupomOPESICOD.AsString,[]);
        case SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString[1] of
          'C' : UfCFOP := Trim(SQLLocate('CLIENTE'   , 'CLIEA13ID', 'CLIEA2UFRES', '"' + SQLCupomCLIEA13ID.AsString + '"'));
          'F' : UfCFOP := Trim(SQLLocate('FORNECEDOR', 'FORNICOD' , 'FORNA2UF'   , SQLCupomFORNICOD.AsString));
          'E' : UfCFOP := Trim(SQLLocate('EMPRESA'   , 'EMPRICOD' , 'EMPRA2UF'   , SQLCupomEMPRICODDEST.AsString));
        end;

        if (UfCFOP <> SQLEmpresaAuxEMPRA2UF.AsString) and (UfCFOP <> '') then
          CFOP := Trim(SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF', SQLCupomOPESICOD.AsString))
        else
          CFOP := Trim(SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLCupomOPESICOD.AsString));

        SQLCFOP.Locate('CFOPA5COD',CFOP,[]);

        if TblApurICMSMensal.Locate('CodCFOP', CFOP, []) then
          begin
            TblApurICMSMensal.Edit;
            TblApurICMSMensalVlrContabil.Value   := TblApurICMSMensalVlrContabil.Value +
                                                    ValorContabil;

            TblApurICMSMensalImpCredDeb.Value    := TblApurICMSMensalImpCredDeb.Value +
                                                    ValorImposto;

            if ValorImposto > 0 then
              TblApurICMSMensalBaseCalc.Value    := TblApurICMSMensalBaseCalc.Value + ValorBaseCalcSom
            else
              if SQLCFOPCFOPCDESTVLRNTRIB.AsString = 'I' then
                TblApurICMSMensalIsentoNaoTrib.Value := TblApurICMSMensalIsentoNaoTrib.Value + ValorBaseCalcSom
              else
                TblApurICMSMensalOutras.Value        := TblApurICMSMensalOutras.Value + ValorBaseCalcSom;

            if ValorIsentoNTrib > 0 then
              if SQLCFOPCFOPCDESTVLRNTRIB.AsString = 'I' then
                TblApurICMSMensalIsentoNaoTrib.Value := TblApurICMSMensalIsentoNaoTrib.Value + ValorIsentoNTrib
              else
                TblApurICMSMensalOutras.Value        := TblApurICMSMensalOutras.Value + ValorIsentoNTrib;

            if VlrIPI > 0 then
              TblApurICMSMensalVlrIPI.Value      := TblApurICMSMensalVlrIPI.Value + VlrIPI;

            TblApurICMSMensal.Post;
          end
        else
          begin
            TblApurICMSMensal.Append ;
            TblApurICMSMensalTipo.Value      := 'DEB_SAI';
            TblApurICMSMensalAnoMes.Value    := FormatDateTime('yymm', Dt1);
            TblApurICMSMensalCodCFOP.Value   := 'NULO';
            TblApurICMSMensalDescrCFOP.Value := 'NAO ENCONTRADA';

            TblApurICMSMensalVlrContabil.Value   := TblApurICMSMensalVlrContabil.Value +
                                                    ValorContabil;

            TblApurICMSMensalImpCredDeb.Value    := TblApurICMSMensalImpCredDeb.Value +
                                                    ValorImposto;

            if ValorImposto > 0 then
              TblApurICMSMensalBaseCalc.Value    := TblApurICMSMensalBaseCalc.Value + ValorBaseCalcSom
            else
              if SQLCFOPCFOPCDESTVLRNTRIB.AsString = 'I' then
                TblApurICMSMensalIsentoNaoTrib.Value := TblApurICMSMensalIsentoNaoTrib.Value + ValorBaseCalcSom
              else
                TblApurICMSMensalOutras.Value        := TblApurICMSMensalOutras.Value + ValorBaseCalcSom;

            if ValorIsentoNTrib > 0 then
              if SQLCFOPCFOPCDESTVLRNTRIB.AsString = 'I' then
                TblApurICMSMensalIsentoNaoTrib.Value := TblApurICMSMensalIsentoNaoTrib.Value + ValorIsentoNTrib
              else
                TblApurICMSMensalOutras.Value        := TblApurICMSMensalOutras.Value + ValorIsentoNTrib;

            if VlrIPI > 0 then
              TblApurICMSMensalVlrIPI.Value      := TblApurICMSMensalVlrIPI.Value + VlrIPI;

            TblApurICMSMensal.Post;

          end;
      SQLCupom.Next;
      Application.ProcessMessages;
    end;
    //COLOCAR VALOR NEGATIVO NO IMPOSTO DE SAIDA
    TblCredDeb_UfCFOP_Sint.First;
    while not TblCredDeb_UfCFOP_Sint.Eof do
      begin
        if TblCredDeb_UfCFOP_SintTipo.Value = 'DEB_SAI' then
          begin
            TblCredDeb_UfCFOP_Sint.Edit;
            TblCredDeb_UfCFOP_SintImpCredDeb.AsString := '-' + TblCredDeb_UfCFOP_SintImpCredDeb.AsString;
            TblCredDeb_UfCFOP_Sint.Post;
          end;
        TblCredDeb_UfCFOP_Sint.Next ;
      end ;
    //CALCULAR OS TOTAIS PARA OS CFOPS DE ENTRADA
    ValorBaseCalcSom := 0 ;
    ValorImposto     := 0 ;
    ValorIsentoNTrib := 0 ;
    ValorContabil    := 0 ;
    ValorOutras      := 0 ;
    VlrIPI           := 0 ;
    TblApurICMSMensal.First ;
    while not (TblApurICMSMensal.Eof) and (TblApurICMSMensalAnoMes.Value <> 'TOTALC') do
      begin
        ValorImposto     := ValorImposto     + TblApurICMSMensalImpCredDeb.Value ;
        ValorIsentoNTrib := ValorIsentoNTrib + TblApurICMSMensalIsentoNaoTrib.Value ;
        ValorBaseCalcSom := ValorBaseCalcSom + TblApurICMSMensalBaseCalc.Value ;
        ValorContabil    := ValorContabil    + TblApurICMSMensalVlrContabil.Value ;
        ValorOutras      := ValorOutras      + TblApurICMSMensalOutras.Value ;
        VlrIPI           := VlrIPI + TblApurICMSMensalVlrIPI.Value;
        TblApurICMSMensal.Next ;
      end ;

    if TblApurICMSMensal.Locate('AnoMes', 'TOTALC', []) then
      begin
        TblApurICMSMensal.Edit;
        TblApurICMSMensalImpCredDeb.Value    := ValorImposto;
        TblApurICMSMensalIsentoNaoTrib.Value := ValorIsentoNTrib;
        TblApurICMSMensalBaseCalc.Value      := ValorBaseCalcSom;
        TblApurICMSMensalVlrContabil.Value   := ValorContabil;
        TblApurICMSMensalOutras.Value        := ValorOutras;
        TblApurICMSMensalVlrIPI.Value        := VlrIPI;
        TblApurICMSMensal.Post;
      end ;

    if TblApurICMSMensal.Locate('CodCFOP', '12', []) then
      begin
        TblApurICMSMensal.Edit ;
        TblApurICMSMensalBaseCalc.Value := ValorImposto;
        TblApurICMSMensal.Post ;
      end ;
    //CALCULAR OS TOTAIS PARA OS CFOPS DE SAIDAS
    ValorBaseCalcSom := 0;
    ValorImposto     := 0;
    ValorIsentoNTrib := 0;
    ValorContabil    := 0;
    ValorOutras      := 0;
    ValorProduto     := 0;
    VlrIPI           := 0;
    TblApurICMSMensal.First ;
    TblApurICMSMensal.Locate('Tipo', 'DEB_SAI', []) ;
    while not (TblApurICMSMensal.Eof) and (TblApurICMSMensalAnoMes.Value <> 'TOTALD') do
      begin
        ValorImposto     := ValorImposto     + TblApurICMSMensalImpCredDeb.Value ;
        ValorIsentoNTrib := ValorIsentoNTrib + TblApurICMSMensalIsentoNaoTrib.Value ;
        ValorBaseCalcSom := ValorBaseCalcSom + TblApurICMSMensalBaseCalc.Value ;
        ValorContabil    := ValorContabil    + TblApurICMSMensalVlrContabil.Value ;
        ValorOutras      := ValorOutras      + TblApurICMSMensalOutras.Value ;
        VlrIPI           := VlrIPI           + TblApurICMSMensalVlrIPI.Value;
        TblApurICMSMensal.Next ;
      end ;

    if TblApurICMSMensal.Locate('AnoMes', 'TOTALD', []) then
      begin
        TblApurICMSMensal.Edit ;
        TblApurICMSMensalImpCredDeb.Value    := ValorImposto ;
        TblApurICMSMensalIsentoNaoTrib.Value := ValorIsentoNTrib ;
        TblApurICMSMensalBaseCalc.Value      := ValorBaseCalcSom ;
        TblApurICMSMensalVlrContabil.Value   := ValorContabil ;
        TblApurICMSMensalOutras.Value        := ValorOutras ;
        TblApurICMSMensalVlrIPI.Value        := VlrIPI;
        TblApurICMSMensal.Post ;
      end ;

    if TblApurICMSMensal.Locate('CodCFOP', '22', []) then
      begin
        TblApurICMSMensal.Edit ;
        TblApurICMSMensalBaseCalc.Value := ValorImposto ;
        TblApurICMSMensal.Post ;
      end ;

    Screen.Cursor := 0 ;
    NomeEmpresa.Caption := SQLEmpresaAuxEMPRA60RAZAOSOC.Value + '  CGC:' +
                           SQLEmpresaAuxEMPRA14CGC.Value + '  IE:' +
                           SQLEmpresaAuxEMPRA20IE.Value ;

    NomeEmpresa2.Caption := SQLEmpresaEMPRA60RAZAOSOC.Value ;
    CGCEmpresa2.Caption := '  CNPJ:' + SQLEmpresaAuxEMPRA14CGC.Value +
                           '  Insc.ICMS:' + SQLEmpresaAuxEMPRA20IE.Value ;
    PeriodoRel1.Caption := 'UNID: FPE DE ' +
                           FormatDateTime('dd/mm/yyyy', Dt1) + ' A ' +
                           FormatDateTime('dd/mm/yyyy', Dt2) ;
    Periodo2.Caption := 'Periodo de :' +
                        FormatDateTime('dd/mm/yyyy', Dt1) + ' a ' +
                        FormatDateTime('dd/mm/yyyy', Dt2) ;
    Periodo3.Caption := 'Periodo de :' +
                        FormatDateTime('dd/mm/yyyy', Dt1) + ' a ' +
                        FormatDateTime('dd/mm/yyyy', Dt2) ;
    DestroyWindow;
    ReportApuracao.Print ;
  except
    on E:Exception do
      begin
        Informa('ANOTE O ERRO.' + #13 + E.Message);
        Abort;
        Exit;
      end;
  end;
end;
procedure TFormRelatorioApuracaoICMS.ppGroupHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  if TblCredDeb_UfCFOP_SintTipo.Value = 'CRED_ENTR' then
    LabelTipo.Caption := 'CFO: CREDITO/ENTRADAS - ANO/MES:' ;
  if TblCredDeb_UfCFOP_SintTipo.Value = 'DEB_SAI' then
    LabelTipo.Caption := 'CFO: DEBITOS/SAIDAS - ANO/MES:' ;

end;

procedure TFormRelatorioApuracaoICMS.ppGroupHeaderBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  if TblApurICMSMensalTipo.Value = 'CRED_ENTR' then
    LabelTipo2.Caption := 'REGISTRO DE ICMS MENSAL - ENTRADAS' ;
  if TblApurICMSMensalTipo.Value = 'DEB_SAI' then
    LabelTipo2.Caption := 'REGISTRO DE ICMS MENSAL - SAIDAS' ;

end;

procedure TFormRelatorioApuracaoICMS.TblCredDeb_UfCFOP_SintNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TblCredDeb_UfCFOP_SintVlrContabil.Value   := 0 ;
  TblCredDeb_UfCFOP_SintImpCredDeb.Value    := 0 ;
  TblCredDeb_UfCFOP_SintBaseCalc.Value      := 0 ;
  TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value := 0 ;
  TblCredDeb_UfCFOP_SintOutras.Value        := 0 ;

end;

procedure TFormRelatorioApuracaoICMS.TblApurICMSMensalNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TblApurICMSMensalVlrContabil.Value   := 0 ;
  TblApurICMSMensalImpCredDeb.Value    := 0 ;
  TblApurICMSMensalBaseCalc.Value      := 0 ;
  TblApurICMSMensalIsentoNaoTrib.Value := 0 ;
  TblApurICMSMensalOutras.Value        := 0 ;
  TblApurICMSMensalVlrIPI.Value        := 0 ;
end;

procedure TFormRelatorioApuracaoICMS.TblCredDeb_UfCFOP_AnaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TblCredDeb_UfCFOP_AnaVlrContabil.Value   := 0 ;
  TblCredDeb_UfCFOP_AnaImpCredDeb.Value    := 0 ;
  TblCredDeb_UfCFOP_AnaBaseCalc.Value      := 0 ;
  TblCredDeb_UfCFOP_AnaIsentoNaoTrib.Value := 0 ;
  TblCredDeb_UfCFOP_AnaOutras.Value        := 0 ;

end;

procedure TFormRelatorioApuracaoICMS.ReportApuracaoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportApuracao.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportApuracao.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormRelatorioApuracaoICMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  TblApurICMSMensal.Close;
  TblCredDeb_UfCFOP_Sint.Close;
  TblCredDeb_UfCFOP_Ana.Close;
end;

end.
