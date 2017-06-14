unit RelatorioCupomQuitado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32, RxQuery,
  Grids, DBGrids, RXCtrls, UnitLibrary, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioCupomQuitado = class(TFormRelatorioTEMPLATE)
    SQLCupom: TRxQuery;
    Report: TCrpe;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomTERMICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCUPODQUITACAO: TDateTimeField;
    SQLCupomTOTAL: TFloatField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    SQLCupomCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaCUPODQUITACAO: TDateTimeField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaCUPOCTIPOPADRAO: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    SQLCupomPLRCA60DESCR: TStringField;
    TblTemporariaPLRCA60DESCR: TStringField;
    SQLCupomTERMA60DESCR: TStringField;
    TblTemporariaTERMA60DESCR: TStringField;
    GroupTipoVenda: TGroupBox;
    ComboTipoVenda: TComboBox;
    GroupBox4: TGroupBox;
    ListTerminal: TRxCheckListBox;
    CheckTerminal: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCupomQuitado: TFormRelatorioCupomQuitado;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioCupomQuitado.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLCupom.Close;
  SQLCupom.MacroByName('MEmpresa').AsString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CUPOM','');

  SQLCupom.MacroByName('MData').AsString    := 'CUPODQUITACAO >= "' + FormatDateTime('mm/dd/yyy',De.Date) + '" AND ' +
                                               'CUPODQUITACAO <= "' + FormatDateTime('mm/dd/yyy',Ate.Date) + '"';

  // Seta o Tipo Padrão
  if ComboTipoVenda.ItemIndex >= 0 then
    begin
      case ComboTipoVenda.ItemIndex of
        0 : SQLCupom.MacrobyName('MTipoPadrao').Value := '0=0';
        1 : SQLCupom.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CRT"';
        2 : SQLCupom.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CHQP"';
        3 : SQLCupom.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CHQV"';
        4 : SQLCupom.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CNV"';
        5 : SQLCupom.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CRD"';
        6 : SQLCupom.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "DIN"';
      end;
    end
  else
    SQLCupom.MacrobyName('MTipoPadrao').Value := '0=0';

  //SETAR O(S) TERMINAL(IS);
  if CheckTerminal.Checked then
    SQLCupom.MacrobyName('MTerminal').Value           := 'CUPOM.TERMICOD IN' + MontaSQLdeListaTerminal(ListTerminal)
  else
    SQLCupom.MacrobyName('MTerminal').Value           := '0=0'; 

  SQLCupom.Open;
  if SQLCupom.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  BatchExec(SQLCupom,TblTemporaria);
  
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cupons Quitados.rpt';
  // AjustaCaminhoCrystal;
  Report.ReportTitle       := 'Relatório de Cupons Quitados';
  Report.WindowStyle.Title := 'Relatório de Cupons Quitados';
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

procedure TFormRelatorioCupomQuitado.FormCreate(Sender: TObject);
begin
  inherited;
  ListaTerminal(ListTerminal,EmpresaPadrao);
end;

end.
