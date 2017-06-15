unit RelatorioFluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DbPrgrss, RxQuery, DBTables, Placemnt, DB,
  ComCtrls, StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg,
  Grids, DBGrids, IBSQLMonitor, IBEvents, CurrEdit, UCrpe32, DateUtils,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers ;

type
  TFormRelatorioFluxoCaixa = class(TFormRelatorioTEMPLATE)
    SQLReceber: TRxQuery;
    SQLReceberVALORRECEBER: TFloatField;
    SQLReceberCTRCDVENC: TDateTimeField;
    SQLPagar: TRxQuery;
    TblTemporariaReceber: TFloatField;
    TblTemporariaPagar: TFloatField;
    TblTemporariaSaldo: TFloatField;
    SQLPagarVALORPAGAR: TFloatField;
    SQLPagarCTPGDVENC: TDateTimeField;
    GroupSaldo: TGroupBox;
    SaldoInicial: TCurrencyEdit;
    Report: TCrpe;
    SQLReceberRegistros: TRxQuery;
    SQLPagarRegistros: TRxQuery;
    RadioModoVisual: TRadioGroup;
    TblRegistros: TTable;
    SQLReceberRegistrosID: TStringField;
    SQLReceberRegistrosPARCELA: TIntegerField;
    SQLReceberRegistrosEMISSAO: TDateTimeField;
    SQLReceberRegistrosVCTO: TDateTimeField;
    SQLReceberRegistrosVALOR: TFloatField;
    SQLReceberRegistrosDETALHES: TStringField;
    SQLReceberRegistrosCLIENTEFORNECEDOR: TStringField;
    SQLReceberRegistrosPLANOCONTAS: TStringField;
    SQLReceberRegistrosTIPODOCUMENTO: TStringField;
    SQLPagarRegistrosID: TStringField;
    SQLPagarRegistrosPARCELA: TIntegerField;
    SQLPagarRegistrosEMISSAO: TDateTimeField;
    SQLPagarRegistrosVCTO: TDateTimeField;
    SQLPagarRegistrosVALOR: TFloatField;
    SQLPagarRegistrosDETALHES: TStringField;
    SQLPagarRegistrosCLIENTEFORNECEDOR: TStringField;
    SQLPagarRegistrosPLANOCONTAS: TStringField;
    SQLPagarRegistrosTIPODOCUMENTO: TStringField;
    TblTemporariaData: TDateTimeField;
    SQLReceberRegistrosTIPO: TStringField;
    SQLPagarRegistrosTIPO: TStringField;
    TblRegistrosID: TStringField;
    TblRegistrosPARCELA: TIntegerField;
    TblRegistrosEMISSAO: TDateTimeField;
    TblRegistrosVCTO: TDateTimeField;
    TblRegistrosDETALHES: TStringField;
    TblRegistrosCLIENTEFORNECEDOR: TStringField;
    TblRegistrosPLANOCONTAS: TStringField;
    TblRegistrosTIPODOCUMENTO: TStringField;
    TblRegistrosTIPO: TStringField;
    TblRegistrosVALOR: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioFluxoCaixa: TFormRelatorioFluxoCaixa;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioFluxoCaixa.ExecutarBtnClick(Sender: TObject);
var
  i : integer;
  Saldo : Double;
begin
  inherited;

  SQLReceber.Close;

  SQLReceber.MacroByName('Empresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','ContasReceber','EMPRICOD');
  SQLReceber.MacroByName('Data').Value    := 'ContasReceber.CTRCDVENC >= ' + '"' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' + ' AND ' +
                                             'ContasReceber.CTRCDVENC <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLReceber.Open;
  SQLPagar.Close;

  SQLPagar.MacroByName('Empresa').Value   := SQLDeLista(ComboEmpresa,ListaEmpresas,'','ContasPagar','EMPRICOD');
  SQLPagar.MacroByName('Data').Value      := 'ContasPagar.CTPGDVENC >= ' + '"' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' + ' AND ' +
                                             'ContasPagar.CTPGDVENC <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLPagar.Open;

  if (SQLPagar.IsEmpty) and (SQLReceber.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  SQLReceber.Last;
  SQLReceber.First;
  Progresso.Min := 0;
  Progresso.Max := SQLReceber.RecordCount;
  Progresso.Position := 0;

  TblTemporaria.Close;
  TblTemporaria.AddIndex('DataKey','Data',[IxPrimary]);

  if not TblTemporaria.Active then TblTemporaria.Open;
  While not SQLReceber.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaData.AsDateTime := SQLReceberCTRCDVENC.AsDateTime;
      TblTemporariaReceber.AsFloat := SQLReceberVALORRECEBER.AsFloat;
      TblTemporariaPagar.AsFloat   := 0;
      TblTemporaria.Post;
      SQLReceber.Next;
    end;
  SQLPagar.First;
  if SaldoInicial.Value > 0 then
    Saldo := SaldoInicial.Value;
  While not SQLPagar.Eof do
    begin
      if TblTemporaria.Locate('Data',SQLPagarCTPGDVENC.AsString,[]) then
        begin
          TblTemporaria.Edit;
          TblTemporariaPagar.AsFloat := SQLPagarVALORPAGAR.AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          TblTemporariaData.AsDateTime := SQLPagarCTPGDVENC.AsDateTime;
          TblTemporariaPagar.AsFloat   := SQLPagarVALORPAGAR.AsFloat;
          TblTemporariaReceber.AsFloat := 0;
          TblTemporaria.Post;
        end;
      SQLPagar.Next;
    end;
  TblTemporaria.IndexName := '';
  TblTemporaria.First;
  While not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit;
      TblTemporariaSaldo.AsFloat := (TblTemporariaReceber.AsFloat + Saldo) - TblTemporariaPagar.AsFloat;
      TblTemporaria.Post;
      Saldo := TblTemporariaSaldo.AsFloat;
      TblTemporaria.Next;
    end;
  Saldo := 0;
  if SaldoInicial.Value > 0 then
    Saldo := SaldoInicial.Value;
  if Saldo <> 0 then
    begin
      TblTemporaria.Append;
      TblTemporariaData.AsString       := FormatDateTime('dd/mm/yyyy',De.Date -1);
      TblTemporariaSaldo.AsFloat       := Saldo;
      TblTemporaria.Post;
    end;
    case RadioModoVisual.ItemIndex of
      0 : begin
            Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Fluxo de Caixa Diario.rpt' ;
            Report.ReportTitle       := 'Relatório Fluxo de Caixa Diário - Sintético';
            Report.WindowStyle.Title := 'Relatório Fluxo de Caixa Diário - Sintético';
            //SETAR FORMULAS NO RPT
            Report.Formulas.Retrieve ;
            //--------------------------------------------------------------------------\\
            Report.Formulas.Name         := 'Emissao' ;
            Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
            Report.Formulas.Name         := 'Periodo' ;
            Report.Formulas.Formula.Text := '"' + 'De' + FormatDateTime('dd/mm/yyyy', De.Date) + ' Até ' + FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
            //--------------------------------------------------------------------------\\
          end;
      1 : begin
            //SELECIONANDO REGISTROS PARA REL ANALITICO
            try
              TblRegistros.Close;
              TblRegistros.DeleteTable;
              TblRegistros.CreateTable;
            except
              TblRegistros.CreateTable;
              TblRegistros.Open;
            end;
            SQLReceberRegistros.Close;
            SQLReceberRegistros.MacroByName('Empresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','ContasReceber','');
            SQLReceberRegistros.MacroByName('Data').Value    := 'ContasReceber.CTRCDVENC >= ' + '"' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' + ' AND ' +
                                                                'ContasReceber.CTRCDVENC <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
            SQLReceberRegistros.Open;
            SQLReceberRegistros.First ;
            TblRegistros.Open;
            while not SQLReceberRegistros.Eof do
              begin
                TblRegistros.Append ;
                for i := 0 to SQLReceberRegistros.FieldCount-1 do
                  if SQLReceberRegistros.Fields[i].AsString <> '' then
                    TblRegistros.FieldByName(SQLReceberRegistros.Fields[i].FieldName).AsVariant := SQLReceberRegistros.Fields[i].AsVariant ;
                TblRegistros.Post ;
                SQLReceberRegistros.Next ;
              end ;
            SQLPagarRegistros.Close;
            SQLPagarRegistros.MacroByName('Empresa').Value   := SQLDeLista(ComboEmpresa,ListaEmpresas,'','ContasPagar','');
            SQLPagar.MacroByName('Data').Value      := 'ContasPagar.CTPGDVENC >= ' + '"' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' + ' AND ' +
                                                       'ContasPagar.CTPGDVENC <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
            SQLPagarRegistros.Open;
            SQLPagarRegistros.First ;
            while not SQLPagarRegistros.Eof do
              begin
                TblRegistros.Append ;
                for i := 0 to SQLPagarRegistros.FieldCount-1 do
                  if SQLPagarRegistros.Fields[i].AsString <> '' then
                    TblRegistros.FieldByName(SQLPagarRegistros.Fields[i].FieldName).AsVariant := SQLPagarRegistros.Fields[i].AsVariant ;
                TblRegistros.Post ;
                SQLPagarRegistros.Next ;
              end ;
            TblRegistros.Close;
            TblRegistros.Open;

            ///////////////////////////////////////////////////////////////
            Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Fluxo de Caixa Diario Analitico.rpt' ;
            Report.ReportTitle       := 'Relatório Fluxo de Caixa Diário - Analítico';
            Report.WindowStyle.Title := 'Relatório Fluxo de Caixa Diário - Analítico';
            //SETAR FORMULAS NO RPT.
            Report.Formulas.Retrieve ;
            //--------------------------------------------------------------------------\\
            Report.Formulas.Name         := 'Emissao' ;
            Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
            Report.Formulas.Name         := 'Periodo' ;
            Report.Formulas.Formula.Text := '"' + 'De ' + FormatDateTime('dd/mm/yyyy', De.Date) + ' Até ' + FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
            //--------------------------------------------------------------------------\\
          end;
      2 : begin
            Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Grafico Fluxo de Caixa.rpt' ;
            Report.ReportTitle       := 'Gráfico do Fluxo de Caixa ' ;
            Report.WindowStyle.Title := 'Gráfico do Fluxo de Caixa ' ;
            //SETAR FORMULAS NO RPT
            Report.Formulas.Retrieve ;
            //--------------------------------------------------------------------------\\
            Report.Formulas.Name         := 'Emissao' ;
            Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
            Report.Formulas.Name         := 'Periodo' ;
            Report.Formulas.Formula.Text := '"' + 'De ' + FormatDateTime('dd/mm/yyyy', De.Date) + ' Até ' + FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
            //--------------------------------------------------------------------------\\
          end;
    end;
    Report.Execute;
end;

end.
