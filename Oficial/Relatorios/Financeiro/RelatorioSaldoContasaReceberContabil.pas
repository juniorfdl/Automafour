unit RelatorioSaldoContasaReceberContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioSaldoContasReceberContabil = class(TFormRelatorioTEMPLATE)
    SQLContasReceber: TRxQuery;
    Report: TCrpe;
    CheckNroDuplic: TCheckBox;
    GroupBox2: TGroupBox;
    Calendario: TMonthCalendar;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoSUM: TFloatField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberDTVENC: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCLIEA60CIDRES: TStringField;
    SQLContasReceberCLIEA15FONE1: TStringField;
    SQLContasReceberCLIEA15FONE2: TStringField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberDTULTREC: TStringField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberTPDCA60DESCR: TStringField;
    SQLContasReceberPORTA60DESCR: TStringField;
    DSSQLRecebimento: TDataSource;
    BtnCancelar: TSpeedButton;
    GroupBox3: TGroupBox;
    SQLHistoricoPadrao: TRxQuery;
    DSSQLHistoricoPadrao: TDataSource;
    SQLHistoricoPadraoHTPDICOD: TIntegerField;
    SQLHistoricoPadraoHTPDA100HISTORICO: TStringField;
    ComboHistorico: TRxDBLookupCombo;
    SQLContasReceberHTPDICOD: TIntegerField;
    RadioData: TRadioGroup;
    TbReceberCred: TTable;
    SQLContasReceberC: TRxQuery;
    TbReceberCredEMPRICOD: TIntegerField;
    TbReceberCredCLIEA13ID: TStringField;
    TbReceberCredCTRCA13ID: TStringField;
    TbReceberCredCTRCDEMIS: TDateTimeField;
    TbReceberCredCTRCINROPARC: TIntegerField;
    TbReceberCredCLIEA60RAZAOSOC: TStringField;
    TbReceberCredCTRCN2VLR: TFloatField;
    TbReceberCredEMPRICODULTREC: TIntegerField;
    TbReceberCredDTULTREC: TStringField;
    TbReceberCredCTRCN2TOTREC: TFloatField;
    TbReceberCredSALDO: TFloatField;
    TbReceberCredCTRCA30NRODUPLICBANCO: TStringField;
    TbReceberCredPORTA60DESCR: TStringField;
    TbReceberCredTPDCA60DESCR: TStringField;
    TbReceberCredCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberTIPODOC: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    TblTemporariaDTVENC: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA60CIDRES: TStringField;
    TblTemporariaCLIEA15FONE1: TStringField;
    TblTemporariaCLIEA15FONE2: TStringField;
    TblTemporariaCTRCN2VLR: TFloatField;
    TblTemporariaEMPRICODULTREC: TIntegerField;
    TblTemporariaDTULTREC: TStringField;
    TblTemporariaCTRCN2TOTREC: TFloatField;
    TblTemporariaCTRCN2TXJURO: TFloatField;
    TblTemporariaCTRCN2TXMULTA: TFloatField;
    TblTemporariaCTRCN2TOTDESCREC: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaCTRCCSTATUS: TStringField;
    TblTemporariaCTRCA30NRODUPLICBANCO: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaHTPDICOD: TIntegerField;
    TblTemporariaTIPODOC: TStringField;
    SQLContasReceberCCTRCDEMIS: TDateTimeField;
    SQLContasReceberCCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCCTRCINROPARC: TIntegerField;
    SQLContasReceberCEMPRICOD: TIntegerField;
    SQLContasReceberCCLIEA13ID: TStringField;
    SQLContasReceberCCTRCA13ID: TStringField;
    SQLContasReceberCCTRCDVENC: TDateTimeField;
    SQLContasReceberCDTVENC: TStringField;
    SQLContasReceberCCUPOA13ID: TStringField;
    SQLContasReceberCPDVDA13ID: TStringField;
    SQLContasReceberCNOFIA13ID: TStringField;
    SQLContasReceberCCLIEA60CIDRES: TStringField;
    SQLContasReceberCCLIEA15FONE1: TStringField;
    SQLContasReceberCCLIEA15FONE2: TStringField;
    SQLContasReceberCCTRCN2VLR: TFloatField;
    SQLContasReceberCEMPRICODULTREC: TIntegerField;
    SQLContasReceberCDTULTREC: TStringField;
    SQLContasReceberCCTRCN2TOTREC: TFloatField;
    SQLContasReceberCCTRCN2TXJURO: TFloatField;
    SQLContasReceberCCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberCSALDO: TFloatField;
    SQLContasReceberCNUMEICOD: TIntegerField;
    SQLContasReceberCCTRCCSTATUS: TStringField;
    SQLContasReceberCCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCTPDCA60DESCR: TStringField;
    SQLContasReceberCPORTA60DESCR: TStringField;
    SQLContasReceberCHTPDICOD: TIntegerField;
    SQLContasReceberCTIPODOC: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    Parar : Boolean;
  public
    { Public declarations }
  end;

var
  FormRelatorioSaldoContasReceberContabil: TFormRelatorioSaldoContasReceberContabil;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioSaldoContasReceberContabil.ExecutarBtnClick(
  Sender: TObject);
Var I : Integer;
begin
  inherited;
  BtnVisualizar.Enabled := False;
  BtnCancelar.Visible   := True;
  SQLContasReceber.Close ;

  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '');

  SQLContasReceber.MacrobyName('MData').Value    := '(CONTASRECEBER.CTRCDULTREC <= "' +
                                                    FormatDateTime('mm/dd/yyyy', Calendario.Date) + '"' +
                                                    'AND CONTASRECEBER.CTRCDULTREC IS NOT NULL) OR ' +
                                                    '(CONTASRECEBER.CTRCDULTREC IS NULL ' +
                                                    'AND CONTASRECEBER.CTRCDEMIS <= "' +
                                                    FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" ) OR ' +
                                                    '(CONTASRECEBER.CTRCDEMIS <= "' +
                                                    FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" AND ' +
                                                    'CONTASRECEBER.CTRCDULTREC >= "' +
                                                    FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" )' ;

  Case RadioData.ItemIndex of
    0 : SQLRecebimento.MacrobyName('MDataRec').Value   := 'RECEDRECTO   <= "' + FormatDateTime('mm/dd/yyyy', Calendario.Date) + '"';
    1 : SQLRecebimento.MacrobyName('MDataRec').Value   := 'RECEDDATAMOV <= "' + FormatDateTime('mm/dd/yyyy', Calendario.Date) + '"';
  end;

  if ComboHistorico.Value <> '' then
    SQLContasReceber.MacrobyName('MHistoricoPadrao').Value := 'CONTASRECEBER.HTPDICOD <> ' + ComboHistorico.Value  + ' or CONTASRECEBER.HTPDICOD is null'
  else
    SQLContasReceber.MacrobyName('MHistoricoPadrao').Value := '0=0';

  SQLContasReceber.Open;
  SQLRecebimento.Open;
  BatchExec(SQLContasReceber, TblTemporaria);

  //Creditos

  SQLContasReceberC.Close ;

  SQLContasReceberC.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '');

  SQLContasReceberC.MacrobyName('MData').Value    := '(CONTASRECEBER.CTRCDULTREC <= "' +
                                                    FormatDateTime('mm/dd/yyyy', Calendario.Date) + '"' +
                                                    'AND CONTASRECEBER.CTRCDULTREC IS NOT NULL) OR ' +
                                                    '(CONTASRECEBER.CTRCDULTREC IS NULL ' +
                                                    'AND CONTASRECEBER.CTRCDEMIS <= "' +
                                                    FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" ) OR ' +
                                                    '(CONTASRECEBER.CTRCDEMIS <= "' +
                                                    FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" AND ' +
                                                    'CONTASRECEBER.CTRCDULTREC >= "' +
                                                    FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" )' ;

  SQLContasReceberC.Open;

  TblTemporaria.Open;

  SQLContasReceberC.First;
  while not SQLContasReceberC.Eof do
    begin
      TblTemporaria.Append;
      for I := 0 to TblTemporaria.FieldCount-1 do
        TblTemporaria.FieldByName(SQLContasReceberC.Fields.Fields[I].FieldName).Value := SQLContasReceberC.Fields.Fields[I].Value;
//      TblTemporariaTIPODOC.AsString := 'C';
      SQLContasReceberC.Next;
      TblTemporaria.Post;
    end;

  Cursor := crDefault;
  Progresso.Min := 0;
  Progresso.Max := TblTemporaria.RecordCount;
  Progresso.Position := 0;
  TblTemporaria.First;
  while not TblTemporaria.Eof do
    begin
      if Parar then
        begin
          Break;
          BtnVisualizar.Enabled := True;
          BtnCancelar.Visible   := False;
          Exit;
        end;
      try
        TblTemporaria.Edit;

        if SQLRecebimentoSUM.AsFloat > 0 then
          TblTemporariaSALDO.AsFloat := TblTemporariaCTRCN2VLR.AsFloat - SQLRecebimentoSUM.AsFloat
        else
          TblTemporariaSALDO.AsFloat := TblTemporariaCTRCN2VLR.AsFloat;

        if TblTemporariaNOFIA13ID.AsString <> '' then
          begin
            TblTemporariaCTRCA13ID.Value := 'NF - ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                            SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;
          end;
        if TblTemporariaPDVDA13ID.AsString <> '' then
          begin
            TblTemporariaCTRCA13ID.AsString :='PD - ' + TblTemporariaPDVDA13ID.AsString;
          end;
        if TblTemporariaCUPOA13ID.AsString <> '' then
          begin
            TblTemporariaCTRCA13ID.AsString :='CP - ' + TblTemporariaCUPOA13ID.AsString;
          end;

        if (CheckNroDuplic.Checked) and (TblTemporariaCTRCA30NRODUPLICBANCO.AsString <> '') then
          TblTemporariaCTRCA13ID.AsString := TblTemporariaCTRCA30NRODUPLICBANCO.AsString;

        TblTemporaria.Post;
      except
      end;

      if  TblTemporariaSALDO.AsFloat > 0 then
        TblTemporaria.Next
      else
        TblTemporaria.Delete;

      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
      Application.ProcessMessages;
    end ;

   TblTemporaria.First;

   while not TblTemporaria.Eof do
     begin
       if TblTemporariaTIPODOC.AsString = 'C' then
         begin
           TblTemporaria.Edit;
           TblTemporariaSALDO.AsFloat := -TblTemporariaSALDO.AsFloat;
           TblTemporaria.Post;
         end;
       TblTemporaria.Next;
     end;

//

  //fim creditos

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Saldo Contas a Receber Contabil.rpt' ;
  Report.ReportTitle       := 'Relatório de Saldo de Contas À RECEBER Contábil' ;
  Report.WindowStyle.Title := 'Relatório de Saldo de Contas À RECEBER Contábil' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', Calendario.Date)+ '"' ;
  //--------------------------------------------------------------------------\\
  if ComboHistorico.Value <> '' then
    begin
      Report.Formulas.Name         := 'Historico' ;
      Report.Formulas.Formula.Text := '"' + ComboHistorico.Value + '"' ;
    end
  else
    begin
      Report.Formulas.Name         := 'Historico' ;
      Report.Formulas.Formula.Text := '"Nenhum"' ;
    end;
  //--------------------------------------------------------------------------\\
  Report.Execute ;

  BtnVisualizar.Enabled := True;
  BtnCancelar.Visible   := False;

end;

procedure TFormRelatorioSaldoContasReceberContabil.FormCreate(
  Sender: TObject);
begin
  inherited;
  Calendario.Date := Date;
  SQLHistoricoPadrao.Open;
end;

procedure TFormRelatorioSaldoContasReceberContabil.Button1Click(
  Sender: TObject);
begin
  inherited;
  Parar := True;
end;

procedure TFormRelatorioSaldoContasReceberContabil.BtnCancelarClick(
  Sender: TObject);
begin
  inherited;
  Parar := True;
end;

end.
