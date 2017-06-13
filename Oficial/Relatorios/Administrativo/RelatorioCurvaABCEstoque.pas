unit RelatorioCurvaABCEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, ExtCtrls, DBTables, Placemnt, DB,
  ComCtrls, StdCtrls, Mask, ToolEdit, RxLookup, Buttons, jpeg, UCrpe32,
  Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioCurvaABCEstoque = class(TFormRelatorioTEMPLATE)
    RadioTipoRel: TRadioGroup;
    SQLGrupo: TRxQuery;
    SQLSubgrupo: TRxQuery;
    SQLVariacao: TRxQuery;
    SQLMarca: TRxQuery;
    DSSQLGrupo: TDataSource;
    DSSQLSubgrupo: TDataSource;
    DSSQLVariacao: TDataSource;
    Report: TCrpe;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
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
    SQLPRODUTO: TRxQuery;
    TblTemporariaVALORCUSTOUNIT: TFloatField;
    TblTemporariaSALDOUNIT: TFloatField;
    TblTemporariaTOTCUSTOITEM: TFloatField;
    TblTemporariaPRODIAGRUPGRADE: TIntegerField;
    CkTopN25: TCheckBox;
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
  FormRelatorioCurvaABCEstoque: TFormRelatorioCurvaABCEstoque;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioCurvaABCEstoque.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  if (ComboGrupo.Value <> '') then
    SQLProduto.MacroByName('MGrupo').Value := 'Produto.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProduto.MacroByName('MGrupo').Value := '0=0';

  if (ComboSubGrupo.Value <> '') then
    SQLProduto.MacroByName('MSubGrupo').Value := 'Produto.SUBGICOD = ' + ComboSubGrupo.Value
  else
    SQLProduto.MacroByName('MSubGrupo').Value := '0=0';

  if (ComboVariacao.Value <> '') then
    SQLProduto.MacroByName('MVariacao').Value := 'Produto.VARIICOD = ' + ComboVariacao.Value
  else
    SQLProduto.MacroByName('MVariacao').Value := '0=0';

  if (ComboMarca.Value <> '') then
    SQLProduto.MacroByName('MMarca').Value := 'Produto.MARCICOD = ' + ComboMarca.Value
  else
    SQLProduto.MacroByName('MMarca').Value := '0=0';

  if ComboEmpresa.KeyValue = null then
    begin
      SQLProduto.MacrobyName('MSaldo').Value := '(select sum(PRODUTOSALDO.PSLDN3QTDE) ' +
                                                'from PRODUTOSALDO ' +
                                                'where PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD) as Saldo';
    end
  else
    begin
      SQLProduto.MacrobyName('MSaldo').Value := '(select sum(PRODUTOSALDO.PSLDN3QTDE) ' +
                                                'from PRODUTOSALDO ' +
                                                'where PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD ' +
                                                'and ('+ SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO', 'EMPRICOD') +')) as Saldo' ;
    end;

  try
    SQLPRODUTO.Open;
    SQLPRODUTO.First;
  except
    Application.ProcessMessages;
  end;

  if SQLPRODUTO.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  Progresso.Min := 0;
  Progresso.Max := SQLProduto.RecordCount;
  Progresso.Position := 0;

  TblTemporaria.Open;
  if not SqlProduto.IsEmpty then
    while not SqlProduto.Eof do
      begin
        try
          if SqlProduto.fieldbyname('SALDO').AsVariant <> 0 then
            begin
              TblTemporaria.Append;
              TblTemporariaPRODICOD.AsInteger        := SqlProduto.fieldbyname('PRODICOD').AsInteger;
              TblTemporariaPRODIAGRUPGRADE.AsInteger := SqlProduto.fieldbyname('PRODIAGRUPGRADE').AsInteger;
              TblTemporariaPRODA60DESCR.AsString     := SqlProduto.fieldbyname('PRODA60DESCR').AsString;
              TblTemporariaVALORCUSTOUNIT.AsFloat    := SqlProduto.fieldbyname('PRODN3VLRCUSTO').AsVariant;
              TblTemporariaSALDOUNIT.AsFloat         := SqlProduto.fieldbyname('SALDO').AsVariant;
              if (TblTemporariaSALDOUNIT.AsFloat>0) and (TblTemporariaVALORCUSTOUNIT.AsFloat>0) then
                TblTemporariaTOTCUSTOITEM.AsFloat    := TblTemporariaVALORCUSTOUNIT.AsFloat * TblTemporariaSALDOUNIT.AsFloat
              else
                TblTemporariaTOTCUSTOITEM.AsFloat    := 0;
              TblTemporaria.Post;
            end;
        except
          Application.ProcessMessages;
        end;
        SqlProduto.Next;
        Progresso.Position := Progresso.Position + 1;
        Application.ProcessMessages;
      end;

  {if CKAgrupar.Checked then
    begin
      TblTemporaria.First;

    end;}

  Case RadioTipoRel.ItemIndex of
    0 : begin
          if not CkTopN25.Checked then
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Estoque por Quantidade.rpt'
          else
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Estoque por Quantidade TopN25.rpt';
          Report.ReportTitle       := 'Curva ABC de Estoque por Quantidade';
          Report.WindowStyle.Title := 'Curva ABC de Estoque por Quantidade';
        end;
    1 : begin
          if not CkTopN25.Checked then
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Estoque por Valor de Custo.rpt'
          else
            Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Estoque por Valor de Custo TopN25.rpt';
          Report.ReportTitle       := 'Curva ABC de Estoque por Valor de Custo';
          Report.WindowStyle.Title := 'Curva ABC de Estoque por Valor de Custo';
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

procedure TFormRelatorioCurvaABCEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open ;
  SQLSubGrupo.Open ;
  SQLVariacao.Open ;
  SQLMarca.Open ;
end;

procedure TFormRelatorioCurvaABCEstoque.Timer1Timer(Sender: TObject);
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

procedure TFormRelatorioCurvaABCEstoque.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

end.
