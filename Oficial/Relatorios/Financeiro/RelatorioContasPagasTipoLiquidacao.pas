unit RelatorioContasPagasTipoLiquidacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasPagasTipoLiquidacao = class(TFormRelatorioTEMPLATE)
    SQLContasPagar: TRxQuery;
    GroupBox2: TGroupBox;
    ComboTipoLiq: TRxDBLookupCombo;
    CheckNroDuplic: TCheckBox;
    SQLTipoLiquidacao: TRxQuery;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    DSSQLTipoLiquidacao: TDataSource;
    SQLUpdate: TRxQuery;
    Report: TCrpe;
    GroupBox3: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    SQLPagamento: TRxQuery;
    DSSQLContasPagar: TDataSource;
    SQLPagamentoVALOR: TFloatField;
    SQLPagamentoJUROS: TFloatField;
    SQLPagamentoMULTA: TFloatField;
    SQLPagamentoDESCONTO: TFloatField;
    SQLContasPagarCTPGA13ID: TStringField;
    SQLContasPagarPAGAN3VLRPAGTO: TFloatField;
    SQLContasPagarSALDO: TFloatField;
    SQLContasPagarPAGAN3VLRJURO: TFloatField;
    SQLContasPagarPAGAN3VLRMULTA: TFloatField;
    SQLContasPagarPAGAN3VLRDESC: TFloatField;
    SQLContasPagarPAGADPAGTO: TDateTimeField;
    SQLContasPagarNOCPA13ID: TStringField;
    SQLContasPagarPDCPA13ID: TStringField;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarCTPGN3VLR: TFloatField;
    SQLContasPagarPORTICOD: TIntegerField;
    SQLContasPagarFORNA60NOMEFANT: TStringField;
    SQLContasPagarTPDCA60DESCR: TStringField;
    SQLContasPagarPORTA60DESCR: TStringField;
    SQLContasPagarTPLQA60DESCR: TStringField;
    TblTemporariaCTPGA13ID: TStringField;
    TblTemporariaPAGAN3VLRPAGTO: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaPAGAN3VLRJURO: TFloatField;
    TblTemporariaPAGAN3VLRMULTA: TFloatField;
    TblTemporariaPAGAN3VLRDESC: TFloatField;
    TblTemporariaPAGADPAGTO: TDateTimeField;
    TblTemporariaNOCPA13ID: TStringField;
    TblTemporariaPDCPA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTPGDVENC: TDateTimeField;
    TblTemporariaCTPGA20DOCORIG: TStringField;
    TblTemporariaCTPGINROPARC: TIntegerField;
    TblTemporariaCTPGN3VLR: TFloatField;
    TblTemporariaPORTICOD: TIntegerField;
    TblTemporariaFORNA60NOMEFANT: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaTPLQA60DESCR: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboTipoLiqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;                     

var
  FormRelatorioContasPagasTipoLiquidacao: TFormRelatorioContasPagasTipoLiquidacao;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioContasPagasTipoLiquidacao.ExecutarBtnClick(
  Sender: TObject);
var
  NroDuplic : String;
begin
  inherited;
  SQLContasPagar.Close ;
  SQLContasPagar.MacrobyName('MEmpresa').Value  := '0=0';
  SQLContasPagar.MacrobyName('MData').Value     := '0=0';
  //SETAR MACROS CONTAS A RECEBER
  SQLContasPagar.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASPAGAR', '') ;
  SQLContasPagar.MacrobyName('MData').Value     := 'PAGAMENTO.PAGADPAGTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + '" and ' +
                                                   'PAGAMENTO.PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  if ComboTipoLiq.Value <> '' then
    SQLContasPagar.MacrobyName('MTipoLiq').Value := 'PAGAMENTO.TPLQICOD = ' + ComboTipoLiq.Value
  else
    SQLContasPagar.MacrobyName('MTipoLiq').Value := '0=0';

  if ComboFornecedor.Value <> '' then
    SQLContasPagar.MacrobyName('MFornecedor').Value := 'CONTASPAGAR.FORNICOD = ' + ComboFornecedor.Value
  else
    SQLContasPagar.MacrobyName('MFornecedor').Value := '0=0';

  SQLContasPagar.Open;
  
  if not SQLContasPagar.IsEmpty then
    begin
      BatchExec(SQLContasPagar, TblTemporaria);
      SQLUpdate.Close;
      SQLUpdate.ExecSQL;
    end;
  Progresso.Position := 0;
  Progresso.Min      := 0;
  Progresso.Max      := TblTemporaria.RecordCount;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit;

      SQLPagamento.Close;
      SQLPagamento.MacroByName('MData').Value := ' PAGAMENTO.PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy 23:59:00', TblTemporariaPAGADPAGTO.AsDateTime) + '"';
      SQLPagamento.Open;

      if not SQLPagamento.IsEmpty then
        begin
          TblTemporariaSALDO.AsFloat      := TblTemporariaSALDO.AsFloat - SQLPagamentoVALOR.AsFloat;
        end;

      if TblTemporariaNOCPA13ID.AsString <> '' then
        TblTemporariaCTPGA13ID.AsString   := SQLLocate('NOTACOMPRA', 'NOCPA13ID','NOCPA30NRO', '"' + TblTemporariaNOCPA13ID.AsString + '"') ;

      if TblTemporariaPDCPA13ID.AsString <> '' then
        begin
          TblTemporariaCTPGA13ID.AsString := TblTemporariaPDCPA13ID.AsString;
        end;

      if TblTemporariaCTPGA13ID.AsString = '' then
        TblTemporariaCTPGA13ID.AsString   := SQLContasPagarCTPGA13ID.AsString;
      if CheckNroDuplic.Checked then
        begin
           NroDuplic := SQLLocate('CONTASPAGAR','CTPGA13ID','CTPGA20DOCORIG','"' + TblTemporariaCTPGA13ID.AsString + '"');
          if NroDuplic <> '' then
            TblTemporariaCTPGA13ID.AsString := NroDuplic;
        end;

      TblTemporaria.Post;
      TblTemporaria.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
      Application.ProcessMessages;
    end;
  Progresso.Position := 0;

  TblTemporaria.Close;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Pagas Por Tipo de Liquidacao.rpt';

//  AjustaCaminhoCrystal;

  Report.ReportTitle       := 'Relatório de Contas Pagas Por Tipo de Liquidação';
  Report.WindowStyle.Title := 'Relatório de Contas Pagas Por Tipo de Liquidação';
 //SETAR FORMULAS REPORT
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa';
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
  //--------------------------------------------------------------------------\\
  if ComboTipoLiq.Value <> '' then
    begin
      Report.Formulas.Name         := 'TipoLiq';
      Report.Formulas.Formula.Text := '"' + ComboTipoLiq.DisplayValue + '"';
    end;

  Report.Formulas.Send;

  Report.Execute;

end;

procedure TFormRelatorioContasPagasTipoLiquidacao.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLTipoLiquidacao.Open;
  SQLFornecedor.Open;
end;

procedure TFormRelatorioContasPagasTipoLiquidacao.ComboTipoLiqKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

end.
