unit RelatorioComissaoRepresentanteDetalhado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, CurrEdit;

type
  TFormRelatorioComissaoDetalhadoRepresentante = class(TFormRelatorioTEMPLATE)
    SQLComissao: TRxQuery;
    Report: TCrpe;
    GroupBox2: TGroupBox;
    SQLRepresentante: TRxQuery;
    DSSQLRepresentante: TDataSource;
    ComboVendedor: TRxDBLookupCombo;
    SQLRepresentanteREPRICOD: TIntegerField;
    SQLRepresentanteREPRA60RAZAOSOC: TStringField;
    SQLRepresentanteREPRA60NOMEFANT: TStringField;
    SQLRepresentantePERC_COMISSAO: TFloatField;
    edtComissao: TCurrencyEdit;
    Label5: TLabel;
    SQLComissaoNOFIINUMERO: TIntegerField;
    SQLComissaoNOFIN2VLRNOTA: TFloatField;
    SQLComissaoCLIEA13ID: TStringField;
    SQLComissaoCLIEA60RAZAOSOC: TStringField;
    SQLComissaoPRODICOD: TIntegerField;
    SQLComissaoPRODA60DESCR: TStringField;
    SQLComissaoVALOR_COMISSAO: TFloatField;
    SQLComissaoPERC_COMISSAO: TFloatField;
    SQLComissaoVALOR_TOTAL: TFloatField;
    TblTemporariaNOFIINUMERO: TIntegerField;
    TblTemporariaNOFIN2VLRNOTA: TFloatField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaVALOR_COMISSAO: TFloatField;
    TblTemporariaPERC_COMISSAO: TFloatField;
    TblTemporariaVALOR_TOTAL: TFloatField;
    TblTemporariaNOME_REPRESENTANTE: TStringField;
    SQLComissaoNOME_REPRESENTANTE: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioComissaoDetalhadoRepresentante: TFormRelatorioComissaoDetalhadoRepresentante;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioComissaoDetalhadoRepresentante.ExecutarBtnClick(Sender: TObject);
var
 I : Integer;
begin
  inherited;
  SQLComissao.Close;
  SQLComissao.MacrobyName('MData').Value := 'NF.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                            'NF.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboVendedor.Value <> '' then
    SQLComissao.MacrobyName('MRepresentante').Value := 'NF.REPRICOD = ' + ComboVendedor.Value
  else
    SQLComissao.MacrobyName('MRepresentante').Value := '0=0';

  if edtComissao.Value > 0 then
    SQLComissao.MacrobyName('MPercentual').Value := 'REP.PERC_COMISSAO = "' + edtComissao.Text + '"'
  else
    SQLComissao.MacrobyName('MPercentual').Value := '0=0';

  SQLComissao.Open;
  if SQLComissao.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  try
    TblTemporaria.Close;
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
    TblTemporaria.CreateTable;
  end;
  TblTemporaria.Open;
  SQLComissao.Last;
  SQLComissao.First;
  Progresso.Position := 0;
  Progresso.Min      := 0;
  Progresso.Max      := SQLComissao.RecordCount;
  while not SQLComissao.Eof do
    begin
      TblTemporaria.Append;
      for I :=0 to SQLComissao.FieldCount -1 do
        begin
          if TblTemporaria.FindField(SQLComissao.Fields[I].FieldName) <> nil then
            TblTemporaria.FindField(SQLComissao.Fields[I].FieldName).AsVariant := SQLComissao.Fields[I].AsVariant; 
        end;
      TblTemporaria.Post;
      SQLComissao.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;

  TblTemporaria.First;
  Progresso.Position := 0;
  Progresso.Min      := 0;
  Progresso.Max      := TblTemporaria.RecordCount;
//  while not TblTemporaria.Eof do
//    begin
//      TblTemporaria.Edit;
//      TblTemporaria.Post;
//      TblTemporaria.Next;
//      Progresso.Position := Progresso.Position + 1;
//      Progresso.Update;
//    end;
  Progresso.Position := 0;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Relatorio de Comissoes Detalhado Rep.rpt' ;
//  AjustaCaminhoCrystal;
  Report.ReportTitle       := 'Relatório de Comissões Detalhado por Representante' ;
  Report.WindowStyle.Title := 'Relatório de Comissões Detalhado por Representante' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Representante' ;
  if ComboVendedor.Value <> '' then
     Report.Formulas.Formula.Text := '"' + ComboVendedor.DisplayValue + '"'
  else
     Report.Formulas.Formula.Text := '"' + 'Todos' + '"';

  Report.Formulas.Name         := 'Empresa' ;
  if ComboEmpresa.Value <> '' then
    Report.Formulas.Formula.Text := '"' + ComboEmpresa.DisplayValue + '"'
  else
    Report.Formulas.Formula.Text := '"' + EmpresaAtualNome + '"';
    
  Report.Execute;

end;

procedure TFormRelatorioComissaoDetalhadoRepresentante.ComboVendedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormRelatorioComissaoDetalhadoRepresentante.FormCreate(Sender: TObject);
begin
  inherited;
  SQLRepresentante.Open;
end;

end.
