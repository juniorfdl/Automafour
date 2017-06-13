unit RelatorioTransferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, StdCtrls, DBTables, Placemnt, DB, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioTransferencia = class(TFormRelatorioTEMPLATE)
    chkPeriodoEmissao: TCheckBox;
    GroupBox2: TGroupBox;
    dblProduto: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DeReceb: TDateEdit;
    AteReceb: TDateEdit;
    chkPeriodoRecebimento: TCheckBox;
    GroupBox4: TGroupBox;
    dblEmpresaDestino: TRxDBLookupCombo;
    GroupBox5: TGroupBox;
    chkSoRecebidos: TCheckBox;
    dblUsuarioEnvio: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    dblUsuarioRecebimento: TRxDBLookupCombo;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    dsSQLProduto: TDataSource;
    SQLUsuario: TRxQuery;
    dsSQLUsuario: TDataSource;
    SQLRelatorio: TRxQuery;
    SQLUsuarioUSUARIO: TStringField;
    crpReport: TCrpe;
    SQLItem: TRxQuery;
    SQLItemTRITICOD: TIntegerField;
    SQLItemTRFEA13ID: TStringField;
    SQLItemPRODICOD: TIntegerField;
    SQLItemTRITN3QTDEENVIADA: TBCDField;
    SQLItemTRITN3QTDERECEBIDA: TBCDField;
    SQLItemTRITA254DIVERGENCIA: TStringField;
    SQLItemREGISTRO: TDateTimeField;
    SQLItemPENDENTE: TStringField;
    SQLItemProdutoLookup: TStringField;
    tblRelTransferencia: TTable;
    tblRelTransferenciaItem: TTable;
    tblRelTransferenciaItemTRITICOD: TIntegerField;
    tblRelTransferenciaItemTRFEA13ID: TStringField;
    tblRelTransferenciaItemPRODICOD: TIntegerField;
    tblRelTransferenciaItemTRITN3QTDEENVIADA: TBCDField;
    tblRelTransferenciaItemTRITN3QTDERECEBIDA: TBCDField;
    tblRelTransferenciaItemTRITA254DIVERGENCIA: TStringField;
    tblRelTransferenciaItemREGISTRO: TDateTimeField;
    tblRelTransferenciaItemPENDENTE: TStringField;
    tblRelTransferenciaItemProdutoLookup: TStringField;
    SQLRelatorioTRFEA13ID: TStringField;
    SQLRelatorioEMPRICOD: TIntegerField;
    SQLRelatorioTERMICOD: TIntegerField;
    SQLRelatorioTRFEICOD: TIntegerField;
    SQLRelatorioTRFEIEMPRDEST: TIntegerField;
    SQLRelatorioTRFEDEMISSAO: TDateTimeField;
    SQLRelatorioREGISTRO: TDateTimeField;
    SQLRelatorioPENDENTE: TStringField;
    SQLRelatorioTRFECRECEBIDO: TStringField;
    SQLRelatorioTRFEDRECEBIMENTO: TDateTimeField;
    SQLRelatorioTRFEA30USUENVIO: TStringField;
    SQLRelatorioTRFEA30USURECEB: TStringField;
    SQLRelatorioDESTRAZAOSOC: TStringField;
    SQLRelatorioDESTFONE: TStringField;
    SQLRelatorioDESTEND: TStringField;
    SQLRelatorioDESTBAI: TStringField;
    SQLRelatorioDESTCID: TStringField;
    SQLRelatorioDESTUF: TStringField;
    SQLRelatorioREMETRAZAOSOC: TStringField;
    SQLRelatorioREMETFONE: TStringField;
    SQLRelatorioREMETEND: TStringField;
    SQLRelatorioREMETBAI: TStringField;
    SQLRelatorioREMETCID: TStringField;
    SQLRelatorioREMETUF: TStringField;
    tblRelTransferenciaTRFEA13ID: TStringField;
    tblRelTransferenciaEMPRICOD: TIntegerField;
    tblRelTransferenciaTERMICOD: TIntegerField;
    tblRelTransferenciaTRFEICOD: TIntegerField;
    tblRelTransferenciaTRFEIEMPRDEST: TIntegerField;
    tblRelTransferenciaTRFEDEMISSAO: TDateTimeField;
    tblRelTransferenciaREGISTRO: TDateTimeField;
    tblRelTransferenciaPENDENTE: TStringField;
    tblRelTransferenciaTRFECRECEBIDO: TStringField;
    tblRelTransferenciaTRFEDRECEBIMENTO: TDateTimeField;
    tblRelTransferenciaTRFEA30USUENVIO: TStringField;
    tblRelTransferenciaTRFEA30USURECEB: TStringField;
    tblRelTransferenciaDESTRAZAOSOC: TStringField;
    tblRelTransferenciaDESTFONE: TStringField;
    tblRelTransferenciaDESTEND: TStringField;
    tblRelTransferenciaDESTBAI: TStringField;
    tblRelTransferenciaDESTCID: TStringField;
    tblRelTransferenciaDESTUF: TStringField;
    tblRelTransferenciaREMETRAZAOSOC: TStringField;
    tblRelTransferenciaREMETFONE: TStringField;
    tblRelTransferenciaREMETEND: TStringField;
    tblRelTransferenciaREMETBAI: TStringField;
    tblRelTransferenciaREMETCID: TStringField;
    tblRelTransferenciaREMETUF: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure SQLItemCalcFields(DataSet: TDataSet);
    procedure MontaTabelas(SQL : String);
    procedure AteExit(Sender: TObject);
    procedure AteRecebExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioTransferencia: TFormRelatorioTransferencia;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}
procedure RefazTabela(Tabela : TTable);
begin
   try
      Tabela.Close;
      Tabela.DeleteTable;
      Tabela.CreateTable;
   except
      Tabela.CreateTable;
   end;
end;

procedure TFormRelatorioTransferencia.FormCreate(Sender: TObject);
begin
  RefazTabela(tblRelTransferencia);
  RefazTabela(tblRelTransferenciaItem);
  inherited;
  if not SQLEmpresa.Active then SQLEmpresa.Active := True;
  if not SQLProduto.Active then SQLProduto.Active := True;
  if not SQLUsuario.Active then SQLUsuario.Active := True;
end;

procedure TFormRelatorioTransferencia.ExecutarBtnClick(
  Sender: TObject);
Var SQLExecutar : String;
begin
  inherited;
  SQLExecutar := '0=0';

  if not FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia.rpt') then
     begin
        Informa('Não foi encontrado o Relatório de Transferencia.' + #13 +
                'Arquivo: Relatorio Transferencia.rpt ' + #13 +
                'Local:   ' + DM.SQLConfigGeralCFGEA255PATHREPORT.AsString);
        Abort;
     end;

  if ComboEmpresa.KeyValue <> Null then
     SQLExecutar := ' TRANSFERENCIA.EMPRICOD = ' + IntToStr(ComboEmpresa.KeyValue) ;

  if dblEmpresaDestino.KeyValue <> Null then
     begin
        if SQLExecutar = '0=0' then
           SQLExecutar := ' TRANSFERENCIA.TRFEIEMPRDEST = ' + IntToStr(dblEmpresaDestino.KeyValue)
        else
           SQLExecutar := SQLExecutar + ' and TRANSFERENCIA.TRFEIEMPRDEST = ' + IntToStr(dblEmpresaDestino.KeyValue);
     end;

  if dblProduto.KeyValue <> Null then
     begin
        if SQLExecutar = '0=0' then
           SQLExecutar := ' TRANSFERENCIA.TRFEA13ID in (select TRFEA13ID from TRANSFERENCIAITEM where PRODICOD = ' + IntToStr(dblProduto.KeyValue) + ')'
        else
           SQLExecutar := SQLExecutar + ' and TRANSFERENCIA.TRFEA13ID in (select TRFEA13ID from TRANSFERENCIAITEM where PRODICOD = ' + IntToStr(dblProduto.KeyValue) + ')';
     end;

  if chkPeriodoEmissao.Checked then
     begin
        if SQLExecutar = '0=0' then
           SQLExecutar := ' TRANSFERENCIA.TRFEDEMISSAO >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + ' 00:00:00" as TimeStamp) and ' +
                          ' TRANSFERENCIA.TRFEDEMISSAO <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' 23:59:59" as TimeStamp)'
        else
           SQLExecutar := SQLExecutar + ' and ' +
                          ' TRANSFERENCIA.TRFEDEMISSAO >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + ' 00:00:00" as TimeStamp) and ' +
                          ' TRANSFERENCIA.TRFEDEMISSAO <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' 23:59:59" as TimeStamp)';
     end;

  if chkPeriodoRecebimento.Checked then
     begin
        if SQLExecutar = '0=0' then
           SQLExecutar := ' TRANSFERENCIA.TRFEDRECEBIMENTO  >= Cast("' + FormatDateTime('mm/dd/yyyy', DeReceb.Date) + ' 00:00:00" as TimeStamp) and ' +
                          ' TRANSFERENCIA.TRFEDRECEBIMENTO  <= Cast("' + FormatDateTime('mm/dd/yyyy', AteReceb.Date) + ' 23:59:59" as TimeStamp)'
        else
           SQLExecutar := SQLExecutar + ' and ' +
                          ' TRANSFERENCIA.TRFEDRECEBIMENTO  >= Cast("' + FormatDateTime('mm/dd/yyyy', DeReceb.Date) + ' 00:00:00" as TimeStamp) and ' +
                          ' TRANSFERENCIA.TRFEDRECEBIMENTO  <= Cast("' + FormatDateTime('mm/dd/yyyy', AteReceb.Date) + ' 23:59:59" as TimeStamp)';
     end;

  if dblUsuarioEnvio.KeyValue <> Null then
     begin
        if SQLExecutar = '0=0' then
           SQLExecutar := ' TRANSFERENCIA.TRFEA30USUENVIO  = "' + dblUsuarioEnvio.KeyValue + '"'
        else
           SQLExecutar := SQLExecutar + ' and TRANSFERENCIA.TRFEA30USUENVIO  = "' + dblUsuarioEnvio.KeyValue + '"';
     end;

  if dblUsuarioRecebimento.KeyValue <> Null then
     begin
        if SQLExecutar = '0=0' then
           SQLExecutar := ' TRANSFERENCIA.TRFEA30USURECEB = "' + dblUsuarioRecebimento.KeyValue + '"'
        else
           SQLExecutar := SQLExecutar + ' and TRANSFERENCIA.TRFEA30USURECEB = "' + dblUsuarioRecebimento.KeyValue + '"';
     end;

  if chkSoRecebidos.State = cbChecked then
     begin
       if SQLExecutar = '0=0' then
          SQLExecutar := ' TRFECRECEBIDO = "S"'
       else
          SQLExecutar := SQLExecutar + ' and TRFECRECEBIDO = "S"'
     end;

  if chkSoRecebidos.State = cbUnchecked then
     begin
       if SQLExecutar = '0=0' then
          SQLExecutar := ' TRFECRECEBIDO = "N"'
       else
          SQLExecutar := SQLExecutar + ' and TRFECRECEBIDO = "N"'
     end;

  MontaTabelas(SQLExecutar);


  crpReport.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia.rpt';

  crpReport.WindowStyle.Title := 'Relatório de Transferência';
  crpReport.ReportTitle       := 'Relatório de Transferência';
  crpReport.Execute;
end;

procedure TFormRelatorioTransferencia.MontaTabelas(SQL : String);
Var I : Integer;
    IDTransferencias : TStringList;
begin
  RefazTabela(tblRelTransferencia);
  RefazTabela(tblRelTransferenciaItem);

  tblRelTransferencia.AddIndex('TRFEA13ID_Index', 'TRFEA13ID', [ixPrimary]);
  tblRelTransferenciaItem.AddIndex('TRFEA13ID_Index', 'TRFEA13ID;TRITICOD', [ixPrimary]);  

  SQLRelatorio.Close;
  SQLRelatorio.MacroByName('MFiltro').AsString := SQL;
  SQLRelatorio.Open;

  SQLRelatorio.First;
  if not tblRelTransferencia.Active     then tblRelTransferencia.Active     := True;
  if not tblRelTransferenciaItem.Active then tblRelTransferenciaItem.Active := True;
  if IDTransferencias = nil then IDTransferencias := TStringList.Create;
  
  while not SQLRelatorio.Eof do
     begin
        tblRelTransferencia.Append;
        for I := 0 to tblRelTransferencia.FieldCount - 1 do
           tblRelTransferencia.Fields.Fields[I].Value := SQLRelatorio.FieldByName(tblRelTransferencia.Fields.Fields[I].FieldName).Value;
        tblRelTransferencia.Post;
        if IDTransferencias.IndexOf('"' + SQLRelatorioTRFEA13ID.AsString + '",') < 0 then
           IDTransferencias.Add('"' + SQLRelatorioTRFEA13ID.AsString + '",');
        SQLRelatorio.Next;
     end;

  if IDTransferencias.Count > 0 then
     begin
         for I := Length(IDTransferencias.Text) downto 0 do
            if IDTransferencias.Text[I] = ',' then
               begin
                  IDTransferencias.Text := Copy(IDTransferencias.Text, 0, I - 1);
                  Break;
               end;
         SQLItem.Close;
         SQLItem.MacroByName('MFiltro').AsString := ' TRFEA13ID in (' + IDTransferencias.Text + ')';
         SQLItem.Open;

         SQLItem.First;
         while not SQLItem.Eof do
            begin
               tblRelTransferenciaItem.Append;
               for I := 0 to tblRelTransferenciaItem.FieldCount - 1 do
                  tblRelTransferenciaItem.Fields.Fields[I].Value := SQLItem.FieldByName(tblRelTransferenciaItem.Fields.Fields[I].FieldName).Value;
               tblRelTransferenciaItem.Post;
               SQLItem.Next;
            end;
     end;
end;

procedure TFormRelatorioTransferencia.SQLItemCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
        end;
    end;

end;

procedure TFormRelatorioTransferencia.AteExit(Sender: TObject);
begin
  inherited;
  if De.date > Ate.Date then
     begin
        Informa('A data de Inicio não pode ser maior que a data final.');
        Ate.SetFocus;
        Abort;
     end;
end;

procedure TFormRelatorioTransferencia.AteRecebExit(Sender: TObject);
begin
  inherited;
  if DeReceb.date > AteReceb.Date then
     begin
        Informa('A data de Inicio não pode ser maior que a data final.');
        AteReceb.SetFocus;
        Abort;
     end;
end;

end.
