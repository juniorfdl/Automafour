unit TelaNegociacaoDivida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Grids, DBGrids, StdCtrls, ExtCtrls, Mask,
  ToolEdit, CurrEdit, DB, DBTables, Buttons, jpeg, DateUtils, ComCtrls,
  RxQuery, RXCtrls,VarSYS, DBCtrls, RXDBCtrl, UCrpe32, Math,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers ;

type
  TFormTelaNegociacaoDivida = class(TFormTelaGeralTEMPLATE)
    TabelaTemp: TTable;
    Label3: TLabel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    MemoResumo1: TMemo;
    DBGridNovasDup1: TDBGrid;
    Panel3: TPanel;
    PaginaPrincipal: TPageControl;
    TabNegociacao: TTabSheet;
    TabDados: TTabSheet;
    Button1: TRxSpeedButton;
    Button2: TRxSpeedButton;
    Panel2: TPanel;
    Panel4: TPanel;
    SQLSoma: TRxQuery;
    DSTabelaTemp: TDataSource;
    DBGridDup: TDBGrid;
    Panel5: TPanel;
    BatchMove: TBatchMove;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEditNome: TDBEdit;
    LabelNomeFantasia: TLabel;
    DBEditNomeFantasia: TDBEdit;
    dsMasterSource: TDataSource;
    DSSqlSoma: TDataSource;
    TblDupNovas: TTable;
    DSTblDupNovas: TDataSource;
    TblDupNovasParc: TIntegerField;
    TblDupNovasValor: TCurrencyField;
    TblDupNovasVcto: TDateField;
    DBGridDuplicatas: TDBGrid;
    SQLDadosDup: TRxQuery;
    DSSQLDadosDup: TDataSource;
    Splitter2: TSplitter;
    ListBox1: TListBox;
    SQLDadosDupCLIEA13ID: TStringField;
    SQLDadosDupCTRCA13ID: TStringField;
    SQLDadosDupCTRCDVENC: TDateTimeField;
    SQLDadosDupCTRCDEMIS: TDateTimeField;
    SQLDadosDupCTRCINROPARC: TIntegerField;
    SQLDadosDupCTRCN2TOTDESCREC: TFloatField;
    SQLDadosDupCTRCN2TOTJUROREC: TFloatField;
    SQLDadosDupCTRCN2TOTMULTAREC: TFloatField;
    SQLDadosDupCTRCN2TXJURO: TFloatField;
    SQLDadosDupCTRCN2TXMULTA: TFloatField;
    SQLDadosDupCTRCN2VLR: TFloatField;
    SQLDadosDupCTRCCSTATUS: TStringField;
    SQLDadosDupEMPRICODULTREC: TIntegerField;
    SQLDadosDupNUMEICOD: TIntegerField;
    SQLDadosDupEMPRICOD: TIntegerField;
    SQLDadosDupNOFIA13ID: TStringField;
    SQLDadosDupCTRCA30NRODUPLICBANCO: TStringField;
    SQLDadosDupCTRCDULTREC: TDateTimeField;
    Label5: TLabel;
    EditTotalSelecionado: TDBEdit;
    EditJuros: TCurrencyEdit;
    Label10: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    EditDivida1: TCurrencyEdit;
    Label2: TLabel;
    EditParcProposta1: TCurrencyEdit;
    Jrs1: TCurrencyEdit;
    Label4: TLabel;
    Label8: TLabel;
    Parcelas1: TCurrencyEdit;
    Label9: TLabel;
    TabelaTempCUPOA13ID: TStringField;
    TabelaTempCUPOICOD: TIntegerField;
    TabelaTempCUPODEMIS: TDateTimeField;
    TabelaTempVENDICOD: TIntegerField;
    TabelaTempCUPON2TOTITENS: TFloatField;
    TabelaTempCUPON2DESC: TFloatField;
    TabelaTempCUPON2ACRESC: TFloatField;
    TabelaTempCUPOINRO: TIntegerField;
    TabelaTempTIPO: TStringField;
    SQLExec: TRxQuery;
    SQLGeral: TRxQuery;
    SQLGeralCUPOA13ID: TStringField;
    SQLGeralCUPOICOD: TIntegerField;
    SQLGeralCUPODEMIS: TDateTimeField;
    SQLGeralVENDICOD: TIntegerField;
    SQLGeralCUPON2TOTITENS: TFloatField;
    SQLGeralCUPON2DESC: TFloatField;
    SQLGeralCUPON2ACRESC: TFloatField;
    SQLGeralCUPOINRO: TIntegerField;
    SQLGeralTIPO: TStringField;
    Panel8: TPanel;
    Panel9: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EditDivida: TCurrencyEdit;
    EditParcProposta: TCurrencyEdit;
    Jrs: TCurrencyEdit;
    Parcelas: TCurrencyEdit;
    Panelfundo: TPanel;
    Panelresumo: TPanel;
    Label15: TLabel;
    MemoResumo: TMemo;
    Panelgrid: TPanel;
    DBGridNovasDup: TDBGrid;
    BatchMoveRel: TBatchMove;
    TermorenovDividaRelCupDup: TTable;
    TermoRenovDividaRelDados: TTable;
    TermoRenovDividaRelDadosCLIEA60RAZAOSOC: TStringField;
    TermoRenovDividaRelDadosCLIEA60ENDRES: TStringField;
    TermoRenovDividaRelDadosCLIEA60BAIRES: TStringField;
    TermoRenovDividaRelDadosCLIEA60CIDRES: TStringField;
    TermoRenovDividaRelDadosCLIEA2UFRES: TStringField;
    TermoRenovDividaRelDadosCLIEA14CGC: TStringField;
    TermoRenovDividaRelDadosEMPRA60RAZAOSOC: TStringField;
    TermoRenovDividaRelDadosEMPRA60END: TStringField;
    TermoRenovDividaRelDadosEMPRA60BAI: TStringField;
    TermoRenovDividaRelDadosEMPRA60CID: TStringField;
    TermoRenovDividaRelDadosEMPRA2UF: TStringField;
    TermoRenovDividaRelDadosEMPRA14CGC: TStringField;
    TermorenovDividaRelCupDupCUPOA13ID: TStringField;
    TermorenovDividaRelCupDupCUPOICOD: TIntegerField;
    TermorenovDividaRelCupDupCUPODEMIS: TDateTimeField;
    TermorenovDividaRelCupDupVENDICOD: TIntegerField;
    TermorenovDividaRelCupDupCUPON2TOTITENS: TFloatField;
    TermorenovDividaRelCupDupCUPON2DESC: TFloatField;
    TermorenovDividaRelCupDupCUPON2ACRESC: TFloatField;
    TermorenovDividaRelCupDupTIPO: TStringField;
    Report: TCrpe;
    TblSomatorio: TTable;
    TblSomatorioSOMADUP: TFloatField;
    TblSomatorioSOMAEXT: TStringField;
    TblSomatorioDIVIDAINICIAL: TFloatField;
    TblSomatorioDIVIDAINICIALEXT: TStringField;
    TblSomatorioTOTALDENOVASPARCELAS: TIntegerField;
    TblSomatorioNOVOCUPOM: TStringField;
    TblSomatorioDATANOVOCONTRATO: TDateField;
    SQLCupom: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomTERMICOD: TIntegerField;
    SQLCupomCUPOICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomPLRCICOD: TIntegerField;
    SQLCupomVENDICOD: TIntegerField;
    SQLCupomCONVICOD: TIntegerField;
    SQLCupomCUPOCSTATUS: TStringField;
    SQLCupomCUPON2TOTITENS: TFloatField;
    SQLCupomCUPON2DESC: TFloatField;
    SQLCupomCUPON2ACRESC: TFloatField;
    SQLCupomCUPON2TOTITENSRET: TFloatField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    SQLCupomCUPON2CONVTAXA: TFloatField;
    SQLCupomCUPOINROORDCOMPRA: TIntegerField;
    SQLCupomCUPOA13IDTROCA: TStringField;
    SQLCupomCUPON2VLRCOMISSAO: TFloatField;
    SQLCupomCUPOA20CODANT: TStringField;
    SQLCupomCUPODCANC: TDateTimeField;
    SQLCupomCUPON2JUROATRAS: TFloatField;
    SQLCupomCUPON2MULTAATRAS: TFloatField;
    SQLCupomCUPODPAGTOCONSIG: TDateTimeField;
    SQLCupomPENDENTE: TStringField;
    SQLCupomREGISTRO: TDateTimeField;
    SQLCupomCUPON3BONUSTROCA: TFloatField;
    SQLCupomCUPODENTREGA: TDateTimeField;
    SQLCupomTPVDICOD: TIntegerField;
    SQLCupomCUPON3CREDTAXA: TFloatField;
    SQLCupomCUPOCCONSIG: TStringField;
    SQLCupomCUPOV254OBS: TStringField;
    SQLCupomUSUAICODCANC: TIntegerField;
    SQLCupomCUPOA30DATACARTAO: TStringField;
    SQLCupomCUPOA30HORACARTAO: TStringField;
    SQLCupomCUPOA30NSUPROVEDOR: TStringField;
    SQLCupomCUPOA30NSUINSTITUICAO: TStringField;
    SQLCupomCUPON2DESCITENS: TFloatField;
    SQLCupomCATCA13ID: TStringField;
    SQLCupomOPESICOD: TIntegerField;
    SQLCupomPLCTA15CODCRED: TStringField;
    SQLCupomPLCTA15CODDEB: TStringField;
    DSSQLCupom: TDataSource;
    SQLContasReceber: TRxQuery;
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
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    TblCarne: TTable;
    TblCarneEmpresaNome: TStringField;
    TblCarneEmpresaEnder: TStringField;
    TblCarneEmpresaBairro: TStringField;
    TblCarneEmpresaCidade: TStringField;
    TblCarneEmpresaUF: TStringField;
    TblCarneEmpresaFone: TStringField;
    TblCarneMensagem: TStringField;
    TblCarneCliente: TStringField;
    TblCarneEndereco: TStringField;
    TblCarneBairro: TStringField;
    TblCarneCidade: TStringField;
    TblCarneCodigoCliente: TStringField;
    TblCarneNumeroContrato: TStringField;
    TblCarneNumeroParcela: TIntegerField;
    TblCarneContadorParcelas: TIntegerField;
    TblCarneDataVencimento: TDateField;
    TblCarneValorParcela: TFloatField;
    TblCarneVendedor: TStringField;
    TblCarneTotalCupom: TFloatField;
    TblCarnePlano: TStringField;
    TblCarneDataEmissao: TDateField;
    TblCarneNroCupom: TStringField;
    TblCarneTaxaCrediario: TFloatField;
    TblCarneValorDesconto: TFloatField;
    TblCarneAcrescimo: TFloatField;
    TblCarneEntrada: TFloatField;
    Splitter3: TSplitter;
    ckAtualiza: TCheckBox;
    SQLCupomCUPOA13IDCUPNEG: TStringField;
    TabelaTempSELECIONADA: TBooleanField;
    SQLSomaSOMA: TFloatField;
    EdTxJuro: TCurrencyEdit;
    Label16: TLabel;
    SbRecalcular: TSpeedButton;
    Label17: TLabel;
    SQLDadosDupCTRCN2TOTREC: TFloatField;
    EditEntrada: TCurrencyEdit;
    Label18: TLabel;
    SQLCupomNumerario: TRxQuery;
    SQLCupomNumerarioCUPOA13ID: TStringField;
    SQLCupomNumerarioNUMEICOD: TIntegerField;
    SQLCupomNumerarioCONMCSTATUS: TStringField;
    SQLCupomNumerarioCPNMN2VLR: TFloatField;
    SQLCupomNumerarioCPNMCAUTENT: TStringField;
    SQLCupomNumerarioCLIEA13ID: TStringField;
    SQLCupomNumerarioPENDENTE: TStringField;
    SQLCupomNumerarioREGISTRO: TDateTimeField;
    SQLCupomNumerarioPLCTA15COD: TStringField;
    LabelAceite: TSpeedButton;
    btImprimeCarnet: TSpeedButton;
    Calcular: TSpeedButton;
    procedure CalcularClick(Sender: TObject);
    function FormataCom2Casas(Valor : Double) : Double;
    function FormataCom6Casas(Valor : Double) : Double;
    procedure CalculaParcelas;
    function Potenciar(Valor: Extended;Potencia:Integer) : Extended;
    procedure FormCreate(Sender: TObject);
    procedure SQLGeralAfterOpen(DataSet: TDataSet);
    procedure DBGridDupDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDupColExit(Sender: TObject);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure TabelaTempAfterOpen(DataSet: TDataSet);
    procedure DSSqlSomaDataChange(Sender: TObject; Field: TField);
    procedure AtualizaValorNoDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CalculaJuros;
    procedure CalculaJurosComVlrPrz;
    procedure RefazTabelaNovasDup;
    procedure RefazTabelaTemp(Tabela : TTable);
    procedure DBGridDupDblClick(Sender: TObject);
    procedure Parcelas1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Jrs1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabelAceiteClick(Sender: TObject);
    procedure TblDupNovasAfterClose(DataSet: TDataSet);
    procedure TblDupNovasAfterOpen(DataSet: TDataSet);
    procedure DBGridNovasDup1ColEnter(Sender: TObject);
    procedure DBGridNovasDup1ColExit(Sender: TObject);
    procedure DBGridNovasDup1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure TblDupNovasBeforePost(DataSet: TDataSet);
    procedure TblDupNovasAfterPost(DataSet: TDataSet);
    procedure MontaRelatorio;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TblDupNovasNewRecord(DataSet: TDataSet);
    procedure DBGridNovasDup1KeyPress(Sender: TObject; var Key: Char);
    procedure EditParcPropostaChange(Sender: TObject);
    procedure DBGridNovasDupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLCupomNewRecord(DataSet: TDataSet);
    procedure SQLCupomBeforePost(DataSet: TDataSet);
    procedure DBGridNovasDupCellClick(Column: TColumn);
    procedure ImprimeCarne;
    procedure btImprimeCarnetClick(Sender: TObject);
    procedure DSTblDupNovasDataChange(Sender: TObject; Field: TField);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure ckAtualizaClick(Sender: TObject);
    procedure SQLGeralBeforeOpen(DataSet: TDataSet);
    procedure DSTabelaTempDataChange(Sender: TObject; Field: TField);
    procedure RestauraControles;
    procedure ReportWindowClose(Sender: TObject);
    procedure SbRecalcularClick(Sender: TObject);
  private
    { Private declarations }
    TotalCJuros, ValorParcSJuro, JurosMesAtual,
    ParcCJuros, Capital, Amortizacao, DividaInicial, JuroMes,
    Prestacao, TotalParcelas, ParcelaFrac, ParcelasInt,
    DifJuros, TotalJuros, PrazoMedio, SomaTotalDividaCJuros : Double;
    Parcela : Integer;
    Estado, CodNextContaRec : string;
    Alterar, EditarTabNovasDup : Boolean;
    PosicaoGrid : Pointer;
    CodNextCupom, Contratos : string;
    function  FloatToInt(AFloat: Double): Integer;
    procedure GravarCupom;
    procedure GravaItensCupom;
  public

    { Public declarations }
  end;

var
  FormTelaNegociacaoDivida: TFormTelaNegociacaoDivida;
  OriginalOptions : TDBGridOptions;
  OriginalOptionsNovasDup : TDBGridOptions;
implementation

uses UnitLibrary, CadastroCliente, DataModulo, WaitWindow, ExtensoLib;

{$R *.dfm}


procedure TFormTelaNegociacaoDivida.SaveBoolean(Grid : TDBGrid) ;
var IncluirJuors: Boolean;
    TotalAPagar, Saldo, JurosPParc, PercJuros, MultaPParc, PercMulta : Currency;
    I : Integer;
begin
  try
    Grid.SelectedField.Dataset.Edit ;
    Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
    SQLDadosDup.First;
    PercMulta := SQLDadosDupCTRCN2TXMULTA.Value;
    JurosPParc := 0;
    if EdTxJuro.Value > 0 then
      PercJuros := EdTxJuro.Value
    else
      PercJuros := SQLDadosDupCTRCN2TXJURO.Value;

    while not SQLDadosDup.Eof do
       begin
          if SQLDadosDupCTRCN2TOTREC.Value > 0 then
            Saldo := SQLDadosDupCTRCN2VLR.AsFloat -
                     (SQLDadosDupCTRCN2TOTREC.AsFloat -
                      SQLDadosDupCTRCN2TOTJUROREC.AsFloat -
                      SQLDadosDupCTRCN2TOTMULTAREC.AsFloat +
                      SQLDadosDupCTRCN2TOTDESCREC.AsFloat)
          else
            Saldo := SQLDadosDupCTRCN2VLR.AsFloat;

          JurosPParc := JurosPParc + CalculaJuroMultaDesc(Saldo,
                                                          PercJuros,
                                                          SQLDadosDupCTRCDVENC.AsDateTime,
                                                          Today,
                                                          0,
                                                          DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
                                                          'Juro',
                                                          SQLDadosDupCTRCA13ID.asstring,
                                                          SQLDadosDupCTRCINROPARC.AsString) ;

          MultaPParc := MultaPParc + CalculaJuroMultaDesc(Saldo,
                                                          PercMulta,
                                                          SQLDadosDupCTRCDVENC.AsDateTime,
                                                          Today,
                                                          0,
                                                          DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                                          'Multa',
                                                          SQLDadosDupCTRCA13ID.asstring,
                                                          SQLDadosDupCTRCINROPARC.AsString) ;
          SQLDadosDup.Next;
       end;

    if TabelaTempSELECIONADA.AsBoolean then
      begin
         ListBox1.Items.Add(''''+TabelaTempCUPOA13ID.AsString+'''');
         EditJuros.Value := EditJuros.Value + JurosPParc + MultaPParc;
      end
    else
      begin
         ListBox1.Items.Delete(ListBox1.Items.IndexOf(''''+TabelaTempCUPOA13ID.AsString+''''));
         EditJuros.Value := EditJuros.Value - JurosPParc;
      end;

    if ListBox1.Items.Count > 0 then
       SQLSoma.MacroByName('Selecao').AsString := ''
    else
       SQLSoma.MacroByName('Selecao').AsString := '''000''';

    for i := 0 to ListBox1.Items.Count -1 do
       if i > 0 then
          SQLSoma.MacroByName('Selecao').AsString := SQLSoma.MacroByName('Selecao').AsString + ',' + ListBox1.Items.Strings[i]
       else
          SQLSoma.MacroByName('Selecao').AsString := ListBox1.Items.Strings[i];

    Grid.SelectedField.Dataset.Post ;
      SQLSoma.Close;

  SQLSoma.Open;

  if TabelaTempSELECIONADA.AsBoolean then
     begin
        if (SQLSomaSOMA.AsFloat > 0) and ((Parcelas.Value > 0) or (EditParcProposta.Value > 0)) then
             Calcular.Enabled := True
        else
             Calcular.Enabled := False;

        btImprimeCarnet.Enabled := False;

     end;

  except
  end;
end ;



function TFormTelaNegociacaoDivida.FormataCom2Casas(Valor : Double) : Double;
Var Dec3 : Double;
    Resultado, ValorSTR, ValorDEC : String;
begin
    if Pos(',',FloatToStr(Valor)) <> 0 then
       begin
          ValorSTR := Copy(FloatToStr(Valor),0,Pos(',',FloatToStr(Valor)) - 1);
          Dec3 := StrToFloat(Copy(FloatToStr(Valor),Pos(',',FloatToStr(Valor))+1,3))/10;
          Dec3 := Round(Dec3);
          ValorDEC := Copy(FloatToStr(Valor),Pos(',',FloatToStr(Valor))+1,2);
       end
    else
       ValorSTR := FloatToStr(Valor);

    if ValorDEC <> '' then
       Resultado := ValorSTR + ',' + ValorDEC
    else
       Resultado := ValorSTR;
    try
      StrToFloat(Resultado);
      Result := StrToFloat(Resultado);
    Except
       Result := 0;
    end;
end;


function TFormTelaNegociacaoDivida.Potenciar(Valor: Extended;Potencia:Integer) : Extended;
Var Resultado : Extended;
    Cont : Integer;
begin
   Resultado := 0;
   if Potencia > 1 then
     for Cont := 0 to Potencia-2 do
       begin
         if Resultado <> 0 then
            Resultado := Valor * Resultado
         else
            Resultado := (Valor * Valor);
       end
   else
     Resultado := Valor;

   try
     Result := Resultado;
   except
     Result := 0;
   end;

end;

// Açoes ///

procedure TFormTelaNegociacaoDivida.CalculaParcelas;
Var I : Integer;
begin
    Capital := EditDivida.Value - EditEntrada.Value;
    JuroMes := Jrs.Value / 100;
    Parcela := Parcela + 1;
    ParcelasInt := 0;
    ParcelaFrac := 0;

    ParcCJuros    := FormataCom2Casas(Capital * JuroMes);
    Prestacao     := EditParcProposta.Value / (EditParcProposta.Value - ParcCJuros);
    TotalParcelas := FormataCom2Casas(ln(Prestacao) / ln(1 + JuroMes));
    if Copy(FloatToStr(TotalParcelas),0,Pos(',',FloatToStr(TotalParcelas)) - 1) <> '' then
       ParcelasInt   := StrToFloat(Copy(FloatToStr(TotalParcelas),0,Pos(',',FloatToStr(TotalParcelas)) - 1))
    else
       ParcelasInt := TotalParcelas;
    ParcelaFrac   := TotalParcelas - ParcelasInt;

    MemoResumo.Lines.Add(FloatToStr(ParcelasInt)+' Parcelas');
    Parcela := StrToInt(FloatToStr(ParcelasInt));
    RefazTabelaNovasDup;

    // Testa se tem Entrada
    if EditEntrada.value > 0 then
      begin
        TblDupNovas.Append;
        TblDupNovasParc.AsInteger   := 0;
        TblDupNovasValor.AsFloat    := EditEntrada.value;
        TblDupNovasVcto.AsString    := FormatDateTime('dd/mm/yyyy',Date);
        TblDupNovas.Post;
        MemoResumo.Lines.Add('Valor Entrada: R$ ' + FloatToStr(FormataCom2Casas(EditEntrada.value)));
      end;

    I := 0;
    while I < Parcela do
      begin
        I := I +1;
        TblDupNovas.Append;
        TblDupNovasParc.AsInteger := I;
        TblDupNovasValor.AsFloat := EditParcProposta.Value;
        TblDupNovasVcto.AsDateTime  := IncDay(Date,(I*30));
        TblDupNovas.Post;
      end;

    Parcela := StrToInt(FloatToStr(ParcelasInt));

    if ParcelaFrac <> 0 then
      begin
        if FormataCom2Casas((ParcelaFrac) * EditParcProposta.Value) > 1 then
           begin
              if FormataCom2Casas((ParcelaFrac) * EditParcProposta.Value) > (EditParcProposta.Value / 2) then
                 begin
                    MemoResumo.Lines.Add('Mais uma parcela de ' + FloatToStr(FormataCom2Casas((ParcelaFrac) * EditParcProposta.Value)));
                    Parcela := Parcela + 1;
                    TblDupNovas.Append;
                    TblDupNovasParc.AsInteger := Parcela;
                    TblDupNovasValor.AsFloat := FormataCom2Casas((ParcelaFrac) * EditParcProposta.Value);
                    TblDupNovasVcto.AsDateTime  := IncDay(Date,(Parcela*30));
                    TblDupNovas.Post;
                 end
              else
                 begin
                    TblDupNovas.Last;
                    TblDupNovas.Edit;
                    TblDupNovasValor.AsFloat := TblDupNovasValor.AsFloat + FormataCom2Casas((ParcelaFrac) * EditParcProposta.Value);
                    TblDupNovas.Post;
                 end;
            end;
      end;
    Alterar := False;
    Parcelas.Font.Color := clBlue;
    Parcelas.Value := Parcela;
end;

procedure TFormTelaNegociacaoDivida.RefazTabelaNovasDup;
begin
   try
     TblDupNovas.Close;
     TblDupNovas.DeleteTable;
     TblDupNovas.CreateTable;
   except
     TblDupNovas.CreateTable;
   end;
     TblDupNovas.Open;
   Alterar := True;
end;

procedure  TFormTelaNegociacaoDivida.AtualizaValorNoDBGrid;
Var ValorParcSJuro, ValorSuj,
    TotalPrazo, PercJrsDivida: Double;
    S, A, B, T, PVista, Entrada, R, N, VFin, P : Double;
    I : Integer;
begin
    Exit; {Adilson comentei pois quando trocava a data no grid o calculo ficava maluco}

    Capital := EditDivida.Value;
    ValorSuj := TblDupNovasValor.AsFloat;
    ValorParcSJuro   := Capital / Parcelas.Value;
    DifJuros := ValorSuj - ValorParcSJuro;
    TotalJuros := DifJuros * Parcelas.Value;
    PercJrsDivida := TotalJuros / Capital;
    TotalPrazo := 0;
    TotalParcelas := StrToInt(FloatToStr(Parcelas.Value));
    TblDupNovas.First;
    MemoResumo.Clear;
    while not TblDupNovas.Eof do
      begin
         TotalPrazo := TotalPrazo + (TblDupNovasVcto.AsDateTime - Today);
         MemoResumo.Lines.Add(FloatToStr(TotalPrazo) + ' - Prazo Médio: '+ FloatToStr(FormataCom2Casas(TotalPrazo / Parcelas.Value)));
         TblDupNovas.Next
      end;
    PrazoMedio := TotalPrazo / Parcelas.Value;
    JuroMes := (PercJrsDivida / PrazoMedio) * 30;
    Jrs.Text := FloatToStr(JuroMes*100);
    MemoResumo.Lines.Add('Valor Total Juros: ' + FloatToStr((EditParcProposta.Value * TblDupNovas.RecordCount) - Capital));
end;

function  TFormTelaNegociacaoDivida.FloatToInt(AFloat: Double): Integer;
begin
  Result := 0;
  if pos(',',FloatToStr(AFloat)) <> 0 then
     AFloat := StrToInt(Copy(FloatToStr(AFloat),0,Pos(',',FloatToStr(AFloat)) - 1));
  try
     Result := StrToInt(FloatToStr(AFloat));
  except
  end;

end;
procedure TFormTelaNegociacaoDivida.CalculaJuros;
var I : Integer; TotalJuros :Double;
begin
    TotalParcelas := Parcelas.Value;
    Capital := EditDivida.Value - EditEntrada.Value;
    I := 1;
    JuroMes := Jrs.Value / 100;
    if JuroMes = 0 then
       Prestacao := FormataCom2Casas(Capital / TotalParcelas)
    else
       Prestacao := FormataCom2Casas(Capital * ((JuroMes * Potenciar(1 + JuroMes,FloatToInt(TotalParcelas))) / (Potenciar(1 + JuroMes,FloatToInt(TotalParcelas))-1)));

    RefazTabelaNovasDup;

    // Testa se tem Entrada
    if EditEntrada.value > 0 then
      begin
        TblDupNovas.Append;
        TblDupNovasParc.AsInteger   := 0;
        TblDupNovasValor.AsFloat    := EditEntrada.value;
        TblDupNovasVcto.AsString    := FormatDateTime('dd/mm/yyyy',Date);
        TblDupNovas.Post;
        MemoResumo.Lines.Add('Valor Entrada: R$ ' + FloatToStr(FormataCom2Casas(EditEntrada.value)));
      end;

    I := 1;
    while I <= TotalParcelas do
       begin
         TblDupNovas.Append;
         TblDupNovasParc.AsInteger := I;
         TblDupNovasValor.AsFloat := Prestacao;
         TblDupNovasVcto.AsDateTime := IncDay(Date,(I*30));
         TblDupNovas.Post;
         I := I + 1;
       end;
    Alterar := False;

    MemoResumo.Lines.Add('Valor prestação: R$ ' + FloatToStr(FormataCom2Casas(Prestacao)));
end;

function TFormTelaNegociacaoDivida.FormataCom6Casas(Valor : Double) : Double;
Var Dec3 : Double;
    Resultado, ValorSTR, ValorDEC : String;
begin
    if Pos(',',FloatToStr(Valor)) <> 0 then
       begin
          ValorSTR := Copy(FloatToStr(Valor),0,Pos(',',FloatToStr(Valor)) - 1);
          try
            Dec3 := StrToFloat(Copy(FloatToStr(Valor),Pos(',',FloatToStr(Valor))+1,6))/10;
            Dec3 := Round(Dec3);
            ValorDEC := Copy(FloatToStr(Valor),Pos(',',FloatToStr(Valor))+1,6);
          except
             try
               Dec3 := StrToFloat(Copy(FloatToStr(Valor),Pos(',',FloatToStr(Valor))+1,3))/10;
               Dec3 := Round(Dec3);
             except
               Dec3 := 0;
             end;
          end;
       end
    else
       ValorSTR := FloatToStr(Valor);

    if ValorDEC <> '' then
       Resultado := ValorSTR + ',' + ValorDEC
    else
       Resultado := ValorSTR;
    try
      StrToFloat(Resultado);
      Result := StrToFloat(Resultado);
    Except
       Result := 0;
    end;
end;

procedure TFormTelaNegociacaoDivida.CalculaJurosComVlrPrz;
var I : Integer;
    ResultadoDiv : String;
    S, A, B, T, PVista, Entrada, R, N, VFin, P : Double;
begin
   Capital := EditDivida.Value - EditEntrada.Value;
   ValorParcSJuro :=  Capital / Parcelas.Value;
   DifJuros := EditParcProposta.Value - ValorParcSJuro;
   TotalJuros := DifJuros * Parcelas.Value;
   TotalJuros := (TotalJuros / Capital);
   I := 0;
   PrazoMedio := 0;
   RefazTabelaNovasDup;
   TblDupNovas.DisableControls;
   while I < Parcelas.Value do
      begin
        I := I +1;
        PrazoMedio := PrazoMedio + (I * 30);
        TblDupNovas.Append;
        TblDupNovasParc.AsInteger := I;
        TblDupNovasValor.AsFloat := EditParcProposta.Value;
        TblDupNovasVcto.AsDateTime := IncDay(Date,(I*30));
        TblDupNovas.Post;
      end;
   TblDupNovas.EnableControls;
   PrazoMedio := PrazoMedio / Parcelas.Value;
   PrazoMedio := PrazoMedio / 30;
   if Frac(PrazoMedio) > 0 then
      PrazoMedio := Round(PrazoMedio);
{
   JuroMes := ((TotalJuros * 100) / PrazoMedio) * 30;
   Jrs.Text := FloatToStr(JuroMes);}

   R := EditParcProposta.Value;
   P := Capital;
   N := Parcelas.Value;
   S := FormataCom6Casas(P/R);
   T := FormataCom6Casas(1/S) - FormataCom6Casas(S/N/N);

   if T <> 0 then
      begin
         for I := 0 to 25 do
             begin
                A := FormataCom6Casas(Power((1+T),N));
                B := FormataCom6Casas(Power((1+T),N+1));
                T := FormataCom6Casas(T-(((A-1)/(T*A)-S)*B*T*T)/(1+T*(N+1)-B));
             end;
         T := FormataCom6Casas((T*10E8)/10E6);
      end;
   MemoResumo.Lines.Add('Juro Final: ' + FormatFloat('#,##0.00',T) + ' %');
   Jrs.Value := T;
   Jrs.Font.Color := clBlue;
   Alterar := False;
end;

procedure TFormTelaNegociacaoDivida.CalcularClick(Sender: TObject);
begin
  inherited;
   MemoResumo.Clear;
   if (Parcelas.Value = 0) and (EditDivida.Value > 0) and (EditParcProposta.Value <> 0) then
      begin
       if EditParcProposta.Value <> 0 then
         if (EditParcProposta.Value / (EditDivida.Value-EditEntrada.Value)) < ((Jrs.Value+5)/100) then
            begin
              Application.MessageBox(Pchar('O valor de prestação informado não é válido informe um valor maior que R$ ' + FloatToStr(StrToFloat(EditDivida.Text)*((Jrs.Value+5)/100))),'Atenção',MB_OK+MB_SYSTEMMODAL+MB_ICONINFORMATION);
              Abort;
            end;
        // Calculo só com Vlr prestação.
        EditarTabNovasDup := False;
        CalculaParcelas;
        Abort;
      end
   else if (Parcelas.Value > 0) and (EditDivida.Value > 0) and (EditParcProposta.Value = 0) then
      begin
         if EditParcProposta.Value <> 0 then
           if (EditParcProposta.Value / (EditDivida.Value-EditEntrada.Value)) < ((Jrs.Value+5)/100) then
              begin
                Application.MessageBox(Pchar('O valor de prestãção informado não é válido informe um valor maior que R$ ' + FloatToStr(StrToFloat(EditDivida.Text)*((Jrs.Value+5)/100))),'Atenção',MB_OK+MB_SYSTEMMODAL+MB_ICONINFORMATION);
                Abort;
              end;
        //Calculo com Nro de Parcelas e juros.
        EditarTabNovasDup := False;
        CalculaJuros;
        Abort;
      end
   else if (Parcelas.Value > 0) and (EditParcProposta.Value > 0) then
           begin
              //Calculo com Nro Parcelas e valor parcela.
              EditarTabNovasDup := True;
              CalculaJurosComVlrPrz;
              Abort;
           end;
   btImprimeCarnet.Enabled := False;
   LabelAceite.Enabled := True;
end;

procedure TFormTelaNegociacaoDivida.FormCreate(Sender: TObject);
begin
  inherited;
  EditarTabNovasDup := False;
  Alterar := True;
  TabDados.Show;
  Button1.Down := True;
  Jrs.Value := DM.SQLConfigCrediario.fieldbyname('CFCRN2PERCJURATRAS').AsFloat;
  PaginaPrincipal.TabWidth := 1;
  PaginaPrincipal.TabHeight := 1;
  EditDivida.Value := 0;
  OriginalOptions := DBGridDup.Options;
  OriginalOptionsNovasDup := DBGridNovasDup.Options;
  if DSMasterSys <> Nil then
     begin
       SQLGeral.Close;
       SQLGeral.DataSource := DSMasterSys;
       SQLGeral.Open;
       dsMasterSource.DataSet := DSMasterSys.DataSet;
     end
  else
     begin
       Informa('Esta tela deve ser iniciada apartir de outra');
       Abort;
     end;
  TabelaTemp.Open;
end;

procedure TFormTelaNegociacaoDivida.RefazTabelaTemp(Tabela : TTable);
begin
 try
   Tabela.Close;
   Tabela.DeleteTable;
   Tabela.CreateTable;
 except
   Tabela.CreateTable;
 end;
 Tabela.Open;
end;

procedure TFormTelaNegociacaoDivida.SQLGeralAfterOpen(DataSet: TDataSet);
begin
  inherited;
  RefazTabelaTemp(TabelaTemp);
  BatchMove.Execute;
end;

procedure TFormTelaNegociacaoDivida.DBGridDupDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
    if not TabelaTemp.IsEmpty then
      if (Column.Field.DataType = ftBoolean) and (Column.Field.FieldName <> '')then
        begin
          DBGridDup.Canvas.FillRect(Rect);
          DrawFrameControl(DBGridDup.Canvas.Handle, Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]);
        end;
end;

procedure TFormTelaNegociacaoDivida.DBGridDupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridDup.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridDup);
  if (Key = VK_Return) and (TabelaTemp.State in DSEditModes) then
      TabelaTemp.Post;
end;

procedure TFormTelaNegociacaoDivida.DBGridDupColExit(Sender: TObject);
begin
  inherited;
  if (DBGridDup.SelectedField.DataType = ftBoolean) then
    DBGridDup.Options := OriginalOptions;
end;

procedure TFormTelaNegociacaoDivida.TabelaTempAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not SQLDadosDup.Active then SQLDadosDup.Open;
end;

procedure TFormTelaNegociacaoDivida.DSSqlSomaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if SQLSomaSOMA.AsFloat > 0 then
     begin
       if ckAtualiza.Checked then
          EditDivida.Value := EditJuros.Value + SQLSomaSOMA.AsFloat
       else
          EditDivida.Value := SQLSomaSOMA.AsFloat;
     end
  else
     EditDivida.Value := 0;

  btImprimeCarnet.Enabled := False;

end;

procedure TFormTelaNegociacaoDivida.Button1Click(Sender: TObject);
begin
  inherited;
  TabDados.Show; 
end;

procedure TFormTelaNegociacaoDivida.Button2Click(Sender: TObject);
begin
  inherited;
//  TabNegociacao.Show;
end;

procedure TFormTelaNegociacaoDivida.DBGridDupDblClick(Sender: TObject);
begin
  inherited;
  if (DBGridDup.SelectedField.DataType = ftBoolean)  then
    SaveBoolean(DBGridDup);
end;

procedure TFormTelaNegociacaoDivida.Parcelas1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Parcelas.Font.Color := clWindowText;
end;

procedure TFormTelaNegociacaoDivida.Jrs1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Jrs.Font.Color := clWindowText;
end;

procedure TFormTelaNegociacaoDivida.SQLCupomBeforePost(DataSet: TDataSet);
begin
  inherited;
  Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                Dm.CodigoAutomatico('CUPOM', DSSQLCupom, DataSet, 3, 0);
  end ;
  CodNextCupom := DataSet.FIelds[0].AsString ;
end;

procedure TFormTelaNegociacaoDivida.SQLCupomNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLCupomCUPON2TOTITENS.Value    := 0 ;
  SQLCupomCUPON2DESC.Value        := 0 ;
  SQLCupomCUPON2ACRESC.Value      := 0 ;
  SQLCupomCUPON2TOTITENSRET.Value := 0 ;
  SQLCupomCUPON2CONVTAXA.Value    := 0 ;
  SQLCupomCUPOINROORDCOMPRA.Value := 0 ;
  SQLCupomCUPON2VLRCOMISSAO.Value := 0 ;
  SQLCupomCUPON2JUROATRAS.Value   := 0 ;
  SQLCupomCUPON2MULTAATRAS.Value  := 0 ;
  SQLCupomCUPON3CREDTAXA.Value    := 0 ;
  SQLCupomCUPOCCONSIG.Value       := 'N' ;
end;

procedure  TFormTelaNegociacaoDivida.GravarCupom;
begin
  TblDupNovas.First;

  SomaTotalDividaCJuros := 0;

  while not TblDupNovas.Eof do
    begin
      SomaTotalDividaCJuros := SomaTotalDividaCJuros + TblDupNovasValor.AsFloat;
      TblDupNovas.Next;
    end;

  TblDupNovas.First;

  SQLCupom.Close;
  SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
  SQLCupom.Open;
  SQLCupom.Append;
  if DM.SQLConfigVenda.fieldbyname('OPESICODCUPOM').Value > 0 then
    begin
      SQLCupomOPESICOD.Value        := DM.SQLConfigVenda.fieldbyname('OPESICODCUPOM').Value;
      if DM.ProcuraRegistro('OPERACAOESTOQUE',['OPESICOD'],[DM.SQLConfigVenda.fieldbyname('OPESICODCUPOM').AsString],1) then
        begin
          if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
            SQLCupomPLCTA15CODDEB.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;

          if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
            SQLCupomPLCTA15CODCRED.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
        end;
    end;

  SQLCupomEMPRICOD.AsString       := EmpresaPadrao;
  SQLCupomTERMICOD.Value          := TerminalAtual;
  SQLCupomCUPODEMIS.Value         := Date ;
  SQLCupomCLIEA13ID.Value         := dsMasterSource.DataSet.FieldByName('CLIEA13ID').AsString;
  SQLCupomPLRCICOD.Value          := 0;
  SQLCupomVENDICOD.Value          := 0;
  SQLCupomCONVICOD.Value          := 0;
  SQLCupomCUPOCSTATUS.Value       := 'N';
  SQLCupomCUPON2TOTITENS.Value    := Capital;
  SQLCupomCUPON2TOTITENSRET.Value := 0;
  SQLCupomCUPON2DESC.Value      := 0;
  SQLCupomCUPON2DESCITENS.Value := 0;
  SQLCupomCUPON2ACRESC.Value   := SomaTotalDividaCJuros - Capital;
  SQLCupomCUPOINRO.Asvariant := null;
  SQLCupomCUPOCTIPOPADRAO.Value := 'CRD';
  SQLCupomCUPON2CONVTAXA.Value    := 0 ;
  SQLCupomCUPOINROORDCOMPRA.Value := 0 ;
  SQLCupomCUPOA13IDTROCA.asvariant := null;
  SQLCupomCUPON2VLRCOMISSAO.Value := 0 ;
  SQLCupomCUPOA20CODANT.asvariant := null;
  SQLCupomCUPON2JUROATRAS.Value   := 0 ;
  SQLCupomCUPON2MULTAATRAS.Value  := 0 ;
  SQLCupomCUPON3BONUSTROCA.Value := 0;
  SQLCupomCUPODENTREGA.Asvariant  := null;
  SQLCupomTPVDICOD.Asvariant  := null;
  SQLCupomCUPON3CREDTAXA.Value := 0;
  SQLCupomCUPOCCONSIG.Value := 'N' ;
  SQLCupomCUPOV254OBS.AsString := 'Cupom Negociado Contratos: ' + Contratos;
  SQLCupomPENDENTE.Value          := 'S' ;
  SQLCupomREGISTRO.Value          := Now ;
  SQLCupom.Post;
  GravaItensCupom;
end ;

procedure TFormTelaNegociacaoDivida.GravaItensCupom;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Max(CTRCICOD) as Contador from CONTASRECEBER') ;
  DM.SQLTemplate.SQL.Add('where  TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
    CodProxCntRecTemp := DM.SQLTemplate.FieldByName('Contador').Value
  else
    CodProxCntRecTemp := 1 ;

  if not SQLContasReceber.Active then SQLContasReceber.Active := True;

  // Lacto Entrada da Negociacao
{  TblDupNovas.First;
  while not TblDupNovas.Eof do
    begin
      if TblDupNovasParc.Value = 0 then
        begin
          SQLCupomNumerario.Close;
          SQLCupomNumerario.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
          SQLCupomNumerario.Open;
          SQLCupomNumerario.Append ;
          SQLCupomNumerarioCUPOA13ID.Value   := CodNextCupom ;
          SQLCupomNumerarioNUMEICOD.Value    := 999 ;
          SQLCupomNumerarioCONMCSTATUS.Value := 'A' ;
          SQLCupomNumerarioCPNMN2VLR.Value   := TblDupNovasValor.Value;
          SQLCupomNumerarioPENDENTE.Value    := 'S' ;
          SQLCupomNumerarioREGISTRO.Value    := Now ;
          SQLCupomNumerarioCLIEA13ID.Value   := dsMasterSource.DataSet.FieldByName('CLIEA13ID').AsString;
          SQLCupomNumerario.Post;
        end;

      TblDupNovas.Next;
    end;  }

  // Lacto Parcelas Prazo  inclusive a Entrada
  TblDupNovas.First;
  while not TblDupNovas.Eof do
    begin
      Inc(CodProxCntRecTemp) ;
      CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                                 FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                                 Format('%.7d', [CodProxCntRecTemp]) ;

          SQLContasReceber.Append ;
          SQLContasReceberCTRCA13ID.Value             := CodNextContaRec ;
          SQLContasReceberEMPRICOD.AsString           := EmpresaPadrao ;
          SQLContasReceberTERMICOD.Value              := TerminalAtual ;
          SQLContasReceberCTRCICOD.Value              := CodProxCntRecTemp ;
          SQLContasReceberCLIEA13ID.Value             := dsMasterSource.DataSet.FieldByName('CLIEA13ID').AsString;
          SQLContasReceberCTRCCSTATUS.Value           := 'N' ;
          SQLContasReceberCTRCINROPARC.Value          := TblDupNovasParc.Value;
          SQLContasReceberCTRCDVENC.AsDateTime        := TblDupNovasVcto.AsDateTime;
          SQLContasReceberCTRCN2VLR.Value             := TblDupNovasValor.Value;
          SQLContasReceberCTRCN2DESCFIN.Value         := 0 ;
          SQLContasReceberNUMEICOD.Value              := 999 ;
          if DM.SQLConfigCrediario.fieldbyname('CFCRN2PERCJURATRAS').Value > 0 then
            SQLContasReceberCTRCN2TXJURO.Value := DM.SQLConfigCrediario.fieldbyname('CFCRN2PERCJURATRAS').Value ;
          if DM.SQLConfigCrediario.fieldbyname('CFCRN2PERCMULATRAS').Value > 0 then
            SQLContasReceberCTRCN2TXMULTA.Value := DM.SQLConfigCrediario.fieldbyname('CFCRN2PERCMULATRAS').Value ;
          SQLContasReceberCTRCA5TIPOPADRAO.Value      := 'CONSI' ;
          SQLContasReceberCTRCN2TOTREC.Value          := 0 ;
          SQLContasReceberCTRCN2TOTJUROREC.Value      := 0 ;
          SQLContasReceberCTRCN2TOTMULTAREC.Value     := 0 ;
          SQLContasReceberCTRCN2TOTDESCREC.Value      := 0 ;
          SQLContasReceberCUPOA13ID.Value             := CodNextCupom ;
          SQLContasReceberCTRCDEMIS.Value             := Date ;
          SQLContasReceberPENDENTE.Value              := 'S' ;
          SQLContasReceberREGISTRO.Value              := Now ;
          SQLContasReceber.Post;
      TblDupNovas.Next;
      Application.ProcessMessages;
    end;
end;

procedure TFormTelaNegociacaoDivida.MontaRelatorio;
begin
  RefazTabelaTemp(TermoRenovDividaRelDados);

  TermoRenovDividaRelDados.Append;
  TermoRenovDividaRelDadosCLIEA60RAZAOSOC.AsString :=  dsMasterSource.DataSet.FieldByName('CLIEA60RAZAOSOC').AsString;
  TermoRenovDividaRelDadosCLIEA60ENDRES.AsString   :=  dsMasterSource.DataSet.FieldByName('CLIEA60ENDRES').AsString;
  TermoRenovDividaRelDadosCLIEA60BAIRES.AsString   :=  dsMasterSource.DataSet.FieldByName('CLIEA60BAIRES').AsString;
  TermoRenovDividaRelDadosCLIEA60CIDRES.AsString   :=  dsMasterSource.DataSet.FieldByName('CLIEA60CIDRES').AsString;
  TermoRenovDividaRelDadosCLIEA2UFRES.AsString     :=  dsMasterSource.DataSet.FieldByName('CLIEA2UFRES').AsString;
  TermoRenovDividaRelDadosCLIEA14CGC.AsString      :=  dsMasterSource.DataSet.FieldByName('CLIEA14CGC').AsString;

  if DM.SQLEmpresa.Locate('EMPRICOD', EmpresaCorrente, [loCaseInsensitive]) then
     begin
       TermoRenovDividaRelDadosEMPRA60RAZAOSOC.AsString := DM.SQLEmpresa.FieldByName('EMPRA60RAZAOSOC').AsString;
       TermoRenovDividaRelDadosEMPRA60END.AsString      := DM.SQLEmpresa.FieldByName('EMPRA60END').AsString;
       TermoRenovDividaRelDadosEMPRA60BAI.AsString      := DM.SQLEmpresa.FieldByName('EMPRA60BAI').AsString;
       TermoRenovDividaRelDadosEMPRA60CID.AsString      := DM.SQLEmpresa.FieldByName('EMPRA60CID').AsString;
       TermoRenovDividaRelDadosEMPRA2UF.AsString        := DM.SQLEmpresa.FieldByName('EMPRA2UF').AsString;
       TermoRenovDividaRelDadosEMPRA14CGC.AsString      := DM.SQLEmpresa.FieldByName('EMPRA14CGC').AsString;
     end;
  TermoRenovDividaRelDados.Post;

  RefazTabelaTemp(TermorenovDividaRelCupDup);
  TabelaTemp.First;

  while not TabelaTemp.Eof do
    begin
      if TabelaTempSELECIONADA.AsBoolean then
        begin
           TermorenovDividaRelCupDup.Append;
           TermorenovDividaRelCupDupCUPOA13ID.AsString := TabelaTempCUPOA13ID.AsString;
           TermorenovDividaRelCupDupCUPOICOD.AsString := TabelaTempCUPOICOD.AsString;
           TermorenovDividaRelCupDupCUPODEMIS.AsString := TabelaTempCUPODEMIS.AsString;
           TermorenovDividaRelCupDupCUPON2TOTITENS.AsString := TabelaTempCUPON2TOTITENS.AsString;
           TermorenovDividaRelCupDupCUPON2DESC.AsString := TabelaTempCUPON2DESC.AsString;
           TermorenovDividaRelCupDupCUPON2ACRESC.AsString := TabelaTempCUPON2ACRESC.AsString;
           TermorenovDividaRelCupDup.Post;
           Application.ProcessMessages;
        end;
      TabelaTemp.Next;
    end;

  RefazTabelaTemp(TblSomatorio);

  TblSomatorio.Append;
  TblSomatorioDIVIDAINICIAL.AsFloat := DividaInicial;
  ValorExtenso(VExt,DividaInicial, '', '', 01, 200, ' ',3);
  TblSomatorioDIVIDAINICIALEXT.AsString := Trim(Vext[0]);
  TblSomatorioSOMADUP.AsFloat := SomaTotalDividaCJuros;
  ValorExtenso(VExt,SomaTotalDividaCJuros, '', '', 01, 200, ' ',3);
  TblSomatorioSOMAEXT.AsString := Trim(Vext[0]);
  TblSomatorioTOTALDENOVASPARCELAS.AsInteger := TblDupNovas.RecordCount;
  TblSomatorioNOVOCUPOM.AsString := SQLCupomCUPOA13ID.AsString;
  TblSomatorioDATANOVOCONTRATO.AsDateTime := SQLCupomCUPODEMIS.AsDateTime;
  TBLSOMAtorio.Post;
end;

procedure TFormTelaNegociacaoDivida.ImprimeCarne;
var NumParcelas : Integer;
    NroCupom : String;
begin
    //GRAVAR PARCELAS A PRAZO NA TABELA TEMPORARIA DE CARNE
    RefazTabelaTemp(TblCarne);

    NroCupom := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOINRO',  '''' + SQLCupomCUPOA13ID.AsString + '''') ;

    NumParcelas := SQLRecCount('CONTASRECEBER', 'where CUPOA13ID = ''' + SQLCupomCUPOA13ID.AsString + '''') ;

    SQLExec.Close ;
    SQLExec.SQL.Clear ;
    SQLExec.SQL.Add('select * from CONTASRECEBER') ;
    SQLExec.SQL.Add('where CUPOA13ID = ''' + SQLCupomCUPOA13ID.AsString + '''') ;
    SQLExec.Open ;
    SQLExec.First ;

    while not SQLExec.EOF do
      begin
        TblCarne.Append ;
        TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
        TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
        TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
        TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
        TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
        TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
        TblCarneMensagem.AsString       := '' ;
        TblCarneCliente.AsString        := dsMasterSource.DataSet.FieldByName('CLIEA60RAZAOSOC').AsString;
        TblCarneEndereco.AsString       := dsMasterSource.DataSet.FieldByName('CLIEA60ENDRES').AsString;
        TblCarneBairro.AsString         := dsMasterSource.DataSet.FieldByName('CLIEA60CIDRES').AsString;
        TblCarneCidade.AsString         := dsMasterSource.DataSet.FieldByName('CLIEA60BAIRES').AsString;
        TblCarneCodigoCliente.AsString  := dsMasterSource.DataSet.FieldByName('CLIEA13ID').AsString;
        TblCarneNumeroContrato.AsString := SQLCupomCUPOA13ID.AsString ;
        TblCarneNumeroParcela.AsString  := SQLExec.FieldByName('CTRCINROPARC').AsString ;
        TblCarneContadorParcelas.Value  := NumParcelas ;
        TblCarneDataVencimento.AsString := SQLExec.FieldByName('CTRCDVENC').AsString ;
        TblCarneValorParcela.AsString   := SQLExec.FieldByName('CTRCN2VLR').AsString ;
        TblCarneDataEmissao.AsString    := SQLExec.FieldByName('CTRCDEMIS').AsString ;
        TblCarneNroCupom.AsString       := NroCupom ;
        TblCarneVendedor.AsString       := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME', SQLLocate('CUPOM','CUPOA13ID','VENDICOD','''' + TblCarneNumeroContrato.AsString + ''''));
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','''' + TblCarneNumeroContrato.AsString + '''');
        TblCarneAcrescimo.AsString      := SQLLocate('CUPOM','CUPOA13ID','CUPON2ACRESC','''' + TblCarneNumeroContrato.AsString + '''');
        TblCarneValorDesconto.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON2DESC','''' + TblCarneNumeroContrato.AsString + '''');

        Dm.SQLTemplate.Close;
        Dm.SQLTemplate.SQL.Clear;
        Dm.SQLTemplate.SQL.Add('SELECT CPNMN2VLR FROM CUPOMNUMERARIO WHERE CONMCSTATUS = ''A'' AND ');
        Dm.SQLTemplate.SQL.Add('CUPOA13ID = ''' + TblCarneNumeroContrato.AsString + '''');
        Dm.SQLTemplate.Open;

        if not Dm.SQLTemplate.IsEmpty then
          TblCarneEntrada.Value           := Dm.SQLTemplate.FieldByName('CPNMN2VLR').AsFloat
        else
          TblCarneEntrada.Value           := 0;
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','''' + TblCarneNumeroContrato.AsString + '''');
        TblCarnePlano.AsString          := SQLLocate('PLANORECEBIMENTO','PLRCICOD','PLRCA60DESCR',SQLLocate('CUPOM','CUPOA13ID','PLRCICOD','''' + TblCarneNumeroContrato.AsString + ''''));

        TblCarne.Post ;

        SQLExec.Next ;

        Application.ProcessMessages;
      end ;
    if FileExists('CARNES.EXE') then
    begin
      if FileExists('ToScreen.Arq') then
        WinExec(Pchar('Carnes.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
      else
        WinExec(Pchar('Carnes.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show) ;
    end
    else
    if FileExists('CARNESITEM.EXE') then
      begin
        if FileExists('ToScreen.Arq') then
          WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
        else
          WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show);
      end
    else
      Informa('O programa de impressão de carnê não foi encontrado !') ;

end;

procedure TFormTelaNegociacaoDivida.RestauraControles;
begin
    SQLSoma.Close;
    SQLSoma.MacroByName('Selecao').AsString := '''000'''; // Restaura Seleção
    SQLSoma.Open;

    SQLGeral.Close;
    SQLGeral.Open;

    ListBox1.Clear; // Limpa Seleção
    MemoResumo.Clear;

    TabelaTemp.EnableControls;
    SQLDadosDup.EnableControls;
    TblDupNovas.EnableControls;

    btImprimeCarnet.Enabled := False;
    LabelAceite.Enabled := False;
    EditJuros.Value     := 0;
    DestroyWindow;
end;


procedure TFormTelaNegociacaoDivida.LabelAceiteClick(Sender: TObject);
Var PosTab1, PosTab2 : Pointer;
    Msg: String;
begin
  inherited;
  try
    Capital := EditDivida.Value;
    DividaInicial := EditDivida.Value;

    TabelaTemp.DisableControls;
    TblDupNovas.DisableControls;
    SQLDadosDup.DisableControls;

    PosTab1 := TabelaTemp.GetBookmark;
    PosTab2 := SQLDadosDup.GetBookmark;

    TabelaTemp.First;
    Msg := 'Você esta prestes a mudar o Status do(s) contrato(s) abaixo para ''Encerrado''. ' ;
    Contratos := '';
    while not TabelaTemp.Eof do
       begin
         if TabelaTempSELECIONADA.AsBoolean then
            begin
               Msg := Msg + Char(#13) + TabelaTempCUPOA13ID.AsString;
               Contratos := Contratos + TabelaTempCUPOA13ID.AsString + ', ';
               if TabelaTempTIPO.AsString = 'CP' then
                  Msg := Msg + '   Tipo: Cupom '
               else if TabelaTempTIPO.AsString = 'CP' then
                  Msg := Msg + '   Tipo: Nota Fiscal ';
            end;
         TabelaTemp.Next;
       end;
    Contratos := Copy(Contratos,0,length(Contratos) - 2);
    if Application.MessageBox(PChar(Msg + char(#13) + 'Isso baixará todas as parcelas pendentes do(s) contrato(s) e criará um novo contrato conforme negociado anteriormente.' + char(#13) + 'Deseja continuar?'),'Atenção...',MB_YESNO+MB_SYSTEMMODAL+MB_ICONQUESTION) = IdNo then
       begin
          TabelaTemp.EnableControls;
          SQLDadosDup.EnableControls;
          Abort;
          Exit;
       end;

    MakeWindowMessage('Gerando Novo Contrato!');

    GravarCupom;

    SQLDadosDup.First;
    TabelaTemp.First;

    while not TabelaTemp.Eof do
      begin
        if TabelaTempSELECIONADA.AsBoolean then
          begin
             SQLDadosDup.First;
             while not SQLDadosDup.Eof do
               begin
                  SQLExec.Close;
                  SQLExec.SQL.Text := 'update CONTASRECEBER set Pendente=''S'', CTRCCSTATUS = ''E'' where CUPOA13ID = ' + '''' + TabelaTempCUPOA13ID.AsString + '''';
                  SQLExec.ExecSQL;
                  Application.ProcessMessages;
                  SQLDadosDup.Next;
               end;
             if TabelaTempTIPO.AsString = 'CP' then
                begin
                   SQLExec.Close;
                   SQLExec.SQL.Text := 'update CUPOM set Pendente=''S'', CUPOCSTATUS = ''E'' ,  CUPOA13IDCUPNEG = ' + '''' + SQLCupomCUPOA13ID.AsString + '''' + ' where CUPOA13ID = ' + '''' + TabelaTempCUPOA13ID.AsString + '''';
                   SQLExec.ExecSQL;
                end;
             if TabelaTempTIPO.AsString = 'NF' then
                begin
                   SQLExec.Close;
                   SQLExec.SQL.Text := 'update NOTAFISCAL set Pendente=''S'', NOFICSTATUS = ''E'' ,  CUPOA13IDCUPNEG = ''' + SQLCupomCUPOA13ID.AsString + ''' where NOFIA13ID = ''' + TabelaTempCUPOA13ID.AsString + '''';
                   SQLExec.ExecSQL;
                end;
          end;
      TabelaTemp.Next;
      end;

    DestroyWindow;

    MontaRelatorio;

    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\TermoNovacaoDivida.rpt';
    Report.Execute;

    RefazTabelaNovasDup;
    RefazTabelaTemp(TabelaTemp);
    BatchMove.Execute;

    RestauraControles;

    btImprimeCarnet.Enabled := True;
    LabelAceite.Enabled := False;

  except
    on E:Exception do
      begin
        DestroyWindow;
        RestauraControles;
        raise Exception.Create('Não foi possivel concluir a operação.ANOTE O ERRO :' + E.Message);
    end;
  end;
end;

procedure TFormTelaNegociacaoDivida.TblDupNovasAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  LabelAceite.Enabled := False;
end;

procedure TFormTelaNegociacaoDivida.TblDupNovasAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  LabelAceite.Enabled := True;
  
end;

procedure TFormTelaNegociacaoDivida.DBGridNovasDup1ColEnter(
  Sender: TObject);
begin
  inherited;
  if (DBGridNovasDup.SelectedField.FieldName = 'Vcto') then
     DBGridNovasDup.Options := OriginalOptionsNovasDup + [dgEditing]
  else
     DBGridNovasDup.Options := OriginalOptionsNovasDup - [dgEditing];
end;

procedure TFormTelaNegociacaoDivida.DBGridNovasDup1ColExit(Sender: TObject);
begin
  inherited;
  DBGridNovasDup.Options := OriginalOptionsNovasDup - [dgEditing];
end;

procedure TFormTelaNegociacaoDivida.DBGridNovasDup1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
 {  if (Column.FieldName = 'Vcto') then
     begin
        DBGridNovasDup.Canvas.Brush.Color := $00EBEBEB;
        DBGridNovasDup.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end; }
end;

procedure TFormTelaNegociacaoDivida.TblDupNovasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  PosicaoGrid := TblDupNovas.GetBookmark;
  if TblDupNovas.State in [dsEdit]  then
     Estado := 'DsEdit';

end;

procedure TFormTelaNegociacaoDivida.TblDupNovasAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if (Estado = 'DsEdit') then
     AtualizaValorNoDBGrid;
  Estado := '';
  TblDupNovas.GotoBookmark(PosicaoGrid);

end;

procedure TFormTelaNegociacaoDivida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := nil;
end;

procedure TFormTelaNegociacaoDivida.TblDupNovasNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  if not Alterar then
     Abort;
end;

procedure TFormTelaNegociacaoDivida.DBGridNovasDup1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
     begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
     end;
end;

procedure TFormTelaNegociacaoDivida.EditParcPropostaChange(
  Sender: TObject);
begin
  inherited;
  if (SQLSomaSOMA.AsFloat > 0) and ((Parcelas.Value > 0) or (EditParcProposta.Value > 0)) then
       Calcular.Enabled := True
  else
       Calcular.Enabled := False;

   btImprimeCarnet.Enabled := False;
end;

procedure TFormTelaNegociacaoDivida.DBGridNovasDupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (DBGridNovasDup.SelectedField.FieldName = 'Vcto') then
     DBGridNovasDup.Options := OriginalOptionsNovasDup + [dgEditing]
  else
     DBGridNovasDup.Options := OriginalOptionsNovasDup - [dgEditing];
end;

procedure TFormTelaNegociacaoDivida.DBGridNovasDupCellClick(
  Column: TColumn);
begin
  inherited;
  if (DBGridNovasDup.SelectedField.FieldName = 'Vcto') then
     DBGridNovasDup.Options := OriginalOptionsNovasDup + [dgEditing]
  else
     DBGridNovasDup.Options := OriginalOptionsNovasDup - [dgEditing];
end;

procedure TFormTelaNegociacaoDivida.btImprimeCarnetClick(Sender: TObject);
begin
  inherited;
  ImprimeCarne;
end;

procedure TFormTelaNegociacaoDivida.DSTblDupNovasDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  btImprimeCarnet.Enabled := False;
end;

procedure TFormTelaNegociacaoDivida.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  Dm.CodigoAutomatico('CONTASRECEBER',nil,DataSet,3,0);
end;

procedure TFormTelaNegociacaoDivida.SQLContasReceberPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
 ID : String;  
begin
  inherited;
  DataSet.Fields[3].AsInteger:=DataSet.Fields[3].AsInteger + 1;
  ID:=Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.Fields[3].asInteger]);
  DataSet.Fields[0].asString:=ID+DM.DigitVerifEAN(ID);
  Action:=DaRetry;
end;

procedure TFormTelaNegociacaoDivida.ckAtualizaClick(Sender: TObject);
begin
  inherited;
  if ckAtualiza.Checked then
     EditDivida.Value := EditJuros.Value + SQLSomaSOMA.AsFloat
  else
     EditDivida.Value := SQLSomaSOMA.AsFloat;

end;

procedure TFormTelaNegociacaoDivida.SQLGeralBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//  SQLGeral.MacroByName('HOJE').AsString := '''' + FormatDateTime('mm/dd/yyyy',Today) + '''';
  Application.ProcessMessages;
end;

procedure TFormTelaNegociacaoDivida.DSTabelaTempDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SQLDadosDup.Close;
  SQLDadosDup.MacroByName('MCupom').AsString := '''' + TabelaTempCUPOA13ID.AsString + '''';
  SQLDadosDup.Open;
end;

procedure TFormTelaNegociacaoDivida.ReportWindowClose(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Operação concluída com sucesso!'+char(#13)+'Deseja imprimir o carne agora ?','Atenção',MB_YESNO+MB_ICONINFORMATION+MB_SYSTEMMODAL) = idYes then
     ImprimeCarne;
end;

procedure TFormTelaNegociacaoDivida.SbRecalcularClick(Sender: TObject);
var
  Key : Word;
  JurosPParc,PercJuros : Currency;
begin
  inherited;
  Key := VK_SPACE;
  TabelaTemp.First;
  EditJuros.Value := 0;
  while not TabelaTemp.Eof do
    begin
      JurosPParc := 0;
      if EdTxJuro.Value > 0 then
        PercJuros := EdTxJuro.Value
      else
        PercJuros := SQLDadosDupCTRCN2TXJURO.Value;

      while not SQLDadosDup.Eof do
         begin
            JurosPParc := JurosPParc + CalculaJuroMultaDesc((SQLDadosDupCTRCN2VLR.AsFloat - (SQLDadosDupCTRCN2TOTJUROREC.AsFloat + SQLDadosDupCTRCN2TOTMULTAREC.AsFloat + SQLDadosDupCTRCN2TOTMULTAREC.AsFloat - SQLDadosDupCTRCN2TOTDESCREC.AsFloat)),
                                                                      PercJuros,
                                                                      SQLDadosDupCTRCDVENC.AsDateTime,
                                                                      Today,
                                                                      0,
                                                                      DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                                                      'Juro',
                                                                      SQLDadosDupCTRCA13ID.asstring,
                                                                      SQLDadosDupCTRCINROPARC.AsString) ;
            SQLDadosDup.Next;
         end;
      if TabelaTempSELECIONADA.AsBoolean then
        begin
           ListBox1.Items.Add(''''+TabelaTempCUPOA13ID.AsString+'''');
           EditJuros.Value := EditJuros.Value + JurosPParc;
        end
      else
        begin
           ListBox1.Items.Delete(ListBox1.Items.IndexOf(''''+TabelaTempCUPOA13ID.AsString+''''));
           EditJuros.Value := EditJuros.Value - JurosPParc;
        end;

      TabelaTemp.Next;
    end;
end;

end.
