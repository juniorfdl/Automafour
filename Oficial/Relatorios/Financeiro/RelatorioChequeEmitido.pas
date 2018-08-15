unit RelatorioChequeEmitido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, DBCtrls, RxQuery,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioChequeEmitido = class(TFormRelatorioTEMPLATE)
    SQLAlinea: TRxQuery;
    DSSQLAlinea: TDataSource;
    RadioData: TRadioGroup;
    RadioTipoRel: TRadioGroup;
    SQLChequeEmitido: TRxQuery;
    Report: TCrpe;
    SQLChequeEmitidoCQEMA13ID: TStringField;
    SQLChequeEmitidoEMPRICOD: TIntegerField;
    SQLChequeEmitidoCQEMDEMIS: TDateTimeField;
    SQLChequeEmitidoCQEMDVENC: TDateTimeField;
    SQLChequeEmitidoCQEMN3VLR: TFloatField;
    SQLChequeEmitidoCTCRICOD: TIntegerField;
    SQLChequeEmitidoCQEMA60FAVORECIDO: TStringField;
    SQLChequeEmitidoCQEMINROCHEQUE: TIntegerField;
    SQLChequeEmitidoCQEMA60HIST: TStringField;
    SQLChequeEmitidoALINICOD: TIntegerField;
    SQLChequeEmitidoCQEMDCOMP: TDateTimeField;
    SQLChequeEmitidoALINA30DESCR: TStringField;
    SQLChequeEmitidoCTCRA60TITULAR: TStringField;
    SQLCC: TRxQuery;
    SQLCCCTCRICOD: TIntegerField;
    SQLCCBANCA5COD: TStringField;
    SQLCCCTCRA15AGENCIA: TStringField;
    SQLCCCTCRA15NUMERO: TStringField;
    SQLCCCTCRA60TITULAR: TStringField;
    SQLCCCTCRDABERTURA: TDateTimeField;
    SQLCCCTCRN2LIMITE: TFloatField;
    SQLCCCTCRN2SALDOATUAL: TFloatField;
    DSSQLCC: TDataSource;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    ComboConta: TDBLookupComboBox;
    DBEdit33: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    ComboAlinea: TDBLookupComboBox;
    TblTemporariaCQEMA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCQEMDEMIS: TDateTimeField;
    TblTemporariaCQEMDVENC: TDateTimeField;
    TblTemporariaCQEMN3VLR: TBCDField;
    TblTemporariaCTCRICOD: TIntegerField;
    TblTemporariaCQEMA60FAVORECIDO: TStringField;
    TblTemporariaCQEMINROCHEQUE: TIntegerField;
    TblTemporariaCQEMA60HIST: TStringField;
    TblTemporariaALINICOD: TIntegerField;
    TblTemporariaCQEMDCOMP: TDateTimeField;
    TblTemporariaALINA30DESCR: TStringField;
    TblTemporariaCTCRA60TITULAR: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioChequeEmitido: TFormRelatorioChequeEmitido;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioChequeEmitido.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLChequeEmitido.Close;
  SQLChequeEmitido.MacroByName('MEmpresa').AsString      := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CHEQUEEMITIDO','');
  Case RadioData.ItemIndex of
    0 : SQLChequeEmitido.MacroByName('MFiltro').AsString := 'CHEQUEEMITIDO.CQEMDVENC';
    1 : SQLChequeEmitido.MacroByName('MFiltro').AsString := 'CHEQUEEMITIDO.CQEMDEMIS';
  end;
  case RadioTipoRel.ItemIndex of
    0 : SQLChequeEmitido.MacroByName('MCampoFiltro').AsString := 'CHEQUEEMITIDO.CQEMDCOMP IS NULL';
    1 : SQLChequeEmitido.MacroByName('MCampoFiltro').AsString := 'CHEQUEEMITIDO.CQEMDCOMP IS NOT NULL';
    2 : SQLChequeEmitido.MacroByName('MCampoFiltro').AsString := '0=0';
  end;
  SQLChequeEmitido.MacroByName('MDataInicial').AsString       := '"' + FormatDateTime('mm/dd/yyyy',De.Date) + '"';
  SQLChequeEmitido.MacroByName('MDataFinal').AsString         := '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  if ComboAlinea.KeyValue <> Null then
    SQLChequeEmitido.MacroByName('MAlinea').AsString          := 'CHEQUEEMITIDO.ALINICOD = ' + IntToStr(ComboAlinea.KeyValue)
  else
    SQLChequeEmitido.MacroByName('MAlinea').AsString          := '0=0';

  if ComboConta.KeyValue <> Null then
    SQLChequeEmitido.MacroByName('MContaCorrente').AsString   := 'CHEQUEEMITIDO.CTCRICOD = ' + IntToStr(ComboConta.KeyValue)
  else
    SQLChequeEmitido.MacroByName('MContaCorrente').AsString   := '0=0';

  SQLChequeEmitido.Open;
  CopyQueryTable(SQLChequeEmitido,TblTemporaria);

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Emitidos.rpt' ;

  case RadioTipoRel.ItemIndex of
    0: begin
         Report.ReportTitle       := 'Relatório de Cheques Emitidos - Vencidos à Vencer';
         Report.WindowStyle.Title := 'Relatório de Cheques Emitidos - Vencidos à Vencer';
       end;
    1: begin
         Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Emitidos.rpt';
         Report.ReportTitle       := 'Relatório de Cheques Emitidos - Baixados';
         Report.WindowStyle.Title := 'Relatório de Cheques Emitidos - Baixados';
       end;
    2: begin
         Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Emitidos.rpt';
         Report.ReportTitle       := 'Relatório de Cheques Emitidos - Emitidos';
         Report.WindowStyle.Title := 'Relatório de Cheques Emitidos - Emitidos';
       end;
  end;
  //SETAR FORMULAS
  Report.Formulas.Retrieve ;
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
  Report.Formulas.Name         := 'Situacao' ;
  if ComboAlinea.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboAlinea.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'ContaCorrente' ;
  if ComboConta.KeyValue <> Null then
    Report.Formulas.Formula.Text := '"' + SQLCCCTCRA60TITULAR.Value + ' ' +
                                        SQLCCCTCRA15AGENCIA.Value + ' ' +
                                        SQLCCCTCRA15NUMERO.Value + '"'
  else
    Report.Formulas.Formula.Text := '"Todas"';
  Report.Execute;
end;

procedure TFormRelatorioChequeEmitido.FormCreate(Sender: TObject);
begin
  inherited;
  SQLAlinea.Open;
  SQLCC.Open;
end;

end.
