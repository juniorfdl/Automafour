unit RelatorioNotasCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioNotasCompra = class(TFormRelatorioTEMPLATE)
    SQLNotaCompras: TRxQuery;
    EmissaoChk: TRadioButton;
    DigitacaoChk: TRadioButton;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    GroupBox2: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    Report: TCrpe;
    SQLNotaComprasNOCPA13ID: TStringField;
    SQLNotaComprasNOCPA30NRO: TStringField;
    SQLNotaComprasNOCPA5SERIE: TStringField;
    SQLNotaComprasEMPRICOD: TIntegerField;
    SQLNotaComprasNOCPDEMISSAO: TDateTimeField;
    SQLNotaComprasNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotaComprasFORNICOD: TIntegerField;
    SQLNotaComprasNOCPN3VLRICMS: TBCDField;
    SQLNotaComprasNOCPN3VLRIPI: TBCDField;
    SQLNotaComprasNOCPN3VLRTOTNOTA: TBCDField;
    SQLNotaComprasFORNA60RAZAOSOC: TStringField;
    TblTemporariaNOCPA13ID: TStringField;
    TblTemporariaNOCPA30NRO: TStringField;
    TblTemporariaNOCPA5SERIE: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaNOCPDEMISSAO: TDateTimeField;
    TblTemporariaNOCPDRECEBIMENTO: TDateTimeField;
    TblTemporariaFORNICOD: TIntegerField;
    TblTemporariaNOCPN3VLRICMS: TBCDField;
    TblTemporariaNOCPN3VLRIPI: TBCDField;
    TblTemporariaNOCPN3VLRTOTNOTA: TBCDField;
    TblTemporariaFORNA60RAZAOSOC: TStringField;
    SQLOperEstoque: TRxQuery;
    DSSQLOperEstoque: TDataSource;
    GroupBox3: TGroupBox;
    ComboOperEstoque: TRxDBLookupCombo;
    RadioStatus: TRadioGroup;
    SQLNotaComprasNOCPN3VLRBASCALICM: TBCDField;
    TblTemporariaNOCPN3VLRBASCALICM: TBCDField;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    DSSQLCFOP: TDataSource;
    GroupBox4: TGroupBox;
    ComboCFOP: TRxDBLookupCombo;
    SQLCFOPCFOPA60DESCR: TStringField;
    ComboSerie: TRxDBLookupCombo;
    Label5: TLabel;
    SQLSerie: TRxQuery;
    DSSQLSerie: TDataSource;
    SQLSerieSERIA5COD: TStringField;
    CKMostrarNFComFinanceiro: TCheckBox;
    GroupBox5: TGroupBox;
    OrdemData: TRadioButton;
    OrdemFornecedor: TRadioButton;
    TblTempIcms: TTable;
    TblTempIcmsDATA: TDateField;
    TblTempIcmsLEGENDA: TStringField;
    TblTempIcmsVALOR: TFloatField;
    ckTotAliq: TCheckBox;
    SQLComprasItem: TRxQuery;
    SQLComprasItemNOCPA13ID: TStringField;
    SQLComprasItemNOCPDEMISSAO: TDateTimeField;
    SQLComprasItemNOCPDRECEBIMENTO: TDateTimeField;
    SQLComprasItemPRODICOD: TIntegerField;
    SQLComprasItemNOCIN3VLRICMS: TBCDField;
    SQLComprasItemNOCIN3PERCICMS: TBCDField;
    SQLComprasItemQTDE: TFloatField;
    SQLComprasItemNOCIN3VLREMBAL: TBCDField;
    TblTempIcmsALIQUOTA: TFloatField;
    SQLComprasItemNOCIN3VLRSUBST: TBCDField;
    SQLComprasItemNOCIN2PERCSUBST: TBCDField;
    CKMostrarNFSemFinanceiro: TCheckBox;
    SQLNotaComprasEMPRICODDESTCOMPRA: TIntegerField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CKMostrarNFComFinanceiroClick(Sender: TObject);
    procedure CKMostrarNFSemFinanceiroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioNotasCompra: TFormRelatorioNotasCompra;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioNotasCompra.ExecutarBtnClick(Sender: TObject);
var NotaFinanceiro : String;
begin
  inherited;
  SQLNotaCompras.Close ;
  SQLNotaCompras.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA','EMPRICODDESTCOMPRA') ;

  if EmissaoChk.Checked then
    SQLNotaCompras.MacrobyName('MData').Value := 'NOTACOMPRA.NOCPDEMISSAO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and '+
                                                 'NOTACOMPRA.NOCPDEMISSAO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLNotaCompras.MacrobyName('MData').Value := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and '+
                                                 'NOTACOMPRA.NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if ComboFornecedor.Text <> '' then
    SQLNotaCompras.MacrobyName('MFornecedor').Value := 'NOTACOMPRA.FORNICOD = ' + ComboFornecedor.Value
  else
    SQLNotaCompras.MacrobyName('MFornecedor').Value := '0=0' ;

  if (ComboOperEstoque.KeyValue <> null) and (ComboOperEstoque.KeyValue > 0) then
    SQLNotaCompras.MacroByName('OperEstoque').Value := 'NOTACOMPRA.OPESICOD = ' + IntToStr(ComboOperEstoque.KeyValue)
  else
    SQLNotaCompras.MacroByName('OperEstoque').Value := '0=0';

  case RadioStatus.ItemIndex of
    0 : SQLNotaCompras.MacroByName('Status').Value := 'NOTACOMPRA.NOCPCSTATUS = "A"';
    1 : SQLNotaCompras.MacroByName('Status').Value := 'NOTACOMPRA.NOCPCSTATUS = "E"';
    2 : SQLNotaCompras.MacroByName('Status').Value := 'NOTACOMPRA.NOCPCSTATUS = "C"';
    3 : SQLNotaCompras.MacroByName('Status').Value := '0=0';
  end;

  if ComboCFOP.Value <> '' then
    SQLNotaCompras.MacroByName('CFOP').AsString := 'NOTACOMPRA.CFOPA5COD = "' + ComboCFOP.Value + '"'
  else
    SQLNotaCompras.MacroByName('CFOP').AsString := '0=0';

  if ComboSerie.Value <> '' then
    SQLNotaCompras.MacroByName('Serie').AsString := 'NOTACOMPRA.NOCPA5SERIE = "' + ComboSerie.Value + '"'
  else
    SQLNotaCompras.MacroByName('Serie').AsString := '0=0';

{  if CKMostrarNFComFinanceiro.Checked then
    SQLNotaCompras.MacroByName('MostraFin').AsString := 'NOTACOMPRA.NOCPA13ID IN (Select NOCPA13ID from CONTASPAGAR Where NOCPA13ID = NOTACOMPRA.NOCPA13ID)'
  else
    SQLNotaCompras.MacroByName('MostraFin').AsString := '0=0'; }

  if CKMostrarNFSemFinanceiro.Checked then
    SQLNotaCompras.MacroByName('MostraFin').AsString := 'NOTACOMPRA.NOCPA13ID NOT IN (Select NOCPA13ID from CONTASPAGAR Where NOCPA13ID = NOTACOMPRA.NOCPA13ID)'
  else
    SQLNotaCompras.MacroByName('MostraFin').AsString := '0=0';

  SQLNotaCompras.Open ;
  if (SQLNotaCompras.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  BatchExec(SQLNotaCompras, TblTemporaria) ;

  // SQL para totalizar o ICMS por Aliquota
  If ckTotAliq.Checked Then
    begin
      SQLComprasItem.Close ;
      SQLComprasItem.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA','') ;

      if EmissaoChk.Checked then
        SQLComprasItem.MacrobyName('MData').Value := 'NOTACOMPRA.NOCPDEMISSAO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and '+
                                                     'NOTACOMPRA.NOCPDEMISSAO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
      else
        SQLComprasItem.MacrobyName('MData').Value := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and '+
                                                     'NOTACOMPRA.NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

      if ComboFornecedor.Text <> '' then
        SQLComprasItem.MacrobyName('MFornecedor').Value := 'NOTACOMPRA.FORNICOD = ' + ComboFornecedor.Value
      else
        SQLComprasItem.MacrobyName('MFornecedor').Value := '0=0' ;

      if (ComboOperEstoque.KeyValue <> null) and (ComboOperEstoque.KeyValue > 0) then
        SQLComprasItem.MacroByName('OperEstoque').Value := 'NOTACOMPRA.OPESICOD = ' + IntToStr(ComboOperEstoque.KeyValue)
      else
        SQLComprasItem.MacroByName('OperEstoque').Value := '0=0';

      case RadioStatus.ItemIndex of
        0 : SQLComprasItem.MacroByName('Status').Value := 'NOTACOMPRA.NOCPCSTATUS = "A"';
        1 : SQLComprasItem.MacroByName('Status').Value := 'NOTACOMPRA.NOCPCSTATUS = "E"';
        2 : SQLComprasItem.MacroByName('Status').Value := 'NOTACOMPRA.NOCPCSTATUS = "C"';
        3 : SQLComprasItem.MacroByName('Status').Value := '0=0';
      end;

      if ComboCFOP.Value <> '' then
        SQLComprasItem.MacroByName('CFOP').AsString := 'NOTACOMPRA.CFOPA5COD = "' + ComboCFOP.Value + '"'
      else
        SQLComprasItem.MacroByName('CFOP').AsString := '0=0';

      if ComboSerie.Value <> '' then
        SQLComprasItem.MacroByName('Serie').AsString := 'NOTACOMPRA.NOCPA5SERIE = "' + ComboSerie.Value + '"'
      else
        SQLComprasItem.MacroByName('Serie').AsString := '0=0';

      SQLComprasItem.Open ;

      // Cria Tabela Temp
      TblTempIcms.Close;
      try
        TblTempIcms.DeleteTable;
        TblTempIcms.CreateTable;
      except
        TblTempIcms.CreateTable;
      end;
      TblTempIcms.Open;

      while not sqlcomprasitem.Eof do
        begin
          TblTempIcms.Append;

          if EmissaoChk.Checked then
            TblTempIcmsDATA.Value := SQLComprasItemNOCPDEMISSAO.Value
          else
            TblTempIcmsDATA.Value := SQLComprasItemNOCPDRECEBIMENTO.Value;
          if SQLComprasItemNOCIN3PERCICMS.Value > 0 then
            begin
              TblTempIcmsLEGENDA.Value  := 'ICMS';
              TblTempIcmsALIQUOTA.Value := SQLComprasItemNOCIN3PERCICMS.Value;
              TblTempIcmsVALOR.Value    := SQLComprasItemNOCIN3VLRICMS.Value;
            end;
          if SQLComprasItemNOCIN2PERCSUBST.Value > 0 then
            begin
              TblTempIcmsLEGENDA.Value  := 'SUBST.TRIB';
              TblTempIcmsALIQUOTA.Value := SQLComprasItemNOCIN2PERCSUBST.Value;
              TblTempIcmsVALOR.Value    := SQLComprasItemNOCIN3VLRSUBST.Value;
            end;
          if (SQLComprasItemNOCIN3PERCICMS.Value = 0) and (SQLComprasItemNOCIN2PERCSUBST.Value = 0) then
            begin
              TblTempIcmsLEGENDA.Value  := 'ISENTO';
              TblTempIcmsALIQUOTA.Value := 0;
              TblTempIcmsVALOR.Value    := SQLComprasItemNOCIN3VLREMBAL.Value * SQLComprasItemQTDE.Value;
            end;

          TblTempIcms.Post;
          sqlcomprasitem.next;
        end;
    end;

  if CKMostrarNFComFinanceiro.Checked then
    begin
      if not TblTemporaria.Active then TblTemporaria.Open;
      while not TblTemporaria.eof do
        begin
          NotaFinanceiro := dm.SQLLocate('CONTASPAGAR','NOCPA13ID','NOCPA13ID','"'+TblTemporariaNOCPA13ID.Value+'"');
          if NotaFinanceiro = '' then
            begin
              TblTemporaria.delete;
              TblTemporaria.Prior;
            end;
          TblTemporaria.Next;
        end;
      TblTemporaria.Close;
    end;

  if not TblTemporaria.Active then TblTemporaria.Open;
  if TblTemporaria.RecordCount = 0 then
    begin
      ShowMessage('Nao existem dados a serem impressos!');
      abort;
    end;
  if TblTemporaria.Active then TblTemporaria.Close;

  // Carrega o Report
  if not ckTotAliq.Checked then
    Report.ReportName   := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Notas de Compra.rpt'
  else
    Report.ReportName   := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Notas de Compra Total por Aliquota.rpt';

  Report.ReportTitle        := 'Relatório de Notas de Compra';
  Report.WindowStyle.Title  := 'Relatório de Notas de Compra';

  Report.Formulas.Retrieve;
  Report.Formulas.Name := 'Empresa';
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.text + '"';
  Report.Formulas.Name := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) + '"';
  Report.Formulas.Name := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '"' + De.Text + ' até ' + Ate.Text + '"';
  if (ComboFornecedor.KeyValue <> null) and (ComboFornecedor.KeyValue > 0) then
    begin
      Report.Formulas.Name := 'Fornecedor';
      Report.Formulas.Formula.Text := '"' + ComboFornecedor.DisplayValue + '"';
    end;
   if (ComboOperEstoque.KeyValue <> null) and (ComboOperEstoque.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'OperacaoEstoque';
       Report.Formulas.Formula.Text := '"' + ComboOperEstoque.DisplayValue + '"';
     end;
  Report.SectionFormat.Retrieve;
  Report.GroupOptions.Retrieve;

  if DigitacaoChk.Checked then
    begin
      Report.ReportTitle := 'Relatório de Notas de Compra Por Digitação' ;
      Report.Formulas.Name := 'FiltroData';
      Report.Formulas.Formula.Text := '"' + 'Data de Digitação' + '"';
      Report.SectionFormat.Section  := 'GH2';
      Report.SectionFormat.Suppress := CTrue;
      Report.SectionFormat.Section  := 'GF2';
      Report.SectionFormat.Suppress := CTrue;

      Report.SectionFormat.Section  := 'GH3';
      Report.SectionFormat.Suppress := CFalse;
      Report.SectionFormat.Section  := 'GF3';
      Report.SectionFormat.Suppress := CFalse;

      Report.GroupOptions.Item[1].Field := '{RelNotaCompras.NOCPDRECEBIMENTO}';
    end
  else
    begin
      Report.ReportTitle := 'Relatório de Notas de Compra Por Emissão' ;
      Report.Formulas.Name := 'FiltroData';
      Report.Formulas.Formula.Text := '"' + 'Data da Emissão' + '"';
      Report.SectionFormat.Section  := 'GH3';
      Report.SectionFormat.Suppress := CTrue;
      Report.SectionFormat.Section  := 'GF3';
      Report.SectionFormat.Suppress := CTrue;

      Report.SectionFormat.Section  := 'GH2';
      Report.SectionFormat.Suppress := CFalse;
      Report.SectionFormat.Section  := 'GF2';
      Report.SectionFormat.Suppress := CFalse;

      Report.GroupOptions.Item[1].Field := '{RelNotaCompras.NOCPDEMISSAO}';
    end;
  Report.Formulas.Send;
  Report.SectionFormat.Send;
  Report.GroupOptions.Send;

  Report.Execute ;
end ;

procedure TFormRelatorioNotasCompra.FormCreate(Sender: TObject);
begin
  inherited;
  SQLFornecedor.Open;
  SQLOperEstoque.Open;
  SQLCFOP.Open;
  SQLSerie.Open;
end;

procedure TFormRelatorioNotasCompra.CKMostrarNFComFinanceiroClick(
  Sender: TObject);
begin
  inherited;
  CKMostrarNFSemFinanceiro.Checked := False;
end;

procedure TFormRelatorioNotasCompra.CKMostrarNFSemFinanceiroClick(
  Sender: TObject);
begin
  inherited;
  CKMostrarNFComFinanceiro.Checked := False;
end;

end.
