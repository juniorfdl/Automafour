unit CadastroProdutoRapido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EDBNum, RxLookup, StdCtrls, Mask, DBCtrls, Buttons, Math,
  AdvOfficeStatusBar, ExtCtrls, AdvOfficeStatusBarStylers, DB, DBTables,
  RxQuery, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormCadastroProdutoRapido = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    LabelGravar: TSpeedButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    ComboUnidade: TRxDBLookupCombo;
    Label34: TLabel;
    ComboICMS: TRxDBLookupCombo;
    DBEditVlrCompra: TEvDBNumEdit;
    DBIPICompra: TEvDBNumEdit;
    DBSubsttrib: TEvDBNumEdit;
    DBFreteProduto: TEvDBNumEdit;
    DBDespDiv: TEvDBNumEdit;
    DBDIFICM: TEvDBNumEdit;
    DBEditVlrVenda: TEvDBNumEdit;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBMgFixaVarejo: TEvDBNumEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit37: TEvDBNumEdit;
    Label13: TLabel;
    Label14: TLabel;
    DSTemplate: TDataSource;
    SQLTemplate: TRxQuery;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplatePRODA30ADESCRREDUZ: TStringField;
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGRTMICOD: TIntegerField;
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplateCLFSICOD: TIntegerField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplateMARCICOD: TIntegerField;
    SQLTemplateGRUPICOD: TIntegerField;
    SQLTemplateSUBGICOD: TIntegerField;
    SQLTemplateVARIICOD: TIntegerField;
    SQLTemplatePRODICODPAI: TIntegerField;
    SQLTemplatePRODCTIPOBAIXA: TStringField;
    SQLTemplatePRODA60CODBAR: TStringField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLTemplatePRODICODBALANCA: TIntegerField;
    SQLTemplatePRODA15APAVIM: TStringField;
    SQLTemplatePRODA15RUA: TStringField;
    SQLTemplatePRODA15PRATEL: TStringField;
    SQLTemplatePRODN3PESOBRUTO: TBCDField;
    SQLTemplatePRODN3PESOLIQ: TBCDField;
    SQLTemplatePRODN3CAPACEMBAL: TBCDField;
    SQLTemplatePRODDCAD: TDateTimeField;
    SQLTemplatePRODDULTALTER: TDateTimeField;
    SQLTemplatePRODDINIPROMO: TDateTimeField;
    SQLTemplatePRODDFIMPROMO: TDateTimeField;
    SQLTemplatePRODN2COMISVISTA: TBCDField;
    SQLTemplatePRODN3VLRCOMPRA: TBCDField;
    SQLTemplatePRODN3VLRCOMPRAMED: TBCDField;
    SQLTemplatePRODN3VLRCUSTO: TBCDField;
    SQLTemplatePRODDIMOBOLIZ: TDateTimeField;
    SQLTemplatePRODN3VLRVENDA: TBCDField;
    SQLTemplatePRODN3QTDEBAIXA: TBCDField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplatePRODN3VLRVENDAPROM: TBCDField;
    SQLTemplatePRODN3VLRCUSTOMED: TBCDField;
    SQLTemplatePRODN3PERCIPI: TBCDField;
    SQLTemplatePRODN3PERCMARGLUCR: TBCDField;
    SQLTemplatePRODCATIVO: TStringField;
    SQLTemplatePRODCSERVICO: TStringField;
    SQLTemplatePRODCGERACOMIS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePRODN2COMISPRAZO: TBCDField;
    SQLTemplatePRODIORIGEM: TIntegerField;
    SQLTemplatePRODDULTATUALIZ: TDateTimeField;
    SQLTemplatePRODA60DIMENSAO: TStringField;
    SQLTemplatePRODISITTRIB: TIntegerField;
    SQLTemplatePRODICODETIQBAL: TIntegerField;
    SQLTemplatePRODIDIASVALIDADE: TIntegerField;
    SQLTemplatePRODN3DOLARCUSTO: TBCDField;
    SQLTemplatePRODN3DOLARCOMPRA: TBCDField;
    SQLTemplatePRODN3DOLARVENDA: TBCDField;
    SQLTemplatePRODITIPOPRODBALAN: TStringField;
    SQLTemplatePRODBIMAGEM: TBlobField;
    SQLTemplatePRODCSUBSTRIB: TStringField;
    SQLTemplatePRODCTEMNROSERIE: TStringField;
    SQLTemplatePRODN2PERCFRETE: TBCDField;
    SQLTemplatePRODA03GARANTIA: TStringField;
    SQLTemplatePRODA30INF01ETQBARRAS: TStringField;
    SQLTemplatePRODA30INF02ETQBARRAS: TStringField;
    SQLTemplateCOLEICOD: TIntegerField;
    SQLTemplatePRODCTIPO: TStringField;
    SQLTemplatePRODN2PERDA: TBCDField;
    SQLTemplatePRODN2PIS: TBCDField;
    SQLTemplatePRODN3ALTURA: TBCDField;
    SQLTemplatePRODN3COMPRIMENTO: TBCDField;
    SQLTemplatePRODN3DIMENTOTAL: TBCDField;
    SQLTemplatePRODN3LARGURA: TBCDField;
    SQLTemplatePRODN2PERCDESP: TBCDField;
    SQLTemplatePRODN2PERCSUBST: TBCDField;
    SQLTemplatePRODN3PERCMARGLUC2: TBCDField;
    SQLTemplatePRODN3PERCMGLVFIXA: TBCDField;
    SQLTemplatePRODN3PERCMGLAFIXA: TBCDField;
    SQLTemplatePRODDULTCOMPRA: TDateTimeField;
    SQLTemplatePRODDULTVENDA: TDateTimeField;
    SQLTemplatePRODN3QTDULTCOMPRA: TBCDField;
    SQLTemplatePRODN2PERCDIFICM: TBCDField;
    SQLTemplatePRODIPRINCIPAL: TIntegerField;
    SQLTemplatePRODCPERMITETROCA: TStringField;
    SQLTemplatePRODDPREVCOMPRA: TDateTimeField;
    SQLTemplatePRODCCOFINS: TStringField;
    SQLTemplatePRODN3VLRVENDA2: TBCDField;
    SQLTemplatePRODCIMPETIQCDBAR: TStringField;
    SQLTemplatePRODN3QTDVOLUME: TBCDField;
    SQLTemplatePRODCVDESTNEG: TStringField;
    SQLTemplatePRODA2CSTIPI: TStringField;
    SQLTemplatePRODA2CSTCOFINS: TStringField;
    SQLTemplatePRODA2CSTPIS: TStringField;
    SQLTemplatePRODN2ALIQCOFINS: TBCDField;
    SQLTemplatePRODN2ALIQPIS: TBCDField;
    SQLTemplatePRODCBLOQVPRAZO: TStringField;
    SQLTemplateNCMICOD: TIntegerField;
    SQLTemplatePRODA1TIPO: TStringField;
    SQLTemplatePRODA1MODBCST: TStringField;
    SQLTemplatePRODA1MODBC: TStringField;
    SQLTemplatePRODN2DESCMAX: TBCDField;
    SQLTemplatePRODA20BARRAUNIDADE: TStringField;
    SQLTemplatePRODA2TIPOITEM: TStringField;
    SQLTemplatePRODA30COZINHA: TStringField;
    SQLTemplatePRODCIMPCOZINHA: TStringField;
    SQLTemplatePRODCIMPVALE: TStringField;
    SQLTemplatePRODA3CSTIPIENTRADA: TStringField;
    SQLTemplatePRODA3CSTCOFINSENTRADA: TStringField;
    SQLTemplatePRODA3CSTPISENTRADA: TStringField;
    SQLTemplatePRODN2PERCIPIENTRADA: TBCDField;
    SQLTemplatePRODA1CSTSERVICO: TStringField;
    SQLTemplatePRODICODLISTASERVICO: TIntegerField;
    SQLTemplateUNIDICOD2: TIntegerField;
    SQLTemplatePRODCRAPIDO: TStringField;
    SQLTemplatePRODCMIX: TStringField;
    SQLTemplatePRODN3QTDVENDA2835D: TBCDField;
    SQLTemplatePRODN3QTDVENDA283542D: TBCDField;
    SQLTemplatePRODN2VLRVENDA2835D: TBCDField;
    SQLTemplatePRODN2VLRVENDA283542D: TBCDField;
    DSSQLUnidade: TDataSource;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadeUNIDA15DESCR: TStringField;
    DSSQLIcms: TDataSource;
    SQLIcms: TRxQuery;
    SQLIcmsICMSICOD: TIntegerField;
    SQLIcmsICMSA60DESCR: TStringField;
    SQLIcmsICMSN2ALIQUOTA: TBCDField;
    SQLIcmsICMSICODSITTRIB: TIntegerField;
    zProdutoFornecedor: TZQuery;
    DSSQLMarca: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    Label1: TLabel;
    ComboMarca: TRxDBLookupCombo;
    Label15: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    SQLTemplatePRODA255DESCRTEC: TMemoField;
    lbMarcaAdd: TLabel;
    lbGrupoAdd: TLabel;
    sqlMax: TRxQuery;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    Label17: TLabel;
    DBEditCST: TDBEdit;
    SQLProdutoSaldoNovo: TRxQuery;
    SQLProdutoSaldoNovoEMPRICOD: TIntegerField;
    SQLProdutoSaldoNovoPRODICOD: TIntegerField;
    SQLProdutoSaldoNovoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoNovoPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoNovoPSLDN3QTDMAX: TBCDField;
    SQLProdutoSaldoNovoPENDENTE: TStringField;
    SQLProdutoSaldoNovoREGISTRO: TDateTimeField;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLTemplatePRODN2MGVENDA283542D: TBCDField;
    SQLTemplatePRODN2MGVENDA2835D: TBCDField;
    SQLTemplateTABCEST: TStringField;
    SQLProdutoPdvs: TRxQuery;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure LabelGravarClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure SQLTemplatePRODN3VLRCOMPRAChange(Sender: TField);
    procedure SQLTemplatePRODN3PERCMGLVFIXAChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbMarcaAddClick(Sender: TObject);
    procedure lbGrupoAddClick(Sender: TObject);
    procedure ComboICMSExit(Sender: TObject);
    procedure SQLTemplatePRODN3CAPACEMBALChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function EnviaProdutoPDVs(Tipo : string) : boolean;
    procedure addMarca;
    procedure addGrupo;
  public
    { Public declarations }
    CdFornec, CdReferencia : string;
    vCompraEmbalagem, vDescEmbalagem : Double;
  end;

var
  FormCadastroProdutoRapido: TFormCadastroProdutoRapido;

implementation

uses DataModulo ;

{$R *.dfm}

procedure TFormCadastroProdutoRapido.FormCreate(Sender: TObject);
begin
  sqlMarca.Open;
  sqlGrupo.Open;
  sqlunidade.Open;
  SQLIcms.Open;
  SQLTemplate.Open;
  SQLTemplate.Append;
end;

procedure TFormCadastroProdutoRapido.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  SQLTemplatePRODCATIVO.asString          := 'S';
  SQLTemplatePRODCPERMITETROCA.asString   := 'S';
  SQLTemplatePRODCGERACOMIS.asString      := 'S';
  SQLTemplatePRODCIMPETIQCDBAR.AsString   := 'S';
  SQLTemplatePRODCSERVICO.asString        := 'N';
  SQLTemplatePRODCTIPOBAIXA.asString      := 'P';
  SQLTemplatePRODCTEMNROSERIE.AsString    := 'N';
  SQLTemplatePRODA1TIPO.AsString          := '0';
  SQLTemplatePRODN2DESCMAX.asFloat        := 0;
  SQLTemplatePRODN3QTDEBAIXA.asFloat      := 0;
  SQLTemplatePRODN3PESOBRUTO.asFloat      := 0;
  SQLTemplatePRODN3PESOLIQ.asFloat        := 0;
  SQLTemplatePRODN3CAPACEMBAL.asFloat     := 1;
  SQLTemplatePRODN3VLRCOMPRA.asFloat      := 0;
  SQLTemplatePRODN3VLRCOMPRAMED.asFloat   := 0;
  SQLTemplatePRODN3VLRCUSTO.asFloat       := 0;
  SQLTemplatePRODN3VLRCUSTOMED.asFloat    := 0;
  SQLTemplatePRODN3VLRVENDA.asFloat       := 0;
  SQLTemplatePRODN3VLRVENDA2.asFloat      := 0;
  SQLTemplatePRODN2VLRVENDA2835D.asFloat  := 0;
  SQLTemplatePRODN2VLRVENDA283542D.asFloat:= 0;
  SQLTemplatePRODN3VLRVENDAPROM.asFloat   := 0;
  SQLTemplatePRODN3PERCMARGLUCR.asFloat   := 0;
  SQLTemplatePRODN3PERCMARGLUC2.asFloat   := 0;
  SQLTemplatePRODN3PERCMGLVFIXA.asFloat   := 0;
  SQLTemplatePRODN3PERCMGLAFIXA.asFloat   := 0;
  SQLTemplatePRODN2MGVENDA2835D.asFloat   := 0;
  SQLTemplatePRODN2MGVENDA283542D.asFloat := 0;
  sqltemplatePRODN2PERCIPIENTRADA.value   := 0;
  SQLTemplatePRODN3PERCIPI.asFloat        := 0;
  SQLTemplatePRODN2COMISVISTA.asFloat     := 0;
  SQLTemplatePRODN2COMISPRAZO.asFloat     := 0;
  SQLTemplatePRODITIPOPRODBALAN.AsInteger := 0;
  SQLTemplatePRODN2PERCDESP.Value         := 0;
  SQLTemplatePRODN2PERCDIFICM.Value       := 0;
  SQLTemplatePRODN2PERCSUBST.Value        := 0;
  SQLTemplatePRODN2PERCFRETE.Value        := 0;
  SQLTemplatePRODN3QTDVOLUME.Value        := 1;
  SQLTemplatePRODDCAD.asDateTime          := Date;
  SQLTemplatePRODCMIX.Value               := 'D';
  SQLTemplatePRODCCOFINS.Value            := 'N';
  SQLTemplatePRODCVDESTNEG.Value          := 'S';
  SQLTemplatePRODA2TIPOITEM.AsString      := '00';
  SQLTemplatePENDENTE.AsString            := 'S';
  SQLTemplateREGISTRO.AsDateTime          :=  now;
  SQLTemplatePRODA255DESCRTEC.AsString    :=  'Cadastro incluído automaticamente, através de arquivo XML (NFe). Remover essa informação após revisar esse cadastro.';

  if DM.SQLEmpresa.fieldbyname('EMPRA3CRT').value <> '3' then
    begin
      {Empresas do Simples}
      sqltemplatePRODIORIGEM.Value                 := 0;
      sqltemplatePRODISITTRIB.value                := 102;
      sqltemplatePRODA1MODBC.asstring              := '0';
      sqltemplatePRODA1MODBCST.asstring            := '4';
      sqltemplatePRODA2CSTIPI.asstring             := '52';
      sqltemplatePRODA3CSTIPIENTRADA.asstring      := '02';
      sqltemplatePRODN3PERCIPI.value               := 0;
      sqltemplatePRODN2PERCIPIENTRADA.value        := 0;
      sqltemplatePRODA2CSTPIS.asstring             := '49';
      sqltemplatePRODA3CSTPISENTRADA.asstring      := '99';
      sqltemplatePRODN2ALIQPIS.value               := 0;
      sqltemplatePRODA2CSTCOFINS.asstring          := '49';
      sqltemplatePRODA3CSTCOFINSENTRADA.asstring   := '99';
      sqltemplatePRODN2ALIQCOFINS.value            := 0;
      sqltemplatePRODA1TIPO.asstring               := '0';
      sqltemplatePRODA2TIPOITEM.asstring           := '00';
    end;
end;

procedure TFormCadastroProdutoRapido.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  DM.CodigoAutomatico('PRODUTO', DSTemplate, SQLTemplate, 0, 0);
  SQLTemplatePRODIAGRUPGRADE.Value := SQLTemplatePRODICOD.Value;
  SQLTemplatePRODIPRINCIPAL.Value  := SQLTemplatePRODICOD.Value;
end;

procedure TFormCadastroProdutoRapido.LabelGravarClick(Sender: TObject);
var erro : boolean;
begin
  SQLTemplatePRODN3PERCMARGLUCR.Value := sqltemplatePRODN3PERCMGLVFIXA.Value;

  if ComboUnidade.Value = '' then
    begin
      showmessage('Unidade de Venda não informada!');
      exit;
    end;
  if ComboICMS.Value = '' then
    begin
      showmessage('ICMS de Venda não informado!');
      exit;
    end;

  if (SQLTemplatePRODN3CAPACEMBAL.IsNull) or (SQLTemplatePRODN3CAPACEMBAL.Value = 0) then
    begin
      showmessage('Capacidade da Embalagem deve ser maior que zero');
      exit;
    end;

  if (SQLTemplatePRODISITTRIB.IsNull) then
    begin
      showmessage('CST Icms campo obrigatorio!');
      exit;
    end;

  try
    sqltemplate.Post;
    erro := False;
  except
    ShowMessage('Erro ao Gravar o Produto! Verifique!');
    application.ProcessMessages;
    erro := True;
  end;

  if not erro then
    begin
      EnviaProdutoPDVs('N');

      If Not SQLEmpresa.Active Then SQLEmpresa.Open;
      If Not SQLProdutoSaldoNovo.Active Then SQLProdutoSaldoNovo.Open;
      SQLEmpresa.First;
      While Not SQLEmpresa.Eof Do
        Begin
          if SQLEmpresaEMPRICOD.asInteger > 0 then
            begin
              SQLProdutoSaldoNovo.Append;
              SQLProdutoSaldoNovoEMPRICOD.asInteger   := SQLEmpresaEMPRICOD.asInteger;
              SQLProdutoSaldoNovoPRODICOD.asInteger   := sqltemplateprodicod.AsInteger;
              SQLProdutoSaldoNovoPSLDN3QTDE.asFloat   := 0;
              SQLProdutoSaldoNovoPSLDN3QTDMAX.asFloat := 0;
              SQLProdutoSaldoNovoPSLDN3QTDMIN.asFloat := 0;
              SQLProdutoSaldoNovo.Post;
            end;  
          SQLEmpresa.Next;
        End;

      zProdutoFornecedor.Close;
      zProdutoFornecedor.Open;
      zProdutoFornecedor.Append;
      zProdutoFornecedor.fieldbyname('PRODICOD').AsString          := sqltemplatePRODICOD.AsString;
      zProdutoFornecedor.fieldbyname('FORNICOD').AsString          := CdFornec;
      zProdutoFornecedor.fieldbyname('PRFOA30REFERENCIA').AsString := CdReferencia;
      zProdutoFornecedor.fieldbyname('PENDENTE').AsString          := 'S';
      zProdutoFornecedor.fieldbyname('REGISTRO').AsDateTime        :=  now;
      zProdutoFornecedor.Post;
    end;

  Close;
end;

procedure TFormCadastroProdutoRapido.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroProdutoRapido.SQLTemplatePRODN3VLRCOMPRAChange(
  Sender: TField);
var somanocusto, CustoIPI, CustoST, CustoFrete, CustoDespesas, CustoDifIcms, CustoEncargos : Extended;
begin
  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') Then
    begin
      if Dm.SQLConfigGeral.fieldbyname('CFGECTIPOMARGLUCRO').AsString = 'L' then
        begin
          if Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat > 0 then
            CustoEncargos := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat/100)
          else
            CustoEncargos := 0;

          if SQLTemplate.FindField('PRODN2PERCSUBST').asFloat > 0 then
            CustoST       := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCSUBST').asFloat/100)
          else
            CustoST       := 0;

          if SQLTemplate.FindField('PRODN2PERCIPIENTRADA').asFloat > 0 then
            CustoIPI      := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCIPIENTRADA').asFloat/100)
          else
            CustoIPI      := 0;

          if SQLTemplate.FindField('PRODN2PERCFRETE').asFloat > 0 then
            CustoFrete    := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCFRETE').asFloat/100)
          else
            CustoFrete    := 0;

          if SQLTemplate.FindField('PRODN2PERCDESP').asFloat > 0 then
            CustoDespesas := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCDESP').asFloat/100)
          else
            CustoDespesas := 0;

          if SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat > 0 then
            CustoDifIcms  := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat/100)
          else
           CustoDifIcms  := 0;

          SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat +
                                                             CustoST + CustoIPI + CustoFrete + CustoDespesas + CustoDifIcms + CustoEncargos;
         {NAO Entra no calculo do Custo do Produto nem o PIS nem o Cofins}

          SQLTemplate.FindField('PRODN3VLRVENDA').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat/100));
        end
      else
        begin
          SQLTemplate.FieldByName('PRODN3VLRVENDA').asFloat := RoundTo(SQLTemplate.FindField('PRODN3VLRCUSTO').AsFloat * (1+(SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat/100)), -2);
        end;
    end;
end;

procedure TFormCadastroProdutoRapido.SQLTemplatePRODN3PERCMGLVFIXAChange(
  Sender: TField);
begin
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;

  SQLTemplate.FindField('PRODN3VLRVENDA').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat/100));

  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='M') AND (SQLTemplate.FindField('PRODN3VLRCUSTOMEDIO').asFloat>0) Then
    begin
      SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := ((SQLTemplate.FindField('PRODN3VLRVENDA').asFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTOMEDIO').asFloat) - 1) * 100;
    end;
  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') AND (Sender.DataSet.FindField('PRODN3VLRCUSTO').asFloat>0) Then
    begin
      SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := ((SQLTemplate.FindField('PRODN3VLRVENDA').asFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTO').asFloat) - 1) * 100;
    end;
end;

procedure TFormCadastroProdutoRapido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFormCadastroProdutoRapido.addMarca;
var cod: integer;
var Marca : string;
begin
  Marca := UpperCase(InputBox('Adiciona Marca','Marca',Marca));
  sqlmax.Close;
  sqlmax.SQL.clear;
  sqlmax.SQL.Text := 'Select Max(MARCICOD) from marca';
  sqlmax.Open;
  try
    cod := sqlmax.FieldByName('MAX').AsInteger + 1;
  except
    cod := 1;
  end;
  sqlmarca.Append;
  SQLMarcaMARCICOD.Value     := cod;
  SQLMarcaMARCA60DESCR.Value := Marca;
  sqlmarca.post;
  sqlmarca.close;
  sqlmarca.Open;
  comboMarca.KeyValue := Cod;
  ComboMarca.SetFocus;
end;

procedure TFormCadastroProdutoRapido.addGrupo;
var cod: integer;
var Grupo : string;
begin
  Grupo := UpperCase(InputBox('Adiciona Grupo','Grupo',Grupo));
  sqlmax.Close;
  sqlmax.SQL.clear;
  sqlmax.SQL.Text := 'Select Max(grupicod) from grupo';
  sqlmax.Open;
  try
    cod := sqlmax.FieldByName('MAX').AsInteger + 1;
  except
    cod := 1;
  end;
  sqlGrupo.Append;
  SQLGrupoGRUPICOD.Value     := cod;
  SQLGrupoGRUPA60DESCR.Value := Grupo;
  SQLGrupo.post;
  SQLGrupo.close;
  SQLGrupo.Open;
  combogrupo.KeyValue := Cod;
  ComboGrupo.SetFocus;
end;

procedure TFormCadastroProdutoRapido.ComboMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 43 then addMarca;
  if Key = 13 then
    begin
      If ComboMarca.IsDropDown Then
        Begin
          ComboMarca.CloseUp(True);
          Application.ProcessMessages;
        End;
    end;
end;

procedure TFormCadastroProdutoRapido.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 43 then addGrupo;
end;

procedure TFormCadastroProdutoRapido.lbMarcaAddClick(Sender: TObject);
begin
  addMarca;
end;

procedure TFormCadastroProdutoRapido.lbGrupoAddClick(Sender: TObject);
begin
  addGrupo;
end;

procedure TFormCadastroProdutoRapido.ComboICMSExit(Sender: TObject);
begin
  if not SQLIcmsICMSICODSITTRIB.IsNull then
     SQLTemplatePRODISITTRIB.Value := SQLIcmsICMSICODSITTRIB.Value ;
end;

procedure TFormCadastroProdutoRapido.SQLTemplatePRODN3CAPACEMBALChange(
  Sender: TField);
begin
  SQLTemplatePRODN3VLRCOMPRA.AsFloat := (vCompraEmbalagem/SQLTemplatePRODN3CAPACEMBAL.Value) - (vDescEmbalagem/SQLTemplatePRODN3CAPACEMBAL.Value);
end;

procedure TFormCadastroProdutoRapido.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    Perform(Wm_NextDlgCtl,0,0);
end;

function TFormCadastroProdutoRapido.EnviaProdutoPDVs(Tipo : string) : boolean ;
var i : integer;
begin
  {Atualiza a tabela ProdutoPDVs}

  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from Terminal where TERMCTIPO = "C"';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
    begin
      while not dm.sqlconsulta.eof do
        begin
          SQLProdutoPdvs.close;
          SQLProdutoPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+SQLTemplatePRODICOD.AsString+' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.Open;
          if SQLProdutoPdvs.IsEmpty then
            SQLProdutoPdvs.append
          else
            SQLProdutoPdvs.edit;

          {Alimenta Campos}
          SQLProdutoPdvs.FieldByName('TERMICOD').AsString := dm.SQLConsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.FieldByName('PRODICOD').AsString := SQLTemplatePRODICOD.AsString;
          SQLProdutoPdvs.FieldByName('EXCLUIR').AsString  := Tipo;

          SQLProdutoPdvs.Post;

          {PULA Terminal}
          dm.sqlconsulta.next;
        end;
    end;

  {fecha terminal}
  dm.sqlconsulta.Close;
end;

end.

