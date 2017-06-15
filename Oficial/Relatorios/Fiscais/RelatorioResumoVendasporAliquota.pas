unit RelatorioResumoVendasporAliquota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  Grids, DBGrids, RXDBCtrl, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioResumoVendasporAliquota = class(TFormRelatorioTEMPLATE)
    Report: TCrpe;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    DSSQLTerminal: TDataSource;
    SQLCupom: TRxQuery;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    SQLNotas: TRxQuery;
    TipoRel: TRadioGroup;
    TblTemporariaData: TDateField;
    TblTemporariaImp_Legenda: TStringField;
    TblTemporariaImp_Valor: TFloatField;
    TblTemporariaImp_Cod: TIntegerField;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomPRODICOD: TIntegerField;
    SQLCupomPRODA60DESCR: TStringField;
    SQLCupomICMSICOD: TIntegerField;
    SQLCupomCPITN3QTD: TFloatField;
    SQLCupomVLRTOTALITEM: TFloatField;
    SQLNotasNOFIINUMERO: TIntegerField;
    SQLNotasEMPRICOD: TIntegerField;
    SQLNotasNOFIDEMIS: TDateTimeField;
    SQLNotasPRODICOD: TIntegerField;
    SQLNotasPRODA60DESCR: TStringField;
    SQLNotasICMSICOD: TIntegerField;
    SQLNotasNFITN3QUANT: TFloatField;
    SQLNotasVLRTOTALITEM: TFloatField;
    TblTemporariaNro_Venda: TStringField;
    TblTemporariaProdIcod: TIntegerField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboEmpresaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioResumoVendasporAliquota: TFormRelatorioResumoVendasporAliquota;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioResumoVendasporAliquota.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  case TipoRel.ItemIndex of
    0 : Begin
          SQLCupom.Close;
          SQLCupom.MacroByName('MEmpresa').Value  := 'CUPOM.EMPRICOD   = '  + ComboEmpresa.KeyValue;
          SQLCupom.MacroByName('MData').AsString  := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                     'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
          if ComboTerminal.Value <> '' then
            SQLCupom.MacroByName('MTerminal').Value   := 'CUPOM.TERMICOD = '+ComboTerminal.KeyValue
          else
            SQLCupom.MacroByName('MTerminal').Value   := '0=0';

          SQLCupom.Open;
          if SQLCupom.IsEmpty then
            begin
              ShowMessage('Não existem dados neste período! Verifique!');
              Exit;
            end;
          SQLCupom.First;
          While not SQLCupom.Eof do
            begin
              try
                TblTemporaria.Append;
                TblTemporariaData.Value         := SQLCupomCUPODEMIS.Value;
                TblTemporariaNro_Venda.Value    := 'CP.'+SQLCupomCUPOA13ID.Value;
                TblTemporariaProdICod.Value     := SQLCupomPRODICOD.Value;
                TblTemporariaImp_Cod.Value      := SQLCupomICMSICOD.Value;
                TblTemporariaImp_Valor.Value    := SQLCupomVLRTOTALITEM.Value;
                TblTemporariaImp_Legenda.Value  := SQLLocate('ICMS','ICMSICOD','ICMSA60DESCR',SQLCupomICMSICOD.AsString);
                TblTemporaria.Post;
              except
                Application.ProcessMessages;
              end;
              SQLCupom.next;
            end;
        End;
    1 : Begin
          SQLNotas.Close;
          SQLNotas.MacroByName('MEmpresa').Value  := 'NOTAFISCAL.EMPRICOD  =   ' + ComboEmpresa.KeyValue;
          SQLNotas.MacroByName('MData').AsString  := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                     'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

          SQLNotas.Open;
          if SQLNotas.IsEmpty then
            begin
              ShowMessage('Não existem dados neste período! Verifique!');
              Exit;
            end;
          SQLNotas.First;
          While not SQLNotas.Eof do
            begin
              try
                TblTemporaria.Append;
                TblTemporariaData.Value         := SQLNotasNOFIDEMIS.Value;
                TblTemporariaNro_Venda.Value    := 'NF.'+SQLNotasNOFIINUMERO.AsString;
                TblTemporariaProdICod.Value     := SQLNotasPRODICOD.Value;
                TblTemporariaImp_Cod.Value      := SQLNotasICMSICOD.Value;
                TblTemporariaImp_Valor.Value    := SQLNotasVLRTOTALITEM.Value;
                TblTemporariaImp_Legenda.Value  := SQLLocate('ICMS','ICMSICOD','ICMSA60DESCR',SQLNotasICMSICOD.AsString);
                TblTemporaria.Post;
              except
                Application.ProcessMessages;
              end;
              SQLNotas.next;
            end;
        End;
    2 : Begin
          SQLCupom.Close;
          SQLCupom.MacroByName('MEmpresa').Value  := 'CUPOM.EMPRICOD   = '  + ComboEmpresa.KeyValue;
          SQLCupom.MacroByName('MData').AsString  := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                     'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
          if ComboTerminal.Value <> '' then
            SQLCupom.MacroByName('MTerminal').Value   := 'CUPOM.TERMICOD = '+ComboTerminal.KeyValue
          else
            SQLCupom.MacroByName('MTerminal').Value   := '0=0';

          SQLCupom.Open;
          if SQLCupom.IsEmpty then
            begin
              ShowMessage('Não existem dados neste período! Verifique!');
              Exit;
            end;

          SQLNotas.Close;
          SQLNotas.MacroByName('MEmpresa').Value  := 'NOTAFISCAL.EMPRICOD  =   ' + ComboEmpresa.KeyValue;
          SQLNotas.MacroByName('MData').AsString  := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                     'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
          SQLNotas.Open;
          if SQLNotas.IsEmpty then
            begin
              ShowMessage('Não existem dados neste período! Verifique!');
              Exit;
            end;
          SQLCupom.First;
          While not SQLCupom.Eof do
            begin
              try
                TblTemporaria.Append;
                TblTemporariaData.Value         := SQLCupomCUPODEMIS.Value;
                TblTemporariaNro_Venda.Value    := 'CP.'+SQLCupomCUPOA13ID.Value;
                TblTemporariaProdICod.Value     := SQLCupomPRODICOD.Value;
                TblTemporariaImp_Cod.Value      := SQLCupomICMSICOD.Value;
                TblTemporariaImp_Valor.Value    := SQLCupomVLRTOTALITEM.Value;
                TblTemporariaImp_Legenda.Value  := SQLLocate('ICMS','ICMSICOD','ICMSA60DESCR',SQLCupomICMSICOD.AsString);
                TblTemporaria.Post;
              except
                Application.ProcessMessages;
              end;
              SQLCupom.next;
            end;

          SQLNotas.First;
          While not SQLNotas.Eof do
            begin
              try
                TblTemporaria.Append;
                TblTemporariaData.Value         := SQLNotasNOFIDEMIS.Value;
                TblTemporariaNro_Venda.Value    := 'NF.'+SQLNotasNOFIINUMERO.AsString;
                TblTemporariaProdICod.Value     := SQLNotasPRODICOD.Value;
                TblTemporariaImp_Cod.Value      := SQLNotasICMSICOD.Value;
                TblTemporariaImp_Valor.Value    := SQLNotasVLRTOTALITEM.Value;
                TblTemporariaImp_Legenda.Value  := SQLLocate('ICMS','ICMSICOD','ICMSA60DESCR',SQLNotasICMSICOD.AsString);
                TblTemporaria.Post;
              except
                Application.ProcessMessages;
              end;
              SQLNotas.next;
            end;
        End;
  end ;
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Resumo por Aliquotas.rpt';

  // AjustaCaminhoCrystal;
  Report.ReportTitle       := 'Relatório de Vendas com Resumo  para Contabilidade por aliquotas';
  Report.WindowStyle.Title := 'Relatório de Vendas com Resumo  para Contabilidade por aliquotas';
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa';
  Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '''';
  //--------------------------------------------------------------------------\\
  Report.Execute;

end;

procedure TFormRelatorioResumoVendasporAliquota.ComboEmpresaExit(
  Sender: TObject);
begin
  inherited;
  if ComboEmpresa.KeyValue = null then
    begin
      ShowMessage('Este relatorio precisa que seja informado uma empresa');
      exit;
    end;
  SQLTerminal.Close;
  SQLTerminal.MacroByName('MEmpresa').Value := 'EMPRICOD ='+ComboEmpresa.KeyValue;
  SQLTerminal.Open
end;

end.
