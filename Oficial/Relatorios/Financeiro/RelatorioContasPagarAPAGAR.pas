unit RelatorioContasPagarAPAGAR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasPagarAPAGAR = class(TFormRelatorioTEMPLATE)
    SQLContasPagar: TRxQuery;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    SQLTipoDocumento: TRxQuery;
    DSSQLTipoDocumento: TDataSource;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarCTPGN3VLR: TFloatField;
    SQLContasPagarSALDO: TFloatField;
    SQLContasPagarCTPGN2DESCPROMO: TFloatField;
    SQLContasPagarFORNA60NOMEFANT: TStringField;
    SQLContasPagarTPDCA60DESCR: TStringField;
    SQLContasPagarPORTA60DESCR: TStringField;
    RadioPrevReal: TRadioGroup;
    Report: TCrpe;
    ComboFornecedor: TDBLookupComboBox;
    ComboTipoDoc: TDBLookupComboBox;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    GroupBox4: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CkTotalizarPorFornec: TCheckBox;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTPGDVENC: TDateTimeField;
    TblTemporariaCTPGA20DOCORIG: TStringField;
    TblTemporariaCTPGINROPARC: TIntegerField;
    TblTemporariaCTPGN3VLR: TBCDField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaCTPGN2DESCPROMO: TBCDField;
    TblTemporariaFORNA60NOMEFANT: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasPagarAPAGAR: TFormRelatorioContasPagarAPAGAR;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioContasPagarAPAGAR.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLContasPagar.Close ;
  SQLContasPagar.MacrobyName('MEmpresa').Value    := '0=0' ;
  SQLContasPagar.MacrobyName('MData').Value       := '0=0' ;
  SQLContasPagar.MacrobyName('MFornecedor').Value := '0=0' ;
  SQLContasPagar.MacrobyName('MTipoDoc').Value    := '0=0' ;
  SQLContasPagar.MacrobyName('MPortador').Value   := '0=0' ;
  SQLContasPagar.MacrobyName('MPrevReal').Value   := '0=0' ;
  SQLContasPagar.MacrobyName('MEmpresa').Value    := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASPAGAR', '') ;
  SQLContasPagar.MacrobyName('MData').Value       := 'CONTASPAGAR.CTPGDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CONTASPAGAR.CTPGDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if ComboFornecedor.Text <> '' then
    SQLContasPagar.MacrobyName('MFornecedor').Value := 'CONTASPAGAR.FORNICOD = ' + IntToStr(ComboFornecedor.KeyValue) ;

  if ComboTipoDoc.Text <> '' then
    SQLContasPagar.MacrobyName('MTipoDoc').Value := 'CONTASPAGAR.TPDCICOD = ' + IntToStr(ComboTipoDoc.KeyValue) ;

  if ComboPortador.Text <> '' then
    SQLContasPagar.MacrobyName('MPortador').Value := 'CONTASPAGAR.PORTICOD = ' + IntToStr(ComboPortador.KeyValue) ;

  case RadioPrevReal.ItemIndex of
    0 : SQLContasPagar.MacrobyName('MPrevReal').Value   := '0=0' ;
    1 : SQLContasPagar.MacrobyName('MPrevReal').Value   := 'CONTASPAGAR.CTPGCPREVREAL = "P"' ;
    2 : SQLContasPagar.MacrobyName('MPrevReal').Value   := 'CONTASPAGAR.CTPGCPREVREAL = "R"' ;
    3 : SQLContasPagar.MacrobyName('MPrevReal').Value   := 'CONTASPAGAR.CTPGCPREVREAL = "C"' ;
  end ;

  SQLContasPagar.Open ;

//  BatchExec(SQLContasPagar, TblTemporaria) ;
  CopyQueryTable(SQLContasPagar,TblTemporaria);

  if not CkTotalizarPorFornec.Checked then
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas A PAGAR.rpt'
  else
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas A PAGAR por Fornecedor.rpt' ;

  Report.ReportTitle       := 'Relatório de Contas À PAGAR' ;
  Report.WindowStyle.Title := 'Relatório de Contas À PAGAR' ;
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
  Report.Formulas.Name         := 'TipoDocumento' ;
  if ComboTipoDoc.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboTipoDoc.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Tipo' ;
  case RadioPrevReal.ItemIndex of
    0 : Report.Formulas.Formula.Text := '"Todas"' ;
    1 : Report.Formulas.Formula.Text := '"Previstas"' ;
    2 : Report.Formulas.Formula.Text := '"Realizadas"' ;
  end ;
  Report.Execute ;
end;

procedure TFormRelatorioContasPagarAPAGAR.FormCreate(Sender: TObject);
begin
  inherited;
  SQLFornecedor.Open;
  SQLTipoDocumento.Open;
  SQLPortador.Open;
end;

procedure TFormRelatorioContasPagarAPAGAR.ComboFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
