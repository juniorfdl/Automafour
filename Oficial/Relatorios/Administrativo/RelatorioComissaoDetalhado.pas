unit RelatorioComissaoDetalhado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioComissaoDetalhado = class(TFormRelatorioTEMPLATE)
    SQLComissao: TRxQuery;
    SQLComissaoVENDICOD: TIntegerField;
    SQLComissaoCUPOA13ID: TStringField;
    SQLComissaoVDCOICOD: TIntegerField;
    SQLComissaoVDCON2TOTVENDVISTA: TFloatField;
    SQLComissaoVDCON2TOTVENDPRAZO: TFloatField;
    SQLComissaoVDCOINROVEND: TIntegerField;
    SQLComissaoVDCON2VENDMEDIA: TFloatField;
    SQLComissaoVDCON3QTDVEND: TFloatField;
    SQLComissaoVDCON2VLRCOMISS: TFloatField;
    SQLComissaoVDCODEMIS: TDateTimeField;
    SQLComissaoPENDENTE: TStringField;
    SQLComissaoREGISTRO: TDateTimeField;
    SQLComissaoVDCODESTORNO: TDateTimeField;
    SQLComissaoVDCON3VLRESTORNO: TFloatField;
    SQLComissaoCLIEA13ID: TStringField;
    SQLComissaoVDCOA5TIPODOC: TStringField;
    SQLComissaoVDCOCDEBCRED: TStringField;
    SQLComissaoVDCON2PERCOMISSAO: TFloatField;
    SQLComissaoCLIEA60RAZAOSOC: TStringField;
    SQLComissaoVENDA60NOME: TStringField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaVDCOICOD: TIntegerField;
    TblTemporariaVDCON2TOTVENDVISTA: TFloatField;
    TblTemporariaVDCON2TOTVENDPRAZO: TFloatField;
    TblTemporariaVDCOINROVEND: TIntegerField;
    TblTemporariaVDCON2VENDMEDIA: TFloatField;
    TblTemporariaVDCON3QTDVEND: TFloatField;
    TblTemporariaVDCON2VLRCOMISS: TFloatField;
    TblTemporariaVDCODEMIS: TDateTimeField;
    TblTemporariaPENDENTE: TStringField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaVDCODESTORNO: TDateTimeField;
    TblTemporariaVDCON3VLRESTORNO: TFloatField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaVDCOA5TIPODOC: TStringField;
    TblTemporariaVDCOCDEBCRED: TStringField;
    TblTemporariaVDCON2PERCOMISSAO: TFloatField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaVENDA60NOME: TStringField;
    TblTemporariaDocumento: TStringField;
    Report: TCrpe;
    SQLComissaoVENDN2PERCIRRF: TFloatField;
    TblTemporariaVENDN2PERCIRRF: TFloatField;
    GroupBox2: TGroupBox;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    ComboVendedor: TRxDBLookupCombo;
    CKNroPedido: TCheckBox;
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
  FormRelatorioComissaoDetalhado: TFormRelatorioComissaoDetalhado;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioComissaoDetalhado.ExecutarBtnClick(Sender: TObject);
var
 I : Integer;
begin
  inherited;
  SQLComissao.Close;
  SQLComissao.MacrobyName('MData').Value := 'VENDEDORCOMISSAO.VDCODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                            'VENDEDORCOMISSAO.VDCODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboVendedor.Value <> '' then
    SQLComissao.MacrobyName('MVendedor').Value := 'VENDEDORCOMISSAO.VENDICOD = ' + ComboVendedor.Value
  else
    SQLComissao.MacrobyName('MVendedor').Value := '0=0';

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
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit;
      if TblTemporariaVDCOA5TIPODOC.AsString = 'NF' then
        begin
          TblTemporariaDocumento.AsString    := 'NF - ' + TblTemporariaCUPOA13ID.AsString;
        end
      else
        if TblTemporariaVDCOA5TIPODOC.AsString = 'CP' then
          begin
            TblTemporariaDocumento.AsString := SQLLocate('CUPOM','CUPOA13ID','CUPOINRO','"' + TblTemporariaCUPOA13ID.AsString + '"');
            if (TblTemporariaDocumento.AsString='0') or (TblTemporariaDocumento.AsString='') then
              TblTemporariaDocumento.AsString := 'CP-' + TblTemporariaCUPOA13ID.AsString
            else
              begin
                if TblTemporariaDocumento.AsInteger > 0 then
                  TblTemporariaDocumento.AsString := 'CP-' + TblTemporariaDocumento.AsString;
              end
          end
        else
          if TblTemporariaVDCOA5TIPODOC.AsString = 'PV' then
            begin
              if not CKNroPedido.Checked then
                TblTemporariaDocumento.AsString := 'PV - ' + TblTemporariaCUPOA13ID.AsString
              else
                TblTemporariaDocumento.AsString := 'PV - ' + SQLLocate('PEDIDOVENDA','PDVDA13ID','PDVDINROTALAO','"' + TblTemporariaCUPOA13ID.AsString + '"');
            end
          else
            if TblTemporariaVDCOA5TIPODOC.AsString = 'MN' then
              TblTemporariaDocumento.AsString := TblTemporariaCUPOA13ID.AsString;
              
      TblTemporaria.Post;
      TblTemporaria.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;
  Progresso.Position := 0;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Relatorio de Comissoes Detalhado.rpt' ;
//  AjustaCaminhoCrystal;
  Report.ReportTitle       := 'Relatório de Comissões Detalhado' ;
  Report.WindowStyle.Title := 'Relatório de Comissões Detalhado' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;

  Report.Formulas.Name         := 'Empresa' ;
  if ComboEmpresa.Value <> '' then
    Report.Formulas.Formula.Text := '"' + ComboEmpresa.DisplayValue + '"'
  else
    Report.Formulas.Formula.Text := '"' + EmpresaAtualNome + '"';
    
  Report.Execute;

end;

procedure TFormRelatorioComissaoDetalhado.ComboVendedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormRelatorioComissaoDetalhado.FormCreate(Sender: TObject);
begin
  inherited;
  SQLVendedor.Open;
end;

end.
