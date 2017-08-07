unit RelatorioContasPagarVencidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, OleCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasPagarVENCIDAS = class(TFormRelatorioTEMPLATE)
    SQLContasPagar: TRxQuery;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarFORNA60NOMEFANT: TStringField;
    SQLContasPagarCTPGN3VLR: TFloatField;
    SQLContasPagarTPDCA60DESCR: TStringField;
    SQLContasPagarPORTA60DESCR: TStringField;
    GroupBox2: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    Report: TCrpe;
    SQLContasPagarSALDO: TFloatField;
    GroupBox3: TGroupBox;
    ComboTipoDoc: TRxDBLookupCombo;
    SQLTipoDoc: TRxQuery;
    DSSQLTipoDoc: TDataSource;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    GroupBox4: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTPGDVENC: TDateTimeField;
    TblTemporariaCTPGA20DOCORIG: TStringField;
    TblTemporariaCTPGINROPARC: TIntegerField;
    TblTemporariaFORNA60NOMEFANT: TStringField;
    TblTemporariaCTPGN3VLR: TBCDField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaSALDO: TFloatField;
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
  FormRelatorioContasPagarVENCIDAS: TFormRelatorioContasPagarVENCIDAS;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioContasPagarVENCIDAS.ExecutarBtnClick(
  Sender: TObject);
var
 I : Integer;  
begin
  inherited;
  SQLContasPagar.Close ;
  SQLContasPagar.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASPAGAR', '') ;
  SQLContasPagar.MacrobyName('MData').Value    := 'CONTASPAGAR.CTPGDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'CONTASPAGAR.CTPGDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if ComboFornecedor.Value <> '' then
    SQLContasPagar.MacrobyName('MFornecedor').Value := 'CONTASPAGAR.FORNICOD = ' + ComboFornecedor.Value
  else
    SQLContasPagar.MacrobyName('MFornecedor').Value := '0=0';
  if ComboTipoDoc.Value <> '' then
    SQLContasPagar.MacrobyName('MTipoDoc').Value  := 'CONTASPAGAR.TPDCICOD = ' + ComboTipoDoc.Value
  else
    SQLContasPagar.MacrobyName('MTipoDoc').Value  := '0=0';

  if ComboPortador.Value <> '' then
    SQLContasPagar.MacrobyName('MPortador').Value := 'CONTASPAGAR.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasPagar.MacrobyName('MPortador').Value := '0=0';

  SQLContasPagar.Open ;

  SQLContasPagar.First;
  while not SQLContasPagar.Eof do
    begin
     TblTemporaria.Append ;
      for i := 0 to SQLContasPagar.FieldCount-1 do
        begin
          if (SQLContasPagar.Fields[i].AsString <> '') and (TblTemporaria.FindField(SQLContasPagar.Fields[i].FieldName)<>Nil) then
            Begin
              TblTemporaria.FieldByName(SQLContasPagar.Fields[i].FieldName).AsVariant := SQLContasPagar.Fields[i].AsVariant ;
            end;
        end;
      TblTemporaria.Post;
      SQLContasPagar.Next;
    end;    

  //--------------------------------------------------------------------------\\
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas a Pagar VENCIDAS.rpt' ;
  Report.ReportTitle       := 'Relatório de Contas à Pagar VENCIDAS' ;
  Report.WindowStyle.Title := 'Relatório de Contas à Pagar VENCIDAS' ;
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
  Report.Execute ;
end;

procedure TFormRelatorioContasPagarVENCIDAS.FormCreate(Sender: TObject);
begin
  inherited;
  De.Date  := StrToDate('01/01/' + FormatDateTime('yyyy',Date));
  Ate.Date := Date - 1 ;
  SQLFornecedor.Open;
  SQLTipoDoc.Open;
  SQLPortador.Open;
end;

procedure TFormRelatorioContasPagarVENCIDAS.ComboFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
