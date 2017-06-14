unit RelatorioEstoqueMarcaReferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioEstoqueMarcaReferencia = class(TFormRelatorioTEMPLATE)
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    SQLSaldo: TRxQuery;
    GroupMarca: TGroupBox;
    ComboMarca: TRxDBLookupCombo;
    GroupReferencia: TGroupBox;
    ComboReferencia: TRxDBLookupCombo;
    SQLReferencia: TRxQuery;
    DSSQLReferencia: TDataSource;
    SQLReferenciaPRODA60REFER: TStringField;
    GroupGrupo: TGroupBox;
    ComboGrupo: TRxDBLookupCombo;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    Report: TCrpe;
    SQLSaldoSALDO: TFloatField;
    SQLSaldoMARCA60DESCR: TStringField;
    SQLSaldoPRODA60REFER: TStringField;
    SQLSaldoEMPRICOD: TIntegerField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaMARCA60DESCR: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioEstoqueMarcaReferencia: TFormRelatorioEstoqueMarcaReferencia;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioEstoqueMarcaReferencia.FormCreate(Sender: TObject);
begin
  inherited;
  SQLMarca.Open;
  SQLReferencia.Open;
end;

procedure TFormRelatorioEstoqueMarcaReferencia.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLSaldo.Close;
  SQLSaldo.MacroByName('Empresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDO','');

  if ComboGrupo.Value <> '' then
    SQLSaldo.MacroByName('Grupo').Value := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLSaldo.MacroByName('Grupo').Value := '0=0';

  if ComboMarca.Value <> '' then
    SQLSaldo.MacroByName('Marca').Value := 'MARCA.MARCICOD = ' + ComboMarca.Value
  else
   SQLSaldo.MacroByName('Marca').Value  := '0=0';

  if ComboReferencia.Value <> '' then
    SQLSaldo.MacroByName('Referencia').Value := 'PRODUTO.PROA60REFER = "' + ComboReferencia.Value + '"'
  else
    SQLSaldo.MacroByName('Referencia').Value := '0=0';
    
  SQLSaldo.Open;
  if (SQLSaldo.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  if not SQLSaldo.IsEmpty then
    begin
      BatchExec(SQLSaldo,TblTemporaria);
      TblTemporaria.Close;
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Estoque por Marca e Referencia.rpt';
      Report.ReportTitle       := 'Relatório de Estoque por Marca e Referência';
      Report.WindowStyle.Title := 'Relatório de Estoque por Marca e Referência';
      Report.Formulas.Retrieve;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa' ;
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao' ;
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Marca' ;
      if ComboMarca.Value <> '' then
        Report.Formulas.Formula.Text := '"' + ComboMarca.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todas"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Grupo' ;
      if ComboGrupo.Value <> '' then
        Report.Formulas.Formula.Text := '"' + ComboGrupo.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todos"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Referencia' ;
      if ComboReferencia.Value <> '' then
        Report.Formulas.Formula.Text := '"' + ComboReferencia.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todas"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Send;
      // AjustaCaminhoCrystal;
      Report.Execute;
    end
  else
    Informa('Nenhum registro foi encontrado!');
end;

end.
