unit RelatorioEstoquePorLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioEstoquePorLote = class(TFormRelatorioTEMPLATE)
    SQLLote: TRxQuery;
    SQLLoteLOTEA30NRO: TStringField;
    SQLLoteLOTEDVECTO: TDateTimeField;
    SQLLoteREGISTRO: TDateTimeField;
    SQLLotePENDENTE: TStringField;
    GroupBox2: TGroupBox;
    ComboLote: TRxDBLookupCombo;
    DSSQLLote: TDataSource;
    SQLEstoque: TRxQuery;
    SQLEstoqueSALDO: TFloatField;
    SQLEstoqueLOTEA30NRO: TStringField;
    SQLEstoquePRODICOD: TIntegerField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaLOTEA30NRO: TStringField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    Report: TCrpe;
    CheckPeriodo: TCheckBox;
    FSRelEstoqueLote: TFormStorage;
    SQLEstoqueLOTEDVECTO: TDateTimeField;
    TblTemporariaLOTEDVECTO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioEstoquePorLote: TFormRelatorioEstoquePorLote;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioEstoquePorLote.FormCreate(Sender: TObject);
begin
  inherited;
  SQLLote.Open;
end;

procedure TFormRelatorioEstoquePorLote.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLEstoque.Close;
  if ((De.Date > 0) and (Ate.Date > 0)) and (not CheckPeriodo.Checked) then
    begin
      SQLEstoque.MacroByName('Data').Value := 'MVESDMOV >= ' + '''' + FormatDateTime('mm/dd/yyyy',De.Date)  + '''' + ' and ' +
                                              'MVESDMOV <= ' + '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
    end
  else
    begin
      SQLEstoque.MacroByName('Data').Value := '0=0';
    end;

  if ComboLote.Value <> '' then
    SQLEstoque.MacroByName('Lote').Value   := 'LOTEA30NRO = ' + '''' + ComboLote.Value + ''''
  else
    SQLEstoque.MacroByName('Lote').Value   := '0=0';

  SQLEstoque.Open;
  if (SQLEstoque.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  SQLEstoque.First;
  TblTemporaria.Open;
  While not SQLEstoque.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaLOTEA30NRO.AsString   := SQLEstoqueLOTEA30NRO.AsString;
      TblTemporariaPRODICOD.AsInteger    := SQLEstoquePRODICOD.AsInteger;
      TblTemporariaPRODA60DESCR.AsString := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLEstoquePRODICOD.AsString);
      TblTemporariaSALDO.AsFloat         := SQLEstoqueSALDO.AsFloat;
      TblTemporariaLOTEDVECTO.AsDateTime := SQLEstoqueLOTEDVECTO.AsDateTime;
      TblTemporaria.Post;
      SQLEstoque.Next;
    end;
   Report.ReportName  := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Estoque Por Lote.rpt';
   Report.ReportTitle       := 'Relatório de Estoque por Lote';
   Report.WindowStyle.Title := 'Relatório de Estoque por Lote';
   Report.Execute;
end;

end.
