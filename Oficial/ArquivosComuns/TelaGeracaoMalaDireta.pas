unit TelaGeracaoMalaDireta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Grids, DBGrids, DB, DBTables, Buttons, jpeg,
  ExtCtrls, StdCtrls, RXCtrls, RxQuery, RxLookup, RxDBComb, ppBands,
  ppPrnabl, ppClass, ppCtrls, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppDBBDE, Mask, ToolEdit, ppVar, ppBarCod, ppStrtch,
  ppRichTx, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaGeracaoMalaDireta = class(TFormTelaGeralTEMPLATE)
    TblMalaDiretaCli: TTable;
    TblMalaDiretaCliCLIEA13ID: TStringField;
    TblMalaDiretaCliCLIEA60RAZAOSOC: TStringField;
    TblMalaDiretaCliCLIEA60ENDRES: TStringField;
    TblMalaDiretaCliCLIEA60BAIRES: TStringField;
    TblMalaDiretaCliCLIEA60CIDRES: TStringField;
    TblMalaDiretaCliCLIEA2UFRES: TStringField;
    TblMalaDiretaCliCLIEA8CEPRES: TStringField;
    TblMalaDiretaCliCONTATO: TStringField;
    TblMalaDiretaCliCLIEA15FONE: TStringField;
    TblMalaDiretaCliCLIEA30OUTROSDOC: TStringField;
    DSTblMalaDiretaCli: TDataSource;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    LBTotalRegistros: TLabel;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA60URL: TStringField;
    SQLClienteCLIEN2RENDA: TFloatField;
    SQLClienteCLIEN2LIMITECRED: TFloatField;
    SQLClienteCLIEA60NOMEPAI: TStringField;
    SQLClienteCLIEA60NOMEMAE: TStringField;
    SQLClienteCLIEDNASC: TDateTimeField;
    SQLClienteCLIECESTADOCIVIL: TStringField;
    SQLClienteCLIEA60CONJUGE: TStringField;
    SQLClienteCLIEA60CONJUGEMAE: TStringField;
    SQLClienteCLIEN2CONJUGERENDA: TFloatField;
    SQLClienteCLIEDNASCCONJUGE: TDateTimeField;
    SQLClienteCLIEA60CONJUGEEMPR: TStringField;
    SQLClienteCLIEA15CONJFONEMPR: TStringField;
    SQLClienteCLIEA60EMPRESA: TStringField;
    SQLClienteCLIEA60ENDEMPRESA: TStringField;
    SQLClienteCLIEA60BAIEMPRESA: TStringField;
    SQLClienteCLIEA60CIDEMPRESA: TStringField;
    SQLClienteCLIEA2UFEMPRESA: TStringField;
    SQLClienteCLIEA8CEPEMPRESA: TStringField;
    SQLClienteCLIEDAMISEMPRESA: TDateTimeField;
    SQLClienteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteBANCA5COD: TStringField;
    SQLClienteCLIEA5AGENCIA: TStringField;
    SQLClienteCLIEA10CONTA: TStringField;
    SQLClienteCLIEA60TITULAR: TStringField;
    SQLClienteCLIEDABERTCONTA: TDateTimeField;
    SQLClienteTPCLICOD: TIntegerField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLClientePROFICOD: TIntegerField;
    SQLClienteVENDICOD: TIntegerField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteCLIEA254PATHFOTO: TStringField;
    SQLClienteCLIECRECAVISATRASO: TStringField;
    SQLClienteCLIEA30NATURALIDADE: TStringField;
    SQLClientePENDENTE: TStringField;
    SQLClienteREGISTRO: TDateTimeField;
    SQLClienteCLIEA60EMAILCONJUG: TStringField;
    SQLClienteCLIEDCASAMENTO: TDateTimeField;
    SQLClienteTPRCICOD: TIntegerField;
    SQLClienteCLIEA60ENDCOB: TStringField;
    SQLClienteCLIEA60BAICOB: TStringField;
    SQLClienteCLIEA60CIDCOB: TStringField;
    SQLClienteCLIEA2UFCOB: TStringField;
    SQLClienteCLIEA8CEPCOB: TStringField;
    SQLClientePLRCICOD: TIntegerField;
    SQLClienteCLIEIDIAVCTOCARTAO: TIntegerField;
    SQLClienteROTAICOD: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    Label69: TLabel;
    ComboTipoCliente: TRxDBLookupCombo;
    DSSQLTipoCliente: TDataSource;
    SQLTipoCliente: TRxQuery;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    Label2: TLabel;
    ComboCliente: TRxDBLookupCombo;
    SQLClienteAUX: TRxQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    BCDField1: TFloatField;
    BCDField2: TFloatField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateTimeField1: TDateTimeField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    BCDField3: TFloatField;
    DateTimeField2: TDateTimeField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    DateTimeField3: TDateTimeField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    DateTimeField4: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    DateTimeField8: TDateTimeField;
    DateTimeField9: TDateTimeField;
    DateTimeField10: TDateTimeField;
    StringField46: TStringField;
    StringField47: TStringField;
    IntegerField7: TIntegerField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    StringField56: TStringField;
    IntegerField8: TIntegerField;
    DSSQLClienteAUX: TDataSource;
    RadioEmail: TRadioGroup;
    DSSQLMotBloq: TDataSource;
    SQLMotBloq: TRxQuery;
    SQLMotBloqMTBLICOD: TIntegerField;
    SQLMotBloqMTBLA60DESCR: TStringField;
    Label5: TLabel;
    ComboMotivoBloqueio: TRxDBLookupCombo;
    SQLClienteDependente: TRxQuery;
    SQLClienteDependenteCLIEA13ID: TStringField;
    SQLClienteDependenteEMPRICOD: TIntegerField;
    SQLClienteDependenteCLIEICOD: TIntegerField;
    SQLClienteDependenteCLIEA5FISJURID: TStringField;
    SQLClienteDependenteCLIEA14CGC: TStringField;
    SQLClienteDependenteCLIEA20IE: TStringField;
    SQLClienteDependenteCLIEA11CPF: TStringField;
    SQLClienteDependenteCLIEA10RG: TStringField;
    SQLClienteDependenteCLIEA60RAZAOSOC: TStringField;
    SQLClienteDependenteCLIEA60NOMEFANT: TStringField;
    SQLClienteDependenteCLIEA60CONTATO: TStringField;
    SQLClienteDependenteCLIEA15FONE1: TStringField;
    SQLClienteDependenteCLIEA15FONE2: TStringField;
    SQLClienteDependenteCLIEA15FAX: TStringField;
    SQLClienteDependenteCLIEA30OUTROSDOC: TStringField;
    SQLClienteDependenteCLIECSEXO: TStringField;
    SQLClienteDependenteCLIEA60PROFISSAO: TStringField;
    SQLClienteDependenteCLIEA60ENDRES: TStringField;
    SQLClienteDependenteCLIEA60BAIRES: TStringField;
    SQLClienteDependenteCLIEA60CIDRES: TStringField;
    SQLClienteDependenteCLIEA2UFRES: TStringField;
    SQLClienteDependenteCLIEA8CEPRES: TStringField;
    SQLClienteDependenteCLIEA60EMAIL: TStringField;
    SQLClienteDependenteCLIEA60URL: TStringField;
    SQLClienteDependenteCLIEN2RENDA: TFloatField;
    SQLClienteDependenteCLIEN2LIMITECRED: TFloatField;
    SQLClienteDependenteCLIEA60NOMEPAI: TStringField;
    SQLClienteDependenteCLIEA60NOMEMAE: TStringField;
    SQLClienteDependenteCLIEDNASC: TDateTimeField;
    SQLClienteDependenteCLIECESTADOCIVIL: TStringField;
    SQLClienteDependenteCLIEA60CONJUGE: TStringField;
    SQLClienteDependenteCLIEA60CONJUGEMAE: TStringField;
    SQLClienteDependenteCLIEN2CONJUGERENDA: TFloatField;
    SQLClienteDependenteCLIEDNASCCONJUGE: TDateTimeField;
    SQLClienteDependenteCLIEA60CONJUGEEMPR: TStringField;
    SQLClienteDependenteCLIEA15CONJFONEMPR: TStringField;
    SQLClienteDependenteCLIEA60EMPRESA: TStringField;
    SQLClienteDependenteCLIEA60ENDEMPRESA: TStringField;
    SQLClienteDependenteCLIEA60BAIEMPRESA: TStringField;
    SQLClienteDependenteCLIEA60CIDEMPRESA: TStringField;
    SQLClienteDependenteCLIEA2UFEMPRESA: TStringField;
    SQLClienteDependenteCLIEA8CEPEMPRESA: TStringField;
    SQLClienteDependenteCLIEDAMISEMPRESA: TDateTimeField;
    SQLClienteDependenteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteDependenteBANCA5COD: TStringField;
    SQLClienteDependenteCLIEA5AGENCIA: TStringField;
    SQLClienteDependenteCLIEA10CONTA: TStringField;
    SQLClienteDependenteCLIEA60TITULAR: TStringField;
    SQLClienteDependenteCLIEDABERTCONTA: TDateTimeField;
    SQLClienteDependenteTPCLICOD: TIntegerField;
    SQLClienteDependenteMTBLICOD: TIntegerField;
    SQLClienteDependentePROFICOD: TIntegerField;
    SQLClienteDependenteVENDICOD: TIntegerField;
    SQLClienteDependenteCLIEDCAD: TDateTimeField;
    SQLClienteDependenteCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteDependenteCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteDependenteCLIEA254PATHFOTO: TStringField;
    SQLClienteDependenteCLIECRECAVISATRASO: TStringField;
    SQLClienteDependenteCLIEA30NATURALIDADE: TStringField;
    SQLClienteDependenteCLIECRECEBECARTAO: TStringField;
    SQLClienteDependenteCLIEDENVCARTIMP: TDateTimeField;
    SQLClienteDependenteCLIEDRETCARTIMP: TDateTimeField;
    SQLClienteDependenteCLIEDENVCARTCLI: TDateTimeField;
    SQLClienteDependenteCLIEA10CODCONV: TStringField;
    SQLClienteDependenteCLIEA10CODANT: TStringField;
    SQLClienteDependenteCLIEA20NROCARTCRED: TStringField;
    SQLClienteDependentePENDENTE: TStringField;
    SQLClienteDependenteREGISTRO: TDateTimeField;
    SQLClienteDependenteCLIEA35NROCARTCRED: TStringField;
    SQLClienteDependenteCLIEA60EMAILCONJUG: TStringField;
    SQLClienteDependenteCLIEDCASAMENTO: TDateTimeField;
    SQLClienteDependenteTPRCICOD: TIntegerField;
    SQLClienteDependenteCLIEA60ENDCOB: TStringField;
    SQLClienteDependenteCLIEA60BAICOB: TStringField;
    SQLClienteDependenteCLIEA60CIDCOB: TStringField;
    SQLClienteDependenteCLIEA2UFCOB: TStringField;
    SQLClienteDependenteCLIEA8CEPCOB: TStringField;
    SQLClienteDependentePLRCICOD: TIntegerField;
    SQLClienteDependenteCLIEIDIAVCTOCARTAO: TIntegerField;
    SQLClienteDependenteCLIEN2VLRALUGUEL: TFloatField;
    SQLClienteDependenteCLDPICOD: TIntegerField;
    SQLClienteDependenteCLDPA60NOME: TStringField;
    SQLClienteDependenteCLDPA15PARENTESCO: TStringField;
    SQLClienteDependenteCLDPCAUTORIZADO: TStringField;
    SQLClienteDependenteCLDPDNASC: TDateTimeField;
    SQLClienteDependenteCLDPA10RG: TStringField;
    SQLClienteDependenteCLDPA11CPF: TStringField;
    SQLClienteDependenteCLDPA15FONE: TStringField;
    SQLClienteDependenteCLDPA60EMAIL: TStringField;
    DSSQLClienteDependente: TDataSource;
    Label6: TLabel;
    ComboMotivobloqDif: TRxDBLookupCombo;
    SQLMotBloqDif: TRxQuery;
    IntegerField11: TIntegerField;
    StringField70: TStringField;
    DSSQLMotBloqDif: TDataSource;
    Label7: TLabel;
    Panel2: TPanel;
    Label9: TLabel;
    ppBDEPipeline: TppBDEPipeline;
    ppReportEtiq2Col: TppReport;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppReportEtiq3Col: TppReport;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    RadioEtiqueta: TRadioGroup;
    GrupDatasAniversario: TGroupBox;
    GroupPeriodoIni: TGroupBox;
    Label3: TLabel;
    ComboDiaIni: TComboBox;
    ComboMesIni: TComboBox;
    GroupPeriodoFin: TGroupBox;
    Label4: TLabel;
    ComboDiaFin: TComboBox;
    ComboMesFin: TComboBox;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DataUltCompra: TDateEdit;
    ppListagem: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine5: TppLine;
    ppSystemVariable4: TppSystemVariable;
    TblMalaDiretaCliCLIEDNASC: TDateTimeField;
    ppLabel3: TppLabel;
    ppDBText7: TppDBText;
    RadioOrdem: TRadioGroup;
    ppEtiqCdBarrasCliente: TppReport;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppDBText20: TppDBText;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppDBBarCode1: TppDBBarCode;
    ppEnvelopeDestinatario: TppReport;
    ppDetailBand5: TppDetailBand;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppEnvelopeRemetente: TppReport;
    ppDetailBand6: TppDetailBand;
    ppLabel9: TppLabel;
    ppNomeFantasia: TppLabel;
    ppEndereco: TppLabel;
    ppCidade: TppLabel;
    ppBairro: TppLabel;
    ppCep: TppLabel;
    SQLClienteCLIECATIVO: TStringField;
    SQLClienteCLIECVNDCHEQ: TStringField;
    SQLClienteCLIECVNDCRED: TStringField;
    CKAtivo: TCheckBox;
    ppCarteiraCliente: TppReport;
    ppDetailBand7: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBBarCode2: TppDBBarCode;
    LBDTVenc: TppLabel;
    ppDBText27: TppDBText;
    LBEmissao: TppLabel;
    PipeCarta: TppBDEPipeline;
    ReportCartas: TppReport;
    ppDetailBand8: TppDetailBand;
    ppTexto: TppRichText;
    ppImage1: TppImage;
    CKTodosMotivosBloq: TCheckBox;
    GroupBox2: TGroupBox;
    DataUltCompra1: TDateEdit;
    CKUsaEndCob: TCheckBox;
    TblMalaDiretaCliCLIEA11CPF: TStringField;
    TblMalaDiretaCliCLIEA10RG: TStringField;
    TblMalaDiretaCliCLIEA60NOMEPAI: TStringField;
    TblMalaDiretaCliCLIEA60NOMEMAE: TStringField;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    DataUltCompra2: TDateEdit;
    ComboEmpresa: TRxDBLookupCombo;
    Label10: TLabel;
    SQLEmpresa: TRxQuery;
    dsSQLEmpresa: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppDBText32: TppDBText;
    TblMalaDiretaCliCLIEA15FONE2: TStringField;
    ppBDEPipelineppField16: TppField;
    BtLimparCliente: TSpeedButton;
    BtLimparTabela: TSpeedButton;
    BTGerarLista: TSpeedButton;
    BTimprimir: TSpeedButton;
    BtArquivoTXT: TSpeedButton;
    ckSPC: TCheckBox;
    ppDBText33: TppDBText;
    GroupBox3: TGroupBox;
    EditBairro: TEdit;
    procedure BtImpressaoClick(Sender: TObject);
    procedure BtLimparClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtLimparTabelaClick(Sender: TObject);
    procedure BTGerarListaClick(Sender: TObject);
    procedure BtArquivoTXTClick(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppDetailBand7BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoMalaDireta: TFormTelaGeracaoMalaDireta;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaGeracaoMalaDireta.BtImpressaoClick(Sender: TObject);
begin
  inherited;
  case RadioEtiqueta.ItemIndex of
     0 : ppReportEtiq2Col.Print;
     1 : ppReportEtiq3Col.Print;
     2 : ppListagem.Print;
     3 : ppEtiqCdBarrasCliente.Print;
     4 : ppEnvelopeRemetente.Print;
     5 : ppEnvelopeDestinatario.Print;
     6 : begin
           if FileExists('CarteiraCliente.exe') then
             WinExec('CarteiraCliente.exe',sw_Show)
           else
             ppCarteiraCliente.Print;
         end;
     7 : begin
           ppTexto.LoadFromFile(DM.SQLConfigCrediario.fieldbyname('CFCRA255PATHCARTPE').Value) ;
           ReportCartas.Print ;
         end;
  end;
end;

procedure TFormTelaGeracaoMalaDireta.BtLimparClienteClick(Sender: TObject);
begin
  inherited;
  TblMalaDiretaCli.Delete;

  if TblMalaDiretaCli.RecordCount > 0 then
    LBTotalRegistros.Caption := IntToStr(TblMalaDiretaCli.RecordCount) + ' Clientes Selecionados'
  else
    LBTotalRegistros.Caption := 'Zero Clientes Selecionados';
  LBTotalRegistros.Update;

end;

procedure TFormTelaGeracaoMalaDireta.FormCreate(Sender: TObject);
begin
  inherited;
    TblMalaDiretaCli.Close ;
    try
      TblMalaDiretaCli.DeleteTable ;
      TblMalaDiretaCli.CreateTable ;
    except
      TblMalaDiretaCli.CreateTable ;
    end ;
    TblMalaDiretaCli.Open ;

  if TblMalaDiretaCli.RecordCount > 0 then
    LBTotalRegistros.Caption := IntToStr(TblMalaDiretaCli.RecordCount) + ' Clientes Selecionados'
  else
    LBTotalRegistros.Caption := 'Zero Clientes Selecionados';
  LBTotalRegistros.Update;

  SQLTipoCliente.Open;
  SQLMotBloq.Open;
  SQLMotBloqDif.Open;
  SQLClienteAUX.Open;
  SQLEmpresa.Open;
end;

procedure TFormTelaGeracaoMalaDireta.BtLimparTabelaClick(Sender: TObject);
begin
  inherited;
  while not TblMalaDiretaCli.eof do
    TblMalaDiretaCli.Delete;

  if TblMalaDiretaCli.RecordCount > 0 then
    LBTotalRegistros.Caption := IntToStr(TblMalaDiretaCli.RecordCount) + ' Clientes Selecionados'
  else
    LBTotalRegistros.Caption := 'Zero Clientes Selecionados';
  LBTotalRegistros.Update;
end;

procedure TFormTelaGeracaoMalaDireta.BTGerarListaClick(Sender: TObject);
begin
  inherited;
  SQLCliente.Close;
  SQLClienteDependente.Close;

  Case RadioEmail.ItemIndex of
      0 : begin
            SQLCliente.MacroByName('MFiltroMes').Value := '0=0' ;
            SQLCliente.MacroByName('MFiltroDia').Value := '0=0' ;
          end;
      1 : begin
            SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From ClIEDCASAMENTO) Between ' + ComboMesIni.Text + ' and ' + ComboMesFin.Text;
            SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From ClIEDCASAMENTO) Between ' + ComboDiaIni.Text + ' and ' +  ComboDiaFin.Text;
          end;
      2 : begin
            SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From CLIEDNASCCONJUGE) Between ' + ComboMesIni.Text + ' and ' + ComboMesFin.Text;
            SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From CLIEDNASCCONJUGE) Between ' + ComboDiaIni.Text + ' and ' +  ComboDiaFin.Text;
          end;
      3 : begin
            SQLClienteDependente.MacroByName('MFiltroMes').Value := 'Extract(Month From ClienteDependente.CLDPDNASC)';
            SQLClienteDependente.MacroByName('MFiltroDia').Value := 'Extract(Day From ClienteDependente.CLDPDNASC)';
          end;
      4 : begin
            SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From CLIEDNASC) Between ' + ComboMesIni.Text + ' and ' + ComboMesFin.Text;
            SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From CLIEDNASC) Between ' + ComboDiaIni.Text + ' and ' +  ComboDiaFin.Text;
          end;
      5 : begin
            SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From CLIEDNASC) Between ' + ComboMesIni.Text + ' and ' + ComboMesFin.Text;
            SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From CLIEDNASC) Between ' + ComboDiaIni.Text + ' and ' +  ComboDiaFin.Text;
          end;
      6 : begin
            SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From Cliente.CLIEDNASC)';
            SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From Cliente.CLIEDNASC)';
          end;
  end;

  if ComboCliente.Value <> '' then
    SQLCliente.MacrobyName('MCliente').Value := 'CLIEA13ID = ''' + ComboCliente.Value+''''
  else
    SQLCliente.MacrobyName('MCliente').Value := '0=0';

  if ComboTipoCliente.Value <> '' then
    SQLCliente.MacrobyName('MTipoCliente').Value := 'TPCLICOD = ' + ComboTipoCliente.Value
  else
    SQLCliente.MacrobyName('MTipoCliente').Value := '0=0';

  if ComboMotivoBloqueio.Value <> '' then
    SQLCliente.MacrobyName('MMotBloq').Value := 'MTBLICOD = ' + ComboMotivoBloqueio.Value
  else
    SQLCliente.MacrobyName('MMotBloq').Value := '0=0';

  if CKTodosMotivosBloq.Checked then
    SQLCliente.MacrobyName('MMotBloq').Value := 'MTBLICOD > 0 ';

  if ComboEmpresa.Value <> '' then
    SQLCliente.MacrobyName('MEmpresa').Value := 'EMPRICOD = ' + ComboEmpresa.Value;

  if ComboMotivobloqDif.Value <> '' then
    SQLCliente.MacrobyName('MMotBloqDif').Value := '(MTBLICOD <> ' + ComboMotivobloqDif.Value +' or MTBLICOD is null)'
  else
    SQLCliente.MacrobyName('MMotBloqDif').Value := '0=0';

  if DataUltCompra.Date > 0 then
    SQLCliente.MacrobyName('MFiltroDataCompra').Value := 'CLIEDULTCOMPRA <= ''' + FormatDateTime('mm/dd/yyyy', DataUltCompra.Date) + ''''
  else
    SQLCliente.MacrobyName('MFiltroDataCompra').Value := '0=0';

  if (DataUltCompra1.Date > 0) and (DataUltCompra2.Date > 0) then
    SQLCliente.MacrobyName('MFiltroDataCompra').Value := 'CLIEDULTCOMPRA >= ''' + FormatDateTime('mm/dd/yyyy', DataUltCompra1.Date) + ''' and ' +
                                                         'CLIEDULTCOMPRA <= ''' + FormatDateTime('mm/dd/yyyy', DataUltCompra2.Date) + ''''
  else
    SQLCliente.MacrobyName('MFiltroDataCompra').Value := '0=0';


  Case RadioOrdem.ItemIndex of
      0 : SQLCliente.MacrobyName('MOrdem').Value := ' order by CLIEA60RAZAOSOC';
      1 : SQLCliente.MacrobyName('MOrdem').Value := ' order by CLIEA60CIDRES, CLIEA60BAIRES';
      2 : SQLCliente.MacrobyName('MOrdem').Value := ' order by  Extract(Month From Cliente.CLIEDNASC), Extract(Day From Cliente.CLIEDNASC)';
  end;
  if CKAtivo.Checked then
    SQLCliente.MacrobyName('MAtivo').Value := 'CLIECATIVO = ''S'''
  else
    SQLCliente.MacrobyName('MAtivo').Value := 'CLIECATIVO = ''N''';

  if ckSPC.Checked then
    SQLCliente.MacrobyName('Mspc').Value := 'CLIEA13ID not in (select CLIEA13ID from CARTAAVISOSPC)'
  else
    SQLCliente.MacrobyName('Mspc').Value := '0=0';

  if EditBairro.Text <> '' then
    SQLCliente.MacrobyName('MBairro').Value := 'CLIEA60BAIRES = ''' + EditBairro.Text +''''
  else
    SQLCliente.MacrobyName('MBairro').Value := '0=0';

  SQLCliente.open;
  SQLCliente.First;
  while not SQLCliente.Eof do
    begin
      TblMalaDiretaCli.Append;
      TblMalaDiretaCliCLIEA13ID.Value        := SQLClienteCLIEA13ID.Value;
      TblMalaDiretaCliCLIEA60RAZAOSOC.Value  := SQLClienteCLIEA60RAZAOSOC.Value;
      TblMalaDiretaCliCLIEA11CPF.Value       := SQLClienteCLIEA11CPF.Value;
      TblMalaDiretaCliCLIEA10RG.Value        := SQLClienteCLIEA10RG.Value;
      TblMalaDiretaCliCLIEA60NOMEPAI.Value   := SQLClienteCLIEA60NOMEPAI.Value;
      TblMalaDiretaCliCLIEA60NOMEMAE.Value   := SQLClienteCLIEA60NOMEMAE.Value;
      if not CKUsaEndCob.Checked then
        begin
          TblMalaDiretaCliCLIEA60ENDRES.Value    := SQLClienteCLIEA60ENDRES.Value;
          TblMalaDiretaCliCLIEA60BAIRES.Value    := SQLClienteCLIEA60BAIRES.Value;
          TblMalaDiretaCliCLIEA60CIDRES.Value    := SQLClienteCLIEA60CIDRES.Value;
          TblMalaDiretaCliCLIEA2UFRES.Value      := SQLClienteCLIEA2UFRES.Value;
          TblMalaDiretaCliCLIEA8CEPRES.Value     := SQLClienteCLIEA8CEPRES.Value;
        end
      else
        begin
          TblMalaDiretaCliCLIEA60ENDRES.Value    := SQLClienteCLIEA60ENDCOB.Value;
          TblMalaDiretaCliCLIEA60BAIRES.Value    := SQLClienteCLIEA60BAICOB.Value;
          TblMalaDiretaCliCLIEA60CIDRES.Value    := SQLClienteCLIEA60CIDCOB.Value;
          TblMalaDiretaCliCLIEA2UFRES.Value      := SQLClienteCLIEA2UFCOB.Value;
          TblMalaDiretaCliCLIEA8CEPRES.Value     := SQLClienteCLIEA8CEPCOB.Value;
        end;

      TblMalaDiretaCliCONTATO.Value          := SQLClienteCLIEA60CONTATO.Value;
      TblMalaDiretaCliCLIEA15FONE.Value      := SQLClienteCLIEA15FONE1.Value;
      TblMalaDiretaCliCLIEA15FONE2.Value     := SQLClienteCLIEA15FONE2.Value;
      TblMalaDiretaCliCLIEA30OUTROSDOC.Value := SQLClienteCLIEA30OUTROSDOC.Value;
      if SQLClienteCLIEDNASC.AsString <> '' then
        TblMalaDiretaCliCLIEDNASC.Value    := SQLClienteCLIEDNASC.Value
      else
        TblMalaDiretaCliCLIEDNASC.AsString := '';
      TblMalaDiretaCli.Post;
      SQLCliente.Next;
    end;

  if TblMalaDiretaCli.RecordCount > 0 then
    LBTotalRegistros.Caption := IntToStr(TblMalaDiretaCli.RecordCount) + ' Clientes Selecionados'
  else
    LBTotalRegistros.Caption := 'Zero Clientes Selecionados';
  LBTotalRegistros.Update;

  TblMalaDiretaCli.First;
end;

procedure TFormTelaGeracaoMalaDireta.BtArquivoTXTClick(Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
    Arquivo : TextFile;
begin
  inherited;
  if not TblMalaDiretaCli.Active then
    begin
      ShowMessage('É necessário primeiro realizar o filtro nos clientes...');
      Exit;
    end;
  if TblMalaDiretaCli.Eof then
    begin
      ShowMessage('Nenhum cliente foi encontrado...');
      Exit;
    end;
  CaminhoNomeArquivo := 'Clientes.txt';
  AssignFile(Arquivo,CaminhoNomeArquivo);
  Rewrite(Arquivo);
  Reset(Arquivo);
  Append(Arquivo);
  // Criar Proximas Linhas
  TblMalaDiretaCli.First;
  Linha := '';
  While not TblMalaDiretaCli.Eof Do
    begin
      Linha := TblMalaDiretaCliCLIEA13ID.AsString         + '|'+
               TblMalaDiretaCliCLIEA60RAZAOSOC.AsString   ;

      TblMalaDiretaCli.Next;
      Writeln(Arquivo,Linha);
    end;

  // Fechar Arquivo
  CloseFile(Arquivo);

  ShowMessage('Concluido com sucesso! Arquivo Cliente.txt salvo na pasta Gestao');
end;

procedure TFormTelaGeracaoMalaDireta.ppDetailBand6BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppNomeFantasia.Caption := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',DM.SQLTerminalAtivo.fieldbyname('EMPRICOD').AsString);
  ppEndereco.Caption     := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',DM.SQLTerminalAtivo.fieldbyname('EMPRICOD').AsString);
  ppCidade.Caption       := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',DM.SQLTerminalAtivo.fieldbyname('EMPRICOD').AsString)+'/RS';
  ppBairro.Caption       := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60BAI',DM.SQLTerminalAtivo.fieldbyname('EMPRICOD').AsString);
  ppCep.Caption          := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA8CEP',DM.SQLTerminalAtivo.fieldbyname('EMPRICOD').AsString);
end;

procedure TFormTelaGeracaoMalaDireta.ppDetailBand7BeforePrint(
  Sender: TObject);
begin
  inherited;
  LBEmissao.Caption  := FormatDateTime('dd/mm/yyyy',Now);
  LBDTVenc.Caption   := FormatDateTime('mm/yyyy',Now+730);
end;

end.
