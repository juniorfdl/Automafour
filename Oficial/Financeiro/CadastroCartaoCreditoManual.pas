unit CadastroCartaoCreditoManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls, ToolEdit, RXDBCtrl, EDBNum, VarSYS, FormResources,
  RxDBComb, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroCartaoCreditoManual = class(TFormCadastroTEMPLATE)
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCUPOICOD: TIntegerField;
    SQLTemplateCUPODEMIS: TDateTimeField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCONVICOD: TIntegerField;
    SQLTemplateCUPOCSTATUS: TStringField;
    SQLTemplateCUPON2TOTITENS: TFloatField;
    SQLTemplateCUPON2DESC: TFloatField;
    SQLTemplateCUPON2ACRESC: TFloatField;
    SQLTemplateCUPON2TOTITENSRET: TFloatField;
    SQLTemplateCUPOINRO: TIntegerField;
    SQLTemplateCUPOCTIPOPADRAO: TStringField;
    SQLTemplateCUPON2CONVTAXA: TFloatField;
    SQLTemplateCUPOINROORDCOMPRA: TIntegerField;
    SQLTemplateCUPOA13IDTROCA: TStringField;
    SQLTemplateCUPON2VLRCOMISSAO: TFloatField;
    SQLTemplateCUPOA20CODANT: TStringField;
    SQLTemplateCUPODCANC: TDateTimeField;
    SQLTemplateCUPON2JUROATRAS: TFloatField;
    SQLTemplateCUPON2MULTAATRAS: TFloatField;
    SQLTemplateCUPODPAGTOCONSIG: TDateTimeField;
    SQLTemplateCUPON3BONUSTROCA: TFloatField;
    SQLTemplateCUPODENTREGA: TDateTimeField;
    SQLTemplateTPVDICOD: TIntegerField;
    SQLTemplateUSUAICODCANC: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCUPON3CREDTAXA: TFloatField;
    SQLTemplateCUPOCCONSIG: TStringField;
    SQLTemplateCUPOV254OBS: TStringField;
    SQLTemplateCUPOA30DATACARTAO: TStringField;
    SQLTemplateCUPOA30HORACARTAO: TStringField;
    SQLTemplateCUPOA30NSUPROVEDOR: TStringField;
    SQLTemplateCUPOA30NSUINSTITUICAO: TStringField;
    SQLTemplateCUPON2DESCITENS: TFloatField;
    SQLTemplateCATCA13ID: TStringField;
    SQLTemplateAVALA13ID: TStringField;
    SQLTemplateCFOPA5COD: TStringField;
    SQLTemplateCUPOA13IDCUPNEG: TStringField;
    SQLTemplateCUPODQUITACAO: TDateTimeField;
    SQLTemplateCUPON2BASEICMS: TFloatField;
    SQLTemplateCUPON2VLRICMS: TFloatField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplatePLCTA15CODCRED: TStringField;
    SQLTemplatePLCTA15CODDEB: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    ComboClienteCad: TRxDBLookupCombo;
    BtnCliente: TSpeedButton;
    DSSQLEmpresa: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    EditValor: TEvDBNumEdit;
    Label5: TLabel;
    Label10: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label4: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    Label6: TLabel;
    Label7: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    Label8: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel9: TPanel;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    ComboVendedor: TRxDBLookupCombo;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Comboplano: TRxDBLookupCombo;
    DSSQLPlano: TDataSource;
    SQLPlano: TRxQuery;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
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
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCTRCCTEMREGRECEBER: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberCONTA13ID: TStringField;
    SQLContasReceberCTRCA13CTRCAIDCHQ: TStringField;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    DSSQLContasReceber: TDataSource;
    DBGrid2: TDBGrid;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    Label16: TLabel;
    DTVencto: TDBDateEdit;
    Label17: TLabel;
    EvDBNumEdit5: TEvDBNumEdit;
    Label18: TLabel;
    DBEdit9: TDBEdit;
    ComboNumerario: TRxDBLookupCombo;
    SQLNumerario: TRxQuery;
    DSSQLNumerario: TDataSource;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    BTParcNovo: TBitBtn;
    BtParcGravar: TBitBtn;
    BtParcExcluir: TBitBtn;
    Label19: TLabel;
    EditParc: TDBEdit;
    ComboTipoVenda: TRxDBComboBox;
    Label20: TLabel;
    ComboStatus: TRxDBComboBox;
    Label21: TLabel;
    procedure ComboClienteCadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnClienteClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BTParcNovoClick(Sender: TObject);
    procedure BtParcExcluirClick(Sender: TObject);
    procedure BtParcGravarClick(Sender: TObject);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCartaoCreditoManual: TFormCadastroCartaoCreditoManual;

implementation

uses DataModulo, DataModuloTemplate, TelaConsultaEmpresa, CadastroCliente, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroCartaoCreditoManual.ComboClienteCadKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    BtnCliente.Click;
end;

procedure TFormCadastroCartaoCreditoManual.BtnClienteClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID' ;
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroCartaoCreditoManual.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateCUPOCSTATUS.Value          := 'A';
  SQLTemplateCUPOCTIPOPADRAO.Value      := 'CRT';
  SQLTemplateCUPON2TOTITENS.Value       := 0;
  SQLTemplateCUPON2DESC.Value           := 0;
  SQLTemplateCUPON2ACRESC.Value         := 0;
  SQLTemplateCUPON2TOTITENSRET.Value    := 0;
  SQLTemplateCUPOINRO.Value             := 0;
  SQLTemplateCUPOINROORDCOMPRA.Value    := 0;
  SQLTemplateCUPON2CONVTAXA.Value       := 0;
  SQLTemplateCUPON2VLRCOMISSAO.Value    := 0;
  SQLTemplateCUPON2JUROATRAS.Value      := dm.SQLConfigCrediario.fieldbyname('CFCRN2PERCJURATRAS').Value;
  SQLTemplateCUPON2MULTAATRAS.Value     := dm.SQLConfigCrediario.fieldbyname('CFCRN2PERCMULATRAS').Value;
  SQLTemplateCUPON3BONUSTROCA.Value     := 0;
  SQLTemplateCUPON3CREDTAXA.Value       := 0;
  SQLTemplateCUPOCCONSIG.Value          := 'N';
  SQLTemplateCUPON2DESCITENS.Value      := 0;
  SQLTemplateCFOPA5COD.Value            := dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',dm.SQLConfigVenda.fieldbyname('OPESICODCUPOM').asString);            
  SQLTemplateCUPODEMIS.Value            := DM.DataBaseSistema;
  SQLTemplateCUPOA30DATACARTAO.AsString := FormatDateTime('dd/mm/yyyy',DM.DataBaseSistema);
end;

procedure TFormCadastroCartaoCreditoManual.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLContasReceberEMPRICOD.Value            := SQLTemplateEMPRICOD.Value;
  SQLContasReceberTERMICOD.Value            := SQLTemplateTERMICOD.Value;
  SQLContasReceberCUPOA13ID.Value           := SQLTemplateCUPOA13ID.Value;
  SQLContasReceberCTRCDEMIS.Value           := SQLTemplateCUPODEMIS.Value ;
  SQLContasReceberCLIEA13ID.Value           := SQLTemplateCLIEA13ID.Value ;
  SQLContasReceberCTRCA5TIPOPADRAO.Value    := SQLTemplateCUPOCTIPOPADRAO.Value;
  SQLContasReceberCTRCN2VLR.Value           := 0   ;
  SQLContasReceberCTRCN2DESCFIN.Value       := 0   ;
  SQLContasReceberCTRCN2TXJURO.Value        := dm.SQLConfigCrediario.fieldbyname('CFCRN2PERCJURATRAS').Value;
  SQLContasReceberCTRCN2TXMULTA.Value       := dm.SQLConfigCrediario.fieldbyname('CFCRN2PERCMULATRAS').Value;
  SQLContasReceberCTRCN2TOTREC.Value        := 0   ;
  SQLContasReceberCTRCN2TOTJUROREC.Value    := 0   ;
  SQLContasReceberCTRCN2TOTMULTAREC.Value   := 0   ;
  SQLContasReceberCTRCN2TOTDESCREC.Value    := 0   ;
  SQLContasReceberCTRCN2TOTMULTACOBR.Value  := 0   ;
  SQLContasReceberCTRCCSTATUS.Value         := 'A' ;

  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  SQLContasReceberCTRCCTIPOREGISTRO.Value   := 'N';
  SQLContasReceberCTRCCEMITIDOBOLETO.Value  := 'N' ;
end;

procedure TFormCadastroCartaoCreditoManual.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CUPOM';
  SQLEmpresa.Open;
  SQLCliente.Open;
  SQLVendedor.Open;
  SQLPlano.Open;
  SQLContasReceber.Open;
  SQLNumerario.Open;
end;

procedure TFormCadastroCartaoCreditoManual.BTParcNovoClick(
  Sender: TObject);
begin
  inherited;
  if (SQLTemplateCUPOCSTATUS.Value = 'A') or (SQLTemplateCUPOCSTATUS.Value = 'N') then
    begin
      try
        SQLTemplate.Post;
      except
        Application.ProcessMessages;
      end;
      SQLContasReceber.Append;
      EditParc.SetFocus;
    end
  else
    ShowMessage('Esta Venda está bloqueada! Não é permitido incluir parcela!');
end;

procedure TFormCadastroCartaoCreditoManual.BtParcExcluirClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplateCUPOCSTATUS.Value = 'A' then
    begin
      if Pergunta('Não','Tem certeza que deseja excluir a parcela lançada atualmente') then
        begin
          SQLContasReceber.Delete;
          BTParcNovo.SetFocus;
        end;
    end
  else
    ShowMessage('Esta Venda não está em Aberto! Não é permitido excluir parcela!');
end;

procedure TFormCadastroCartaoCreditoManual.BtParcGravarClick(
  Sender: TObject);
begin
  inherited;
  if (SQLContasReceber.State in dsEditModes) then
    begin
      try
        SQLContasReceber.Post;
      except
        Application.ProcessMessages;
      end;
      SQLContasReceber.close;
      SQLContasReceber.open;
      BTParcNovo.SetFocus;
    end
  else
    ShowMessage('Não existem dados a ser gravados!');
end;

procedure TFormCadastroCartaoCreditoManual.SQLContasReceberBeforePost(
  DataSet: TDataSet);
var IDContasReceber : String;
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;

  if SQLContasReceber.State in [DsInsert] then
    begin
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.ADD('Select MAX(CTRCICOD) as ProximoCodigo from CONTASRECEBER');
      DM.SQLTemplate.SQL.ADD('Where');
      DM.SQLTemplate.SQL.ADD('EMPRICOD ='+IntToStr(SQLTemplateEMPRICOD.Value)+' and');
      DM.SQLTemplate.SQL.ADD('TERMICOD ='+IntToStr(SQLTemplateTERMICOD.Value));
      DM.SQLTemplate.Open;
      If DM.SQLTemplate.FindField('ProximoCodigo').asVariant<>Null Then
        SQLContasReceberCTRCICOD.Value := Dm.SQLTemplate.FindField('ProximoCodigo').asInteger+1
      else
        SQLContasReceberCTRCICOD.Value := 1;

      IDContasReceber := FormatFloat('000',SQLTemplateEMPRICOD.Value) + FormatFloat('000',SQLTemplateTERMICOD.Value) + FormatFloat('000000',SQLContasReceberCTRCICOD.Value);
      IDContasReceber := IDContasReceber + DigitVerifEAN(IDContasReceber);
      SQLContasReceberCTRCA13ID.Value := IDContasReceber;
    end;
end;

end.


