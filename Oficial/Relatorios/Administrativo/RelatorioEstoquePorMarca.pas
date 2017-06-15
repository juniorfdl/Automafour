unit RelatorioEstoquePorMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioEstoquePorMarca = class(TFormRelatorioTEMPLATE)
    SQLMarca: TRxQuery;
    SQLSaldo: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    GroupBox2: TGroupBox;
    ComboMarca: TRxDBLookupCombo;
    Report: TCrpe;
    SQLSaldoSALDO: TFloatField;
    SQLSaldoEMPRICOD: TIntegerField;
    SQLSaldoMARCA60DESCR: TStringField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
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
  FormRelatorioEstoquePorMarca: TFormRelatorioEstoquePorMarca;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioEstoquePorMarca.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLSaldo.Close;
  SQLSaldo.MacroByName('Empresa').Value       := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDO','');

  if ComboMarca.Value <> '' then
    SQLSaldo.MacroByName('Marca').Value       := 'MARCA.MARCICOD = ' + ComboMarca.Value
  else
   SQLSaldo.MacroByName('Marca').Value        := '0=0';

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
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Estoque por Marca.rpt';
      Report.ReportTitle       := 'Relatório de Estoque por Marca';
      Report.WindowStyle.Title := 'Relatório de Estoque por Marca';
      Report.Formulas.Retrieve;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa';
      Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Marca';
      if ComboMarca.Value <> '' then
        Report.Formulas.Formula.Text := '''' + ComboMarca.Text + ''''
      else
        Report.Formulas.Formula.Text := '''Todas''';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Send;
      // AjustaCaminhoCrystal;
      Report.Execute;
    end
  else
    Informa('Nenhum registro foi encontrado!');  
end;
procedure TFormRelatorioEstoquePorMarca.FormCreate(Sender: TObject);
begin
  inherited;
  SQLMarca.Open;
end;

end.
