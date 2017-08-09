unit TelaImpressaoDuplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, CurrEdit, RxLookup, StdCtrls, Mask, ToolEdit,
  DB, DBTables, RxQuery, Grids, DBGrids, Buttons, jpeg, ExtCtrls, DBCtrls,
  UnitLibrary, ShellApi, Placemnt, FileCtrl, Menus, RXCtrls, 
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppviewr, ppStrtch, ppMemo,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, ACBrBoleto,
  ACBrBoletoFCFortesFr, ACBrBase, ACBrMail, ACBrUtil;


type
  TFormTelaImpressaoDuplicata = class(TFormTelaGeralTEMPLATE)
    DBGridLista: TDBGrid;
    SQLContasReceber: TRxQuery;
    SQLCliente: TRxQuery;
    SQLEmpresa: TRxQuery;
    DSSQLContasReceber: TDataSource;
    Label2: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    ComboCliente: TRxDBLookupCombo;
    Label9: TLabel;
    TotalContasReceber: TCurrencyEdit;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    DSSQLEmpresa: TDataSource;
    TblDuplicatas: TTable;
    TblDuplicatasCLIEA14CGC: TStringField;
    TblDuplicatasCLIEA20IE: TStringField;
    TblDuplicatasCLIEA11CPF: TStringField;
    TblDuplicatasCLIEA10RG: TStringField;
    TblDuplicatasCLIEA60RAZAOSOC: TStringField;
    TblDuplicatasCLIEA60NOMEFANT: TStringField;
    TblDuplicatasCLIEA15FONE1: TStringField;
    TblDuplicatasCLIEA15FONE2: TStringField;
    TblDuplicatasCLIEA15FAX: TStringField;
    TblDuplicatasCLIEA60ENDRES: TStringField;
    TblDuplicatasCLIEA60BAIRES: TStringField;
    TblDuplicatasCLIEA60CIDRES: TStringField;
    TblDuplicatasCLIEA2UFRES: TStringField;
    TblDuplicatasCLIEA8CEPRES: TStringField;
    TblDuplicatasCLIEA60ENDCOB: TStringField;
    TblDuplicatasCLIEA60BAICOB: TStringField;
    TblDuplicatasCLIEA60CIDCOB: TStringField;
    TblDuplicatasCLIEA2UFCOB: TStringField;
    TblDuplicatasCLIEA8CEPCOB: TStringField;
    TblDuplicatasCLIEA13ID: TStringField;
    TblDuplicatasCTRCINROPARC: TIntegerField;
    TblDuplicatasCTRCDVENC: TDateTimeField;
    TblDuplicatasCTRCN2VLR: TFloatField;
    TblDuplicatasCTRCN2DESCFIN: TFloatField;
    TblDuplicatasNOFIA13ID: TStringField;
    TblDuplicatasCTRCA30NRODUPLICBANCO: TStringField;
    TblDuplicatasCTRCDEMIS: TDateTimeField;
    TblDuplicatasLocPagto: TStringField;
    TblDuplicatasEndPagto: TStringField;
    TblDuplicatasExtensoLin2: TStringField;
    TblDuplicatasExtensoLin1: TStringField;
    TblDuplicatasEMPRICOD: TIntegerField;
    TblDuplicatasCTRCA13ID: TStringField;
    TblDuplicatasNumeroParcelas: TIntegerField;
    PanelIntrucoes: TPanel;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCLIEA14CGC: TStringField;
    SQLContasReceberCLIEA20IE: TStringField;
    SQLContasReceberCLIEA11CPF: TStringField;
    SQLContasReceberCLIEA10RG: TStringField;
    SQLContasReceberCLIEA60NOMEFANT: TStringField;
    SQLContasReceberCLIEA15FONE1: TStringField;
    SQLContasReceberCLIEA15FONE2: TStringField;
    SQLContasReceberCLIEA15FAX: TStringField;
    SQLContasReceberCLIEA60ENDRES: TStringField;
    SQLContasReceberCLIEA60BAIRES: TStringField;
    SQLContasReceberCLIEA60CIDRES: TStringField;
    SQLContasReceberCLIEA2UFRES: TStringField;
    SQLContasReceberCLIEA8CEPRES: TStringField;
    SQLContasReceberCLIEA60ENDCOB: TStringField;
    SQLContasReceberCLIEA60BAICOB: TStringField;
    SQLContasReceberCLIEA60CIDCOB: TStringField;
    SQLContasReceberCLIEA2UFCOB: TStringField;
    SQLContasReceberCLIEA8CEPCOB: TStringField;
    FormStorage: TFormStorage;
    SQLContasReceberVALORTOTAL: TFloatField;
    SQLTotais: TRxQuery;
    Label7: TLabel;
    TblDuplicatasTotalDocumento: TFloatField;
    SQLTotaisTOTALDOCUMENTO: TFloatField;
    SQLTotaisNROPARCELAS: TIntegerField;
    SQLTotaisCTRCA30NRODUPLICBANCO: TStringField;
    EditParcelas: TEdit;
    Label8: TLabel;
    TblDuplicatasInstrucoes: TStringField;
    MemoInst: TMemo;
    MenuImp: TPopupMenu;
    MnDuplicatas: TMenuItem;
    RadioPeriodo: TRadioGroup;
    MenuOptions: TPopupMenu;
    Excluirregistroselecionado1: TMenuItem;
    SQLContasReceberDUPLA13ID: TStringField;
    TblDuplicatasDocumentos: TStringField;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    ComboPortador: TRxDBLookupCombo;
    Label3: TLabel;
    PipelEmpresa: TppDBPipeline;
    PipeDuplicatas: TppDBPipeline;
    ReportDuplicatasServico: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppShape4: TppShape;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape3: TppShape;
    NomeCli: TppDBText;
    EnderCli: TppDBText;
    BairroCli: TppDBText;
    DtaVenc: TppDBText;
    DtaDoc: TppDBText;
    Valor1: TppDBText;
    CepCli: TppDBText;
    CidaCli: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    Valor2: TppDBText;
    NumDoc: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    UfCli: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    CgcCli: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine5: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText16: TppDBText;
    ppDBText9: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppLabel37: TppLabel;
    DSTblDuplicatas: TDataSource;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppShape2: TppShape;
    ppDBMemo1: TppDBMemo;
    DuplicatasMercantil1: TMenuItem;
    ReportDuplicataMercantil: TppReport;
    ppDetailBand2: TppDetailBand;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel42: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppShape15: TppShape;
    ppLabel46: TppLabel;
    ppLine8: TppLine;
    ppLabel47: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText38: TppDBText;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText39: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLine9: TppLine;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine10: TppLine;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppShape16: TppShape;
    ppDBMemo2: TppDBMemo;
    TblDuplicatasAVALA60RAZAOSOC: TStringField;
    TblDuplicatasNumeroDocParc: TStringField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA100INFSPC: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    ppImageMercantil: TppImage;
    ppImageServico: TppImage;
    Label11: TLabel;
    ComboEmitidos: TComboBox;
    Label12: TLabel;
    ComboOrdem: TComboBox;
    MnBloquetosLaser: TMenuItem;
    DSSQLContaCorrente: TDataSource;
    SQLContaCorrente: TRxQuery;
    SQLContaCorrenteCTCRICOD: TIntegerField;
    SQLContaCorrenteBANCA5COD: TStringField;
    SQLContaCorrenteCTCRA15AGENCIA: TStringField;
    SQLContaCorrenteCTCRA15NUMERO: TStringField;
    SQLContaCorrenteCTCRA60TITULAR: TStringField;
    SQLContaCorrenteCTCRDABERTURA: TDateTimeField;
    SQLContaCorrenteCTCRN2LIMITE: TFloatField;
    SQLContaCorrenteCTCRN2SALDOATUAL: TFloatField;
    SQLContaCorrenteTMBCICOD: TIntegerField;
    SQLContaCorrentePENDENTE: TStringField;
    SQLContaCorrenteREGISTRO: TDateTimeField;
    SQLContaCorrenteEMPRICOD: TIntegerField;
    SQLContaCorrenteCTCRDULTALTSALDO: TDateTimeField;
    SQLContaCorrenteCTCRA30CODCONTABIL: TStringField;
    SQLContaCorrenteCTCRA15CEDENTECOD: TStringField;
    SQLContaCorrenteCTCRA15CEDENTEDIGCOD: TStringField;
    SQLContaCorrenteCTCRA15DIGAGENCIA: TStringField;
    SQLContaCorrenteCTCRA15DIGCONTA: TStringField;
    Label14: TLabel;
    ComboContaCorrente: TRxDBLookupCombo;
    SQLContaCorrenteCTCRA15CARTEIRACOD: TStringField;
    SQLContaCorrenteCTCRA15DIGBANCO: TStringField;
    SQLContaCorrenteCTCRA15POSTO: TStringField;
    SQLContaCorrenteCTCRINOSSONUMERO: TIntegerField;
    SQLContaCorrenteCTCRA150LOGOBANCO: TStringField;
    TblDuplicatasNOSSONUMERO: TStringField;
    SQLContasReceberCTRCA15NOSSONUMERO: TStringField;
    ButtonImp: TRxSpeedButton;
    BtnSelecionarDoc: TSpeedButton;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    TblDuplicatasCLIEA60EMAIL: TStringField;
    SQLContasReceberCLIEA60EMAIL: TStringField;
    SQLContasReceberCLIEA5NROENDRES: TStringField;
    TblDuplicatasCLIEA5NROENDRES: TStringField;
    radioTipoImpressao: TRadioGroup;
    FileList: TFileListBox;
    CheckEndCob: TCheckBox;
    ACBrMail1: TACBrMail;
    lbStatusEmail: TLabel;
    ckImprimeMesReferencia: TCheckBox;
    BtnGeraRemessa: TSpeedButton;
    Label1: TLabel;
    cbxLayOut: TComboBox;
    SQLContasReceberCTRCA254HIST: TStringField;
    ReportCarneAvulso: TppReport;
    ppDetailBand3: TppDetailBand;
    ppLine11: TppLine;
    ppLabel83: TppLabel;
    ppDBText51: TppDBText;
    ppLabel84: TppLabel;
    ppDBText52: TppDBText;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppDBText56: TppDBText;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel89: TppLabel;
    ppDBText53: TppDBText;
    ppLine16: TppLine;
    ppEmpresa2: TppLabel;
    ppLabel91: TppLabel;
    ppDBText54: TppDBText;
    ppLabel92: TppLabel;
    ppDBText57: TppDBText;
    ppLabel93: TppLabel;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLabel94: TppLabel;
    ppDBText63: TppDBText;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    CarnePagamentoAvulso1: TMenuItem;
    pEmpresaNome: TppLabel;
    SQLContaCorrenteLOTEREMESSABANCO: TIntegerField;
    ckSemLote: TCheckBox;
    cbVisualizarImpressao: TCheckBox;
    cbImprimirMensagensPadroes: TCheckBox;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnDuplicatasClick(Sender: TObject);
    procedure TblDuplicatasBeforeEdit(DataSet: TDataSet);
    procedure Excluirregistroselecionado1Click(Sender: TObject);
    procedure GeraTabelaTempDuplicata;
    procedure DuplicatasMercantil1Click(Sender: TObject);
    procedure ReportDuplicataMercantilPreviewFormCreate(Sender: TObject);
    procedure ReportDuplicatasServicoPreviewFormCreate(Sender: TObject);
    procedure ReportDuplicataMercantilBeforePrint(Sender: TObject);
    procedure ReportDuplicatasServicoBeforePrint(Sender: TObject);
    procedure MnBloquetosLaserClick(Sender: TObject);
    procedure IncluiBoleto;
    procedure IncluiBoletoAcbr;
    procedure ImprimeBoletoAcbr;
    procedure EnviaEmailAcbr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ACBrMail1MailProcess(const AMail: TACBrMail;
      const aStatus: TMailStatus);
    procedure ACBrMail1AfterMailProcess(Sender: TObject);
    procedure ACBrMail1MailException(const AMail: TACBrMail;
      const E: Exception; var ThrowIt: Boolean);
    procedure ACBrMail1BeforeMailProcess(Sender: TObject);
    procedure BtnGeraRemessaClick(Sender: TObject);
    procedure cbxLayOutChange(Sender: TObject);
    procedure CarnePagamentoAvulso1Click(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ReportCarneAvulsoPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Titulo : TACBrTitulo;
    Total : Double;
    Parcelas : Integer;
    { Public declarations }
  end;

var
  FormTelaImpressaoDuplicata: TFormTelaImpressaoDuplicata;

implementation

uses ExtensoLib, DataModulo, TypInfo, Math;

{$R *.dfm}

procedure TFormTelaImpressaoDuplicata.BtnSelecionarDocClick(
  Sender: TObject);
begin
  inherited;
    
  SQLContasReceber.Close;
  SQLTotais.Close;

  SqlContasReceber.MacroByName('MEmpresa').Value := 'CR.EMPRICOD = ' + EmpresaPadrao;
  SQLTotais.MacroByName('MEmpresa').Value := 'CR.EMPRICOD = '        + EmpresaPadrao;

  case RadioPeriodo.ItemIndex of
    0 : begin
          SqlContasReceber.MacroByName('CampoData').Value := 'CR.CTRCDEMIS';
          SqlContasReceber.MacroByName('DataInicial').Value := '''' + FormatDateTime('mm/dd/yyyy',de.Date) + '''';
          SqlContasReceber.MacroByName('DataFinal').Value := '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

          SQLTotais.MacroByName('CampoData').Value := 'CR.CTRCDEMIS';
          SQLTotais.MacroByName('DataInicial').Value := '''' + FormatDateTime('mm/dd/yyyy',de.Date) + '''';
          SQLTotais.MacroByName('DataFinal').Value := '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
        end;

    1 : begin
          SqlContasReceber.MacroByName('CampoData').Value := 'CR.CTRCDVENC';
          SqlContasReceber.MacroByName('DataInicial').Value := '''' + FormatDateTime('mm/dd/yyyy',de.Date) + '''';
          SqlContasReceber.MacroByName('DataFinal').Value := '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

          SQLTotais.MacroByName('CampoData').Value := 'CR.CTRCDVENC';
          SQLTotais.MacroByName('DataInicial').Value := '''' + FormatDateTime('mm/dd/yyyy',de.Date) + '''';
          SQLTotais.MacroByName('DataFinal').Value := '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
        end;
  end;

  if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
    begin
      SqlContasReceber.MacroByName('MCliente').Value := 'CR.CLIEA13ID = ' + ''''+ ComboCliente.KeyValue + '''';
      SQLTotais.MacroByName('MCliente').Value := 'CR.CLIEA13ID = ' + ''''+ ComboCliente.KeyValue + '''';
    end
  else
    begin
      SqlContasReceber.MacroByName('MCliente').Value := '0=0';
      SQLTotais.MacroByName('MCliente').Value := '0=0';
    end;

  if (ComboPortador.KeyValue <> null) and (ComboPortador.KeyValue > 0) then
    begin
      SqlContasReceber.MacroByName('MPortador').Value := 'CR.PORTICOD = ' + ComboPortador.KeyValue;
      SQLTotais.MacroByName('MPortador').Value        := 'CR.PORTICOD = ' + ComboPortador.KeyValue;
    end
  else
    begin
      SqlContasReceber.MacroByName('MPortador').Value := '0=0';
      SQLTotais.MacroByName('MPortador').Value        := '0=0';
    end;

   SQLTotais.MacroByName('MSemLote').Value           := '0=0' ;
   SqlContasReceber.MacroByName('MSemLote').Value    := '0=0' ;
  if ckSemLote.Checked then
    begin
      SqlTotais.MacroByName('MSemLote').Value          := 'LOTEREMESSABANCO IS NULL' ;
      SqlContasReceber.MacroByName('MSemLote').Value   := 'LOTEREMESSABANCO IS NULL' ;
    end;

  case ComboEmitidos.ItemIndex of
    0 : SqlContasReceber.MacroByName('MEmitidos').Value := 'CR.CTRCCEMITIDOBOLETO = ''S''';
    1 : SqlContasReceber.MacroByName('MEmitidos').Value := 'CR.CTRCCEMITIDOBOLETO = ''N''';
    2 : SqlContasReceber.MacroByName('MEmitidos').Value := '0=0';
  end;

  case ComboOrdem.ItemIndex of
    0 : SqlContasReceber.MacroByName('MOrdem').Value := 'CL.CLIEA60RAZAOSOC, CR.CTRCA13ID, CR.CTRCINROPARC ASC';
    1 : SqlContasReceber.MacroByName('MOrdem').Value := 'CR.CTRCA30NRODUPLICBANCO';
  end;

  Total := 0;
  Parcelas := 0;
  SQLContasReceber.Open;
  SQLTotais.Open;
  SQLTotais.First;
  while not SQLTotais.Eof do
    begin
      Total := Total + SQLTotais.FieldByName('TotalDocumento').AsFloat;
      Parcelas := Parcelas + SQLTotais.FieldByName('NROPARCELAS').AsInteger;
      SQLTotais.Next;
    end;
  TotalContasReceber.Text := FormatFloat('###0.00''',Total);
  EditParcelas.Text := IntToStr(Parcelas);
end;

procedure TFormTelaImpressaoDuplicata.FormCreate(Sender: TObject);
begin
  inherited;
  if not sqlPortador.Active then sqlPortador.Open;

  sqlEmpresa.close;
  sqlEmpresa.macrobyname('filtro').Value := 'EMPRICOD='+EmpresaPadrao;
  sqlEmpresa.open;

  sqlContaCorrente.close;
  sqlContaCorrente.macrobyname('filtro').Value := 'EMPRICOD='+EmpresaPadrao;
  sqlContaCorrente.Open;
  if sqlContaCorrente.RecordCount = 1 then
    ComboContaCorrente.KeyValue := sqlContaCorrenteCTCRICOD.AsString;

  sqlCliente.open;

  De.Date  := Date;
  Ate.Date := Date;

  if not dm.SQLConfigCrediario.Active then
  begin
    dm.SQLConfigCrediario.Open;
  end;
end;

procedure TFormTelaImpressaoDuplicata.MnDuplicatasClick(Sender: TObject);
begin
  inherited;
  GeraTabelaTempDuplicata;
  // IMPRIME
  if DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString <> '' then
    begin
      if FileExists(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString) then
        ShellExecute(0,'Open',PChar(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString),PChar(EmpresaPadrao),PChar(DM.PathAplicacao),SW_NORMAL)
      else
        ReportDuplicatasServico.Print;
    end
  else
    ReportDuplicatasServico.Print;
end;

procedure TFormTelaImpressaoDuplicata.TblDuplicatasBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFormTelaImpressaoDuplicata.Excluirregistroselecionado1Click(
  Sender: TObject);
begin
  inherited;
  EditParcelas.Text := IntToStr(StrToInt(EditParcelas.Text)- 1);
  TotalContasReceber.Text := FloatToStr(StrToFloat(TotalContasReceber.Text)- SQLContasReceberVALORTOTAL.AsFloat);
  SQLContasReceber.Delete;
end;

procedure TFormTelaImpressaoDuplicata.GeraTabelaTempDuplicata;
var
  FileStream : TFileStream;
  BlobStream : TStream;
begin
  try
    TblDuplicatas.Close;
    TblDuplicatas.DeleteTable;
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  except
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  end;

  SQLContasReceber.First;

  while not SQLContasReceber.Eof do
    begin
      TblDuplicatas.Append;
      TblDuplicatasEMPRICOD.AsString              := SQLContasReceberEMPRICOD.AsString;
      TblDuplicatasCTRCA13ID.AsString             := SQLContasReceberCTRCA13ID.AsString;
      TblDuplicatasCLIEA13ID.AsString             := SQLContasReceberCLIEA13ID.AsString;
      TblDuplicatasNOFIA13ID.AsString             := SQLContasReceberNOFIA13ID.AsString;
      TblDuplicatasCTRCN2VLR.AsString             := SQLContasReceberCTRCN2VLR.AsString;
      TblDuplicatasCTRCDEMIS.AsString             := SQLContasReceberCTRCDEMIS.AsString;
      TblDuplicatasCTRCDVENC.AsString             := SQLContasReceberCTRCDVENC.AsString;
      TblDuplicatasCTRCINROPARC.AsString          := SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCN2DESCFIN.AsString         := SQLContasReceberCTRCN2DESCFIN.AsString;
      TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
      TblDuplicatasNumeroDocParc.AsString         := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString + ' - ' + SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCLIEA14CGC.AsString            := SQLContasReceberCLIEA14CGC.AsString;
      TblDuplicatasCLIEA20IE.AsString             := SQLContasReceberCLIEA20IE.AsString;
      TblDuplicatasCLIEA11CPF.AsString            := SQLContasReceberCLIEA11CPF.AsString;
      TblDuplicatasCLIEA10RG.AsString             := SQLContasReceberCLIEA10RG.AsString;
      TblDuplicatasCLIEA60RAZAOSOC.AsString       := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblDuplicatasCLIEA60NOMEFANT.AsString       := SQLContasReceberCLIEA60NOMEFANT.AsString;
      TblDuplicatasCLIEA15FONE1.AsString          := SQLContasReceberCLIEA15FONE1.AsString;
      TblDuplicatasCLIEA15FONE2.AsString          := SQLContasReceberCLIEA15FONE2.AsString;
      TblDuplicatasCLIEA15FAX.AsString            := SQLContasReceberCLIEA15FAX.AsString;
      TblDuplicatasCLIEA60ENDRES.AsString         := SQLContasReceberCLIEA60ENDRES.AsString;
      TblDuplicatasCLIEA60BAIRES.AsString         := SQLContasReceberCLIEA60BAIRES.AsString;
      TblDuplicatasCLIEA60CIDRES.AsString         := SQLContasReceberCLIEA60CIDRES.AsString;
      TblDuplicatasCLIEA2UFRES.AsString           := SQLContasReceberCLIEA2UFRES.AsString;
      TblDuplicatasCLIEA8CEPRES.AsString          := SQLContasReceberCLIEA8CEPRES.AsString;
      TblDuplicatasCLIEA60ENDCOB.AsString         := SQLContasReceberCLIEA60ENDCOB.AsString;
      TblDuplicatasCLIEA60BAICOB.AsString         := SQLContasReceberCLIEA60BAICOB.AsString;
      TblDuplicatasCLIEA60CIDCOB.AsString         := SQLContasReceberCLIEA60CIDCOB.AsString;
      TblDuplicatasCLIEA2UFCOB.AsString           := SQLContasReceberCLIEA2UFCOB.AsString;
      TblDuplicatasCLIEA8CEPCOB.AsString          := SQLContasReceberCLIEA8CEPCOB.AsString;
      TblDuplicatasCLIEA60EMAIL.AsString          := SQLContasReceberCLIEA60EMAIL.AsString;

      if CheckEndCob.Checked then
        TblDuplicatasEndPagto.AsString            := SQLContasReceberCLIEA60ENDCOB.AsString + '-' + SQLContasReceberCLIEA60BAICOB.AsString + ' - ' + SQLContasReceberCLIEA8CEPCOB.AsString;

      ValorExtenso(VExt,TblDuplicatasCTRCN2VLR.Value, '', '', 02, 70, '*',3);
      TblDuplicatasExtensoLin1.AsString           := VExt[0];
      TblDuplicatasExtensoLin2.AsString           := VExt[1];

      if SQLTotais.Locate('CTRCA30NRODUPLICBANCO',TblDuplicatasCTRCA30NRODUPLICBANCO.AsString,[]) then
        TblDuplicatasTotalDocumento.AsFloat       := SQLTotaisTOTALDOCUMENTO.AsFloat
      else
        TblDuplicatasTotalDocumento.AsFloat       := SQLContasReceberCTRCN2VLR.AsFloat;

      TblDuplicatasInstrucoes.AsString            := MemoInst.Lines.Text;
      TblDuplicatasDocumentos.AsString            := SQLLocate('DUPLICATA','DUPLA13ID','DUPLA254DOCS','''' + SQLContasReceberDUPLA13ID.AsString + '''' );

      TblDuplicatas.Post;
      SQLContasReceber.Next;
    end;
end;

procedure TFormTelaImpressaoDuplicata.DuplicatasMercantil1Click(
  Sender: TObject);
begin
  inherited;
  GeraTabelaTempDuplicata;
  ReportDuplicataMercantil.Print;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicataMercantilPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportDuplicataMercantil.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicatasServicoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportDuplicatasServico.PreviewForm.WindowState  := wsMaximized;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicataMercantilBeforePrint(
  Sender: TObject);
  var
  BlobStream : TStream;
  JPEGImage  : TBitmap;

begin
  inherited;
  // Mostra Imagem Associada a empresa
  if SQLEmpresaEMPRBLOGOTIPO.BlobSize <> 0 then
  begin
    BlobStream:= SQLEmpresa.CreateBlobStream(SQLEmpresaEMPRBLOGOTIPO,bmRead);
    JPEGImage := TBitmap.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ppImageMercantil.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ppImageMercantil.Picture:=nil;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicatasServicoBeforePrint(
  Sender: TObject);
  var
  BlobStream : TStream;
  JPEGImage  : TBitmap;
begin
  inherited;
  // Mostra Imagem Associada a empresa
  if SQLEmpresaEMPRBLOGOTIPO.BlobSize <> 0 then
  begin
    BlobStream:= SQLEmpresa.CreateBlobStream(SQLEmpresaEMPRBLOGOTIPO,bmRead);
    JPEGImage := TBitmap.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ppImageServico.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ppImageServico.Picture:=nil;

end;

procedure TFormTelaImpressaoDuplicata.MnBloquetosLaserClick(
  Sender: TObject);
var vNossoNumero  : Integer;
var sContaCorrente : string;
begin
  inherited;
  if ComboContaCorrente.Text = '' then
    begin
      Showmessage('Selecione a conta corrente do Cedente!');
      ComboContaCorrente.setfocus;
      Exit;
    end;

  if not SQLContasReceber.Active then
    begin
      Showmessage('Execute antes de imprimir o Filtro!');
      ComboContaCorrente.setfocus;
      Exit;
    end;

  {testa se tem cliente com cadastro imcompleto e aborta pois banco nao aceitara remessa}
  { SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      if (SQLContasReceberCLIEA60ENDRES.AsString = '')   or
         (SQLContasReceberCLIEA5NROENDRES.AsString = '') or
         (SQLContasReceberCLIEA60BAIRES.AsString = '')   or
         (SQLContasReceberCLIEA60CIDRES.AsString = '')   or
         (SQLContasReceberCLIEA2UFRES.AsString = '')     or
         (SQLContasReceberCLIEA8CEPRES.AsString = '')    then
       begin
         showmessage('Revisar Cadastro do Cliente => '+SQLContasReceberCLIEA60RAZAOSOC.AsString);
         exit;
       end;
      SQLContasReceber.next;
    end; }

  try
    TblDuplicatas.Close;
    TblDuplicatas.DeleteTable;
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  except
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  end;

  // Posicionar e atualizar a tabela contacorrente para pegar o nosso numero correto
  sContaCorrente := SQLContaCorrenteCTCRICOD.Asstring;
  SQLContaCorrente.close;
  SQLContaCorrente.Open;
  SQLContaCorrente.Locate('CTCRICOD',sContaCorrente,[]);

  // Colocar dos Dados do Cedente no Componente
  ACBrBoleto1.ListadeBoletos.Clear;
  cbxLayOutChange(Sender);

  {Carrega dados do Emitente}
  if SQLContaCorrenteBANCA5COD.Value = '041' then
    begin
      ACBrBoleto1.banco.TipoCobranca := cobBanrisul;
    end;
  if SQLContaCorrenteBANCA5COD.Value = '748' then
    begin
      ACBrBoleto1.banco.TipoCobranca := cobSicred;

    end;

  ACBrBoleto1.cedente.Agencia       := SQLContaCorrenteCTCRA15AGENCIA.Value;
  ACBrBoleto1.cedente.AgenciaDigito := SQLContaCorrenteCTCRA15DIGAGENCIA.value;
  ACBrBoleto1.cedente.Conta         := SQLContaCorrenteCTCRA15NUMERO.Value;
  ACBrBoleto1.cedente.ContaDigito   := SQLContaCorrenteCTCRA15DIGCONTA.Value;
  ACBrBoleto1.cedente.CodigoCedente := SQLContaCorrenteCTCRA15CEDENTECOD.value;

  ACBrBoleto1.cedente.Nome          := dm.SQLEmpresaEMPRA60RAZAOSOC.AsString;
  ACBrBoleto1.cedente.Cidade        := dm.SQLEmpresaEMPRA60CID.AsString;
  ACBrBoleto1.cedente.Bairro        := dm.SQLEmpresaEMPRA60BAI.AsString;
  ACBrBoleto1.cedente.Logradouro    := dm.SQLEmpresaEMPRA60END.AsString;
  ACBrBoleto1.cedente.NumeroRes     := dm.SQLEmpresaEMPRIENDNRO.AsString;
  ACBrBoleto1.cedente.UF            := dm.SQLEmpresaEMPRA2UF.AsString;
  ACBrBoleto1.cedente.CEP           := dm.SQLEmpresaEMPRA8CEP.AsString;
  ACBrBoleto1.cedente.CNPJCPF       := dm.SQLEmpresaEMPRA14CGC.AsString;
  ACBrBoleto1.cedente.Telefone      := dm.SQLEmpresaEMPRA20FONE.Value;

  vNossoNumero := SQLContaCorrenteCTCRINOSSONUMERO.AsInteger;

  SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      TblDuplicatas.Append;
      TblDuplicatasEMPRICOD.AsString              := SQLContasReceberEMPRICOD.AsString;
      TblDuplicatasCTRCA13ID.AsString             := SQLContasReceberCTRCA13ID.AsString;
      TblDuplicatasCLIEA13ID.AsString             := SQLContasReceberCLIEA13ID.AsString;
      TblDuplicatasNOFIA13ID.AsString             := SQLContasReceberNOFIA13ID.AsString;
      TblDuplicatasCTRCN2VLR.AsString             := SQLContasReceberCTRCN2VLR.AsString;
      TblDuplicatasCTRCDEMIS.AsString             := SQLContasReceberCTRCDEMIS.AsString;
      TblDuplicatasCTRCDVENC.AsString             := SQLContasReceberCTRCDVENC.AsString;

      TblDuplicatasCTRCINROPARC.AsString          := SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCN2DESCFIN.AsString         := SQLContasReceberCTRCN2DESCFIN.AsString;
      if (SQLContasReceberNOFIA13ID.AsString <> '') then
        TblDuplicatasNumeroDocParc.AsString       := dm.SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO',''''+SQLContasReceberNOFIA13ID.AsString+'''') + '-' + SQLContasReceberCTRCINROPARC.AsString;
    {  if (SQLContasReceberCTRCA30NRODUPLICBANCO.AsString <> '') then
        TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString
      else }
        TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := copy(SQLContasReceberCTRCA13ID.AsString,5,9);
      TblDuplicatasCLIEA14CGC.AsString            := SQLContasReceberCLIEA14CGC.AsString;
      TblDuplicatasCLIEA20IE.AsString             := SQLContasReceberCLIEA20IE.AsString;
      TblDuplicatasCLIEA11CPF.AsString            := SQLContasReceberCLIEA11CPF.AsString;
      TblDuplicatasCLIEA10RG.AsString             := SQLContasReceberCLIEA10RG.AsString;
      TblDuplicatasCLIEA60RAZAOSOC.AsString       := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblDuplicatasCLIEA60NOMEFANT.AsString       := SQLContasReceberCLIEA60NOMEFANT.AsString;
      TblDuplicatasCLIEA60EMAIL.AsString          := SQLContasReceberCLIEA60EMAIL.AsString;
      TblDuplicatasCLIEA15FONE1.AsString          := SQLContasReceberCLIEA15FONE1.AsString;
      TblDuplicatasCLIEA15FONE2.AsString          := SQLContasReceberCLIEA15FONE2.AsString;
      TblDuplicatasCLIEA15FAX.AsString            := SQLContasReceberCLIEA15FAX.AsString;
      TblDuplicatasCLIEA60ENDRES.AsString         := SQLContasReceberCLIEA60ENDRES.AsString;
      TblDuplicatasCLIEA5NROENDRES.AsString       := SQLContasReceberCLIEA5NROENDRES.AsString;
      TblDuplicatasCLIEA60BAIRES.AsString         := SQLContasReceberCLIEA60BAIRES.AsString;
      TblDuplicatasCLIEA60CIDRES.AsString         := SQLContasReceberCLIEA60CIDRES.AsString;
      TblDuplicatasCLIEA2UFRES.AsString           := SQLContasReceberCLIEA2UFRES.AsString;
      TblDuplicatasCLIEA8CEPRES.AsString          := SQLContasReceberCLIEA8CEPRES.AsString;
      TblDuplicatasCLIEA60ENDCOB.AsString         := SQLContasReceberCLIEA60ENDCOB.AsString;
      TblDuplicatasCLIEA60BAICOB.AsString         := SQLContasReceberCLIEA60BAICOB.AsString;
      TblDuplicatasCLIEA60CIDCOB.AsString         := SQLContasReceberCLIEA60CIDCOB.AsString;
      TblDuplicatasCLIEA2UFCOB.AsString           := SQLContasReceberCLIEA2UFCOB.AsString;
      TblDuplicatasCLIEA8CEPCOB.AsString          := SQLContasReceberCLIEA8CEPCOB.AsString;

      if SQLContasReceberCTRCA15NOSSONUMERO.AsString = '' then
        begin
          TblDuplicatasNOSSONUMERO.AsString := IntToStr(vNossoNumero);

          // atualiza nosso numero na tabela contasreceber
          DM.SQLTemplate.Close;
          DM.SQLTemplate.Sql.Clear;
          if SQLContaCorrenteBANCA5COD.Value = '041' then
            DM.SQLTemplate.Sql.Add('UPDATE CONTASRECEBER SET CTRCA15NOSSONUMERO = '''+ IntToStr(vNossoNumero) +''' Where CTRCA13ID = ''' + SQLContasReceberCTRCA13ID.Value + '''') ;

          if SQLContaCorrenteBANCA5COD.Value = '748' then
            DM.SQLTemplate.Sql.Add('UPDATE CONTASRECEBER SET CTRCA15NOSSONUMERO = '''+ FormatDateTime('yy',Date) + '2' +Copy('00000'+IntToStr(vNossoNumero),length('00000'+IntToStr(vNossoNumero))-4,5)  +''' Where CTRCA13ID = ''' + SQLContasReceberCTRCA13ID.Value + '''') ;
          DM.SQLTemplate.ExecSql;
          DM.SQLTemplate.Close;

          // incrementa o nosso numero
          inc(vNossoNumero);

          // Atualiza o proximo nosso numero sequencial da tabela contacorrente
          DM.SQLTemplate.Close;
          DM.SQLTemplate.Sql.Clear;
          DM.SQLTemplate.Sql.Add('UPDATE CONTACORRENTE SET CTCRINOSSONUMERO = '''+IntToStr(vNossoNumero)+ ''' where CTCRICOD = '''+SQLContaCorrenteCTCRICOD.AsString+ '''');
          DM.SQLTemplate.ExecSql;
          DM.SQLTemplate.Close;
        end
      else
        TblDuplicatasNOSSONUMERO.AsString := Copy(Trim(SQLContasReceberCTRCA15NOSSONUMERO.AsString),4,5) ;

      ValorExtenso(VExt,TblDuplicatasCTRCN2VLR.Value, '', '', 2, 85, '*', 3);
      TblDuplicatasExtensoLin1.AsString     := VExt[0];
      TblDuplicatasExtensoLin2.AsString     := VExt[1];

      if SQLTotais.Locate('CTRCA30NRODUPLICBANCO',TblDuplicatasCTRCA30NRODUPLICBANCO.AsString,[]) then
        TblDuplicatasTotalDocumento.AsFloat := SQLTotaisTOTALDOCUMENTO.AsFloat
      else
        TblDuplicatasTotalDocumento.AsFloat := SQLContasReceberCTRCN2VLR.AsFloat;

      if SQLContasReceberCTRCA254HIST.Value <> '' then
        TblDuplicatasInstrucoes.AsString      := SQLContasReceberCTRCA254HIST.Value;

      if SQLContasReceberDUPLA13ID.AsString <> '' then
        TblDuplicatasDocumentos.AsString := SQLLocate('DUPLICATA','DUPLA13ID','DUPLA254DOCS','''' + SQLContasReceberDUPLA13ID.AsString + '''' );

      TblDuplicatas.Post;

      IncluiBoletoAcbr;

      if cbxLayOut.ItemIndex = 0 then {Modo Fatura}
        ImprimeBoletoAcbr;

      if (cbxLayOut.ItemIndex = 0) and (radioTipoImpressao.ItemIndex = 2) then {PDF e Enviar Email}
        EnviaEmailAcbr;

      SQLContasReceber.Next;

      {limpa lista de boletos para nao ficar sugeira no componente}
      if cbxLayOut.ItemIndex = 0 then {Modo Fatura}
        ACBrBoleto1.ListadeBoletos.Clear;
    end;

    if (cbxLayOut.ItemIndex = 1) then {Modo Carne}
      begin
        ImprimeBoletoAcbr;
        if (radioTipoImpressao.ItemIndex = 2) then {PDF e Enviar Email}
          EnviaEmailAcbr;
        ACBrBoleto1.ListadeBoletos.Clear;
      end;

    SQLContasReceber.First;

    if Pergunta('SIM','Deseja trocar o status destes Boletos para Emitidos?') then
      begin
        SQLContasReceber.First;
        while not SQLContasReceber.Eof do
          begin
            DM.SQLTemplate.Close;
            DM.SQLTemplate.Sql.Clear;
            DM.SQLTemplate.Sql.Add('UPDATE CONTASRECEBER SET Pendente=''S'', CTRCCEMITIDOBOLETO = ''S'''+' Where CTRCA13ID = ' + '''' + SQLContasReceberCTRCA13ID.Value + '''') ;
            DM.SQLTemplate.ExecSql;
            DM.SQLTemplate.Close;
            SQLContasReceber.Next;
          end;
      end;
end;

procedure TFormTelaImpressaoDuplicata.IncluiBoletoAcbr;
var
  mes, ano : integer;
  controle : string;
begin
  Titulo := ACBrBoleto1.CriarTituloNaLista;
  with Titulo do
    begin
      Aceite            := atNao;
      EspecieDoc        := 'DM';
      Carteira          := SQLContaCorrenteCTCRA15CARTEIRACOD.Value;
      NumeroDocumento   := TblDuplicatasCTRCA30NRODUPLICBANCO.AsString;
      NossoNumero       := TblDuplicatasNOSSONUMERO.Value;

      Mensagem.Add(MemoInst.Text);

      if not ckImprimeMesReferencia.Checked then
        Mensagem.Add(controle)
      else
        begin
          mes := strToInt(FormatDateTime('MM',TblDuplicatasCTRCDVENC.Value));
          ano := strToInt(FormatDateTime('YYYYY',TblDuplicatasCTRCDVENC.Value));
          controle := 'Controle Interno: '+TblDuplicatasCTRCA13ID.AsString;

          if (mes = 1) then Mensagem.Add(controle + '       REF. DEZEMBRO/'+ IntToStr(ano-1));
          if (mes = 2) then Mensagem.Add(controle + '       REF. JANEIRO/'+ IntToStr(ano));
          if (mes = 3) then Mensagem.Add(controle + '       REF. FEVEREIRO/'+ IntToStr(ano));
          if (mes = 4) then Mensagem.Add(controle + '       REF. MARCO/'+ IntToStr(ano));
          if (mes = 5) then Mensagem.Add(controle + '       REF. ABRIL/'+ IntToStr(ano));
          if (mes = 6) then Mensagem.Add(controle + '       REF. MAIO/'+ IntToStr(ano));
          if (mes = 7) then Mensagem.Add(controle + '       REF. JUNHO/'+ IntToStr(ano));
          if (mes = 8) then Mensagem.Add(controle + '       REF. JULHO/'+ IntToStr(ano));
          if (mes = 9) then Mensagem.Add(controle + '       REF. AGOSTO/'+ IntToStr(ano));
          if (mes =10) then Mensagem.Add(controle + '       REF. SETEMBRO/'+ IntToStr(ano));
          if (mes =11) then Mensagem.Add(controle + '       REF. OUTUBRO/'+ IntToStr(ano));
          if (mes =12) then Mensagem.Add(controle + '       REF. NOVEMBRO/'+ IntToStr(ano));
        end;

      if CheckEndCob.Checked then
        Mensagem.Add('End. Monitoramento: '+TblDuplicatasCLIEA60ENDRES.Value+', '+TblDuplicatasCLIEA5NROENDRES.Value+' - '+TblDuplicatasCLIEA60BAIRES.Value + ' - '+TblDuplicatasCLIEA60CIDRES.Value);

      {Texto livre pelo usuario}
      if TblDuplicatasInstrucoes.Value <> '' then
        Mensagem.Add(TblDuplicatasInstrucoes.Value);

      DataProcessamento := Now;
      Vencimento        := TblDuplicatasCTRCDVENC.Value;

      if SQLContaCorrenteBANCA5COD.Value = '041' then
        begin
          DataDocumento  := TblDuplicatasCTRCDEMIS.Value;
          LocalPagamento := 'PAGÁVEL PREFENCIALMENTE NAS AGENCIAS DO BANRISUL';
        end;
      if SQLContaCorrenteBANCA5COD.Value = '748' then
        begin
          DataDocumento  := now;
          LocalPagamento := 'PAGÁVEL PREFENCIALMENTE NAS COOPERATIVAS DE CRÉDITO DO SICREDI';
        end;
      ValorDocumento    := TblDuplicatasCTRCN2VLR.Value;
      ValorAbatimento   := 0.00;
      ValorMoraJuros    := 0.00;
      ValorDesconto     := 0.00;
      ValorAbatimento   := 0.00;
     { DataMoraJuros     := ;
      DataDesconto      := ;
      DataAbatimento    := ;
      DataProtesto      := ;
      PercentualMulta   := StrToCurrDef(edtMulta.Text,0); }

      if (dm.SQLConfigCrediario.fieldbyname('CFCRN2PERCMULATRAS').AsCurrency > 0) then
          begin
            DataMoraJuros         := TblDuplicatasCTRCDVENC.AsDateTime;
            ValorMoraJuros   := dm.SQLConfigCrediario.fieldbyname('CFCRN2PERCMULATRAS').AsCurrency;
            CodigoMoraJuros   := cjTaxaMensal;

            if ACBrBoleto1.banco.TipoCobranca = cobSicred then
            begin
               CodigoMora := 'B';
               ACBrBoleto1.ImprimirMensagemPadrao := false;
               Mensagem.Add(ACBrStr('Cobrar juros de '+
                            FloatToStr(ValorMoraJuros) + '%' +
                             ' por dia de atraso para pagamento a partir de ' +
                             FormatDateTime('dd/mm/yyyy',DataMoraJuros)));
            end
            else
              CodigoMora := '2';
          end;

     { OcorrenciaOriginal.Tipo := toRemessaBaixar; }

      Sacado.NomeSacado := TblDuplicatasCLIEA60RAZAOSOC.AsString;
      Sacado.Fone       := TblDuplicatasCLIEA15FONE1.Value;
      Sacado.Email      := TblDuplicatasCLIEA60EMAIL.value;

      if TblDuplicatasCLIEA14CGC.AsString <> '' then
        Sacado.CNPJCPF   := TblDuplicatasCLIEA14CGC.Value
      else
        Sacado.CNPJCPF   := TblDuplicatasCLIEA11CPF.Value;

      if not CheckEndCob.Checked then
        begin
          Sacado.Logradouro    := TblDuplicatasCLIEA60ENDRES.Value;
          Sacado.Numero        := TblDuplicatasCLIEA5NROENDRES.Value;
          Sacado.Bairro        := TblDuplicatasCLIEA60BAIRES.Value;
          Sacado.Cidade        := TblDuplicatasCLIEA60CIDRES.Value;
          Sacado.CEP           := TblDuplicatasCLIEA8CEPRES.Value;
          Sacado.UF            := TblDuplicatasCLIEA2UFRES.Value;
        end
      else
        begin
          Sacado.Logradouro    := TblDuplicatasCLIEA60ENDCOB.Value;
          Sacado.Numero        := '';
          Sacado.Bairro        := TblDuplicatasCLIEA60BAICOB.Value;
          Sacado.Cidade        := TblDuplicatasCLIEA60CIDCOB.Value;
          Sacado.CEP           := TblDuplicatasCLIEA8CEPCOB.Value;
          Sacado.UF            := TblDuplicatasCLIEA2UFCOB.Value;
        end;
    end;
end;

procedure TFormTelaImpressaoDuplicata.ImprimeBoletoAcbr;
begin
  {Imprimir Boleto}

  if ACBrBoleto1.banco.TipoCobranca <> cobSicred then
    ACBrBoleto1.ImprimirMensagemPadrao := cbImprimirMensagensPadroes.Checked;
    
  ACBrBoletoFCFortes1.MostrarPreview := cbVisualizarImpressao.Checked;

  if radioTipoImpressao.ItemIndex = 0 then  {Imprimir Apenas}
    ACBrBoleto1.Imprimir;

  if (radioTipoImpressao.ItemIndex = 1) then  {Gera PDF}
    begin
      if SQLContaCorrenteBANCA5COD.Value = '041' then
        ACBrBoletoFCFortes1.NomeArquivo := 'Cobranca\Banrisul\Boletos\Boleto_Banrisul_'+TblDuplicatasCLIEA60RAZAOSOC.Value+'_'+TblDuplicatasCTRCA13ID.Value+'.pdf';
      if SQLContaCorrenteBANCA5COD.Value = '748' then
        ACBrBoletoFCFortes1.NomeArquivo := 'Cobranca\Sicredi\Boletos\Boleto_Sicredi_'+TblDuplicatasCLIEA60RAZAOSOC.Value+'_'+TblDuplicatasCTRCA13ID.Value+'.pdf';
      ACBrBoleto1.GerarPDF;
    end;
end;

procedure TFormTelaImpressaoDuplicata.EnviaEmailAcbr;
var xbody, xAnexo, xCopia : TStringList;
begin
   if TblDuplicatasCLIEA60EMAIL.value <> '' then
     begin
       {Setar nome arquivo e caminho que sera gerado o pdf}
       if SQLContaCorrenteBANCA5COD.Value = '041' then
         ACBrBoletoFCFortes1.NomeArquivo := 'Cobranca\Banrisul\Boletos\Boleto_Banrisul_'+TblDuplicatasCLIEA60RAZAOSOC.Value+'_'+TblDuplicatasCTRCA13ID.Value+'.pdf';
       if SQLContaCorrenteBANCA5COD.Value = '748' then
         ACBrBoletoFCFortes1.NomeArquivo := 'Cobranca\Sicredi\Boletos\Boleto_Sicredi_'+TblDuplicatasCLIEA60RAZAOSOC.Value+'_'+TblDuplicatasCTRCA13ID.Value+'.pdf';

       // Carrega parametros para enviar email
       try
         ACBrMail1.From      := dm.sqlempresaEMPRA75EMAILUSUARIO.AsString;
         ACBrMail1.FromName  := dm.SQLEmpresaEMPRA60NOMEFANT.AsString;
         ACBrMail1.Host      := dm.sqlempresaEMPRA50EMAILHOST.AsString;
         ACBrMail1.Port      := dm.sqlempresaEMPRIEMAILPORTA.AsString;
         ACBrMail1.Username  := dm.sqlempresaEMPRA75EMAILUSUARIO.AsString;
         ACBrMail1.Password  := dm.sqlempresaEMPRA50EMAILSENHA.AsString;
         ACBrMail1.IsHTML    := True;

         xbody := TStringList.Create; //Instanciando objeto TStringList
         xbody.Add('Segue em anexo o Boleto para Pagamento!');

         xCopia := TStringList.Create; //Instanciando objeto TStringList
         xAnexo := TStringList.Create; //Instanciando objeto TStringList

         if dm.sqlempresaEMPRA1SSL.Value = 'S' then
           ACBrMail1.SetSSL := True
         else
           ACBrMail1.SetSSL := False;

         if dm.sqlempresaEMPRA1TSL.Value = 'S' then
           ACBrMail1.SetTLS := True
         else
           ACBrMail1.SetTLS := False;

         { o acbr gera o pdf e anexa ao chamar a funcao EnviarEmail }
         ACBrBoleto1.EnviarEmail(TblDuplicatasCLIEA60EMAIL.value, {para}
                                 'Boleto de Cobrança.', {assunto}
                                 xbody,   {body}
                                 True,   {envia pdf}
                                 xCopia,  {copia carbono}
                                 xAnexo   {anexo} );

         xbody.Free;
         xCopia.free;
         xAnexo.free;
       except
         Application.ProcessMessages;
         xbody.Free;
       end;
     end;
end;

procedure TFormTelaImpressaoDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.ID_NotaFiscal_Boleto := '';
end;

procedure TFormTelaImpressaoDuplicata.IncluiBoleto;
begin
  // Colocar dos Dados do Cedente no Componente gbBoleto
  { Adilson troca pelo componente ACBR Boleto }
{  gbTitulo.Cedente.Nome                         := dm.SQLEmpresaEMPRA60RAZAOSOC.AsString;
  gbTitulo.Cedente.NumeroCPFCGC                 := dm.SQLEmpresaEMPRA14CGC.AsString;
  gbTitulo.Cedente.Endereco.Bairro              := dm.SQLEmpresaEMPRA60BAI.AsString;
  gbTitulo.Cedente.Endereco.CEP                 := dm.SQLEmpresaEMPRA8CEP.AsString;
  gbTitulo.Cedente.Endereco.Cidade              := dm.SQLEmpresaEMPRA60CID.AsString;
  gbTitulo.Cedente.Endereco.EMail               := dm.SQLEmpresaEMPRA60EMAIL.AsString;
  gbTitulo.Cedente.Endereco.Estado              := dm.SQLEmpresaEMPRA2UF.AsString;
  gbTitulo.Cedente.Endereco.Rua                 := dm.SQLEmpresaEMPRA60END.AsString;
  gbTitulo.Cedente.CodigoCedente                := SQLContaCorrenteCTCRA15CEDENTECOD.AsString;
  gbTitulo.Cedente.DigitoCodigoCedente          := SQLContaCorrenteCTCRA15CEDENTEDIGCOD.AsString;
  gbTitulo.Cedente.ContaBancaria.Banco.Codigo   := SQLContaCorrenteBANCA5COD.AsString;
  gbTitulo.Cedente.ContaBancaria.Banco.Logo     := SQLContaCorrenteCTCRA150LOGOBANCO.AsString;
  gbTitulo.Cedente.ContaBancaria.CodigoAgencia  := SQLContaCorrenteCTCRA15AGENCIA.AsString;
  gbTitulo.Cedente.ContaBancaria.DigitoAgencia  := SQLContaCorrenteCTCRA15DIGAGENCIA.AsString;
 // gbTitulo.Cedente.ContaBancaria.NumeroConta    := SQLContaCorrenteCTCRA15NUMERO.AsString;
  gbTitulo.Cedente.ContaBancaria.NumeroConta    := SQLContaCorrenteCTCRA15CEDENTECOD.AsString;
  gbTitulo.Cedente.ContaBancaria.DigitoConta    := SQLContaCorrenteCTCRA15DIGCONTA.AsString;
  gbTitulo.Cedente.ContaBancaria.NomeCliente    := SQLContaCorrenteCTCRA60TITULAR.AsString;
  // Colocar dos Dados no Componente gbBoleto
  gbTitulo.Carteira             := SQLContaCorrenteCTCRA15CARTEIRACOD.Value;
  gbTitulo.Posto                := SQLContaCorrenteCTCRA15POSTO.Value;
  gbTitulo.ValorDocumento       := TblDuplicatasCTRCN2VLR.Value;
  gbTitulo.DataDocumento        := TblDuplicatasCTRCDEMIS.Value;
  gbTitulo.DataProcessamento    := gbTitulo.DataDocumento;
  gbTitulo.DataVencimento       := TblDuplicatasCTRCDVENC.Value;
  gbTitulo.NossoNumero          := TblDuplicatasNOSSONUMERO.Value;
  gbTitulo.NumeroDocumento      := TblDuplicatasCTRCA30NRODUPLICBANCO.AsString;
  gbTitulo.Instrucoes.Text      := MemoInst.Text;
  //  gbTitulo.LocalPagamento       := EditLocalPagto.Text;
  gbTitulo.EspecieDocumento     := edDuplicataMercantil;
  gbTitulo.Sacado.Nome          := TblDuplicatasCLIEA60RAZAOSOC.AsString;

  if TblDuplicatasCLIEA14CGC.AsString <> '' then
    begin
      gbTitulo.Sacado.TipoInscricao  := tiPessoaJuridica;
      gbTitulo.Sacado.NumeroCPFCGC   := TblDuplicatasCLIEA14CGC.Value;
    end
  else
    begin
      gbTitulo.Sacado.TipoInscricao  := tiPessoaFisica;
      gbTitulo.Sacado.NumeroCPFCGC   := TblDuplicatasCLIEA11CPF.Value;
    end;
  if not CheckEndCob.Checked then
    begin
      gbTitulo.Sacado.Endereco.fRua          := TblDuplicatasCLIEA60ENDRES.Value;
      gbTitulo.Sacado.Endereco.fBairro       := TblDuplicatasCLIEA60BAIRES.Value;
      gbTitulo.Sacado.Endereco.fCidade       := TblDuplicatasCLIEA60CIDRES.Value;
      gbTitulo.Sacado.Endereco.fEstado       := TblDuplicatasCLIEA2UFRES.Value;
      gbTitulo.Sacado.Endereco.fCEP          := TblDuplicatasCLIEA8CEPRES.Value;
    end
  else
    begin
      gbTitulo.Sacado.Endereco.fRua          := TblDuplicatasCLIEA60ENDCOB.Value;
      gbTitulo.Sacado.Endereco.fBairro       := TblDuplicatasCLIEA60BAICOB.Value;
      gbTitulo.Sacado.Endereco.fCidade       := TblDuplicatasCLIEA60CIDCOB.Value;
      gbTitulo.Sacado.Endereco.fEstado       := TblDuplicatasCLIEA2UFCOB.Value;
      gbTitulo.Sacado.Endereco.fCEP          := TblDuplicatasCLIEA8CEPCOB.Value;
    end;
  if radioTipoImpressao.ItemIndex = 0 then
    gbTitulo.Imprimir
  else
    gbTitulo.Visualizar; }
end;


procedure TFormTelaImpressaoDuplicata.ACBrMail1MailProcess(
  const AMail: TACBrMail; const aStatus: TMailStatus);
begin
  inherited;
  case aStatus of
    pmsStartProcess:  lbStatusEmail.Caption := 'Iniciando processo de envio.';
    pmsConfigHeaders: lbStatusEmail.Caption := 'Configurando o cabeçalho do e-mail.';
    pmsLoginSMTP:     lbStatusEmail.Caption := 'Logando no servidor de e-mail.';
    pmsStartSends:    lbStatusEmail.Caption := 'Iniciando Envio de e-mail';
    pmsSendTo:        lbStatusEmail.Caption := 'Processando lista de destinatários.';
    pmsSendCC:        lbStatusEmail.Caption := 'Processando lista CC.';
    pmsSendBCC:       lbStatusEmail.Caption := 'Processando lista BCC.';
    pmsSendReplyTo:   lbStatusEmail.Caption := 'Processando lista ReplyTo.';
    pmsSendData:      lbStatusEmail.Caption := 'Enviando e-mail...';
    pmsLogoutSMTP:    lbStatusEmail.Caption := 'Fazendo Logout no servidor de e-mail.';
    pmsDone:          lbStatusEmail.Caption := 'Terminando e limpando.';
  end;
  lbStatusEmail.update;
end;

procedure TFormTelaImpressaoDuplicata.ACBrMail1AfterMailProcess(
  Sender: TObject);
begin
  inherited;
  lbStatusEmail.Caption := 'Email enviado com Sucesso!';
  lbStatusEmail.Update;
end;

procedure TFormTelaImpressaoDuplicata.ACBrMail1MailException(
  const AMail: TACBrMail; const E: Exception; var ThrowIt: Boolean);
begin
  inherited;
  ThrowIt := False;
  lbStatusEmail.Caption := '*** Erro ao Enviar o email: '+ AMail.Subject;
  lbStatusEmail.Update;
end;

procedure TFormTelaImpressaoDuplicata.ACBrMail1BeforeMailProcess(
  Sender: TObject);
begin
  inherited;
  lbStatusEmail.Visible := True;
end;

procedure TFormTelaImpressaoDuplicata.BtnGeraRemessaClick(Sender: TObject);
var
  mes, ano, NroRemessa : integer;
  controle, sContaCorrente : string;
  erro : boolean;
begin
  inherited;   

  erro := False;

  if ComboContaCorrente.Text = '' then
    begin
      Showmessage('Selecione a conta corrente do Cedente!');
      ComboContaCorrente.setfocus;
      Exit;
    end;

  {testa se tem cliente com cadastro imcompleto e aborta pois banco nao aceitara remessa}
  SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      if (SQLContasReceberCLIEA60ENDRES.AsString = '')   or
         (SQLContasReceberCLIEA5NROENDRES.AsString = '') or
         (SQLContasReceberCLIEA60BAIRES.AsString = '')   or
         (SQLContasReceberCLIEA60CIDRES.AsString = '')   or
         (SQLContasReceberCLIEA2UFRES.AsString = '')     or
         (SQLContasReceberCLIEA8CEPRES.AsString = '') then
       begin
         showmessage('Revisar Cadastro do Cliente => '+SQLContasReceberCLIEA60RAZAOSOC.AsString);
         exit;
       end;
      SQLContasReceber.next;
    end;

  // Posicionar e atualizar a tabela contacorrente para pegar o nosso numero correto
  sContaCorrente := SQLContaCorrenteCTCRICOD.Asstring;
  SQLContaCorrente.close;
  SQLContaCorrente.Open;
  SQLContaCorrente.Locate('CTCRICOD',sContaCorrente,[]);
  if SQLContaCorrenteLOTEREMESSABANCO.IsNull then
    NroRemessa := 1
  else
    NroRemessa := SQLContaCorrenteLOTEREMESSABANCO.Value + 1 ;


  {Carrega dados do Emitente}
  if SQLContaCorrenteBANCA5COD.Value = '041' then ACBrBoleto1.banco.TipoCobranca := cobBanrisul;
  if SQLContaCorrenteBANCA5COD.Value = '748' then ACBrBoleto1.banco.TipoCobranca := cobSicred;

  ACBrBoleto1.cedente.Agencia       := SQLContaCorrenteCTCRA15AGENCIA.Value;
  ACBrBoleto1.cedente.AgenciaDigito := SQLContaCorrenteCTCRA15DIGAGENCIA.value;
  ACBrBoleto1.cedente.Conta         := SQLContaCorrenteCTCRA15NUMERO.Value;
  ACBrBoleto1.cedente.ContaDigito   := SQLContaCorrenteCTCRA15DIGCONTA.Value;
  ACBrBoleto1.cedente.CodigoCedente := SQLContaCorrenteCTCRA15CEDENTECOD.value;

  ACBrBoleto1.cedente.Nome          := dm.SQLEmpresaEMPRA60RAZAOSOC.AsString;
  ACBrBoleto1.cedente.Cidade        := dm.SQLEmpresaEMPRA60CID.AsString;
  ACBrBoleto1.cedente.Bairro        := dm.SQLEmpresaEMPRA60BAI.AsString;
  ACBrBoleto1.cedente.Logradouro    := dm.SQLEmpresaEMPRA60END.AsString;
  ACBrBoleto1.cedente.NumeroRes     := dm.SQLEmpresaEMPRIENDNRO.AsString;
  ACBrBoleto1.cedente.UF            := dm.SQLEmpresaEMPRA2UF.AsString;
  ACBrBoleto1.cedente.CEP           := dm.SQLEmpresaEMPRA8CEP.AsString;
  ACBrBoleto1.cedente.CNPJCPF       := dm.SQLEmpresaEMPRA14CGC.AsString;
  ACBrBoleto1.cedente.Telefone      := dm.SQLEmpresaEMPRA20FONE.Value;

  ACBrBoleto1.DataArquivo   := Now;

  SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      {IncluiBoleto; }
      Titulo := ACBrBoleto1.CriarTituloNaLista;
      with Titulo do
        begin
          Aceite            := atNao;
          EspecieDoc        := 'DM';
          Carteira          := SQLContaCorrenteCTCRA15CARTEIRACOD.Value;
          NumeroDocumento   := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
          NossoNumero       := SQLContasReceberCTRCA15NOSSONUMERO.Value;

          Mensagem.Add(MemoInst.Text);

          if not ckImprimeMesReferencia.Checked then
            Mensagem.Add(controle)
          else
            begin
              mes := strToInt(FormatDateTime('MM',SQLContasReceberCTRCDVENC.Value));
              ano := strToInt(FormatDateTime('YYYYY',SQLContasReceberCTRCDVENC.Value));
              controle := 'Controle Interno: '+SQLContasReceberCTRCA13ID.AsString;

              if (mes = 1) then Mensagem.Add(controle + '       REF. DEZEMBRO/'+ IntToStr(ano-1));
              if (mes = 2) then Mensagem.Add(controle + '       REF. JANEIRO/'+ IntToStr(ano));
              if (mes = 3) then Mensagem.Add(controle + '       REF. FEVEREIRO/'+ IntToStr(ano));
              if (mes = 4) then Mensagem.Add(controle + '       REF. MARCO/'+ IntToStr(ano));
              if (mes = 5) then Mensagem.Add(controle + '       REF. ABRIL/'+ IntToStr(ano));
              if (mes = 6) then Mensagem.Add(controle + '       REF. MAIO/'+ IntToStr(ano));
              if (mes = 7) then Mensagem.Add(controle + '       REF. JUNHO/'+ IntToStr(ano));
              if (mes = 8) then Mensagem.Add(controle + '       REF. JULHO/'+ IntToStr(ano));
              if (mes = 9) then Mensagem.Add(controle + '       REF. AGOSTO/'+ IntToStr(ano));
              if (mes =10) then Mensagem.Add(controle + '       REF. SETEMBRO/'+ IntToStr(ano));
              if (mes =11) then Mensagem.Add(controle + '       REF. OUTUBRO/'+ IntToStr(ano));
              if (mes =12) then Mensagem.Add(controle + '       REF. NOVEMBRO/'+ IntToStr(ano));
            end;

          if CheckEndCob.Checked then
            Mensagem.Add('End. Monitoramento: '+SQLContasReceberCLIEA60ENDRES.Value+', '+SQLContasReceberCLIEA5NROENDRES.Value+' - '+SQLContasReceberCLIEA60BAIRES.Value + ' - '+SQLContasReceberCLIEA60CIDRES.Value);

          {Texto livre pelo usuario}
          if MemoInst.Lines.Text <> '' then
            Mensagem.Add(MemoInst.Lines.Text);

          DataProcessamento := Now;
          Vencimento        := SQLContasReceberCTRCDVENC.Value;

          if SQLContaCorrenteBANCA5COD.Value = '041' then
            begin
              DataDocumento  := SQLContasReceberCTRCDEMIS.Value;
              LocalPagamento := 'PAGÁVEL PREFENCIALMENTE NAS AGENCIAS DO BANRISUL';
            end;
          if SQLContaCorrenteBANCA5COD.Value = '748' then
            begin
              DataDocumento  := now;
              LocalPagamento := 'PAGÁVEL PREFENCIALMENTE NAS COOPERATIVAS DE CRÉDITO DO SICREDI';
            end;
          ValorDocumento    := SQLContasReceberCTRCN2VLR.Value;
          ValorAbatimento   := 0.00;

          ValorMoraJuros    := 0;
          ValorDesconto     := 0;
          ValorAbatimento   := 0.00;

          if (dm.SQLConfigCrediario.fieldbyname('CFCRN2PERCMULATRAS').AsCurrency > 0) then
          begin
            DataMoraJuros         := TblDuplicatasCTRCDVENC.AsDateTime;
            ValorMoraJuros   := dm.SQLConfigCrediario.fieldbyname('CFCRN2PERCMULATRAS').AsCurrency;
            CodigoMoraJuros   := cjTaxaMensal;
            
            if ACBrBoleto1.banco.TipoCobranca = cobSicred then
            begin
               CodigoMora := 'B';               
               ACBrBoleto1.ImprimirMensagemPadrao := false;  
               Mensagem.Add(ACBrStr('Cobrar juros de '+
                            FloatToStr(ValorMoraJuros) + '%' +
                             ' por dia de atraso para pagamento a partir de ' +
                             FormatDateTime('dd/mm/yyyy',DataMoraJuros)));
            end
            else
              CodigoMora := '2';

          end;

         { DataMoraJuros     := ;
          DataDesconto      := ;
          DataAbatimento    := ;
          DataProtesto      := ;
          PercentualMulta   := StrToCurrDef(edtMulta.Text,0); }

         { OcorrenciaOriginal.Tipo := toRemessaBaixar; }

          Sacado.NomeSacado := SQLContasReceberCLIEA60RAZAOSOC.AsString;
          Sacado.Fone       := SQLContasReceberCLIEA15FONE1.Value;
          Sacado.Email      := SQLContasReceberCLIEA60EMAIL.Value;

          if SQLContasReceberCLIEA14CGC.AsString <> '' then
            Sacado.CNPJCPF   := SQLContasReceberCLIEA14CGC.Value
          else
            Sacado.CNPJCPF   := SQLContasReceberCLIEA11CPF.Value;

          if not CheckEndCob.Checked then
            begin
              Sacado.Logradouro    := SQLContasReceberCLIEA60ENDRES.Value;
              Sacado.Numero        := SQLContasReceberCLIEA5NROENDRES.Value;
              Sacado.Bairro        := SQLContasReceberCLIEA60BAIRES.Value;
              Sacado.Cidade        := SQLContasReceberCLIEA60CIDRES.Value;
              Sacado.CEP           := SQLContasReceberCLIEA8CEPRES.Value;
              Sacado.UF            := SQLContasReceberCLIEA2UFRES.Value;
            end
          else
            begin
              Sacado.Logradouro    := SQLContasReceberCLIEA60ENDCOB.Value;
              Sacado.Numero        := '';
              Sacado.Bairro        := SQLContasReceberCLIEA60BAICOB.Value;
              Sacado.Cidade        := SQLContasReceberCLIEA60CIDCOB.Value;
              Sacado.CEP           := SQLContasReceberCLIEA8CEPCOB.Value;
              Sacado.UF            := SQLContasReceberCLIEA2UFCOB.Value;
            end;
        end;

      SQLContasReceber.Next;
      Application.ProcessMessages;
    end;

  if SQLContaCorrenteBANCA5COD.Value = '748' then
    ACBrBoleto1.DirArqRemessa := 'c:\easy2solutions\gestao\cobranca\sicredi\remessa';
  if SQLContaCorrenteBANCA5COD.Value = '041' then
    ACBrBoleto1.DirArqRemessa := 'c:\easy2solutions\gestao\cobranca\banrisul\remessa';

  try
    ACBrBoleto1.GerarRemessa(NroRemessa);
    erro := False;
  Except
    erro := True;
  end;

  if not erro then
    begin
      SQLContasReceber.First;
      while not SQLContasReceber.Eof do
        begin
          {atualiza o contasreceber}
          DM.SQLTemplate.Close;
          DM.SQLTemplate.Sql.Clear;
          DM.SQLTemplate.Sql.Add('UPDATE CONTASRECEBER SET LOTEREMESSABANCO='+IntToStr(NroRemessa)+' Where CTRCA13ID = ' + '''' + SQLContasReceberCTRCA13ID.Value + '''') ;
          DM.SQLTemplate.ExecSql;
          DM.SQLTemplate.Close;
          SQLContasReceber.Next;
        end;
      {atualiza a contacorrente}
      DM.SQLTemplate.Close;
      DM.SQLTemplate.Sql.Clear;
      DM.SQLTemplate.Sql.Add('UPDATE CONTACORRENTE SET LOTEREMESSABANCO='+IntToStr(NroRemessa)+' Where CTCRICOD = ' + sContaCorrente) ;
      DM.SQLTemplate.ExecSql;
      DM.SQLTemplate.Close;
    end;

  if not erro then
    ShowMessage('Arquivo Gerado com Sucesso!')
  else
    ShowMessage('Erro ao tentar gerar Remessa!');

end;

procedure TFormTelaImpressaoDuplicata.cbxLayOutChange(Sender: TObject);
var mes : integer ;
var diaSTR, mesSTR : string ;
begin
  inherited;
  diaSTR := FormatDateTime('dd',date);
  mes := strToInt(FormatDateTime('mm',date));
  if (mes>=1) and (mes<=9) then mesSTR := inttostr(mes);
  if mes = 10 then mesSTR := 'O';
  if mes = 11 then mesSTR := 'N';
  if mes = 12 then mesSTR := 'D';

  ACBrBoleto1.ACBrBoletoFC.LayOut := TACBrBolLayOut( cbxLayOut.ItemIndex );
  if SQLContaCorrenteBANCA5COD.Value = '748' then
    ACBrBoleto1.NomeArqRemessa := SQLContaCorrenteCTCRA15CEDENTECOD.AsString + mesSTR + diaSTR + '.crm';
end;

procedure TFormTelaImpressaoDuplicata.CarnePagamentoAvulso1Click(
  Sender: TObject);
begin
  inherited;
  GeraTabelaTempDuplicata;
  ReportCarneAvulso.Print;
end;

procedure TFormTelaImpressaoDuplicata.ppDetailBand3BeforePrint(
  Sender: TObject);
begin
  inherited;
  pEmpresaNome.Caption := SQLEmpresaEMPRA60NOMEFANT.Value;
  ppEmpresa2.Caption   := 'Carne de Pagamento ' + SQLEmpresaEMPRA60NOMEFANT.Value;
end;

procedure TFormTelaImpressaoDuplicata.ReportCarneAvulsoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportCarneAvulso.PreviewForm.WindowState := wsMaximized;
end;

end.














