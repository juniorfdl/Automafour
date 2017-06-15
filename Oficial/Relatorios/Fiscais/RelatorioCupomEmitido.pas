unit RelatorioCupomEmitido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioCupomEmitido = class(TFormRelatorioTEMPLATE)
    SQLCupom: TRxQuery;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomPLRCICOD: TIntegerField;
    SQLCupomCUPOCSTATUS: TStringField;
    SQLCupomTOTAL: TFloatField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    SQLCupomPLRCA60DESCR: TStringField;
    TblTemporariaCUPOINRO: TIntegerField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaPLRCICOD: TIntegerField;
    TblTemporariaCUPOCSTATUS: TStringField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaCUPOCTIPOPADRAO: TStringField;
    TblTemporariaPLRCA60DESCR: TStringField;
    Report: TCrpe;
    SQLCupomItem: TRxQuery;
    SQLCupomItemPRODICOD: TIntegerField;
    SQLCupomItemCPITN3QTD: TFloatField;
    SQLCupomItemCPITN3VLRUNIT: TFloatField;
    SQLCupomItemCPITN2DESC: TFloatField;
    SQLCupomItemProdutoLookup: TStringField;
    TblCupomItem: TTable;
    TblCupomItemPRODICOD: TIntegerField;
    TblCupomItemCPITN3QTD: TFloatField;
    TblCupomItemCPITN3VLRUNIT: TFloatField;
    TblCupomItemCPITN2DESC: TFloatField;
    TblCupomItemProdutoLookup: TStringField;
    SQLCupomTERMICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaCHAVEACESSO: TStringField;
    SQLCupomCHAVEACESSO: TStringField;
    CKApenasCanceladas: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure SQLCupomItemCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCupomEmitido: TFormRelatorioCupomEmitido;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioCupomEmitido.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLCupom.Close;
  SQLCupom.MacroByName('Empresa').AsString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CUPOM','');

  SQLCupom.MacroByName('Data').AsString    := 'CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyy',De.Date) + ''' AND ' +
                                              'CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyy',Ate.Date) + '''';

  SQLCupom.MacroByName('Tipo').AsString    := '0=0' ;

  if CKApenasCanceladas.Checked then
    SQLCupom.MacroByName('Tipo').AsString    := 'CUPOCSTATUS = ''C'''
  else
    SQLCupom.MacroByName('Tipo').AsString    := 'CUPOCSTATUS = ''A''' ;

  SQLCupom.Open;

  if SQLCupom.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  {  if CheckDetalhado.Checked then
    begin
      TblTemporaria.Close;
      TblTemporaria.AddIndex('CUPOA13ID_Key','CUPOA13ID',[IxPrimary]);
      SQLCupomItem.Close;
      SQLCupomItem.MacroByName('Empresa').AsString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CUPOM','EMPRICOD');
      SQLCupomItem.MacroByName('Data').AsString    := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyy',De.Date) + ''' AND ' +
                                                      'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyy',Ate.Date) + '''';
      SQLCupomItem.Open;
      RefazTabelaTemp(TblCupomItem,False);
      BatchExec(SQLCupomItem,TblCupomItem);
    end;}

  BatchExec(SQLCupom,TblTemporaria);

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cupons Emitidos.rpt';

  // AjustaCaminhoCrystal;
  Report.ReportTitle       := 'Relatório de NFCes ou Cupons Fiscais';
  Report.WindowStyle.Title := 'Relatório de NFCes ou Cupons Fiscais';
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
procedure TFormRelatorioCupomEmitido.SQLCupomItemCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLCupomItemPRODICOD.AsVariant <> null then
    begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant       := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant   := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
      end;                                                         
    end
  else
    SQLCupomItemProdutoLookup.AsString := 'Não Encontrado';
end;

end.
