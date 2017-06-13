unit RelatorioCurvaABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, ExtCtrls, DBTables, Placemnt, DB,
  ComCtrls, StdCtrls, Mask, ToolEdit, RxLookup, Buttons, jpeg, UCrpe32,
  Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioCurvaABC = class(TFormRelatorioTEMPLATE)
    RadioTipoRel: TRadioGroup;
    SQLVendas: TRxQuery;
    TblTemporariaAcumulado: TFloatField;
    SQLGrupo: TRxQuery;
    SQLSubgrupo: TRxQuery;
    SQLVariacao: TRxQuery;
    SQLMarca: TRxQuery;
    DSSQLGrupo: TDataSource;
    DSSQLSubgrupo: TDataSource;
    DSSQLVariacao: TDataSource;
    Report: TCrpe;
    SQLNotaFiscal: TRxQuery;
    TblTemporariaTOTALITEM: TBCDField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaVALORUNITARIO: TFloatField;
    TblTemporariaQUANTIDADE: TFloatField;
    SQLVendasQUANTIDADE: TBCDField;
    SQLVendasTOTALITEM: TFloatField;
    SQLVendasPRODICOD: TIntegerField;
    SQLNotaFiscalNFQTDE: TBCDField;
    SQLNotaFiscalTOTALITEMNF: TFloatField;
    SQLNotaFiscalPRODICOD: TIntegerField;
    GroupBox3: TGroupBox;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboGrupo: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    Timer1: TTimer;
    DSSQLMarca: TDataSource;
    CKAgrupar: TCheckBox;
    SQLNotaFiscalVLRLUCROITEM: TFloatField;
    SQLVendasVLRLUCROITEM: TFloatField;
    TblTemporariaVLRLUCROITEM: TFloatField;
    CkTopN25: TCheckBox;
    TblTemporariaAgrupGrade: TIntegerField;
    SQLTemp: TRxQuery;
    SQLTempTOTALITEM: TBCDField;
    SQLTempAcumulado: TFloatField;
    SQLTempPRODICOD: TIntegerField;
    SQLTempAgrupGrade: TIntegerField;
    SQLTempPRODA60DESCR: TStringField;
    SQLTempVALORUNITARIO: TFloatField;
    SQLTempQUANTIDADE: TFloatField;
    SQLTempVLRLUCROITEM: TFloatField;
    Label6: TLabel;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCurvaABC: TFormRelatorioCurvaABC;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioCurvaABC.ExecutarBtnClick(Sender: TObject);
var
  I, RecordCount : Integer;
  sql : string;
begin
  inherited;
  SQLNotaFiscal.Close;
  SQLNotaFiscal.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL','');

  SQLNotaFiscal.MacroByName('MDataNF').Value   := 'NotaFiscal.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" and ' +
                                                  'NotaFiscal.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  sql := 'Select Sum(CupomItem.CPITN3QTD) as Quantidade, Sum((CupomItem.CPITN3VLRUNIT * CupomItem.CPITN3QTD) - CUPOMITEM.CPITN2DESC) as TotalItem, ' +
         'Sum(CupomItem.CPITN3VLRUNITLUCR * CupomItem.CPITN3QTD) as VlrLucroItem, CupomItem.PRODICOD from   Cupom inner join CupomItem on Cupom.CUPOA13ID = CupomItem.CUPOA13ID '+
         ' left outer join Operacaoestoque on Cupom.Opesicod = Operacaoestoque.Opesicod' +
         ' left outer join Produto on CupomItem.Prodicod = Produto.Prodicod ' +
         'where CupomItem.CPITN3QTDTROCA = 0 and CupomItem.CPITCStatus <> ''C'' and '+SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') + ' and '+
         'Cupom.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' and ' +
         'Cupom.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + ''' ' ;

  if (ComboGrupo.Value <> '') then
    begin
      SQLNotaFiscal.MacroByName('Grupo').Value := 'Produto.GRUPICOD = ' + ComboGrupo.Value;
      sql := sql + ' and Produto.GRUPICOD = ' + ComboGrupo.Value;
    end
  else
    SQLNotaFiscal.MacroByName('Grupo').Value := '0=0';

  if (ComboSubGrupo.Value <> '') then
    begin
      SQLNotaFiscal.MacroByName('SubGrupo').Value := 'Produto.SUBGICOD = ' + ComboSubGrupo.Value;
      sql := sql + ' and Produto.SUBGICOD = ' + ComboSubGrupo.Value;
    end
  else
    SQLNotaFiscal.MacroByName('SubGrupo').Value := '0=0';

  if (ComboVariacao.Value <> '') then
    begin
      SQLNotaFiscal.MacroByName('Variacao').Value := 'Produto.VARIICOD = ' + ComboVariacao.Value;
      sql := sql + ' and Produto.VARIICOD = ' + ComboVariacao.Value;
    end
  else
    SQLNotaFiscal.MacroByName('Variacao').Value := '0=0';

  if (ComboMarca.Value <> '') then
    begin
      SQLNotaFiscal.MacroByName('Marca').Value := 'Produto.MARCICOD = ' + ComboMarca.Value;
      sql := sql + ' and Produto.MARCICOD = ' + ComboMarca.Value;
    end
  else
    SQLNotaFiscal.MacroByName('Marca').Value := '0=0';

  sql := sql + ' Group By CupomItem.PRODICOD ';

  dm.ZConsulta.Close;
  dm.ZConsulta.sql.Clear;
  dm.ZConsulta.sql.Text := sql;
  RecordCount := 0;
  try
    dm.ZConsulta.open;
    dm.ZConsulta.first;
    RecordCount := RecordCount + dm.ZConsulta.RecordCount;
  except
    Application.ProcessMessages;
  end;

  try
    SQLNotaFiscal.Open;
    SQLNotaFiscal.First;
    RecordCount := RecordCount + SQLNotaFiscal.RecordCount;
  except
    Application.ProcessMessages;
  end;

  if (dm.ZConsulta.IsEmpty) and (SQLNotaFiscal.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  Progresso.Min := 0;
  Progresso.Max := RecordCount;
  Progresso.Position := 0;

  TblTemporaria.Open;
  if not dm.zconsulta.IsEmpty then
    while not dm.zconsulta.Eof do
      begin
        try
          TblTemporaria.Append;
          TblTemporariaPRODICOD.AsInteger    := dm.zconsulta.fieldbyname('PRODICOD').AsInteger;
          TblTemporariaPRODA60DESCR.AsString := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',dm.zconsulta.fieldbyname('PRODICOD').AsString);
          TblTemporariaVALORUNITARIO.AsFloat := dm.zconsulta.fieldbyname('TOTALITEM').AsFloat / dm.zconsulta.fieldbyname('QUANTIDADE').AsFloat;
          TblTemporariaQUANTIDADE.AsFloat    := dm.zconsulta.fieldbyname('QUANTIDADE').AsFloat;
          TblTemporariaTOTALITEM.AsFloat     := dm.zconsulta.fieldbyname('TOTALITEM').AsFloat;
          TblTemporariaVLRLUCROITEM.AsFloat  := dm.zconsulta.fieldbyname('VLRLUCROITEM').AsFloat;
          TblTemporariaAgrupGrade.AsString   := dm.SQLLocate('PRODUTO','PRODICOD','PRODIAGRUPGRADE',dm.zconsulta.fieldbyname('PRODICOD').AsString);
          TblTemporaria.Post;
        except
          Application.ProcessMessages;
        end;

        dm.zconsulta.Next;
        Progresso.Position := Progresso.Position + 1;
        Application.ProcessMessages;
      end;

  if not SQLNotaFiscal.IsEmpty then
    while not SQLNotaFiscal.Eof do
      begin
        if TblTemporaria.Locate('PRODICOD',SQLNotaFiscalPRODICOD.AsString,[]) then
          begin
            try
              TblTemporaria.Edit;
              TblTemporariaQUANTIDADE.AsFloat    := TblTemporariaQUANTIDADE.AsFloat   + SQLNotaFiscalNFQTDE.AsFloat;
              TblTemporariaTOTALITEM.AsFloat     := TblTemporariaTOTALITEM.AsFloat    + SQLNotaFiscalTOTALITEMNF.AsFloat;
              TblTemporariaVLRLUCROITEM.AsFloat  := TblTemporariaVLRLUCROITEM.AsFloat + SQLNotaFiscalVLRLUCROITEM.AsFloat;
              TblTemporaria.Post;
            except
              Application.ProcessMessages;
            end;
          end
        else
          begin
            try
              TblTemporaria.Append;
              TblTemporariaPRODICOD.AsInteger    := SQLNotaFiscalPRODICOD.AsInteger;
              TblTemporariaPRODA60DESCR.AsString := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLNotaFiscalPRODICOD.AsString);
              TblTemporariaVALORUNITARIO.AsFloat := SQLNotaFiscalTOTALITEMNF.AsFloat / SQLNotaFiscalNFQTDE.AsFloat;
              TblTemporariaQUANTIDADE.AsFloat    := SQLNotaFiscalNFQTDE.AsFloat;
              TblTemporariaTOTALITEM.AsFloat     := SQLNotaFiscalTOTALITEMNF.AsFloat;
              TblTemporariaVLRLUCROITEM.AsFloat  := SQLNotaFiscalVLRLUCROITEM.AsFloat;
              TblTemporariaAgrupGrade.AsString   := dm.SQLLocate('PRODUTO','PRODICOD','PRODIAGRUPGRADE',SQLNotaFiscalPRODICOD.AsString);
              TblTemporaria.Post;
            except
              Application.ProcessMessages;
            end;
          end;
        SQLNotaFiscal.Next;
        Progresso.Position := Progresso.Position + 1;
        Application.ProcessMessages;
      end;

  if CKAgrupar.Checked then
    begin
      TblTemporaria.First;
      while not TblTemporaria.Eof do
        begin
          // se o teste for diferente é pq o produto é filho, entao tem q achar o prod.pai e somar ao estoque do pai o saldo do filho
          // e apagar o filho pra nao aparecer no relatorio
          if (TblTemporariaPRODICOD.Value<>TblTemporariaAgrupGrade.Value) then
            begin
              // Filtro para se posicionar no Produto Pai e somar a quantidade do filho
              SQLTemp.close;
              SQLTemp.MacroByName('Filtro').Value := 'PRODICOD='+TblTemporariaAgrupGrade.AsString+' AND AgrupGrade='+TblTemporariaAgrupGrade.AsString;
              SQLTemp.Open;
              if not SQLTemp.IsEmpty then
                begin
                  // se achou produto Pai, somo o saldo no principal e apago o filho
                  SQLTemp.Edit;
                  SQLTempQUANTIDADE.Value := SQLTempQUANTIDADE.Value + TblTemporariaQUANTIDADE.Value;
                  try SQLTemp.Post; except SQLTemp.Cancel; end;
                  TblTemporaria.Delete;
                  TblTemporaria.Prior;
                end
              else
                begin
                  // se nao achou produto Pai, crio um registro como pai e somo o saldo no principal e apago os filhos
                  SQLTemp.Append;
                  SQLTempPRODICOD.AsInteger    := TblTemporariaAgrupGrade.AsInteger;
                  SQLTempPRODA60DESCR.AsString := TblTemporariaPRODA60DESCR.AsString;
                  SQLTempVALORUNITARIO.AsFloat := TblTemporariaVALORUNITARIO.Value;
                  SQLTempQUANTIDADE.AsFloat    := TblTemporariaQUANTIDADE.AsFloat;
                  SQLTempTOTALITEM.AsFloat     := TblTemporariaVALORUNITARIO.Value * TblTemporariaQUANTIDADE.AsFloat;
                  SQLTempVLRLUCROITEM.AsFloat  := TblTemporariaVLRLUCROITEM.AsFloat;
                  SQLTempAgrupGrade.AsString   := TblTemporariaAgrupGrade.AsString;
                  SQLTemp.Post;
                  // Filtro para se posicionar no Produto Pai e somar a quantidade do filho
                  SQLTemp.close;
                  SQLTemp.MacroByName('Filtro').Value := 'PRODICOD='+TblTemporariaAgrupGrade.AsString+' AND AgrupGrade='+TblTemporariaAgrupGrade.AsString;
                  SQLTemp.Open;
                  if not SQLTemp.IsEmpty then
                    begin
                      // se achou produto Pai, somo o saldo no principal e apago o filho
                      SQLTemp.Edit;
                      SQLTempQUANTIDADE.Value := SQLTempQUANTIDADE.Value + TblTemporariaQUANTIDADE.Value;
                      try SQLTemp.Post; except SQLTemp.Cancel; end;
                      TblTemporaria.Delete;
                      TblTemporaria.Prior;
                    end;
                end;
            end;
          TblTemporaria.Next;
        end;
    end;

  Case RadioTipoRel.ItemIndex of
    0 : begin
          if not CkTopN25.Checked then
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Vendas por Quantidade.rpt'
          else
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Vendas por Quantidade TopN25.rpt';
          Report.ReportTitle       := 'Curva ABC por Quantidade Vendida';
          Report.WindowStyle.Title := 'Curva ABC por Quantidade Vendida';
        end;
    1 : begin
          if not CkTopN25.Checked then
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Vendas.rpt'
          else
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Vendas TopN25.rpt';
          Report.ReportTitle       := 'Curva ABC por Valor Médio de Vendas';
          Report.WindowStyle.Title := 'Curva ABC por Valor Médio de Vendas';
        end;
    2 : begin
          if not CkTopN25.Checked then
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Vendas por Lucro.rpt'
          else
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Vendas por Lucro TopN25.rpt';
          Report.ReportTitle       := 'Curva ABC por Lucratividade de Produtos';
          Report.WindowStyle.Title := 'Curva ABC por Lucratividade de Produtos';
        end;
  end;

  Progresso.Position := 0;
  // Setar formulas;
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
  Report.Formulas.Name := 'Grupo' ;
  if ComboGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboGrupo.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'SubGrupo' ;
  if ComboSubGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboSubGrupo.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Variacao' ;
  if ComboVariacao.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboVariacao.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Marca' ;
  if ComboMarca.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboMarca.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormRelatorioCurvaABC.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open ;
  SQLSubGrupo.Open ;
  SQLVariacao.Open ;
  SQLMarca.Open ;
end;

procedure TFormRelatorioCurvaABC.Timer1Timer(Sender: TObject);
begin
  inherited;
  if ComboGrupo.Text <> '' then
    ComboSubGrupo.Enabled := true
  else
    ComboSubGrupo.Enabled := false ;

  if ComboSubGrupo.Text <> '' then
    ComboVariacao.Enabled := true
  else
    ComboVariacao.Enabled := false ;

end;

procedure TFormRelatorioCurvaABC.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
  if ((sender as trxdblookupcombo).Value = '')  or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

end.
