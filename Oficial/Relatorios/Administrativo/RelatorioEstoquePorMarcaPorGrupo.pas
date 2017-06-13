unit RelatorioEstoquePorMarcaPorGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioEstoquePorMarcaPorGrupo = class(TFormRelatorioTEMPLATE)
    SQLMarca: TRxQuery;
    SQLSaldo: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    GroupBox2: TGroupBox;
    ComboMarca: TRxDBLookupCombo;
    Report: TCrpe;
    GroupBox3: TGroupBox;
    ComboGrupo: TRxDBLookupCombo;
    SQLGrupo: TRxQuery;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    DSSQLSubGrupo: TDataSource;
    GroupBox4: TGroupBox;
    ComboSubgrupo: TRxDBLookupCombo;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    SQLSaldoSALDO: TBCDField;
    SQLSaldoEMPRICOD: TIntegerField;
    SQLSaldoGRUPA60DESCR: TStringField;
    SQLSaldoMARCA60DESCR: TStringField;
    TblTemporariaSALDO: TBCDField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaMARCA60DESCR: TStringField;
    SQLGeral: TQuery;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioEstoquePorMarcaPorGrupo: TFormRelatorioEstoquePorMarcaPorGrupo;

implementation

uses UnitLibrary, DataModulo, RelatorioEstoqueMarcaReferencia;

{$R *.dfm}

procedure TFormRelatorioEstoquePorMarcaPorGrupo.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLSaldo.Close;
  SQLSaldo.MacroByName('Empresa').Value       := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDO','');

  if ComboMarca.Value <> '' then
    SQLSaldo.MacroByName('Marca').Value       := 'MARCA.MARCICOD = ' + ComboMarca.Value
  else
   SQLSaldo.MacroByName('Marca').Value        := '0=0';

  if ComboGrupo.Value <> '' then
    SQLSaldo.MacroByName('Grupo').AsString    := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLSaldo.MacroByName('Grupo').AsString    := '0=0';

  if ComboSubgrupo.Value <> '' then
    SQLSaldo.MacroByName('SubGrupo').AsString := 'PRODUTO.SUBGICOD = ' + ComboSubgrupo.Value
  else
    SQLSaldo.MacroByName('SubGrupo').AsString := '0=0';
    
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
      SQLGeral.ExecSQL;
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Estoque por Marca por Grupo.rpt';
      Report.ReportTitle       := 'Relatório de Estoque por Marca';
      Report.WindowStyle.Title := 'Relatório de Estoque por Marca';
      Report.Formulas.Retrieve;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa';
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Marca';
      if ComboMarca.Value <> '' then
        Report.Formulas.Formula.Text := '"' + ComboMarca.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todas"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Grupo';
      if ComboGrupo.Value <> '' then
        Report.Formulas.Formula.Text := '"' + ComboGrupo.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todos"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'SubGrupo';
      if ComboSubgrupo.Value <> '' then
        Report.Formulas.Formula.Text := '"' + ComboSubGrupo.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todos"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Send;
//      AjustaCaminhoCrystal;
      Report.Execute;
    end
  else
    Informa('Nenhum registro foi encontrado!');  
end;
procedure TFormRelatorioEstoquePorMarcaPorGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  SQLMarca.Open;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
end;

end.
