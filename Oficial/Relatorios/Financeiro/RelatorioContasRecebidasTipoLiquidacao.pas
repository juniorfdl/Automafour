unit RelatorioContasRecebidasTipoLiquidacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasRecebidasTipoLiquidacao = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    SQLTipoLiquidacao: TRxQuery;
    DSSQLTipoLiquidacao: TDataSource;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    ComboTipoLiq: TRxDBLookupCombo;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICODREC: TIntegerField;
    SQLContasReceberRECEDRECTO: TDateTimeField;
    SQLContasReceberRECEN2DESC: TFloatField;
    SQLContasReceberRECEN2VLRJURO: TFloatField;
    SQLContasReceberRECEN2VLRMULTA: TFloatField;
    SQLContasReceberRECEN2VLRRECTO: TFloatField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberTPDCA60DESCR: TStringField;
    SQLContasReceberPORTA60DESCR: TStringField;
    CheckNroDuplic: TCheckBox;
    Report: TCrpe;
    SQLContasReceberTPLQA60DESCR: TStringField;
    SQLUpdate: TRxQuery;
    SQLContasReceberTERMICODREC: TIntegerField;
    SQLContasReceberUSUAICOD: TIntegerField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaEMPRICODREC: TIntegerField;
    TblTemporariaTERMICODREC: TIntegerField;
    TblTemporariaUSUAICOD: TIntegerField;
    TblTemporariaRECEDRECTO: TDateTimeField;
    TblTemporariaRECEN2DESC: TBCDField;
    TblTemporariaRECEN2VLRJURO: TBCDField;
    TblTemporariaRECEN2VLRMULTA: TBCDField;
    TblTemporariaRECEN2VLRRECTO: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaEMPRICODULTREC: TIntegerField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaTPLQA60DESCR: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    NroDuplic : String;
    { Public declarations }
  end;

var
  FormRelatorioContasRecebidasTipoLiquidacao: TFormRelatorioContasRecebidasTipoLiquidacao;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioContasRecebidasTipoLiquidacao.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value  := '0=0' ;
  SQLContasReceber.MacrobyName('MData').Value     := '0=0' ;
  //SETAR MACROS CONTAS A RECEBER
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MData').Value    := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if ComboTipoLiq.Value <> '' then
    SQLContasReceber.MacrobyName('MTipoLiq').Value := 'RECEBIMENTO.TPLQICOD = ' + ComboTipoLiq.Value
  else
    SQLContasReceber.MacrobyName('MTipoLiq').Value := '0=0';

  SQLContasReceber.Open ;
  if not SQLContasReceber.IsEmpty then
    begin
//    BatchExec(SQLContasReceber, TblTemporaria) ;
      CopyQueryTable(SQLContasReceber,TblTemporaria);
      SQLUpdate.Close;
      SQLUpdate.ExecSQL;
    end;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;
      if TblTemporariaNOFIA13ID.AsString <> '' then
        TblTemporariaCTRCA13ID.AsString := SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                           SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;

      if TblTemporariaPDVDA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaPDVDA13ID.AsString;
        end;
      if TblTemporariaCUPOA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaCUPOA13ID.AsString;
        end;

      if TblTemporariaCTRCA13ID.AsString = '' then
        TblTemporariaCTRCA13ID.AsString := SQLContasReceberCTRCA13ID.AsString;
      if CheckNroDuplic.Checked then
        begin
           NroDuplic := SQLLocate('CONTASRECEBER','CTRCA13ID','CTRCA30NRODUPLICBANCO','"' + TblTemporariaCTRCA13ID.AsString + '"');
          if NroDuplic <> '' then
            TblTemporariaCTRCA13ID.AsString := NroDuplic;
        end;

      TblTemporaria.Post ;
      TblTemporaria.Next ;
    end ;
  TblTemporaria.Close;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas Por Tipo de Liquidacao.rpt';

  // AjustaCaminhoCrystal;

  Report.ReportTitle       := 'Relatório de Contas Recebidas Por Tipo de Liquidacao';
  Report.WindowStyle.Title := 'Relatório de Contas Recebidas Por Tipo de Liquidacao';
 //SETAR FORMULAS REPORT
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  if ComboTipoLiq.Value <> '' then
    begin
      Report.Formulas.Name         := 'TipoLiq' ;
      Report.Formulas.Formula.Text := '"' + ComboTipoLiq.DisplayValue + '"' ;
    end;

  Report.Formulas.Send;
  Report.Execute ;

end;

procedure TFormRelatorioContasRecebidasTipoLiquidacao.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLTipoLiquidacao.Open;
end;

end.
