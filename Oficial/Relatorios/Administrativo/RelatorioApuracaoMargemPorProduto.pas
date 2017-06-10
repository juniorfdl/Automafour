unit RelatorioApuracaoMargemPorProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, UCrpe32, DBTables, Placemnt,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioApuracaoMargemPorProduto = class(TFormRelatorioTEMPLATE)
    GroupBox3: TGroupBox;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboGrupo: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    ComboColecao: TRxDBLookupCombo;
    Report: TCrpe;
    SQLVendas: TRxQuery;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasCUPODEMIS: TDateTimeField;
    SQLVendasPRODICOD: TIntegerField;
    SQLVendasPRODA60DESCR: TStringField;
    SQLVendasVLRTOTALITEM: TFloatField;
    SQLVendasPRODN3VLRCUSTO: TBCDField;
    SQLVendasPRODN3VLRVENDA: TBCDField;
    SQLVendasGRUPICOD: TIntegerField;
    SQLVendasSUBGICOD: TIntegerField;
    SQLVendasVARIICOD: TIntegerField;
    SQLVendasMARCICOD: TIntegerField;
    SQLVendasMARGEMPERC: TFloatField;
    SQLVendasMARGEMVLR: TFloatField;
    SQLVendasCPITN3QTD: TBCDField;
    SQLVendasCUPOA13ID: TStringField;
    SQLVendasCOLEICOD: TIntegerField;
    SQLVendasREGISTRO: TDateTimeField;
    SQLVendasGRADICOD: TIntegerField;
    SQLVendasGRTMICOD: TIntegerField;
    SQLVendasCORICOD: TIntegerField;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLVariacaoPENDENTE: TStringField;
    SQLVariacaoREGISTRO: TDateTimeField;
    DSSQLVariacao: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    DSSQLColecao: TDataSource;
    SQLColecao: TRxQuery;
    SQLColecaoCOLEICOD: TIntegerField;
    SQLColecaoCOLEA60DESCR: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaVLRTOTALITEM: TFloatField;
    TblTemporariaPRODN3VLRCUSTO: TBCDField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaMARCICOD: TIntegerField;
    TblTemporariaMARGEMPERC: TFloatField;
    TblTemporariaMARGEMVLR: TFloatField;
    TblTemporariaCPITN3QTD: TBCDField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCOLEICOD: TIntegerField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaGRADICOD: TIntegerField;
    TblTemporariaGRTMICOD: TIntegerField;
    TblTemporariaCORICOD: TIntegerField;
    TblTemporariaEstoqueAtual: TFloatField;
    CheckPeriodo: TCheckBox;
    TblTemporariaVLRCUSTOTOTAL: TFloatField;
    TblTemporariaGRUPODESCRICAO: TStringField;
    ckMargem: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioApuracaoMargemPorProduto: TFormRelatorioApuracaoMargemPorProduto;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioApuracaoMargemPorProduto.ExecutarBtnClick(
  Sender: TObject);
var
  i : integer ;
begin
  inherited;
  SQLVendas.Close ;
  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  SQLVendas.MacrobyName('MEmpresa1').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;
  if not CheckPeriodo.Checked then
    begin
      SQLVendas.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                 'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
      SQLVendas.MacrobyName('MData1').Value   := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                 'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
    end
  else
    begin
      SQLVendas.MacrobyName('MData').Value    := '0=0';
      SQLVendas.MacrobyName('MData1').Value   := '0=0';
    end;

  if ComboGrupo.Value <> '' then
    begin
      SQLVendas.MacroByName('MGrupo').Value      := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value;
      SQLVendas.MacroByName('MGrupo1').Value     := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MGrupo').Value      := '0=0';
      SQLVendas.MacroByName('MGrupo1').Value     := '0=0';
    end;

  if ComboSubGrupo.Value <> '' then
    begin
      SQLVendas.MacroByName('MSubGrupo').Value      := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;
      SQLVendas.MacroByName('MSubGrupo1').Value     := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MSubGrupo').Value      := '0=0';
      SQLVendas.MacroByName('MSubGrupo1').Value     := '0=0';
    end;

  if ComboVariacao.Value <> '' then
    begin
      SQLVendas.MacroByName('MVariacao').Value      := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value;
      SQLVendas.MacroByName('MVariacao1').Value     := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MVariacao').Value      := '0=0';
      SQLVendas.MacroByName('MVariacao1').Value     := '0=0';
    end;

  if ComboMarca.Value <> '' then
    begin
      SQLVendas.MacroByName('MMarca').Value      := 'PRODUTO.MARCICOD = ' + ComboMarca.Value;
      SQLVendas.MacroByName('MMarca1').Value     := 'PRODUTO.MARCICOD = ' + ComboMarca.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MMarca').Value      := '0=0';
      SQLVendas.MacroByName('MMarca1').Value     := '0=0';
    end;

  if ComboColecao.Value <> '' then
    begin
      SQLVendas.MacroByName('MColecao').Value      := 'PRODUTO.COLEICOD = ' + ComboColecao.Value;
      SQLVendas.MacroByName('MColecao1').Value     := 'PRODUTO.COLEICOD = ' + ComboColecao.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MColecao').Value      := '0=0';
      SQLVendas.MacroByName('MColecao1').Value     := '0=0';
    end;

  SQLVendas.Open ;

  if SQLVendas.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Exit;
    end;

  TblTemporaria.Open ;
  SQLVendas.First ;
  while not SQLVendas.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLVendas.FieldCount-1 do
        if SQLVendas.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant;

      if TblTemporariaPRODICOD.AsString <> '' then
        begin
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.Clear;
          if ComboEmpresa.KeyValue > 0 then
            dm.SQLTemplate.sql.add('select sum(PSLDN3QTDE) from produtosaldo where prodicod = ' +TblTemporariaPRODICOD.AsString+ ' and empricod = '+ ComboEmpresa.Value)
          else
            dm.SQLTemplate.sql.add('select sum(PSLDN3QTDE) from produtosaldo where prodicod = ' +TblTemporariaPRODICOD.AsString);
          dm.SQLTemplate.Open;
          try
            TblTemporariaEstoqueAtual.Value := dm.SQLTemplate.fieldbyname('sum').Value;
          except
            TblTemporariaEstoqueAtual.Value := 0;
          end;
        end;

      // Esse teste foi colocado pq tem alguns produtos q nao possuem custo
      // e normalmente os empresarios colocam 25%, apenas pro Rel. ficar mais prox da realidade em informacoes
      if SQLVendas.Fieldbyname('PRODN3VLRCUSTO').AsVariant > 0 then
        TblTemporariaVLRCUSTOTOTAL.Value  := SQLVendas.Fieldbyname('PRODN3VLRCUSTO').AsVariant * SQLVendas.Fieldbyname('CPITN3QTD').AsVariant
      else
        TblTemporariaVLRCUSTOTOTAL.Value  := TblTemporariaVLRTOTALITEM.Value - ((TblTemporariaVLRTOTALITEM.Value * 25) / 100);

      if (TblTemporariaVLRCUSTOTOTAL.Value > 0) and (TblTemporariaVLRTOTALITEM.Value > 0) then
        begin
          if ckMargem.Checked then
            TblTemporariaMARGEMPERC.Value     := (1-(TblTemporariaVLRCUSTOTOTAL.Value / TblTemporariaVLRTOTALITEM.Value)) * 100
          else
            TblTemporariaMARGEMPERC.Value     := ((TblTemporariaVLRTOTALITEM.Value / TblTemporariaVLRCUSTOTOTAL.Value) - 1) * 100 ;
        end
      else
        TblTemporariaMARGEMPERC.Value     := 0;
        
      if SQLVendas.Fieldbyname('GRUPICOD').AsString = '' then
        TblTemporariaGRUPODESCRICAO.Value := 'Sem Grupo'
      else
        TblTemporariaGRUPODESCRICAO.Value := dm.SQLLocate('GRUPO','GRUPICOD','GRUPA60DESCR',SQLVendas.Fieldbyname('GRUPICOD').AsString);

      TblTemporaria.Post ;
      SQLVendas.Next ;
    end ;
  TblTemporaria.Close;

  if ckMargem.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Apuracao de Margem por Produto Margem Produto Venda.rpt'
  else
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Apuracao de Margem por Produto.rpt';

  Report.ReportTitle       := 'Relatorio de Apuração de Margem por Produto' ;
  Report.WindowStyle.Title := 'Relatorio de Apuração de Margem por Produto' ;

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

  Report.Execute ;
end;

procedure TFormRelatorioApuracaoMargemPorProduto.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  SQLColecao.Open;
end;

end.

