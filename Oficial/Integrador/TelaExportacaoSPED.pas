unit TelaExportacaoSPED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, RxLookup, StdCtrls, DB, DBTables, RxQuery,
  Buttons, jpeg, ExtCtrls, Mask, ToolEdit, Grids, DBGrids, ComCtrls,
  RxMemDS, IniFiles, Placemnt, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoSped = class(TFormTelaGeralTEMPLATE)
    DSSQLEmpresa: TDataSource;
    SQLEmpresa: TRxQuery;
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
    SQLEmpresaEMPRA60CONTATO: TStringField;
    GroupBox3: TGroupBox;
    ComboEmpresa: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    EditDiretorio: TDirectoryEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    GroupBox5: TGroupBox;
    MemoErro: TMemo;
    SQLUnidade: TRxQuery;
    SQLEmpresaEMPRIMUNICODFED: TIntegerField;
    SQLEmpresaEMPRA20CPFCONTADOR: TStringField;
    SQLEmpresaEMPRA20CPFRESP: TStringField;
    SQLEmpresaEMPRA30CRC: TStringField;
    SQLEmpresaEMPRA40CARGOCONT: TStringField;
    SQLEmpresaEMPRA40CARGORESP: TStringField;
    SQLEmpresaEMPRA60CONTADOR: TStringField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    SQLEmpresaEMPRIUFCODFED: TIntegerField;
    SQLEmpresaEMPRDREGJUNTA: TDateTimeField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLEmpresaEMPRN2CREDICMS: TFloatField;
    SQLEmpresaEMPRA15CRCCONTADOR: TStringField;
    SQLEmpresaEMPRA14CNPJCONTADOR: TStringField;
    SQLEmpresaEMPRA8CEPCONTADOR: TStringField;
    SQLEmpresaEMPRA60ENDCONTADOR: TStringField;
    SQLEmpresaEMPRA60BAICONTADOR: TStringField;
    SQLEmpresaEMPRA10FONECONTADOR: TStringField;
    SQLEmpresaEMPRA10FAXCONTADOR: TStringField;
    SQLEmpresaEMPRA7CODMUNCONTADOR: TStringField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadeUNIDA15DESCR: TStringField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3CAPACEMBAL: TFloatField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3VLRCUSTOMED: TFloatField;
    SQLProdutoPRODN3PERCIPI: TFloatField;
    SQLProdutoPRODN3PERCMARGLUCR: TFloatField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TFloatField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoPRODN3VLRCOMPRAMED: TFloatField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    SQLProdutoPRODCTIPO: TStringField;
    SQLProdutoPRODN2PERCFRETE: TFloatField;
    SQLProdutoPRODN2PIS: TFloatField;
    SQLProdutoPRODN2PERCDESP: TFloatField;
    SQLProdutoPRODN2PERCSUBST: TFloatField;
    SQLProdutoPRODN2PERCDIFICM: TFloatField;
    SQLProdutoPRODIPRINCIPAL: TIntegerField;
    SQLProdutoPRODCCOFINS: TStringField;
    SQLProdutoPRODCVDESTNEG: TStringField;
    SQLProdutoPRODA2CSTCOFINS: TStringField;
    SQLProdutoPRODA2CSTIPI: TStringField;
    SQLProdutoPRODA2CSTPIS: TStringField;
    SQLProdutoPRODN2ALIQCOFINS: TFloatField;
    SQLProdutoPRODN2ALIQPIS: TFloatField;
    SQLProdutoNCMICOD: TIntegerField;
    SQLProdutoPRODA1MODBC: TStringField;
    SQLProdutoPRODA1MODBCST: TStringField;
    SQLProdutoPRODA1TIPO: TStringField;
    CkBarras: TCheckBox;
    SQLEmpresaEMPRIATIVIDADE: TIntegerField;
    GroupBox4: TGroupBox;
    DataInventario: TDateEdit;
    Label6: TLabel;
    CmbModelo: TComboBox;
    Label7: TLabel;
    CmbEscrituracao: TComboBox;
    SQLEmpresaEMPRA2NATPJ: TStringField;
    SQLEmpresaEMPRA9SUFRAMA: TStringField;
    CmbIncidencia: TComboBox;
    CmbTipoTrib: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CmbApropriacao: TComboBox;
    Label12: TLabel;
    CmbCriterioEscrit: TComboBox;
    SQLProdutoPRODA2TIPOITEM: TStringField;
    SQLProdutoNCMA30CODIGO: TStringField;
    SQLEmpresaEMPRA20IMUNIC: TStringField;
    SQLEmpresaEMPRA150CONTADOREMAIL: TStringField;
    Panel1: TPanel;
    Label5: TLabel;
    EditTabela: TEdit;
    Progress: TProgressBar;
    Label8: TLabel;
    Label2: TLabel;
    ProgressGeral: TProgressBar;
    Label3: TLabel;
    Label13: TLabel;
    cmbMotivoInventario: TComboBox;
    Label14: TLabel;
    edtContaAnalitica: TEdit;
    SQLTerminalECF: TRxQuery;
    SQLTerminalECFTERMICOD: TIntegerField;
    SQLTerminalECFECFA13ID: TStringField;
    SQLCupom: TRxQuery;
    SQLCupomQUANTIDADE: TFloatField;
    SQLCupomVALORTOTALITEM: TFloatField;
    SQLCupomPRODICOD: TIntegerField;
    SQLCupomC410: TRxQuery;
    SQLCupomC410VALORTOTALCOFINS: TFloatField;
    SQLCupomC410VALORTOTALPIS: TFloatField;
    SQLReducaoZ: TRxQuery;
    SQLReducaoZREDUA13ID: TStringField;
    SQLReducaoZEMPRICOD: TIntegerField;
    SQLReducaoZREDUICOD: TIntegerField;
    SQLReducaoZECFA13ID: TStringField;
    SQLReducaoZTERMICOD: TIntegerField;
    SQLReducaoZREDUDEMIS: TDateTimeField;
    SQLReducaoZREDUN3VENDABRUTA: TFloatField;
    SQLReducaoZREDUN3GRANDETOTAL: TFloatField;
    SQLReducaoZREDUICONTINICIAL: TIntegerField;
    SQLReducaoZREDUICONTFINAL: TIntegerField;
    SQLReducaoZREDUICONTREDUZ: TIntegerField;
    SQLReducaoZREDUICONTREINICIO: TIntegerField;
    SQLReducaoZREDUN3ALIQ1: TFloatField;
    SQLReducaoZREDUN3BASE1: TFloatField;
    SQLReducaoZREDUN3IMPO1: TFloatField;
    SQLReducaoZREDUN3ALIQ2: TFloatField;
    SQLReducaoZREDUN3BASE2: TFloatField;
    SQLReducaoZREDUN3IMPO2: TFloatField;
    SQLReducaoZREDUN3ALIQ3: TFloatField;
    SQLReducaoZREDUN3BASE3: TFloatField;
    SQLReducaoZREDUN3IMPO3: TFloatField;
    SQLReducaoZREDUN3ALIQ4: TFloatField;
    SQLReducaoZREDUN3BASE4: TFloatField;
    SQLReducaoZREDUN3IMPO4: TFloatField;
    SQLReducaoZREDUN3ALIQ5: TFloatField;
    SQLReducaoZREDUN3BASE5: TFloatField;
    SQLReducaoZREDUN3IMPO5: TFloatField;
    SQLReducaoZREDUN3ALIQ6: TFloatField;
    SQLReducaoZREDUN3BASE6: TFloatField;
    SQLReducaoZREDUN3IMPO6: TFloatField;
    SQLReducaoZREDUN3VENDALIQ: TFloatField;
    SQLReducaoZREDUN3VLRCANC: TFloatField;
    SQLReducaoZREDUN3VLRDESC: TFloatField;
    SQLReducaoZREDUITOTCUPOM: TIntegerField;
    SQLReducaoZREDUN3ALIQ7: TFloatField;
    SQLReducaoZREDUN3BASE7: TFloatField;
    SQLReducaoZREDUN3IMPO7: TFloatField;
    SQLReducaoZREDUN3ALIQ8: TFloatField;
    SQLReducaoZREDUN3BASE8: TFloatField;
    SQLReducaoZREDUN3IMPO8: TFloatField;
    SQLReducaoZREDUN3ALIQF: TFloatField;
    SQLReducaoZREDUN3BASEF: TFloatField;
    SQLReducaoZREDUN3IMPOF: TFloatField;
    SQLReducaoZREDUN3ALIQI: TFloatField;
    SQLReducaoZREDUN3BASEI: TFloatField;
    SQLReducaoZREDUN3IMPOI: TFloatField;
    SQLReducaoZREDUN3ALIQN: TFloatField;
    SQLReducaoZREDUN3BASEN: TFloatField;
    SQLReducaoZREDUN3IMPON: TFloatField;
    SQLReducaoZREDUN3ALIQS: TFloatField;
    SQLReducaoZREDUN3BASES: TFloatField;
    SQLReducaoZREDUN3IMPOS: TFloatField;
    SQLRegC490: TRxQuery;
    SQLRegC490CST_ICMS: TStringField;
    SQLRegC490CFOP: TStringField;
    SQLRegC490ALIQ_ICMS: TStringField;
    SQLRegC490VL_OPR: TFloatField;
    SQLRegC490VL_BC_ICMS: TFloatField;
    SQLRegC490VL_ICMS: TFloatField;
    SQLRegC490VL_BC_ICMS_ST: TFloatField;
    SQLRegC490VL_ICMS_ST: TFloatField;
    SQLRegC490VL_RED_BC: TFloatField;
    SQLRegC490VL_IPI: TFloatField;
    chkterminal: TCheckBox;
    chkItensNFe: TCheckBox;
    ChkImporta: TCheckBox;
    SQLC400: TRxQuery;
    SQLC405: TRxQuery;
    SQLC420: TRxQuery;
    SQLC460: TRxQuery;
    SQLC470: TRxQuery;
    SQLC490: TRxQuery;
    SQLC410: TRxQuery;
    ckC400: TCheckBox;
    Mem0220: TRxMemoryData;
    Mem0220UNIDADE: TStringField;
    ckQuestor: TCheckBox;
    edtVersao: TEdit;
    Label15: TLabel;
    FormStorage1: TFormStorage;
    ckDominioProdutos: TCheckBox;
    GroupBox6: TGroupBox;
    EditCodEmpresa: TEdit;
    ckC100: TCheckBox;
    chkGeraInventario: TCheckBox;
    ckdtEmissao: TCheckBox;
    RadioInventario: TRadioGroup;
    BtExecutar: TSpeedButton;
    btExportaCadastros: TSpeedButton;
    zPesquisa: TRxQuery;
    zPesquisa1: TRxQuery;
    zPesquisa2: TRxQuery;
    zPesquisa3: TRxQuery;
    zInventario: TRxQuery;
    z0190: TRxQuery;
    z0150: TRxQuery;
    ZSerie: TRxQuery;
    ZRegC490: TRxQuery;
    z0150COD_PART: TStringField;
    z0150NOME: TStringField;
    z0150COD_PAIS: TStringField;
    z0150CNPJ: TStringField;
    z0150CPF: TStringField;
    z0150IE: TStringField;
    z0150COD_MUN: TStringField;
    z0150COD_SUFRAMA: TStringField;
    z0150ENDERECO: TStringField;
    z0150END_NUM: TStringField;
    z0150COMPLEMENTO: TStringField;
    z0150BAIRRO: TStringField;
    z0150COD_FORN: TIntegerField;
    z0150COD_TRANSP: TIntegerField;
    z0190UND_SIGLA: TStringField;
    z0190UND_DESCR: TStringField;
    z0200: TRxQuery;
    procedure FormCreate(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    function  MontaLinhaProduto4 : String;
    function  MontaLinhaProduto5 : String;
    function  PreencheValor(STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
    procedure btExportaCadastrosClick(Sender: TObject);
    procedure z0200AfterPost(DataSet: TDataSet);
    procedure z0190AfterPost(DataSet: TDataSet);
    procedure SQLC490AfterPost(DataSet: TDataSet);
    procedure ZRegC490AfterPost(DataSet: TDataSet);
    procedure z0150AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    Function  Registro_Bloco_Zero:Boolean;
    Function  Registro0150: Boolean;
    Function  Registro0206(Produto:String): Boolean;
    Function  Registro0220(Produto:String): Boolean;
    Function  Registro_Bloco_C: boolean;
    Function  RegistroC100: boolean;
    Function  RegistroC113: boolean;
    Function  RegistroC114: boolean;
    Function  RegistroC120: Boolean;
    Function  RegistroC130: Boolean;
    Function  RegistroC140: Boolean;
    Function  RegistroC141: Boolean;
    Function  RegistroC160: Boolean;
    Function  RegistroC170: Boolean;
    Function  RegistroC172: Boolean;
    Function  RegistroC190_MontaTabela: Boolean;
    Function  RegistroC190: Boolean;
    Function  RegistroC410(SerieECF:String; DataRDZ:String): boolean;
    Function  RegistroC420: boolean;
    Function  RegistroC420Importado(SerieECF:String; DataRDZ:String): boolean;
    Function  RegistroC425: boolean;
    Function  RegistroC460_C470_C490: boolean;
    Function  RegistroC481: boolean;
    Function  RegistroC485: boolean;
    Function  Registro_Bloco_D: boolean;
    Function  Registro_Bloco_E: boolean;
    Function  Registro_Bloco_G: boolean;
    Function  Registro_Bloco_H: boolean;
    Function  Registro_Bloco_K: boolean;
    Function  Registro_Bloco_1: boolean;
    Function  Registro_Bloco_9: boolean;
    Function  RegistroD100: Boolean;
    Function  RegistroD190: Boolean;
    Function  Inclui_0190(CodProduto : string): Boolean;
    Function  Inclui_0200(Produto : string; Selected: String): Boolean;
    Function GravaRegistros(LinhaErro : string): Boolean;
    Function GravaRegistros2(LinhaErro : string): Boolean;
    Function RetornaValor(Campo: String):Extended;
    Function RetornaModeloNF(Serie: String): String;
  public
    { Public declarations }
    Arquivo, Arquivo2 : TextFile;

    CaminhoNomeArquivo, CaminhoNomeArquivo2, Linha, Linha2, IE_Emit, IE, Fax_Emit, Fone_Emit, vEntradaSaida : String ;
    vIndEmitente, vCodParticipante, NroDocumento, vDataDocumento : String;
    CodProd, CodBarrasProd, CodNCM, CampoDataEntrada, ModeloNF, sAnoBase : String;

    Erro, CriaC400, CriaC405, CriaC481, CriaC485 : Boolean;

    I, TotalRegistros, TotalBlocoZero, Total_Bloco_A, Total_Bloco_C, Total_Bloco_D,
    Total_Bloco_E, Total_Bloco_G, Total_Bloco_H, Total_Bloco_K, Total_Bloco_1, Total_Bloco_9 : Integer;
    TotalRegistrosPisCofins, TotalBlocoZeroPisCofins, 

    VL_TOT_DEBITOS, VL_TOT_CREDITOS : double;

    n0000, n0001, n0005, n0100, n0110, n0111, n0140, n0150, n0190, n0200, n0206, n0220, n0990 : Integer;
    n9001, n9900, n9990, n9999 : Integer;
    nA001, nA010, nA100, nA110, nA111, nA120, nA170, nA990 :Integer;
    nC001, nC010, nC100, nC105, nC110, nC111, nC113, nC114, nC115, nC120, nC130 :Integer;
    nC140, nC141, nC160, nC170, nC172, nC190, nC400, nC405, nC410, nC420, nC425, nC460, nC470, nC490, nC481, nC485, nC990 :Integer;
    nD001, nD100, nD190, nD990 : Integer;
    nE001, nE100, nE110, nE116, nE990 : Integer;
    nF001, nF100, nF990 : Integer;
    nG001, nG990 : Integer;
    nH001, nH005, nH010, nH020, nH990 : Integer;
    nK001, nK990 : Integer;
    nM001, nM100, nM200, nM210, nM600, nM610, nM990 : Integer;
    n1001, n1010, n1100, n1105, n1300, n1310, n1320, n1350, n1360, n1370, n1990 : Integer;

    function SoNumeros(xText:String):String;
  end;

var
  FormTelaExportacaoSped: TFormTelaExportacaoSped;
  nCFOPConfig : String;
  nCFOPLubrificante : String;
  nGrupoLubrificante: String;

implementation

uses DataModulo, DataModuloTemplate, UnitLibrary, DateUtils;

{$R *.dfm}

Function TFormTelaExportacaoSped.SoNumeros(xText:String):String;
var p:Integer;
 nVar:String;
begin
  nVar := '';
  if xText <> '' then
  begin
    for p:= 0 to length(xText) do
      if xText[p] in (['0'..'9']) then
        nVar := nVar + xText[p];
  end else
    nVar := '';
  Result := nVar
end;

procedure TFormTelaExportacaoSped.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open;

  if sqlempresa.RecordCount = 1 then
    ComboEmpresa.KeyValue := SQLEmpresaEMPRICOD.Value;
end;

procedure TFormTelaExportacaoSped.BtExecutarClick(Sender: TObject);
begin
  inherited;
  sAnoBase := FormatDateTime('yyyy',de.Date);
  if not ckdtEmissao.Checked then
    CampoDataEntrada := 'NOCPDRECEBIMENTO'
  else
    CampoDataEntrada := 'NOCPDEMISSAO';

  VL_TOT_DEBITOS  := 0;
  VL_TOT_CREDITOS := 0;

  TotalRegistros  := 0;
  if (De.Date = null) or (ate.Date = null) then
    begin
      ShowMessage('Informe as datas antes de tentar executar a rotina!');
      Exit;
    end;

  if (De.Date > ate.Date) then
    begin
      ShowMessage('Data de Inicio MAIOR que Data Termino! Verifique!');
      Exit;
    end;

  if ComboEmpresa.Value = '' then
    begin
      ShowMessage('Informe a Empresa antes de tentar executar a rotina!');
      Exit;
    end;

  if chkGeraInventario.Checked then
  begin
    if cmbMotivoInventario.ItemIndex = -1 then
    begin
      Showmessage('Selecione o Motivo da Apuração do Inventário!');
      Exit;
    end;

    if edtContaAnalitica.Text = '' then
    begin
      Showmessage('Preecha a Informação do Código Conta Contábil Analitica!');
      Exit;
    end;
  end;

  zPesquisa.Close;
  zPesquisa.SQL.Text := 'Select * from serie';
  zPesquisa.Open;
  While not zPesquisa.Eof do
  begin
    if (zPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '') OR (zPesquisa.FieldByName('SERIA2TIPONOTA').IsNull) then
    Begin
      ShowMessage('Série '+zPesquisa.FieldByName('SERIA5COD').AsString +' não contêm identificação de documento fiscal');
      Exit;
    End;
    zPesquisa.Next;
  end;
  zPesquisa.Close;


  ProgressGeral.Max := 100;

  CaminhoNomeArquivo := EditDiretorio.Text + '\Sped_Fiscal_'+SQLEmpresaEMPRA60NOMEFANT.AsString+'_'+FormatDateTime('ddmmyyyy',De.date)+'_'+FormatDateTime('ddmmyyyy',ate.Date)+'.TXT';
  CaminhoNomeArquivo2:= EditDiretorio.Text + '\Sped_PisCofins_'+SQLEmpresaEMPRA60NOMEFANT.AsString+'_'+FormatDateTime('ddmmyyyy',De.date)+'_'+FormatDateTime('ddmmyyyy',ate.Date)+'.TXT';
  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
    AssignFile(Arquivo2,CaminhoNomeArquivo2);
    Rewrite(Arquivo2);
  except
    on E:Exception Do
      begin
        Showmessage('Falha ao Criar Arquivo: '+E.message);
        Exit;
      end;
  end;

  BtExecutar.Enabled := False;
  de.Enabled  := False;
  ate.Enabled := False;

  z0190.Close;
  z0190.sql.Text := 'Delete From SPED_0190' ;
  z0190.ExecSQL;

  // Se nao for importar os dados dos ECFs, apagar os Produtos, para recriar corretamente
  if not ChkImporta.Checked then
    begin
      z0200.Close;
      z0200.sql.Text := 'Delete From SPED_0200' ;
      z0200.ExecSQL;
    end;

  if Not Registro_Bloco_Zero Then
  begin
    Showmessage('Falha ao Gerar Registro Bloco Zero');
    CloseFile(Arquivo);
    CloseFile(Arquivo2);
    Exit;
  End;

  if not Registro_Bloco_C Then
  Begin
    Showmessage('Falha ao Gerar Bloco C');
    CloseFile(Arquivo);
    CloseFile(Arquivo2);
    Exit;
  End;

  if Not Registro_Bloco_D Then
  Begin
    Showmessage('Falha ao Gerar Bloco D');
    CloseFile(Arquivo);
    CloseFile(Arquivo2);
    Exit;
  End;

  if Not Registro_Bloco_E Then
  Begin
    Showmessage('Falha ao gerar Bloco E');
    CloseFile(Arquivo);
    CloseFile(Arquivo2);
    Exit;
  End;

  if Not Registro_Bloco_G Then
  Begin
    Showmessage('Falha ao Gerar Bloco G');
    CloseFile(Arquivo);
    CloseFile(Arquivo2);
    Exit;
  End;

  if Not Registro_Bloco_H Then
  Begin
    ShowMessage('Falha ao Gerar Bloco H');
    CloseFile(Arquivo);
    CloseFile(Arquivo2);
    Exit;
  end;

  if (strToInt(sAnoBase) > 2015) then
    begin
      if Not Registro_Bloco_K Then
        begin
          ShowMessage('Falha ao Gerar Bloco K');
          CloseFile(Arquivo);
          CloseFile(Arquivo2);
          Exit;
        end;
    end;

  if Not Registro_Bloco_1 Then
  Begin
    ShowMessage('Falha ao Gerar Bloco 1');
    CloseFile(Arquivo);
    CloseFile(Arquivo2);
    Exit;
  End;

  if Not Registro_Bloco_9 Then
  Begin
    ShowMessage('Falha ao Gerar Bloco 9');
    CloseFile(Arquivo);
    CloseFile(Arquivo2);
    Exit;
  End;

  // Fechar Arquivo
  CloseFile(Arquivo);
  CloseFile(Arquivo2);
  Progress.Position  := 0;
  Progress.Update;
  ProgressGeral.Position := 0;
  ProgressGeral.Update;
  BtExecutar.Enabled := True;
  de.Enabled  := True;
  ate.Enabled := True;

  ShowMessage('Geração Concluida!');
end;

Function TFormTelaExportacaoSped.Registro_Bloco_Zero: boolean;
var Versao, ErroProdutos : string;
    IncluiItem: Boolean;
    ArqProdutos : TextFile;
    LinhaProdutos : string;
    ArquivoAberto: Boolean;
Begin
  ArquivoAberto := False;
  Versao := edtVersao.Text;
  if length(Versao) <> 3 then
    begin
      ShowMessage('Versao do Layout deve ter 3 caracteres! Ex.006');
      Abort;
      Exit;
    end;

  IE_Emit:= SQLEmpresaEMPRA20IE.AsString;
  while pos('/',IE_Emit) > 0 do
    delete(IE_Emit,pos('/',IE_Emit),1);
  while pos('.',IE_Emit) > 0 do
    delete(IE_Emit,pos('.',IE_Emit),1);
  while pos('-',IE_Emit) > 0 do
    delete(IE_Emit,pos('-',IE_Emit),1);


  //Registro 0000 - ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
  TotalBlocoZero := 1;
  EditTabela.Text := 'Exportando Dados da Empresa'; EditTabela.Update;
  n0000 := 0;
  // SPED Fiscal
  Linha := '|0000|'                                                            ; // 01-Registro 0000
           Linha := Linha + Versao                  + '|'                      ; // 02-COD_VER = Versao do layout

           Linha := Linha +
           '0|'                                                                       + // 03-TIPO_ESCRIT = 0=Remessa Arq Original, 1=Remessa Arq Substituido
           FormatDateTime('ddmmyyyy',De.date)              + '|'                      + // 04-DT_INI = Dt Inicial
           FormatDateTime('ddmmyyyy',ate.date)             + '|'                      + // 05-DT_FIN = Dt Final
           trimleft(SQLEmpresaEMPRA60RAZAOSOC.AsString)    + '|'                      + // 06-NOME = Nome da Empresa
           SQLEmpresaEMPRA14CGC.AsString            + '|'                      + // 07-CNPJ = 14
           SQLEmpresaEMPRA11CPF.AsString            + '|'                      + // 08-CPF= 11
           SQLEmpresaEMPRA2UF.AsString              + '|'                      + // 09-UF
           IE_Emit                                  + '|'                      + // 10-IE = 14
           SQLEmpresaEMPRIMUNICODFED.AsString       + '|'                      + // 11-COD_MUN
           SQLEmpresaEMPRA15CODEAN.AsString         + '|'                      + // 12-INSCRICAO MUNICIPAL
           ''                                       + '|'                      + // 13-SUFRAMA-Superintendência da Zona Franca de Manaus
           'A'                                      + '|'                      + // 14-IND_PERFIL = Indicador da natureza da pessoa jurídica: 00 - Sociedade empresária em geral, 01 - Sociedade cooperativa
           SQLEmpresaEMPRIATIVIDADE.AsString        + '|'                      ; // 15-IND_ATIV = Indicador de tipo de atividade preponderante: 0 - Industrial ou equiparado a industrial, 1 - Prestador de serviços, 2 - Atividade de comércio, 3 - Atividade financeira, 4 - Atividade imobiliária, 9 - Outros.

  if not GravaRegistros('0000') Then Begin Result := False; Exit; End;
  inc(n0000);

  // SPED PisCofins
  Linha2 := '|0000|'                                                           + // 01-Registro 0000
             '003'                                           + '|'             + // 02-COD_VER = Versao do layout
             '0|'                                                              + // 03-TIPO_ESCRIT = 0=Remessa Arq Original, 1=Remessa Arq Substituido
             '|'                                                               + // 04-IND_SIT_ESP = Indicador de situação especial {Nao obrigado}
             '|'                                                               + // 05-NUM_REC_ANTERIOR {Nao obrigado}
             FormatDateTime('ddmmyyyy',De.date)              + '|'             + // 06-DT_INI = Dt Inicial
             FormatDateTime('ddmmyyyy',ate.date)             + '|'             + // 07-DT_FIN = Dt Final
             trimleft(SQLEmpresaEMPRA60RAZAOSOC.AsString)    + '|'             + // 08-NOME = Nome da Empresa
             SQLEmpresaEMPRA14CGC.AsString                   + '|'             + // 09-CNPJ = 14
             SQLEmpresaEMPRA2UF.AsString                     + '|'             + // 10-UF
             SQLEmpresaEMPRIMUNICODFED.AsString              + '|'             + // 11-COD_MUN
             '|'                                                               + // 12-SUFRAMA
             '00|'                                                             + // 13-IND_NAT_PJ => 00=Pessoa jurídica em geral
             '2|'                                                              ; // 14-IND_ATIV   => 2=Atividade de comércio
  if not GravaRegistros2('0000') Then Begin Result := False; Exit; End;

  //Registro 0001 - ABERTURA BLOCO ZER0
  n0001 := 0;
  EditTabela.Text := 'Criando Bloco Zero'; EditTabela.Update;
  Linha :=   '|0001|'                                                          + // 01-Registro 0001
             '0'                                      + '|'                    ; // 02-IND_MOV = Indicador de movimento: 0- Bloco com dados informados, 1- Bloco sem dados informados.

  if not GravaRegistros('0001') Then Begin Result := False; Exit; End;
  inc(n0001);
  TotalBlocoZero := TotalBlocoZero + 1;

  // SPED PisCofins
  Linha2 :=   '|0001|'                                                         + // 01-Registro 0001
              '0'                                      + '|'                   ; // 02-IND_MOV = Indicador de movimento: 0- Bloco com dados informados, 1- Bloco sem dados informados.
  if not GravaRegistros2('0000') Then Begin Result := False; Exit; End;


  {REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
  Registro obrigatório utilizado para complementar as informações de identificação do informante do arquivo.}
  n0005 := 0;
  Linha := '|0005|'                                                            + // 01 REG Texto fixo contendo 0005
         trimleft(SQLEmpresaEMPRA60NOMEFANT.AsString)         + '|'            + // 02 FANTASIA Nome de fantasia associado ao nome empresarial. C 060 - O
         SQLEmpresaEMPRA8CEP.AsString                         + '|'            + // 03 CEP Código de Endereçamento Postal. N 008* - O
         trimleft(SQLEmpresaEMPRA60END.AsString)              + '|'            + // 04 END Logradouro e endereço do imóvel. C 060 - O
         FormatDateTime('ddmmyyyy',ate.date)                  + '|'            + // 05 NUM Número do imóvel. C 010 - OC
         SQLEmpresaEMPRIENDNRO.AsString                       + '|'            + // 06 COMPL Dados complementares do endereço. C 060 - OC
         SQLEmpresaEMPRA60BAI.AsString                        + '|'            + // 07 BAIRRO Bairro em que o imóvel está situado. C 060 - O
         Copy(SoNumeros(SQLEmpresaEMPRA20FONE.AsString),0,11) + '|'            + // 08 FONE Número do telefone (DDD+FONE). C 11 - OC
         Copy(SoNumeros(SQLEmpresaEMPRA20FAX.AsString),0,11)  + '|'            + // 09 FAX Número do fax. C 11 - OC
         trimleft(SQLEmpresaEMPRA60EMAIL.AsString)            + '|'            ; // 10 EMAIL Endereço do correio eletrônico. C - - OC}

  if not GravaRegistros('0000') Then Begin Result := False; Exit; End;
  inc(n0005);
  TotalBlocoZero := TotalBlocoZero + 1;

  //REGISTRO 0015: DADOS DO CONTRIBUINTE SUBSTITUTO  -  Ver oque é
  {01 REG Texto fixo contendo ''0015'' C 004 - O
   02 UF_ST Sigla da unidade da federação do contribuinte substituído.
  03 IE_ST Inscrição Estadual do contribuinte substituto na unidade da federação do contribuinte substituído.}


  //Registro 0100 - DADOS DO CONTABILISTA
  EditTabela.Text := 'Exportando Dados do Contador'; EditTabela.Update;
  n0100 := 0;
  Linha :=   '|0100|'                                                            + // 01-Registro 0100
             SQLEmpresaEMPRA60CONTADOR.Value                        + '|'                      + // 02-NOME = Nome Contador
             Copy(SQLEmpresaEMPRA20CPFCONTADOR.AsString,0,11)       + '|'                      + // 03-CPF
             trimleft(SQLEmpresaEMPRA15CRCCONTADOR.AsString)        + '|'                      + // 04-CRC
             SQLEmpresaEMPRA14CNPJCONTADOR.Value                    + '|'                      + // 05-CNPJ
             SQLEmpresaEMPRA8CEPCONTADOR.Value                      + '|'                      + // 06-CEP
             trimleft(SQLEmpresaEMPRA60ENDCONTADOR.Value)           + '|'                      + // 07-ENDERECO
             ''                                                     + '|'                      + // 08-NUMERO
             ''                                                     + '|'                      + // 09-COMPL
             trimleft(SQLEmpresaEMPRA60BAICONTADOR.Value)           + '|'                      + // 10-BAIRRO
             SQLEmpresaEMPRA10FONECONTADOR.Value                    + '|'                      + // 11-FONE
             SQLEmpresaEMPRA10FAXCONTADOR.Value                     + '|'                      + // 12-FAX
             SQLEmpresaEMPRA150CONTADOREMAIL.AsString               + '|'                      + // 13-EMAIL
             SQLEmpresaEMPRA7CODMUNCONTADOR.Value                   + '|'                      ; // 14-COD_MUN

  if not GravaRegistros('0100') Then Begin Result := False; Exit; End;
  inc(n0100);
  TotalBlocoZero := TotalBlocoZero + 1;

  // SPED PisCofins
  Linha2 :=  '|0100|'                                                          + // 01-Registro 0100
             SQLEmpresaEMPRA60CONTADOR.Value                        + '|'      + // 02-NOME = Nome Contador
             Copy(SQLEmpresaEMPRA20CPFCONTADOR.AsString,0,11)       + '|'      + // 03-CPF
             trimleft(SQLEmpresaEMPRA15CRCCONTADOR.AsString)        + '|'      + // 04-CRC
             SQLEmpresaEMPRA14CNPJCONTADOR.Value                    + '|'      + // 05-CNPJ
             SQLEmpresaEMPRA8CEPCONTADOR.Value                      + '|'      + // 06-CEP
             trimleft(SQLEmpresaEMPRA60ENDCONTADOR.Value)           + '|'      + // 07-ENDERECO
             ''                                                     + '|'      + // 08-NUMERO
             ''                                                     + '|'      + // 09-COMPL
             trimleft(SQLEmpresaEMPRA60BAICONTADOR.Value)           + '|'      + // 10-BAIRRO
             SQLEmpresaEMPRA10FONECONTADOR.Value                    + '|'      + // 11-FONE
             SQLEmpresaEMPRA10FAXCONTADOR.Value                     + '|'      + // 12-FAX
             SQLEmpresaEMPRA150CONTADOREMAIL.AsString               + '|'      + // 13-EMAIL
             SQLEmpresaEMPRA7CODMUNCONTADOR.Value                   + '|'      ; // 14-COD_MUN
  if not GravaRegistros2('0100') Then Begin Result := False; Exit; End;

  // SPED PisCofins
  Linha2 :=  '|0110|'                                                          + // 01-Registro 0110
             '1'                                                    + '|'      + // 02-COD_INC_TRIB  => 1=Escrit ope c/incidência exclusivamente no regime não-cumulativo
             '1'                                                    + '|'      + // 03-IND_APRO_CRED => 1=Método de Apropriação Direta
             '1'                                                    + '|'      + // 04-COD_TIPO_CONT => 1=Apuração da Contrib Exclusivamente a Alíquota Básica
             ''                                                     + '|'      ; // 05-IND_REG_CUM
  if not GravaRegistros2('0110') Then Begin Result := False; Exit; End;

  // SPED PisCofins
  Linha2 :=  '|0140|'                                                          + // 01-Registro 0140
             ''                                                     + '|'      + // 02-COD_EST
             trimleft(SQLEmpresaEMPRA60RAZAOSOC.AsString)           + '|'      + // 03-NOME = Nome da Empresa
             SQLEmpresaEMPRA14CGC.AsString                          + '|'      + // 04-CNPJ = 14
             SQLEmpresaEMPRA2UF.AsString                            + '|'      + // 05-UF
             IE_Emit                                                + '|'      + // 06-IE = 14
             SQLEmpresaEMPRIMUNICODFED.AsString                     + '|'      + // 07-COD_MUN
             ''                                                     + '|'      + // 08-IM
             ''                                                     + '|'      ; // 09-SUFRAMA
  if not GravaRegistros2('0140') Then Begin Result := False; Exit; End;

  // Registro 0150 - TABELA DE CADASTRO DO PARTICIPANTE
  EditTabela.Text := 'Criando Registro 0150'; EditTabela.Update;

  if not ckc100.Checked then
    begin
      if Not Registro0150 Then
        begin
          Result := False ;
          Exit;
        end;
    end;

  {REGISTRO 0175: Alteração da Tabela de Cadastro de Participante
    Este registro é de preenchimento obrigatório quando houver, dentro do período, alteração nos dados informados no
    registro 0150, campos: NOME, COD_PAIS, CNPJ, CPF, IE, COD_MUN, SUFRAMA, END, NUM, COMPL e BAIRRO.
    Página 20 de 174
    Guia Prático EFD – Versão 2.0.7
    Atualização: dezembro de 2011
    Não pode ser utilizado, em um mesmo arquivo, um mesmo código para representar um participante diferente do
    referenciado anteriormente por tal código.
    Os dados informados neste registro serão considerados até às 24:00 horas do dia anterior à data de alteração.
    Nº Campo Descrição Tipo Tam Dec Obrig
    01 REG Texto fixo contendo “0175” C 004 - O
    02 DT_ALT Data de alteração do cadastro N 008* - O
    03 NR_CAMPO Número do campo alterado (Somente campos 03 a 13) C 002 - O
    04 CONT_ANT Conteúdo anterior do campo C 100 - O
    }

  ProgressGeral.Position := 10;
  ProgressGeral.Update;

  Progress.Position:= 0;
  Progress.Update;

  // Testar movimentos para identificar os produtos que irao no SPED
  EditTabela.Text := 'Verificando Produtos... Aguarde!'; EditTabela.Update;

  if ChkImporta.Checked then
    begin
      {Caso seja marcado para importar dados das tabelas que receberam os dados importados das impressoras fiscais o
      sistema le a tabela SPED_0200 que contem os produtos lidos das ECFs.}

      zPesquisa.Close;
      zPesquisa.SQL.Text := 'Select distinct unidade.unida5descr, unidade.unida15descr from sped_C470 '+
      'left join sped_0200 on sped_0200.cod_item = sped_c470.coditem '+
      'left join produto on produto.prodicod = sped_0200.cod_item    '+
      'left join unidade on unidade.unidicod = produto.unidicod      '+
      'where  sped_c470.datareducao >='''+FormatDateTime('mm/dd/yyyy',De.Date)+''' and sped_c470.datareducao <='''+FormatDateTime('mm/dd/yyyy',ate.Date)+'''';
      zPesquisa.Open;

      z0190.Close;
      z0190.SQL.Text := 'SELECT * FROM SPED_0190';
      z0190.Open;

      While not zPesquisa.Eof do
        begin
          if zPesquisa.Fieldbyname('UNIDA5DESCR').AsString <> '' then
            begin
              z0190.Append;
              z0190.Fieldbyname('UND_SIGLA').AsString := zPesquisa.Fieldbyname('UNIDA5DESCR').AsString;
              z0190.Fieldbyname('UND_DESCR').AsString := zPesquisa.Fieldbyname('UNIDA15DESCR').AsString;
              try
                z0190.Post;
              except
                z0190.Cancel;
                Application.ProcessMessages;
              end;
            end;  
          zPesquisa.Next;
        end;

      ProgressGeral.Position := 20;
      ProgressGeral.Update;

      {Adiciona e Seleciona os produtos que tiveram vendas de cupons importados}
      zPesquisa.Close;
      zPesquisa.SQL.Text := 'Select distinct coditem from sped_C470';
      zPesquisa.Open;
      while not zPesquisa.eof do
        begin
          Inclui_0200(zPesquisa.fieldbyname('coditem').Asstring,'S');
          zPesquisa.Next;
        end;
      zPesquisa.Close;

     { SQLPesquisa.Close;
      SQLPesquisa.SQL.Text := 'Select * from  SPED_0200 order by Cod_item';
      SQLPesquisa.Prepare;
      SQLPesquisa.Open;

      while not SQLPesquisa.eof do
      begin
        zPesquisa3.Close;
        zPesquisa3.SQL.Text := 'Select coditem from SPED_C470 where CodItem = :xCodigo and DataReducao >= :xDataIni and DataReducao <= :xDataFim';
        zPesquisa3.Prepare;
        zPesquisa3.ParamByName('xCodigo').AsInteger := SQLPesquisa.fieldbyname('COD_ITEM').AsInteger;
        zPesquisa3.ParamByName('xDataIni').AsDate   := De.Date;
        zPesquisa3.ParamByName('xDataFim').AsDate   := Ate.Date;
        zPesquisa3.Open;
        if Not zPesquisa3.IsEmpty then
          Inclui_0190(SQLPesquisa.fieldbyname('COD_ITEM').AsString);
        zPesquisa3.Close;
        SQLPesquisa.Next;
      end;}

      zPesquisa.Close;
    end
  else
    begin
      // se Checked=SIM, não é para incluir cupons nem os itens
      { Se  Checked=Nao, deve gerar os cupom fiscais com os dados do sistema}
      if not ckC400.Checked then
        begin
          zpesquisa3.Close;
          zpesquisa3.sql.Text := 'Delete From SPED_0200';
          zpesquisa3.ExecSQL;

          {Verificar Cupons Fiscais baseado nas Reducoes Z Digitadas}
          SQLReducaoZ.Close;
          SQLReducaoZ.MacroByName('MEmpresa').Value    := 'EMPRICOD  =  ' + ComboEmpresa.KeyValue ;
          SQLReducaoZ.MacroByName('CampoData').Value   := 'REDUDEMIS';
          SQLReducaoZ.MacroByName('DataInicial').Value := '''' + FormatDateTime('mm/dd/yyyy',De.Date)  + '''';
          SQLReducaoZ.MacroByName('DataFinal').Value   := '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
          SQLReducaoZ.Open;
          if not SQLReducaoZ.IsEmpty then
            begin
              SQLReducaoZ.first;
              while not SQLReducaoZ.eof do
                begin
                  SQLCupom.Close;
                  SQLCupom.MacroByName('MEmpresa').Value   := 'CUPOM.EMPRICOD  = ' + ComboEmpresa.KeyValue ;
                  if chkterminal.Checked then
                    SQLCupom.MacroByName('MTerminal').Value  := '0=0'
                  Else
                    SQLCupom.MacroByName('MTerminal').Value  := 'CUPOM.TERMICOD  = ' + SQLReducaoZTERMICOD.AsString ;
                    SQLCupom.MacroByName('MData').Value      := 'CUPOM.CUPODEMIS = ''' + FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.AsDateTime)  + ''' ';
                  SQLCupom.Open;
                  if not SQLCupom.IsEmpty then
                    begin
                      SQLCupom.First;
                      while not SQLCupom.eof do
                        begin
                          Inclui_0200(SQLCupom.fieldbyname('PRODICOD').AsString,'S');
                          SQLCupom.Next;
                        end;
                    end;
                  SQLReducaoZ.next;
                end;
            end;
          ProgressGeral.Position := 20;
          ProgressGeral.Update;
        end;
    end;

  // se gerar inventario cria o registro 0200 e filhos para os produtos adicionados ao inventario.
  if chkGeraInventario.Checked then
    begin
      EditTabela.Text := 'Verificando Produtos que compõem o Inventario de Estoque'; EditTabela.Update;
      EditTabela.Update;
      zInventario.Close;
      zInventario.SQL.Clear;
      zInventario.SQL.Add('select p.prodicod, p.PRODA60DESCR, p.PRODA60CODBAR, p.PRODN3VLRVENDA, ');
      zInventario.SQL.Add('p.PRODN3CAPACEMBAL, p.PRODISITTRIB, p.PRODN3VLRCUSTO, p.PRODN3VLRCUSTOMED, ');
      zInventario.SQL.Add('p.ICMSICOD, i.ICMSA60DESCR, i.ICMSN2REDBASEICMS, u.UNIDA5DESCR, ');
      zInventario.SQL.Add('(iv.INVICONTAGEM1 * p.PRODN3VLRVENDA) AS TOTAL, iv.INVICONTAGEM1 as Qtde from inventarioestoque iv ');
      zInventario.SQL.Add('left join produto p on p.prodicod = iv.prodicod  left join icms i on i.icmsicod = p.icmsicod ');
      zInventario.SQL.Add('left join unidade u on u.unidicod = p.unidicod where (iv.EMPRICOD = '+ComboEmpresa.Value+') and ');
      zInventario.SQL.Add('(iv.INVDDATA = '''+FormatDateTime('mm/dd/yyyy',DataInventario.Date)+''') and ');
      zInventario.SQL.Add('(p.PRODA2TIPOITEM <= 1) and (p.PRODCSERVICO = ''N'') and (p.PRODCATIVO = ''S'') ');
      zInventario.Open;
      //Progress.Max := zInventario.RecordCount;
      Progress.Position := 0;
      Progress.Update;
      While Not zInventario.Eof do
      begin
        EditTabela.Text := 'Incluindo Inventario -> Produto: '+zInventario.fieldbyname('PRODICOD').AsString; EditTabela.Update;
        EditTabela.Update;
        Progress.position := Progress.Position + 1; Progress.update;
        Inclui_0200(zInventario.fieldbyname('PRODICOD').AsString,'S');
        zInventario.Next;
        Progress.Position := Progress.Position + 1;
      end;
      zInventario.close;
      ProgressGeral.Position := 25;
      ProgressGeral.Update;
    end;

  // Se nao estiver checked é para lancar os produtos no 0200
  if not ckC400.Checked then
    begin
      {Verificar Itens das NFCes do Periodo}
      zPesquisa.Close;
      zPesquisa.SQL.Text :=
      'Select DISTINCT I.PRODICOD from CUPOMITEM I ' +
      'WHERE I.CUPOA13ID IN (Select N.CUPOA13ID FROM CUPOM N ' +
      'Where N.CUPODEMIS>='''+formatdatetime('mm/dd/yyyy',De.Date)+''' and N.CUPODEMIS<='''+formatdatetime('mm/dd/yyyy',ate.Date)+''' AND N.EMPRICOD = '+ComboEmpresa.Value+' AND '+
      'N.CUPOCSTATUS = ''A'')';
      zPesquisa.Open;
      if not zPesquisa.IsEmpty then
        begin
          zPesquisa.first;
          while not zPesquisa.eof do
            Begin
              If not zPesquisa.FieldByName('PRODICOD').IsNull Then
                Inclui_0200(zPesquisa.fieldbyname('PRODICOD').AsString,'S');
              zPesquisa.next;
            end;
        end;
    end;

  if not ckC100.Checked then
    begin
      {Verificar Itens das Notas Fiscais de Saida e Compra do Periodo}
      zPesquisa.Close;
      zPesquisa.SQL.Text :=
      'Select DISTINCT I.prodicod from notacompraitem I                                                                 '+
      'WHERE I.NOCPA13ID IN (Select N.NOCPA13ID FROM NOTACOMPRA N                                                       '+
      'Where N.'+CampoDataEntrada+'>='''+formatdatetime('mm/dd/yyyy',De.Date)+''' and N.'+CampoDataEntrada+'<='''+formatdatetime('mm/dd/yyyy',ate.Date)+''' AND N.EMPRICODDESTCOMPRA = '+ComboEmpresa.Value+' AND '+
      '(N.nocpcstatus = ''E'') )';
      if chkItensNFe.Checked then
        begin
          zPesquisa.SQL.Text := zPesquisa.SQL.Text + ' UNION                                                            '+
         'Select DISTINCT I.prodicod from notafiscalitem I                                                              '+
         'WHERE I.NOFIA13ID IN (select N.NOFIA13ID FROM NOTAFISCAL N                                                    '+
         'Where N.NOFIDEMIS >='''+formatdatetime('mm/dd/yyyy',De.Date)+''' and N.NOFIDEMIS <='''+formatdatetime('mm/dd/yyyy',ate.Date)+''' AND N.EMPRICOD = '+ComboEmpresa.Value+' AND '+
         '(N.NOFICSTATUS <> ''A'') )';
        end;

      zPesquisa.Open;
      if not zPesquisa.IsEmpty then
        begin
          zPesquisa.first;
          while not zPesquisa.eof do
            Begin
              If not zPesquisa.FieldByName('PRODICOD').IsNull Then
                Inclui_0200(zPesquisa.fieldbyname('PRODICOD').AsString,'S');
              zPesquisa.next;
            end;
        end;

      // verifica as unidades de conversão gravadas no campo unidicod da tabela NOTACOMPRAITEM para posterior geracao do registro 0220
      if not ckQuestor.Checked then
        begin
          zPesquisa.SQL.Text :=
          'Select Distinct i.unidicod, i.prodicod, n.nocpa30nro, u.* from notacompraitem i '+
          'left join unidade u on u.unidicod = i.unidicod '+
          'left join notacompra n on n.nocpa13id = i.nocpa13id  '+
          'left Join Produto p on p.prodicod = i.prodicod '+
          'Where N.'+CampoDataEntrada+' >= '''+formatdatetime('mm/dd/yyyy',De.Date)+''' and N.'+CampoDataEntrada+' <= '''+formatdatetime('mm/dd/yyyy',ate.Date)+''' AND N.EMPRICODDESTCOMPRA = '+ComboEmpresa.Value+' AND '+
          '(N.NOCPCSTATUS = ''E'') ';

          zPesquisa.Open;
          if not zPesquisa.IsEmpty then
            begin
              while not zPesquisa.eof do
                begin
                  if not zPesquisa.FieldByName('Unidicod').isnull then
                    begin
                      zPesquisa3.Close;
                      zPesquisa3.SQL.Text := 'select * from unidade where UNIDICOD='+zPesquisa.FieldByName('Unidicod').asstring;
                      zPesquisa3.Open;
                      z0190.Close;
                      ////z0190.RequestLive := True;
                      z0190.SQL.Text := 'SELECT * FROM SPED_0190 WHERE UND_SIGLA = '''+zPesquisa3.Fieldbyname('UNIDA5DESCR').AsString+'''';
                      z0190.Open;
                      if z0190.IsEmpty then
                        begin
                          if (not zPesquisa3.Fieldbyname('UNIDA5DESCR').isnull ) and (not zPesquisa3.Fieldbyname('UNIDA15DESCR').isnull) then
                            begin
                              z0190.Append;
                              z0190.Fieldbyname('UND_SIGLA').AsString := zPesquisa3.Fieldbyname('UNIDA5DESCR').AsString;
                              z0190.Fieldbyname('UND_DESCR').AsString := zPesquisa3.Fieldbyname('UNIDA15DESCR').AsString;
                              z0190.Post;
                              Result := True;
                            end
                          else
                            begin
                              ShowMessage('Falha na Inclusão do Registro 0190 (Unidade) - NF Compra: '+zPesquisa.fieldbyname('nocpa30nro').asstring+' - Produto: '+zPesquisa.Fieldbyname('prodicod').asstring);
                              Result := False;
                            end;
                        end;
                    end;
                  zPesquisa.next;
                end;
            end;
        end;
      z0190.Close;
      zPesquisa.Close;
      ProgressGeral.Position := 30;
      ProgressGeral.Update;
    end;

  //Registro 0190 -  IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
  n0190 := 0;
  EditTabela.Text := 'Criando Registro 0190'; EditTabela.Update;
  z0190.Close;
  z0190.SQL.Text := 'SELECT * FROM SPED_0190 ';
  z0190.Open;
  While not z0190.Eof Do
    begin
      Linha :=   '|0190|'                                               + // 01-Registro 0190
                 z0190.fieldbyname('UND_SIGLA').AsString          + '|' + // 02-Sigla
                 z0190.fieldbyname('UND_DESCR').AsString          + '|' ; // 03-Descrica
      If Not GravaRegistros('0190') Then Begin Result := False; Exit; End;
      // Sped PisCofins
      Linha2 := Linha;
      If Not GravaRegistros2('0190') Then Begin Result := False; Exit; End;

      Inc(n0190);
      TotalBlocoZero := TotalBlocoZero + 1;
      z0190.Next;
    end;
  z0190.Close;
  ProgressGeral.Position := 35;
  ProgressGeral.Update;

  //Registro 0200 -  IDENTIFICAÇÃO DAS MERCADORIAS
  n0200 := 0;
  EditTabela.Text := 'Criando Registro 0200'; EditTabela.Update;
  z0200.Close;
  //z0200.RequestLive := False;
  if ChkImporta.Checked then
    Begin
      zPesquisa.Close;
      zPesquisa.SQL.Text := 'Select distinct sped_0200.cod_item,                                  '+
      'produto.proda60descr, produto.proda60codbar, produto.prodcservico, produto.proda2tipoitem, '+
      'produto.proda1tipo, produto.prodn3capacembal,                                              '+
      'icms.icmsn2aliquota,                                                                       '+
      'ncm.ncma30codigo,                                                                          '+
      'unidade.unida5descr, unidade.unida15descr                                                  '+
      'from sped_C470                                                                             '+
      'left join sped_0200 on sped_0200.cod_item = sped_c470.coditem                              '+
      'left join produto on produto.prodicod = sped_0200.cod_item                                 '+
      'LEFT join ncm on ncm.ncmicod = produto.ncmicod                                             '+
      'left join icms on icms.icmsicod = produto.icmsicod                                         '+
      'left join unidade on unidade.unidicod = produto.unidicod                                   '+
      'where  sped_c470.datareducao >= '''+formatdatetime('mm/dd/yyyy',de.Date)+''' and sped_c470.datareducao <= '''+formatdatetime('mm/dd/yyyy',ate.Date)+'''';
      zPesquisa.Open;

      While not zPesquisa.Eof do
        begin
          EditTabela.Text := 'Selecionando Itens: '+zPesquisa.Fieldbyname('cod_item').AsString; EditTabela.Update;
          Try
            z0200.Close;
            //z0200.RequestLive := True;
            z0200.SQL.Text := 'SELECT * FROM SPED_0200 where COD_ITEM = ' + zPesquisa.Fieldbyname('cod_item').AsString;
            z0200.Open;
            if not z0200.IsEmpty then
            begin
              z0200.Edit;
              z0200.fieldbyname('Selecionado').AsString := 'S';
              z0200.Post;
            end;
            z0200.Close;
          Except on E:Exception do
          begin
            MemoErro.Lines.Add('Falha ao Selecionar item '+zPesquisa.Fieldbyname('cod_item').AsString+' da tabela SPED_0200');
            z0200.Close;
          end;end;
          zPesquisa.Next;
        end;
      zPesquisa.Close;
    End;

  z0200.close;
  z0200.RequestLive := False;
  z0200.SQL.Text := 'Select distinct sped_0200.cod_item, '+
  'produto.proda60descr, produto.proda60codbar, produto.prodcservico, produto.proda2tipoitem, '+
  'produto.proda1tipo, produto.prodn3capacembal, produto.PRODIORIGEM, produto.PRODISITTRIB, produto.TABCEST, '  +
  'produto.PRODA2CSTPIS, produto.PRODA3CSTPISENTRADA, produto.PRODA2CSTCOFINS, produto.PRODA3CSTCOFINSENTRADA, '+
  'produto.PRODN3VLRVENDA, produto.PRODN3PERCIPI, produto.PRODN2ALIQPIS, produto.PRODN2ALIQCOFINS,'+
  'unidade.unida5descr, unidade.unida15descr, icms.icmsn2aliquota, ncm.ncma30codigo '+
  'from SPED_0200 '+
  'left join produto on produto.prodicod = sped_0200.cod_item '+
  'LEFT join ncm on ncm.ncmicod = produto.ncmicod '+
  'left join icms on icms.icmsicod = produto.icmsicod '+
  'left join unidade on unidade.unidicod = produto.unidicod '+
  'Where sped_0200.selecionado = ''S'''  ;
  z0200.Open;
  z0200.last;
  //Progress.Max := z0200.Fieldbyname('COD_ITEM').AsInteger;

  if not z0200.IsEmpty then
    begin
      if ckDominioProdutos.Checked then
        begin
          //GERA ARQUIVO TEXTO
          ArquivoAberto := True;
          AssignFile(ArqProdutos,EditDiretorio.Text + '\PRODUTOS.TXT');
          Rewrite(ArqProdutos);
          Reset(ArqProdutos);
        end;
    end;

  z0200.First;
  While not z0200.Eof Do
    begin
      if (z0200.FieldByName('ncma30codigo').IsNull) or
         (z0200.FieldByName('UNIDA5DESCR').AsString='') or
         (z0200.FieldByName('PRODIORIGEM').AsString='') or
         (z0200.FieldByName('PRODISITTRIB').AsString='') or
         (z0200.FieldByName('PRODA2CSTPIS').AsString='') or
         (z0200.FieldByName('PRODA3CSTPISENTRADA').AsString='') then
        begin
          ShowMessage('Produto: '+z0200.Fieldbyname('COD_ITEM').AsString+' Revisar Cadastro!');
          z0200.last;
          Abort;
          Exit;
        end;

      EditTabela.Text := 'Criando Registro 0200 - '+IntToStr(Progress.Position)+' de '+IntToStr(Progress.Max); EditTabela.Update;

      CodProd       := z0200.Fieldbyname('COD_ITEM').AsString;
      CodBarrasProd := z0200.Fieldbyname('COD_ITEM').AsString;
      if CkBarras.Checked and (z0200.FieldByName('PRODA60CODBAR').AsString <>'') then
        CodBarrasProd := z0200.FieldByName('PRODA60CODBAR').AsString;
      Linha :=   '|0200|'                                                                           ; // 01-Registro 0200
                 Linha := Linha + CodProd  + '|' ;                                                    // 02-COD_ITEM

                 Linha := Linha + trimleft(z0200.FieldByName('PRODA60DESCR').AsString)     + '|';     // 03-DESCR_ITEM

                 If ((Copy(CodBarrasProd,0,3) <> '999') and (CodBarrasProd <> '')) and
                 ((Length(Trim(CodBarrasProd)) = 8) or (Length(Trim(CodBarrasProd)) = 12) or
                 (Length(Trim(CodBarrasProd)) = 13) or (Length(Trim(CodBarrasProd)) = 14)) then
                    Linha := Linha + Trim(CodBarrasProd)           + '|'   // 04-COD_BARRA - REPRESENTACAO ALFANUM, SE HOUVER
                 else
                    Linha := Linha + '|'                                 ; // 04-COD_BARRA - REPRESENTACAO ALFANUM, SE HOUVER

                 Linha := Linha                                    + '|' + // 05-COD_ANT_ITEM - Código anterior do item com relação à última informação apresentada.
                 z0200.FieldByName('UNIDA5DESCR').AsString         + '|' + // 06-UNID_INV
                 z0200.FieldByName('PRODA2TIPOITEM').AsString      + '|' + // 07-TIPO_ITEM - 00 – Mercadoria para Revenda; 01 – Matéria-Prima; 02 – Embalagem; 03 – Produto em Processo; 04 – Produto Acabado;
                 TRIM(z0200.FieldByName('ncma30codigo').AsString)  + '|' + // 08-COD_NCM
                                                                     '|' ; // 09-EX_IPI - Código EX, conforme a TIPI

                 if z0200.FieldByName('PRODCSERVICO').AsString = 'S' then
                    Linha := Linha + '00' + '|' +                         // 10-COD_GEN - Código do gênero do item, conforme a Tabela 4.2.1
                                            '|' +
                   z0200.FieldByName('ICMSN2ALIQUOTA').AsString    + '|'  // 12-ALIQ_ICMS
                 else
                    Linha := Linha + Copy(Trim(z0200.FieldByName('ncma30codigo').AsString),0,2) + '|' + // 10-COD_GEN - Código do gênero do item, conforme a Tabela 4.2.1
                                                        '|' + // 11-COD_LST - serviço cfme Anexo I da Lei Compl Fed nº 116/03.
                 z0200.FieldByName('ICMSN2ALIQUOTA').AsString    + '|' + // 12-ALIQ_ICMS
                 z0200.FieldByName('TABCEST').AsString           + '|' ; // 13-CEST TABELA

      If Not GravaRegistros('0200') Then Begin Result := False; Exit; End;

      // Sped PisCofins
      Linha2 := Linha;
      If Not GravaRegistros2('0200') Then Begin Result := False; Exit; End;

      Inc(n0200);
      TotalBlocoZero := TotalBlocoZero + 1;

      ProgressGeral.Position := 50;
      ProgressGeral.Update;

      {Gerar Produtos.txt, layout Dominio Contabilidade}
      if ckDominioProdutos.Checked then
        begin
          // Monta Produto linha 4-Produto
          ArquivoAberto := True;
          Append(ArqProdutos);
          LinhaProdutos := '';
          LinhaProdutos := MontaLinhaProduto4;
          Writeln(ArqProdutos,LinhaProdutos);
          // Monta Produto linha 5-Vigencia
          Append(ArqProdutos);
          LinhaProdutos := '';
          LinhaProdutos := MontaLinhaProduto5;
          Writeln(ArqProdutos,LinhaProdutos);
        end;

      {REGISTRO 0205: ALTERAÇÃO DO ITEM
                  Este registro tem por objetivo informar alterações ocorridas na descrição do produto, desde que não o descaracterize ou
                  haja modificação que o identifique como sendo novo produto, caso não tenha ocorrido movimentação no período da
                  alteração do item, deverá ser informada no primeiro período em que houver movimentação do item.}

      {REGISTRO 0206: CÓDIGO DE PRODUTO CONFORME TABELA ANP (COMBUSTÍVEIS)
                      Este registro tem por objetivo informar o código correspondente ao produto constante na Tabela da Agência Nacional de
                      Petróleo (ANP) para os produtos denominados “Combustíveis”.
                      Deve ser apresentado apenas pelos contribuintes produtores, importadores e distribuidores de combustíveis.}

      if z0200.FieldByName('PRODA1TIPO').AsString = '4' Then // é combustivel
         if Not Registro0206(CodProd) Then Begin Result := False; Exit; End;


      {REGISTRO 0220:  FATORES DE CONVERSÃO DE UNIDADES
                      Este registro tem por objetivo informar os fatores de conversão dos itens discriminados na Tabela de Identificação
                      do Item (Produtos e Serviços) entre a unidade informada no registro 0200 e as unidades informadas nos registros dos
                      documentos fiscais.
                      Quando for utilizada unidade de inventário diferente da unidade comercial do produto é necessário informar o
                      registro 0220 para informar os fatores de conversão entre as unidades.
                      Não podem ser informados dois ou mais registros com o mesmo conteúdo no campo UNID_CONV.}

      { removido adilson pra ver melhor
      if z0200.FieldByName('PRODN3CAPACEMBAL').Value > 1 Then
        if Not Registro0220(CodProd) Then Begin Result := False; Exit; End;  }

      z0200.Next;
      Progress.Position := Progress.Position + 1;
    end;
  z0200.Close;
  z0200.RequestLive := True;
  Progress.Position:= 0;
  Progress.Update;

  //Fecha ARQUIVO TEXTO
  if ckDominioProdutos.Checked and ArquivoAberto then
    CloseFile(ArqProdutos);

  SQLProduto.Open;

{
  REGISTRO 0300: CADASTRO DE BENS OU COMPONENTES DO ATIVO IMOBILIZADO

  REGISTRO 0305: INFORMAÇÃO SOBRE A UTILIZAÇÃO DO BEM

  REGISTRO 0400: TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO
                  Este registro tem por objetivo codificar os textos das diferentes naturezas da operação/prestação discriminadas nos
                  documentos fiscais. Esta codificação e suas descrições são livremente criadas e mantidas pelo contribuinte.
                  Este registro não se refere a CFOP. Algumas empresas utilizam outra classificação além das apresentados nos CFOP. Esta
                  codificação permite informar estes agrupamentos próprios.}

  {REGISTRO 0450: TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL
                  Este registro tem por objetivo codificar todas as informações complementares dos documentos fiscais, exigidas pela
                  legislação fiscal. Estas informações constam no campo “Dados Adicionais” dos documentos fiscais.
                  Esta codificação e suas descrições são livremente criadas e mantidas pelo contribuinte e não podem ser informados dois
                  ou mais registros com o mesmo conteúdo no campo COD_INF.
                  Deverão constar todas as informações complementares de interesse da Administração Tributária, existentes nos
                  documentos fiscais.}

  { If cmbModelo.ItemIndex = 1 then
  REGISTRO 0460: TABELA DE OBSERVAÇÕES DO LANÇAMENTO FISCAL


  {REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
                  Este registro tem o objetivo de identificar as contas contábeis utilizadas pelo contribuinte informante em sua Escrituração
                  Contábil, relacionadas às operações representativas de receitas, tributadas ou não, e dos créditos apurados.}

  {REGISTRO 0600: CENTRO DE CUSTOS
                  Este registro tem o objetivo de identificar os centros de custos referenciados nos registros de operações e documentos
                  escriturados na EFD-PIS/Cofins.
                  Não podem ser informados dois ou mais registros com a mesma combinação de conteúdo nos campos DT_ALT e
                  COD_CCUS.}

  // Registro 0990 - ENCERRA BLOCO ZER0
  EditTabela.Text := 'Fechando Bloco Zero'; EditTabela.Update;
  TotalBlocoZero := TotalBlocoZero + 1;
  Linha :=   '|0990|'                                                            +       // 01-Registro 0990
             intToStr(TotalBlocoZero)                                            + '|';  // 02-QTD_LIN_0 = Qtde Linhas
  If Not GravaRegistros('0990') Then Begin Result := False; Exit; End;
  // Sped PisCofins
  Linha2 := Linha;
  If Not GravaRegistros2('0990') Then Begin Result := False; Exit; End;

  n0990 := 1;
  TotalRegistros := TotalBlocoZero;

  Result := True;
end;

Function TFormTelaExportacaoSped.Registro0206(Produto:String):Boolean;
Begin
  EditTabela.Text := 'Criando Registro 0206 - Codigos da ANP dos Combustiveis'; EditTabela.Update;
  Linha :=   '|0206|'                                                            +       // 01-Registro 0206
             dm.SQLLocate('Produto','PRODICOD','PRODA9CODANP',Produto)           + '|';  // 02-cod_comb codigo anp do combustivel
  If Not GravaRegistros('0206') Then Begin Result := False; Exit; End;
  Inc(n0206);
  TotalBlocoZero := TotalBlocoZero + 1;
  Result := True;
End;

Function TFormTelaExportacaoSped.Registro0220(Produto:String): Boolean;
begin
  zPesquisa3.SQL.Text :=
  'Select Distinct i.unidicod, u.* from notacompraitem i '+
  'left join unidade u on u.unidicod = i.unidicod '+
  'left join notacompra n on n.nocpa13id = i.nocpa13id  '+
  'Where i.prodicod = '+Produto+' and N.'+CampoDataEntrada+' >= '''+formatdatetime('mm/dd/yyyy',de.Date)+''' and N.'+CampoDataEntrada+' <= '''+formatdatetime('mm/dd/yyyy',ate.Date)+''' AND N.EMPRICODDESTCOMPRA = '+ComboEmpresa.Value+' AND '+
  '(N.NOCPCSTATUS = ''E'') '+
  'AND UNIDN3FATORCONV > 0';

  zPesquisa3.Open;

  MEM0220.Open;
  While not zPesquisa3.Eof do
    begin
      MEM0220.First;
      if MEM0220.Locate('UNIDADE',zPesquisa3.Fieldbyname('UNIDA5DESCR').AsString,[]) then
        begin
          Mem0220.Append;
          Mem0220UNIDADE.Value := zPesquisa3.Fieldbyname('UNIDA5DESCR').AsString;
          Mem0220.Post;

          EditTabela.Text := 'Criando Registro 0220 - Conversão de Unidades'; EditTabela.Update;
          Linha :=   '|0220|'                                                            +    // 01 REG Texto fixo contendo ''0220'' C 004 - O
          zPesquisa3.Fieldbyname('UNIDA5DESCR').AsString                           + '|' +    // 02 UNID_CONV Unidade comercial a ser convertida na unidade de estoque, referida no registro 0200.
          FormatFloat('0.000000',zPesquisa3.FieldbyName('UNIDN3FATORCONV').value)  + '|' ;    // 03 FAT_CONV Fator de conversão: fator utilizado para converter (multiplicar) a unidade a ser convertida na unidade adotada no inventário.

          If Not GravaRegistros('0220') Then Begin Result := False; Exit; End;
          Inc(n0220);
          TotalBlocoZero := TotalBlocoZero + 1;
        end;
      zPesquisa3.Next;
    end;
  zPesquisa3.Close;
  Mem0220.Close;
  Result := True;
End;

Function TFormTelaExportacaoSped.Registro_Bloco_C: boolean;
var Modelo_ECF, Serie_ECF, TerminalAtual : string;
    DataAtual : TDate;
    Base : Double;
    Inifile: TInifile;
    TemMov : boolean;
begin
  // le o arquivo de configuracao para saber qual o cfop para a venda de conbustiveis
  IniFile           := TIniFile.Create (DM.PathAplicacao+'IBGestao.ini');
  nCFOPConfig       := IniFile.ReadString('COMBUSTIVEIS','CFOP','');
  nCFOPLubrificante := IniFile.ReadString('COMBUSTIVEIS','CFOPLUBRIFICANTE','');
  nGrupoLubrificante:= IniFile.ReadString('COMBUSTIVEIS','GRUPOLUBRIFICANTE','');
  IniFile.Free;

  TemMov := False;
  if not ckc100.Checked then
    begin
      // Testa se tem movimento de notas fiscais de entrada
      zPesquisa.Close;
      zPesquisa.SQL.Text := 'Select n.nocpa13id from NOTACOMPRA N '+
                            'Where N.'+CampoDataEntrada+' >= '''+FormatDateTime('mm/dd/yyyy',De.Date)+''' and N.'+CampoDataEntrada+' <= '''+FormatDateTime('mm/dd/yyyy',ate.Date)+''' AND N.EMPRICODDESTCOMPRA = '+ComboEmpresa.Value+' AND '+
                            '(N.NOCPCSTATUS = ''E'') ';
      zPesquisa.Open;
      if not zPesquisa.IsEmpty then
        TemMov := True;

      // Testa se tem movimento de notas fiscais emitidas
      zPesquisa.Close;
      zPesquisa.SQL.Text := 'Select N.NOFIICOD from NOTAFISCAL N ' +
                            'Where (N.NOFIDEMIS>='''+FormatDateTime('mm/dd/yyyy',De.date)+''') and (N.NOFIDEMIS <= '''+FormatDateTime('mm/dd/yyyy',ate.Date)+''') AND '+
                            'N.EMPRICOD='+ComboEmpresa.Value+' AND N.NOFICSTATUS <> ''A'' ' ;

      zPesquisa.Open;
      if not zPesquisa.IsEmpty then
        TemMov := True;
    end;

  // Testa se tem movimento de cupons fiscais
  if not chkimporta.Checked then
    begin
      SQLReducaoZ.Close;
      SQLReducaoZ.MacroByName('MEmpresa').Value    := 'EMPRICOD  =  ' + ComboEmpresa.KeyValue ;
      SQLReducaoZ.MacroByName('CampoData').Value   := 'REDUDEMIS';
      SQLReducaoZ.MacroByName('DataInicial').Value := ' ''' + FormatDateTime('mm/dd/yyyy',De.Date)  + ''' ';
      SQLReducaoZ.MacroByName('DataFinal').Value   := ' ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + ''' ';
      SQLReducaoZ.Open;
      if not SQLReducaoZ.IsEmpty then
        TemMov := True;
    end
  else
    begin
      SQLC400.Close;
      SQLC400.Open;
      if not SQLC400.IsEmpty then
        TemMov := True;
      SQLC400.Close;
    end;

  Result := True;
  EditTabela.Text := 'Criando - BLOCO C'; EditTabela.Update;
  EditTabela.Update;

  //Registro C001 - ABERTURA DO BLOCO C - COM MOVIMENTACAO DE ENTRADAS E SAIDAS
  if TemMov then
    begin
      EditTabela.Text := 'Criando Bloco C'; EditTabela.Update;
      Linha :=   '|C001|'                                                            + // 01-Registro C001
                 '0'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados
    end
  else
    begin
      EditTabela.Text := 'Criando Bloco C'; EditTabela.Update;
      Linha :=   '|C001|'                                                            + // 01-Registro C001
                 '1'                                      + '|'                      ; // IND_MOV =  1 - Bloco sem dados informados
    end;

  If Not GravaRegistros('C001') Then
    Begin
      Result := False;
      Exit;
    End;

  nC001 := 1;
  Total_Bloco_C := 1;

  // Sped PisCofins
  { Adilson como nao completei tava dando erro no Sped Fiscal no bloco C100
  Linha2 := Linha;
  If Not GravaRegistros2('C001') Then
    Linha2 :=   '|C010|'                                                         + // 01-Registro C010
                SQLEmpresaEMPRA14CGC.AsString            + '|'                   + // 02-CNPJ = 14
                '2'                                      + '|'                   ; // 03-IND_ESCRI = 2 - Apuração com base no registro individualizado de NF-e (C100 e C170) e de ECF (C400)
  If Not GravaRegistros2('C010') Then
  }
  // REGISTRO C100: DOCUMENTO - NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04) e NF-e (CÓDIGO 55)
  if not ckc100.Checked then
    begin
      if Not RegistroC100 Then
        begin
          Result := False;
          Exit;
        end;
    end;

  ProgressGeral.Position := 80;
  ProgressGeral.Update;

  {Caso nao seja marcada a opcao de importar das tabelas de sped lidas diretamente das ecfs}
  // Teste para nao Criar Cupons
  if not ckc400.Checked then
    begin
      If not ChkImporta.Checked then
      Begin
        nC481 := 0;
        nC485 := 0;
        nC990 := 0;
        SQLReducaoZ.Close;
        SQLReducaoZ.MacroByName('MEmpresa').Value    := 'EMPRICOD  =  ' + ComboEmpresa.KeyValue ;
        SQLReducaoZ.MacroByName('CampoData').Value   := 'REDUDEMIS';
        SQLReducaoZ.MacroByName('DataInicial').Value := ' ''' + FormatDateTime('mm/dd/yyyy',De.Date)  + ''' ';
        SQLReducaoZ.MacroByName('DataFinal').Value   := ' ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + ''' ';
        // ESTA POR ORDEM DE TERMINAL E DEPOIS DATA MOVTO
        SQLReducaoZ.Open;
        SQLReducaoZ.Last;
        //Progress.Max := SQLReducaoZ.RecordCount;
        SQLReducaoZ.First;
        if not SQLReducaoZ.IsEmpty then
        begin
          // Para o primeiro Registro Criar C400, apos tem que testar se trocou o Terminal
          CriaC400 := True;
          nC400    := 0;
          nC405    := 0;
          While not SQLReducaoZ.Eof do
            begin
              Serie_ECF     := '';
              Modelo_ECF    := DM.SQLLocate('ECF','ECFA13ID','ECFA30MODELO',  ''''+SQLReducaoZECFA13ID.AsString+'''');
              Serie_ECF     := DM.SQLLocate('ECF','ECFA13ID','ECFA20NROSERIE',''''+SQLReducaoZECFA13ID.AsString+'''');
              if Serie_ECF = '' then
                Serie_ECF     := DM.SQLLocate('TERMINAL','TERMICOD','TERMA20NROSERIE',SQLReducaoZTERMICOD.AsString);
              if Serie_ECF = '' then
                Serie_ECF     := SQLReducaoZTERMICOD.AsString;

              TerminalAtual := SQLReducaoZTERMICOD.AsString;
              DataAtual     := SQLReducaoZREDUDEMIS.Value;
              // Teste para ver se tem que Criar o Registro C400
              if CriaC400 then
                begin
                  Linha :=   '|C400|'                                                            + // 01-Registro C400
                             '2D'                                     + '|'                      + // 02-COD_MOD - CONFORME TABELA 4.1.1
                             Modelo_ECF                               + '|'                      + // 03-ECF_MOD
                             Serie_ECF                                + '|'                      + // 04-ECF_FAB - SERIE DO ECF
                             SQLReducaoZTERMICOD.AsString             + '|'                      ; // 05-ECF_CX  - NRO CX que usa a ECF

                  if not GravaRegistros('C400') Then Begin Result := False;
                  Exit;
                  End;
                  Inc(nC400);
                  Inc(Total_Bloco_C);

                  CriaC400 := False;
                  CRiaC405 := True;
                end;

              // Teste para ver se tem que criar o Registro C405
              if CriaC405 then
                begin
                  EditTabela.Text := 'Criando Registro C405 - REDUÇOES Z TOTAIS'; EditTabela.Update;
                  EditTabela.Update;

                  Base := SQLReducaoZREDUN3BASE1.Value + SQLReducaoZREDUN3BASE2.Value + SQLReducaoZREDUN3BASE3.Value + SQLReducaoZREDUN3BASE4.Value +
                          SQLReducaoZREDUN3BASE5.Value + SQLReducaoZREDUN3BASE6.Value + SQLReducaoZREDUN3BASE7.Value + SQLReducaoZREDUN3BASE8.Value +
                          SQLReducaoZREDUN3BASEF.Value + SQLReducaoZREDUN3BASEI.Value + SQLReducaoZREDUN3BASEN.Value + SQLReducaoZREDUN3BASES.Value +
                          SQLReducaoZREDUN3VLRCANC.Value;

                  Linha :=   '|C405|'                                                            + // 01-Registro C405
                             FormatDateTime('ddmmyyyy',SQLReducaoZREDUDEMIS.Value) + '|'         + // 02-DT_DOC
                             SQLReducaoZREDUICONTREINICIO.AsString                 + '|'         + // 03-CRO
                             SQLReducaoZREDUICONTREDUZ.AsString                    + '|'         + // 04-CRZ
                             SQLReducaoZREDUICONTFINAL.AsString                    + '|'         + // 05-NUM_COO_FINAL (COO da Reduzao Z)
                             SQLReducaoZREDUN3GRANDETOTAL.AsString                 + '|'         + // 06-GT_FIN
                             FormatFloat('##0.00',Base)                            + '|'         ; // 07-VL_BRT

                  if Not GravaRegistros('C405') Then
                  Begin
                    Result := False;
                    Exit;
                  End Else
                    begin
                      Inc(nC405);
                      Inc(Total_Bloco_C);
                      {Se for EFD FISCAL}
                      if Not RegistroC410('','')  Then
                        Begin
                          Result := False;
                          Exit;
                        End;

                      if Not RegistroC420  Then
                        Begin
                          Result := False;
                          Exit;
                        End;

                      // Adilson, Removido, pois apenas Perfil B usa esse registro
                      // if Not RegistroC425            Then Begin Result := False; Exit; End;

                      if Not RegistroC460_C470_C490  Then
                      Begin
                        MemoErro.Lines.Add('Deu erro no RegistroC460_C470_C490');
                        Result := False;
                        Exit;
                      End;
                    end;
                end;
              SQLReducaoZ.Next;
              Progress.Position := Progress.Position + 1;
              Progress.Update;
              if not chkterminal.Checked then
                if TerminalAtual <> SQLReducaoZTERMICOD.AsString then
                  CriaC400 := True;
            end;
          Linha :=   '|C990|'                                            + // 01-Registro C990
                     IntToStr(Total_Bloco_C + 1)  + '|'                  ; // Total de Registros

          if Not GravaRegistros('C990') Then
          Begin
            Result := False;
            Exit;
          End;
          Inc(nC990);
          Inc(Total_Bloco_C);
        end else
        begin
          // Testa se ainda nao foi criado o nC001, pois ele deve ser unico por arquivo, dai o cria.
          if nC001 < 1 then
            begin
              //Registro C001 - ABERTURA DO BLOCO C - SEM MOVIMENTACAO DE ENTRADAS E SAIDAS
              EditTabela.Text := 'Criando Bloco C'; EditTabela.Update;
              Linha :=   '|C001|'                                                            + // 01-Registro C001
                         '1'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados
              If Not GravaRegistros('C001') Then Begin Result := False;
              Exit;
              End;
              nC001 := 1;
              Total_Bloco_C := 1;

              //Registro C010 - IDENTIFICA O ESTABELECIMENTO
            end;

          Linha :=   '|C990|'                                                            + // 01-Registro C990
                     IntToStr(Total_Bloco_C+1)                + '|'                      ; // Total de Registros

          if Not GravaRegistros('C990') Then Begin Result := False;
          Exit;
          End;
          Inc(nC990);
          Inc(Total_Bloco_C);
        end;
      End Else
      begin
        //Caso seja marcada a opçcão de importar diretamente das tabelas que contem os dados lidos dos arquivos das ecfs
        CriaC400 := True;
        nC400    := 0;
        nC405    := 0;
        SQLC400.Open;
        While Not SQLC400.eof do
        begin
          Modelo_ECF    := SQLC400.fieldbyname('ECF_MODELO').AsString;
          Serie_ECF     := SQLC400.fieldbyname('NUMEROSERIEECF').AsString;
          TerminalAtual := SQLC400.fieldbyname('ECF_CAIXA').AsString;
          // Teste para ver se tem que Criar o Registro C400 - Cadastro da ECF
          EditTabela.Text := 'Criando Registro C400 - REDUÇOES Z'; EditTabela.Update;
          EditTabela.Update;

          Linha :=   '|C400|'                                                            + // 01-Registro C400
                     '2D'                                     + '|'                      + // 02-COD_MOD - CONFORME TABELA 4.1.1
                     Modelo_ECF                               + '|'                      + // 03-ECF_MOD
                     Serie_ECF                                + '|'                      + // 04-ECF_FAB - SERIE DO ECF
                     TerminalAtual                            + '|'                      ; // 05-ECF_CX  - NRO CX que usa a ECF

          if not GravaRegistros('C400') Then
          Begin
            Result := False;
            Exit;
          End;
          Inc(nC400);
          Inc(Total_Bloco_C);

          SQLC405.Close;
          SQLC405.SQL.Text := 'SELECT * FROM SPED_C405 WHERE NUMEROSERIEECF = :xNUMEROSERIE and DataReducao >= :xDataInicial and DataReducao <= :xDataFinal';
          SQLC405.ParamByName('xNumeroSerie').AsString := SQLC400.fieldbyname('NUMEROSERIEECF').AsString;
          SQLC405.ParamByName('xDataInicial').AsDate   := de.Date;
          SQLC405.ParamByName('xDataFinal').AsDate   := Ate.Date;
          SQLC405.Prepare;
          SQLC405.Open;

          While Not SQLC405.Eof do
          Begin
            EditTabela.Text := 'Criando Registro C405 - REDUÇOES Z TOTAIS'; EditTabela.Update;
            EditTabela.Update;

            // Reduções Z da ECF selecionada
            Linha :=  '|C405|'                                                            + // 01-Registro C405
                      FormatDateTime('ddmmyyyy',SQLC405.fieldbyname('DATAREDUCAO').Value)   + '|'         + // 02-DT_DOC
                      SQLC405.fieldbyname('CRO').AsString                                   + '|'         + // 03-CRO
                      SQLC405.fieldbyname('CRZ').AsString                                   + '|'         + // 04-CRZ
                      SQLC405.fieldbyname('COO_FINAL').AsString                             + '|'         + // 05-NUM_COO_FINAL
                      SQLC405.fieldbyname('GT_FIM').AsString                                + '|'         + // 06-GT_FIN
                      FormatFloat('##0.00',SQLC405.fieldbyname('VLR_BRUTO').Value)          + '|'         ; // 07-VL_BRT

            if Not GravaRegistros('C405') Then
            Begin
              Result := False;
              Exit;
            End;

            Inc(nC405);
            Inc(Total_Bloco_C);

            // Carrega a Funcao RegistroC410, Resumo Vendas PIS/Pasep
            if Not RegistroC410(Serie_ECF, SQLC405.fieldbyname('DATAREDUCAO').AsString)  Then
            Begin
              Result := False;
              Exit;
            End;

            {Gerar c460 apenas para dias com movimentacao de vendas}
            if (SQLC405.fieldbyname('VLR_BRUTO').Value > 0) then
            begin
              if Not RegistroC420Importado(Serie_ECF, SQLC405.fieldbyname('DATAREDUCAO').AsString) Then
              Begin
                Result := False;
                Exit;
              End;

              SQLC460.Close;
              SQLC460.ParamByName('xSerie_ECF').AsString := Serie_ECF;
              SQLC460.ParamByName('xDATARDZ').AsDate         := StrToDate(SQLC405.fieldbyname('DATAREDUCAO').AsString);
              SQLC460.Open;
              While Not SQLC460.Eof do
              Begin
                EditTabela.Text := 'Criando Registro C460 - Serie '+Serie_ECF+ ' Data '+ SQLC405.fieldbyname('DATAREDUCAO').AsString+' COO '+SQLC460.FieldByName('NUMEROCOO').AsString;
                EditTabela.Update;


                // Soma o total do pis e do cofins para o cupom fiscal selecionado.
                SQLC410.Close;
                SQLC410.SQL.Text := 'Select SUM(VALORPIS) as VALORTOTALPIS, SUM(VALORCOFINS) AS VALORTOTALCOFINS FROM SPED_C470 WHERE '+
                'NUMEROSERIEECF = :xECFNum AND DATAREDUCAO = :xDataRDZ AND NUMEROCOO = :xCOONum';
                SQLC410.Prepare;
                SQLC410.ParamByName('xECFNum').AsString  := Serie_ECF;
                SQLC410.ParamByName('xDataRDZ').AsDate   := StrToDate(SQLC405.fieldbyname('DATAREDUCAO').AsString);
                SQLC410.ParamByName('xCOONum').AsString  := SQLC460.FieldByName('NUMEROCOO').AsString;
                SQLC410.Open;

                Linha := '|C460|'                                                                      + // 01-Registro C460
                         SQLC460.FieldByName('CODMODELO').AsString                               + '|' + // 02-COD_MOD
                         SQLC460.FieldByName('CODSITUACAO').AsString                             + '|' + // 03-COD_SIT -> 00=DOC REGULAR, 02=DOC CANCELADO
                         SQLC460.FieldByName('NUMEROCOO').AsString                               + '|' ; // 04-NUM_DOC
                         if SQLC460.FieldByName('CODSITUACAO').AsString = '02' then {para cancelados}
                           begin
                             Linha := Linha + '||||||' ; // 05 ate 10
                           end
                         else
                           begin
                             Linha := Linha +
                             FormatDateTime('ddmmyyyy',SQLC460.FieldByName('DATAEMISSAO').Value)     + '|' + // 05-DT_DOC
                             FormatFloat('0.00',SQLC460.FieldByName('VALORDOC').value)               + '|' ; // 06-VL_DOC

                             if (SQLC410.FieldByName('VALORTOTALPIS').isnull) or (SQLC410.FieldByName('VALORTOTALCOFINS').isnull) then
                             begin
                               Linha := Linha +
                               FormatFloat('0.00',0)       + '|' + // 07-VL_PIS
                               FormatFloat('0.00',0)       + '|' ; // 08-VL_COFINS
                             end else
                             begin
                               Linha := Linha +
                               FormatFloat('0.00',SQLC410.FieldByName('VALORTOTALPIS').Value)          + '|' + // 07-VL_PIS
                               FormatFloat('0.00',SQLC410.FieldByName('VALORTOTALCOFINS').Value)       + '|' ; // 08-VL_COFINS
                             End;
                             Linha := Linha +
                             SQLC460.FieldByName('CPFCNPJ').AsString                                   + '|' + // 09-CPF_CNPJ
                             SQLC460.FieldByName('NOMEADQUIRENTE').AsString                            + '|' ; // 10-NOM_ADQ
                           end;
                SQLC410.Close;

                if Not GravaRegistros('C460') Then
                Begin
                  Result := False;
                  Exit;
                End;
                Inc(nC460);
                Inc(Total_Bloco_C);

                SQLC470.Close;
                SQLC470.ParamByName('xSerie_ECF').AsString := Serie_ECF;
                SQLC470.ParamByName('xDATARDZ').AsDate         := StrToDate(SQLC405.fieldbyname('DATAREDUCAO').AsString);
                SQLC470.ParamByName('xCOO').AsString           := SQLC460.FieldByName('NUMEROCOO').AsString;
                SQLC470.Open;

                While Not SQLC470.Eof do
                Begin
                  EditTabela.Text := 'Criando Registro C470 - Itens do Cupom'; EditTabela.Update;
                  EditTabela.Update;

                  Linha := '|C470|'                                                   + // 01-Registro C470
                  SQLC470.fieldByName('CODITEM').AsString                       + '|' + // 02-COD_ITEM
                  FormatFloat('0.000',SQLC470.fieldByName('QUANTIDADE').Value)  + '|' + // 03-QTD
                  FormatFloat('0.000',SQLC470.fieldByName('QTD_CANCEL').Value)  + '|' + // 04-QTD_CANC
                  UpperCase(SQLC470.fieldByName('UNID').AsString)               + '|' + // 05-UNID
                  FormatFloat('0.00',SQLC470.fieldByName('VALORITEM').Value)    + '|' + // 06-VL_ITEM
                  SQLC470.fieldByName('CST_ICMS').AsString                      + '|' + // 07-CST_ICMS
                  SQLC470.fieldByName('CFOPITEM').AsString                      + '|' + // 08-CFOP
                  FormatFloat('0.00',SQLC470.fieldByName('ALIQUOTA').Value)     + '|' + // 09-ALIQ_ICMS
                  FormatFloat('0.00',SQLC470.fieldByName('VALORPIS').Value)     + '|' + // 10-VL_PIS
                  FormatFloat('0.00',SQLC470.fieldByName('VALORCOFINS').Value)  + '|' ; // 11-VL_COFINS

                  if Not GravaRegistros('C470') Then
                  Begin
                    Result := False;
                    Exit;
                  End;
                  Inc(nC470);
                  Inc(Total_Bloco_C);
                  SQLC470.Next;
                End;
                SQLC470.Close;

                SQLC460.Next;
              end;
            End;
            SQLC460.Close;

            if (SQLC405.fieldbyname('VLR_BRUTO').Value > 0) then
            begin
              SQLC490.Close;
              SQLC490.ParamByName('xSerie_ECF').AsString := Serie_ECF;
              SQLC490.ParamByName('xDATARDZ').AsDate         := StrToDate(SQLC405.fieldbyname('DATAREDUCAO').AsString);
              SQLC490.Open;
              While not SQLC490.Eof do
              Begin
                EditTabela.Text := 'Criando Registro C490 - Totalizando Cupom'; EditTabela.Update;
                EditTabela.Update;

                Linha := '|C490|'                                                       + // 01-Registro C490
                SQLC490.FieldByName('CST').AsString                               + '|' + // 02-CST_ICMS
                SQLC490.FieldByName('CFOPITEM').AsString                          + '|' + // 03-CFOP
                FormatFloat('0.00',SQLC490.FieldByName('ALIQUOTA').Value)         + '|' + // 04-ALIQ_ICMS
                FormatFloat('0.00',SQLC490.FieldByName('VALOROPERACAO').Value)    + '|' + // 05-VL_OPR
                FormatFloat('0.00',SQLC490.FieldByName('VALOR_BC_ICMS').Value)    + '|' + // 06-VL_BC_ICMS
                FormatFloat('0.00',SQLC490.FieldByName('VALOR_ICMS').Value)       + '|' + // 07-VL_ICMS
                                                                                    '|' ; // 08-COD_OBS

                {Usado para somar E100,E110}
                if (SQLC490.fieldbyname('VALOR_ICMS').Value > 0) then
                  VL_TOT_DEBITOS := VL_TOT_DEBITOS + SQLC490.fieldbyname('VALOR_ICMS').Value ;

                if Not GravaRegistros('C490') then
                begin
                  Result := False;
                  Exit;
                end;
                Inc(nC490);
                Inc(Total_Bloco_C);

                SQLC490.Next;
              End;
              SQLC490.Close;
            end;

            Progress.Position := Progress.Position + 1;
            Progress.Update;

            SQLC405.Next;
          End; // While Not SQLC405.Eof do
          SQLC405.Close;

          SQLC400.Next;
        End; // C400
        SQLC400.Close;
        EditTabela.Text := 'Criando Registro C990 - Finalizando Bloco C'; EditTabela.Update;
        EditTabela.Update;

        Linha :=   '|C990|'                                            + // 01-Registro C990
                   IntToStr(Total_Bloco_C + 1)  + '|'                  ; // Total de Registros

        if Not GravaRegistros('C990') Then
        Begin
          Result := False;
          Exit;
        End;
        Inc(nC990);
        Inc(Total_Bloco_C);
      End;
    end
  else
    begin
      Linha :=   '|C990|'                                            + // 01-Registro C990
                 IntToStr(Total_Bloco_C + 1)  + '|'                  ; // Total de Registros

      if Not GravaRegistros('C990') Then
      Begin
        Result := False;
        Exit;
      End;
      Inc(nC990);
      Inc(Total_Bloco_C);
    end;
  Progress.Position := 0;
  Progress.Update;

  ProgressGeral.Position := 90;
  ProgressGeral.Update;
end;

Function TFormTelaExportacaoSped.RegistroC425: boolean;
var Cod_Barras, CST_PIS, ALIQ_PIS, VL_BC_PIS, VL_PIS, ALIQ_PIS_QUANT, COD_ITEM, UNIDADE, CST_COF, ALIQ_COF, VL_COF : string;
var Aliq_PisCofins, Vl_Pis_Item, Vl_Cofins_Item : double;
begin
  {Registro C425 - TEM APENAS NA EFD FISCAL}
  {REGISTRO C425: RESUMO DE ITENS DO MOVIMENTO DIÁRIO (CÓDIGO 02 e 2D).
   Este registro tem por objetivo identificar os produtos comercializados na data da movimentação relativa à Redução Z
   informada, sendo obrigatório, quando os totalizadores forem iguais a xxTnnnn, Tnnnn, Fn, In, Nn.}

  Exit;

  EditTabela.Text := 'Reg.C425 - RESUMO DE ITENS DO MOVTO DIÁRIO (CÓDIGO 02 e 2D)'; EditTabela.Update;
  EditTabela.Update;
  SQLCupom.Close;
  SQLCupom.MacroByName('MEmpresa').Value   := 'CUPOM.EMPRICOD  = ' + ComboEmpresa.KeyValue ;
  if chkterminal.Checked then
    SQLCupom.MacroByName('MTerminal').Value  := '0 = 0'
  Else
    SQLCupom.MacroByName('MTerminal').Value  := 'CUPOM.TERMICOD  = ' + SQLReducaoZTERMICOD.AsString ;
  SQLCupom.MacroByName('MData').Value      := 'CUPOM.CUPODEMIS = ''' + FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.Value)  + ''' ';
  SQLCupom.Open;
  SQLCupom.Last;
  Progress.position := 0;
  //Progress.Max := SQLCupom.RecordCount;
  Progress.Update;
  SQLCupom.First;
  while not SQLCupom.Eof do
    begin
      UNIDADE  := DM.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',DM.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLCupomPRODICOD.AsString));

     { Cod_Barras := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLCupomPRODICOD.AsString);
      if CkBarras.Checked and (Cod_Barras <> '') then
        COD_ITEM := Cod_Barras
      else        }
        COD_ITEM := SQLCupomPRODICOD.AsString;

      // Calcula o Pis de cada item
      ALIQ_PIS := DM.SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLCupomPRODICOD.AsString);
      try
        Aliq_PisCofins := StrToFloat(ALIQ_PIS);
      except
        Aliq_PisCofins := 0;
      end;

      if Aliq_PisCofins > 0 then
        Vl_Pis_Item := SQLCupomVALORTOTALITEM.Value * (Aliq_PisCofins / 100)
      else
        Vl_Pis_Item := 0;

      // Calcula o Cofins de cada item
      ALIQ_COF := DM.SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLCupomPRODICOD.AsString);
      try
        Aliq_PisCofins := StrToFloat(ALIQ_COF);
      except
        Aliq_PisCofins := 0;
      end;

      if Aliq_PisCofins > 0 then
        Vl_Cofins_Item := SQLCupomVALORTOTALITEM.Value * (Aliq_PisCofins / 100)
      else
        Vl_Cofins_Item := 0;

      Linha :=   '|C425|'                                                   + // 01-Registro C425
                 COD_ITEM                                             + '|' + // 02-COD_ITEM
                 FormatFloat('0.00',SQLCupomQUANTIDADE.value)         + '|' + // 03-QTD
                 UNIDADE                                              + '|' + // 04-UNID
                 FormatFloat('0.00',SQLCupomVALORTOTALITEM.Value)     + '|' + // 05-VL ITEM
                 FormatFloat('0.00',Vl_Pis_Item)                      + '|' + // 06-VL PIS
                 FormatFloat('0.00',Vl_Cofins_Item)                   + '|' ; // 07-VL COFINS

      Vl_Cofins_Item := 0; Vl_Pis_Item := 0;
      if Not GravaRegistros('C425') Then Begin Result := False; Exit; End;
      Inc(nC425);
      Inc(Total_Bloco_C);
      SQLCupom.Next;
      Progress.position := progress.position +1;
      Progress.Update;
    end;
    ALIQ_COF := ''; ALIQ_PIS := '';
    Progress.Position := 0;
    Progress.update;
    Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC460_C470_C490: boolean;
var Situacao, NroDoc, Data, Vlr_Doc, QtdItem, QtdItemCanc, Vl_Item, Aliq_Icms_Item,  Unidade, Cst_Icms, Cfop, ProdTeste: String;
    Vlr_Pis, Vlr_Cofins, Vl_Pis_Item, Vl_Cofins_Item, Base, nQtde, PercDescTotalRateado, nVl_Item, nVl_TotItem : double;
begin
  { REGISTRO C460: DOCUMENTO FISCAL EMITIDO POR ECF (CÓDIGO 02 e 2D).
    Este registro deve ser apresentado para a identificação dos documentos fiscais emitidos pelos usuários de
    equipamentos ECF, que foram totalizados na Redução Z.
    Para cupom fiscal cancelado, informar somente os campos COD_MOD, COD_SIT e NUM_DOC, sem os
    registros filhos.
    Obs.: Os CNPJ e CPF citados neste registro NÃO devem ser informados no registro 0150. }

  // Lancar o cabecalho de cada cupom no C460, ordenando por Nro Doc e filtrando por ECF
  zPesquisa.Close;
  zPesquisa.SQL.Text := 'SELECT * FROM CUPOM WHERE (CUPODEMIS = '''+FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.Value)+''') AND (TERMICOD = '+SQLReducaoZTERMICOD.AsString+') AND (CUPOINRO>0) ORDER BY CUPOINRO ASC';
  zPesquisa.Open;
  if not zPesquisa.IsEmpty then
    begin
      Progress.position := 0;
      //Progress.Max := zPesquisa.RecordCount;
      Progress.Update;
      while not zPesquisa.eof do
        begin
          PercDescTotalRateado := 0;
          if zPesquisa.fieldbyname('CUPON2DESC').Value > 0 then
             PercDescTotalRateado := (zPesquisa.fieldbyname('CUPON2DESC').Value / (zPesquisa.fieldbyname('CUPON2TOTITENS').Value-zPesquisa.fieldbyname('CUPON2DESCITENS').Value) ) * 100;

          // SQL Para Totalizar o Pis e Cofins dos itens e armazenar para jogar no Cabecalho
          zPesquisa1.Close;
          zPesquisa1.SQL.Text := 'SELECT I.*, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS FROM CUPOMITEM I ' +
                                 'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD WHERE CPITCSTATUS=''A'' and CUPOA13ID = '''+zPesquisa.fieldbyname('CUPOA13ID').AsString+'''' ;
          zPesquisa1.Open;

          Vl_Pis_Item     := 0;
          Vlr_Pis         := 0;
          Vl_Cofins_Item  := 0;
          Vlr_Cofins      := 0;
          nVl_TotItem     := 0;

          if (not zPesquisa1.IsEmpty) and (zPesquisa.FieldByName('cupocstatus').AsString <> 'C') then
            begin
              while not zPesquisa1.eof do
                begin
                  ProdTeste := zPesquisa1.fieldbyname('PRODICOD').Asstring;

                  EditTabela.Text := 'Reg.C460 Calc. Total Pis/Cofins Por ECF ' + zPesquisa.fieldbyname('CUPOA13ID').AsString ; EditTabela.Update;
                  EditTabela.Update;

                  if ProdTeste = '' then
                    MemoErro.Lines.Add('Reg.C460 DOC.FISCAL POR ECF ' + zPesquisa.fieldbyname('CUPOA13ID').AsString+' Cd.Produto Vazio');

                  if (ProdTeste <> '') and (zPesquisa1.fieldbyname('CPITN3VLRUNIT').Value>0) and (zPesquisa1.fieldbyname('CPITN3QTD').Value>0) then
                    begin
                      // Vlr Total Item
                      nVl_Item := (zPesquisa1.fieldbyname('CPITN3VLRUNIT').Value * zPesquisa1.fieldbyname('CPITN3QTD').Value)-zPesquisa1.fieldbyname('CPITN2DESC').Value;
                      nVl_TotItem := nVl_TotItem + nVl_Item;
                      if PercDescTotalRateado > 0 then
                        nVl_Item := nVl_Item - (nVl_Item * (PercDescTotalRateado/100));

                      // Calcula o Pis de cada item e totaliza
                      if zPesquisa1.fieldbyname('PRODN2ALIQPIS').Value > 0 then
                        Vl_Pis_Item := nVl_Item  * (zPesquisa1.fieldbyname('PRODN2ALIQPIS').Value/100)
                      else
                        Vl_Pis_Item := 0;
                      Vlr_Pis := Vlr_Pis + Vl_Pis_Item;

                      // Calcula o Cofins de cada item e totaliza
                      if zPesquisa1.fieldbyname('PRODN2ALIQCOFINS').Value > 0 then
                        Vl_Cofins_Item := nVl_Item  * (zPesquisa1.fieldbyname('PRODN2ALIQCOFINS').Value/100)
                      else
                        Vl_Cofins_Item := 0;
                      Vlr_Cofins := Vlr_Cofins + Vl_Cofins_Item;
                    end;
                  zPesquisa1.next;
                end;
            end;

          if nVl_TotItem > 0 then
            Vlr_Doc := FormatFloat('0.00',nVl_TotItem)
          else
            Vlr_Doc := FormatFloat('0.00',zPesquisa.fieldbyname('CUPON2TOTITENS').Value - zPesquisa.fieldbyname('CUPON2DESC').Value
                                                                                        - zPesquisa.fieldbyname('CUPON2DESCITENS').Value);

          EditTabela.Text := 'Reg.C460 - EMITIDO POR ECF - '+zPesquisa.fieldbyname('CUPOA13ID').AsString; EditTabela.Update;
          EditTabela.Update;
          NroDoc  := FormatFloat('######000000',zPesquisa.fieldbyname('CUPOINRO').AsInteger);
          Data    := FormatDateTime('ddmmyyyy',zPesquisa.fieldbyname('CUPODEMIS').Value);

          if zPesquisa.fieldbyname('CUPOCSTATUS').AsString = 'A' then
            Situacao := '00'
          else
            Situacao := '02';

          if Situacao = '00' then
            Linha := '|C460|'                                                  + // 01-Registro C460
                   '2D'                                                  + '|' + // 02-COD_MOD
                   Situacao                                              + '|' + // 03-COD_SIT -> 00=DOC REGULAR, 02=DOC CANCELADO
                   NroDoc                                                + '|' + // 04-NUM_DOC
                   Data                                                  + '|' + // 05-DT_DOC
                   Vlr_Doc                                               + '|' + // 06-VL_DOC
                   FormatFloat('##0.00',Vlr_Pis)                         + '|' + // 07-VL_PIS
                   FormatFloat('##0.00',Vlr_Cofins)                      + '|' + // 08-VL_COFINS
                   ''                                                    + '|' + // 09-CPF_CNPJ
                   ''                                                    + '|'  // 10-NOM_ADQ
          else
            Linha := '|C460|'                                                  + // 01-Registro C460
                   '2D'                                                  + '|' + // 02-COD_MOD
                   Situacao                                              + '|' + // 03-COD_SIT -> 00=DOC REGULAR, 02=DOC CANCELADO
                   NroDoc                                                + '|' + // 04-NUM_DOC
                                                                           '|' + // 05-DT_DOC
                                                                           '|' + // 06-VL_DOC
                                                                           '|' + // 07-VL_PIS
                                                                           '|' + // 08-VL_COFINS
                                                                           '|' + // 09-CPF_CNPJ
                                                                           '|' ; // 10-NOM_ADQ


          if Not GravaRegistros('C460') Then Begin Result := False; Exit; End;
          Inc(nC460);
          Inc(Total_Bloco_C);

          if Situacao = '00' then
          begin
            {REGISTRO C470: ITENS DO DOCUMENTO FISCAL EMITIDO POR ECF (CÓDIGO 02 e 2D).
             Este registro deve ser apresentado para informar os itens dos documentos fiscais emitidos pelos
             usuários de equipamentos ECF, que foram totalizados na Redução Z. O serviço de competência
             municipal (ISS) deverá ser informado nesse registro, para tanto, deverá ser criado o item no registro 0200 cujo
             conteúdo do campo TIPO_ITEM será igual “09” (Serviços).}

            zPesquisa1.Close;
            zPesquisa1.SQL.Text := 'SELECT C.*, U.UNIDA5DESCR, P.PRODA60CODBAR, P.PRODIORIGEM, P.PRODISITTRIB, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, '+
                                       'P.PRODA1TIPO, I.ICMSN2ALIQUOTA, P.PRODCSERVICO FROM CUPOMITEM C ' +
                                       'LEFT JOIN PRODUTO P ON P.PRODICOD = C.PRODICOD ' +
                                       'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD ' +
                                       'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD ' +
                                       'WHERE CPITCSTATUS=''A'' and CUPOA13ID = ''' + zPesquisa.fieldbyname('CUPOA13ID').AsString + '''';
            zPesquisa1.Open;
            if not zPesquisa1.IsEmpty then
              begin
                while not zPesquisa1.eof do
                  begin
                    try
                      CodProd := zPesquisa1.fieldbyname('PRODICOD').AsString ;

                      EditTabela.Text := 'Reg.C470 DOC.FISCAL POR ECF ' + zPesquisa.fieldbyname('CUPOA13ID').AsString+'-'+CodProd ; EditTabela.Update;
                      EditTabela.Update;

                      // verifica o numero de casas na quantidade
                      if DM.SQLLocate('TERMINAL','TERMICOD','TERMINRODECQUANT',SQLReducaoZTERMICOD.AsString) = '2' Then
                      begin
                        QtdItem  := FormatFloat('0.00',zPesquisa1.fieldbyname('CPITN3QTD').Value);
                        QtdItem  := Copy(QtdItem,0,Length(Qtditem)-1)+'0';
                        nQtde    := StrToFloat(QtdItem);
                      End Else
                      begin
                        QtdItem  := FormatFloat('0.000',zPesquisa1.fieldbyname('CPITN3QTD').Value);
                        nQtde    := StrToFloat(QtdItem);
                      End;

                      if zPesquisa1.fieldbyname('CPITCSTATUS').Value = 'C' then
                        begin
                          QtdItemCanc  := FormatFloat('0.000',zPesquisa1.fieldbyname('CPITN3QTD').Value);
                        end
                      else
                        QtdItemCanc := '0,000';

                      Unidade  := zPesquisa1.fieldbyname('UNIDA5DESCR').AsString;
                      nVl_item := (zPesquisa1.fieldbyname('CPITN3VLRUNIT').Value * nQtde)-zPesquisa1.fieldbyname('CPITN2DESC').Value;
                      if PercDescTotalRateado>0 then
                        nVl_item := nVl_item - (nVl_item * (PercDescTotalRateado/100));
                      Vl_Item  := FormatFloat('0.00',nVl_item);

                      Cst_Icms := zPesquisa1.fieldbyname('PRODIORIGEM').AsString+zPesquisa1.fieldbyname('PRODISITTRIB').AsString;
                      Cst_Icms := FormatFloat('###000',strtoint(Cst_Icms));
                      Aliq_Icms_Item := '0';

                      if (zPesquisa1.fieldbyname('coitn2icmsaliq').Value > 0) then
                        begin
                          // se for prestacao de servico, coloca no devido cfop
                          If zPesquisa1.FieldByName('prodcservico').AsString = 'S' Then
                            begin
                              Cfop            := '5933'; // Prestação de serviço tributado pelo ISSQN
                              Cst_Icms        := '041' ; // não Tributada
                              Aliq_Icms_Item  :=  '0'  ;
                              Base            := 0     ;
                            end
                          else
                            begin
                              Base            := nVl_Item;
                              Cfop            := '5102';
                              Cst_Icms        := '000';
                              Aliq_Icms_Item  := FormatFloat('0.00',zPesquisa1.fieldbyname('coitn2icmsaliq').Value);
                            end
                        end
                      else
                        begin
                          If zPesquisa1.FieldByName('PRODA1TIPO').AsString = '4' Then // Combustivies
                            begin
                              if nCFOPConfig = '' Then
                                Cfop := '5656'
                              else
                                Cfop := nCFOPConfig;
                            end
                          else
                            if (Cst_Icms = '010') or (Cst_Icms = '060') or (Cst_Icms = '500') then
                              Cfop := '5405'
                            Else
                              Cfop := '5102';

                          Aliq_Icms_Item := '0';
                          if (Cst_Icms = '000') or (Cst_Icms = '020') then Cst_Icms := '000';
                        end;

                        // Verifica se o produto é lubrificante
                        if (nCFOPLubrificante <> '') and (zPesquisa1.FieldByName('PRODA1TIPO').AsString <> '4') then
                          if Pos(SQLLocate('PRODUTO','PRODICOD','GRUPICOD',zPesquisa1.fieldbyname('PRODICOD').AsString),nGrupoLubrificante) > 0 then
                             Cfop := nCFOPLubrificante;

                      // Calcula o Pis de cada item
                      if zPesquisa1.fieldbyname('PRODN2ALIQPIS').Value > 0 then
                        Vl_Pis_Item := nVl_item * (zPesquisa1.fieldbyname('PRODN2ALIQPIS').Value/100)
                      else
                        Vl_Pis_Item := 0;

                      // Calcula o Cofins de cada item
                      if zPesquisa1.fieldbyname('PRODN2ALIQCOFINS').Value > 0 then
                        Vl_Cofins_Item := nVl_item * (zPesquisa1.fieldbyname('PRODN2ALIQCOFINS').Value/100)
                      else
                        Vl_Cofins_Item := 0;

                      if Cst_Icms = '060' then
                        Cfop := '5405'
                      else
                        Cfop := '5102';

                      Linha := '|C470|'                                                    + // 01-Registro C470
                               CodProd                                               + '|' + // 02-COD_ITEM
                               QtdItem                                               + '|' + // 03-QTD
                               QtdItemCanc                                           + '|' + // 04-QTD_CANC
                               Unidade                                               + '|' + // 05-UNID
                               Vl_Item                                               + '|' + // 06-VL_ITEM
                               Cst_Icms                                              + '|' + // 07-CST_ICMS
                               Cfop                                                  + '|' + // 08-CFOP
                               Aliq_Icms_Item                                        + '|' + // 09-ALIQ_ICMS
                               FormatFloat('0.00',Vl_Pis_Item)                       + '|' + // 10-VL_PIS
                               FormatFloat('0.00',Vl_Cofins_Item)                    + '|' ; // 11-VL_COFINS

                      if Not GravaRegistros('C470') Then Begin Result := False;
                      Exit;
                      End;
                      Inc(nC470);
                      Inc(Total_Bloco_C);

                    Except on e:exception do
                    begin
                      ShowMessage('Falha ao gerar Registro C470 - Produto '+zPesquisa1.fieldbyname('prodicod').asstring+#13+#10+
                      E.Message);
                    end;end;
                    zPesquisa1.Next;
                  end;
              end;
          End;
          zPesquisa.Next;
          Progress.position := progress.position +1;
          Progress.Update;
        end;

      Progress.Position := 0;
      Progress.update;
    end;

  {REGISTRO C490: REGISTRO ANALÍTICO DO MOVIMENTO DIÁRIO (CÓDIGO 02 e 2D).
   Este registro tem por objetivo representar a escrituração dos documentos fiscais emitidos por ECF e totalizados
   pela combinação de CST, CFOP e Alíquota.}
  ZRegC490.Close;
  ZRegC490.SQL.Clear;
  ZRegC490.SQL.Add('Select * from SPED_REGC490');
  ZRegC490.Open;
  if not zRegC490.IsEmpty then
    begin
      zRegC490.First;
      while not zRegC490.Eof do
        begin
          Try
            EditTabela.Text := 'Reg.C490 - TOTALIZAR POR CST, CFOP E ALIQ - Cupom: '+zPesquisa.fieldbyname('CUPOA13ID').AsString; EditTabela.Update;
            EditTabela.Update;
            Linha := '|C490|'                                                             + // 01-Registro C490
                     zRegC490.fieldbyname('CST_ICMS').AsString                      + '|' + // 02-CST_ICMS
                     zRegC490.fieldbyname('CFOP').AsString                          + '|' + // 03-CFOP
                     zRegC490.fieldbyname('ALIQ_ICMS').AsString                     + '|' + // 04-ALIQ_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_OPR').Value)       + '|' + // 05-VL_OPR
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_BC_ICMS').Value)   + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_ICMS').Value)      + '|' + // 07-VL_ICMS
                                                                                      '|' ; // 08-COD_OBS

            if (zRegC490.fieldbyname('VL_ICMS').Value > 0) and ((zRegC490.fieldbyname('CST_ICMS').AsString='00') or (zRegC490.fieldbyname('CST_ICMS').AsString ='20'))  then
              VL_TOT_DEBITOS := VL_TOT_DEBITOS + zRegC490.fieldbyname('VL_ICMS').Value;
          Except on E:Exception do
          begin
            Showmessage('Falha ao criar Linha do Registro C490: '+E.Message);
          End; End;
          if Not GravaRegistros('C490') then begin Result := False;
            Exit;
          end;
          Inc(nC490);
          Inc(Total_Bloco_C);

          zRegC490.Next;
        end;
    end;
    Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC481: boolean;
var Cod_Barras, CST_PIS, ALIQ_PIS, ALIQ_PIS_QUANT, VL_BC_PIS, VL_PIS, COD_ITEM : string;
begin
  if CmbModelo.ItemIndex = 1 then
    Exit;
  // Registro C481 => Resumo Vendas PIS/Pasep
  EditTabela.Text := 'Criando Registro C481 - RESUMO VENDAS PIS/PASEP'; EditTabela.Update;
  EditTabela.Update;
  SQLCupom.Close;
  SQLCupom.MacroByName('MEmpresa').Value   := 'CUPOM.EMPRICOD  = ' + ComboEmpresa.KeyValue ;
  if chkterminal.Checked then
    SQLCupom.MacroByName('MTerminal').Value  := '0 = 0 '
  else
    SQLCupom.MacroByName('MTerminal').Value  := 'CUPOM.TERMICOD  = ' + SQLReducaoZTERMICOD.AsString ;
  SQLCupom.MacroByName('MData').Value      := 'CUPOM.CUPODEMIS = ''' + FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.Value)  + ''' ';
  SQLCupom.Open;
  SQLCupom.Last;
  //Progress.Max := SQLCupom.RecordCount;
  SQLCupom.First;
  while not SQLCupom.Eof do
    begin
      ALIQ_PIS:= DM.SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLCupomPRODICOD.AsString);
      if (StrToFloat(Aliq_Pis) > 0) then
        begin
          CST_PIS := DM.SQLLocate('PRODUTO','PRODICOD','PRODA2CSTPIS',SQLCupomPRODICOD.AsString);
          VL_PIS  := FormatFloat('0.00',(SQLCupomVALORTOTALITEM.Value * (StrToFloat(ALIQ_PIS)) / 100));

         { Cod_Barras := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLCupomPRODICOD.AsString);
          if CkBarras.Checked and (Cod_Barras <> '') then
            COD_ITEM := Cod_Barras
          else       }
            COD_ITEM :=SQLCupomPRODICOD.AsString;

          Linha :=   '|C481|'                                                    + // 01-Registro C481
                     CST_PIS                                               + '|' + // 02-CST_PIS
                     FormatFloat('0.00',SQLCupomVALORTOTALITEM.value)      + '|' + // 03-VL_ITEM
                     FormatFloat('0.00',SQLCupomVALORTOTALITEM.Value)      + '|' + // 04-VL_BC_PIS
                     FormatFloat('0.0000',StrToFloat(ALIQ_PIS))            + '|' + // 05-ALIQ_PIS
                                                                             '|' + // 06-QUANT_BC_PIS
                                                                             '|' + // 07-ALIQ_PIS_QUANT
                     VL_PIS                                                + '|' + // 08-VL_PIS
                     COD_ITEM                                              + '|'         + // 09-COD_ITEM
                                                                             '|'         ; // 10-COD_CTA

          if Not GravaRegistros('C481') Then Begin Result := False; Exit; End;
          Inc(nC481);
          Inc(Total_Bloco_C);
        end;
      SQLCupom.Next;
      Progress.position := progress.position +1;
    end;
    Progress.Position := 0;
    Progress.update;
end;

Function TFormTelaExportacaoSped.RegistroC485: boolean;
var Cod_Barras, CST_COFINS, ALIQ_COFINS, ALIQ_COFINS_QUANT, VL_BC_COFINS, VL_COFINS, COD_ITEM : string;
begin
  if cmbModelo.ItemIndex = 1 then
    Exit;
  // Registro C485 => Resumo Vendas COFINS
  EditTabela.Text := 'Criando Registro C485 - RESUMO VENDAS COFINS'; EditTabela.Update;
  EditTabela.Update;

  SQLCupom.Last;
  //Progress.Max := SQLCupom.RecordCount;
  SQLCupom.First;
  while not SQLCupom.Eof do
    begin
      ALIQ_COFINS:= DM.SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLCupomPRODICOD.AsString);
      if (StrToFloat(ALIQ_COFINS) > 0) then
        begin
          CST_COFINS := DM.SQLLocate('PRODUTO','PRODICOD','PRODA2CSTCOFINS',SQLCupomPRODICOD.AsString);
          VL_COFINS  := FormatFloat('0.00',((SQLCupomVALORTOTALITEM.Value * StrToFloat(ALIQ_COFINS)) / 100));

        {  Cod_Barras := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLCupomPRODICOD.AsString) ;
          if CkBarras.Checked and (Cod_Barras <> '') then
            COD_ITEM := Cod_Barras
          else     }
            COD_ITEM :=SQLCupomPRODICOD.AsString;

          Linha :=   '|C485|'                                                            + // 01-Registro C485
                     CST_COFINS                                            + '|'         + // 02-CST_COFINS
                     FormatFloat('0.00',SQLCupomVALORTOTALITEM.value)      + '|'         + // 03-VL_ITEM
                     FormatFloat('0.00',SQLCupomVALORTOTALITEM.Value)      + '|'         + // 04-VL_BC_COFINS
                     FormatFloat('0.00',StrToFloat(ALIQ_COFINS))           + '|'         + // 05-ALIQ_COFINS
                                                                             '|'         + // 06-QUANT_BC_COFINS
                                                                             '|'         + // 07-ALIQ_COFINS_QUANT
                     VL_COFINS                                             + '|'         + // 08-VL_COFINS
                     COD_ITEM                                              + '|'         + // 09-COD_ITEM
                                                                             '|'         ; // 10-COD_CTA

          If Not GravaRegistros('C485') Then Begin Result := False; Exit; End;
          Inc(nC485);
          Inc(Total_Bloco_C);
        end;
      SQLCupom.Next;
      Progress.Position := Progress.Position + 1;
    end;
    Progress.Position := 0;
    Progress.update;
end;

Function TFormTelaExportacaoSped.Registro_Bloco_H: boolean;
var VL_INV, vBase : Double;
    QtdMov : Extended;
    Cod_Barras : string;
begin
  // Se o Arquivo a ser Gerado é SPED de PIS/COFINS não gera o bloco.
  Total_Bloco_H := 0;
  if not chkGeraInventario.Checked then
    begin
      //Registro H001 - ABERTURA DO BLOCO H - SEM MOVIMENTACAO NO PERIODO ESCOLHIDO
      EditTabela.Text := 'Criando Bloco H'; EditTabela.Update;
      Linha :=   '|H001|'                                                            + // 01-Registro H001
                 '1'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados

      if Not GravaRegistros('H001') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH001 := 1;

      Linha :=   '|H990|'                                                            + // 01-Registro H990
                 '2'                                      + '|'                      ; // Total de Registros

      if Not GravaRegistros('H990') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH990 := 1;
      Result := True;
      Exit;
    end;

  EditTabela.Text := 'Criando - REGISTRO DE INVENTARIO'; EditTabela.Update;
  EditTabela.Update;

  {Pega da Tab.Inventario}
  if RadioInventario.ItemIndex = 0 then
    begin
      zInventario.Close;
      zInventario.SQL.Clear;
      zInventario.SQL.Add('select p.prodicod, p.PRODA60DESCR, p.PRODA60CODBAR, p.PRODN3VLRVENDA, ');
      zInventario.SQL.Add('p.PRODN3CAPACEMBAL, p.PRODISITTRIB, p.PRODN3VLRCUSTO, p.PRODN3VLRCUSTOMED, ');
      zInventario.SQL.Add('p.ICMSICOD, i.ICMSA60DESCR, i.ICMSN2REDBASEICMS, u.UNIDA5DESCR, ');
      zInventario.SQL.Add('(iv.INVICONTAGEM1 * p.PRODN3VLRCUSTO) AS TOTAL, iv.INVICONTAGEM1 as Qtde from inventarioestoque iv ');
      zInventario.SQL.Add('left join produto p on p.prodicod = iv.prodicod  left join icms i on i.icmsicod = p.icmsicod ');
      zInventario.SQL.Add('left join unidade u on u.unidicod = p.unidicod where (iv.EMPRICOD = '+ComboEmpresa.Value+') and ');
      zInventario.SQL.Add('(iv.INVDDATA = '''+FormatDateTime('mm/dd/yyyy',DataInventario.Date)+''') and ');
      zInventario.SQL.Add('(p.PRODCATIVO = ''S'') and (p.PRODA2TIPOITEM=''00'') and (p.PRODCSERVICO <> ''M'') ');
      zInventario.Open;
      //Progress.Max := zInventario.RecordCount;

      EditTabela.Text := 'Calculando Total do Inventário ';

      VL_INV := 0;
      Progress.Position := 0;
      Progress.Update;

      While Not zInventario.Eof do
      begin
        if (zInventario.FieldByName('Qtde').IsNull) or (zInventario.FieldByName('Qtde').value < 0) then
          qtdMov:= 0
        else
          QtdMov := zInventario.FieldByName('Qtde').value;

        VL_Inv := VL_Inv + (zInventario.fieldbyname('PRODN3VLRCUSTO').Value*QtdMov);
        zInventario.Next;
        Progress.Position := Progress.Position + 1;
      end;
      zInventario.First;
    end;

  if RadioInventario.ItemIndex = 1 then
    begin
      zInventario.Close;
      zInventario.SQL.Clear;
      zInventario.SQL.Add('select p.prodicod, p.PRODA60DESCR, p.PRODA60CODBAR, p.PRODN3VLRVENDA, ');
      zInventario.SQL.Add('p.PRODN3CAPACEMBAL, p.PRODISITTRIB, p.PRODN3VLRCUSTO, p.PRODN3VLRCUSTOMED, ');
      zInventario.SQL.Add('p.ICMSICOD, i.ICMSA60DESCR, i.ICMSN2REDBASEICMS, u.UNIDA5DESCR, ');
      zInventario.SQL.Add('(iv.PSLDN3QTDE * p.PRODN3VLRVENDA) AS TOTAL, iv.PSLDN3QTDE as Qtde from produtosaldo iv ');
      zInventario.SQL.Add('left join produto p on p.prodicod = iv.prodicod  left join icms i on i.icmsicod = p.icmsicod ');
      zInventario.SQL.Add('left join unidade u on u.unidicod = p.unidicod where (iv.EMPRICOD = '+ComboEmpresa.Value+') and ');
      zInventario.SQL.Add('(p.PRODA2TIPOITEM <= 1) and (p.PRODCSERVICO = ''N'') ');
      zInventario.Open;
      //Progress.Max := zInventario.RecordCount;

      EditTabela.Text := 'Calculando Total do Inventário ';

      VL_INV := 0;
      Progress.Position := 0;
      Progress.Update;

      While Not zInventario.Eof do
      begin
        if (zInventario.FieldByName('Qtde').IsNull) or (zInventario.FieldByName('Qtde').value < 0) then
          qtdMov:= 0
        else
          QtdMov := zInventario.FieldByName('Qtde').value;

        VL_Inv := VL_Inv + (zInventario.fieldbyname('PRODN3VLRCUSTO').Value*QtdMov);
        zInventario.Next;
        Progress.Position := Progress.Position + 1;
      end;
      zInventario.First;
    end;

  EditTabela.Text := 'Registrando Itens do Inventário - Bloco H ';
  Progress.Position := 0;
  Progress.Update;

  if not zInventario.IsEmpty then
    begin
      //Registro H001 - ABERTURA DO BLOCO H - COM INVENTARIO DE ESTOQUE
      EditTabela.Text := 'Criando Bloco H - Registro: '+IntToStr(zInventario.RecNo);
      EditTabela.Update;
      Linha :=   '|H001|'                                                            + // 01-Registro H001
                 '0'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados

      if Not GravaRegistros('H001') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH001 := 1;

      //Registro H005 - ABERTURA DO BLOCO H - COM INVENTARIO DE ESTOQUE
      EditTabela.Text := 'Criando Bloco H005'; EditTabela.Update;

      Linha :=   '|H005|'                                                           + // 01-Registro H005
                 FormatDateTime('ddmmyyyy',DataInventario.date)  + '|'              + // 02-DT_INV
                 FormatFloat('0.00',VL_INV)                      + '|'              + // 03-Valor total do estoque
                 Copy(cmbMotivoInventario.Text,0,2)              + '|'              ; // 04-Motivo do inventario

      if Not GravaRegistros('H005') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH005 := 1;

      //Registro H010 - ABERTURA DO BLOCO H - COM INVENTARIO DE ESTOQUE
      EditTabela.Text := 'Criando Bloco H010'; EditTabela.Update;
      nH010 := 0;
      nH020 := 0;
      if VL_INV > 0 then
      begin
        While not zInventario.Eof do
        begin
          if (zInventario.FieldByName('Qtde').IsNull) or (zInventario.FieldByName('Qtde').value < 0) then
            qtdMov:= 0
          else
            QtdMov := zInventario.FieldByName('Qtde').value;

          Cod_Barras :=  zINVENTARIO.FieldByName('PRODA60CODBAR').AsString;
          Linha :=  '|H010|' ;                                                                       // 01-Registro H010
                    Linha := Linha + zInventario.FieldByName('PRODICOD').AsString                 + '|' ; // 02 COD_ITEM Código do item (campo 02 do Registro 0200)
                    Linha := Linha +
                    zInventario.FieldByName('UNIDA5DESCR').AsString                                   + '|' + // 03 UNID Unidade do item
                    FormatFloat('0.000',QtdMov)                                                       + '|' + // 04 QTD Quantidade do item
                    FormatFloat('0.000000',zInventario.FieldByName('PRODN3VLRCUSTO').Value)           + '|' + // 05 VL_UNIT Valor unitário do item
                    FormatFloat('0.00',zInventario.FieldByName('PRODN3VLRCUSTO').Value * QtdMov)      + '|' + // 06 VL_ITEM Valor do item
                    '0'                                                                               + '|' + // 07 IND_PROP indicador de propriedade = 0 = item do proprietario e em seu poder
                    ''                                                                                + '|' + // 08 COD_PART indica com quem esta o produto se o IND_PROP for 1 ou 2 (propriedade e/ou com terceiros)
                    ''                                                                                + '|' + // 09 TXT_COMPL Descrição complementar
                    edtContaAnalitica.Text                                                            + '|' + // 10 Conta Analitica Contabil
                    '0,00'                                                                            + '|' ; // 11 Valor IR conforme legislacao

         if Not GravaRegistros('H010') Then Begin Result := False; Exit; End;
          Inc(Total_Bloco_H);
          inc(nH010);

          // se MOT_INV (motivo do Inventario) for de 2 a 5 deve gerar o registro H020
          if cmbMotivoInventario.ItemIndex > 0 then
          begin
            if zInventario.FieldByName('ICMSN2REDBASEICMS').value > 0 then
                       vBase:= (zInventario.FieldByName('PRODN3VLRCUSTO').Value * QtdMov) *
                       (zInventario.FieldByName('ICMSN2REDBASEICMS').value / 100)
                     Else
                       vBase:= (zInventario.FieldByName('PRODN3VLRCUSTO').Value * QtdMov);

            Linha := '|H020|' +
                     zInventario.FieldByName('PRODISITTRIB').AsString                   + '|' +
                     FormatFloat('0.00',vBase)                            + '|' +
                     FormatFloat('0.00',vBase * zInventario.FieldByName('ICMSN2REDBASEICMS').Value) + '|';

            if Not GravaRegistros('H020') Then Begin Result := False; Exit; End;
            Inc(Total_Bloco_H);
            inc(nH020);
          end;
          zInventario.Next;
          Progress.Position := Progress.Position + 1 ;
          Progress.Update;
        End;
      end;
      Inc(Total_Bloco_H);
      Linha :=   '|H990|'                 + // 01-Registro H990
                 IntToStr(Total_Bloco_H)   + '|'                      ; // Total de Registros

      if Not GravaRegistros('H990') Then Begin Result := False; Exit; End;
      nH990 := 1;
    End
  else
    begin
      //Registro H001 - ABERTURA DO BLOCO H - SEM MOVIMENTACAO NO PERIODO ESCOLHIDO
      EditTabela.Text := 'Criando Bloco H'; EditTabela.Update;
      Linha :=   '|H001|'                                                            + // 01-Registro H001
                 '1'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados

      if Not GravaRegistros('H001') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH001 := 1;

      Linha :=   '|H990|'                                                            + // 01-Registro H990
                 '2'                                      + '|'                      ; // Total de Registros

      Inc(Total_Bloco_H);
      if Not GravaRegistros('H990') Then Begin Result := False; Exit; End;
      nH990 := 1;
    end;
end;

Function TFormTelaExportacaoSped.Registro_Bloco_K: boolean;
Begin
  Linha :=  '|K001|'    + // Incio do registro |K001| Bloco sobre Producao Industria
             '1|'        ; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento
  If Not GravaRegistros('K001') Then Begin Result := False; Exit; End;
  nK001 := 1;
  Total_Bloco_K := 1;

  Linha := '|K990|'     + // Encerramento do registro |G990|
           '2|'        ; // Numer de linha do bloco G
  If Not GravaRegistros('K990') Then Begin Result := False; Exit; End;
  nK990 := 1;
  Inc(Total_Bloco_K);
End;

Function TFormTelaExportacaoSped.GravaRegistros(LinhaErro : string): Boolean;
Var Gravou: Boolean;
begin
  try
    Writeln(Arquivo,Linha);
    Application.ProcessMessages;
    Gravou := True ;
  except
    Gravou := False;
    Application.ProcessMessages;
  end;
  if Gravou  = False then
    MemoErro.Lines.Add('Não foi possível criar o Registro=' + LinhaErro + ', Verifique!');
  Result := Gravou;
end;

Function TFormTelaExportacaoSped.GravaRegistros2(LinhaErro : string): Boolean;
Var Gravou: Boolean;
begin
  try
    Writeln(Arquivo2,Linha2);
    Application.ProcessMessages;
    Gravou := True ;
  except
    Gravou := False;
    Application.ProcessMessages;
  end;
  Result := Gravou;
end;

Function TFormTelaExportacaoSped.Inclui_0190(CodProduto : string): Boolean;
begin
  if not ChkImporta.Checked then
    begin
      Result := False;
      EditTabela.Text := 'Incluindo Unidade do Produto '+CodProduto; EditTabela.Update;
      EditTabela.Update;
      zPesquisa3.Close;
      zPesquisa3.SQL.Text := 'select u.UNIDA5DESCR, u.UNIDA15DESCR from unidade u left join produto p on p.unidicod = u.unidicod where p.prodicod = '+ CodProduto;
      zPesquisa3.Open;
      z0190.Close;
      //z0190.RequestLive := True;
      z0190.SQL.Text := 'SELECT * FROM SPED_0190 where UND_SIGLA='''+zPesquisa3.Fieldbyname('UNIDA5DESCR').AsString+'''';
      z0190.Open;
      if z0190.IsEmpty then
        begin
          if (not zPesquisa3.Fieldbyname('UNIDA5DESCR').isnull ) then
          begin
            z0190.Append;
            z0190.FieldByName('UND_SIGLA').AsString := zPesquisa3.Fieldbyname('UNIDA5DESCR').AsString;
            z0190.FieldByName('UND_DESCR').AsString := zPesquisa3.Fieldbyname('UNIDA15DESCR').AsString;
            try
              z0190.Post;
              Result := True;
            except
              z0190.Cancel;
              Result :=False;
              Application.ProcessMessages;
            end;
          End Else
            ShowMessage('Falha na Inclusão do Registro 0190 - Unidade do produto '+codProduto);
        end else
          Result := True;
      zPesquisa3.Close;
    end
  Else
    Result := True;
end;

Function TFormTelaExportacaoSped.Inclui_0200(Produto : string; Selected: String): Boolean;
begin
  Result := False;
  EditTabela.Text := 'Incluindo Produto '+Produto; EditTabela.Update;
  EditTabela.Update;

  z0200.close;
  z0200.sql.Clear;
  //z0200.RequestLive := True;
  z0200.sql.add('Select * from SPED_0200 where COD_ITEM='+Produto);
  z0200.open;
  if z0200.IsEmpty then
    begin
      dm.ZConsulta.Close;
      dm.ZConsulta.sql.Text := 'Select PRODIORIGEM,PRODISITTRIB,PRODA2CSTPIS,PRODA3CSTPISENTRADA,NCMICOD,UNIDICOD,ICMSICOD from produto where prodicod='+Produto;
      dm.ZConsulta.open;
      if not dm.ZConsulta.IsEmpty then
        begin
         if (dm.ZConsulta.FieldByName('NCMICOD').AsString='') or (dm.ZConsulta.FieldByName('UNIDICOD').AsString='') or
            (dm.ZConsulta.FieldByName('PRODIORIGEM').AsString='') or (dm.ZConsulta.FieldByName('PRODISITTRIB').AsString='') or
            (dm.ZConsulta.FieldByName('PRODA2CSTPIS').AsString='') or (dm.ZConsulta.FieldByName('PRODA3CSTPISENTRADA').AsString='') or
            (dm.ZConsulta.FieldByName('ICMSICOD').AsString='')then
              ShowMessage('Produto '+Produto+' com erro de cadastro!');
        end;
      z0200.Append;
      z0200.FieldByName('COD_ITEM').AsString    := Produto;
      z0200.FieldByName('SELECIONADO').AsString := 'S';
      z0200.Post;
      //z0200.ApplyUpdates;
      Application.ProcessMessages;
      // Inclui a unidade de medida
      Inclui_0190(Produto);
      Result := True;
    end
  else
    begin
      if z0200.FieldByName('SELECIONADO').AsString = 'N' then
        begin
          z0200.edit;
          z0200.FieldByName('SELECIONADO').AsString := 'S';
          z0200.Post;
        end;
    end;
end;

Function TFormTelaExportacaoSped.Registro0150: boolean;
var Achou, IE: String;
begin
  Try
    // Informa Clientes envolvidos nas operações de entrada e saida via tabela NOTAFISCAL
    zPesquisa.Close;
    zPesquisa.SQL.Text := 'SELECT DISTINCT C.* FROM NOTAFISCAL N '+
    ' inner join CLIENTE C ON N.CLIEA13ID = C.CLIEA13ID '+
    'WHERE (N.NOFIDEMIS >='''+FormatDateTime('mm/dd/yyyy',De.Date)+''') and (N.NOFIDEMIS <='''+FormatDateTime('mm/dd/yyyy',ate.Date)+''') and (N.CLIEA13ID  IS NOT NULL) and '+
    '(N.EMPRICOD='+ComboEmpresa.Value+') and (N.NOFICSTATUS = ''E'')';
    // Removido Adilson  or N.NOFICSTATUS = ''C'' , Nao devo informar Participante para notas canceladas conforme manual SPED
    zPesquisa.Open;

    if zPesquisa.RecordCount > 0 then
      Progress.Max := zPesquisa.RecordCount;

    EditTabela.Text := 'Criando - BLOCO 0150 - Clientes NOTA FISCAL'; EditTabela.Update;
    n0150 := 0;

    zPesquisa3.Close;
    zPesquisa3.sql.Text := 'delete from SPED_0150';
    zPesquisa3.ExecSQL;

    z0150.Close;
    z0150.Open;
    While not zPesquisa.EOF do
      begin
        Try
          z0150.Append;
          z0150.FieldByName('COD_PART').AsString      := zPesquisa.FieldByName('CLIEA13ID').AsString;
          z0150.FieldByName('NOME').AsString          := Trim(zPesquisa.FieldByName('CLIEA60RAZAOSOC').AsString);
          z0150.FieldByName('COD_PAIS').AsString      := zPesquisa.FieldByName('CLIEICODPAIS').AsString;

          if length(zPesquisa.FieldByName('CLIEA14CGC').AsString)=14 then
            begin
              z0150.FieldByName('CNPJ').AsString  := zPesquisa.FieldByName('CLIEA14CGC').AsString;
              // verifica se o cliente tem inscriçao de produtor
              If ((zPesquisa.FieldByName('CLIEA20IE').isnull) or (zPesquisa.FieldByName('CLIEA20IE').AsString = '')) and (zPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString <> '') then
                z0150.FieldByName('IE').AsString  := COPY(zPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString,0,14)
              else
                z0150.FieldByName('IE').AsString  :=  COPY(zPesquisa.FieldByName('CLIEA20IE').AsString,0,14) ;
              while pos('/',IE) > 0 do
                delete(IE,pos('/',IE),1);
              while pos('.',IE) > 0 do
                delete(IE,pos('.',IE),1);
              while pos('-',IE) > 0 do
                delete(IE,pos('-',IE),1);
              if IE = 'ISENTO' then IE := '';
              z0150.FieldByName('IE').AsString  := Trim(IE);
            end
          else
            begin
              if length(zPesquisa.FieldByName('CLIEA11CPF').AsString)=11 then
                z0150.FieldByName('CPF').AsString := zPesquisa.FieldByName('CLIEA11CPF').AsString;
            end;

          z0150.FieldByName('COD_MUN').AsString       := zPesquisa.FieldByName('CLIEIMUNICODFED').AsString;
          z0150.FieldByName('ENDERECO').AsString      := Trim(zPesquisa.FieldByName('CLIEA60ENDRES').AsString);
          z0150.FieldByName('END_NUM').AsString       := Trim(zPesquisa.FieldByName('CLIEA5NROENDRES').AsString);
          z0150.FieldByName('BAIRRO').AsString        := Trim(zPesquisa.FieldByName('CLIEA60BAIRES').AsString);
          z0150.FieldByName('COD_SUFRAMA').AsString   := '';
          z0150.FieldByName('COMPLEMENTO').AsString   := '';

          // Nao Aceitar cliente sem CPF ou CNPJ (um pelo menos tem que ter)
          if (z0150.FieldByName('CPF').AsString = '') and (z0150.FieldByName('CNPJ').AsString = '') then
            begin
              if zPesquisa.FieldByName('NOFIA13ID').AsString = '' then exit;
              z0150.Cancel;
              Showmessage('Falha ao Criar Tabela de Participantes! Falta CNPJ ou CPF!'+#13+#10+'Cliente: '+zPesquisa.FieldByName('CLIEA13ID').AsString);
              Result := False;
            end;
          // Codigo Cidade IBGE
          if (length(z0150.FieldByName('COD_MUN').Value) <> 7) then
            begin
              z0150.Cancel;
              Showmessage('Falha ao Criar Tabela de Participantes! Codigo IBGE do Participante!'+#13+#10+'Cliente: '+zPesquisa.FieldByName('CLIEA13ID').AsString);
              Result := False;
            end;
          z0150.Post;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Clientes Nota Fiscal):'+#13+#10+E.Message+#13+#10+'Cliente: '+zPesquisa.FieldByName('CLIEA13ID').AsString);
          Result := False;
        end; end;
        zPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    z0150.Close;
    ProgressGeral.Position := 10;

    // Informa a PROPRIA EMPRESA caso existam notas emitidas para si proprio
    EditTabela.Text := 'Criando - BLOCO 0150 - Empresa da NOTA FISCAL'; EditTabela.Update;
    zPesquisa.Close;
    zPesquisa.SQL.Text := 'SELECT DISTINCT E.* FROM NOTAFISCAL N '+
    'inner join EMPRESA E ON N.EMPRICODDEST = E.EMPRICOD '+
    'WHERE (N.NOFIDEMIS >='''+FormatDateTime('mm/dd/yyyy',De.Date)+''') AND (N.NOFIDEMIS <='''+FormatDateTime('mm/dd/yyyy',ate.Date)+''') and '+
    '(N.EMPRICODDEST IS NOT NULL) and (N.Empricod = '+ComboEmpresa.Value+') and (N.NOFICSTATUS = ''E'')';
    // Removido Adilson  or N.NOFICSTATUS = ''C'' , Nao devo informar Participante para notas canceladas conforme manual SPED
    zPesquisa.Open;

    z0150.Close;
    z0150.Open;
    if not zPesquisa.IsEmpty then
    begin
      while not zPesquisa.eof do
        begin
          Try
            //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (EMPRESAS)
            z0150.Append;
            z0150.FieldByName('COD_PART').AsString      := 'E'+zPesquisa.FieldByName('EMPRICOD').AsString;
            z0150.FieldByName('NOME').AsString          := Trim(zPesquisa.FieldByName('EMPRA60RAZAOSOC').AsString) ;
            z0150.FieldByName('COD_PAIS').AsString      := '1058';
            z0150.FieldByName('CNPJ').AsString          := zPesquisa.FieldByName('EMPRA14CGC').AsString;
            z0150.FieldByName('CPF').AsString           := zPesquisa.FieldByName('EMPRA11CPF').AsString;
            IE                                          := COPY(zPesquisa.FieldByName('EMPRA20IE').AsString,0,14);
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            while pos('-',IE) > 0 do
              delete(IE,pos('-',IE),1);
            if IE = 'ISENTO' then IE := '';
            z0150.FieldByName('IE').AsString  := Trim(IE);

            z0150.FieldByName('COD_MUN').AsString       := zPesquisa.FieldByName('EMPRIMUNICODFED').AsString;
            z0150.FieldByName('ENDERECO').AsString      := Trim(zPesquisa.FieldByName('EMPRA60END').AsString);
            z0150.FieldByName('END_NUM').AsString       := Trim(zPesquisa.FieldByName('EMPRIENDNRO').AsString);
            z0150.FieldByName('BAIRRO').AsString        := Trim(zPesquisa.FieldByName('EMPRA60BAI').AsString);
            z0150.FieldByName('COD_SUFRAMA').AsString   := Trim(zPesquisa.FieldByName('EMPRA9SUFRAMA').AsString);
            z0150.FieldByName('COMPLEMENTO').AsString   := '';
            z0150.Post;
          Except on E:Exception do
          begin
            Showmessage('Falha ao Criar Tabela de Participantes (Empresa):'+#13+#10+E.Message+#13+#10+'Empresa: '+zPesquisa.FieldByName('EMPRICOD').AsString);
            Result := False;
            Exit;
          end; end;
          zPesquisa.Next;
        end;
    end;
    zPesquisa.Close;
    z0150.Close;

    // Informa Fornecedores envolvidos nas operações de entrada e saida via tabela NOTAFISCAL
    zPesquisa.Close;
    zPesquisa.SQL.Text := 'SELECT DISTINCT F.* FROM NOTAFISCAL N '+
    'inner join FORNECEDOR F ON F.FORNICOD = N.FORNICOD '+
    'WHERE (N.NOFIDEMIS >= '''+FormatDateTime('mm/dd/yyyy',De.Date)+''') AND (N.NOFIDEMIS <='''+FormatDateTime('mm/dd/yyyy',ate.Date)+''') and ' +
    '(N.FORNICOD IS NOT NULL) and (N.Empricod ='+ComboEmpresa.Value+') and (N.NOFICSTATUS = ''E'') ';
    // Removido Adilson  or N.NOFICSTATUS = ''C'' , Nao devo informar Participante para notas canceladas conforme manual SPED
    zPesquisa.Open;

    if zPesquisa.RecordCount > 0 then
      Progress.Max := zPesquisa.RecordCount;
      
    EditTabela.Text := 'Criando - BLOCO 0150 - Fornecedores NOTA FISCAL'; EditTabela.Update;
    z0150.close;
    z0150.Open;
    While not zPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          z0150.First;
          if z0150.Locate('COD_FORN',zPesquisa.FieldByName('FORNICOD').AsString,[]) then
            Achou := 'S';

          If Achou = 'N' then
          Begin
            z0150.Append;
            z0150.FieldByName('COD_PART').AsString      := 'F' + zPesquisa.FieldByName('FORNICOD').AsString;
            z0150.FieldByName('COD_FORN').AsString      := zPesquisa.Fieldbyname('FORNICOD').AsString;
            z0150.FieldByName('NOME').AsString          := Trim(zPesquisa.FieldByName('FORNA60RAZAOSOC').AsString) ;
            z0150.FieldByName('COD_PAIS').AsString      := zPesquisa.FieldByName('FORNICODPAIS').AsString;

            if length(zPesquisa.FieldByName('FORNA14CGC').AsString)=14 then
              begin
                z0150.FieldByName('CNPJ').AsString          := zPesquisa.FieldByName('FORNA14CGC').AsString;
                IE                                          := COPY(zPesquisa.FieldByName('FORNA20IE').AsString,0,14);
                while pos('/',IE) > 0 do
                  delete(IE,pos('/',IE),1);
                while pos('.',IE) > 0 do
                  delete(IE,pos('.',IE),1);
                if IE = 'ISENTO' then IE := '';
                z0150.FieldByName('IE').AsString  := Trim(IE);
              end
            else
              begin
                if length(zPesquisa.FieldByName('FORNA11CPF').AsString)=11 then
                  z0150.FieldByName('CPF').AsString           := zPesquisa.FieldByName('FORNA11CPF').AsString;
              end;

            z0150.FieldByName('COD_MUN').AsString       := zPesquisa.FieldByName('FORNIMUNICODFED').AsString;
            z0150.FieldByName('ENDERECO').AsString      := Trim(zPesquisa.FieldByName('FORNA60END').AsString);
            z0150.FieldByName('END_NUM').AsString       := zPesquisa.FieldByName('FORNA5NROEND').AsString;
            z0150.FieldByName('BAIRRO').AsString        := Trim(zPesquisa.FieldByName('FORNA60BAI').AsString);
            z0150.FieldByName('COD_SUFRAMA').AsString   := '';
            z0150.FieldByName('COMPLEMENTO').AsString   := '';

            if (z0150.FieldByName('CPF').AsString = '') and (z0150.FieldByName('CNPJ').AsString = '') then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Falta CNPJ ou CPF!'+#13+#10+
                'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            // Codigo Cidade IBGE
            if (length(z0150.FieldByName('COD_MUN').Value) <> 7) then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Codigo IBGE do Participante!'+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            // Endereco Vazio
            if (z0150.FieldByName('ENDERECO').AsString = '') then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Endereço do Participante!'+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            // Endereco Numero Vazio
            if (z0150.FieldByName('END_NUM').AsString = '') then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Numero do Endereço do Participante!'+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            // Bairro Vazio
            if (z0150.FieldByName('BAIRRO').AsString = '') then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Bairro do Participante!'+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            z0150.Post;
          End;
        except
          on E:Exception do
            begin
              Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Fiscal):'+#13+#10+E.Message+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
              Result := False;
              Exit;
            end;
        end;

        zPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    zPesquisa.Close;
    ProgressGeral.Position := 20;

    // Informa FORNECEDORES envolvidos nas operações de COMPRA via tabela NOTACOMPRA
    zPesquisa.Close;
    zPesquisa.SQL.Text := 'SELECT DISTINCT F.* FROM NOTACOMPRA N '+
    'Left Join FORNECEDOR F ON F.FORNICOD = N.FORNICOD '+
    'Where N.'+CampoDataEntrada+' >= '''+FormatDateTime('mm/dd/yyyy',De.Date)+''' and N.'+CampoDataEntrada+' <= '''+FormatDateTime('mm/dd/yyyy',ate.Date)+''' AND N.EMPRICODDESTCOMPRA = '+ComboEmpresa.Value+' AND '+
    '(N.FORNICOD IS NOT NULL) and (N.NOCPCSTATUS = ''E'') ';
    // Removido Adilson  or N.NOCPCSTATUS = ''C'' , Nao devo informar Participante para notas canceladas conforme manual SPED

    zPesquisa.Open;

    if zPesquisa.RecordCount > 0 then
      Progress.Max := zPesquisa.RecordCount;
      
    EditTabela.Text := 'Criando - BLOCO 0150 - Fornecedores NOTA COMPRA'; EditTabela.Update;
    z0150.close;
    z0150.Open;
    While not zPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          If zPesquisa.FieldByName('FORNA14CGC').AsString <> '' then
            if z0150.Locate('CNPJ',zPesquisa.FieldByName('FORNA14CGC').AsString,[]) then
            Begin
              z0150.Edit;
              z0150.FieldByName('COD_FORN').AsInteger := zPesquisa.FieldByName('FORNICOD').AsInteger;
              z0150.Post;
              Achou := 'S';
            End;

          // Adilson Ver melhor essa pesquisa  if (SQLCod_Part.Locate('CPF;IE',VarArrayOf([zPesquisa.FieldByName('FORNA11CPF').AsString,DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA20IE',zPesquisa.FieldByName('FORNICOD').AsString)]),[])) then
          If zPesquisa.FieldByName('FORNA11CPF').AsString <> '' then
            if z0150.Locate('CPF',zPesquisa.FieldByName('FORNA11CPF').AsString,[]) then
            Begin
              z0150.Edit;
              z0150.FieldByName('COD_FORN').AsInteger := zPesquisa.FieldByName('FORNICOD').AsInteger;
              z0150.Post;
              Achou := 'S';
            End;

          If Achou = 'N' then
          Begin
            z0150.Append;
            z0150.FieldByName('COD_PART').AsString      := 'F' + zPesquisa.FieldByName('FORNICOD').AsString;
            z0150.FieldByName('COD_FORN').AsString      := zPesquisa.Fieldbyname('FORNICOD').AsString;
            z0150.FieldByName('NOME').AsString          := Trim(zPesquisa.FieldByName('FORNA60RAZAOSOC').AsString);
            z0150.FieldByName('COD_PAIS').AsString      := zPesquisa.FieldByName('FORNICODPAIS').AsString;
            z0150.FieldByName('CNPJ').AsString          := zPesquisa.FieldByName('FORNA14CGC').AsString;
            z0150.FieldByName('CPF').AsString           := zPesquisa.FieldByName('FORNA11CPF').AsString;
            IE                                          := COPY(zPesquisa.FieldByName('FORNA20IE').AsString,0,14);
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            if IE = 'ISENTO' then IE := '';
            z0150.FieldByName('IE').AsString  := IE;

            z0150.FieldByName('COD_MUN').AsString       := zPesquisa.FieldByName('FORNIMUNICODFED').AsString;
            z0150.FieldByName('ENDERECO').AsString      := Trim(zPesquisa.FieldByName('FORNA60END').AsString);
            z0150.FieldByName('END_NUM').AsString       := Trim(zPesquisa.FieldByName('FORNA5NROEND').AsString);
            z0150.FieldByName('BAIRRO').AsString        := Trim(zPesquisa.FieldByName('FORNA60BAI').AsString);
            z0150.FieldByName('COD_SUFRAMA').AsString   := '';
            z0150.FieldByName('COMPLEMENTO').AsString   := '';

            // Codigo Cidade IBGE
            if (length(z0150.FieldByName('COD_MUN').Value) <> 7) then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Codigo IBGE do Participante!'+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            // Endereco Vazio
            if (z0150.FieldByName('ENDERECO').AsString = '') then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Endereço do Participante!'+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            // Endereco Numero Vazio
            if (z0150.FieldByName('END_NUM').AsString = '') then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Numero do Endereço do Participante!'+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            // Bairro Vazio
            if (z0150.FieldByName('BAIRRO').AsString = '') then
              begin
                z0150.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Bairro do Participante!'+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
              end;
            z0150.Post;
          End;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Compra):'+#13+#10+
          E.Message+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
          Result := False;
          Exit;
        end; end;

        zPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    ProgressGeral.Position := 25;

    // Informa Transportadoras envolvidas nas operações de VENDA via tabela NOTA FISCAL
    { Adilson - Removi, ver melhor a legislacao, se é necessario enviar a transportadora
    SQLCod_Part.Close;
    zPesquisa.Close;
    SQLCod_Part.Close;
    zPesquisa.SQL.Text := 'SELECT DISTINCT C.* FROM NOTAFISCAL N '+
    'LEFT Join TRANSPORTADORA C ON C.TRANICOD = N.TRANICOD '+
    'WHERE (N.NOFICSTATUS = ''E'' or N.NOFICSTATUS = ''C'') AND (N.NOFIDEMIS >= :xDataInicial) AND '+
    '(N.NOFIDEMIS <= :xDataFinal) AND (N.TRANICOD IS NOT NULL) AND (N.EMPRICOD = :xEmpresa) and '+
    '(N.SERIA5COD IN (Select SERIA5COD from SERIE where (SERIA2TIPONOTA = ''01'') or (SERIA2TIPONOTA = ''04'') ))';
    zPesquisa.ParamByName('xDataInicial').AsDate   := De.Date;
    zPesquisa.ParamByName('xDataFinal').AsDate     := Ate.Date;
    zPesquisa.ParamByName('xEmpresa').AsString     := SQLEmpresaEMPRICOD.AsString;
    zPesquisa.Open;
    zPesquisa.Last;
    Progress.Max := zPesquisa.RecordCount;
    zPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - TRANSP. NOTA COMPRA'; EditTabela.Update;
    SQLCod_Part.Open;
    While not zPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          If zPesquisa.FieldByName('TRANA14CGC').AsString <> '' then
            if SQLCod_Part.Locate('CNPJ',zPesquisa.FieldByName('TRANA14CGC').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_TRANSP.AsInteger := zPesquisa.FieldByName('TRANICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          If zPesquisa.FieldByName('TRANA11CPF').AsString <> '' then
            if SQLCod_Part.Locate('CPF',zPesquisa.FieldByName('TRANA11CPF').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_TRANSP.AsInteger := zPesquisa.FieldByName('TRANICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          if ( zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O EMITENTE' ) or ( zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O DESTINATARIO' ) then
              Achou := 'S';

          If Achou = 'N' then
          Begin
            SQLCod_Part.Append;
            SQLCod_PartCOD_PART.AsString      := 'T' + zPesquisa.FieldByName('TRANICOD').AsString;
            SQLCod_PartNOME.AsString          := zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString ;
            SQLCod_PartCOD_PAIS.AsString      := '1058';
            SQLCod_PartCNPJ.AsString          := zPesquisa.FieldByName('TRANA14CGC').AsString;
            SQLCod_PartCPF.AsString           := zPesquisa.FieldByName('TRANA11CPF').AsString;
            SQLCod_PartIE.AsString            := COPY(zPesquisa.FieldByName('TRANA15IE').AsString,0,14);
            SQLCod_PartCOD_TRANSP.AsString    := zPesquisa.Fieldbyname('TRANICOD').AsString;

            IE := SQLCod_PartIE.AsString;
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            SQLCod_PartIE.AsString  := IE;

            SQLCod_PartCOD_MUN.AsString       := zPesquisa.FieldByName('TRANICODMUNICIPIO').AsString;
            SQLCod_PartENDERECO.AsString      := zPesquisa.FieldByName('TRANA60END').AsString;
            SQLCod_PartEND_NUM.AsString       := zPesquisa.FieldByName('TRANA5NROEND').AsString;
            SQLCod_PartBAIRRO.AsString        := zPesquisa.FieldByName('TRANA60BAI').AsString;
            SQLCod_PartCOD_SUFRAMA.AsString   := '';
            SQLCod_PartCOMPLEMENTO.AsString   := '';
            SQLCod_Part.Post;
          End
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Compra):'+#13+#10+
          E.Message+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
          Result := False;
          Exit;
        end; end;
        zPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    ProgressGeral.Position := 30;  }

{
    // Informa Transportadoras envolvidas nas operações de COMPRA via tabela NOTAFISCALCOMPRA
    SQLCod_Part.Close;
    zPesquisa.Close;
    SQLCod_Part.Close;
    zPesquisa.SQL.Text := 'SELECT DISTINCT T.* FROM NOTACOMPRA N '+
    'LEFT join TRANSPORTADORA T ON N.TRANICOD = T.TRANICOD '+
    'WHERE (N.NOCPDRECEBIMENTO >= :DataInicial) AND '+
    '(N.NOCPDRECEBIMENTO <= :DataFinal) AND (N.TRANICOD IS NOT NULL) AND (N.EMPRICOD = :Empresa)';
    zPesquisa.ParamByName('DataInicial').AsDate   := De.Date;
    zPesquisa.ParamByName('DataFinal').AsDate     := Ate.Date;
    zPesquisa.ParamByName('Empresa').AsString     := SQLEmpresaEMPRICOD.AsString;
    zPesquisa.Open;
    zPesquisa.Last;
    Progress.Max := zPesquisa.RecordCount;
    zPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - TRANSP. NOTA COMPRA'; EditTabela.Update;
    SQLCod_Part.Open;
    While not zPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          If zPesquisa.FieldByName('TRANA14CGC').AsString <> '' then
            if SQLCod_Part.Locate('CNPJ',zPesquisa.FieldByName('TRANA14CGC').AsString,[]) then
              Achou := 'S';
          If zPesquisa.FieldByName('TRANA11CPF').AsString <> '' then
            if SQLCod_Part.Locate('CPF',zPesquisa.FieldByName('TRANA11CPF').AsString,[]) then
              Achou := 'S';
          If SQLCod_Part.Locate('COD_PART',zPesquisa.FieldByName('TRANICOD').AsString,[]) then
              Achou := 'S';

           // Se a Transp. for O EMITENTE ou O DESTINATARIO pega os dados depois na hora de referenciar a nota.
          if ( zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O EMITENTE' ) or ( zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O DESTINATARIO' ) then
              Achou := 'S';

          If Achou = 'N' then
          Begin
            SQLCod_Part.Append;
            SQLCod_PartCOD_PART.AsString      := '99999' + zPesquisa.FieldByName('TRANICOD').AsString;
            SQLCod_PartNOME.AsString          := zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString ;
            SQLCod_PartCOD_PAIS.AsString      := '1058';
            SQLCod_PartCNPJ.AsString          := zPesquisa.FieldByName('TRANA14CGC').AsString;
            SQLCod_PartCPF.AsString           := zPesquisa.FieldByName('TRANA11CPF').AsString;
            SQLCod_PartIE.AsString            := COPY(zPesquisa.FieldByName('TRANA15IE').AsString,0,14);

            IE := SQLCod_PartIE.AsString;
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            SQLCod_PartIE.AsString  := IE;

            SQLCod_PartCOD_MUN.AsString       := zPesquisa.FieldByName('TRANICODMUNICIPIO').AsString;
            SQLCod_PartENDERECO.AsString      := zPesquisa.FieldByName('TRANA60END').AsString;
            SQLCod_PartEND_NUM.AsString       := zPesquisa.FieldByName('TRANA5NROEND').AsString;
            SQLCod_PartBAIRRO.AsString        := zPesquisa.FieldByName('TRANA60BAI').AsString;
            SQLCod_PartCOD_SUFRAMA.AsString   := '';
            SQLCod_PartCOMPLEMENTO.AsString   := '';
            SQLCod_Part.Post;
          End;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Compra):'+#13+#10+
          E.Message+#13+#10+'Transportadora: '+zPesquisa.FieldByName('TRANICOD').AsString);
          Result := False;
          Exit;
        end; end;

        zPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end; }

    // Informa Transportadoras envolvidas nas operações de conhecimentos de frete
    zPesquisa.Close;
    zPesquisa.SQL.Text := 'SELECT DISTINCT T.* FROM CONHECIMENTOS C '+
    'LEFT join TRANSPORTADORA T ON T.TRANICOD = C.COD_PART '+
    'WHERE (C.DT_AQUIS >='''+FormatDateTime('dd/dd/yyyy',De.Date)+''') AND '+
    '(C.DT_AQUIS <='''+FormatDateTime('dd/dd/yyyy',ate.Date)+''')';
    zPesquisa.Open;
    zPesquisa.Last;

    if zPesquisa.RecordCount > 0 then
      Progress.Max := zPesquisa.RecordCount;
      
    zPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - Transp. CONHECIMENTOS'; EditTabela.Update;
    z0150.Close;
    z0150.Open;
    While not zPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          If zPesquisa.FieldByName('TRANA14CGC').AsString <> '' then
            if z0150.Locate('CNPJ',zPesquisa.FieldByName('TRANA14CGC').AsString,[]) then
            Begin
              z0150.Edit;
              z0150.FieldByName('COD_TRANSP').AsInteger := zPesquisa.FieldByName('TRANICOD').AsInteger;
              z0150.Post;
              Achou := 'S';
            End;

          If zPesquisa.FieldByName('TRANA11CPF').AsString <> '' then
            if z0150.Locate('CPF',zPesquisa.FieldByName('TRANA11CPF').AsString,[]) then
            Begin
              z0150.Edit;
              z0150.FieldByName('COD_TRANSP').AsInteger := zPesquisa.FieldByName('TRANICOD').AsInteger;
              z0150.Post;
              Achou := 'S';
            End;

          If z0150.Locate('COD_PART',zPesquisa.FieldByName('TRANICOD').AsString,[]) then
              Achou := 'S';

          // Se a Transp. for O EMITENTE ou O DESTINATARIO pega os dados depois na hora de referenciar a nota.
          if ( zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O EMITENTE' ) or ( zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O DESTINATARIO' ) then
              Achou := 'S';

          If Achou = 'N' then
          Begin
            If not zPesquisa.FieldByName('TRANICOD').IsNull then
            begin
              z0150.Append;
              z0150.FieldByName('COD_PART').AsString      := 'T' + zPesquisa.FieldByName('TRANICOD').AsString;
              z0150.FieldByName('COD_TRANSP').AsString    := zPesquisa.Fieldbyname('TRANICOD').AsString;
              z0150.FieldByName('NOME').AsString          := Trim(zPesquisa.FieldByName('TRANA60RAZAOSOC').AsString) ;
              z0150.FieldByName('COD_PAIS').AsString      := '1058';
              z0150.FieldByName('CNPJ').AsString          := zPesquisa.FieldByName('TRANA14CGC').AsString;
              z0150.FieldByName('CPF').AsString            := zPesquisa.FieldByName('TRANA11CPF').AsString;
              IE                                          := COPY(zPesquisa.FieldByName('TRANA15IE').AsString,0,14);
              while pos('/',IE) > 0 do
                delete(IE,pos('/',IE),1);
              while pos('.',IE) > 0 do
                delete(IE,pos('.',IE),1);
              z0150.FieldByName('IE').AsString  := IE;

              z0150.FieldByName('COD_MUN').AsString       := zPesquisa.FieldByName('TRANICODMUNICIPIO').AsString;
              z0150.FieldByName('ENDERECO').AsString      := Trim(zPesquisa.FieldByName('TRANA60END').AsString);
              z0150.FieldByName('END_NUM').AsString       := Trim(zPesquisa.FieldByName('TRANA5NROEND').AsString);
              z0150.FieldByName('BAIRRO').AsString        := Trim(zPesquisa.FieldByName('TRANA60BAI').AsString);
              z0150.FieldByName('COD_SUFRAMA').AsString   := '';
              z0150.FieldByName('COMPLEMENTO').AsString   := '';

              // Codigo Cidade IBGE
              if (length(z0150.FieldByName('COD_MUN').Value) <> 7) then
                begin
                  z0150.Cancel;
                  Showmessage('Falha ao Criar Tabela de Participantes! Codigo IBGE do Participante!'+#13+#10+'Transportadora: '+zPesquisa.FieldByName('TRANICODMUNICIPIO').AsString);
                  Result := False;
                  Exit;
                end;
              z0150.Post;
            End;
          End;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Compra):'+#13+#10+
          E.Message+#13+#10+'Transportador CONHECIMENTOS: '+zPesquisa.FieldByName('TRANICOD').AsString);
          Result := False;
          Exit;
        end; end;

        zPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    ProgressGeral.Position := 35;

{   Não é necessario informar o participante do cupom fiscal

    // Informa Clientes envolvidos nas operações de entrada e saida via tabela CUPOM
    zPesquisa.Close;
    zPesquisa.SQL.Text := 'SELECT DISTINCT C.* FROM CUPOM N LEFT join CLIENTE C ON N.CLIEA13ID = C.CLIEA13ID WHERE (N.CUPODEMIS >= :DataInicial) AND (N.CUPODEMIS <= :DataFinal) and (N.CUPOCSTATUS = :Status)';
    zPesquisa.ParamByName('DataInicial').AsDate   := De.Date;
    zPesquisa.ParamByName('DataFinal').AsDate     := Ate.Date;
    zPesquisa.ParamByName('Status').AsString      := 'A';
    zPesquisa.Open;
    zPesquisa.Last;
    Progress.Max := zPesquisa.RecordCount;
    zPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - Clientes CUPOM FISCAL'; EditTabela.Update;
    While not zPesquisa.EOF do
      begin
        Try
          SQLCod_Part.Append;
          SQLCod_PartCOD_PART.AsString      := zPesquisa.FieldByName('CLIEA13ID').AsString;
          SQLCod_PartNOME.AsString          := zPesquisa.FieldByName('CLIEA60RAZAOSOC').AsString;
          SQLCod_PartCOD_PAIS.AsString      := zPesquisa.FieldByName('CLIEICODPAIS').AsString;
          SQLCod_PartCNPJ.AsString          := zPesquisa.FieldByName('CLIEA14CGC').AsString;
          SQLCod_PartCPF.AsString           := zPesquisa.FieldByName('CLIEA11CPF').AsString;
          // verifica se o cliente tem inscriçao de produtor
          If ((zPesquisa.FieldByName('CLIEA20IE').isnull) or (zPesquisa.FieldByName('CLIEA20IE').AsString = '')) and (zPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString <> '') then
            SQLCod_PartIE.AsString  := COPY(zPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString,0,14)
          else
            SQLCod_PartIE.AsString  :=  COPY(zPesquisa.FieldByName('CLIEA20IE').AsString,0,14) ;
          SQLCod_PartCOD_MUN.AsString       := zPesquisa.FieldByName('CLIEIMUNICODFED').AsString;
          SQLCod_PartENDERECO.AsString      := zPesquisa.FieldByName('CLIEA60ENDRES').AsString;
          SQLCod_PartEND_NUM.AsString       := zPesquisa.FieldByName('CLIEA5NROENDRES').AsString;
          SQLCod_PartBAIRRO.AsString        := zPesquisa.FieldByName('CLIEA60BAIRES').AsString;
          SQLCod_PartCOD_SUFRAMA.AsString   := '';
          SQLCod_PartCOMPLEMENTO.AsString   := '';
          SQLCod_Part.Post;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Clientes Nota Fiscal):'+#13+#10+E.Message+#13+#10+'Cliente: '+zPesquisa.FieldByName('CLIEA13ID').AsString);
          Result := False;
          Exit;
        end; end;
        zPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    }

    z0150.Close;
    z0150.Open;
    Progress.Position := 0;

    if z0150.RecordCount > 0 then
      Progress.Max := z0150.RecordCount;

    EditTabela.Text := 'Criando - BLOCO 0150 - Gravando COD_PART'; EditTabela.Update;
    z0150.First;
    While not z0150.EOF do
      begin
        Try
          Linha :=   '|0150|'                                                 +      // 01-Registro 0150
          z0150.FieldByName('COD_PART').AsString                        + '|'+ // 02 COD_PART Código de identificação do participante no arquivo. C 060 - S
          trimleft(z0150.FieldByName('NOME').AsString)                  + '|'+ // 03 NOME Nome pessoal ou empresarial do participante. C 100 - S
          z0150.FieldByName('COD_PAIS').AsString                        + '|'+ // 04 COD_PAIS Código do país do participante, conforme a tabela indicada no item 3.2.1.  N  005  - S
          z0150.FieldByName('CNPJ').AsString                            + '|'+ // 05 CNPJ CNPJ do participante. N 014* - N
          z0150.FieldByName('CPF').AsString                             + '|'+ // 06 CPF CPF do participante. N 011* - N
          COPY(z0150.FieldByName('IE').AsString,0,14)                   + '|'+ // 07 IE Inscrição Estadual do participante. C 014 - N
          z0150.FieldByName('COD_MUN').AsString                         + '|'+ // 08 COD_MUN Código do município, conforme a tabela IBGE N 007* - N
          z0150.FieldByName('COD_SUFRAMA').AsString                     + '|'+ // 09 SUFRAMA Número de inscrição do participante na Suframa C 009* - N
          trimleft(z0150.FieldByName('ENDERECO').AsString)              + '|'+ // 10 END Logradouro e endereço do imóvel C 060 - N
          z0150.FieldByName('END_NUM').AsString                         + '|'+ // 11 NUM Número do imóvel C - - N
          trimleft(z0150.FieldByName('COMPLEMENTO').AsString)           + '|'+ // 12 COMPL Dados complementares do endereço C 060 - N
          trimleft(z0150.FieldByName('BAIRRO').AsString)                + '|'; // 13 BAIRRO Bairro em que o imóvel está situado C 060 - N

          if Not GravaRegistros('0150') Then Begin Result := False; Exit; End;
          Inc(n0150);
          TotalBlocoZero := TotalBlocoZero + 1;

          // Sped PisCofins Bloco 0150
          Linha2 := Linha;
          if Not GravaRegistros2('0150') Then Begin Result := False; Exit; End;

        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Linha |0150| :'+#13+#10+E.Message+#13+#10+'Participante Cod.: '+z0150.FieldByName('COD_PART').AsString);
          Result := False;
          Exit;
        end; end;
        z0150.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
     end;
  ProgressGeral.Position := 40;

  Except on E:Exception do
  begin
    ShowMessage('Falha ao Gerar Registro 0150 - '+e.Message);
    Result := False;
  end;end;
  Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC100: boolean;
Var ForPag, StatusNF, Chave, xCOD_SIT: String;
Var xVL_BC_ICMS, xVL_ICMS, xVL_BC_ICMS_ST, xVL_ICMS_ST, xVL_Outras : double;
Begin
  {Este registro deve ser gerado para cada documento fiscal código 01, 1B, 04 e 55 e 65, registrando a entrada ou saída de
  produtos ou outras situações que envolvam a emissão dos documentos fiscais mencionados, representativos de receitas
  auferidas, tributadas ou não pelo PIS/Pasep ou pela Cofins, bem como de operações de aquisições e/ou devoluções com
  direito a crédito da não cumulatividade.}
  {Para Notas Canceladas, Denegadas ou Inutilizada, devo preencher apenas REG, IND_OPER, IND_EMIT, COD_MOD, COD_SIT, SER e NUM_DOC, os
   demais campos devem ser VAZIO “||”}

  // Cria Bloco C100 com dados da Tabela CUPOMFISCAL NFCe
  if not ckC400.Checked then
    begin
      zPesquisa.Close;
      zPesquisa.SQL.Text := 'Select N.* from CUPOM N ' +
                            'Where (N.CUPODEMIS>='''+FormatDateTime('mm/dd/yyyy',De.date)+''') and (N.CUPODEMIS<='''+FormatDateTime('mm/dd/yyyy',ate.Date)+''') AND '+
                            'N.EMPRICOD='+ComboEmpresa.Value+' AND (N.CUPOCSTATUS = ''A'' or N.CUPOCSTATUS = ''C'') AND N.CHAVEACESSO is not null' ;
      zPesquisa.Open;

      //Progress.Max := zPesquisa.RecordCount;
      Progress.Position := 1;
      zPesquisa.First;
                                                            
      nC100 := 0;
      nC140 := 0;
      While not zPesquisa.EOF do
      begin
        EditTabela.Text := 'Criando - BLOCO C100 - NFCE ID: ' + zPesquisa.FieldByName('CUPOA13ID').AsString; EditTabela.Update;

        StatusNF       := zPesquisa.FieldByName('CUPOCSTATUS').AsString;
        NroDocumento   := zPesquisa.FieldByName('CUPOINRO').AsString;
        Chave          := zPesquisa.FieldByName('CHAVEACESSO').AsString;
        vDataDocumento := FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('CUPODEMIS').AsDateTime);
        vEntradaSaida  := '1';  // Indicador de Operacao = 0- Entrada;  1- Saída

        { Para documentos fiscais cancelados (codigo 02 ou 03) Denegado (04), inutilizado (05) informar somente
          os campos Código da Situação, Indicador de Operacao, Codigo do Modelo e Chave do Documento para os que possuem.}
        if StatusNF = 'C' Then
        begin
          Linha :=  '|C100|'                                      +      // 01 REG C100
            vEntradaSaida                                         + '|'+ // 02 IND_OPER Indicador do tipo de operação: C 001* - S - 0- Entrada;  1- Saída
            '0'                                                   + '|'+ // 03 IND_EMIT Indicador do emitente do documento fiscal:   C 001* - S -  0- Emissão própria; 1- Terceiros
                                                                    '|'+ // 04 COD_PART Código do participante (campo 02 do Registro
            '65'                                                  + '|'; // 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela  4.1.1   C 002* - S
          Linha := Linha + '02|';  // Documento Cancelado

          Linha := Linha + Copy(zPesquisa.FieldByName('TERMICOD').AsString,0,3) + '|'+ // 07 SER Série do documento fiscal C 003 - OC OC
          NroDocumento                                            + '|'+ // 08 NUM_DOC Número do documento fiscal N 009 - O O
          Chave                                                   + '|'+ // 09 CHV_NFE Chave da Nota Fiscal Eletrônica N 044* - O O
                                                                    '|'+ // 10 DT_DOC Data da emissão do documento fiscal N 008* - O O
                                                                    '|'+ // 11 DT_E_S Data da entrada ou da saída N 008* - O OC
                                                                    '|'+ // 12 VL_DOC Valor total do documento fiscal N - 02 O O
                                                                    '|'+ // 13 IND_PGTO Indicador do tipo de pagamento:
                                                                    '|'+ // 14 VL_DESC Valor total do desconto N - 02 OC OC
                                                                    '|'+ // 15 VL_ABAT_NT Abatimento não tributado e não comercial Ex.
                                                                    '|'+ // 16 VL_MERC Valor total das mercadorias e serviços N - 02 O OC
                                                                    '|'+ // 17 IND_FRT Indicador do tipo do frete:
                                                                    '|'+ // 18 VL_FRT Valor do frete indicado no documento fiscal N - 02 OC OC
                                                                    '|'+ // 19 VL_SEG Valor do seguro indicado no documento fiscal N - 02 OC OC
                                                                    '|'+ // 20 VL_OUT_DA Valor de outras despesas acessórias N - 02 OC OC
                                                                    '|'+ // 21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
                                                                    '|'+ // 22 VL_ICMS Valor do ICMS N - 02 OC OC
                                                                    '|'+ // 23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição
                                                                    '|'+ // 24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 OC OC
                                                                    '|'+ // 25 VL_IPI Valor total do IPI N - 02 OC OC
                                                                    '|'+ // 26 VL_PIS Valor total do PIS N - 02 OC OC
                                                                    '|'+ // 27 VL_COFINS Valor total da COFINS N - 02 OC OC
                                                                    '|'+ // 28 VL_PIS_ST Valor total do PIS retido por substituição
                                                                    '|'; // 29 VL_COFINS_ST Valor total da COFINS retido por substituição
          if Not GravaRegistros('C100') Then Begin Result := False; Exit; End;
          Inc(nC100);
          Total_Bloco_C := Total_Bloco_C + 1;
        end Else
        Begin
          Linha :=  '|C100|'                                                                     +
            vEntradaSaida                                                                        + '|' +
            '0'                                                                                  + '|' ; // 03 IND_EMIT Indicador do emitente do documento fiscal:   C 001* - S -  0- Emissão própria; 1- Terceiros
            // Para NFCe nao informar participante
            vCodParticipante := '';
            Linha := Linha + vCodParticipante                                                    + '|';

            Linha := Linha + '65'                                                                + '|'; // 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela  4.1.1   C 002* - S

            Linha := Linha + '00'                                                                + '|'; // 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2  N 002* - S

            Linha := Linha + Copy(zPesquisa.FieldByName('TERMICOD').AsString,0,3)                + '|'+ // 07 SER Série do documento fiscal C 003 - N

            NroDocumento                                                                         + '|'; // 08 NUM_DOC Número do documento fiscal N 009 - S
            if StatusNF = 'A' then
              begin
                Linha := Linha + Chave                                                               + '|' ;  // 09 CHV_NFE Chave da Nota Fiscal Eletrônica N 044* - N
                Linha := Linha + vDataDocumento                                                      + '|' ;  // 10 DT_DOC Data da emissão do documento fiscal N 008* - S
                Linha := LInha + vDataDocumento                                                      + '|' ;  // 11 DT_ENTSAI
                Linha := Linha + FormatFloat('0.00', zPesquisa.FieldByName('CUPON2TOTITENS').Value ) + '|' ;  // 12 VL_DOC Valor total do documento fiscal N - 02 S

                // verifica a forma de pagamento
                if zPesquisa.FieldByName('CUPOCTIPOPADRAO').AsString = 'VISTA' then
                  ForPag := '0'
                else
                  ForPag := '1';

                Linha := Linha + ForPag                                                             + '|'+ // 13 IND_PGTO Indicador do tipo de pagamento: C 001* - S
                FormatFloat('0.00',zPesquisa.FieldByName('CUPON2DESC').Value)                       + '|'+ // 14 VL_DESC Valor total do desconto N - 02 N
                ''                                                                                  + '|'+ // 15 VL_ABAT_NT Abatimento não tributado e não comercial Ex. desconto ICMS nas remessas para ZFM. N - 02 N
                FormatFloat('0.00',zPesquisa.FieldByName('CUPON2TOTITENS').Value)                   + '|'; // 16 VL_MERC Valor total das mercadorias e serviços N - 02 N
                Linha := Linha + '9'                                                                + '|'; // 17 IND_FRT Indicador do tipo do frete: C 001* - S

                // Adilson Rotina para somar o C190 e apos alimentar os registros de 21-24)
                xVL_BC_ICMS := 0;
                xVL_ICMS    := 0;
                xVL_BC_ICMS_ST := 0;
                xVL_ICMS_ST    := 0;
                RegistroC190_MontaTabela;

                ZRegC490.Close;
                ZRegC490.SQL.Clear;
                ZRegC490.SQL.Add('Select * from SPED_REGC490');
                ZRegC490.Open;
                while not zRegC490.eof do
                  begin
                    xVL_BC_ICMS    := xVL_BC_ICMS    + zRegC490.FieldByName('VL_BC_ICMS').Value;
                    xVL_ICMS       := xVL_ICMS       + zRegC490.FieldByName('VL_ICMS').Value;
                    xVL_BC_ICMS_ST := xVL_BC_ICMS_ST + zRegC490.FieldByName('VL_BC_ICMS_ST').Value;
                    xVL_ICMS_ST    := xVL_ICMS_ST    + zRegC490.FieldByName('VL_ICMS_ST').Value;
                    zRegC490.Next;
                  end;

                Linha := Linha +
                FormatFloat('0.00',0)                                       + '|'+ //18 VL_FRT Valor do frete indicado no documento fiscal N - 02 N
                FormatFloat('0.00',0)                                       + '|'+ //19 VL_SEG Valor do seguro indicado no documento fiscal N - 02 N
                FormatFloat('0.00',0)                                       + '|'+ //20 VL_OUT_DA Valor de outras despesas acessórias N - 02 N

                FormatFloat('0.00',xVL_BC_ICMS)                             + '|'+ // 21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 N
                FormatFloat('0.00',xVL_ICMS)                                + '|'+ // 22 VL_ICMS Valor do ICMS N - 02 N
                {FormatFloat('0.00',xVL_BC_ICMS_ST)}''                      + '|'+ // 23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição tributária N - 02 N
                {FormatFloat('0.00',xVL_ICMS_ST)}''                         + '|'+ // 24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 N

                {FormatFloat('0.00',0)}''                                   + '|'+ //25 VL_IPI Valor total do IPI N - 02 N
                {FormatFloat('0.00',0)}''                                   + '|'+ //26 VL_PIS Valor total do PIS N - 02 N
                {FormatFloat('0.00',0)}''                                   + '|'+ //27 VL_COFINS Valor total da COFINS N - 02 N
                                                                              '|'+ //28 VL_PIS_ST Valor total do PIS retido por substituição tributária N - 02 N
                                                                              '|'; //29 VL_COFINS_ST Valor total da COFINS retido por substituição tributária N - 02 N
                VL_TOT_DEBITOS := VL_TOT_DEBITOS + xVL_ICMS;
              end
            else
              Linha:=Linha + '|||||||||||||||||||||';
          if Not GravaRegistros('C100') Then Begin Result := False; Exit; End;
          Inc(nC100);
          Total_Bloco_C := Total_Bloco_C + 1;
        End;

        ProgressGeral.Position := 60;

        // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04, 55 e 65).
        if StatusNF = 'A' then
          begin
            EditTabela.Text := 'Criando - BLOCO C170 - ITENS DO DOCUMENTO'; EditTabela.Update;
            if Not RegistroC170 Then Begin Result := False; Exit; End;
          end;

        // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04E 55 E 65).
        EditTabela.Text := 'Criando - BLOCO C190 - REGISTRO ANALITICO'; EditTabela.Update;
        if StatusNF = 'A' Then
          if Not RegistroC190 Then Begin Result := False; Exit; End;

        zPesquisa.Next;
        Progress.Position := Progress.Position + 1;
      End;
      {Fim NFCe}
    end;

  // Cria Bloco C100 com dados da Tabela NOTAFISCAL
  zPesquisa.Close;
  zPesquisa.SQL.Text := 'Select N.*, C.CLIEA60CIDRES, F.FORNA60CID, E.EMPRA60CID from NOTAFISCAL N ' +
                        'lEFT JOIN CLIENTE C ON C.CLIEA13ID = N.CLIEA13ID  ' +
                        'LEFT JOIN FORNECEDOR F ON F.FORNICOD = N.FORNICOD ' +
                        'LEFT JOIN EMPRESA E ON E.EMPRICOD = N.EMPRICOD '+
                        'Where (N.NOFIDEMIS>='''+FormatDateTime('mm/dd/yyyy',De.date)+''') and (N.NOFIDEMIS <= '''+FormatDateTime('mm/dd/yyyy',ate.Date)+''') AND '+
                        'N.EMPRICOD='+ComboEmpresa.Value+' AND N.NOFICSTATUS <> ''A'' ' ;
  zPesquisa.Open;

  //Progress.Max := zPesquisa.RecordCount;
  Progress.Position := 1;
  zPesquisa.First;

  //nC100 := 0;
  //nC140 := 0;
  EditTabela.Text := 'Criando - BLOCO C100 - NOTAS FISCAIS EMITIDAS'; EditTabela.Update;
  While not zPesquisa.EOF do
  begin
    StatusNF := zPesquisa.FieldByName('NOFICSTATUS').AsString;
    // para verificar a forma de pagamento a vista ou a prazo
    zPesquisa1.Close;
    zPesquisa1.SQL.Text := 'Select * From CONTASRECEBER Where NOFIA13ID = ''' + zPesquisa.FieldByName('NOFIA13ID').AsString + ''' order by CTRCICOD';

    EditTabela.Text := 'Criando - BLOCO C100 - NOTAS FISCAIS EMITIDAS => ' + zPesquisa.FieldByName('NOFIINUMERO').AsString; EditTabela.Update;

    NroDocumento   := zPesquisa.FieldByName('NOFIINUMERO').AsString;

    vDataDocumento := FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOFIDEMIS').AsDateTime);

    // Verifica o Indicador de Operacao = 0- Entrada;  1- Saída
    If zPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = '' then  // // 02 IND_OPER Indicador do tipo de operação: C 001* - S - 0- Entrada;  1- Saída
    begin
      If DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',zPesquisa.FieldByName('OPESICOD').AsString) = 'E' Then
      Begin
        vEntradaSaida := '0';
      End Else
      Begin
        vEntradaSaida := '1';
      End;
    End Else
      if zPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'E' then
      begin
        vEntradaSaida := '0';
      end Else
      begin
        vEntradaSaida := '1';
      End;

    if zPesquisa.FieldByName('NOFIA44CHAVEACESSO').AsString <> '' then
      Chave := zPesquisa.FieldByName('NOFIA44CHAVEACESSO').AsString
    else
      Chave := '';

    { Para documentos fiscais cancelados (codigo 02 ou 03) Denegado (04), inutilizado (05) informar somente
      os campos Código da Situação, Indicador de Operacao, Codigo do Modelo e Chave do Documento para os que possuem.}
    if zPesquisa.FieldByName('NOFICSTATUS').AsString = 'C' Then
    begin
      Linha :=  '|C100|'                                      +      // 01 REG C100
        vEntradaSaida                                         + '|'+ // 02 IND_OPER Indicador do tipo de operação: C 001* - S - 0- Entrada;  1- Saída
        '0'                                                   + '|'+ // 03 IND_EMIT Indicador do emitente do documento fiscal:   C 001* - S -  0- Emissão própria; 1- Terceiros
                                                                '|'+ // 04 COD_PART Código do participante (campo 02 do Registro
        '55'                                                  + '|'; // 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela  4.1.1   C 002* - S
      if StatusNF = 'C' Then                                         // 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2  N 002* - S
        Linha := Linha + '02|'  // Documento Cancelado
      Else
        Linha := Linha + '00|'; // Documento Regular

      Linha := Linha +                                          '|'+ // 07 SER Série do documento fiscal C 003 - OC OC
      zPesquisa.FieldByName('NOFIINUMERO').AsString           + '|'+ // 08 NUM_DOC Número do documento fiscal N 009 - O O
      Chave                                                   + '|'+ // 09 CHV_NFE Chave da Nota Fiscal Eletrônica N 044* - O O
                                                                '|'+ // 10 DT_DOC Data da emissão do documento fiscal N 008* - O O
                                                                '|'+ // 11 DT_E_S Data da entrada ou da saída N 008* - O OC
                                                                '|'+ // 12 VL_DOC Valor total do documento fiscal N - 02 O O
                                                                '|'+ // 13 IND_PGTO Indicador do tipo de pagamento:
                                                                '|'+ // 14 VL_DESC Valor total do desconto N - 02 OC OC
                                                                '|'+ // 15 VL_ABAT_NT Abatimento não tributado e não comercial Ex.
                                                                '|'+ // 16 VL_MERC Valor total das mercadorias e serviços N - 02 O OC
                                                                '|'+ // 17 IND_FRT Indicador do tipo do frete:
                                                                '|'+ // 18 VL_FRT Valor do frete indicado no documento fiscal N - 02 OC OC
                                                                '|'+ // 19 VL_SEG Valor do seguro indicado no documento fiscal N - 02 OC OC
                                                                '|'+ // 20 VL_OUT_DA Valor de outras despesas acessórias N - 02 OC OC
                                                                '|'+ // 21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
                                                                '|'+ // 22 VL_ICMS Valor do ICMS N - 02 OC OC
                                                                '|'+ // 23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição
                                                                '|'+ // 24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 OC OC
                                                                '|'+ // 25 VL_IPI Valor total do IPI N - 02 OC OC
                                                                '|'+ // 26 VL_PIS Valor total do PIS N - 02 OC OC
                                                                '|'+ // 27 VL_COFINS Valor total da COFINS N - 02 OC OC
                                                                '|'+ // 28 VL_PIS_ST Valor total do PIS retido por substituição
                                                                '|'; // 29 VL_COFINS_ST Valor total da COFINS retido por substituição
      if Not GravaRegistros('C100') Then Begin Result := False; Exit; End;
      Inc(nC100);
      Total_Bloco_C := Total_Bloco_C + 1;
    end Else
    Begin
      Linha :=  '|C100|'                                                                     +
        vEntradaSaida                                                                        + '|' +
        '0'                                                                                  + '|' ; // 03 IND_EMIT Indicador do emitente do documento fiscal:   C 001* - S -  0- Emissão própria; 1- Terceiros
        vCodParticipante := '';
        // se o cliea13id e empricoddest são nulo busca o participante da tabela Fornecedores
        if ((zPesquisa.FieldByName('CLIEA13ID').IsNull) or (zPesquisa.FieldByName('CLIEA13ID').AsString='')) and (zPesquisa.FieldByName('EMPRICODDEST').IsNull) then  // 04 COD_PART Código do participante (campo 02 do Registro 0150):  do emitente do documento ou do remetente das mercadorias, no caso de entradas; - do adquirente, no caso de saídas  C 060 - S
        Begin
          // Pesquisa na tabela fornecedor o cnpj do participante
          vCodParticipante := DM.SQLLocate('SPED_0150','COD_FORN','COD_PART', zPesquisa.FieldByName('FORNICOD').AsString);
        End Else If (not (zPesquisa.FieldByName('CLIEA13ID').IsNull)) and (zPesquisa.FieldByName('EMPRICODDEST').IsNull)  then
        begin
          vCodParticipante := zPesquisa.FieldByName('CLIEA13ID').AsString ;
        End else
        Begin
          vCodParticipante := 'E'+zPesquisa.FieldByName('EMPRICODDEST').AsString ;
        End;

        if vCodParticipante = '' then
        Begin
          Showmessage('Não Foi Localizado Codigo do Participante para a NF '+zPesquisa.FieldByName('NOFIINUMERO').AsString);
          Result := False;
          //Abort;
        End;

        Linha := Linha + vCodParticipante + '|';

        Linha := Linha + RetornaModeloNF(zPesquisa.FieldByName('SERIA5COD').AsString) + '|'; // 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela  4.1.1   C 002* - S

        {Situacao do Documento}
        if StatusNF = 'E' Then
          xCOD_SIT := '00'; // Documento Regular
        if SQLEmpresaEMPRA14CGC.Value <> copy(chave,7,14) then
          xCOD_SIT := '08';  // Pode ser Contra nota ou nota Avulsa

        Linha := Linha + xCOD_SIT                                                           + '|'; // 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2  N 002* - S

        Linha := Linha +
        Copy(zPesquisa.FieldByName('SERIA5COD').AsString,0,3)                               + '|'+ // 07 SER Série do documento fiscal C 003 - N
        zPesquisa.FieldByName('NOFIINUMERO').AsString                                       + '|'; // 08 NUM_DOC Número do documento fiscal N 009 - S
        if StatusNF = 'E' then
          begin
            Linha := Linha + Chave                                                                       + '|' ;  // 09 CHV_NFE Chave da Nota Fiscal Eletrônica N 044* - N
            Linha := Linha + FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOFIDEMIS').AsDateTime)    + '|' ;  // 10 DT_DOC Data da emissão do documento fiscal N 008* - S
            If zPesquisa.FieldByName('NOFIDSAIDAENTRADA').IsNull then                                             // 11 DT_E_S Data da entrada ou da saída N 008* - N
              Linha := LInha + FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOFIDEMIS').AsDateTime)  + '|'
            else
              Linha := LInha + FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOFIDEMIS').AsDateTime)  + '|' ;  // NOFIDSAIDAENTRADA , removido Adilson, pq gerava erro na validacao do PVA, quando final do mes.

            Linha := Linha + FormatFloat('0.00', zPesquisa.FieldByName('NOFIN2VLRNOTA').Value ) + '|' ;           // 12 VL_DOC Valor total do documento fiscal N - 02 S

            // verifica a forma de pagamento
            zPesquisa1.Open;
            if zPesquisa1.FieldByName('CTRCDVENC').isnull then
              ForPag := '0|'
            else
              if  ( zPesquisa1.FieldByName('CTRCDVENC').AsString = zPesquisa.FieldByName('NOFIDEMIS').AsString) then
                ForPag := '0|'
              else
                ForPag := '1|';
            zPesquisa1.Next;
            if zPesquisa1.RecordCount > 1 then
              ForPag := '1|';
            zPesquisa1.Close;
            Linha := Linha + ForPag  +                                                                   //  13 IND_PGTO Indicador do tipo de pagamento: C 001* - S
            FormatFloat('0.00',zPesquisa.FieldByName('NOFIN2VLRDESC').Value)                    + '|'+ // 14 VL_DESC Valor total do desconto N - 02 N
            ''                                                                                   + '|'+ //15 VL_ABAT_NT Abatimento não tributado e não comercial Ex. desconto ICMS nas remessas para ZFM. N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('NOFIN2VLRPRODUTO').Value)                 + '|'; //16 VL_MERC Valor total das mercadorias e serviços N - 02 N
            If Trim(zPesquisa.FieldByName('NOFICFRETEPORCONTA').AsString) = 'C' then                   // 17 IND_FRT Indicador do tipo do frete: C 001* - S
              Linha := Linha + '1|'
            Else
              Linha := Linha + '0|';

            // Adilson Rotina para somar o C190 e apos alimentar os registros de 21-24)
            xVL_BC_ICMS := 0;
            xVL_ICMS := 0;
            xVL_BC_ICMS_ST := 0;
            xVL_ICMS_ST := 0;
            RegistroC190_MontaTabela;

            ZRegC490.Close;
            ZRegC490.SQL.Clear;
            ZRegC490.SQL.Add('Select * from SPED_REGC490');
            ZRegC490.Open;
            while not zRegC490.eof do
              begin
                xVL_BC_ICMS    := xVL_BC_ICMS    + zRegC490.FieldByName('VL_BC_ICMS').Value;
                xVL_ICMS       := xVL_ICMS       + zRegC490.FieldByName('VL_ICMS').Value;
                xVL_BC_ICMS_ST := xVL_BC_ICMS_ST + zRegC490.FieldByName('VL_BC_ICMS_ST').Value;
                xVL_ICMS_ST    := xVL_ICMS_ST    + zRegC490.FieldByName('VL_ICMS_ST').Value;
                zRegC490.Next;
              end;

            Linha := Linha +
            FormatFloat('0.00',zPesquisa.FieldByName('NOFIN2VLRFRETE').Value)                   + '|'+ //18 VL_FRT Valor do frete indicado no documento fiscal N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('NOFIN2VLRSEGURO').Value)                  + '|'+ //19 VL_SEG Valor do seguro indicado no documento fiscal N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('NOFIN2VLROUTRASDESP').Value)              + '|'+ //20 VL_OUT_DA Valor de outras despesas acessórias N - 02 N

            FormatFloat('0.00',xVL_BC_ICMS)                                                       + '|'+ // 21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 N
            FormatFloat('0.00',xVL_ICMS)                                                          + '|'+ // 22 VL_ICMS Valor do ICMS N - 02 N
            FormatFloat('0.00',xVL_BC_ICMS_ST)                                                    + '|'+ // 23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição tributária N - 02 N
            FormatFloat('0.00',xVL_ICMS_ST)                                                       + '|'+ // 24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 N

            FormatFloat('0.00',zPesquisa.FieldByName('NOFIN2VLRIPI').Value)                     + '|'+ //25 VL_IPI Valor total do IPI N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('NOFIN3VLRPIS').Value)                     + '|'+ //26 VL_PIS Valor total do PIS N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('NOFIN3VLRCOFINS').Value)                  + '|'+ //27 VL_COFINS Valor total da COFINS N - 02 N
                                                                                                   '0|'+ //28 VL_PIS_ST Valor total do PIS retido por substituição tributária N - 02 N
                                                                                                   '0|'; //29 VL_COFINS_ST Valor total da COFINS retido por substituição tributária N - 02 N
            VL_TOT_DEBITOS := VL_TOT_DEBITOS + xVL_ICMS;
          end
        else
          Linha:=Linha + '|||||||||||||||||||||';
      if Not GravaRegistros('C100') Then Begin Result := False; Exit; End;
      Inc(nC100);
      Total_Bloco_C := Total_Bloco_C + 1;
    End;

    ProgressGeral.Position := 60;

    //REGISTRO C113: DOCUMENTO FISCAL REFERENCIADO.
      {Este registro tem por objetivo informar, detalhadamente, outros documentos fiscais que tenham sido mencionados
      nas informações complementares do documento que está sendo escriturado no registro C100, exceto cupons fiscais, que
      devem ser informados no registro C114. Exemplos: nota fiscal de remessa de mercadoria originária de venda para entrega
      futura e nota fiscal de devolução de compras}

    // Seleciona documentos referenciados diferente de 5 ( Cupons Fiscais )

  {
    zPesquisa2.Close;
    zPesquisa2.SQL.Text := 'Select * From NOTAFISCALREFERENCIADA WHERE NOFIA13ID = :xNOFIA13ID and TIPO <> ''5''';
    zPesquisa2.Prepare;
    zPesquisa2.ParamByName('xNOFIA13ID').AsString := zPesquisa.fieldByName('NOFIA13ID').asstring;
    zPesquisa2.Open ;

    if StatusNF = 'E' then
      begin
        if zPesquisa.FieldByName('SERIA2TIPONOTA').AsString <> '55' Then
            if Not RegistroC113 Then Begin Result := False; Exit; End;
      end;

    zPesquisa2.Close;

    // Seleciona documentos referenciados iguais de 5 ( Cupons Fiscais)
    zPesquisa2.Close;
    zPesquisa2.SQL.Text := 'Select * From NOTAFISCALREFERENCIADA WHERE NOFIA13ID = :xNOFIA13ID and TIPO = ''5''';
    zPesquisa2.Prepare;
    zPesquisa2.ParamByName('xNOFIA13ID').AsString := zPesquisa.fieldByName('NOFIA13ID').asstring;
    zPesquisa2.Open ;

    if StatusNF = 'E' then
      begin
        if Not RegistroC114 Then Begin Result := False; Exit; End;
      end;
   }

    //REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01).
      {Este registro tem por objetivo informar detalhes das operações de importação, que estejam sendo documentadas
      pela nota fiscal escriturada no registro C100, quando o campo IND_OPER for igual a “0” (zero), indicando operação de
      entrada.}
    if StatusNF = 'E' then
      begin
        EditTabela.Text := 'Criando - BLOCO C120 - OPERAÇÕES DE IMPORTAÇÃO'; EditTabela.Update;
        if (vEntradaSaida = '0') and ( (zPesquisa.FieldByName('CLIEA60CIDRES').AsString = 'EXTERIOR') OR ( zPesquisa.FieldByName('FORNA60CID').AsString = 'EXTERIOR' ) ) then // Notas Fiscais de Entrada DE IMPORTACAO
          if Not RegistroC120 Then Begin Result := False; Exit; End;
      end;
    // REGISTRO C130: ISSQN, IRRF E PREVIDÊNCIA SOCIAL.
    if StatusNF = 'E' then
      begin
        EditTabela.Text := 'Criando - BLOCO C130 - ISSQN, IRRF E PREVIDÊNCIA SOCIAL'; EditTabela.Update;
        if (vEntradaSaida = '1') then // Nota fiscal de Saida
          if Not RegistroC130 Then Begin Result := False; Exit; End;
      end;

    // REGISTRO C140: FATURA (CÓDIGO 01)
    if StatusNF = 'E' then
      begin
        if Not RegistroC140 Then Begin Result := False; Exit; End;
      end;
    //REGISTRO C160: VOLUMES TRANSPORTADOS (CÓDIGO 01 E 04) - EXCETO COMBUSTÍVEIS.

  {  if (StatusNF = 'E') and (vEntradaSaida = '1') and
    ((RetornaModeloNF(zPesquisa.FieldByName('SERIA5COD').AsString) = '01') or
     (RetornaModeloNF(zPesquisa.FieldByName('SERIA5COD').AsString) = '04'))  then // Encerada - '1' = Nota Fiscal de Saida
      begin
        EditTabela.Text := 'Criando - BLOCO C160 - VOLUMES TRANSPORTADOS'; EditTabela.Update;
        if Not RegistroC160 Then Begin Result := False; Exit; End;
      end; }

    // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
    if StatusNF = 'E' then
      begin
        EditTabela.Text := 'Criando - BLOCO C170 - ITENS DO DOCUMENTO'; EditTabela.Update;
        if Not RegistroC170 Then Begin Result := False; Exit; End;
      end;

    // REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01)
    // Adilson Verificar com Judi se teremos que lancar as Notas de Servico na Entrada
    {EditTabela.Text := 'Criando - BLOCO C172 - OPERAÇÕES COM ISSQN (CÓDIGO 01)'; EditTabela.Update;
    if Not RegistroC172 Then Begin Result := False; Exit; End;}

    // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04E 55 e 65).
    if StatusNF = 'E' then
      begin
        EditTabela.Text := 'Criando - BLOCO C190 - REGISTRO ANALITICO'; EditTabela.Update;
        if Not RegistroC190 Then Begin Result := False; Exit; End;
      end;

    zPesquisa.Next;
    Progress.Position := Progress.Position + 1;
  End;

  // Cria Bloco C100 com dados da Tabela NOTACOMPRA
  // Removido Adilson porque os clientes usam a mesma serie para empresas diferentes 'Left Join SERIE S on S.SERIA5COD = N.NOCPA5SERIE AND S.EMPRICOD = N.EMPRICOD '+
  zPesquisa.Close;
  zPesquisa.SQL.Text := 'Select '+
                        '(select Sum((I.NOCIN3VLREMBAL * I.NOCIN3QTDEMBAL) * (p.prodn2aliqpis / 100)) from notacompraitem i left join produto p '+
                        'on p.prodicod = i.prodicod where i.nocpa13id = n.nocpa13id) as TOTAL_PIS, '+
                        '(select Sum((I.NOCIN3VLREMBAL * I.NOCIN3QTDEMBAL) * (p.prodn2aliqCofins / 100)) from notacompraitem i left join produto p '+
                        'on p.prodicod = i.prodicod where i.nocpa13id = n.nocpa13id) as TOTAL_COFINS, '+
                        '(Select SUM(I.NOCIN3VLREMBAL*I.NOCIN3QTDEMBAL) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS TOTAL_MERC, '+
                        '(Select SUM(I.NOCIN2VBC) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_BC_ICMS, '+
                        '(Select SUM(I.NOCIN3VLRICMS) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_ICMS, '+
                        '(Select SUM(I.NOCIN2VBCST) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_BC_ICMS_ST, '+
                        '(Select SUM(I.NOCIN3VLRSUBST) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_ICMS_ST, '+
                        '(Select SUM(I.NOCIN3VLRIPI) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_IPI, '+
                        '(Select SUM(I.NOCIN3VLRDESC) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_DESC, '+
                        '(Select SUM(I.NOCIN2VLRDESPESAS) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_OUTRAS, '+
                        '(Select SUM(I.NOCIN3VLRFRETE) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_FRETE, '+
                        'N.*, F.FORNA2UF from NOTACOMPRA N '+
                        'Left Join FORNECEDOR F ON F.FORNICOD = N.FORNICOD '+
                        'Where N.'+CampoDataEntrada+' >= '''+FormatDateTime('mm/dd/yyyy',De.Date)+''' and N.'+CampoDataEntrada+' <= '''+FormatDateTime('mm/dd/yyyy',ate.Date)+''' AND N.EMPRICODDESTCOMPRA = '+ComboEmpresa.Value+' AND '+
                        '(N.NOCPCSTATUS = ''E'' or N.NOCPCSTATUS = ''C'') ';

  zPesquisa.Open;

  //Progress.Max := zPesquisa.RecordCount;
  Progress.Position := 1;
  zPesquisa.First;

  EditTabela.Text := 'Criando - BLOCO C100 - NOTAS FISCAIS DE COMPRAS'; EditTabela.Update;
  While not zPesquisa.EOF do
  begin
     vEntradaSaida := '0';
     vIndEmitente  := '1';

     EditTabela.Text := 'Criando - BLOCO C100 - NOTAS COMPRA '+ zPesquisa.FieldByName('NOCPA30NRO').AsString; EditTabela.Update;

     vCodParticipante := '';
     NroDocumento     := zPesquisa.FieldByName('NOCPA30NRO').AsString;

      // Pesquisa na tabela fornecedor o cnpj do participante
      vCodParticipante := DM.SQLLocate('SPED_0150','COD_FORN','COD_PART',zPesquisa.FieldByName('FORNICOD').AsString);

      if vCodParticipante = '' then
      begin
        Showmessage('Codigo do Participante Não Encontrado!'+#13+#10+'Nota Compra: '+NroDocumento);
        Result := False;
        Exit;
      end;
    begin
      if zPesquisa.FieldByName('NOFIA44CHAVEACESSO').AsString <> '' then
        Chave := zPesquisa.FieldByName('NOFIA44CHAVEACESSO').AsString
      else
        Chave := '';

      if chave <> '' then
        ModeloNF := '55'
      else
        ModeloNF := '01';

     Linha :=  '|C100|0|'  + // Incio do registro |C100| e Indicador de Nota de Entrada |0|
            '1'                                                                                  + '|' + // 03 IND_EMIT Indicador do emitente do documento fiscal:   C 001* - S -  0- Emissão própria; 1- Terceiros
            vCodParticipante                                                                     + '|' + // 04 COD_PART Código do participante (campo 02 do Registro 0150):  do emitente do documento ou do remetente das mercadorias, no caso de entradas; - do adquirente, no caso de saídas  C 060 - S
            ModeloNF                                                                             + '|' ; // 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela  4.1.1   C 002* - S

            // 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2  N 002* - S
            if not ckdtEmissao.Checked then
              begin
                if (zPesquisa.FieldByName('NOCPCSTATUS').AsString = 'E') and ( StrToDate(zPesquisa.FieldByName('NOCPDRECEBIMENTO').AsString) <= ate.Date ) Then
                  xCOD_SIT := '00';  // Documento Regular
                if (zPesquisa.FieldByName('NOCPCSTATUS').AsString = 'E') and ( StrToDate(zPesquisa.FieldByName('NOCPDRECEBIMENTO').AsString) > ate.Date ) Then
                  xCOD_SIT := '01'; // Documento Extemporaneo

                if (zPesquisa.FieldByName('NOCPCSTATUS').AsString = 'C') and ( StrToDate(zPesquisa.FieldByName('NOCPDRECEBIMENTO').AsString) <= ate.Date ) Then
                  xCOD_SIT := '02'; // Documento Regular Cancelado
                if (zPesquisa.FieldByName('NOCPCSTATUS').AsString = 'C') and ( StrToDate(zPesquisa.FieldByName('NOCPDRECEBIMENTO').AsString) > ate.Date ) Then
                  xCOD_SIT := '03'; // Documento Extemporaneo Cancelado
              end
            else
              xCOD_SIT := '00';  // Documento Regular

            if zPesquisa.FieldByName('NOCPA5SERIE').AsString='890' then
               xCOD_SIT := '08'; // Serie 890 quando o fornecedor emitiu pelo site Sefaz

            Linha := Linha + xCOD_SIT +'|';                                                              // 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2  N 002* - S

            Linha := Linha +
            Copy(zPesquisa.FieldByName('NOCPA5SERIE').AsString,0,3)                             + '|'+ // 07 SER Série do documento fiscal C 003 - N
            zPesquisa.FieldByName('NOCPA30NRO').AsString                                        + '|'+ // 08 NUM_DOC Número do documento fiscal N 009 - S
            Chave                                                                                 + '|'+ // 09 CHV_NFE Chave da Nota Fiscal Eletrônica N 044* - N
            FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOCPDEMISSAO').AsDateTime)         + '|'; // 10 DT_DOC Data da emissão do documento fiscal N 008* - S

            if not ckdtEmissao.Checked then
              begin
                If zPesquisa.FieldByName('NOCPDRECEBIMENTO').IsNull then                               // 11 DT_E_S Data da entrada ou da saída N 008* - N
                Begin
                  vDataDocumento := FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOCPDEMISSAO').AsDateTime);
                  Linha := LInha + FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOCPDEMISSAO').AsDateTime)       + '|'
                End else
                Begin
                  vDataDocumento := FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOCPDRECEBIMENTO').AsDateTime);
                  Linha := LInha + FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOCPDRECEBIMENTO').AsDateTime)   + '|';
                End;
              end
            else
              begin
                vDataDocumento := FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOCPDEMISSAO').AsDateTime);
                Linha := LInha + FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('NOCPDEMISSAO').AsDateTime)       + '|'
              end;

            // criei esse teste pq algumas notas estavam vindo com null, devido a erro no importador
            if zPesquisa.FieldByName('VL_OUTRAS').AsString = '' then
              xVL_Outras := 0
            else
              xVL_Outras := zPesquisa.FieldByName('VL_OUTRAS').Value ;

            Linha := Linha +
            FormatFloat('0.00',zPesquisa.FieldByName('TOTAL_MERC').Value -
                               zPesquisa.FieldByName('VL_DESC').Value +
                               zPesquisa.FieldByName('VL_FRETE').Value +
                               zPesquisa.FieldByName('VL_ICMS_ST').Value +
                               zPesquisa.FieldByName('VL_IPI').Value +
                               zPesquisa.FieldByName('NOCPN3VLRSEGURO').Value +
                               xVL_Outras) + '|'; // 12 VL_DOC Valor total do documento fiscal N - 02 S

            // verifica a forma de pagamento
            zPesquisa1.Close;
            zPesquisa1.SQL.Text := 'Select * From CONTASPAGAR Where NOCPA13ID = '''+zPesquisa.FieldByName('NOCPA13ID').AsString+''' order by CTPGICOD';
            zPesquisa1.Open;
            if zPesquisa1.FieldByName('CTPGDVENC').isnull then
              ForPag := '0|'
            else
              if  ( zPesquisa1.FieldByName('CTPGDVENC').AsString = zPesquisa.FieldByName('NOCPDEMISSAO').AsString) then
                ForPag := '0|'
              else
                ForPag := '1|';
            zPesquisa1.Next;
            if zPesquisa1.RecordCount > 1 then
              ForPag := '1|';
            zPesquisa1.Close;

            Linha := Linha + ForPag  +                                                                 // 13 IND_PGTO Indicador do tipo de pagamento: C 001* - S
            FormatFloat('0.00',zPesquisa.FieldByName('VL_DESC').Value)                          + '|'+ // 14 VL_DESC Valor total do desconto N - 02 N
            '0'                                                                                 + '|'+ // 15 VL_ABAT_NT Abatimento não tributado e não comercial Ex. desconto ICMS nas remessas para ZFM. N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('TOTAL_MERC').Value+
                               zPesquisa.FieldByName('VL_ICMS_ST').Value)                       + '|'; // 16 VL_MERC Valor total das mercadorias e serviços N - 02 N
            If Trim(zPesquisa.FieldByName('NOCPA5TIPOFRETE').AsString) = 'C' then                      // 17 IND_FRT Indicador do tipo do frete: C 001* - S
              Linha := Linha + '1|'
            Else
              Linha := Linha + '0|';
            Linha := Linha +
            FormatFloat('0.00',zPesquisa.FieldByName('VL_FRETE').Value)                         + '|'+ // 18 VL_FRT Valor do frete indicado no documento fiscal N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('NOCPN3VLRSEGURO').Value)                  + '|'+ // 19 VL_SEG Valor do seguro indicado no documento fiscal N - 02 N
            FormatFloat('0.00',xVL_Outras)                                                      + '|'; // 20 VL_OUT_DA Valor de outras despesas acessórias N - 02 N

            // Problema para entrar nos Prog de Contabilidade, se tem cst <> 00 ou 20, NAO PODE GERAR CRED ICMS
            //FormatFloat('0.00',zPesquisa.FieldByName('VL_BC_ICMS').Value)                       + '|'+ // 21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 N
            //FormatFloat('0.00',zPesquisa.FieldByName('VL_ICMS').Value)                          + '|'+ // 22 VL_ICMS Valor do ICMS N - 02 N
            //FormatFloat('0.00',zPesquisa.FieldByName('VL_BC_ICMS_ST').Value)                    + '|'+ // 23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição tributária N - 02 N
            //FormatFloat('0.00',zPesquisa.FieldByName('VL_ICMS_ST').Value)                       + '|'+ // 24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 N

            // Adilson Rotina para somar o C190 e apos alimentar os registros de 21-24)
            xVL_BC_ICMS := 0;
            xVL_ICMS := 0;
            xVL_BC_ICMS_ST := 0;
            xVL_ICMS_ST := 0;
            RegistroC190_MontaTabela;
            ZRegC490.Close;
            ZRegC490.SQL.Clear;
            ZRegC490.SQL.Add('Select * from SPED_REGC490');
            ZRegC490.Open;
            while not zRegC490.eof do
              begin
                xVL_BC_ICMS    := xVL_BC_ICMS    + zRegC490.FieldByName('VL_BC_ICMS').Value;
                xVL_ICMS       := xVL_ICMS       + zRegC490.FieldByName('VL_ICMS').Value;
                xVL_BC_ICMS_ST := xVL_BC_ICMS_ST + zRegC490.FieldByName('VL_BC_ICMS_ST').Value;
                xVL_ICMS_ST    := xVL_ICMS_ST    + zRegC490.FieldByName('VL_ICMS_ST').Value;
                zRegC490.Next;
              end;

            Linha := Linha +
            FormatFloat('0.00',xVL_BC_ICMS)                                                       + '|'+ // 21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 N
            FormatFloat('0.00',xVL_ICMS)                                                          + '|'+ // 22 VL_ICMS Valor do ICMS N - 02 N
            FormatFloat('0.00',xVL_BC_ICMS_ST)                                                    + '|'+ // 23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição tributária N - 02 N
            FormatFloat('0.00',xVL_ICMS_ST)                                                       + '|'; // 24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 N
            VL_TOT_CREDITOS := VL_TOT_CREDITOS + xVL_ICMS;

            // IPI, PIS e Cofins
            Linha := Linha +
            FormatFloat('0.00',zPesquisa.FieldByName('VL_IPI').Value)                           + '|'+ // 25 VL_IPI Valor total do IPI N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('TOTAL_PIS').Value)                        + '|'+ // 26 VL_PIS Valor total do PIS N - 02 N
            FormatFloat('0.00',zPesquisa.FieldByName('TOTAL_COFINS').Value)                     + '|'+ // 27 VL_COFINS Valor total da COFINS N - 02 N
                                                                                                 '0|'+ // 28 VL_PIS_ST Valor total do PIS retido por substituição tributária N - 02 N
                                                                                                 '0|'; // 29 VL_COFINS_ST Valor total da COFINS retido por substituição tributária N - 02 N

      If Not GravaRegistros('C100') Then Begin Result := False; Exit; End;
      Inc(nC100);
      Total_Bloco_C := Total_Bloco_C + 1;

      //REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01).
        {Este registro tem por objetivo informar detalhes das operações de importação, que estejam sendo documentadas
        pela nota fiscal escriturada no registro C100, quando o campo IND_OPER for igual a “0” (zero), indicando operação de
        entrada.}
      EditTabela.Text := 'Criando - BLOCO C120 - OPERAÇÕES DE IMPORTAÇÃO '; EditTabela.Update;
      if (vEntradaSaida = '0') and ( (zPesquisa.FieldByName('FORNA2UF').AsString = 'EX') ) then // Notas Fiscais de Entrada DE IMPORTACAO
        if Not RegistroC120 Then Begin Result := False; Exit; End;

      // REGISTRO C130: ISSQN, IRRF E PREVIDÊNCIA SOCIAL.
      EditTabela.Text := 'Criando - BLOCO C130 -  ISSQN, IRRF E PREVIDÊNCIA SOCIAL'; EditTabela.Update;
      if (vEntradaSaida = '1') then // Nota fiscal de Saida
        if Not RegistroC130 Then Begin Result := False; Exit; End;

      // REGISTRO C140: FATURA (CÓDIGO 01)
      EditTabela.Text := 'Criando - BLOCO C140 -  FATURA (CÓDIGO 01)'; EditTabela.Update;
      if Not RegistroC140 Then Begin Result := False; Exit; End;

      // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
      EditTabela.Text := 'Criando - BLOCO C170 -  ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55)'; EditTabela.Update;
      if Not RegistroC170 Then Begin Result := False; Exit; End;

      // REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01)
      {na entrada não apresentar
     EditTabela.Text := 'Criando - BLOCO C172 -  OPERAÇÕES COM ISSQN (CÓDIGO 01) NF COMPRA '+ zPesquisa.FieldByName('NOCPA30NRO').AsString; EditTabela.Update;
      if Not RegistroC172 Then Begin Result := False; Exit; End;}

      // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04E 55).
      EditTabela.Text := 'Criando - BLOCO C190 - REGISTRO ANALITICO'; EditTabela.Update;
      if Not RegistroC190 Then Begin Result := False; Exit; End;
    end;

    zPesquisa.Next;
    Progress.Position := Progress.Position + 1;
  End;

  zPesquisa.Close;
  ProgressGeral.Position := 70;
  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC113: boolean;
Begin
  While not zPesquisa2.Eof do
  begin
    Linha := '|C113|'                                                            + // 01 REG Texto fixo contendo ''C113'' C 004 - O O
           vEntradaSaida                                                   + '|' + // 02 IND_OPER Indicador do tipo de operação: 0- Entrada/aquisição; 1- Saída/prestação
           vIndEmitente                                                    + '|' + // 03 IND_EMIT Indicador do emitente do título:
           vCodParticipante                                                + '|' ; // 04 COD_PART Código do participante emitente (campo 02 do Registro 0150) do documento referenciado.
           // 05 COD_MOD Código do documento fiscal, conforme a Tabela 4.1.1
           if zPesquisa2.FieldByName('TIPO').AsString = '1' then // 1 - Nota Fiscal Eletronica (NF-e)
              Linha := Linha + '55|'
           Else if zPesquisa2.FieldByName('TIPO').AsString = '1' then // 2 - Conhecimento de Transporte Eletronico (CT-e)
              Linha := Linha + '57|'
           Else if zPesquisa2.FieldByName('TIPO').AsString = '1' then // 3 - Nota Fiscal Modelo 1
              Linha := Linha + '01|'
           Else if zPesquisa2.FieldByName('TIPO').AsString = '1' then // 4 - Nota Fiscal de Produtor
              Linha := Linha + '04|'
           Else if zPesquisa2.FieldByName('TIPO').AsString = '1' then // 5 - Cupom Fiscal Emitido por ECF
              Linha := Linha + '2D|'
           Else
              Linha := Linha + '|';
           Linha := Linha +
           Copy(zPesquisa2.FieldByName('SERIA5COD').AsString,0,3)  + '|' + // 06 SER Série do documento fiscal C 004 - OC OC
           ''                                                              + '|' + // 07 SUB Subsérie do documento fiscal
           zPesquisa2.FieldByName('NUMERO').AsString               + '|' + // 08 NUM_DOC Número do documento fiscal N 009 - O O
           FormatDateTime('ddmmyyyy',zPesquisa2.FieldByName('DATAEMISSAO').AsDateTime ); //  09 DT_DOC Data da emissão do documento fiscal. N 008* - O O

    If Not GravaRegistros('C113') Then Begin Result := False; Exit; End;
    Inc(nC113);
    Total_Bloco_C := Total_Bloco_C + 1;

    zPesquisa2.Next;
  End;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC114: boolean;
Begin
  While not zPesquisa2.Eof do
  begin
    Linha := '|C114|'                                                            + // 01 REG Texto fixo contendo ''C114''
             '2D|'                                                               + // 02 COD_MOD Código do modelo do documento fiscal, conforme a tabela indicada no item 4.1.1
             zPesquisa2.FieldByName('NUMERO_SERIE').AsString       + '|' + // 03 ECF_FAB Número de série de fabricação do ECF
             zPesquisa2.FieldByName('NUMERO_ECF').AsString         + '|' + // 04 ECF_CX Número do caixa atribuído ao ECF N 003 - O O
             zPesquisa2.FieldByName('NUMERO_COO').AsString         + '|' + // 05 NUM_DOC Número do documento fiscal
             FormatDateTime('ddmmyyyy',zPesquisa2.FieldByName('DATAEMISSAO').AsDateTime ) + '|' ; //  06 DT_DOC Data da emissão do documento fiscal N 008* - O O

    If Not GravaRegistros('C114') Then Begin Result := False; Exit; End;
    Inc(nC114);
    Total_Bloco_C := Total_Bloco_C + 1;

    zPesquisa2.Next;
  End;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC120: boolean;
var nDI:String;
    nPisI, nCofinsI : Extended;
Begin
  Showmessage ( 'Favor verificar os calculas para PIS e Cofins deste Modulo - Modulo Desatualizado');
  zPesquisa2.Close;
  zPesquisa2.SQL.Text := 'Select * from notafiscalitem where nofia13id = '''+zPesquisa.FieldByName('Nofia13id').AsString+''' order by nfita10diimport';
  zPesquisa2.Open;
  While not zPesquisa2.Eof do
  begin
    Linha := '|C120|'                                                             + // 01 REG Texto fixo contendo ''C120''
    '0'                                                                     + '|' + // 02 COD_DOC_IMP Documento de importação: 0 – Declaração de Importação; 1 – Declaração Simplificada de Importação.
    zPesquisa2.FieldByName('NFITA10DIIMPORT').AsString             + '|' ; // 03 NUM_DOC__IMP  Número do documento de Importação.
    nPisI    := 0;
    nCofinsI := 0;
    nDI := zPesquisa.FieldByName('NFITA10DIIMPORT').AsString;
    While  (zPesquisa2.FieldByName('NFITA10DIIMPORT').AsString = nDi) and (not zPesquisa2.Eof) do
    begin
      nPisI     := nPisI    + 0;
      nCofinsI  := nCofinsI + 0;
      zPesquisa2.Next;
    End;

    Linha := Linha +
    ''                                                                     + '|' + // 04 PIS_IMP Valor pago de PIS na importação N - 02 OC
    ''                                                                     + '|' + // 05 COFINS_IMP Valor pago de COFINS na importação N - 02 OC
    ''                                                                     + '|' ; // 06 NUM_ACDRAW Número do Ato Concessório do regime Drawback

    If Not GravaRegistros('C120') Then Begin Result := False; Exit; End;
    Inc(nC120);
    Total_Bloco_C := Total_Bloco_C + 1;
  End;

  zPesquisa2.Close;
  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC130: boolean;
Begin
 {REGISTRO C130: ISSQN, IRRF E PREVIDÊNCIA SOCIAL.
  Este registro tem por objetivo informar dados da prestação de serviços sob não-incidência ou não tributados pelo
  ICMS e ainda detalhes sobre a retenção de Imposto de Renda Retido na Fonte (IRRF) e de contribuições previdenciárias.
  Essas três situações possuem características próprias e tratamentos específicos na legislação, não guardando entre elas nenhuma relação.}

  if zPesquisa.Fieldbyname('NOFIN2VLRSERVICO').Value > 0 then
    begin
      Linha := '|C130|'                                                          + // 01 REG Texto fixo contendo ''C130''
      FormatFloat('0.00',zPesquisa.Fieldbyname('NOFIN2VLRSERVICO').Value)  + '|' + // 02 VL_SERV_NT Valor dos serviços sob não-incidência ou nãotributados pelo ICMS
      FormatFloat('0.00',zPesquisa.Fieldbyname('NOFIN2VLRSERVICO').Value)  + '|' + // 03 VL_BC_ISSQN Valor da base de cálculo do ISSQN N - 02 O
      FormatFloat('0.00',zPesquisa.Fieldbyname('NOFIN2VLRISSQN').Value)    + '|' + // 04 VL_ISSQN Valor do ISSQN N - 02 OC
      ''                                                                   + '|' + // 05 VL_BC_IRRF Valor da base de cálculo do Imposto de Renda Retido na Fonte
      ''                                                                   + '|' + // 06 VL_ IRRF Valor do Imposto de Renda - Retido na Fonte N - 02 OC
      ''                                                                   + '|' + // 07 VL_BC_PREV Valor da base de cálculo de retenção da Previdência Social
      ''                                                                   + '|' ; // 08 VL_ PREV Valor destacado para retenção da Previdência Social

      If Not GravaRegistros('C130') Then Begin Result := False; Exit; End;
      Inc(nC130);
      Total_Bloco_C := Total_Bloco_C + 1;
    end;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC140: boolean;
var nParc : Integer;
    nVLRParc : extended;
    nNumeroDup:String;
Begin
 {REGISTRO C140: FATURA (CÓDIGO 01)
  Este registro tem por objetivo informar dados da fatura comercial, sempre que a aquisição ou venda de
  mercadorias for a prazo, por meio de notas fiscais modelo 1 ou 1A. Devem ser consideradas as informações quando da
  emissão do documento fiscal, incluindo a parcela paga no ato da operação, se for o caso.
  Nos casos onde uma única fatura diz respeito a diversas notas fiscais, para cada nota apresentada no C100, a fatura
  deve aqui ser informada, sempre com o seu valor original, sem nenhum rateio.
  Havendo mais de um tipo de título, informar o campo IND_TIT com o código ‘99’ (Outros). No campo
  DESC_TIT identificar cada um dos títulos, com números e valores. No campo VL_TIT informar o valor total da fatura.}

  if POS('NOTAFISCAL',UpperCase(zPesquisa.SQL.Text)) > 0 Then
    ModeloNF := '55';

  if POS('NOTACOMPRA',UpperCase(zPesquisa.SQL.Text)) > 0 Then
    begin
      if zPesquisa.FieldByName('NOFIA44CHAVEACESSO').AsString <> '' then
        ModeloNF := '55'
      else
       ModeloNF  := '01';
    end;
  if  (ModeloNF = '01') Then // Nota fiscal Normal
    begin
      zPesquisa1.Close;
     // if POS('CONTASRECEBER',UpperCase(zPesquisa.SQL.Text)) > 0 Then
      if POS('NOTAFISCAL',UpperCase(zPesquisa.SQL.Text)) > 0 Then
        begin
          zPesquisa1.SQL.Text := 'Select * From CONTASRECEBER Where NOFIA13ID = '''+zPesquisa.FieldByName('NOFIA13ID').AsString+''' order by CTRCICOD';
          EditTabela.Text := 'Criando C140 FATURA - NF Venda: '+zPesquisa.FieldByName('NOFIA13ID').AsString; EditTabela.Update;
        end
      else
        begin
          zPesquisa1.SQL.Text := 'Select * From CONTASPAGAR Where  NOCPA13ID = '''+zPesquisa.FieldByName('NOCPA13ID').AsString+''' order by CTPGICOD';
          EditTabela.Text := 'Criando C140 FATURA - NF Compra: '+zPesquisa.FieldByName('NOCPA13ID').AsString; EditTabela.Update;
        end;
      zPesquisa1.Open;

      nParc     := 0;
      nVLRParc  := 0;
      While Not zPesquisa1.Eof do
        begin
          Inc(nParc);
          if POS('NOTAFISCAL',UpperCase(zPesquisa.SQL.Text)) > 0 Then
            begin
              nVLRParc  := nVLRParc + zPesquisa1.Fieldbyname('CTRCN2VLR').value;
              nNumeroDup:= zPesquisa1.FieldbyName('CTRCA30NRODUPLICBANCO').ASSTRING;
            end
          else
            begin
              nVLRParc := nVLRParc + zPesquisa1.Fieldbyname('CTPGN3VLR').value;
              nNumeroDup:= zPesquisa1.FieldbyName('CTPGA20DOCORIG').ASSTRING;
            end;
          zPesquisa1.Next;
        end;
      zPesquisa1.First;

      IF not zPesquisa1.IsEmpty then
      begin
        Linha := '|C140|'                                                            + // 01 REG Texto fixo contendo ''C140'' C 004 - O O
                 '0'                                                           + '|' + // 02 IND_EMIT Indicador do emitente do título: 0- Emissão própria; 1- Terceiros
                 '99'                                                          + '|' + // 03 IND_TIT Indicador do tipo de título de crédito: 00- Duplicata; 01- Cheque; 02- Promissória; 03- Recibo; 99- Outros (descrever)
                 'COBRANCA DIRETA OU POR BOLETO BANCARIO'                      + '|' + // 04 DESC_TIT Descrição complementar do título de crédito C - - OC OC
                 nNumeroDup                                                    + '|' + // 05 NUM_TIT Número ou código identificador do título de   crédito
                 IntToStr(nParc)                                               + '|' + // 06 QTD_PARC Quantidade de parcelas a receber/pagar N 002 - O O
                 FormatFloat('0.00', nVLRParc )                                + '|' ; // 07 VL_TIT Valor total dos títulos de créditos N - 02 O O

        If Not GravaRegistros('C140') Then  Begin Result := False;  Exit; End;
        Inc(nC140);
        Total_Bloco_C := Total_Bloco_C + 1;
      End;
      //REGISTRO C141: VENCIMENTO DA FATURA (CÓDIGO 01).
      if Not RegistroC141 Then Begin Result := False; Exit; End;

    end;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC141: boolean;
var xVLRParc : Extended;
    xVencto:String;
    xParc : Integer;
Begin
 {REGISTRO C141: VENCIMENTO DA FATURA (CÓDIGO 01).
  Este registro deve ser apresentado, obrigatoriamente, sempre que for informado o registro C140, devendo ser
  discriminados o valor e a data de vencimento de cada uma das parcelas.
  Não podem ser informados dois ou mais registros com o mesmo conteúdo para o campo NUM_PARC.}

  if  (ModeloNF = '01') Then // Nota fiscal Normal
    begin
      zPesquisa1.First;
      xParc := 0;
      xVLRParc := 0;
      While Not zPesquisa1.Eof do
        begin
          inc(xParc);
          // identifica se o sql é nas contas a receber ou pagar
          if POS('NOTAFISCAL',UpperCase(zPesquisa.SQL.Text)) > 0 Then
            begin
              xVLRParc  := xVLRParc + zPesquisa1.Fieldbyname('CTRCN2VLR').value;
              xVencto   := FormatDateTime('ddmmyyyy',zPesquisa1.FieldbyName('CTRCDVENC').AsDateTime);
            end
          else
            begin
              xVLRParc := xVLRParc + zPesquisa1.Fieldbyname('CTPGN3VLR').value;
              xVencto   := FormatDateTime('ddmmyyyy',zPesquisa1.FieldbyName('CTPGDVENC').AsDateTime);
            end;

          Linha := '|C141|'                                                            + // 01 REG Texto fixo contendo ''C141'' C 004 - O O
                   IntToStr(xParc)                                               + '|' + // 02 NUM_PARC Número da parcela a receber/pagar
                   xVencto                                                       + '|' + // 03 DT_VCTO Data de vencimento da parcela N 008* - O O
                   FormatFloat('0.00', xVLRParc )                                + '|' ; // 04 VL_PARC Valor da parcela a receber/pagar N - 02 O O

          If Not GravaRegistros('C141') Then Begin Result := False; Exit; End;
          Inc(nC141);
          Total_Bloco_C := Total_Bloco_C + 1;
          zPesquisa1.Next;
        end;
    end;
  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC160: boolean;
var vCodTransp : String;
Begin
 {REGISTRO C160: VOLUMES TRANSPORTADOS (CÓDIGO 01 E 04) - EXCETO COMBUSTÍVEIS.
  Este registro tem por objetivo informar detalhes dos volumes, do transportador e do veículo empregado no
  transporte nas operações de saídas.}

  if  (zPesquisa.FieldByName('NOFICSTATUS').AsString = 'E')  Then
    begin
      vCodTransp := DM.SQLLocate('SPED_0150','COD_TRANSP','COD_PART', zPesquisa.FieldByName('TRANICOD').AsString);

      if vCodTransp = '' then
        begin
          vCodTransp := DM.SQLLocate('TRANSPORTADORA','TRANICOD','TRANA14CGC',zPesquisa.FieldByName('TRANICOD').AsString);

          if Length(vCodParticipante) > 11 then // é cnpj
            vCodTransp := DM.SQLLocate('SPED_0150','CNPJ','COD_PART',''''+vCodTransp+'''')
          else
            vCodTransp := DM.SQLLocate('SPED_0150','CPF','COD_PART',''''+vCodTransp+'''');
        end;

      if vCodTransp <> '' then
        begin
          Linha := '|C160|'                                                              + // 01 REG Texto fixo contendo ''C160'' C 004
          vCodTransp                                                               + '|' + // 02 COD_PART Código do participante (campo 02 do Registro 0150): - transportador, se houver
          zPesquisa.FieldByName('NOFIA8PLACAVEIC').AsString                        + '|' + // 03 VEIC_ID Placa de identificação do veículo automotor C 007 - OC
          FormatFloat('9999999999',Int(zPesquisa.FieldByName('NOFIN3QUANT').AsInteger))                            + '|' + // 04 QTD_VOL Quantidade de volumes transportados N - - O
          FormatFloat('0.00',zPesquisa.FieldByName('NOFIN3PESBRUT').Value)         + '|' + // 05 PESO_BRT Peso bruto dos volumes transportados (em Kg) N - 02 O
          FormatFloat('0.00',zPesquisa.FieldByName('NOFIN3PESLIQ').Value)          + '|' + // 06 PESO_LIQ Peso líquido dos volumes transportados (em Kg) N - 02 O
          ''                                                                       + '|' ; // 07 UF_ID Sigla da UF da placa do veículo C 002 - OC

          If Not GravaRegistros('C160') Then Begin Result := False; Exit; End;
          Inc(nC160);
          Total_Bloco_C := Total_Bloco_C + 1;
        end;
    end;
  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC170: boolean;
var OpEntraSai, UnidadeSped, CFOP, CstIPI, CstPisCofins :String;
    Base, Quantidade : Extended;
    nOrdem:Integer;
Begin
   {REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
   Registro obrigatório para discriminar os itens da nota fiscal (mercadorias e/ou serviços constantes em notas
   conjugadas), inclusive em operações de entrada de mercadorias acompanhadas de Nota Fiscal Eletrônica (NF-e) de emissão
   de terceiros.
   Conforme item 2.4.2.2.1 do Ato COTEPE/ICMS nº 09, de 18 de abril de 2008, o termo ''item'' é aplicado às
   operações fiscais que envolvam mercadorias, serviços, produtos ou quaisquer outros itens concernentes às transações
   fiscais suportadas pelo documento, como, por exemplo, nota fiscal complementar, nota fiscal de ressarcimento,
   transferências de créditos e outros casos.
   Não podem ser informados para um mesmo documento fiscal dois ou mais registros com o mesmo conteúdo no
   campo NUM_ITEM.
   IMPORTANTE: para documentos de entrada, os campos de valor de imposto/contribuição, base de cálculo e alíquota só
   devem ser informados se o adquirente tiver direito à apropriação do crédito (enfoque do declarante).}

  if Pos('NOTAFISCAL',zPesquisa.SQL.Text) > 0 Then // Nota de Venda da Tabela Notafiscal
    begin
      {if (not chkItensNFe.Checked) Then
      begin
        Result := True;
        Exit; // se for nota eletronica propria não precisa referenciar os produtos, a não ser que o Contador solicite
      End;}

      EditTabela.Text := 'Criando Registro C170 - Abrindo Tabela NOTAFISCALITEM'; EditTabela.Update;
      zPesquisa1.close;
      zPesquisa1.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA3CSTIPIENTRADA, P.PRODA2CSTPIS, '+
      'P.PRODA3CSTPISENTRADA, P.PRODA2CSTCOFINS, P.PRODA3CSTCOFINSENTRADA, P.PRODN2ALIQCOFINS, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM, '+
      'U.UNIDA5DESCR, I.* From NotaFiscalItem I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
      'Where NOFIA13ID='''+zPesquisa.FieldByName('NOFIA13ID').AsString+'''';
      zPesquisa1.Open;

      EditTabela.Text := 'Criando Registro C170 - Itens da tabela NOTAFISCALITEM'; EditTabela.Update;
      nOrdem := 1;
      While Not zPesquisa1.Eof do
        begin
          Try
           { if CkBarras.Checked then
              begin
                CodProd := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',zPesquisa1.FieldByName('PRODICOD').AsString);
                if CodProd = '' then
                  CodProd := zPesquisa1.FieldByName('PRODICOD').AsString;
              end
            else }
              CodProd := zPesquisa1.FieldByName('PRODICOD').AsString;

            Base := zPesquisa1.FieldByName('NFITN2VLRUNIT').Value * zPesquisa1.FieldByName('NFITN3QUANT').Value;

            Linha := '|C170|'                                                         + // 01 REG Texto fixo contendo ''C170'' C 004 - O O
            IntToStr(nOrdem)                                                    + '|' + // NUM_ITEM Número sequencial do item no documento fiscal N 003 - O O
            CodProd                                                             + '|' + // 03 COD_ITEM Código do item (campo 02 do Registro 0200) C 060 - O O
            TrimLeft(zPesquisa1.FieldByName('PRODA60DESCR').AsString)           + '|' + // 04 DESCR_COMPL Descrição complementar do item como adotado no documento fiscal
            FormatFloat('0.00000',zPesquisa1.FieldByName('NFITN3QUANT').Value)  + '|' + // 05 QTD Quantidade do item N - 05 O O
            zPesquisa1.FieldByName('UNIDA5DESCR').AsString                      + '|' + // 06 UNID Unidade do item (Campo 02 do registro 0190) C 006 - O O
            FormatFloat('0.00', Base)                                           + '|' + // 07 VL_ITEM Valor total do item (mercadorias ou serviços) N - 02 O O
            FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2VLRDESC').Value)   + '|' ; // 08 VL_DESC Valor do desconto comercial N - 02 OC OC
            inc(nOrdem);

            // Verifica se a operacao de estoque é de entrada ou saida
            OpEntraSai := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPERACAO_E_S',zPesquisa.FieldByName('OPESICOD').AsString);
            If OpEntraSai = 'N' Then // não movimenta estoque
              Linha := Linha +  '1|'  // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO
            Else  // Saida ou Entrada
              Linha := Linha +  '0|'; // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO

            // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            if length(zPesquisa1.FieldByName('NFITICST').Value) < 3 then
              Linha := Linha + zPesquisa1.FieldByName('PRODIORIGEM').AsString + FormatFloat('00',zPesquisa1.FieldByName('NFITICST').Value) + '|'
            else
              Linha := Linha + FormatFloat('000',zPesquisa1.FieldByName('NFITICST').Value) + '|';

            {
            Linha := Linha + FormatFloat('0', zPesquisa2.FieldByName('PRODIORIGEM').Value);

            if not zPesquisa2.FieldByName('NFITICST').IsNull then
              Linha := Linha +
              FormatFloat('00',zPesquisa2.FieldByName('NFITICST').Value)        + '|'  // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            Else
              Linha := Linha +
              FormatFloat('00', StrToInt(DM.SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB', zPesquisa2.FieldByName('PRODICOD').AsString)))        + '|' ; // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
             }


            if zPesquisa1.FieldByName('CFOPA5CODAUX').AsString <> '' Then
              Linha := Linha + zPesquisa1.FieldByName('CFOPA5CODAUX').AsString  + '|'  // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O
            Else
              Linha := Linha + zPesquisa.FieldByName('CFOPA5COD').AsString            + '|' ;  // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O
            Linha := Linha +
            ''                                                                          + '|' ; // 12 COD_NAT Código da natureza da operação (campo 02 do Registro 0400)

            if zPesquisa1.FieldByName('NFITICST').AsInteger  in ([30, 40, 41, 50, 60]) then // para origem da mercadoria 0 = nacional = 1 importada e 2 import. adq. mercado interno
            begin
              Linha := Linha +
              '0'   + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
              '0'   + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
              '0'   + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
            end else
            begin
              Linha := Linha +
              FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2BASEICMS').Value)  + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
              FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2PERCICMS').Value)  + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
              FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2VLRICMS').Value)   + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
            End;

            if zPesquisa1.FieldByName('NFITICST').AsInteger  in ([10,30,70]) then
            Begin
              Linha := Linha +
              '0'   + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
              '0'   + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
              '0'   + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC
            End Else Begin
              Linha := Linha +
              FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2BASESUBS').Value)  + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
              FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2PERCSUBS').Value)  + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
              FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2VLRSUBS').Value)   + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC
            End;
            Linha := Linha + '0'                                                  + '|' ; // 19 IND_APUR Indicador de período de apuração do IPI: 0 - Mensal; 1 - Decendial

            If (OpEntraSai = 'S') or (zPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'S') then // operacao de estoque de Saida
              begin
                if Copy(zPesquisa1.FieldByName('PRODA2CSTIPI').Asstring,0,2)='' then
                  CstIPI := '99'
                else
                  CstIPI := Copy(zPesquisa1.FieldByName('PRODA2CSTIPI').Asstring,0,2);
              end
            else
              begin
                if Copy(zPesquisa1.FieldByName('PRODA3CSTIPIENTRADA').Asstring,0,2)='' then
                  CstIPI := '99'
                else
                  CstIPI := Copy(zPesquisa1.FieldByName('PRODA3CSTIPIENTRADA').Asstring,0,2);
              end;

            Linha := Linha + CstIPI                                                     + '|' + // 20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            ''                                                                          + '|' + // 21 NAO PREENCHER - COD_ENQ Código de enquadramento legal do IPI, conforme
            FormatFloat('0.00',Base)                                                    + '|' + // 22 VL_BC_IPI Valor da base de cálculo do IPI N - 02 OC OC
            FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2PERCIPI').Value)   + '|' + // 23 ALIQ_IPI Alíquota do IPI N 006 02 OC OC
            FormatFloat('0.00',zPesquisa1.FieldByName('NFITN2VLRIPI').Value)    + '|';  // 24 VL_IPI Valor do IPI creditado/debitado N - 02 OC OC

            If (OpEntraSai = 'S') or (zPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'S') then // operacao de estoque de Saida
              begin
                if Copy(zPesquisa1.FieldByName('PRODA2CSTPIS').Asstring,0,2)='' then
                  CstPisCofins := '99'
                else
                  CstPisCofins := Copy(zPesquisa1.FieldByName('PRODA2CSTPIS').Asstring,0,2);
              end
            else
              begin
                if Copy(zPesquisa1.FieldByName('PRODA3CSTPISENTRADA').Asstring,0,2)='' then
                  CstPisCofins := '99'
                else
                  CstPisCofins := Copy(zPesquisa1.FieldByName('PRODA3CSTPISENTRADA').Asstring,0,2);
              end;

            Linha := Linha + CstPisCofins                                               + '|' + // 25 CST_PIS Código da Situação Tributária referente ao PIS. N 002* - OC OC
            FormatFloat('0.00',Base)                                                    + '|' + // 26 VL_BC_PIS Valor da base de cálculo do PIS N 02 OC OC
            FormatFloat('0.0000',zPesquisa1.FieldByName('PRODN2ALIQPIS').Value)         + '|' + // 27 ALIQ_PIS Alíquota do PIS (em percentual) N 008 04 OC OC
            ''                                                                          + '|' + // 28 QUANT_BC_PIS Quantidade – Base de cálculo PIS N 03 OC OC
            ''                                                                          + '|' + // 29 ALIQ_PIS Alíquota do PIS (em reais) N 04 OC OC
            FormatFloat('0.00',Base *
            (zPesquisa1.FieldByName('PRODN2ALIQPIS').Value / 100) )                     + '|' ; // 30 VL_PIS Valor do PIS N - 02 OC OC

            Linha := Linha + CstPisCofins                                               + '|' + // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
            FormatFloat('0.00',Base)                                                    + '|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
            FormatFloat('0.0000',zPesquisa1.FieldByName('PRODN2ALIQCOFINS').Value)      + '|' + // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
            ''                                                                          + '|' + // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
            ''                                                                          + '|' + // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
            FormatFloat('0.00',Base *
            (zPesquisa1.FieldByName('PRODN2ALIQCOFINS').Value / 100) )                  + '|' + // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            ''                                                                          + '|' ; // 37 COD_CTA Código da conta analítica contábil

            If Not GravaRegistros('C170') Then Begin Result := False; Exit; End;
            Inc(nC170);
            Total_Bloco_C := Total_Bloco_C + 1;
          except on E:Exception do
            begin
              Showmessage('Falha ao gerar Linha para Produto de codigo: '+zPesquisa1.FieldByName('Prodicod').AsString +#13+#10+
              'Da Nota Fiscal Número: '+zPesquisa.FieldByName('NOFIINUMERO').AsString);
            end;
          end;
          zPesquisa1.Next;
        end;
    end;

  // Nota de Compra da tabela NotaCompra
  if Pos('NOTACOMPRA',zPesquisa.SQL.Text) > 0 Then // Nota de Venda da Tabela Notafiscal
    begin
      {if (not chkItensNFe.Checked) Then
      begin
        Result := True;
        Exit; // se for nota eletronica propria não precisa referenciar os produtos, a não ser que o Contador solicite
      End;}

      EditTabela.Text := 'Criando Registro C170 - Abrindo tabela NOTACOMPRAITEM'; EditTabela.Update;
      zPesquisa1.close;
      zPesquisa1.SQL.Text :=
      'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA2CSTPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM, '+
      'P.PRODISITTRIB, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODA2CSTCOFINS, P.PRODA2TIPOITEM , P.UNIDICOD, '+
      ' P.PRODA3CSTIPIENTRADA, P.PRODA3CSTPISENTRADA, P.PRODA3CSTCOFINSENTRADA, U.UNIDA5DESCR, I.* From NOTACOMPRAITEM I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = I.UNIDICOD '+
      'Where NOCPA13ID = '''+zPesquisa.FieldByName('NOCPA13ID').AsString+'''';
      zPesquisa1.Open;

      EditTabela.Text := 'Criando Registro C170 - Itens da tabela NOTACOMPRAITEM'; EditTabela.Update;
      nOrdem := 1;
      While Not zPesquisa1.Eof do
        begin
          TRY
            // Multiplicar a capacidade para ficar na mesma medida da venda.
            // e tem q Pegar a Unidade do cadastro do Produto
            if ckQuestor.Checked then
              begin
                Quantidade  := zPesquisa1.FieldByName('NOCIN3CAPEMBAL').Value * zPesquisa1.FieldByName('NOCIN3QTDEMBAL').Value;
                UnidadeSped := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',zPesquisa1.FieldByName('UNIDICOD').AsString);
              end
            else
              begin
                Quantidade  := zPesquisa1.FieldByName('NOCIN3QTDEMBAL').Value;
                UnidadeSped := zPesquisa1.FieldByName('UNIDA5DESCR').AsString;
              end;

           if UnidadeSped = '' then UnidadeSped := 'UN';

            Base := (zPesquisa1.FieldByName('NOCIN3VLREMBAL').Value * zPesquisa1.FieldByName('NOCIN3QTDEMBAL').Value) +
                     zPesquisa1.FieldByName('NOCIN3VLRSUBST').Value ;

            if zPesquisa1.FieldByName('NOCA3CSTIPI').Asstring='' then
              CstIPI := '49'
            else
              CstIPI := Copy(zPesquisa1.FieldByName('NOCA3CSTIPI').Asstring,0,2);

            if zPesquisa1.FieldByName('PRODA3CSTPISENTRADA').Asstring='' then
              CstPisCofins := '49'
            else
              CstPisCofins := Copy(zPesquisa1.FieldByName('PRODA3CSTPISENTRADA').Asstring,0,2);

           {e if CkBarras.Checked then
              begin
                CodProd := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',zPesquisa1.FieldByName('PRODICOD').AsString);
                if CodProd = '' then
                  CodProd := zPesquisa1.FieldByName('PRODICOD').AsString;
              end
            else }
              CodProd := zPesquisa1.FieldByName('PRODICOD').AsString;

            Linha := '|C170|'                                                   +       // 01 REG Texto fixo contendo ''C170'' C 004 - O O
            IntToStr(nOrdem)                                                    + '|' + // NUM_ITEM Número sequencial do item no documento fiscal N 003 - O O
            CodProd                                                             + '|' + // 03 COD_ITEM Código do item (campo 02 do Registro 0200) C 060 - O O
            trimleft(zPesquisa1.FieldByName('PRODA60DESCR').AsString)           + '|' + // 04 DESCR_COMPL Descrição complementar do item como adotado no documento fiscal
            FormatFloat('0.00000',Quantidade)                                   + '|' + // 05 QTD Quantidade do item N - 05 O O
            UnidadeSped                                                         + '|' + // 06 UNID Unidade do item (Campo 02 do registro 0190) C 006 - O O
            FormatFloat('0.00',Base )                                           + '|' + // 07 VL_ITEM Valor total do item (mercadorias ou serviços) N - 02 O O
            FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN3VLRDESC').Value)   + '|' ; // 08 VL_DESC Valor do desconto comercial N - 02 OC OC

            inc(nOrdem);

            // Verifica se a operacao de estoque é de entrada ou saida
            OpEntraSai := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',zPesquisa.FieldByName('OPESICOD').AsString);
            If OpEntraSai = 'N' Then // não movimenta estoque
              Linha := Linha +  '1|'  // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO
            Else  // Saida ou Entrada
              Linha := Linha +  '0|'; // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO

            // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            if length(zPesquisa1.FieldByName('NOCIA3CSTICMS').Value) < 3 then
              Linha := Linha + zPesquisa1.FieldByName('PRODIORIGEM').AsString + FormatFloat('00',zPesquisa1.FieldByName('NOCIA3CSTICMS').Value)          + '|'
            else
              Linha := Linha + FormatFloat('000',zPesquisa1.FieldByName('NOCIA3CSTICMS').Value) + '|' ;

            // Testar se CST=10,60 tem que ser 1403 ou 2403
            if zPesquisa1.FieldByName('CFOPA5CODAUX').AsString <> '' Then
              Linha := Linha + zPesquisa1.FieldByName('CFOPA5CODAUX').AsString      + '|'  // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O
            else
              Linha := Linha + zPesquisa.FieldByName('CFOPA5COD').AsString          + '|' ;  // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O

            Linha := Linha +
            ''                                                                      + '|' ; // 12 COD_NAT Código da natureza da operação (campo 02 do Registro 0400)

            if (zPesquisa1.FieldByName('NOCIA3CSTICMS').AsInteger in ([10, 30, 40, 41, 50, 51, 60, 70, 90]))
            or (zPesquisa1.FieldByName('NOCIA3CSTICMS').AsInteger in ([130, 140, 141, 150, 151, 160]))
            or (zPesquisa1.FieldByName('NOCIA3CSTICMS').AsInteger-200 in ([10, 30, 40, 41, 50, 51, 60, 70, 90])) then
            Begin
              Linha := Linha +
              '0'   + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
              '0'   + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
              '0'   + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
            End Else Begin
              Linha := Linha +
              FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN2VBC').Value)           + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
              FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN3PERCICMS').Value)      + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
              FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN3VLRICMS').Value)       + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
            End;

            if (zPesquisa1.FieldByName('NOCIA3CSTICMS').AsInteger in ([10, 30, 40, 41, 50, 51, 60, 70, 90])) or
               (zPesquisa1.FieldByName('NOCIA3CSTICMS').AsInteger in ([130, 140, 141, 150, 151, 160])) or
               (zPesquisa1.FieldByName('NOCIA3CSTICMS').AsInteger-200 in ([10, 30, 40, 41, 50, 51, 60, 70, 90])) then
            Begin
              Linha := Linha +
              '0'   + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
              '0'   + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
              '0'   + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC
            End Else Begin
              Linha := Linha +
              FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN2VBCST').Value)         + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
              FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN2PERCSUBST').Value)     + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
              FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN3VLRSUBST').Value )     + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC
            End;

            Linha := Linha +
            ''                                                                      + '|' ; // 19 IND_APUR Indicador de período de apuração do IPI: 0 - Mensal; 1 - Decendial

            Linha := Linha + CstIPI                                                 + '|' + // 20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            ''                                                                      + '|' + // 21 NAO PREENCHER - COD_ENQ Código de enquadramento legal do IPI, conforme
            FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN2VBCIPI').Value)        + '|' + // 22 VL_BC_IPI Valor da base de cálculo do IPI N - 02 OC OC
            FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN3PERCIPI').Value)       + '|' + // 23 ALIQ_IPI Alíquota do IPI N 006 02 OC OC
            FormatFloat('0.00',zPesquisa1.FieldByName('NOCIN3VLRIPI').Value)        + '|' ; // 24 VL_IPI Valor do IPI creditado/debitado N - 02 OC OC

            if (zPesquisa1.FieldByName('PRODA2TIPOITEM').AsString = '00') or (zPesquisa1.FieldByName('PRODA2TIPOITEM').AsString = '01') then
            begin
              Linha := Linha +
              CstPisCofins                                                            + '|' + // 25 CST_PIS Código da Situação Tributária referente ao PIS. N 002* - OC OC
              FormatFloat('0.00',Base)                                                + '|' + // 26 VL_BC_PIS Valor da base de cálculo do PIS N 02 OC OC
              FormatFloat('0.00',zPesquisa1.FieldByName('PRODN2ALIQPIS').Value)       + '|' ; // 27 ALIQ_PIS Alíquota do PIS (em percentual) N 008 04 OC OC

              if zPesquisa1.FieldByName('NOCN4PISQTD').Value > 0 then
                Linha := Linha + FormatFloat('0.000',zPesquisa1.FieldByName('NOCN4PISQTD').Value)       + '|'  // 28 QUANT_BC_PIS Quantidade – Base de cálculo PIS N 03 OC OC
              Else
                Linha := Linha + '0|';

              Linha := Linha + FormatFloat('0.0000',zPesquisa1.FieldByName('NOCN4PISREAL').Value)      + '|' + // 29 ALIQ_PIS Alíquota do PIS (em reais) N 04 OC OC
              FormatFloat('0.00',Base * (zPesquisa1.FieldByName('PRODN2ALIQPIS').Value / 100 ) )       + '|' ; // 30 VL_PIS Valor do PIS N - 02 OC OC
            End else
            begin
              Linha := Linha +
              '|'  + // 25 CST_PIS Código da Situação Tributária referente ao PIS. N 002* - OC OC
              '0|' + // 26 VL_BC_PIS Valor da base de cálculo do PIS N 02 OC OC
              '0|' + // 27 ALIQ_PIS Alíquota do PIS (em percentual) N 008 04 OC OC
              '0|' + // 28 QUANT_BC_PIS Quantidade – Base de cálculo PIS N 03 OC OC
              '0|' + // 29 ALIQ_PIS Alíquota do PIS (em reais) N 04 OC OC
              '0|' ; // 30 VL_PIS Valor do PIS N - 02 OC OC
            end; // fim da determinacao do PIS

            // Se o tipo de produto for materia prima (01) ou produto para revenda(00) usa credito caso contrario nao credita
            // Determinaçao do Cofins
            {if (zPesquisa2.FieldByName('PRODA2TIPOITEM').AsString = '00') or (zPesquisa2.FieldByName('PRODA2TIPOITEM').AsString = '01') then
            begin
              Linha := Linha +
              Copy(zPesquisa2.FieldByName('NOCA3CSTCOFINS').AsString,0,2)             + '|' + // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
              FormatFloat('0.00',zPesquisa2.FieldByName('NOCIN2BASECOFINS').Value)    + '|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
              FormatFloat('0.0000',zPesquisa2.FieldByName('NOCIN2PERCCOFINS').Value)  + '|' ; // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
              If zPesquisa2.FieldByName('NOCN4COFINSQTD').Value > 0 then
                Linha := Linha + FormatFloat('0.0000',zPesquisa2.FieldByName('NOCN4COFINSQTD').Value)    + '|'  // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
              Else
                Linha := Linha + '|';
              if zPesquisa2.FieldByName('NOCN4COFINSREAL').Value > 0 Then
                Linha := Linha + FormatFloat('0.0000',zPesquisa2.FieldByName('NOCN4COFINSREAL').Value)   + '|'  // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
              Else
                Linha := Linha + '|';

              Linha := Linha + FormatFloat('0.00',zPesquisa2.FieldByName('NOCIN2VLRCOFINS').Value)     + '|'  // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            End Else }

            if (zPesquisa1.FieldByName('PRODA2TIPOITEM').AsString = '00') or (zPesquisa1.FieldByName('PRODA2TIPOITEM').AsString = '01') then
            begin
              Linha := Linha +
              CstPisCofins                                                            + '|' + // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
              FormatFloat('0.00',Base)                                                + '|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
              FormatFloat('0.00',zPesquisa1.FieldByName('PRODN2ALIQCOFINS').Value)    + '|' ; // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
              If zPesquisa1.FieldByName('NOCN4COFINSQTD').Value > 0 then
                Linha := Linha + FormatFloat('0.000',zPesquisa1.FieldByName('NOCN4COFINSQTD').Value)    + '|'  // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
              Else
                Linha := Linha + '0|';
              if zPesquisa1.FieldByName('NOCN4COFINSREAL').Value > 0 Then
                Linha := Linha + FormatFloat('0.0000',zPesquisa1.FieldByName('NOCN4COFINSREAL').Value)   + '|'  // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
              Else
                Linha := Linha + '0|';

              Linha := Linha + FormatFloat('0.00',Base * (zPesquisa1.FieldByName('PRODN2ALIQCOFINS').Value / 100) )     + '|'  // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            End Else
            Begin
              Linha := Linha +
               '|' + // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
              '0|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
              '0|' + // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
              '0|' + // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
              '0|' + // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
              '0|' ; // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            End;

            Linha := Linha + '|' ;    // 37 COD_CTA Código da conta analítica contábil

            If Not GravaRegistros('C170') Then Begin Result := False; Exit; End;
            Inc(nC170);
            Total_Bloco_C := Total_Bloco_C + 1;
          except on E:Exception do
            begin
              Showmessage('Falha ao gerar Linha para Produto: '+zPesquisa1.FieldByName('Prodicod').AsString +#13+#10+
              'Da Nota Fiscal de Compra Numero: '+zPesquisa.FieldByName('NOCPA30NRO').AsString + #13+#10+
              'Mensagem de Erro: '+e.message);
            end;
          end;
          zPesquisa1.Next;
        end;
    end;

  // Cupom NFCe Itens
  if Pos('CUPOM',zPesquisa.SQL.Text) > 0 Then // Nota de Venda da Tabela Cupom NFCe
    begin
      EditTabela.Text := 'Criando Registro C170 - Abrindo Tabela CUPOMITEM'; EditTabela.Update;
      zPesquisa1.close;
      zPesquisa1.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA3CSTIPIENTRADA, P.PRODA2CSTPIS, P.PRODIORIGEM, P.PRODISITTRIB, '+
      'P.PRODA3CSTPISENTRADA, P.PRODA2CSTCOFINS, P.PRODA3CSTCOFINSENTRADA, P.PRODN2ALIQCOFINS, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS,  '+
      'U.UNIDA5DESCR, I.* From CupomItem I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
      'Where CUPOA13ID='''+zPesquisa.FieldByName('CUPOA13ID').AsString+'''';
      zPesquisa1.Open;

      EditTabela.Text := 'Criando Registro C170 - Itens da tabela CUPOMITEM'; EditTabela.Update;
      While Not zPesquisa1.Eof do
        begin
          try
            CodProd := zPesquisa1.FieldByName('PRODICOD').AsString;

            Base := (zPesquisa1.FieldByName('CPITN3VLRUNIT').Value * zPesquisa1.FieldByName('CPITN3QTD').Value) -
                     zPesquisa1.FieldByName('CPITN2DESC').Value;

            Linha := '|C170|'                                                         + // 01 REG Texto fixo contendo ''C170'' C 004 - O O
            zPesquisa1.FieldByName('CPITIPOS').AsString                         + '|' + // NUM_ITEM Número sequencial do item no documento fiscal N 003 - O O
            CodProd                                                             + '|' + // 03 COD_ITEM Código do item (campo 02 do Registro 0200) C 060 - O O
            TrimLeft(zPesquisa1.FieldByName('PRODA60DESCR').AsString)           + '|' + // 04 DESCR_COMPL Descrição complementar do item como adotado no documento fiscal
            FormatFloat('0.00000',zPesquisa1.FieldByName('CPITN3QTD').Value)    + '|' + // 05 QTD Quantidade do item N - 05 O O
            zPesquisa1.FieldByName('UNIDA5DESCR').AsString                      + '|' + // 06 UNID Unidade do item (Campo 02 do registro 0190) C 006 - O O
            FormatFloat('0.00', Base)                                           + '|' + // 07 VL_ITEM Valor total do item (mercadorias ou serviços) N - 02 O O
            FormatFloat('0.00',zPesquisa1.FieldByName('CPITN2DESC').Value)      + '|' ; // 08 VL_DESC Valor do desconto comercial N - 02 OC OC
            Linha := Linha +  '0|' ;                                                    // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO

            // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            if length(zPesquisa1.FieldByName('PRODISITTRIB').Value) < 3 then
              Linha := Linha + zPesquisa1.FieldByName('PRODIORIGEM').AsString + FormatFloat('00',zPesquisa1.FieldByName('PRODISITTRIB').Value) + '|'
            else
              Linha := Linha + FormatFloat('000',zPesquisa1.FieldByName('PRODISITTRIB').Value) + '|' ;

            if (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=60) or (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=500) then
              Linha := Linha + '5405'  + '|'   // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O
            else
              Linha := Linha + '5102'  + '|' ; // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O

            Linha := Linha + ''        + '|' ; // 12 COD_NAT Código da natureza da operação (campo 02 do Registro 0400)

            if (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=30) or
               (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=40) or
               (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=41) or
               (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=50) or
               (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=60) or
               (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=102) or
               (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=400) or
               (zPesquisa1.FieldByName('PRODISITTRIB').AsInteger=500) then // para origem da mercadoria 0 = nacional = 1 importada e 2 import. adq. mercado interno
              begin
                Linha := Linha +
                '0'   + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
                '0'   + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
                '0'   + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
              end
            else
              begin
                Linha := Linha +
                FormatFloat('0.00',Base)                                            + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
                FormatFloat('0.00',zPesquisa1.FieldByName('COITN2ICMSALIQ').Value)  + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
                FormatFloat('0.00',zPesquisa1.FieldByName('CPITN2VLRICMS').Value)   + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
              end;

            Linha := Linha +
            '0'   + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
            '0'   + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
            '0'   + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC

            Linha := Linha + '0'                                                        + '|' ; // 19 IND_APUR Indicador de período de apuração do IPI: 0 - Mensal; 1 - Decendial

            CstIPI := '99' ;
            Linha := Linha + CstIPI                                                     + '|' + // 20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            ''                                                                          + '|' + // 21 NAO PREENCHER - COD_ENQ Código de enquadramento legal do IPI, conforme
            FormatFloat('0.00',Base)                                                    + '|' + // 22 VL_BC_IPI Valor da base de cálculo do IPI N - 02 OC OC
            FormatFloat('0.00',0)                                                       + '|' + // 23 ALIQ_IPI Alíquota do IPI N 006 02 OC OC
            FormatFloat('0.00',0)                                                       + '|' ; // 24 VL_IPI Valor do IPI creditado/debitado N - 02 OC OC

            CstPisCofins := '99' ;
            Linha := Linha + CstPisCofins                                               + '|' + // 25 CST_PIS Código da Situação Tributária referente ao PIS. N 002* - OC OC
            FormatFloat('0.00',Base)                                                    + '|' + // 26 VL_BC_PIS Valor da base de cálculo do PIS N 02 OC OC
            FormatFloat('0.0000',zPesquisa1.FieldByName('PRODN2ALIQPIS').Value)         + '|' + // 27 ALIQ_PIS Alíquota do PIS (em percentual) N 008 04 OC OC
            ''                                                                          + '|' + // 28 QUANT_BC_PIS Quantidade – Base de cálculo PIS N 03 OC OC
            ''                                                                          + '|' + // 29 ALIQ_PIS Alíquota do PIS (em reais) N 04 OC OC
            FormatFloat('0.00',Base *
            (zPesquisa1.FieldByName('PRODN2ALIQPIS').Value / 100) )                     + '|' ; // 30 VL_PIS Valor do PIS N - 02 OC OC

            Linha := Linha + CstPisCofins                                               + '|' + // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
            FormatFloat('0.00',Base)                                                    + '|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
            FormatFloat('0.0000',zPesquisa1.FieldByName('PRODN2ALIQCOFINS').Value)      + '|' + // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
            ''                                                                          + '|' + // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
            ''                                                                          + '|' + // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
            FormatFloat('0.00',Base *
            (zPesquisa1.FieldByName('PRODN2ALIQCOFINS').Value / 100) )                  + '|' + // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            ''                                                                          + '|' ; // 37 COD_CTA Código da conta analítica contábil

            If Not GravaRegistros('C170') Then Begin Result := False; Exit; End;
            Inc(nC170);
            Total_Bloco_C := Total_Bloco_C + 1;
          except on E:Exception do
            begin
              Showmessage('Falha ao gerar Linha para Produto de codigo: '+zPesquisa1.FieldByName('Prodicod').AsString +#13+#10+
              'Cupom NFCe Número: '+zPesquisa.FieldByName('CUPOINRO').AsString);
            end;
          end;
          zPesquisa1.Next;
        end;
    end;

  Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC172: boolean;
begin
 {REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01)
  Este registro tem por objetivo informar dados da prestação de serviços.}
  if (RetornaModeloNF(zPesquisa.FieldByName('SERIA5COD').AsString) = '01') Then // Nota fiscal Normal
    begin
      zPesquisa3.Close;
      zPesquisa3.SQL.Text := 'Select * from CONFIGVENDA';
      zPesquisa3.Open;
      Linha := '|C172|'                                                               + // 01 REG Texto fixo contendo ''C172'' C 004
      FormatFloat('0.00',zPesquisa.FieldByname('NOFIN2VLRSERVICO').value)       + '|' + // 02 VL_BC_ISSQN Valor da base de cálculo do ISSQN N - 02 O
      FormatFloat('0.00',zPesquisa3.FieldByName('CFVEN3ALIQISSQN').value)       + '|' + // 03 ALIQ_ISSQN Alíquota do ISSQN N 006 02 O
      FormatFloat('0.00',zPesquisa.FieldByname('NOFIN2VLRISSQN').Value)         + '|' ; // 04 VL_ISSQN Valor do ISSQN N - 02 O
      zPesquisa3.Close;

      If Not GravaRegistros('C172') Then Begin Result := False; Exit; End;
      Inc(nC172);
      Total_Bloco_C := Total_Bloco_C + 1;
    end;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC190_MontaTabela: boolean;
Var UfDestino:String;
    VL_OPR ,  VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST , VL_ICMS_ST, VL_RED_BC, VL_IPI : Extended;
    cst_icms, cfop, Aliq_icms_item :String;
begin
 {REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55 e 65).
  Este registro tem por objetivo representar a escrituração dos documentos fiscais totalizados por CST, CFOP e Alíquota de ICMS.}

  if Pos('CUPOM',zPesquisa.SQL.Text) > 0 Then // Nota de Venda da Tabela Notafiscal
    begin
      if zPesquisa.FieldByName('CUPOCSTATUS').Value = 'C' then Exit;

      EditTabela.Text := 'Criando Registro C190 - Abrindo Tabela CUPOMITEM'; EditTabela.Update;
      zPesquisa2.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA3CSTIPIENTRADA, P.PRODA2CSTPIS, P.PRODISITTRIB, '+
      'P.PRODA3CSTPISENTRADA, P.PRODA2CSTCOFINS, P.PRODA3CSTCOFINSENTRADA, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM, '+
      'I.ICMSN2ALIQUOTA, C.* From CupomItem C '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = C.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
      'LEFT JOIN ICMS    I ON I.ICMSICOD = P.ICMSICOD '+
      'Where C.CUPOA13ID = '''+zPesquisa.FieldByName('CUPOA13ID').AsString+'''';
      zPesquisa2.Open;

      EditTabela.Text := 'Criando Registro C190 -  NFCE: ' + zPesquisa.FieldbyName('CUPOINRO').AsString; EditTabela.Update;

      // Descobrir o estado do participante;
      UfDestino := 'RS';

      zPesquisa3.Close;
      zPesquisa3.SQL.text := 'delete from SPED_REGC490';
      zPesquisa3.ExecSQL;

      While Not zPesquisa2.Eof do
        begin
          Try
            if length(zPesquisa2.fieldbyname('PRODISITTRIB').Value) < 3 then
              cst_icms := formatfloat('0',zPesquisa2.fieldbyname('PRODIORIGEM').Value) + formatfloat('00',zPesquisa2.fieldbyname('PRODISITTRIB').Value)
            else
              cst_icms := formatfloat('000',zPesquisa2.fieldbyname('PRODISITTRIB').Value);

            if (Cst_Icms = '060') or (Cst_Icms = '500') then
              Cfop := '5405'
            else
              Cfop := '5102';

            Aliq_icms_item := FormatFloat('0.00',zPesquisa2.FieldByName('ICMSN2ALIQUOTA').Value);

            ZRegC490.Close;
            ZRegC490.SQL.text := 'Select * from SPED_REGC490 where CST_ICMS='''+cst_icms+''' and CFOP='''+Cfop+''' and ALIQ_ICMS='''+Aliq_Icms_Item+'''' ;
            ZRegC490.Open;

            VL_OPR := (zPesquisa2.FieldByName('CPITN3QTD').Value * zPesquisa2.FieldByName('CPITN3VLRUNIT').Value) -
                       zPesquisa2.FieldByName('CPITN2DESC').Value ;

            VL_RED_BC := 0;

            if zRegC490.IsEmpty then
              begin
                zRegC490.Append;
                zRegC490.FieldByName('CST_ICMS').Value         := Cst_Icms;
                zRegC490.FieldByName('CFOP').Value             := Cfop;
                zRegC490.FieldByName('ALIQ_ICMS').Value        := Aliq_Icms_Item;
                zRegC490.FieldByName('VL_OPR').Value           := VL_OPR;
                zRegC490.FieldByName('VL_BC_ICMS').Value       := RetornaValor('CPITN2BASEICMS');
                zRegC490.FieldByName('VL_ICMS').Value          := RetornaValor('CPITN2VLRICMS');
                zRegC490.FieldByName('VL_BC_ICMS_ST').Value    := 0;
                zRegC490.FieldByName('VL_ICMS_ST').Value       := 0;
                zRegC490.FieldByName('VL_RED_BC').Value        := VL_RED_BC;
                zRegC490.FieldByName('VL_IPI').Value           := 0;
                zRegC490.Post;
              end
            else
              begin
                zRegC490.Edit;
                zRegC490.FieldByName('VL_OPR').Value          := zRegC490.FieldByName('VL_OPR').Value        + VL_OPR;
                zRegC490.FieldByName('VL_BC_ICMS').Value      := zRegC490.FieldByName('VL_BC_ICMS').Value    + RetornaValor('CPITN2BASEICMS');
                zRegC490.FieldByName('VL_ICMS').Value         := zRegC490.FieldByName('VL_ICMS').Value       + RetornaValor('CPITN2VLRICMS');
                zRegC490.FieldByName('VL_BC_ICMS_ST').Value   := zRegC490.FieldByName('VL_BC_ICMS_ST').Value + 0;
                zRegC490.FieldByName('VL_ICMS_ST').Value      := zRegC490.FieldByName('VL_ICMS_ST').Value    + 0;
                zRegC490.FieldByName('VL_RED_BC').Value       := zRegC490.FieldByName('VL_RED_BC').Value     + VL_RED_BC;
                zRegC490.FieldByName('VL_IPI').Value          := zRegC490.FieldByName('VL_IPI').Value        + 0;
                zRegC490.Post;
              end;

          Except ON e:Exception do
          begin
            Showmessage('Falha ao Calcular RegistroC190: '+E.Message +#13+#10+'NFCe: ' + zPesquisa.FieldByName('CUPOINRO').AsString+#13+#10+' Produto: ' + zPesquisa2.fieldbyname('PRODICOD').AsString);
            Result := False;
            Exit;
          End; End;
          zPesquisa2.Next;
      End;
    end;

  if Pos('NOTAFISCAL',zPesquisa.SQL.Text) > 0 Then // Nota de Venda da Tabela Notafiscal
    begin
      if zPesquisa.FieldByName('NOFICSTATUS').Value = 'C' then Exit;

      EditTabela.Text := 'Criando Registro C190 - Abrindo Tabela NOTAFISCALITEM'; EditTabela.Update;
      zPesquisa2.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA3CSTIPIENTRADA, P.PRODA2CSTPIS, '+
      'P.PRODA3CSTPISENTRADA, P.PRODA2CSTCOFINS, P.PRODA3CSTCOFINSENTRADA, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM,  '+
      'I.* From NotaFiscalItem I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
      'Where NOFIA13ID = '''+zPesquisa.FieldByName('NOFIA13ID').AsString+'''';
      zPesquisa2.Open;

      EditTabela.Text := 'Criando Registro C190 -  NOTAFISCAL: ' + zPesquisa.FieldbyName('NOFIINUMERO').AsString; EditTabela.Update;

      // Descobrir o estado do participante;
      UfDestino := '';
      if (zPesquisa.FieldByName('CLIEA13ID').IsNull) and (zPesquisa.FieldByName('EMPRICODDEST').IsNull) then                                         // 04 COD_PART Código do participante (campo 02 do Registro 0150):  do emitente do documento ou do remetente das mercadorias, no caso de entradas; - do adquirente, no caso de saídas  C 060 - S
      Begin
        // Pesquisa na tabela fornecedor o cnpj do participante
        UfDestino := DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',zPesquisa.FieldByName('FORNICOD').AsString);
        If UfDestino = '' then
          UfDestino := DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',zPesquisa.FieldByName('FORNICOD').AsString);
      End Else If (not (zPesquisa.FieldByName('CLIEA13ID').IsNull)) and (zPesquisa.FieldByName('EMPRICODDEST').IsNull)  then
      begin
        UfDestino := DM.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES',''''+zPesquisa.FieldByName('CLIEA13ID').AsString+'''') ;
      End else
      Begin
        UfDestino := DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',zPesquisa.FieldByName('EMPRICODDEST').AsString) ;
      End;

      zPesquisa3.Close;
      zPesquisa3.SQL.text := 'delete from SPED_REGC490';
      zPesquisa3.ExecSQL;

      While Not zPesquisa2.Eof do
        begin
          Try
            if length(zPesquisa2.fieldbyname('NFITICST').Value) < 3 then
              cst_icms := formatfloat('0',zPesquisa2.fieldbyname('PRODIORIGEM').Value) +
                          formatfloat('00',zPesquisa2.fieldbyname('NFITICST').Value)
            else
              cst_icms := formatfloat('000',zPesquisa2.fieldbyname('NFITICST').Value);

            If (not zPesquisa2.FieldByName('CFOPA5CODAUX').IsNull) and (zPesquisa2.FieldByName('CFOPA5CODAUX').AsString <> '') then
              Cfop := zPesquisa2.Fieldbyname('CFOPA5CODAUX').AsString
            Else
              if UfDestino <> DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',zPesquisa.FieldByName('EMPRICOD').AsString) Then
                Cfop := Dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',zPesquisa.Fieldbyname('OPESICOD').AsString)
              Else
                Cfop := Dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',zPesquisa.Fieldbyname('OPESICOD').AsString);

            Aliq_icms_item := FormatFloat('0.00',zPesquisa2.FieldByName('NFITN2PERCICMS').Value);

            ZRegC490.Close;
            ZRegC490.SQL.text := 'Select * from SPED_REGC490 where CST_ICMS='''+cst_icms+''' and CFOP='''+Cfop+''' and ALIQ_ICMS='''+Aliq_Icms_Item+'''' ;
            ZRegC490.Open;

            VL_OPR := (zPesquisa2.FieldByName('NFITN3QUANT').Value * zPesquisa2.FieldByName('NFITN2VLRUNIT').Value) -
            RetornaValor('NFITN2VLRFRETE')   +
            RetornaValor('NFITN2SEGURO')     +
            RetornaValor('NFITN2VLRIPI')     +
            RetornaValor('NFITN2VLRSUBS')    +
            RetornaValor('NFITN2OUTRASDESP') -
            RetornaValor('NFITN2VLRDESC')    ;

            VL_RED_BC := VL_OPR - (VL_OPR *  (RetornaValor('NFITN2PERCREDUCAO') / 100));

            if zRegC490.IsEmpty then
              begin
                zRegC490.Append;
                zRegC490.FieldByName('CST_ICMS').Value         := Cst_Icms;
                zRegC490.FieldByName('CFOP').Value             := Cfop;
                zRegC490.FieldByName('ALIQ_ICMS').Value        := Aliq_Icms_Item;
                zRegC490.FieldByName('VL_OPR').Value           := VL_OPR;
                zRegC490.FieldByName('VL_BC_ICMS').Value       := RetornaValor('NFITN2BASEICMS');
                zRegC490.FieldByName('VL_ICMS').Value          := RetornaValor('NFITN2VLRICMS');
                zRegC490.FieldByName('VL_BC_ICMS_ST').Value    := RetornaValor('NFITN2BASESUBS');
                zRegC490.FieldByName('VL_ICMS_ST').Value       := RetornaValor('NFITN2VLRSUBS');
                zRegC490.FieldByName('VL_RED_BC').Value        := VL_RED_BC;
                zRegC490.FieldByName('VL_IPI').Value           := RetornaValor('NFITN2VLRIPI');
                zRegC490.Post;
              end
            else
              begin
                zRegC490.Edit;
                zRegC490.FieldByName('VL_OPR').Value          := zRegC490.FieldByName('VL_OPR').Value        + VL_OPR;
                zRegC490.FieldByName('VL_BC_ICMS').Value      := zRegC490.FieldByName('VL_BC_ICMS').Value    + RetornaValor('NFITN2BASEICMS');
                zRegC490.FieldByName('VL_ICMS').Value         := zRegC490.FieldByName('VL_ICMS').Value       + RetornaValor('NFITN2VLRICMS');
                zRegC490.FieldByName('VL_BC_ICMS_ST').Value   := zRegC490.FieldByName('VL_BC_ICMS_ST').Value + RetornaValor('NFITN2BASESUBS');
                zRegC490.FieldByName('VL_ICMS_ST').Value      := zRegC490.FieldByName('VL_ICMS_ST').Value    + RetornaValor('NFITN2VLRSUBS');
                zRegC490.FieldByName('VL_RED_BC').Value       := zRegC490.FieldByName('VL_RED_BC').Value     + VL_RED_BC;
                zRegC490.FieldByName('VL_IPI').Value          := zRegC490.FieldByName('VL_IPI').Value        + RetornaValor('NFITN2VLRIPI');
                zRegC490.Post;
              end;

          Except ON e:Exception do
          begin
            Showmessage('Falha ao Calcular RegistroC190: '+E.Message +#13+#10+'Nota Fiscal: ' + zPesquisa.FieldByName('nofiinumero').AsString+#13+#10+' Produto: ' + zPesquisa2.fieldbyname('PRODICOD').AsString);
            Result := False;
            Exit;
          End; End;
          zPesquisa2.Next;
      End;
    End else
    If Pos('NOTACOMPRA',zPesquisa.SQL.Text) > 0 Then // Notas de Compra
    Begin
      if zPesquisa.FieldByName('NOCPCSTATUS').Value = 'C' then Exit;

      zPesquisa2.close;
      zPesquisa2.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA2CSTPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM, '+
      'P.PRODISITTRIB, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODA2CSTCOFINS, P.PRODA2TIPOITEM , U.UNIDA5DESCR, I.* From NOTACOMPRAITEM I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
      'Where NOCPA13ID = '''+zPesquisa.FieldByName('NOCPA13ID').AsString+'''';
      zPesquisa2.Open;

      EditTabela.Text := 'Criando Registro C190 -  NOTA COMPRA: ' + zPesquisa.FieldbyName('NOCPA30NRO').AsString; EditTabela.Update;

      // Descobrir o estado do participante;
      UfDestino := DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',zPesquisa.FieldByName('FORNICOD').AsString);
      If UfDestino = '' then
        UfDestino := DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',zPesquisa.FieldByName('FORNICOD').AsString);

      zPesquisa3.Close;
      zPesquisa3.SQL.text := 'delete from SPED_REGC490';
      zPesquisa3.ExecSQL;

      While Not zPesquisa2.Eof do
        begin
          Try
            if length(zPesquisa2.fieldbyname('NOCIA3CSTICMS').Value) < 3 then
              cst_icms := formatfloat('0',zPesquisa2.fieldbyname('PRODIORIGEM').Value)+
                          formatfloat('00',zPesquisa2.fieldbyname('NOCIA3CSTICMS').Value)
            else
              cst_icms := formatfloat('00',zPesquisa2.fieldbyname('NOCIA3CSTICMS').Value);

            If not zPesquisa2.FieldByName('CFOPA5CODAUX').IsNull then
              Cfop := zPesquisa2.Fieldbyname('CFOPA5CODAUX').AsString
            Else
              if UfDestino <> DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',zPesquisa.FieldByName('EMPRICOD').AsString) Then
                Cfop := Dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',zPesquisa.Fieldbyname('OPESICOD').AsString)
              Else
                Cfop := Dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',zPesquisa.Fieldbyname('OPESICOD').AsString);

            if (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger in ([10, 30, 40, 41, 50, 51, 60, 70, 90]))
            or (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger in ([130, 140, 141, 150, 151, 160])) then
              Aliq_icms_item := '0'
            else
              Aliq_icms_item := FormatFloat('0.00',zPesquisa2.FieldByName('NOCIN3PERCICMS').Value);

            ZRegC490.Close;
            ZRegC490.SQL.text := 'Select * from SPED_REGC490 where CST_ICMS='''+cst_icms+''' and CFOP='''+Cfop+''' and ALIQ_ICMS='''+Aliq_Icms_Item+'''' ;
            ZRegC490.Open;

            VL_OPR := (zPesquisa2.FieldByName('NOCIN3QTDEMBAL').Value * zPesquisa2.FieldByName('NOCIN3VLREMBAL').Value) -
                       RetornaValor('NOCIN3VLRDESC') +
                       RetornaValor('NOCIN3VLRFRETE') +
                       RetornaValor('NOCIN2VLRSEGURO')  +
                       RetornaValor('NOCIN3VLRIPI') +
                       RetornaValor('NOCIN3VLRSUBST') +
                       RetornaValor('NOCIN2VLRDESPESAS');

            VL_RED_BC := (VL_OPR - RetornaValor('NOCIN3VLRSUBST')) - ((VL_OPR - RetornaValor('NOCIN3VLRSUBST') ) *  (RetornaValor('NOCIN2PREDBC') / 100));

            if zRegC490.IsEmpty then
              begin
                zRegC490.Append;
                zRegC490.FieldByName('CST_ICMS').Value  := Cst_Icms;
                zRegC490.FieldByName('CFOP').Value      := Cfop;
                zRegC490.FieldByName('ALIQ_ICMS').Value := Aliq_Icms_Item;
                zRegC490.FieldByName('VL_OPR').Value    := VL_OPR;
                if (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger in ([10, 30, 40, 41, 50, 51, 60, 70, 90]))
                or (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger in ([130, 140, 141, 150, 151, 160])) then
                  begin
                    zRegC490.FieldByName('VL_BC_ICMS').Value      := 0;
                    zRegC490.FieldByName('VL_ICMS').Value         := 0;
                    zRegC490.FieldByName('VL_BC_ICMS_ST').Value   := 0;
                    zRegC490.FieldByName('VL_ICMS_ST').Value      := 0;
                  end
                else
                  begin
                    zRegC490.FieldByName('VL_BC_ICMS').Value      := RetornaValor('NOCIN2VBC');
                    zRegC490.FieldByName('VL_ICMS').Value         := RetornaValor('NOCIN3VLRICMS');
                    zRegC490.FieldByName('VL_BC_ICMS_ST').Value   := RetornaValor('NOCIN2VBCST');
                    zRegC490.FieldByName('VL_ICMS_ST').Value      := RetornaValor('NOCIN3VLRSUBST');
                  end;

                if (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger in ([20, 70])) then
                  zRegC490.FieldByName('VL_RED_BC').Value       := VL_RED_BC
                else
                  zRegC490.FieldByName('VL_RED_BC').Value       := 0;

                zRegC490.FieldByName('VL_IPI').Value          := RetornaValor('NOCIN3VLRIPI');
                zRegC490.Post;
              end
            else
              begin
                zRegC490.Edit;
                zRegC490.FieldByName('VL_OPR').Value := zRegC490.FieldByName('VL_OPR').Value + VL_OPR;
                if (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger in ([10, 30, 40, 41, 50, 51, 60, 70,90]))
                or (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger in ([130, 140, 141, 150, 151, 160]))
                or (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger-200 in ([10, 30, 40, 41, 50, 51, 60, 70, 90])) then
                  begin
                    zRegC490.FieldByName('VL_BC_ICMS').Value      := 0;
                    zRegC490.FieldByName('VL_ICMS').Value         := 0;
                    zRegC490.FieldByName('VL_BC_ICMS_ST').Value   := 0;
                    zRegC490.FieldByName('VL_ICMS_ST').Value      := 0;
                  end
                else
                  begin
                    zRegC490.FieldByName('VL_BC_ICMS').Value      := zRegC490.FieldByName('VL_BC_ICMS').Value     + RetornaValor('NOCIN2VBC');
                    zRegC490.FieldByName('VL_ICMS').Value         := zRegC490.FieldByName('VL_ICMS').Value        + RetornaValor('NOCIN3VLRICMS');
                    zRegC490.FieldByName('VL_BC_ICMS_ST').Value   := zRegC490.FieldByName('VL_BC_ICMS_ST').Value  + RetornaValor('NOCIN2VBCST');
                    zRegC490.FieldByName('VL_ICMS_ST').Value      := zRegC490.FieldByName('VL_ICMS_ST').Value     + RetornaValor('NOCIN3VLRSUBST');
                  end;

                if (zPesquisa2.FieldByName('NOCIA3CSTICMS').AsInteger in ([20, 70])) then
                  zRegC490.FieldByName('VL_RED_BC').Value       := zRegC490.FieldByName('VL_RED_BC').Value  + VL_RED_BC
                else
                  zRegC490.FieldByName('VL_RED_BC').Value       := 0;

                zRegC490.FieldByName('VL_IPI').Value          := zRegC490.FieldByName('VL_IPI').Value + RetornaValor('NOCIN3VLRIPI');
                zRegC490.Post;
              end;

          Except on e:Exception do
          begin
            Showmessage('Falha ao Calcular RegistroC190: '+E.Message +#13+#10+'Nota Compra: ' + zPesquisa.FieldByName('NOCPA30NRO').AsString);
            Result := False;
            Exit;
          End; End;
          zPesquisa2.Next;
      End;
    End;

    Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC190: boolean;
Var UfDestino:String;
    VL_OPR ,  VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST , VL_ICMS_ST, VL_RED_BC, VL_IPI : Extended;
    cst_icms, cfop, Aliq_icms_item :String;
begin
 {REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
  Este registro tem por objetivo representar a escrituração dos documentos fiscais totalizados por CST, CFOP e Alíquota de ICMS.}
  if Pos('CUPOM',zPesquisa.SQL.Text) > 0 Then // NFCe
    begin
      if zPesquisa.FieldByName('CUPOCSTATUS').Value = 'C' then Exit;

      EditTabela.Text := 'Criando Registro C190 -  Totalizando NFCe: ' + zPesquisa.FieldbyName('CUPOINRO').AsString; EditTabela.Update;

      ZRegC490.Close;
      ZRegC490.SQL.Clear;
      ZRegC490.SQL.Add('Select * from SPED_REGC490');
      ZRegC490.Open;
      if not zRegC490.IsEmpty then
      begin
        while not zRegC490.Eof do
          begin
            Linha := '|C190|'                                                               + // 01-Registro C190
                     zRegC490.fieldbyname('CST_ICMS').AsString                        + '|' + // 02-CST_ICMS
                     zRegC490.fieldbyname('CFOP').AsString                            + '|' ; // 03-CFOP
                     if zRegC490.fieldbyname('ALIQ_ICMS').AsString = '0,00' then
                        Linha := Linha +                            '0,00|'
                     Else
                        Linha := Linha + zRegC490.fieldbyname('ALIQ_ICMS').AsString + '|' ; // 04-ALIQ_ICMS
                     Linha := Linha +
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_OPR').Value)         + '|' + // 05-VL_OPR
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_BC_ICMS').Value)     + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_ICMS').Value)        + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_BC_ICMS_ST').Value)   + '|' + // 05-VL_OPR
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_ICMS_ST').Value)     + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_RED_BC').Value)      + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_IPI').Value)         + '|' + // 07-VL_ICMS
                                                                                        '|' ; // 08-COD_OBS

            if Not GravaRegistros('C190') Then Begin Result := False; Exit; End;
            Inc(nC190);
            Inc(Total_Bloco_C);

            zRegC490.Next;
          end;
        // limpa dados para novo calculo
        zRegC490.First;
        while not zRegC490.Eof do
          zRegC490.Delete;
      end;
    end;

  if Pos('NOTAFISCAL',zPesquisa.SQL.Text) > 0 Then // Nota de Venda da Tabela Notafiscal
    begin
      if zPesquisa.FieldByName('NOFICSTATUS').Value = 'C' then Exit;

      EditTabela.Text := 'Criando Registro C190 -  Totalizando NOTAFISCAL: ' + zPesquisa.FieldbyName('NOFIINUMERO').AsString; EditTabela.Update;

      ZRegC490.Close;
      ZRegC490.SQL.Clear;
      ZRegC490.SQL.Add('Select * from SPED_REGC490');
      ZRegC490.Open;
      if not zRegC490.IsEmpty then
      begin
        while not zRegC490.Eof do
          begin
            Linha := '|C190|'                                                               + // 01-Registro C190
                     zRegC490.fieldbyname('CST_ICMS').AsString                        + '|' + // 02-CST_ICMS
                     zRegC490.fieldbyname('CFOP').AsString                            + '|' ; // 03-CFOP
                     if zRegC490.fieldbyname('ALIQ_ICMS').AsString = '0,00' then
                        Linha := Linha +                            '0,00|'
                     Else
                        Linha := Linha + zRegC490.fieldbyname('ALIQ_ICMS').AsString + '|' ; // 04-ALIQ_ICMS
                     Linha := Linha +
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_OPR').Value)         + '|' + // 05-VL_OPR
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_BC_ICMS').Value)     + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_ICMS').Value)        + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_BC_ICMS_ST').Value)   + '|' + // 05-VL_OPR
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_ICMS_ST').Value)     + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_RED_BC').Value)      + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',zRegC490.fieldbyname('VL_IPI').Value)         + '|' + // 07-VL_ICMS
                                                                                        '|' ; // 08-COD_OBS

            if Not GravaRegistros('C190') Then Begin Result := False; Exit; End;
            Inc(nC190);
            Inc(Total_Bloco_C);

            zRegC490.Next;
          end;
        // limpa dados para novo calculo
        zRegC490.First;
        while not zRegC490.Eof do
          zRegC490.Delete;
      end;
    End else
    If Pos('NOTACOMPRA',zPesquisa.SQL.Text) > 0 Then // Notas de Compra
    Begin
      if zPesquisa.FieldByName('NOCPCSTATUS').Value = 'C' then Exit;

      EditTabela.Text := 'Criando Registro C190 -  Totalizando Nota Comra: ' + zPesquisa.FieldbyName('NOCPA30NRO').AsString; EditTabela.Update;

      ZRegC490.Close;
      ZRegC490.SQL.Text := 'Select * from SPED_REGC490';
      ZRegC490.Open;
      if not zRegC490.IsEmpty then
      begin
        while not zRegC490.Eof do
          begin
            Linha := '|C190|'                                                             + // 01-Registro C190
                     zRegC490.FieldByName('CST_ICMS').AsString                      + '|' + // 02-CST_ICMS
                     zRegC490.FieldByName('CFOP').AsString                          + '|' ; // 03-CFOP
                     if zRegC490.FieldByName('ALIQ_ICMS').AsString = '0,00' then
                        Linha := Linha +                            '0,00|'
                     Else
                        Linha := Linha + zRegC490.FieldByName('ALIQ_ICMS').AsString + '|' ; // 04-ALIQ_ICMS
                     Linha := Linha +
                     FormatFloat('0.00',zRegC490.FieldByName('VL_OPR').Value)       + '|' + // 05-VL_OPR
                     FormatFloat('0.00',zRegC490.FieldByName('VL_BC_ICMS').Value)   + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',zRegC490.FieldByName('VL_ICMS').Value)      + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',zRegC490.FieldByName('VL_BC_ICMS_ST').Value)+ '|' + // 05-VL_OPR
                     FormatFloat('0.00',zRegC490.FieldByName('VL_ICMS_ST').Value)   + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',zRegC490.FieldByName('VL_RED_BC').Value)    + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',zRegC490.FieldByName('VL_IPI').Value)       + '|' + // 07-VL_ICMS
                                                                                      '|' ; // 08-COD_OBS

            if Not GravaRegistros('C190') Then Begin Result := False; Exit; End;
            Inc(nC190);
            Inc(Total_Bloco_C);

            zRegC490.Next;
          end;
        // limpa dados para novo calculo
        zPesquisa3.Close;
        zPesquisa3.sql.Text := 'Delete from SPED_REGC490';
        zPesquisa3.ExecSQL;
      end;
    End;

    Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC410(SerieECF:String; DataRDZ:String): boolean;
begin
 {REGISTRO C410: PIS E COFINS TOTALIZADOS NO DIA (CÓDIGO 02 e 2D).
  Este registro deve ser apresentado sempre que houver produtos totalizados na Redução Z que acarretem valores de PIS e COFINS a serem informados.}

  EditTabela.Text := 'Criando Registro C410 - TOTAIS DE PIS E COFINS DO DIA '+DataRDZ; EditTabela.Update;
  EditTabela.Update;
  SQLCupomC410.Close;

  if not ChkImporta.Checked Then // Se não estiver marcada a opção de gerar a partir dos dados importados....
    begin
      SQLCupomC410.MacroByName('MEmpresa').Value   := 'CUPOM.EMPRICOD  = ' + ComboEmpresa.KeyValue ;
      if chkterminal.Checked then
        SQLCupom.MacroByName('MTerminal').Value  := '0 = 0 '
      else
        SQLCupomC410.MacroByName('MTerminal').Value  := 'CUPOM.TERMICOD  = ' + SQLReducaoZTERMICOD.AsString ;
      SQLCupomC410.MacroByName('MData').Value      := 'CUPOM.CUPODEMIS = ''' + FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.Value)  + '''';
      EditTabela.Text := 'Criando Registro C410 - TOTAIS DE PIS E COFINS DO DIA '+FormatDateTime('dd/mm/yyyy',SQLReducaoZREDUDEMIS.Value); EditTabela.Update;
      SQLCupomC410.Open;
      SQLCupomC410.Last;
      //Progress.Max := SQLCupomC410.RecordCount;
      Progress.position := 0;
      SQLCupomC410.First;
      while not SQLCupomC410.Eof do
        begin
          if (SQLCupomC410.FieldByName('VALORTOTALPIS').Value > 0) or (SQLCupomC410.FieldByName('VALORTOTALCOFINS').Value > 0) then
            begin
              Linha :=   '|C410|';                                                           // 01-Registro C410
              if SQLCupomC410.FieldByName('VALORTOTALPIS').IsNull then
                Linha := Linha + '0,00|'
              Else
                Linha := Linha + FormatFloat('0.00',SQLCupomC410.FieldByName('VALORTOTALPIS').Value)         + '|' ; // 02-VL_PIS

              if SQLCupomC410.FieldByName('VALORTOTALCOFINS').isnull then
                Linha := Linha + '0,00|'
              Else
                Linha := Linha + FormatFloat('0.00',SQLCupomC410.FieldByName('VALORTOTALCOFINS').Value)      + '|' ; // 03-VL_COFINS

              if Not GravaRegistros('C410') Then Begin Result := False; Exit; End;
              Inc(nC410);
              Inc(Total_Bloco_C);
            end;
          SQLCupomC410.Next;
          Progress.Position := Progress.Position +1;
        end;
      Progress.Position := 0;
      Progress.update;
      SQLCupomC410.Close;
    end
  else
    begin
      SQLC410.SQL.Text := 'Select '+
           'sum (C.valorCofins) as ValorTotalCOFINS,   '+
           'sum (C.ValorPis) as ValorTotalPIS          '+
           'from SPED_C470 C                           '+
           'where C.NUMEROSERIEECF = :xNumECF and      '+
           'C.DATAREDUCAO = :xDataRDZ and              '+
           'C.QTD_CANCEL = :xCancel                    ';

      SQLC410.ParamByName('xNumECF').AsString  := SerieECF;
      SQLC410.ParamByName('xDataRDZ').AsDate   := StrToDate(DataRDZ);
      SQLC410.ParamByName('xCancel').Value     := 0;
      SQLC410.Open;
      SQLC410.First;
      if (SQLC410.FieldByName('VALORTOTALPIS').Value > 0) or (SQLC410.FieldByName('VALORTOTALCOFINS').Value > 0) then
        begin
          Linha :=   '|C410|'                                                                + // 01-Registro C410
                     FormatFloat('0.00',SQLC410.FieldByName('VALORTOTALPIS').Value)    + '|' + // 02-VL_PIS
                     FormatFloat('0.00',SQLC410.FieldByName('VALORTOTALCOFINS').Value) + '|' ; // 03-VL_COFINS

          if Not GravaRegistros('C410') Then
            begin
              Result := False;
              Exit;
            end;
          Inc(nC410);
          Inc(Total_Bloco_C);
        end;
      SQLC410.Close;
    end;
  Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC420: boolean;
var AliquotaSTR : String;
begin
  // Registro C420 => REGISTRO DOS TOTALIZADORES PARCIAIS DA REDUÇÃO Z(COD 02 e 2D).
  {Alimenta junto o C490, quando nao importado das ECFs}
  ZRegC490.Close;
  ZRegC490.SQL.Clear;
  ZRegC490.SQL.Add('Delete from SPED_REGC490');
  ZRegC490.ExecSQL;

  ZRegC490.Close;
  ZRegC490.SQL.Clear;
  ZRegC490.SQL.Add('Select * from SPED_REGC490');
  ZRegC490.Open;

  EditTabela.Text := 'Criando Registro C420 - TOTAIS PARCIAIS DA REDUÇÃO Z(COD 02 e 2D)'; EditTabela.Update;
  EditTabela.Update;
  if (SQLReducaoZREDUN3ALIQ1.value>0) and (SQLReducaoZREDUN3BASE1.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ1.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                     + // 01-Registro C420
       '01T'+AliquotaSTR                                               + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE1.value)                + '|' + // 03-VLR_ACUM_TOT
       '01'                                                            + '|' + // 04-NR_TOT
                                                                         '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);


       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '000';
       zRegC490.fieldbyname('CFOP').Value       := '5102';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASE1.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := SQLReducaoZREDUN3BASE1.value;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := SQLReducaoZREDUN3ALIQ1.Value;
       zRegC490.fieldbyname('VL_ICMS').Value    := SQLReducaoZREDUN3IMPO1.value;
       zRegC490.Post;
     end;
  if (SQLReducaoZREDUN3ALIQ2.value>0) and (SQLReducaoZREDUN3BASE2.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ2.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '02T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE2.value)              + '|' + // 03-VLR_ACUM_TOT
       '02'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '000';
       zRegC490.fieldbyname('CFOP').Value       := '5102';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASE2.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := SQLReducaoZREDUN3BASE2.value;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := SQLReducaoZREDUN3ALIQ2.Value;
       zRegC490.fieldbyname('VL_ICMS').Value    := SQLReducaoZREDUN3IMPO2.value;
       zRegC490.Post;
     end;
  if (SQLReducaoZREDUN3ALIQ3.value>0) and (SQLReducaoZREDUN3BASE3.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ3.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '03T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE3.value)              + '|' + // 03-VLR_ACUM_TOT
       '03'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '000';
       zRegC490.fieldbyname('CFOP').Value       := '5102';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASE3.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := SQLReducaoZREDUN3BASE3.value;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := SQLReducaoZREDUN3ALIQ3.Value;
       zRegC490.fieldbyname('VL_ICMS').Value    := SQLReducaoZREDUN3IMPO3.value;
       zRegC490.Post;
     end;
  if (SQLReducaoZREDUN3ALIQ4.value>0) and (SQLReducaoZREDUN3BASE4.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ4.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '04T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE4.value)              + '|' + // 03-VLR_ACUM_TOT
       '04'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '000';
       zRegC490.fieldbyname('CFOP').Value       := '5102';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASE4.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := SQLReducaoZREDUN3BASE4.value;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := SQLReducaoZREDUN3ALIQ4.Value;
       zRegC490.fieldbyname('VL_ICMS').Value    := SQLReducaoZREDUN3IMPO4.value;
       zRegC490.Post;
     end;
  if (SQLReducaoZREDUN3ALIQ5.value>0) and (SQLReducaoZREDUN3BASE5.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ5.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '05T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE5.value)              + '|' + // 03-VLR_ACUM_TOT
       '05'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '000';
       zRegC490.fieldbyname('CFOP').Value       := '5102';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASE5.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := SQLReducaoZREDUN3BASE5.value;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := SQLReducaoZREDUN3ALIQ5.Value;
       zRegC490.fieldbyname('VL_ICMS').Value    := SQLReducaoZREDUN3IMPO5.value;
       zRegC490.Post;
     end;
  if (SQLReducaoZREDUN3ALIQ6.value>0) and (SQLReducaoZREDUN3BASE6.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ6.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '06T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE6.value)              + '|' + // 03-VLR_ACUM_TOT
       '06'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '000';
       zRegC490.fieldbyname('CFOP').Value       := '5102';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASE6.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := SQLReducaoZREDUN3BASE6.value;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := SQLReducaoZREDUN3ALIQ6.Value;
       zRegC490.fieldbyname('VL_ICMS').Value    := SQLReducaoZREDUN3IMPO6.value;
       zRegC490.Post;
     end;
  if (SQLReducaoZREDUN3ALIQ7.value>0) and (SQLReducaoZREDUN3BASE7.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ7.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '07T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE7.value)              + '|' + // 03-VLR_ACUM_TOT
       '07'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '000';
       zRegC490.fieldbyname('CFOP').Value       := '5102';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASE7.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := SQLReducaoZREDUN3BASE7.value;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := SQLReducaoZREDUN3ALIQ7.Value;
       zRegC490.fieldbyname('VL_ICMS').Value    := SQLReducaoZREDUN3IMPO7.value;
       zRegC490.Post;
     end;
  if (SQLReducaoZREDUN3ALIQ8.value>0) and (SQLReducaoZREDUN3BASE8.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ8.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '08T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE8.value)              + '|' + // 03-VLR_ACUM_TOT
       '08'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '000';
       zRegC490.fieldbyname('CFOP').Value       := '5102';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASE8.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := SQLReducaoZREDUN3BASE8.value;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := SQLReducaoZREDUN3ALIQ8.Value;
       zRegC490.fieldbyname('VL_ICMS').Value    := SQLReducaoZREDUN3IMPO8.value;
       zRegC490.Post;
     end;
  if SQLReducaoZREDUN3BASEF.value > 0 then
     begin
       Linha := '|C420|'                                                   + // 01-Registro C420
       'F1'                                                          + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASEF.value)              + '|' + // 03-VLR_ACUM_TOT
                                                                       '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '060';
       zRegC490.fieldbyname('CFOP').Value       := '5405';
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASEF.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := 0;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := 0;
       zRegC490.fieldbyname('VL_ICMS').Value    := 0;
       zRegC490.Post;
     end;
  if SQLReducaoZREDUN3BASEI.value > 0 then
     begin
       Linha := '|C420|'                                                   + // 01-Registro C420
       'I1'                                                          + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASEI.value)              + '|' + // 03-VLR_ACUM_TOT
                                                                       '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);

       ZRegC490.Append;
       zRegC490.fieldbyname('CST_ICMS').Value   := '040' ;
       zRegC490.fieldbyname('CFOP').Value       := '5102' ;
       zRegC490.fieldbyname('VL_OPR').Value     := SQLReducaoZREDUN3BASEI.value;
       zRegC490.fieldbyname('VL_BC_ICMS').Value := 0;
       zRegC490.fieldbyname('ALIQ_ICMS').Value  := 0;
       zRegC490.fieldbyname('VL_ICMS').Value    := 0;
       zRegC490.Post;
     end;
  if SQLReducaoZREDUN3BASEN.value > 0 then
     begin
       Linha := '|C420|'                                                   + // 01-Registro C420
       'N1'                                                          + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASEN.value)              + '|' + // 03-VLR_ACUM_TOT
                                                                       '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if SQLReducaoZREDUN3BASES.value > 0 then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQS.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);

       Linha := '|C420|'                                                   + // 01-Registro C420
       '01S'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASES.value)              + '|' + // 03-VLR_ACUM_TOT
       '01'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if SQLReducaoZREDUN3VLRCANC.value > 0 then
     begin
       Linha := '|C420|'                                                   + // 01-Registro C420
       'Can-T'                                                       + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3VLRCANC.value)            + '|' + // 03-VLR_ACUM_TOT
       ''                                                            + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;

  Progress.Position := 0;
  Progress.update;
end;

Function TFormTelaExportacaoSped.RegistroC420Importado(SerieECF:String; DataRDZ:String): boolean;
var AliquotaSTR : String;

begin
  //Registro C420 => REGISTRO DOS TOTALIZADORES PARCIAIS DA REDUÇÃO Z(COD 02 e 2D). Importados dos arquivos de leitura das ECFs
  EditTabela.Text := 'Criando Registro C420 - TOTAIS PARCIAIS DA REDUÇÃO Z(COD 02 e 2D)'; EditTabela.Update;
  EditTabela.Update;

  SQLC420.Close;
  SQLC420.ParamByName('xSerieECF').AsString := SerieECF;
  SQLC420.ParamByName('xDataRDZ').AsDate    := StrToDate(DataRDZ);
  SQLC420.Open;
  if not SQLC420.IsEmpty then
  begin
    While Not SQLC420.Eof  do
    Begin
       Linha := '|C420|'                                                     + // 01-Registro C420
       SQLC420.FieldByName('TOTALIZADOR').AsString                     + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLC420.FieldByName('VALORACUMULADO').Value) + '|' ; // 03-VLR_ACUM_TOT
       if (SQLC420.FieldByName('NUMEROTOTALIZADOR').Value = 0) or (SQLC420.FieldByName('NUMEROTOTALIZADOR').IsNull) Then
          Linha := Linha + '|'
       Else
          Linha := Linha + Copy('00'+Trim(SQLC420.FieldByName('NUMEROTOTALIZADOR').AsString),
          Length('00'+Trim(SQLC420.FieldByName('NUMEROTOTALIZADOR').AsString))-1,2) + '|' ;
       Linha := Linha +                                                     '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then
       Begin
          Result := False;
          Exit;
       End;
       Inc(nC420);
       Inc(Total_Bloco_C);
       SQLC420.Next;
    End;
  End;
  SQLC420.Close;
  Progress.Position := 0;
  Progress.update;
  Result := True;
End;


Function TFormTelaExportacaoSped.Registro_Bloco_D: boolean;
Var TemDados:String;
Begin
  zPesquisa.SQL.Text := 'Select * from CONHECIMENTOS Where DT_AQUIS >= '''+formatdatetime('mm/dd/yyyy',De.Date)+''' and DT_AQUIS <= '''+formatdatetime('mm/dd/yyyy',ate.Date)+'''';
  zPesquisa.Open;

  TemDados := '0'; // Tem movimento
  If zPesquisa.IsEmpty then
    TemDados := '1'; // Não Tem Movimentos

  Linha :=  '|D001|'    + // Incio do registro |D001| e Indicador de Nota de Entrada |0|
            TemDados + '|';         // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento

  If Not GravaRegistros('D001') Then Begin Result := False; Exit; End;
  nD001 := 1;
  Total_Bloco_D := 1;

  if TemDados = '0' then
  Begin

    EditTabela.Text := 'Criando - BLOCO D100 - Notas Fiscais de TRANSPORTE'; EditTabela.Update;
    if Not RegistroD100 Then Begin Result := False; Exit; End;

  End;

  Linha := '|D990|'     + // Encerramento do registro |D990|
            IntToStr(Total_Bloco_D+1)  +'|'    ; // Numer de linha do bloco D
  If Not GravaRegistros('D990') Then Begin Result := False; Exit; End;
  nD990 := 1;
  Inc(Total_Bloco_D);
End;

Function TFormTelaExportacaoSped.RegistroD100: boolean;
var vCodTransp:String;
Begin
  EditTabela.Text := 'Gravando Registro D100 - Conhecimento Transportes';
  zPesquisa.Last;
  //Progress.Max := zPesquisa.RecordCount;
  Progress.Position := 0;
  Progress.Update;
  zPesquisa.First;
  nD100 := 0;
  nD190 := 0;

  While not zPesquisa.eof do
  begin
    Try
      // NO registro 0150 as transportadoras recebem '99999' antes do seu codigo
      //vCodTransp := '99999'+ zPesquisa.FieldbyName('COD_PART').AsString;

      vCodTransp := DM.SQLLocate('SPED_0150','COD_TRANSP','COD_PART', zPesquisa.FieldByName('COD_PART').AsString);

      if vCodTransp = '' then
      Begin
        if z0150.Locate('CNPJ', DM.SQLLocate('TRANSPORTADORA','TRANICOD','TRANA14CGC',zPesquisa.FieldByName('COD_PART').AsString),[]) then
           vCodTransp := z0150.Fieldbyname('Cod_part').AsString;
        if z0150.Locate('CNPJ', DM.SQLLocate('TRANSPORTADORA','TRANICOD','TRANA14CGC',zPesquisa.FieldByName('COD_PART').AsString),[]) then
           vCodTransp := z0150.Fieldbyname('Cod_part').AsString;
      End;

      Linha := '|D100|'                                                   + // 01-Registro D100
      zPesquisa.FieldByName('IND_OPER').asstring                   + '|'+ // 02 IND_OPER Indicador do tipo de operação:
      zPesquisa.FieldByName('IND_EMIT').asstring                   + '|'+ // 03 IND_EMIT Indicador do emitente do documento fiscal:
      vCodTransp                                                     + '|'+ // 04 COD_PART Código do participante (campo 02 do Registro 0150):
      zPesquisa.FieldByName('COD_MOD').asstring                    + '|'+ // 05 COD_MOD Código do modelo do documento fiscal, conforme a
      zPesquisa.FieldByName('COD_SIT').asstring                    + '|'+ // 06 COD_SIT Código da situação do documento fiscal, conforme a
      zPesquisa.FieldByName('SERIE_DOC').asstring                  + '|'+ // 07 SER Série do documento fiscal C 004 - OC OC
      zPesquisa.FieldByName('SUBSERIE').asstring                   + '|'+ // 08 SUB Subsérie do documento fiscal C 003 - OC OC
      zPesquisa.FieldByName('NUM_DOC').asstring                    + '|'+ // 09 NUM_DOC Número do documento fiscal N 009 - O O
      zPesquisa.FieldByName('CHV_CTE').asstring                    + '|'+ // 10 CHV_CTE Chave do Conhecimento de Transporte Eletrônico N 044* - OC OC
      FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('DT_DOC').AsDateTime) + '|'+ // 11 DT_DOC Data da emissão do documento fiscal N 008* - O O
      FormatDateTime('ddmmyyyy',zPesquisa.FieldByName('DT_AQUIS').AsDateTime) + '|'+ // 12 DT_A_P Data da aquisição ou da prestação do serviço N 008* - O OC
      zPesquisa.FieldByName('TP_CT_E').asstring                    + '|'+ // 13 TP_CT-e Tipo de Conhecimento de Transporte Eletrônico conforme
      zPesquisa.FieldByName('CHV_CTE_REF').asstring                + '|'+ // 14 CHV_CTE_REF Chave do CT-e de referência cujos valores foram
      FormatFloat('0.00',zPesquisa.FieldByName('VL_DOC').Value)    + '|'+ // 15 VL_DOC Valor total do documento fiscal N - 02 O O
      FormatFloat('0.00',zPesquisa.FieldByName('VL_DESC').Value)   + '|'+ // 16 VL_DESC Valor total do desconto N - 02 OC OC
      zPesquisa.FieldByName('IND_FRT').asstring                    + '|'+ // 17 IND_FRT Indicador do tipo do frete:
      FormatFloat('0.00',zPesquisa.FieldByName('VL_SERV').Value)   + '|'+ // 18 VL_SERV Valor total da prestação de serviço N - 02 O O
      FormatFloat('0.00',zPesquisa.FieldByName('VL_BC_ICMS').Value)   + '|'+ // 19 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
      FormatFloat('0.00',zPesquisa.FieldByName('VL_ICMS').Value)   + '|'+ // 20 VL_ICMS Valor do ICMS N - 02 OC OC
      FormatFloat('0.00',zPesquisa.FieldByName('VL_NAOTRIBUT').Value)   + '|'+ // 21 VL_NT Valor não-tributado N - 02 OC OC
      '|'                                                            + // 22 COD_INF Código da informação complementar do documento fiscal
      zPesquisa.FieldByName('COD_CTA').asstring                    + '|'; // 23 COD_CTA Código da conta analítica contábil debitada/creditada C - - OC OC
    Except on E:Exception Do
    begin
      ShowMessage('Falha ao Gravar Registro: '+E.Message);
      Result  := False;
      Exit;
    end; End;

    if Not GravaRegistros('D100') Then Begin Result := False; Exit; End;
    Progress.Position := Progress.Position + 1;
    Progress.Update;
    Inc(nD100);
    Inc(Total_Bloco_D);

    // para cada blodo D100 ao nenos 1 Bloco D190
    EditTabela.Text := 'Criando - BLOCO D190 - Analitico TRANSPORTES'; EditTabela.Update;
    if Not RegistroD190 Then Begin Result := False; Exit; End;

    zPesquisa.Next;
  End;
  Result := True;
end;

Function TFormTelaExportacaoSped.RegistroD190: boolean;
Begin
  Try
    EditTabela.Text := 'Gravando Registro D190 - Analitico Conhecimento de Transportes';
    Linha := '|D190|'                                                              + // 01-Registro D100
    zPesquisa.FieldByName('CST_ICMS').asstring                              + '|'+ // 02 CST_ICMS Código da Situação Tributária, conforme a tabela
    zPesquisa.FieldByName('CON_CFOP').asstring                              + '|'+ // 03 CFOP Código Fiscal de Operação e Prestação, conforme
    FormatFloat('0.00',zPesquisa.FieldByName('ALIQ_ICMS').Value)            + '|'+ // 04 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
    FormatFloat('0.00',zPesquisa.FieldByName('VL_DOC').Value)               + '|'+ // 05 VL_OPR Valor da operação correspondente à combinação
    FormatFloat('0.00',zPesquisa.FieldByName('VL_BC_ICMS').Value)           + '|'+ // 06 VL_BC_ICMS
    FormatFloat('0.00',zPesquisa.FieldByName('VL_ICMS').Value)              + '|'+ // 07 VL_ICMS
    FormatFloat('0.00',zPesquisa.FieldByName('RED_BC_ICMS').Value)          + '|'+ // 08 VL_RED_BC Valor não tributado em função da redução da base
    ''                                                                        + '|'; // 09 COD_OBS Código da observação do lançamento fiscal
  Except on E:Exception do
  begin
    ShowMessage('Falha ao Gravar Registro: '+E.Message);
    Result  := False;
    Exit;
  end; End;
  if Not GravaRegistros('D190') Then Begin Result := False; Exit; End;
  Inc(nD190);
  Inc(Total_Bloco_D);
  Result := True;
end;

Function TFormTelaExportacaoSped.Registro_Bloco_E: boolean;
var xDataImposto : string;
var VL_SLD_APURADO, VL_SLD_CREDOR : double;
Begin
  Linha :=  '|E001|'    + // Incio do registro |E001| e Indicador de Nota de Entrada |0|
             '0|'        ; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento
  If Not GravaRegistros('E001') Then Begin Result := False; Exit; End;
  nE001 := 1;
  Inc(Total_Bloco_E);

  Linha :=  '|E100|'    + // Incio do registro |E100| PERÍODO DA APURAÇÃO DO ICMS
            FormatDateTime('ddmmyyyy',De.Date)  + '|' + // Data inicial
            FormatDateTime('ddmmyyyy',Ate.Date) + '|' ; // Data final
  If Not GravaRegistros('E100') Then Begin Result := False; Exit; End;
  nE100 := 1;
  Inc(Total_Bloco_E);

  VL_SLD_APURADO := VL_TOT_DEBITOS - VL_TOT_CREDITOS;
  if VL_SLD_APURADO < 0 then
    VL_SLD_APURADO := 0;

  if VL_TOT_CREDITOS > VL_TOT_DEBITOS then
    VL_SLD_CREDOR := VL_TOT_CREDITOS - VL_TOT_DEBITOS
  else
    VL_SLD_CREDOR := 0;

  Linha :=  '|E110|'    + // Incio do registro |E110| APURAÇÃO DO ICMS – OPERAÇÕES PRÓPRIAS
            FormatFloat('0.00', VL_TOT_DEBITOS)       + '|' + // 02 VL_TOT_DEBITOS - Valor total dos débitos por ''Saídas com débito do imposto''
            '0,00|'                                         + // 03 VL_AJ_DEBITOS - Valor total dos ajustes a débito decorrentes do doc. fiscal
            '0,00|'                                         + // 04 VL_TOT_AJ_DEBITOS - Valor total de ''Ajustes a débito''
            '0,00|'                                         + // 05 VL_ESTORNOS_CRED - Valor total de Ajustes “Estornos de créditos”
            FormatFloat('0.00', VL_TOT_CREDITOS)      + '|' + // 06 VL_TOT_CREDITOS - Valor total dos Creditos por ''Entradas com credito do imposto''
            '0,00|'                                         + // 07 VL_AJ_CREDITOS - Valor total dos ajustes a credito decorrentes do doc. fiscal
            '0,00|'                                         + // 08 VL_TOT_AJ_CREDITOS - Valor total de ''Ajustes a credito''
            '0,00|'                                         + // 09 VL_ESTORNOS_DEB - Valor total de Ajustes “Estornos de debitos”
            '0,00|'                                         + // 10 VL_SLD_CREDOR_ANT - Valor total de ''Saldo credor do período anterior
            FormatFloat('0.00', VL_SLD_APURADO)       + '|' + // 11 VL_SLD_APURADO - Valor do saldo devedor apurado
            '0,00|'                                     +     // 12 VL_TOT_DED - Valor total de ''Deduções''
            FormatFloat('0.00', VL_SLD_APURADO)       + '|' + // 13 VL_ICMS_RECOLHER - Valor total de ''ICMS a recolher (11-12)
            FormatFloat('0.00', VL_SLD_CREDOR)        + '|' + // 14 VL_SLD_CREDOR_TRANSPORTAR - Valor total de ''Saldo credor a transportar para o período seguinte”
            '0,00|'                                         ; // 15 DEB_ESP - Valores recolhidos ou a recolher, extraapuração.
  If Not GravaRegistros('E110') Then Begin Result := False; Exit; End;
  nE110 := 1;
  Inc(Total_Bloco_E);

  if FormatDateTime('mm',De.Date) = '12' then xDataImposto := '10012014';
  if FormatDateTime('mm',De.Date) = '01' then xDataImposto := '10022014';
  if FormatDateTime('mm',De.Date) = '02' then xDataImposto := '10032014';
  if FormatDateTime('mm',De.Date) = '03' then xDataImposto := '10042014';
  if FormatDateTime('mm',De.Date) = '04' then xDataImposto := '10052014';
  if FormatDateTime('mm',De.Date) = '05' then xDataImposto := '10062014';
  if FormatDateTime('mm',De.Date) = '06' then xDataImposto := '10072014';
  if FormatDateTime('mm',De.Date) = '07' then xDataImposto := '10082014';
  if FormatDateTime('mm',De.Date) = '08' then xDataImposto := '10092014';
  if FormatDateTime('mm',De.Date) = '09' then xDataImposto := '10102014';
  if FormatDateTime('mm',De.Date) = '10' then xDataImposto := '10112014';
  if FormatDateTime('mm',De.Date) = '11' then xDataImposto := '10122014';

  Linha :=  '|E116|'                                        + // Incio do registro |E116| OBRIGAÇÕES DO ICMS RECOLHIDO OU A RECOLHER – OPERAÇÕES PRÓPRIAS
            '000'                                     + '|' + // 02 COD_OR - Código da obrigação a recolher, conforme a Tabela 5.4
            FormatFloat('0.00', VL_SLD_APURADO)       + '|' + // 03 VL_OR - Valor da obrigação a recolher
            xDataImposto                              + '|' + // 04 DT_VCTO - Data de vencimento da obrigação
            '0221'                                    + '|' + // 05 COD_REC - Código de receita referente à obrigação, próprio da unidade da federação, conforme legislação estadual
                                                        '|' + // 06 NUM_PROC - Número do processo ou auto de infração ao qual a obrigação está vinculada, se houver.
                                                        '|' + // 07 IND_PROC - Indicador da origem do processo: 0- SEFAZ; 1- Justiça Federal; 2- Justiça Estadual;
                                                        '|' + // 08 PROC - Descrição resumida do processo que embasou o lançamento
                                                        '|' + // 09 TXT_COMPL - Descrição complementar das obrigações a recolher
            FormatDateTime('mmyyyy',De.Date)          + '|' ; // 10 MES_REF - Informe o mês de referência no formato “mmaaaa''
  If Not GravaRegistros('E116') Then Begin Result := False; Exit; End;
  nE116 := 1;
  Inc(Total_Bloco_E);

  Linha := '|E990|'    + // Encerramento do registro |F990|
           '5|'        ; // Numer de linha do bloco F
  If Not GravaRegistros('E990') Then Begin Result := False; Exit; End;
  nE990 := 1;
  Inc(Total_Bloco_E);
End;

Function TFormTelaExportacaoSped.Registro_Bloco_G: boolean;
Begin
  Linha :=  '|G001|'    + // Incio do registro |G001| e Indicador de Nota de Entrada |0|
             '1|'        ; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento
  If Not GravaRegistros('G001') Then Begin Result := False; Exit; End;
  nG001 := 1;
  Total_Bloco_G := 1;

  Linha := '|G990|'     + // Encerramento do registro |G990|
           '2|'        ; // Numer de linha do bloco G
  If Not GravaRegistros('G990') Then Begin Result := False; Exit; End;
  nG990 := 1;
  Inc(Total_Bloco_G);
End;

Function TFormTelaExportacaoSped.Registro_Bloco_1: boolean;
var nCreditosICMS, nCombustiveis, nVendaCartao  :String;
    CombAbertura, CombFechamento : Extended;
    VolumeInicial, TotalEntradas, TotalSaidas, TotalPerdas, TotalSobras   : Extended;
    nTanque : Integer;
Begin
  Linha :=  '|1001|0|'; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento

  If Not GravaRegistros('1001') Then Begin Result := False; Exit; End;
  n1001 := 1;
  Total_Bloco_1 := 1;

  Linha := '|1010|N|N|N|N|N|N|N|N|N|';
  If Not GravaRegistros('1010') Then Begin Result := False; Exit; End;
  inc(Total_Bloco_1);
  n1010 := 1;


  // REGISTRO 1100: REGISTRO DE INFORMAÇÕES SOBRE EXPORTAÇÃO.
     {Este registro deve ser preenchido no mês em que se concluir a exportação direta ou indireta pelo efetivo
      exportador.}

  // REGISTRO 1105: DOCUMENTOS FISCAIS DE EXPORTAÇÃO.
     {Este registro deve ser apresentado para discriminar os documentos fiscais vinculados à exportação.}

  // REGISTRO 1110: OPERAÇÕES DE EXPORTAÇÃO INDIRETA - MERCADORIAS DE TERCEIROS.
     {Este registro deve ser apresentado para informar a origem das mercadorias adquiridas para a exportação.}

  // REGISTRO 1200: CONTROLE DE CRÉDITOS FISCAIS - ICMS.
     {Este registro demonstra a conta corrente dos créditos fiscais de ICMS, controlados extra-apuração. Cada UF determinará a
     obrigatoriedade de apresentação deste registro.}

  // REGISTRO 1210: UTILIZAÇÃO DE CRÉDITOS FISCAIS – ICMS.
     {Este registro deve ser apresentado para detalhar a utilização de créditos fiscais de ICMS no período. O somatório dos
      valores do campo 04 deste registro deve corresponder ao informado no campo 06 do registro 1200.}

  // REGISTRO 1300: MOVIMENTAÇÃO DIÁRIA DE COMBUSTÍVEIS
  {Seleciona os cabecalhos do LMC na tabela LMCCAB para o periodo de apuração}

  zPesquisa.Close;
  zPesquisa.SQL.Text := 'SELECT * FROM LMCCAB WHERE Empricod = '+ComboEmpresa.Value+' AND '+
  'LMCADDTMOV >= '''+FormatDateTime('mm/dd/yyyy',de.date)+''' AND LMCADDTMOV <= '''+FormatDateTime('mm/dd/yyyy',de.date)+''' ORDER BY EMPRICOD, LILMICOD, LMCAIPAGATUAL, LMCADDTMOV';
  zPesquisa.Open;
  CombAbertura   := 0;
  CombFechamento := 0;
  TotalEntradas  := 0;
  TotalSaidas    := 0;
  n1300          := 0;

  if not zPesquisa.IsEmpty then
  begin
    EditTabela.Text := 'Registrando LMC do Estabelecimento';
    zPesquisa.Last;
    //Progress.Max := zPesquisa.RecordCount;
    Progress.Position := 0;
    Progress.Update;
    zPesquisa.First;

    While not zPesquisa.eof do
    begin
       CombAbertura  :=zPesquisa.FieldByname('LMCAN2TQI1').Value + zPesquisa.FieldByname('LMCAN2TQI2').Value +
                       zPesquisa.FieldByname('LMCAN2TQI3').Value + zPesquisa.FieldByname('LMCAN2TQI4').Value +
                       zPesquisa.FieldByname('LMCAN2TQI5').Value + zPesquisa.FieldByname('LMCAN2TQI6').Value ;

       CombFechamento:=zPesquisa.FieldByname('LMCAN2TQF1').Value + zPesquisa.FieldByname('LMCAN2TQF2').Value +
                       zPesquisa.FieldByname('LMCAN2TQF3').Value + zPesquisa.FieldByname('LMCAN2TQF4').Value +
                       zPesquisa.FieldByname('LMCAN2TQF5').Value + zPesquisa.FieldByname('LMCAN2TQF6').Value ;

       // Pesquisa entradas do produto registradas no livro, dia e pagina atual da tabela SQLPesquisa
       zPesquisa1.Close;
       zPesquisa1.SQL.Text := 'select sum (lmenn2qte) as Entradas from lmcentrada '+
       'where empricod = ' + ComboEmpresa.Value + ' and lilmicod = ' + zPesquisa.Fieldbyname('LILMICOD').AsString +
       ' and LMENIPAGATUAL = ' + zPesquisa.FieldByname('LMCAIPAGATUAL').asstring + ' and PRODICOD =' + zPesquisa.FieldByname('PRODICOD').asstring;
       zPesquisa1.Open;
       if zPesquisa1.FieldByname('Entradas').value > 0 then
          TotalEntradas := zPesquisa1.FieldByname('Entradas').value
       Else
          TotalEntradas := 0;

       Linha := '|1300|' +                                                  // 01 REG Texto fixo contendo ''1300''
       zPesquisa.FieldByName('PRODICOD').AsString                                  + '|' + // 02 COD_ITEM Código do Produto, constante do registro 0200
       FormatDateTime('ddmmyyyy',zPesquisa.FieldbyName('LMCADDTMOV').AsDateTime)   + '|' + // DT_FECH Data do fechamento da movimentação
       FormatFloat('0.000',CombAbertura)                                           + '|' + // 04 ESTQ_ABERT Estoque no inicio do dia, em litros N - 03 O
       FormatFloat('0.000',TotalEntradas)                                          + '|' + // 05 VOL_ENTR Volume Recebido no dia (em litros) N - 03 O
       FormatFloat('0.000',CombAbertura + TotalEntradas)                           + '|' + // 06 VOL_DISP Volume Disponível (04 + 05), em litros N - 03 O
       FormatFloat('0.000',zPesquisa.FieldbyName('LMCAN2QTDVENDIA').Value)         + '|' + // 07 VOL_SAIDAS Volume Total das Saídas, em litros N - 03 O
       FormatFloat('0.000',zPesquisa.FieldbyName('LMCAN2ESTESCRIT').Value)         + '|' ; // 08 ESTQ_ESCR Estoque Escritural (06 – 07), litros N - 03 O

       if zPesquisa.FieldByName('LMCAN2VLRPERDSOB').Value > 0 Then
          Linha := Linha + FormatFloat('0.000',zPesquisa.FieldbyName('LMCAN2VLRPERDSOB').Value)          + '|'  // 09 VAL_AJ_PERDA Valor da Perda, em litros N - 03 O
       Else
         Linha := Linha + '0,00|';  // 09 VAL_AJ_PERDA Valor da Perda, em litros

       if zPesquisa.FieldByName('LMCAN2VLRPERDSOB').Value < 0 Then
          Linha := Linha + FormatFloat('0.000',-zPesquisa.FieldbyName('LMCAN2VLRPERDSOB').Value)          + '|'  // 10 VAL_AJ_GANHO Valor do ganho, em litros N - 03 O
       Else
         Linha := Linha + '0,00|';  // 09 VAL_AJ_PERDA Valor da Perda, em litros
       Linha := Linha +
       FormatFloat('0.000',zPesquisa.FieldbyName('LMCAN2ESTFECHAM').Value)          + '|' ; // 11 FECH_FISICO Estoque de Fechamento, em litros N - 03 O

      If Not GravaRegistros('1300') Then Begin Result := False; Exit; End;
      inc(n1300) ;
      Inc(Total_Bloco_1);

      // REGISTRO 1310: MOVIMENTAÇÃO DIÁRIA DE COMBUSTÍVEIS POR TANQUE
      zPesquisa1.Close;
      // seleciona os tanques que tem o combustivel da folha lmc atual
      zPesquisa1.SQL.Text := 'Select * from tanque where EMPRICOD = ' + zPesquisa.FieldByname('Empricod').AsString + ' and ' +
      'PRODICOD = ' + zPesquisa.FieldByname('PRODICOD').AsString + ' order by TANQICOD';
      zPesquisa1.Open;

      nTanque := 1;
      TotalPerdas := 0;
      TotalSobras := 0;
      While not zPesquisa1.eof do
      begin
        Linha := '|1310|'+
        zPesquisa1.FieldByname('TANQICOD').AsString            + '|' ; // NUM_TANQUE Tanque que armazena o combustível.
        Case nTanque of           // 03 ESTQ_ABERT Estoque no inicio do dia, em litros
          1 : begin
              VolumeInicial := zPesquisa.FieldByname('LMCAN2TQI1').value;
              if zPesquisa.FieldByName('LMCAN2TQSBR1').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + zPesquisa.FieldByName('LMCAN2TQSBR1').value
              else
                TotalSobras :=  TotalSobras + zPesquisa.FieldByName('LMCAN2TQSBR1').value;
              end;

          2 : begin
              VolumeInicial := zPesquisa.FieldByname('LMCAN2TQI2').value;
              if zPesquisa.FieldByName('LMCAN2TQSBR2').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + zPesquisa.FieldByName('LMCAN2TQSBR2').value
              else
                TotalSobras :=  TotalSobras + zPesquisa.FieldByName('LMCAN2TQSBR2').value;
              end;
          3 : begin
              VolumeInicial := zPesquisa.FieldByname('LMCAN2TQI3').value;
              if zPesquisa.FieldByName('LMCAN2TQSBR3').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + zPesquisa.FieldByName('LMCAN2TQSBR3').value
              else
                TotalSobras :=  TotalSobras + zPesquisa.FieldByName('LMCAN2TQSBR3').value;
              end;
          4 : begin
              VolumeInicial := zPesquisa.FieldByname('LMCAN2TQI4').value;
              if zPesquisa.FieldByName('LMCAN2TQSBR4').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + zPesquisa.FieldByName('LMCAN2TQSBR4').value
              else
                TotalSobras :=  TotalSobras + zPesquisa.FieldByName('LMCAN2TQSBR4').value;
              end;
          5 : begin
              VolumeInicial := zPesquisa.FieldByname('LMCAN2TQI5').value;
              if zPesquisa.FieldByName('LMCAN2TQSBR5').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + zPesquisa.FieldByName('LMCAN2TQSBR5').value
              else
                TotalSobras :=  TotalSobras + zPesquisa.FieldByName('LMCAN2TQSBR5').value;
              end;
          6 : begin
              VolumeInicial := zPesquisa.FieldByname('LMCAN2TQI6').value;
              if zPesquisa.FieldByName('LMCAN2TQSBR6').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + zPesquisa.FieldByName('LMCAN2TQSBR6').value
              else
                TotalSobras :=  TotalSobras + zPesquisa.FieldByName('LMCAN2TQSBR6').value;
              end;
        End;
        Linha := Linha +  FormatFloat('0.000',VolumeInicial) + '|';

        // verifica e calcula os recebimentos no tanque no dia
        zPesquisa2.SQL.Text := 'Select * from LMCENTRADA where EmpriCod = ' + zPesquisa.FieldByname('Empricod').AsString + ' and ' +
        'PRODICOD = ' + zPesquisa.FieldByname('PRODICOD').AsString + ' and TANQICOD = '+ zPesquisa1.Fieldbyname('TANQICOD').AsString   +
        ' and LILMICOD = '+zPesquisa.Fieldbyname('LILMICOD').AsString + ' and LMENIPAGATUAL = '+zPesquisa.Fieldbyname('LMCAIPAGATUAL').asstring;

        zPesquisa2.Open;

        TotalEntradas := 0;
        While not zPesquisa2.Eof do
        begin
          TotalEntradas := TotalEntradas + zPesquisa2.FieldByname('LMENN2QTE').Value;
          zPesquisa2.Next;
        end;

        zPesquisa2.Close;

        // verifica e calcula as vendas efetuadas no dia desde combustível
        zPesquisa2.SQL.Text := 'Select * from LMCSaida where EmpriCod = ' + zPesquisa.FieldByname('Empricod').AsString + ' and ' +
        'PRODICOD = ' + zPesquisa.FieldByname('PRODICOD').AsString + ' and TANQICOD = '+ zPesquisa1.Fieldbyname('TANQICOD').AsString   +
        ' and LILMICOD = '+zPesquisa.Fieldbyname('LILMICOD').AsString + ' and LMSAIPAGATUAL = '+zPesquisa.Fieldbyname('LMCAIPAGATUAL').asstring;

        zPesquisa2.Open;

        TotalSaidas   := 0;

        While not zPesquisa2.Eof do
        begin
          TotalSaidas := TotalSaidas + (zPesquisa2.FieldByname('LMSAN2FECHAME').Value - zPesquisa2.FieldByname('LMSAN2ABERTUR').Value - zPesquisa2.FieldByname('LMSAN2AFERIR').Value  );
          zPesquisa2.Next;
        end;

        Linha := Linha + FormatFloat('0.000',TotalEntradas)                           + '|' + //  04 VOL_ENTR Volume Recebido no dia (em litros)
                 FormatFloat('0.000',VolumeInicial + TotalEntradas)                   + '|' + //  05 VOL_DISP Volume Disponível (03 + 04), em litros
                 FormatFloat('0.000',TotalSaidas)                                     + '|' + //  06 VOL_SAIDAS Volume Total das Saídas, em litros
                 FormatFloat('0.000',(VolumeInicial + TotalEntradas) - TotalSaidas)   + '|' + //  07 ESTQ_ESCR Estoque Escritural(05 – 06), litros
                 FormatFloat('0.000',TotalPerdas)                                     + '|' + //  08 VAL_AJ_PERDA Valor da Perda, em litros
                 FormatFloat('0.000',-TotalSobras)                                    + '|' + //  09 VAL_AJ_GANHO Valor do ganho, em litros
                 FormatFloat('0.000',zPesquisa.Fieldbyname('LMCAN2ESTFECHAM').Value)+ '|'; // 10 FECH_FISICO Volume aferido no tanque, em litros. Estoque de fechamento físico do tanque.

        If Not GravaRegistros('1310') Then Begin Result := False; Exit; End;
        Inc(n1310);
        Inc(Total_Bloco_1);

        zPesquisa1.Next;
        inc(nTanque);
      End;

      // REGISTRO 1320: VOLUME DE VENDAS
      zPesquisa2.First;
      While Not zPesquisa2.Eof do
      begin
        Linha := '|1320|'+                                                               // 01 REG Texto fixo contendo ''1320''
        zPesquisa2.Fieldbyname('BOMBICOD').AsString                         + '|' + // 02 NUM_BICO Bico Ligado à Bomba
        ''                                                                          + '|' + // 03 NR_INTERV Número da intervenção
        ''                                                                          + '|' + // 04 MOT_INTERV Motivo da Intervenção C 050 - OC
        ''                                                                          + '|' + // 05 NOM_INTERV Nome do Interventor C 030 - OC
        ''                                                                          + '|' + // 06 CNPJ_INTERV CNPJ da empresa responsável pela intervenção N 014* - OC
        ''                                                                          + '|' + // 07 CPF_INTERV CPF do técnico responsável pela intervenção N 011* - OC
        FormatFloat('0.000',zPesquisa2.Fieldbyname('LMSAN2FECHAME').value)  + '|' + // 08 VAL_FECHA Valor da leitura final do contador, no fechamento do bico. N - 03 O
        FormatFloat('0.000',zPesquisa2.Fieldbyname('LMSAN2ABERTUR').Value)  + '|' + // 09 VAL_ABERT Valor da leitura inicial do contador, na abertura do bico. N - 03 O
        FormatFloat('0.000',zPesquisa2.Fieldbyname('LMSAN2AFERIR').Value)   + '|' + // 10 VOL_AFERI Aferições da Bomba, em litros
        FormatFloat('0.000', (zPesquisa2.FieldByname('LMSAN2FECHAME').Value -
        zPesquisa2.FieldByname('LMSAN2ABERTUR').Value -
        zPesquisa2.FieldByname('LMSAN2AFERIR').Value))                      + '|' ; // 11 VOL_VENDAS Vendas (08 – 09 - 10 ) do bico , em litros

        If Not GravaRegistros('1320') Then Begin Result := False; Exit; End;
        inc(n1320);
        Inc(Total_Bloco_1);

        zPesquisa2.Next;
      End;

      zPesquisa2.Close;
      Progress.Position := Progress.Position + 1;
      zPesquisa.Next;
    End;

    // REGISTRO 1350: BOMBAS

    zPesquisa.Close;
    zPesquisa1.Close;
    zPesquisa2.Close;
    zPesquisa.SQL.Text := 'Select Distinct BOMBA50NROSERIE from Bomba';
    zPesquisa.Open;

    zPesquisa1.SQL.Text := 'Select B.*, T.PRODICOD From BOMBA B LEFT JOIN TANQUE T ON T.TANQICOD = B.TANQICOD Where BOMBA50NROSERIE = :xSerie';

    While not zPesquisa.EOF do
    begin
      zPesquisa1.ParamByName('xSerie').AsString := zPesquisa.Fieldbyname('BOMBA50NROSERIE').AsString;
      zPesquisa1.Open;

      Linha := '|1350|' +                                                             // 01 REG Texto fixo contendo ''1350''
      zPesquisa1.Fieldbyname('BOMBA50NROSERIE').asstring                     + '|' + // 02 SERIE Número de Série da Bomba
      zPesquisa1.Fieldbyname('BOMBA60FABRICANTE').asstring                   + '|' + // 03 FABRICANTE Nome do Fabricante da Bomba C 060 - O
      zPesquisa1.Fieldbyname('BOMBA20MODELO').asstring                       + '|' + // 04 MODELO Modelo da Bomba C - - O
      zPesquisa1.Fieldbyname('BOMBA1TIPO').asstring                          + '|' ; // 05 TIPO_MEDICAO Identificador de medição: 0 - analógico 1 – digital

      If Not GravaRegistros('1350') Then Begin Result := False; Exit; End;
      inc(n1350);
      Inc(Total_Bloco_1);

      // REGISTRO 1360: LACRES DA BOMBA
      Linha := '|1360|'   +                                                                  // 01 REG Texto fixo contendo ''1360'' C 004 - O
      zPesquisa1.Fieldbyname('BOMBA20LACRE').asstring                                + '|' + // 02 NUM_LACRE Número do Lacre associado na Bomba C 020 - O
      FormatDateTime('ddmmyyyy',zPesquisa1.Fieldbyname('BOMBDDATALACRE').AsDateTime) + '|' ; // 03 DT_APLICACAO Data de aplicação do Lacre N 008* - O

      If Not GravaRegistros('1350') Then Begin Result := False; Exit; End;
      inc(n1360);
      Inc(Total_Bloco_1);

      // Grava os Bicos de Cada Bomba
      While not zPesquisa1.Eof do
      begin
        Linha := '|1370|' +                                                             // 01 REG Texto fixo contendo ''1370''
        zPesquisa1.Fieldbyname('BOMBICOD').asstring                            + '|' + // 02 NUM_BICO Número sequencial do bico ligado a bomba N 003 - O
        zPesquisa1.Fieldbyname('PRODICOD').asstring                            + '|' + // 03 COD_ITEM Código do Produto, constante do registro 0200 C 060 - O
        zPesquisa1.Fieldbyname('TANQICOD').asstring                            + '|' ; // 04 NUM_TANQUE Tanque que armazena o combustível. N - - O


        If Not GravaRegistros('1370') Then Begin Result := False; Exit; End;
        inc(n1370);
        Inc(Total_Bloco_1);

        zPesquisa1.Next;
      End;

      zPesquisa1.Close;
      zPesquisa.Next;
    End;

    zPesquisa.Close;
    zPesquisa1.Close;
    zPesquisa2.Close;
  End else
  begin
    zPesquisa.Close;
    n1300 := -1 ;
  end;

  n1990 := 1;
  Inc(Total_Bloco_1);
  Linha := '|1990|'     + // Encerramento do registro |1990|
  IntToStr(Total_Bloco_1)+'|'        ; // Numer de linha do bloco 1
  If Not GravaRegistros('1990') Then Begin Result := False; Exit; End;

  Result := True;
End;

Function TFormTelaExportacaoSped.Registro_Bloco_9: boolean;
Begin
  {-------------------------------------------------}
  Linha :=  '|9001|'    + // Incio do registro |9001| e Indicador de Nota de Entrada |0|
             '0|'       ; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento
  If Not GravaRegistros('9001') Then Begin Result := False; Exit; End;
  n9001 := 1;
  Total_Bloco_9 := 1;
  {-------------------------------------------------}
  n9900 := 0;
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0000|'         + // Registro a ser totalizado
            IntToStr(n0000) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0001|'         + // Registro a ser totalizado
            IntToStr(n0001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0005|'         + // Registro a ser totalizado
            IntToStr(n0005) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0100|'         + // Registro a ser totalizado
            IntToStr(n0100) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0150|'         + // Registro a ser totalizado
            IntToStr(n0150) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0190|'         + // Registro a ser totalizado
            IntToStr(n0190) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0200|'         + // Registro a ser totalizado
            IntToStr(n0200) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);

  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0206|'         + // Registro a ser totalizado
            IntToStr(n0206) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);

  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0220|'         + // Registro a ser totalizado
            IntToStr(n0220) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);

  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0990|'         + // Registro a ser totalizado
            IntToStr(n0990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C001|'         + // Registro a ser totalizado
            IntToStr(nC001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C100|'         + // Registro a ser totalizado
            IntToStr(nC100) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C113|'         + // Registro a ser totalizado
            IntToStr(nC113) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C114|'         + // Registro a ser totalizado
            IntToStr(nC114) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C120|'         + // Registro a ser totalizado
            IntToStr(nC120) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C130|'         + // Registro a ser totalizado
            IntToStr(nC130) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C140|'         + // Registro a ser totalizado
            IntToStr(nC140) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C141|'         + // Registro a ser totalizado
            IntToStr(nC141) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C160|'         + // Registro a ser totalizado
            IntToStr(nC160) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C170|'         + // Registro a ser totalizado
            IntToStr(nC170) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C172|'         + // Registro a ser totalizado
            IntToStr(nC172) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C190|'         + // Registro a ser totalizado
            IntToStr(nC190) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C400|'         + // Registro a ser totalizado
            IntToStr(nC400) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C405|'         + // Registro a ser totalizado
            IntToStr(nC405) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C410|'         + // Registro a ser totalizado
            IntToStr(nC410) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C420|'         + // Registro a ser totalizado
            IntToStr(nC420) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C425|'         + // Registro a ser totalizado
            IntToStr(nC425) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C460|'         + // Registro a ser totalizado
            IntToStr(nC460) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C470|'         + // Registro a ser totalizado
            IntToStr(nC470) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C490|'         + // Registro a ser totalizado
            IntToStr(nC490) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C990|'         + // Registro a ser totalizado
            IntToStr(nC990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'D001|'         + // Registro a ser totalizado
            IntToStr(nD001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'D100|'         + // Registro a ser totalizado
            IntToStr(nD100) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'D190|'         + // Registro a ser totalizado
            IntToStr(nD190) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'D990|'         + // Registro a ser totalizado
            IntToStr(nD990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'E001|'         + // Registro a ser totalizado
            IntToStr(nE001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'E100|'         + // Registro a ser totalizado
            IntToStr(nE100) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'E110|'         + // Registro a ser totalizado
            IntToStr(nE110) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'E116|'         + // Registro a ser totalizado
            IntToStr(nE116) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'E990|'         + // Registro a ser totalizado
            IntToStr(nE990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'G001|'         + // Registro a ser totalizado
            IntToStr(nG001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'G990|'         + // Registro a ser totalizado
            IntToStr(nG990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'H001|'         + // Registro a ser totalizado
            IntToStr(nH001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);

  {-------------------------------------------------}
  if chkGeraInventario.Checked then
  begin
    Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
              'H005|'         + // Registro a ser totalizado
              IntToStr(nH005) + '|'; // Total de linhas do registro
    If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
    Inc(n9900);
    Inc(Total_Bloco_9);

    {-------------------------------------------------}
    Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
              'H010|'         + // Registro a ser totalizado
              IntToStr(nH010) + '|'; // Total de linhas do registro
    If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
    Inc(n9900);
    Inc(Total_Bloco_9);
  end;
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'H990|'         + // Registro a ser totalizado
            IntToStr(nH990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}

  if (strToInt(sAnoBase) > 2015) then
    begin
      Linha :=  '|9900|'             + // Incio do registro |9900|
                'K001|'              + // Registro a ser totalizado
                IntToStr(nK001) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
    end;
  {-------------------------------------------------}

  if (strToInt(sAnoBase) > 2015) then
    begin
      Linha :=  '|9900|'      + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                'K990|'         + // Registro a ser totalizado
                IntToStr(nK990) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
    end;

  {-------------------------------------------------}

  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '1001|'         + // Registro a ser totalizado
            IntToStr(n1001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '1010|'         + // Registro a ser totalizado
            IntToStr(n1010) + '|'; // Total de linhas do registro
    If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
    Inc(n9900);
    Inc(Total_Bloco_9);
  {-------------------------------------------------}
  // se n1300 > 0 significa que tem movimento nas tabelas do LMC de postode Combustiveis
  if n1300 > 0 then
    begin
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1300|'         + // Registro a ser totalizado
                IntToStr(n1300) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1310|'         + // Registro a ser totalizado
                IntToStr(n1310) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1320|'         + // Registro a ser totalizado
                IntToStr(n1320) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1350|'         + // Registro a ser totalizado
                IntToStr(n1350) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1360|'         + // Registro a ser totalizado
                IntToStr(n1360) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1370|'         + // Registro a ser totalizado
                IntToStr(n1370) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
    End;

  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '1990|'         + // Registro a ser totalizado
            IntToStr(n1990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '9001|'         + // Registro a ser totalizado
            IntToStr(n9001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'    + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '9900|'     + // Registro a ser totalizado
            IntToStr(n9900 + 3) + '|'; // Total de linhas do registro + as 3 linhas finais
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'    + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '9990|'     + // Registro a ser totalizado
            '1|'        ; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'    + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '9999|'     + // Registro a ser totalizado
            '1|'        ; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9990|'    +                          // Incio do registro |9990| e Indicador de Nota de Entrada |0|
            IntToStr(Total_Bloco_9 + 2) + '|'    ; // Total de linhas do registro + as duas linhas finais
  If Not GravaRegistros('9990') Then Begin Result := False; Exit; End;
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Inc(Total_Bloco_9); // Para para incluir na soma a linha que será gravada a seguir
  {-------------------------------------------------}
  Linha :=  '|9999|'+ // Fechamento do Bloco |9900| e Indicador de Nota de Entrada |0|
            IntToStr(TotalBlocoZero + Total_Bloco_A + Total_Bloco_C + Total_Bloco_D +
            Total_Bloco_E + Total_Bloco_G + Total_Bloco_H + Total_Bloco_K + Total_Bloco_1 + Total_Bloco_9) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9999') Then Begin Result := False; Exit; End;
  {-------------------------------------------------}

  Result := True;
End;

Function TFormTelaExportacaoSped.RetornaValor(Campo: String):Extended;
begin
  if zPesquisa2.FieldByName(Campo).IsNull then
    Result := 0
  Else
    Result := zPesquisa2.FieldByName(Campo).Value;
end;

Function TFormTelaExportacaoSped.RetornaModeloNF(Serie: String): String;
begin
  ZSerie.close;
  ZSerie.SQL.Text := 'Select SERIA2TIPONOTA from Serie where Empricod='+ComboEmpresa.Value+ ' and Seria5cod='''+Serie+''' ' ;
  zSerie.Open;
  if not zSerie.IsEmpty then
    Result := zSerie.FieldByName('SERIA2TIPONOTA').Value
  else
    Result := '';
end;

function TFormTelaExportacaoSped.MontaLinhaProduto4 : String;
var
 Str,ValorAux : String;
begin
  Str := '4';
  Str := str + PreencheValor(CodProd,'',14,2);                                        // 2-15 cd Produto
  Str := str + PreencheValor(EditCodEmpresa.Text,'',7,0);                             // 16-22 cod Empresa
  Str := str + PreencheValor('7','0',7,0);                                            // 23-29 cod Grupo (Tipo de produto 7=merc revenda)
  Str := str + PreencheValor('','',10,0);                                             // 30-39 cod NBM
  Str := str + PreencheValor(copy(z0200.FieldByName('proda60descr').AsString,1,40),'',40,2);   // 40-79 Descricao Produto
  Str := str + PreencheValor(z0200.FieldByName('unida5descr').AsString,'',6,2);     // 80-85 Unidade

  // Valor do Produto
  ValorAux := FormatFloat('##0.00',z0200.FieldByName('PRODN3VLRVENDA').AsFloat);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',13,0);          // 86-98 Valor do Lancamento

  // Zeros
  Str := str + PreencheValor('','0',11,2); // 99-109  Qtde Inicial
  Str := str + PreencheValor('','0',11,2); // 110-120 Qtde Final
  Str := str + PreencheValor('','0',13,2); // 121-133 Vlr Inicial Estoque
  Str := str + PreencheValor('','0',13,2); // 134-146 Vlr Final Estoque

  // IPI
  ValorAux := FormatFloat('##0.00',z0200.FieldByName('PRODN3PERCIPI').AsFloat);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0); // 147-151 Valor do IPI

  Str := str + PreencheValor('','',40,2);         // 152-191 OBS;

  // 192-199 Cod NCM
  Str := str + PreencheValor(z0200.FieldByName('ncma30codigo').AsString,'',8,0);

  Str := str + PreencheValor('','',5,0);  // 200-204 branco
  Str := str + PreencheValor('','0',2,2); // Espécie para DNF
  Str := str + PreencheValor('','',5,0);  // 207-211 branco

  Str := str + PreencheValor('','0',2,2);  // 212-213 Unidade Padrao Somente para DNF
  Str := str + PreencheValor('','0',14,2); // 214-227 Fator de Conversão para DNF
  Str := str + PreencheValor('','N',1,2);  // 228-228 Exporta Para DNF;

  Str := str + PreencheValor(z0200.FieldByName('PRODISITTRIB').AsString,'0',7,0); // 229-235 Situação Tributária
  Str := str + PreencheValor('','',17,2); // 236-252 branco;
  Str := str + PreencheValor('','',1,2);  // 253-253 branco;
  Str := str + PreencheValor(z0200.FieldByName('proda60codbar').AsString,'',14,2); // 254-267 Cod Barras.
  Str := str + PreencheValor('','0',7,2);  // 268-274 Cod. Produto Relevante
  Str := str + PreencheValor(FormatDateTime('dd/mm/yyyy',now),'',10,2); // 275-284 Data do Saldo Final
  Str := str + PreencheValor('','0',7,2);  // 285-291 Codigo PRoduto conforme Anexo I e II
  Str := str + PreencheValor('','0',7,2);  // 292-298 Capacidade Volumétrica 292 298 7 Numérico Somente para a DNF (ml)
  Str := str + PreencheValor('','N',1,2);  // 299-299 Incentivo Fiscal
  Str := str + PreencheValor('','N',1,2);  // 300 Gera informações para 300 300 1 Caractere Informar S ou No GRF-CBT
  Str := str + PreencheValor('','0',7,2);  // 301-307 Codigo PRoduto Somente para a GRF-CBT
  Str := str + PreencheValor('','N',1,2);  // 308 Gera informações para 308 308 1 Caractere Informar S ou NSCANC
  Str := str + PreencheValor('','0',7,2);  // 309-315 Codigo PRoduto Somente para SCANC
  Str := str + PreencheValor('','N',1,2);  // 316 Este produto contém 316 316 1 Caractere Somente para o SCANC. Informar S ou N Gasolina A
  Str := str + PreencheValor(z0200.FieldByName('unida5descr').AsString,'',2,2); // 317-318 Unidade
  Str := str + PreencheValor('','1',1,2);  // 319 1 = produto, 2 = Serv com incidencia de icms, 3 = Serv sem incidencia de icms.
  Str := str + PreencheValor('','N',1,2);  // 320 Gera informações 320 320 1 Caractere Informar S ou N Registro 88ST Sintegra
  Str := str + PreencheValor('','0',7,2);  // 321-327 Código do produto na 321 327 7 Numérico Somente para o 88ST Sintegra tabela SEFAZ

  // ICM Aliq
  ValorAux := z0200.FieldByName('icmsn2aliquota').AsString;
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0); // 328-332 Preenche Aliq Icms

  Str := str + PreencheValor('O','',1,0);       // 333 Tipo Produto V=Veículos Novos, M=Medicamentos, A=Armas de Fogo, O=Outros

  Str := str + PreencheValor('','',1,0);        // 334 Tipo Arma 0 = Permitido, 1 = Restrito
  Str := str + PreencheValor('','',255,2);      // 335 Descricao da Arma
  Str := str + PreencheValor('','0',7,2);        // Genero
  Str := str + PreencheValor('','',7,2);         // Código serviço, tem que ser espacos senao da erro na importacao da Dominio
  Str := str + PreencheValor('','0',7,2);        // Classificacao
  Str := str + PreencheValor(z0200.FieldByName('proda2tipoitem').AsString,'0',2,0); // 611 Tipo SPED
  Str := str + PreencheValor('','0',2,2);        // 613 ncm exterior
  Str := str + PreencheValor('','0',2,2);        // 615 codigo imposto importacao
  Str := str + PreencheValor('','N',1,2);       // 617 Produto composto
  Str := str + PreencheValor('','N',1,2);        // 618 Informações Apenas para o Estado de GO. Informar S ou complementares do NIPM da PDI
  Str := str + PreencheValor('','0',2,2);        // 619 Código produto/serviço Apenas para o Estado de GO do IPM da DPI
  Str := str + PreencheValor('','N',1,2);        // 621 Cesta Básica
  Str := str + PreencheValor('','0',7,2);        // 622-628 Código do produto DAM
  Str := str + PreencheValor(z0200.FieldByName('proda60codbar').AsString,'',16,2); // 629-644 Cd Barras
  Str := str + PreencheValor('','0',1,2);        // 645 tipo medicamento
  Str := str + PreencheValor('','N',1,2);        // 646 Produto incluído no campo Subst Tributaria
  Str := str + PreencheValor('01/01/2012','',10,2);  // 647-656 data inicio Subst Tributaria
  Str := str + PreencheValor('','N',1,2);       // 657 Produto com preco tabelado
  Str := str + PreencheValor('','0',13,2);      // 658-670 valor unitario da Subst tributaria
  Str := str + PreencheValor('','0',7,2);       // 671 MVA da Subst tributaria
  Str := str + PreencheValor('','1',1,2);       // 678 Grupo da Subst tributaria
  Str := str + PreencheValor('','N',1,2);       // 679 Equip ECF
  Str := str + PreencheValor('','N',1,2);       // 680 Servico Tribut pelo ISSQN
  Str := str + PreencheValor('','',3,2);        // 681 Ext IPI
  Str := str + PreencheValor('','M',1,2);       // 684 Periodicidade do IPI (M=Mensal D=Decendial)
  Str := str + PreencheValor('','0',7,2);       // 685 Classif dos itens somente para energia e telecomunicacao
  Str := str + PreencheValor('','0',16,2);      // 692 Quantidade Inicial
  Str := str + PreencheValor('','0',16,2);      // 708 Quantidade Final
  Str := str + PreencheValor('','0',7,2);       // 724 Conta contábil do informante em seu poder)
  Str := str + PreencheValor('','0',7,2);       // 731 Conta contábil do informante em posse de informante em posse terceiros)
  Str := str + PreencheValor('','0',7,2);       // 738 Conta contábil De terceiros em posse do terceiros em posse do informante)
  Str := str + PreencheValor('','N',1,2);       // 745 Unidade inventariada  1 Caractere Informar S ou N Diferente da comercializada
  Str := str + PreencheValor('','',46,2);       // 746-791 Reservado(Brancos)

  MontaLinhaProduto4 := STR;
end;

function TFormTelaExportacaoSped.MontaLinhaProduto5 : string;
var
 Str,ValorAux : String;
begin
  // Prefixo = 5 => Vigencia
  Str := '5';
  Str := str + PreencheValor('Vigencia','',80,2);     // 2-81 Descricao Vigencia
  Str := str + PreencheValor(z0200.FieldByName('PRODA3CSTCOFINSENTRADA').AsString,'',2,2); // 82-83 CST - Entradas
  Str := str + PreencheValor('','0',2,2);             // 84-85 Vínculo do Crédito
  Str := str + PreencheValor('','0',2,2);             // 86-87 Base do Crédito
  Str := str + PreencheValor('','S',1,2);             // 88 Aproveitar Credito proporcional somente a receita não cumulativa
  Str := str + PreencheValor('','S',1,2);             // 89 Credito por aliq diferenciada

  ValorAux := FormatFloat('##0.00',z0200.FieldByName('PRODN2ALIQPIS').Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0);       // 90-94 - Aliq Pis

  ValorAux := FormatFloat('##0.00',z0200.FieldByName('PRODN2ALIQCOFINS').Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0);    // 95-99 - Aliq Cofins

  Str := str + PreencheValor('','S',1,2);                                     // 100 Credito por aliq diferenciada
  Str := str + PreencheValor('','N',1,2);                                     // 101 Unidade Tributada diferente da inventariada - Entradas
  Str := str + PreencheValor(z0200.FieldByName('unida5descr').AsString,'',6,2); // 102-107 - Unidade tributável Entradas

  ValorAux := FormatFloat('##0.000',z0200.FieldByName('prodn3capacembal').Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',15,0);                              // 108-122 - Fator Conversao Entradas
  Str := str + PreencheValor('','0',13,2);                                    // 123-135 Valor do Pis Entrada
  Str := str + PreencheValor('','0',13,2);                                    // 136-148 Valor do Cofins Entrada
  Str := str + PreencheValor(z0200.FieldByName('PRODA2CSTCOFINS').AsString,'',2,2);     // 149-151 - CST SAIDAS
  Str := str + PreencheValor('','N',1,2);           // 151 - Tipo Contribuicao Informar: N=Não cumulativo, C=Cumulativo ou S=Sem incidência
  Str := str + PreencheValor('','0',4,2);           // 152-155 - Natureza da Receita
  Str := str + PreencheValor('','',6,2);            // 156-161 - Cod Recolhimento PIS
  Str := str + PreencheValor('','',6,2);            // 162-167 - Cod Recolhimento cofins
  Str := str + PreencheValor('','N',1,2);           // 168 - Debitos por aliq diferenciada - SAIDAS

  ValorAux := FormatFloat('##0.00',z0200.FieldByName('PRODN2ALIQPIS').Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0);      // 169-173 - Aliq PIS Saida

  ValorAux := FormatFloat('##0.00',z0200.FieldByName('PRODN2ALIQCOFINS').Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0);     // 174-178 - Aliq Cofins Saida
  Str := str + PreencheValor('','N',1,2);           // 179 - Debitos por unidade de medida - SAIDAS
  Str := str + PreencheValor('','N',1,2);           // 180 - Unidade Tributada diferente da inventariada - SAIDAS
  Str := str + PreencheValor(z0200.FieldByName('unida5descr').AsString,'',6,2); // 181-186 - Unidade tributável Saidas
  Str := str + PreencheValor('1','0',15,2);         // 187-201 - Fator Conversao estoque - SAIDAS
  Str := str + PreencheValor('','0',13,2);          // 202-214 Valor do Pis Saidas
  Str := str + PreencheValor('','0',13,2);          // 215-227 Valor do Cofins Saidas
  Str := str + PreencheValor('','0',3,2);           // 228-230 Tabela SPED
  Str := str + PreencheValor('','0',4,2);           // 231-234 Tabela Marca/Grupo SPED
  Str := str + PreencheValor('','',16,2);           // 235-250 Reservado (brancos)

  MontaLinhaProduto5 := str;
end;

Function TFormTelaExportacaoSped.PreencheValor( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
var Conta : integer ;
    Aux_Str, TotalStr : String ;
begin
  Aux_Str := '' ;
  FOR Conta := 1 TO (Tam-Length(STRI)) DO
     if FloodStr = '' then
       AUX_STR := AUX_STR + ' '
     else
        AUX_STR := AUX_STR + FloodStr ;
  IF JUST = 0 THEN //Esquerda
    AUX_STR := AUX_STR + STRI ;
  IF JUST = 2 THEN //Direita
    AUX_STR := STRI + AUX_STR ;
  PreencheValor := AUX_STR ;
End ;

procedure TFormTelaExportacaoSped.btExportaCadastrosClick(Sender: TObject);
begin
  inherited;
  CaminhoNomeArquivo := EditDiretorio.Text + '\Sped_Fiscal_Cadastros_da_'+SQLEmpresaEMPRA60NOMEFANT.AsString+'_'+FormatDateTime('ddmmyyyy',De.date)+'_'+FormatDateTime('ddmmyyyy',ate.Date)+'.TXT';

  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
  except
    on E:Exception Do
      begin
        Showmessage('Falha ao Criar Arquivo: '+E.message);
        Exit;
      end;
  end;

  BtExecutar.Enabled := False;
  btExportaCadastros.Enabled := False;
  de.Enabled  := False;
  ate.Enabled := False;

  zPesquisa3.Close;
  zPesquisa3.sql.Text := 'delete from SPED_0150';
  zPesquisa3.ExecSQL;

  z0190.Close;
  z0190.sql.Text := 'Delete From SPED_0190' ;
  z0190.ExecSQL;

  z0200.Close;
  z0200.sql.Text := 'Delete From SPED_0200' ;
  z0200.ExecSQL;

  ProgressGeral.Position := 10;
  {Todos Clientes}
  // Informa Clientes envolvidos nas operações de entrada e saida via tabela NOTAFISCAL
  zPesquisa.Close;
  zPesquisa.SQL.Text := 'SELECT * FROM CLIENTE WHERE CLIECATIVO=''S'' ';
  zPesquisa.Open;
  //Progress.Max := zPesquisa.RecordCount;
  EditTabela.Text := 'Criando - BLOCO 0150 - Todos Clientes'; EditTabela.Update;

  //z0150.Close;
  //z0150.Open;
  While not zPesquisa.EOF do
    begin
      Try
        z0150.Append;
        z0150.FieldByName('COD_PART').AsString      := zPesquisa.FieldByName('CLIEA13ID').AsString;
        z0150.FieldByName('NOME').AsString          := Trim(zPesquisa.FieldByName('CLIEA60RAZAOSOC').AsString);
        z0150.FieldByName('COD_PAIS').AsString      := zPesquisa.FieldByName('CLIEICODPAIS').AsString;

        if length(zPesquisa.FieldByName('CLIEA14CGC').AsString)=14 then
          begin
            z0150.FieldByName('CNPJ').AsString  := zPesquisa.FieldByName('CLIEA14CGC').AsString;
            // verifica se o cliente tem inscriçao de produtor
            If ((zPesquisa.FieldByName('CLIEA20IE').isnull) or (zPesquisa.FieldByName('CLIEA20IE').AsString = '')) and (zPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString <> '') then
              z0150.FieldByName('IE').AsString  := COPY(zPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString,0,14)
            else
              z0150.FieldByName('IE').AsString  :=  COPY(zPesquisa.FieldByName('CLIEA20IE').AsString,0,14) ;
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            while pos('-',IE) > 0 do
              delete(IE,pos('-',IE),1);
            if IE = 'ISENTO' then IE := '';
            z0150.FieldByName('IE').AsString  := Trim(IE);
          end
        else
          begin
            if length(zPesquisa.FieldByName('CLIEA11CPF').AsString)=11 then
              z0150.FieldByName('CPF').AsString := zPesquisa.FieldByName('CLIEA11CPF').AsString;
          end;

        z0150.FieldByName('COD_MUN').AsString       := zPesquisa.FieldByName('CLIEIMUNICODFED').AsString;
        z0150.FieldByName('ENDERECO').AsString      := Trim(zPesquisa.FieldByName('CLIEA60ENDRES').AsString);
        z0150.FieldByName('END_NUM').AsString       := Trim(zPesquisa.FieldByName('CLIEA5NROENDRES').AsString);
        z0150.FieldByName('BAIRRO').AsString        := Trim(zPesquisa.FieldByName('CLIEA60BAIRES').AsString);
        z0150.FieldByName('COD_SUFRAMA').AsString   := '';
        z0150.FieldByName('COMPLEMENTO').AsString   := '';

        z0150.Post;
      Except on E:Exception do
      begin
        Showmessage('Falha ao Criar Tabela de Participantes (Clientes Nota Fiscal):'+#13+#10+E.Message+#13+#10+'Cliente: '+zPesquisa.FieldByName('CLIEA13ID').AsString);
      end; end;
      zPesquisa.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    end;
  //z0150.Close;
  ProgressGeral.Position := 30;
  {Fim Todos Clientes}

  {Todos Fornecedores}
  zPesquisa.Close;
  zPesquisa.SQL.Text := 'SELECT * FROM FORNECEDOR';
  zPesquisa.Open;
  Progress.Position := 0;
  //Progress.Max := zPesquisa.RecordCount;
  EditTabela.Text := 'Criando - BLOCO 0150 - Todos Fornecedores'; EditTabela.Update;
  //z0150.close;
  //z0150.Open;
  While not zPesquisa.EOF do
    begin
      Try
        //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
        z0150.Append;
        z0150.FieldByName('COD_PART').AsString      := 'F' + zPesquisa.FieldByName('FORNICOD').AsString;
        z0150.FieldByName('COD_FORN').AsString      := zPesquisa.Fieldbyname('FORNICOD').AsString;
        z0150.FieldByName('NOME').AsString          := Trim(zPesquisa.FieldByName('FORNA60RAZAOSOC').AsString) ;
        z0150.FieldByName('COD_PAIS').AsString      := zPesquisa.FieldByName('FORNICODPAIS').AsString;

        if length(zPesquisa.FieldByName('FORNA14CGC').AsString)=14 then
          begin
            z0150.FieldByName('CNPJ').AsString          := zPesquisa.FieldByName('FORNA14CGC').AsString;
            IE                                          := COPY(zPesquisa.FieldByName('FORNA20IE').AsString,0,14);
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            if IE = 'ISENTO' then IE := '';
            z0150.FieldByName('IE').AsString  := Trim(IE);
          end
        else
          begin
            if length(zPesquisa.FieldByName('FORNA11CPF').AsString)=11 then
              z0150.FieldByName('CPF').AsString           := zPesquisa.FieldByName('FORNA11CPF').AsString;
          end;

        z0150.FieldByName('COD_MUN').AsString       := zPesquisa.FieldByName('FORNIMUNICODFED').AsString;
        z0150.FieldByName('ENDERECO').AsString      := Trim(zPesquisa.FieldByName('FORNA60END').AsString);
        z0150.FieldByName('END_NUM').AsString       := zPesquisa.FieldByName('FORNA5NROEND').AsString;
        z0150.FieldByName('BAIRRO').AsString        := Trim(zPesquisa.FieldByName('FORNA60BAI').AsString);
        z0150.FieldByName('COD_SUFRAMA').AsString   := '';
        z0150.FieldByName('COMPLEMENTO').AsString   := '';

        z0150.Post;
      except
        on E:Exception do
          begin
            Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Fiscal):'+#13+#10+E.Message+#13+#10+'Fornecedor: '+zPesquisa.FieldByName('FORNICOD').AsString);
            Exit;
          end;
      end;

      zPesquisa.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    end;
  zPesquisa.Close;
  ProgressGeral.Position := 40;
  {Fim Todos Fornecedores}

  {Gravar no arquivo Participantes pegando da tabela sped_150}
  //z0150.Close;
  //z0150.Open;
  Progress.Position := 0;
  //Progress.Max      := z0150.RecordCount;
  EditTabela.Text := 'Criando - BLOCO 0150 - Gravando COD_PART'; EditTabela.Update;
  While not z0150.EOF do
    begin
      Try
        Linha :=   '|0150|'                                           +      // 01-Registro 0150
        z0150.FieldByName('COD_PART').AsString                        + '|'+ // 02 COD_PART Código de identificação do participante no arquivo. C 060 - S
        trimleft(z0150.FieldByName('NOME').AsString)                  + '|'+ // 03 NOME Nome pessoal ou empresarial do participante. C 100 - S
        z0150.FieldByName('COD_PAIS').AsString                        + '|'+ // 04 COD_PAIS Código do país do participante, conforme a tabela indicada no item 3.2.1.  N  005  - S
        z0150.FieldByName('CNPJ').AsString                            + '|'+ // 05 CNPJ CNPJ do participante. N 014* - N
        z0150.FieldByName('CPF').AsString                             + '|'+ // 06 CPF CPF do participante. N 011* - N
        COPY(z0150.FieldByName('IE').AsString,0,14)                   + '|'+ // 07 IE Inscrição Estadual do participante. C 014 - N
        z0150.FieldByName('COD_MUN').AsString                         + '|'+ // 08 COD_MUN Código do município, conforme a tabela IBGE N 007* - N
        z0150.FieldByName('COD_SUFRAMA').AsString                     + '|'+ // 09 SUFRAMA Número de inscrição do participante na Suframa C 009* - N
        trimleft(z0150.FieldByName('ENDERECO').AsString)              + '|'+ // 10 END Logradouro e endereço do imóvel C 060 - N
        z0150.FieldByName('END_NUM').AsString                         + '|'+ // 11 NUM Número do imóvel C - - N
        trimleft(z0150.FieldByName('COMPLEMENTO').AsString)           + '|'+ // 12 COMPL Dados complementares do endereço C 060 - N
        trimleft(z0150.FieldByName('BAIRRO').AsString)                + '|'; // 13 BAIRRO Bairro em que o imóvel está situado C 060 - N

        if Not GravaRegistros('0150') Then Exit;
        TotalBlocoZero := TotalBlocoZero + 1;

      Except on E:Exception do
      begin
        Showmessage('Falha ao Criar Linha |0150| :'+#13+#10+E.Message+#13+#10+'Participante Cod.: '+z0150.FieldByName('COD_PART').AsString);
        Exit;
      end; end;
      z0150.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    end;
  ProgressGeral.Position := 50;
  ProgressGeral.Update;
  {Final gravar no arquivo 0150}

  {Gravar no arquivo Participantes pegando da tabela unidade}
  EditTabela.Text := 'Criando Registro 0190'; EditTabela.Update;
  z0190.Close;
  z0190.SQL.Text := 'SELECT * FROM UNIDADE';
  z0190.Open;
  Progress.Position := 0;
  //Progress.Max := z0190.RecordCount;
  While not z0190.Eof Do
    begin
      Linha :=   '|0190|'                                                 + // 01-Registro 0190
                 z0190.fieldbyname('UNIDA5DESCR').AsString          + '|' + // 02-Sigla
                 z0190.fieldbyname('UNIDA15DESCR').AsString         + '|' ; // 03-Descrica
      If Not GravaRegistros('0190') Then Begin Exit; End;
      // Sped PisCofins
      Linha2 := Linha;
      If Not GravaRegistros2('0190') Then Begin Exit; End;

      TotalBlocoZero := TotalBlocoZero + 1;
      z0190.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    end;
  z0190.Close;
  ProgressGeral.Position := 60;
  ProgressGeral.Update;
  {Final gravar no arquivo 0190}

  {Gravar registro 0200}
  EditTabela.Text := 'Criando Registro 0200 - '+IntToStr(Progress.Position)+' de '+IntToStr(Progress.Max); EditTabela.Update;

  z0200.close;
  //z0200.RequestLive := True;
  z0200.SQL.Text := 'Select cod_item, selecionado from SPED_0200';
  z0200.open;

  zPesquisa.Close;
  zPesquisa.SQL.Text := 'SELECT PRODICOD FROM PRODUTO WHERE PRODCATIVO=''S'' ';
  zPesquisa.Open;
  Progress.Position := 0;
  //Progress.Max := zPesquisa.RecordCount;
  while not zPesquisa.eof do
    begin
      z0200.Append;
      z0200.FieldByName('COD_ITEM').AsString    := zPesquisa.findfield('PRODICOD').AsString;
      z0200.FieldByName('SELECIONADO').AsString := 'S';
      z0200.Post;
      zPesquisa.next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    end;
  zPesquisa.Close;
  ProgressGeral.Position := 80;
  ProgressGeral.Update;

  z0200.close;
  //z0200.RequestLive := False;
  z0200.SQL.Text := 'Select distinct sped_0200.cod_item,                                    '+
  'produto.proda60descr, produto.proda60codbar, produto.prodcservico, produto.proda2tipoitem, '+
  'produto.proda1tipo, produto.prodn3capacembal, produto.PRODIORIGEM, produto.PRODISITTRIB,   '+
  'produto.PRODA2CSTPIS, produto.PRODA3CSTPISENTRADA, produto.PRODA2CSTCOFINS, produto.PRODA3CSTCOFINSENTRADA, '+
  'produto.PRODN3VLRVENDA, produto.PRODN3PERCIPI, produto.PRODN2ALIQPIS, produto.PRODN2ALIQCOFINS,             '+
  'unidade.unida5descr, unidade.unida15descr, icms.icmsn2aliquota, ncm.ncma30codigo           '+
  'from SPED_0200                                                                             '+
  'left join produto on produto.prodicod = sped_0200.cod_item                                 '+
  'LEFT join ncm on ncm.ncmicod = produto.ncmicod                                             '+
  'left join icms on icms.icmsicod = produto.icmsicod                                         '+
  'left join unidade on unidade.unidicod = produto.unidicod                                   '+
  'Where sped_0200.selecionado = ''S'''                                                        ;
  z0200.open;
  Progress.Position := 0;
  //Progress.Max := z0200.RecordCount;
  while not z0200.Eof do
    begin
      CodProd       := z0200.Fieldbyname('COD_ITEM').AsString;
      CodBarrasProd := z0200.Fieldbyname('COD_ITEM').AsString;
      if CkBarras.Checked and (z0200.FieldByName('PRODA60CODBAR').AsString <>'') then
        CodBarrasProd := z0200.FieldByName('PRODA60CODBAR').AsString;
      Linha :=   '|0200|'                                                                           ; // 01-Registro 0200
                 Linha := Linha + CodProd  + '|' ;      // 02-COD_ITEM

                 Linha := Linha + trimleft(z0200.FieldByName('PRODA60DESCR').AsString)     + '|';      // 03-DESCR_ITEM

                 If ((Copy(CodBarrasProd,0,3) <> '999') and (CodBarrasProd <> '')) and
                 ((Length(Trim(CodBarrasProd)) = 8) or (Length(Trim(CodBarrasProd)) = 12) or
                 (Length(Trim(CodBarrasProd)) = 13) or (Length(Trim(CodBarrasProd)) = 14)) then
                    Linha := Linha + Trim(CodBarrasProd)           + '|'   // 04-COD_BARRA - REPRESENTACAO ALFANUM, SE HOUVER
                 else
                    Linha := Linha + '|'                                 ; // 04-COD_BARRA - REPRESENTACAO ALFANUM, SE HOUVER

                 Linha := Linha                                    + '|' + // 05-COD_ANT_ITEM - Código anterior do item com relação à última informação apresentada.
                 z0200.FieldByName('UNIDA5DESCR').AsString         + '|' + // 06-UNID_INV
                 z0200.FieldByName('PRODA2TIPOITEM').AsString      + '|' + // 07-TIPO_ITEM - 00 – Mercadoria para Revenda; 01 – Matéria-Prima; 02 – Embalagem; 03 – Produto em Processo; 04 – Produto Acabado;
                 TRIM(z0200.FieldByName('ncma30codigo').AsString)  + '|' + // 08-COD_NCM
                                                                     '|' ; // 09-EX_IPI - Código EX, conforme a TIPI

                 if z0200.FieldByName('PRODCSERVICO').AsString = 'S' then
                    Linha := Linha + '00' + '|' + // 10-COD_GEN - Código do gênero do item, conforme a Tabela 4.2.1
                                            '|' +
                   z0200.FieldByName('ICMSN2ALIQUOTA').AsString    + '|'  // 12-ALIQ_ICMS
                 else
                    Linha := Linha + Copy(Trim(z0200.FieldByName('ncma30codigo').AsString),0,2) + '|' + // 10-COD_GEN - Código do gênero do item, conforme a Tabela 4.2.1
                                                        '|' + // 11-COD_LST - serviço cfme Anexo I da Lei Compl Fed nº 116/03.
                 z0200.FieldByName('ICMSN2ALIQUOTA').AsString    + '|' ; // 12-ALIQ_ICMS

      If Not GravaRegistros('0200') Then Begin Exit; End;
      // Sped PisCofins
      Linha2 := Linha;
      If Not GravaRegistros2('0200') Then Begin Exit; End;

      z0200.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    end;
  ProgressGeral.Position := 100;
  ProgressGeral.Update;
  {Final gravar no arquivo 0200}

  CloseFile(Arquivo);
  Progress.Position  := 0;
  Progress.Update;
  ProgressGeral.Position := 0;
  ProgressGeral.Update;
  BtExecutar.Enabled := True;
  btExportaCadastros.Enabled := True;
  de.Enabled  := True;
  ate.Enabled := True;

  ShowMessage('Geração Concluida!');
end;

procedure TFormTelaExportacaoSped.z0200AfterPost(DataSet: TDataSet);
begin
  inherited;
  z0200.ApplyUpdates;
end;

procedure TFormTelaExportacaoSped.z0190AfterPost(DataSet: TDataSet);
begin
  inherited;
  z0190.ApplyUpdates;
end;

procedure TFormTelaExportacaoSped.SQLC490AfterPost(DataSet: TDataSet);
begin
  inherited;
  SQLC490.ApplyUpdates;
end;

procedure TFormTelaExportacaoSped.ZRegC490AfterPost(DataSet: TDataSet);
begin
  inherited;
  ZRegC490.ApplyUpdates;
end;

procedure TFormTelaExportacaoSped.z0150AfterPost(DataSet: TDataSet);
begin
  inherited;
  z0150.ApplyUpdates;
end;

end.


