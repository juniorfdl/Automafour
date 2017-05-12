unit CadastroContasPagar;

interface

uses
  FormResources, VarSYS, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, EDBNum, ToolEdit, RXDBCtrl, DBCtrls, RxDBComb,
  RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroContasPagar = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RetornaEmpresa: TSpeedButton;
    DBEdit33: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    RetornaFornecedor: TSpeedButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label10: TLabel;
    Label4: TLabel;
    DBEdit4: TDBDateEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SQLGeral: TRxQuery;
    Gerarparcelasapartirdodocumentoatual1: TMenuItem;
    SQLTemplateCTPGA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCTPGICOD: TIntegerField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateFornecedorCalcField: TStringField;
    SQLTemplateEmpresaCalcField: TStringField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateContaCalcField: TStringField;
    SQLTemplateCTPGINROPARC: TIntegerField;
    SQLTemplateCTPGDTEMIS: TDateTimeField;
    SQLTemplateCTPGA20DOCORIG: TStringField;
    SQLTemplateCTPGDVENC: TDateTimeField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplateCTPGA5TIPOPADRAO: TStringField;
    SQLTemplateNOCPA13ID: TStringField;
    SQLTemplateCTPGDULTPAGTO: TDateTimeField;
    SQLTemplateCTPGN3JUROPAGTO: TFloatField;
    SQLTemplateCTPGN3MULTAPAGTO: TFloatField;
    SQLTemplateCTPGN3DESCPAGTO: TFloatField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCTPGN2TOTPAG: TFloatField;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    SQLPagamento: TRxQuery;
    SQLPagamentoCTPGA13ID: TStringField;
    SQLPagamentoPAGAICOD: TIntegerField;
    SQLPagamentoPAGADPAGTO: TDateTimeField;
    SQLPagamentoPAGAN3VLRJURO: TFloatField;
    SQLPagamentoPAGAN3VLRMULTA: TFloatField;
    SQLPagamentoPAGAN3VLRDESC: TFloatField;
    DSSQLPagamento: TDataSource;
    SQLPagamentoVlrTotal: TFloatField;
    SQLTemplateCTPGN2DESCPROMO: TFloatField;
    Label11: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    SQLTemplateCTPGCPREVREAL: TStringField;
    SQLTemplateCTPGN3TXJURO: TFloatField;
    SQLTemplateCTPGN3TXMULTA: TFloatField;
    SQLTemplateCTPGA254HIST: TStringField;
    SQLEspelhoNovoLanc: TRxQuery;
    Label6: TLabel;
    DBEdit13: TDBEdit;
    SQLTemplateNOCPA30NRO: TStringField;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    SQLConta: TRxQuery;
    DSSQLConta: TDataSource;
    DSSQLPortador: TDataSource;
    PanelPesquisa: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ComboFornecedor: TRxDBLookupCombo;
    ComboConta: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboPortador: TRxDBLookupCombo;
    SQLTemplateHistoricoPadraoCalcField: TStringField;
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplatePLCTA15CODCREDITO: TStringField;
    Label12: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    SQLTemplateContaCreditoCalcField: TStringField;
    SQLPagamentoPLCTA15CREDITO: TStringField;
    SQLPagamentoPLCTA15CODJUROCRED: TStringField;
    SQLPagamentoPLCTA15CODMULTCRED: TStringField;
    SQLPagamentoPLCTA15CODDESCCRED: TStringField;
    SQLPagamentoPLCTA15DEBITO: TStringField;
    SQLPagamentoPLCTA15CODJURODEB: TStringField;
    SQLPagamentoPLCTA15CODMULTDEB: TStringField;
    SQLPagamentoPLCTA15CODDESCDEB: TStringField;
    SQLPagamentoPLCTA15CODJUROCREDLookup: TStringField;
    SQLPagamentoPLCTA15CREDITOLookup: TStringField;
    SQLPagamentoPLCTA15CODMULTCREDLookup: TStringField;
    SQLPagamentoPLCTA15CODDESCCREDLookup: TStringField;
    SQLPagamentoPLCTA15DEBITOLookup: TStringField;
    SQLPagamentoPLCTA15CODJURODEBLookup: TStringField;
    SQLPagamentoPLCTA15CODMULTDEBLookup: TStringField;
    SQLPagamentoPLCTA15CODDESCDEBLookup: TStringField;
    SQLPagamentoPAGAA254HISTORICO: TStringField;
    SQLPagamentoTPLQICOD: TIntegerField;
    SQLPagamentoTipoLiquidacaoCalc: TStringField;
    MnAssistentedeLanamentos: TMenuItem;
    SQLTemplateCTPGDRECBTO: TDateTimeField;
    Label16: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTemplateCTPGN3VLR: TFloatField;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    BtnHistorico: TSpeedButton;
    Label18: TLabel;
    MemoHistorico: TDBMemo;
    DBEditHistoricoPadrao: TDBEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    SQLTemplateCQEMA13ID: TStringField;
    ComboFornec: TRxDBLookupCombo;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Label19: TLabel;
    ComboCompetenciaMes: TRxDBComboBox;
    ComboAno: TRxDBComboBox;
    Label8: TLabel;
    Label9: TLabel;
    ComboPortadorCadastro: TRxDBLookupCombo;
    DBEdit11: TDBEdit;
    RetornaTipoDocumento: TSpeedButton;
    ComboTipoDocCadastro: TRxDBLookupCombo;
    DBEdit9: TDBEdit;
    RetornaPortador: TSpeedButton;
    SQLTemplateCTPGA2MESCOMP: TStringField;
    SQLTemplateCTPGA4ANOCOMP: TStringField;
    dsSQLTipoDocumento: TDataSource;
    SQLTipoDocumento: TRxQuery;
    SQLPortador: TRxQuery;
    SQLTemplateTipoDocumentoCalc: TStringField;
    SQLTemplatePortadorCalc: TStringField;
    MostrarLancSemPlanoContas: TMenuItem;
    MnColocaMesEmissaoNaCompetenciaMes: TMenuItem;
    Label42: TLabel;
    EditFilial: TMaskEdit;
    SQLTemplateBARRAS: TStringField;
    Label7: TLabel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    RetornaPlanoContas: TSpeedButton;
    DBEdit15: TDBEdit;
    dbBarras: TDBEdit;
    SQLPagamentoPAGAN3VLRPAGTO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure RetornaFornecedorClick(Sender: TObject);
    procedure RetornaTipoDocumentoClick(Sender: TObject);
    procedure RetornaPortadorClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SQLPagamentoCalcFields(DataSet: TDataSet);
    procedure Gerarparcelasapartirdodocumentoatual1Click(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure RetornaEmpresaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEditHistoricoPadraoExit(Sender: TObject);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure DBEditHistoricoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MnAssistentedeLanamentosClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ComboTipoDocCadastroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPortadorCadastroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboFornecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboFornecExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MostrarLancSemPlanoContasClick(Sender: TObject);
    procedure MnColocaMesEmissaoNaCompetenciaMesClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    function Estorna: Boolean;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormCadastroContasPagar: TFormCadastroContasPagar;

implementation

uses DataModulo,  UnitLibrary, WaitWindow, TelaConsultaPagamento,
  TelaAssistenteLancamentoContasPagar, TelaBaixaContasPagarAVista;

  //CadastroPortador, CadastroTipoDocumento, CadastroFornecedor,  CadastroPlanodeContas, TelaConsultaEmpresa,
  //TelaConsultaPlanoContas, CadastroHistoricoPadrao, TelaConsultaPagamento,
  //TelaAssistenteLancamentoContasPagar, TelaBaixaContasPagarAVista

{$R *.dfm}

procedure TFormCadastroContasPagar.FormCreate(Sender: TObject);
begin
  inherited;
  if MatrizFilial = 'F' then
    begin
      DbEdit1.Enabled  := False;
      DbEdit33.Enabled := False;
    end;  
  Tabela := 'CONTASPAGAR';
  SQLPagamento.Open;
  SQLFornecedor.Open;
  SQLConta.Open;
  SQLTipoDocumento.Open;
  SQLPortador.Open;
end;

procedure TFormCadastroContasPagar.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  if EmpresaPadrao <> '' then
    SQLTemplateEMPRICOD.Value := StrToInt(EmpresaPadrao);
  SQLTemplateCTPGINROPARC.Value := 1 ;
  SQLTemplateCTPGDVENC.Value    := 0 ;

  SQLTemplateCTPGN3VLR.Value        := 0 ;
  SQLTemplateCTPGN3JUROPAGTO.Value  := 0 ;
  SQLTemplateCTPGN3MULTAPAGTO.Value := 0 ;
  SQLTemplateCTPGN3DESCPAGTO.Value  := 0 ;
  SQLTemplateCTPGN2TOTPAG.Value     := 0 ;
  SQLTemplateCTPGN2DESCPROMO.Value  := 0 ;

  SQLTemplateCTPGCPREVREAL.Value := ExecSql('select CFCOCPREVREALNFCOMPRAFIN from CONFIGCOMPRAS').FieldByName('CFCOCPREVREALNFCOMPRAFIN').AsString;
  
  if SQLTemplateCTPGCPREVREAL.Value = '' then
    SQLTemplateCTPGCPREVREAL.Value    := 'R';
    
  SQLTemplateCTPGDTEMIS.Value       := DM.DataBaseSistema ;
  SQLTemplateCTPGDRECBTO.Value      := DM.DataBaseSistema ;
  SQLTemplateCTPGA2MESCOMP.Value    := FormatDateTime('MM',DM.DataBaseSistema);
  SQLTemplateCTPGA4ANOCOMP.Value    := FormatDateTime('YYYY',DM.DataBaseSistema);
end;

procedure TFormCadastroContasPagar.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //FORNECEDOR
  if DataSet.FieldByName('FORNICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('FORNECEDOR',['FORNICOD'],[DataSet.FieldByName('FORNICOD').AsString],1) Then
        begin
          DataSet.FieldByName('FornecedorCalcField').AsVariant    := DM.SQLTemplate.FindField('FORNA60NOMEFANT').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('FornecedorCalcField').asString := MensagemLookUp ;
        end;
    end
  else
    begin
      DataSet.FieldByName('FornecedorCalcField').AsVariant  := Null;
    end ;
  //EMPRESA
   If DataSet.FieldByName('EMPRICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('EMPRESA',['EMPRICOD'],[DataSet.FieldByName('EMPRICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('EmpresaCalcField').AsVariant    := DM.SQLTemplate.FindField('EMPRA60RAZAOSOC').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('EmpresaCalcField').asString := MensagemLookUp ;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('EmpresaCalcField').AsVariant  := Null;
    End;
  //PLANO CONTAS
   If DataSet.FieldByName('PLCTA15COD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15COD').AsString],1) Then
        Begin
          DataSet.FieldByName('ContaCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ContaCalcField').asString := MensagemLookUp ;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ContaCalcField').AsVariant  := Null;
    End;

  //PLANO CONTAS CREDITO
   If DataSet.FieldByName('PLCTA15CODCREDITO').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15CODCREDITO').AsString],1) Then
        Begin
          DataSet.FieldByName('ContaCreditoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ContaCreditoCalcField').asString := MensagemLookUp ;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ContaCreditoCalcField').AsVariant  := Null;
    End;

  //HISTORICO PADRAO
   if DataSet.FieldByName('HTPDICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('HISTORICOPADRAO',['HTPDICOD'],[DataSet.FieldByName('HTPDICOD').AsString],1) Then
        DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant    := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant
      else
        DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp ;
    end
  else
     DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant  := Null;

  //TIPO DOCUMENTO
  if DataSet.FieldByName('TPDCICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('TIPODOCUMENTO',['TPDCICOD'],[DataSet.FieldByName('TPDCICOD').AsString],1) Then
        DataSet.FieldByName('TipoDocumentoCalc').AsVariant := DM.SQLTemplate.FindField('TPDCA60DESCR').AsVariant
      else
        DataSet.FieldByName('TipoDocumentoCalc').asString  := MensagemLookUp ;
    end
  else
    DataSet.FieldByName('TipoDocumentoCalc').AsVariant  := Null;

  //PORTADOR
  if DataSet.FieldByName('PORTICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PORTADOR',['PORTICOD'],[DataSet.FieldByName('PORTICOD').AsString],1) Then
        DataSet.FieldByName('PortadorCalc').AsVariant := DM.SQLTemplate.FindField('PORTA60DESCR').AsVariant
      else
        DataSet.FieldByName('PortadorCalc').asString  := MensagemLookUp ;
    end
  else
    begin
      DataSet.FieldByName('PortadorCalc').AsVariant  := Null;
    end ;
end ;

procedure TFormCadastroContasPagar.RetornaFornecedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('FORNICOD');
  DataSetLookup := SQLFornecedor;
  FieldOrigem := 'FORNICOD' ;
  //CriaFormulario(TFormCadastroFornecedor, 'FormCadastroFornecedor',False,True,False,'');
end;

procedure TFormCadastroContasPagar.RetornaTipoDocumentoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPDCICOD');
  DataSetLookup := SQLTipoDocumento;
  FieldOrigem := 'TPDCICOD' ;
  //CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento',False,True,True,'');
end;

procedure TFormCadastroContasPagar.RetornaPortadorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PORTICOD');
  DataSetLookup := SQLPortador;
  FieldOrigem := 'PORTICOD' ;
  //CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador',False,True,True,'');
end;

procedure TFormCadastroContasPagar.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaEmpresa.Click ;
end;

procedure TFormCadastroContasPagar.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaFornecedor.Click ;
end;

procedure TFormCadastroContasPagar.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaTipoDocumento.Click ;
end;

procedure TFormCadastroContasPagar.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPortador.Click ;
end;

procedure TFormCadastroContasPagar.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State = dsInsert) and (SQLTemplateCTPGA20DOCORIG.AsString <> '') then
    begin
      SQLGeral.Close ;
      SQLGeral.SQL.Clear ;
      SQLGeral.SQL.Add('select Max(CTPGINROPARC) As Parcela from CONTASPAGAR') ;
      SQLGeral.SQL.Add('where EMPRICOD = ' + SQLTemplateEMPRICOD.AsString) ;
      SQLGeral.SQL.Add('and   FORNICOD = ' + SQLTemplateFORNICOD.AsString) ;
      SQLGeral.SQL.Add('and   CTPGA20DOCORIG = "' + SQLTemplateCTPGA20DOCORIG.AsString + '"') ;
      SQLGeral.Open ;
      if SQLGeral.FieldByName('Parcela').Value > 0 then
        SQLTemplateCTPGINROPARC.Value := SQLGeral.FieldByName('Parcela').Value + 1;
    end ;
end;

procedure TFormCadastroContasPagar.SQLPagamentoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLPagamentoVlrTotal.Value := SQLPagamentoPAGAN3VLRPAGTO.Value +
                                SQLPagamentoPAGAN3VLRJURO.Value +
                                SQLPagamentoPAGAN3VLRMULTA.Value -
                                SQLPagamentoPAGAN3VLRDESC.Value ;
  if SQLPagamentoTPLQICOD.AsString <> '' then
    SQLPagamentoTipoLiquidacaoCalc.AsString := SQLLocate('TIPOLIQUIDACAO','TPLQICOD','TPLQA60DESCR',SQLPagamentoTPLQICOD.AsString);
  if SQLPagamentoTipoLiquidacaoCalc.AsString = '' then
    SQLPagamentoTipoLiquidacaoCalc.AsString := MensagemLookUp;
end;

procedure TFormCadastroContasPagar.Gerarparcelasapartirdodocumentoatual1Click(Sender: TObject);
var
  i : integer ;
begin
  inherited;
  SQLEspelhoNovoLanc.Close ;
  SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'CTPGA13ID = "' + SQLTemplateCTPGA13ID.Value + '"' ;
  SQLEspelhoNovoLanc.Open ;

  SQLTemplate.Append ;
  for i := 0 to SQLEspelhoNovoLanc.FieldCount-1 do
    if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'CTPGA13ID') then
      begin
        try
          if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTPGINROPARC') then
            SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant + 1
          else
            SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant ;
        except
          application.ProcessMessages;
        end;
      end ;
  SQLTemplateCTPGN3JUROPAGTO.Value  := 0 ;
  SQLTemplateCTPGN3MULTAPAGTO.Value := 0 ;
  SQLTemplateCTPGN3DESCPAGTO.Value  := 0 ;
  SQLTemplateCTPGN2TOTPAG.Value     := 0 ;
  SQLTemplateBARRAS.Value           := '' ;

  SQLTemplateCTPGA20DOCORIG.FocusControl ;
end;

procedure TFormCadastroContasPagar.SQLTemplateAfterInsert(DataSet: TDataSet);
begin
  inherited ;
  DBEdit1.SelectAll ;
end;

procedure TFormCadastroContasPagar.RetornaEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  //CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,True,'');

end;

procedure TFormCadastroContasPagar.SpeedButton1Click(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';

  if (EditFilial.Text <> '') then
    Clausula := 'EMPRICOD = '+ EditFilial.Text;

  if (Clausula <> '') then
    begin
      if(ComboFornecedor.Value <> '') then
        Clausula := Clausula + ' AND FORNICOD = "' + ComboFornecedor.Value + '"';
    end
  else
    begin
      if(ComboFornecedor.Value <> '') then
        Clausula := ' FORNICOD = "' + ComboFornecedor.Value + '"';
    end;

  if (ComboConta.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND PLCTA15COD = "' + ComboConta.Value + '"'
  else
    if (Clausula = '') and (ComboConta.Value <> '') then
      Clausula := 'PLCTA15COD = "' + ComboConta.Value + '"';

  if (ComboTipoDoc.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND TPDCICOD = ' + ComboTipoDoc.Value
  else
    if (Clausula = '') and  (ComboTipoDoc.Value <> '') then
      Clausula := 'TPDCICOD = ' + ComboTipoDoc.Value;

  if (ComboPortador.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND  PORTICOD = ' + ComboPortador.Value
  else
    if (Clausula = '') and (ComboPortador.Value <> '') then
      Clausula := 'PORTICOD = ' + ComboPortador.Value;

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));
  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        begin
          TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
        end;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incompleta, verifique!');    
end;

procedure TFormCadastroContasPagar.ComboFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormCadastroContasPagar.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  ComboFornecedor.Value  := '';
  ComboConta.Value    := '';
  ComboTipoDoc.Value  := '';
  ComboPortador.Value := '';
end;

procedure TFormCadastroContasPagar.DBEditHistoricoPadraoExit(
  Sender: TObject);
var
  Tam : integer;  
begin
  inherited;
  if DBEditHistoricoPadrao.Text <> '' then
    begin
      MemoHistorico.SetFocus;
      Tam := Length(MemoHistorico.Text) + 2;
      MemoHistorico.SelStart := Tam;
    end;
end;

procedure TFormCadastroContasPagar.SQLTemplateHTPDICODChange(
  Sender: TField);
begin
  inherited;
  //HISTORICO PADRAO
   if DSTemplate.DataSet.FieldByName('HTPDICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('HISTORICOPADRAO',['HTPDICOD'],[DSTemplate.DataSet.FieldByName('HTPDICOD').AsString],1) Then
        begin
          DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant    := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant;
          if (DSTemplate.DataSet.State in DsEditModes) then
             DSTemplate.DataSet.FieldByName('CTPGA254HIST').AsVariant             := DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant;
        end
      else
        DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp ;
    end
  else
     DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant  := Null;
end;

procedure TFormCadastroContasPagar.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'D';
  //CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao', False, True,True, 'Contas ï¿½ Receber');
end;

procedure TFormCadastroContasPagar.DBEditHistoricoPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnHistorico.Click;
end;

procedure TFormCadastroContasPagar.DBEdit14KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click;
end;

procedure TFormCadastroContasPagar.RetornaPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  //CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas', False,True,True, 'Contas ï¿½ Pagar');
end;

procedure TFormCadastroContasPagar.DBGrid1DblClick(Sender: TObject);
var
  RetornoUsuario : TInfoRetornoUser;
begin
  inherited;
  if not UsuarioMaster then  
    begin
      if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',RetornoUsuario) = 'S' then
        begin
          DSMasterSys := DSSQLPagamento;
          Application.CreateForm(TFormTelaConsultaPagamento,FormTelaConsultaPagamento);
          FormTelaConsultaPagamento.ShowModal;
          DSMasterSys := Nil;
          SQLPagamento.Close;
          SQLPagamento.Open;
        end
      else
        Informa('Vocï¿½ nï¿½o tem permissï¿½o para acessar essa tela, somente um usuï¿½rio master do sistema terï¿½ acesso!');
    end
  else
    begin
      DSMasterSys := DSSQLPagamento;
      Application.CreateForm(TFormTelaConsultaPagamento,FormTelaConsultaPagamento);
      FormTelaConsultaPagamento.ShowModal;
      DSMasterSys := Nil;
      SQLPagamento.Close;
      SQLPagamento.Open;
    end; 
end;

procedure TFormCadastroContasPagar.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    DBGrid1.OnDblClick(Sender);
end;

procedure TFormCadastroContasPagar.MnAssistentedeLanamentosClick(
  Sender: TObject);
var
 I, ContadorDocumento : Integer;
 DocumentoSTR : String;
begin
  inherited;
  Application.CreateForm(TFormTelaAssistenteLancamentoContasPagar,FormTelaAssistenteLancamentoContasPagar);
  FormTelaAssistenteLancamentoContasPagar.edtEmissao.Date := Date;
  FormTelaAssistenteLancamentoContasPagar.ShowModal;
  if FormTelaAssistenteLancamentoContasPagar.ModalResult = MrOk then
    begin
      if not FormTelaAssistenteLancamentoContasPagar.RxTable.IsEmpty then
        begin
          SQLTemplate.DisableControls;
          FormTelaAssistenteLancamentoContasPagar.RxTable.First;
          try
            ContadorDocumento := StrToInt(FormTelaAssistenteLancamentoContasPagar.edtDocum.text);
          except
            Application.ProcessMessages;
            ContadorDocumento := 0;
          end;
          if ContadorDocumento > 0 then
            DocumentoSTR   := IntToStr(ContadorDocumento);

          I := 0;
          while not FormTelaAssistenteLancamentoContasPagar.RxTable.Eof do
            begin
              SQLTemplate.Append;
              SQLTemplateNOCPA30NRO.AsString        := FormTelaAssistenteLancamentoContasPagar.EditNFNro.Text;
              if ContadorDocumento > 0 then
                SQLTemplateCTPGA20DOCORIG.AsString    := DocumentoSTR
              else
                SQLTemplateCTPGA20DOCORIG.AsString    := FormTelaAssistenteLancamentoContasPagar.EditNFNro.Text;
              SQLTemplateCTPGA254HIST.AsString      := FormTelaAssistenteLancamentoContasPagar.RxTableDESCR.AsString;
              SQLTemplateCTPGCPREVREAL.AsString     := 'R';
              SQLTemplateCTPGDTEMIS.AsDateTime      := FormTelaAssistenteLancamentoContasPagar.RxTableEMI.AsDateTime;
              SQLTemplateCTPGDVENC.AsDateTime       := FormTelaAssistenteLancamentoContasPagar.RxTableVENCI.AsDateTime;
              SQLTemplateCTPGINROPARC.AsInteger     := I;
              SQLTemplateCTPGN3VLR.AsFloat          := FormTelaAssistenteLancamentoContasPagar.RxTableVALOR.AsFloat;
              SQLTemplateEMPRICOD.AsVariant         := FormTelaAssistenteLancamentoContasPagar.ComboEmpresa.KeyValue;
              SQLTemplateFORNICOD.AsVariant         := FormTelaAssistenteLancamentoContasPagar.ComboFornecedor.KeyValue;
              SQLTemplatePLCTA15COD.AsString        := FormTelaAssistenteLancamentoContasPagar.ComboContaDebito.Value;
              SQLTemplatePLCTA15CODCREDITO.AsString := FormTelaAssistenteLancamentoContasPagar.ComboContaCredito.Value;
              SQLTemplatePORTICOD.AsVariant         := FormTelaAssistenteLancamentoContasPagar.ComboPortador.KeyValue;
              SQLTemplateTPDCICOD.AsVariant         := FormTelaAssistenteLancamentoContasPagar.ComboTipoDoc.KeyValue;
              SQLTemplateHTPDICOD.AsVariant         := FormTelaAssistenteLancamentoContasPagar.ComboHistorico.KeyValue;
              SQLTemplateCTPGA254HIST.Value         := FormTelaAssistenteLancamentoContasPagar.edtDescricao.Text;
              if SQLTemplateCTPGDTEMIS.AsDateTime = SQLTemplateCTPGDVENC.AsDateTime then
                begin
                  SQLTemplateCTPGINROPARC.AsInteger          := I;
                  I := I-1;
                end
              else
                begin
                  SQLTemplateCTPGINROPARC.AsInteger          := I+1;
                end;
              SQLTemplate.Post;
              FormTelaAssistenteLancamentoContasPagar.RxTable.Next;
              if ContadorDocumento > 0 then
                begin
                  inc(ContadorDocumento);
                  DocumentoSTR := IntToStr(ContadorDocumento);
                end;
              inc(I);
            end;
          SQLTemplate.Close;
          SQLTemplate.MacroByName('MFiltro').AsString := 'NOCPA30NRO = "' + FormTelaAssistenteLancamentoContasPagar.EditNFNro.Text + '"';
          SQLTemplate.Open;
          PagePrincipal.ActivePage := TabSheetConsulta;
          SQLTemplate.EnableControls;
          FormTelaAssistenteLancamentoContasPagar.RxTable.Close;
          FormTelaAssistenteLancamentoContasPagar.RxTable.Free;
          FormTelaAssistenteLancamentoContasPagar.Close;
          FormTelaAssistenteLancamentoContasPagar.Free;
        end;
    end; 
end;

procedure TFormCadastroContasPagar.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
 if (SQLTemplateEMPRICOD.AsString <> EmpresaPadrao) and (MatrizFilial='F') then
    begin
      Informa('Esta Conta a Pagar foi criada em outra Filial, portanto, nï¿½o pode ser excluida !');
      Abort;
    end;

  if SQLTemplate.FieldByName('CTPGN2TOTPAG').AsFloat > 0 then
    begin
     if Pergunta('NAO','Vocï¿½ nï¿½o pode excluir esta parcela, existem pagamentos referentes ï¿½ ela, Deseja estornar o ï¿½ltimo pagamento?') then
       begin
         SQLTemplate.DisableControls;
         SQLPagamento.Last;
         DM.RegistraExclusao('PAGAMENTO',TRxQuery(SQLPagamento));
         DM.SQLTemplate.Close;
         DM.SQLTemplate.SQL.Clear;
         DM.SQLTemplate.SQL.ADD('DELETE FROM PAGAMENTO WHERE CTPGA13ID = "' + SQLPagamentoCTPGA13ID.AsString + '"');
         DM.SQLTemplate.SQL.ADD(' AND PAGAICOD = ' + SQLPagamentoPAGAICOD.AsString);
         try
           DM.SQLTemplate.ExecSQL;
           AtualizaTotaisCabecalhoContasPagar(SQLPagamentoCTPGA13ID.AsString);
           DM.SQLTemplate.Close;
         except
           on E:Exception do
             begin
               ShowMessage('Problemas ao estornar parcela, anote o ERRO: ' + E.Message);
               DM.SQLTemplate.Close;
             end;
         end;
         SQLPagamento.Close;
         SQLPagamento.Open;
         SQLTemplate.EnableControls;
       end
     else
       begin
         Abort;
         Exit;
       end;
       exit;
    end
  else
    inherited;
end;

function TFormCadastroContasPagar.Estorna: Boolean;
Var StID: String;
   procedure FimEstorno;
   begin
      if Result then
        try
          StID := SQLPagamento.Bookmark;
          SQLTemplate.Edit;
          SQLTemplateCTPGCPREVREAL.AsString := 'R';
          SQLTemplate.Post;
          SQLPagamento.Close;
          SQLPagamento.Open;
          SQLPagamento.Bookmark := StID;
          if not SQLPagamento.IsEmpty then
            SQLPagamento.Delete;
          AtualizaTotaisCabecalhoContasPagar(SQLTemplateCTPGA13ID.AsString); 
        except
        end;
      SQLCount.RequestLive := False;
   end;

begin
   try
     Result := False;
     //Verifica e Estorna Recebimentos feitos com BANCO;
     SQLCount.Close;
     SQLCount.RequestLive := True;
     SQLCount.SQL.Text := 'select * from MOVIMENTOBANCO where CTPGA13ID = "' + SQLTemplateCTPGA13ID.AsString + '" and ' +
                          'MVBCDLANC = "' + FormatDateTime('mm/dd/yyyy', SQLPagamentoPAGADPAGTO.AsDateTime) + '"'; // and ' +
                          //'(MVBCCSTATUS <> "E" or MVBCCSTATUS is Null) ';
     SQLCount.Open;

     if SQLCount.RecordCount > 0 then
       begin
         if ExecSql(' select OPBCICODESTORNODEB from CONFIGFINANCEIRO ').FieldByName('OPBCICODESTORNODEB').IsNull then
           InformaErro('ï¿½ necessï¿½rio Configurar uma Operaï¿½ï¿½o Bancï¿½ria de Estorno "Dï¿½bito" para o Contas A PAGAR no Configurador', True, Nil);

         if not Pergunta('Sim', 'Deseja Criar um Lanï¿½amento de Crï¿½dito no "MOVIMENTO BANCï¿½RIO" Valor de R$ ' +
                     FormatFloat('#,##0.00', SQLCount.FieldByName('MVBCN2VLRCRED').AsFloat) + ' referente Estorno do Pagamento de ID : "' + SQLPagamentoCTPGA13ID.AsString + '"?' + #13 +
                     'Clique "SIM" para Continuar e "Nï¿½O" para Cancelar o Estorno.') then
            Abort;

         LancaMovimentacaoBanco(SQLTemplateEMPRICOD.AsInteger, SQLCount.FieldByName('CTCRICOD').AsInteger,
                              ExecSql(' select OPBCICODESTORNOCRD from CONFIGFINANCEIRO ').FieldByName('OPBCICODESTORNOCRD').AsInteger, 0,
                              SQLCount.FieldByName('MVBCN2VLRCRED').AsFloat, SQLCount.FieldByName('MVBCDCHQBOMPARA').AsDateTime,
                              SQLCount.FieldByName('MVBCDCHQBAIXA').AsDateTime, Date, 'Estorno de Dï¿½bito Referente Pagamento: ' + SQLTemplateCTPGA20DOCORIG.AsString + '-' + SQLTemplateCTPGINROPARC.AsString,
                              '', '', SQLTemplateCTPGA13ID.AsString, SQLCount.FieldByName('CQEMA13ID').AsString,
                              SQLCount.FieldByName('PLCTA15COD').AsString);                                

         SQLCount.Edit;
         SQLCount.FieldByName('MVBCCSTATUS').AsString := 'E';
         SQLCount.Post;

         SQLPagamento.Delete;

         Result := True;

         FimEstorno;
         Exit;
       end;
     //Fim Estorno Lanï¿½amentos Banco

     //Verifica e Estorna Recebimentos feitos com CAIXA;
     SQLCount.Close;
     SQLCount.SQL.Text := 'select * from TESOURARIA where CTPGA13ID = "' + SQLTemplateCTPGA13ID.AsString + '" and ' +
                          'TESODMOV = "' + FormatDateTime('mm/dd/yyyy', SQLPagamentoPAGADPAGTO.AsDateTime) + '" and ' +
                          '(TESOCSTATUS <> "E" or TESOCSTATUS is Null) ';
     SQLCount.Open;

     if SQLCount.RecordCount > 0 then
       begin
         if ExecSql(' select OPTEICODESTORNODEB from CONFIGFINANCEIRO ').FieldByName('OPBCICODESTORNODEB').IsNull then
           InformaErro('ï¿½ necessï¿½rio Configurar uma Operaï¿½ï¿½o Tesouraria para Estorno "Dï¿½bito" para o Contas A PAGAR no Configurador', True, Nil);

         if not Pergunta('Sim', 'Deseja Criar um Lanï¿½amento de Crï¿½dito na "TESOURARIA/CAIXA" no valor de R$ ' +
                         FormatFloat('#,##0.00', SQLCount.FieldByName('TESON2VLRDEBITO').AsFloat) + ' Referente Estorno do Pagamento de ID: "' + SQLPagamentoCTPGA13ID.AsString + '"?' + #13 +
                         'Clique "SIM" para Continuar e "Nï¿½O" para Cancelar o Estorno.') then
            Abort;


         LancaMovimentacaoTesouraria(SQLTemplateEMPRICOD.AsInteger, SQLCount.FieldByName('TERMICOD').AsInteger,
                                     SQLCount.FieldByName('NUMEICOD').AsInteger, 
                                     ExecSql(' select OPTEICODESTORNOCRD from CONFIGFINANCEIRO ').FieldByName('OPTEICODESTORNOCRD').AsInteger,
                                     SQLCount.FieldByName('TESON2VLRCREDITO').AsFloat,
                                     'Estorno de Dï¿½bito Referente Pagamento: ' + SQLTemplateCTPGINROPARC.AsString + '-' + SQLPagamentoPAGAICOD.AsString,
                                     SQLTemplateCTPGA13ID.AsString,'', '', SQLCount.FieldByName('CQEMA13ID').AsString,
                                     Date,SQLTemplateCTPGA13ID.AsString,'');


         SQLCount.Edit;
         SQLCount.FieldByName('TESOCSTATUS').AsString := 'E';
         SQLCount.Post;

         SQLPagamento.Delete;
         AtualizaTotaisCabecalhoContasPagar(SQLTemplateCTPGA13ID.AsString); 

         Result := True;

         FimEstorno;
         Exit;
       end;
      //Fim Estorno Recebimentos feitos com CAIXA;


      //Verifica e Estorna Recebimentos feitos com CHEQUES;
{       SQLCount.Close;
       SQLCount.SQL.Text := 'select * from ContasPagar where CTPGA13ID = "' + SQLTemplateCTPGA13ID.AsString + '"';
       SQLCount.Open;}

       if not SQLTemplateCQEMA13ID.IsNull then
        begin
          if not Pergunta('Sim', 'O CHQ "' + SQLTemplateCQEMA13ID.AsString + '" serï¿½ desvinculado do Recebimento Atual.' + #13 +
             'Vocï¿½ deverï¿½ Excluir ou Cancelar o Cheque no Controle de Cheques.' + #13 +
             'Deseja Continuar?') then
             Exit;

          DM.SQLTemplate.Close;
          DM.SQLTemplate.SQL.Clear;
          DM.SQLTemplate.SQL.Add('Update ContasPagar Set Pendente="S", CQEMA13ID = "' + IDChequeEmitido + '" where CTPGA13ID = "' +  SQLTemplateCTPGA13ID.AsString + '" and CTPGCPREVREAL = "R"');
          DM.SQLTemplate.ExecSQL;

          SQLPagamento.Delete;
//          AtualizaTotaisCabecalhoContasPagar(SQLTemplateCTPGA13ID.AsString);

          SQLCount.RequestLive := False;

          StID := SQLTemplate.Bookmark;
          SQLTemplate.Close;
          SQLTemplate.Open;
          SQLTemplate.Bookmark := StID;

          Result := True;
          Exit;
        end;
      //Fim do Estorno Recebimentos feitos com CHEQUES;

      Result := True;
      FimEstorno;
      Exit;
      except
      on E : Exception do
        begin
          Informa(E.Message);
          SQLCount.RequestLive := False;
          Result := False;
          FimEstorno;
        end;
   end;
end;

procedure TFormCadastroContasPagar.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if (Column.Field = Nil) and not SQLPagamento.IsEmpty then
    if Pergunta('Sim', 'Deseja Realmente ESTORNAR este Pagamento.') then
      if not Estorna then
         InformaErro('Nï¿½o foi Possivel Estornar o Lanï¿½amento Atual.', True, Nil);
end;

procedure TFormCadastroContasPagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not SQLPagamento.IsEmpty then
    if Column.Field = Nil then
      begin
        DBGrid1.Canvas.Brush.Color := clBtnFace;
        DBGrid1.Canvas.Font.Color  := clBtnText;
        DrawFrameControl(DBGrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH);
        DBGrid1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 1, 'Estornar...');
      end;
end;

procedure TFormCadastroContasPagar.ComboTipoDocCadastroKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaTipoDocumento.Click ;
end;

procedure TFormCadastroContasPagar.ComboPortadorCadastroKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPortador.Click ;
end;

procedure TFormCadastroContasPagar.ComboFornecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaFornecedor.Click ;
end;

procedure TFormCadastroContasPagar.ComboFornecExit(Sender: TObject);
var vCod_CFOP : string;
begin
  inherited;
  if SQLTemplateFORNICOD.AsString <> '' then
    begin
      vCod_CFOP := SQLLocate('FORNECEDOR','FORNICOD','PLCTA15CODDEBITO',SQLTemplateFORNICOD.AsString);
      if vCod_CFOP <> '' then
        SQLTemplatePLCTA15COD.Value  := vCod_CFOP;
    end;
end;

procedure TFormCadastroContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := Nil;
end;

procedure TFormCadastroContasPagar.MostrarLancSemPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'PLCTA15COD is Null'; 
  SQLTemplate.Open;
end;

procedure TFormCadastroContasPagar.MnColocaMesEmissaoNaCompetenciaMesClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.DisableControls;
  SQLTemplate.BeforeEdit   := nil;
  SQLTemplate.BeforePost   := nil;
  SQLTemplate.OnCalcFields := nil;
  SQLTemplate.AfterPost    := nil;
  SQLTemplate.AfterScroll  := nil;

  if not SQLTemplate.IsEmpty then
    begin
      SQLTemplate.First;
      while not SQLTemplate.eof do
        begin
          if (SQLTemplateCTPGA2MESCOMP.Value = '') or (SQLTemplateCTPGA4ANOCOMP.Value = '') then
            begin
              SQLTemplate.Edit;
              if SQLTemplateCTPGA2MESCOMP.Value = '' then
                SQLTemplateCTPGA2MESCOMP.Value := FormatDateTime('MM',SQLTemplateCTPGDTEMIS.value);
              if SQLTemplateCTPGA4ANOCOMP.Value = '' then
                SQLTemplateCTPGA4ANOCOMP.Value := FormatDateTime('yyyy',SQLTemplateCTPGDTEMIS.value);
              try
                SQLTemplate.Post;
              except
                SQLTemplate.Cancel;
                Application.ProcessMessages;
              end;
            end;
          SQLTemplate.Next;
        end;
    end
  else
    ShowMessage('Não foi encontrado nenhum registro a ser Corrigido!');
    
  SQLTemplate.OnCalcFields := SQLTemplateCalcFields;
  SQLTemplate.AfterScroll  := SQLTemplateAfterScroll;
  SQLTemplate.AfterPost    := SQLTemplateAfterPost;
  SQLTemplate.BeforeEdit   := SQLTemplateBeforeEdit;
  SQLTemplate.BeforePost   := SQLTemplateBeforePost;
  SQLTemplate.EnableControls;
end;

procedure TFormCadastroContasPagar.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if SQLTemplateCTPGDVENC.Value < SQLTemplateCTPGDTEMIS.Value then
    begin
      ShowMessage('Atenï¿½ï¿½o! A data de vencimento estï¿½ menor que a data de emissï¿½o!');
      DBEdit4.SetFocus;
    end;
end;

procedure TFormCadastroContasPagar.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if SQLTemplateFORNICOD.AsString = '' then
    begin
      Showmessage('Atenï¿½ï¿½o! ï¿½ preciso escolher um Fornecedor!');
      DBEdit2.SetFocus;
      Abort;
    end;
  if SQLTemplateCTPGDVENC.Value < SQLTemplateCTPGDTEMIS.Value then
    begin
      Showmessage('Atenï¿½ï¿½o! Data de Vencimento menor que a Data de Emissï¿½o!');
      DBEdit4.SetFocus;
      Abort;
    end;
  if SQLTemplateCTPGN3VLR.Value = 0 then
    begin
      Showmessage('Atenï¿½ï¿½o! O Valor nï¿½o foi informado!');
      EvDBNumEdit1.SetFocus;
      Abort;
    end;
  inherited;
end;

procedure TFormCadastroContasPagar.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  // Quita Parcela a vista automaticamente
  if (SQLTemplateCTPGDTEMIS.Value = SQLTemplateCTPGDVENC.Value) and (SQLTemplateCTPGN2TOTPAG.Value < SQLTemplateCTPGN3VLR.Value) then
    begin
      Application.CreateForm(TFormTelaBaixaContasPagarAVista,FormTelaBaixaContasPagarAVista);
      FormTelaBaixaContasPagarAVista.ValorAteVencimento.Value   := SQLTemplateCTPGN3VLR.Value;
      FormTelaBaixaContasPagarAVista.ValorTotalOperacao.Value   := SQLTemplateCTPGN3VLR.Value;
      FormTelaBaixaContasPagarAVista.VlrDesconto.Value          := SQLTemplateCTPGN2DESCPROMO.Value;
      FormTelaBaixaContasPagarAVista.LbID.Caption               := SQLTemplateCTPGA13ID.Value;
      FormTelaBaixaContasPagarAVista.LbDoc.Caption              := SQLTemplateCTPGA20DOCORIG.Value;
      FormTelaBaixaContasPagarAVista.DataMovTesouraria.Date     := SQLTemplateCTPGDVENC.Value;
      FormTelaBaixaContasPagarAVista.DateEditMovBanco.Date      := SQLTemplateCTPGDVENC.Value;
      FormTelaBaixaContasPagarAVista.ShowModal;
      if FormTelaBaixaContasPagarAVista.ModalResult = MrOk then
        begin
          SQLPagamento.Close;
          SQLPagamento.Open;
          SQLPagamento.Append;
          SQLPagamentoPAGAICOD.Value         := 1;
          SQLPagamentoCTPGA13ID.Value        := SQLTemplateCTPGA13ID.Value;
          SQLPagamentoPAGADPAGTO.Value       := SQLTemplateCTPGDVENC.Value;
          SQLPagamentoPAGAN3VLRPAGTO.Value   := SQLTemplateCTPGN3VLR.Value;
          SQLPagamentoPAGAN3VLRJURO.Value    := FormTelaBaixaContasPagarAVista.VlrJuros.Value;
          SQLPagamentoPAGAN3VLRMULTA.Value   := FormTelaBaixaContasPagarAVista.VlrMulta.Value;
          SQLPagamentoPAGAN3VLRDESC.Value    := FormTelaBaixaContasPagarAVista.VlrDesconto.Value;
          if FormTelaBaixaContasPagarAVista.ComboTipoLiquidacao.Value <> '' then
            SQLPagamentoTPLQICOD.Value := FormTelaBaixaContasPagarAVista.ComboTipoLiquidacao.KeyValue;
          SQLPagamento.Post;
          AtualizaTotaisCabecalhoContasPagar(SQLPagamentoCTPGA13ID.Value);
        end;
      FormTelaBaixaContasPagarAVista.Close;
      FormTelaBaixaContasPagarAVista.Free;
    end;
end;

procedure TFormCadastroContasPagar.FormActivate(Sender: TObject);
begin
  inherited;
  DataSetLookup := Nil;
end;

end.
