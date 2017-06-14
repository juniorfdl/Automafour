unit RelatorioResumoVendasportipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  Grids, DBGrids, RXDBCtrl, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioResumoVendasportipo = class(TFormRelatorioTEMPLATE)
    SQLCupom: TRxQuery;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCUPOCSTATUS: TStringField;
    SQLCupomTOTAL: TFloatField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaTOTAL: TFloatField;
    Report: TCrpe;
    GroupBox2: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    TblTemporariaTotalVista: TCurrencyField;
    TblTemporariaTotalPrazo: TCurrencyField;
    TblTemporariaTotalCartaoCredito: TCurrencyField;
    TblTemporariaNroInicialCupom: TStringField;
    TblTemporariaNroFinalCupom: TStringField;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    DSSQLTerminal: TDataSource;
    SQLCupomTERMICOD: TIntegerField;
    SQLNOTAFISCAL: TRxQuery;
    SQLNOTAFISCALEMPRICOD: TIntegerField;
    SQLNOTAFISCALNOFIINUMERO: TIntegerField;
    SQLNOTAFISCALNOFIDEMIS: TDateTimeField;
    SQLNOTAFISCALNOFIN2VLRNOTA: TBCDField;
    SQLNOTAFISCALNOFICSTATUS: TStringField;
    SQLNOTAFISCALCUPOCTIPOPADRAO: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboEmpresaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioResumoVendasportipo: TFormRelatorioResumoVendasportipo;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioResumoVendasportipo.ExecutarBtnClick(Sender: TObject);
var vTotalVista, vTotalPrazo, vTotalCartao, vTotalDia : Double;
var DataEmissao, DataNew : TdateTime;
var NroCupomINI, NroCupomFim : String;
begin
  inherited;
  SQLCupom.Close;
  SQLCupom.MacroByName('Empresa').Value  := 'EMPRICOD = '+ComboEmpresa.KeyValue;
  SQLCupom.MacroByName('Terminal').Value := 'TERMICOD = '+ComboTerminal.KeyValue;
  SQLCupom.MacroByName('Data').AsString    := 'CUPODEMIS >= "' + FormatDateTime('mm/dd/yyy',De.Date) + '" AND ' +
                                              'CUPODEMIS <= "' + FormatDateTime('mm/dd/yyy',Ate.Date) + '"';
  SQLCupom.Open;

  SQLNOTAFISCAL.Close;
  SQLNOTAFISCAL.MacroByName('Empresa').Value  := 'EMPRICOD = ' + ComboEmpresa.KeyValue;
  SQLNOTAFISCAL.MacroByName('Data').AsString  := 'NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyy',De.Date) + '" AND ' +
                                                 'NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyy',Ate.Date) + '"';
  SQLNOTAFISCAL.Open;

  SQLCupom.First;
  While not SQLCupom.Eof do
    begin
      vTotalVista  := 0;
      vTotalPrazo  := 0;
      vTotalCartao := 0;
      NroCupomINI  := FormatFloat('######000000',SQLCupomCUPOINRO.value);
      DataEmissao := SQLCupomCUPODEMIS.Value;
      DataNew     := SQLCupomCUPODEMIS.Value;
      while DataEmissao = DataNew do
        begin
          if (SQLCupomCUPOCTIPOPADRAO.Value = 'DIN') or
             (SQLCupomCUPOCTIPOPADRAO.Value = 'VISTA') or
             (copy(SQLCupomCUPOCTIPOPADRAO.Value,1,3) = 'CHQ') then vTotalVista   := SQLCupomTOTAL.Value + vTotalVista;
          if (copy(SQLCupomCUPOCTIPOPADRAO.Value,1,3) = 'CRD') then vTotalPrazo   := SQLCupomTOTAL.Value + vTotalPrazo;
          if (copy(SQLCupomCUPOCTIPOPADRAO.Value,1,3) = 'CRT') then vTotalCartao  := SQLCupomTOTAL.Value + vTotalCartao;
          SQLCupom.next;
          DataNew := SQLCupomCUPODEMIS.Value;
          NroCupomFim  := FormatFloat('######000000',SQLCupomCUPOINRO.value);
          if SQLCupom.Eof then DataNew := 0;
        end;
      try
        TblTemporaria.Append;
        TblTemporariaCUPODEMIS.Value          := DataEmissao;
        TblTemporariaNroInicialCupom.Value    := NroCupomINI;
        TblTemporariaNroFinalCupom.Value      := NroCupomFim;
        TblTemporariaTotalVista.Value         := vTotalVista;
        TblTemporariaTotalPrazo.Value         := vTotalPrazo;
        TblTemporariaTotalCartaoCredito.Value := vTotalCartao;
        TblTemporariaTOTAL.Value              := vTotalVista+vTotalPrazo+vTotalCartao;
        TblTemporaria.Post;
      except
        Application.ProcessMessages;
      end;
    end;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Resumo por Tipo de Venda.rpt';

  // AjustaCaminhoCrystal;
  Report.ReportTitle       := 'Relatório de Vendas com Resumo  para Contabilidade';
  Report.WindowStyle.Title := 'Relatório de Vendas com Resumo  para Contabilidade';
  Report.Formulas.Retrieve ;
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
  Report.Execute;
end;

procedure TFormRelatorioResumoVendasportipo.ComboEmpresaExit(
  Sender: TObject);
begin
  inherited;
  if ComboEmpresa.KeyValue = null then
    begin
      ShowMessage('Este relatorio precisa que seja informado uma empresa');
      exit;
    end;
  SQLTerminal.Close;
  SQLTerminal.MacroByName('MEmpresa').Value := 'EMPRICOD =' + ComboEmpresa.KeyValue;
  SQLTerminal.Open
end;

end.
