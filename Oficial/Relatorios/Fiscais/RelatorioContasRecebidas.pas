unit RelatorioContasRecebidas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, DBTables, Placemnt, Db, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, RXCtrls, VarSys, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasRecebidas = class(TFormRelatorioTEMPLATE)
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    SQLContasReceber: TRxQuery;
    SQLCliente: TQuery;
    DSSQLCliente: TDataSource;
    Report: TCrpe;
    TblTemporariaEMPRICODREC: TIntegerField;
    TblTemporariaRECEDRECTO: TDateTimeField;
    TblTemporariaRECEN2DESC: TFloatField;
    TblTemporariaRECEN2VLRJURO: TFloatField;
    TblTemporariaRECEN2VLRMULTA: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCN2VLR: TFloatField;
    TblTemporariaEMPRICODULTREC: TIntegerField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    GroupCliente: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    GroupNumerario: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ListTerminal: TRxCheckListBox;
    CheckCupom: TCheckBox;
    CheckTerminal: TCheckBox;
    GroupPortador: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    SQLPortador: TQuery;
    DSSQLPortador: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    GroupTpDoc: TGroupBox;
    ComboTipoDoc: TRxDBLookupCombo;
    SQLTipoDoc: TQuery;
    DSSQLTipoDoc: TDataSource;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    CheckPortTipoDoc: TCheckBox;
    SQLContasReceberEMPRICODREC: TIntegerField;
    SQLContasReceberRECEDRECTO: TDateTimeField;
    SQLContasReceberRECEN2DESC: TFloatField;
    SQLContasReceberRECEN2VLRJURO: TFloatField;
    SQLContasReceberRECEN2VLRMULTA: TFloatField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberTPDCA60DESCR: TStringField;
    SQLContasReceberPORTA60DESCR: TStringField;
    SQLContasReceberCTRCA13ID: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    CheckOrdemContrato: TCheckBox;
    TblTemporariaRECEN2VLRRECTO: TFloatField;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    DSSQLPlanoContas: TDataSource;
    GroupPlanoContas: TGroupBox;
    ComboConta: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DeVenc: TDateEdit;
    AteVenc: TDateEdit;
    SQLCupomNumerario: TRxQuery;
    ckIncluiVendasVista: TCheckBox;
    SQLCupomNumerarioCTRCA13ID: TStringField;
    SQLCupomNumerarioEMPRICODREC: TIntegerField;
    SQLCupomNumerarioRECEDRECTO: TDateTimeField;
    SQLCupomNumerarioRECEN2DESC: TFloatField;
    SQLCupomNumerarioRECEN2VLRJURO: TFloatField;
    SQLCupomNumerarioRECEN2VLRMULTA: TFloatField;
    SQLCupomNumerarioRECEN2VLRRECTO: TFloatField;
    SQLCupomNumerarioEMPRICOD: TIntegerField;
    SQLCupomNumerarioCTRCDVENC: TDateTimeField;
    SQLCupomNumerarioCTRCINROPARC: TIntegerField;
    SQLCupomNumerarioCUPOA13ID: TStringField;
    SQLCupomNumerarioNOFIA13ID: TStringField;
    SQLCupomNumerarioPDVDA13ID: TStringField;
    SQLCupomNumerarioCLIEA13ID: TStringField;
    SQLCupomNumerarioCTRCN2VLR: TFloatField;
    SQLCupomNumerarioEMPRICODULTREC: TIntegerField;
    SQLCupomNumerarioSALDO: TFloatField;
    SQLCupomNumerarioNUMEICOD: TIntegerField;
    SQLCupomNumerarioCLIEA60RAZAOSOC: TStringField;
    SQLCupomNumerarioTPDCA60DESCR: TStringField;
    SQLCupomNumerarioPORTA60DESCR: TStringField;
    CheckNroDuplic: TCheckBox;
    CkImprimeIDCupom: TCheckBox;
    SQLContasReceberTERMICODREC: TIntegerField;
    SQLContasReceberUSUAICOD: TIntegerField;
    TblTemporariaTERMICODREC: TIntegerField;
    TblTemporariaUSUAICOD: TIntegerField;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    EmissInicial: TDateEdit;
    EmissFinal: TDateEdit;
    CheckNossoNumero: TCheckBox;
    SQLContasReceberCTRCA15NOSSONUMERO: TStringField;
    TblTemporariaCTRCA15NOSSONUMERO: TStringField;
    SQLContasReceberRECEN2VLRRECTO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboEmpresaChange(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckTerminalClick(Sender: TObject);
    procedure CheckNroDuplicClick(Sender: TObject);
    procedure CheckNossoNumeroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasRecebidas: TFormRelatorioContasRecebidas;

implementation

uses UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormRelatorioContasRecebidas.FormCreate(Sender: TObject);
begin
  inherited;
  SQLNumerario.Open ;
  SQLCliente.Open ;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLPlanoContas.Open;

  if not UsuarioMaster then
    ListaTerminal(ListTerminal,EmpresaPadrao)
  else
    ListaTerminal(ListTerminal,'');
end;

procedure TFormRelatorioContasRecebidas.ExecutarBtnClick(Sender: TObject);
var
  NroDuplic, NroDocumento : String;
  i : integer ;
begin
  inherited;
  SQLContasReceber.Close ;
  SQLCupomNumerario.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value  := '0=0' ;
  SQLContasReceber.MacrobyName('MData').Value     := '0=0' ;
  SQLContasReceber.MacrobyName('MCliente').Value  := '0=0' ;
  if ckIncluiVendasVista.Checked then
    begin
      SQLCupomNumerario.MacrobyName('MCliente').Value := '0=0' ;
      SQLCupomNumerario.MacrobyName('MEmpresa').Value := '0=0' ;
    end;
  //SETAR MACROS CONTAS A RECEBER
  SQLContasReceber.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  if ckIncluiVendasVista.Checked then
    SQLCupomNumerario.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;

  SQLContasReceber.MacrobyName('MData').Value     := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if ckIncluiVendasVista.Checked then
    SQLCupomNumerario.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if (DeVenc.Text = '  /  /    ') and (AteVenc.Text = '  /  /    ') then
    SQLContasReceber.MacrobyName('MDataVenc').Value   := '0=0'
  else
    begin
      SQLContasReceber.MacrobyName('MData').Value   := '0=0';
      SQLContasReceber.MacrobyName('MDataVenc').Value := 'CONTASRECEBER.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', DeVenc.Date) + '" and ' +
                                                         'CONTASRECEBER.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', AteVenc.Date) + '"' ;
    end;

  if (EmissInicial.Text = '  /  /    ') and (EmissFinal.Text = '  /  /    ') then
    SQLContasReceber.MacrobyName('MDataEmiss').Value   := '0=0'
  else
    begin
      SQLContasReceber.MacrobyName('MDataEmiss').Value := 'CONTASRECEBER.CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy', EmissInicial.Date) + '" and ' +
                                                          'CONTASRECEBER.CTRCDEMIS <= "' + FormatDateTime('mm/dd/yyyy', EmissFinal.Date) + '"' ;
    end;


  if ComboPortador.Value <> '' then
    SQLContasReceber.MacrobyName('MPortador').Value := 'CONTASRECEBER.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasReceber.MacrobyName('MPortador').Value := '0=0';

  if ComboTipoDoc.Value <> '' then
    SQLContasReceber.MacrobyName('MTipoDoc').Value  := 'CONTASRECEBER.TPDCICOD = '  + ComboTipoDoc.Value
  else
    SQLContasReceber.MacrobyName('MTipoDoc').Value  := '0=0';

  if CheckCupom.Checked then
    begin
      SQLContasReceber.MacrobyName('MCupom').Value  := 'CONTASRECEBER.CUPOA13ID IN(SELECT CUPOA13ID FROM CUPOM WHERE CUPOINRO IS NOT NULL AND CUPOINRO > 0)';
      if ckIncluiVendasVista.Checked then
        SQLCupomNumerario.MacrobyName('MCupom').Value := 'CUPOMNUMERARIO.CUPOA13ID IN(SELECT CUPOA13ID FROM CUPOM WHERE CUPOINRO IS NOT NULL AND CUPOINRO > 0)';
    end
  else
    begin
      SQLContasReceber.MacrobyName('MCupom').Value  := '0=0';
      if ckIncluiVendasVista.Checked then
        SQLCupomNumerario.MacrobyName('MCupom').Value := '0=0';
    end;
  if ComboCliente.text <> '' then
  begin
    SQLContasReceber.MacrobyName('MCliente').Value  := 'RECEBIMENTO.CLIEA13ID = "' + ComboCliente.Value + '"' ;
    if ckIncluiVendasVista.Checked then
      SQLCupomNumerario.MacrobyName('MCliente').Value := 'CUPOM.CLIEA13ID = "' + ComboCliente.Value + '"' ;
  end ;

  if ComboNumerario.text <> '' then
    begin
      SQLContasReceber.MacrobyName('MNumerario').Value  := 'CONTASRECEBER.NUMEICOD = ' + ComboNumerario.Value;
      if ckIncluiVendasVista.Checked then
        SQLCupomNumerario.MacrobyName('MNumerario').Value := 'CUPOMNUMERARIO.NUMEICOD = ' + ComboNumerario.Value;
    end
  else
    begin
      SQLContasReceber.MacrobyName('MNumerario').Value  := '0=0';
      if ckIncluiVendasVista.Checked then
        SQLCupomNumerario.MacrobyName('MNumerario').Value := '0=0';
    end;
  //SETAR O(S) TERMINAL(IS);
  if CheckTerminal.Checked then
    begin
      SQLContasReceber.MacrobyName('MTerminal').Value   := 'RECEBIMENTO.TERMICODREC IN' + MontaSQLdeListaTerminal(ListTerminal);
      if ckIncluiVendasVista.Checked then
        SQLCupomNumerario.MacrobyName('MTerminal').Value  := 'CUPOM.TERMICOD IN' + MontaSQLdeListaTerminal(ListTerminal);
    end
  else
    begin
      SQLContasReceber.MacrobyName('MTerminal').Value   := '0=0';
      if ckIncluiVendasVista.Checked then
        SQLCupomNumerario.MacrobyName('MTerminal').Value  := '0=0';
    end;
  if ComboConta.Value <> '' then
    SQLContasReceber.MacrobyName('MConta').Value := 'CONTASRECEBER.PLCTA15COD = "'+ ComboConta.Value + '"'
  else
    SQLContasReceber.MacrobyName('MConta').Value := '0=0';

//  ShowMessage(SQLContasReceber.RealSQL.Text);
  SQLContasReceber.Open ;

  TblTemporaria.Open ;

  // Inserir Registros do Contas a Receber
  SQLContasReceber.First ;
  while not SQLContasReceber.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLContasReceber.FieldCount-1 do
        if SQLContasReceber.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLContasReceber.Fields[i].FieldName).AsVariant := SQLContasReceber.Fields[i].AsVariant ;
      TblTemporaria.Post ;
      SQLContasReceber.Next ;
    end ;

  if ckIncluiVendasVista.Checked then
    begin
      // Inserir Registros a Vista
      SQLCupomNumerario.Open;
      SQLCupomNumerario.First ;
      while not SQLCupomNumerario.Eof do
        begin
          TblTemporaria.Append ;
          for i := 0 to SQLCupomNumerario.FieldCount-1 do
            if SQLCupomNumerario.Fields[i].AsString <> '' then
              TblTemporaria.FieldByName(SQLCupomNumerario.Fields[i].FieldName).AsVariant := SQLCupomNumerario.Fields[i].AsVariant ;
          TblTemporaria.Post ;
          SQLCupomNumerario.Next ;
        end ;
    end;

  // BatchExec(SQLContasReceber, TblTemporaria) ;
  TblTemporaria.First;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;
      if (TblTemporariaNOFIA13ID.AsString <> '') AND (NOT CheckNossoNumero.Checked) THEN
        TblTemporariaCTRCA13ID.AsString := SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                           SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;

      if TblTemporariaCTRCA13ID.AsString = '' then
        TblTemporariaCTRCA13ID.AsString := SQLContasReceberCTRCA13ID.AsString;
      if TblTemporariaPDVDA13ID.AsString <> '' then
        TblTemporariaCTRCA13ID.AsString := 'PD.' + TblTemporariaPDVDA13ID.AsString;
      if TblTemporariaCUPOA13ID.AsString <> '' then
        begin
          if not CkImprimeIDCupom.Checked then
            begin
              NroDocumento := SQLLocate('CUPOM','CUPOA13ID','CUPOINRO','"'+TblTemporariaCUPOA13ID.AsString+'"');
              if NroDocumento <> '' then
                TblTemporariaCTRCA13ID.AsString := 'CP.' + NroDocumento
              else
                TblTemporariaCTRCA13ID.AsString := 'CP.' + TblTemporariaCUPOA13ID.AsString;
            end
          else
            begin
              TblTemporariaCTRCA13ID.AsString := TblTemporariaCUPOA13ID.AsString;
            end;
        end;

      if CheckNroDuplic.Checked then
        begin
           NroDuplic := SQLLocate('CONTASRECEBER','CTRCA13ID','CTRCA30NRODUPLICBANCO','"' + TblTemporariaCTRCA13ID.AsString + '"');
          if NroDuplic <> '' then
            TblTemporariaCTRCA13ID.AsString := NroDuplic;
        end;
      if CheckNossoNumero.Checked then
        begin
           NroDuplic := SQLLocate('CONTASRECEBER','CTRCA13ID','CTRCA15NOSSONUMERO','"' + TblTemporariaCTRCA13ID.AsString + '"');
          if NroDuplic <> '' then
            TblTemporariaCTRCA13ID.AsString := NroDuplic;
        end;

      TblTemporaria.Post ;
      TblTemporaria.Next ;
    end ;
  TblTemporaria.Close;

  if not CheckPortTipoDoc.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas.rpt'
  else
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas Detalhado.rpt';

  //AjustaCaminhoCrystal;

  Report.ReportTitle       := 'Relatório de Contas Recebidas';
  Report.WindowStyle.Title := 'Relatório de Contas Recebidas';
 //SETAR FORMULAS REPORT
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;

  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  if (DeVenc.Text = '  /  /    ') and (AteVenc.Text = '  /  /    ') then
    begin
      // Por Data Recebimento
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                            FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
    end
  else
    begin
      // Por Data de Vencimento
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', DeVenc.Date) + ' até ' +
                                            FormatDateTime('dd/mm/yyyy', AteVenc.Date) + '"' ;
    end;

  if CheckOrdemContrato.Checked then
    begin
      Report.SortFields.Retrieve;

      Report.SortFields.Clear;
      // ID Contrato
      Report.SortFields.Add(0);
      Report.SortFields.Number := 0;
      Report.SortFields.Field  := '{RelContasReceber.CUPOA13ID}';
      // ID ContasReceber
      Report.SortFields.Add(1);
      Report.SortFields.Number := 1;
      Report.SortFields.Field  := '{RelContasReceber.CTRCA13ID}';
      // Parcela
      Report.SortFields.Add(2);
      Report.SortFields.Number := 2;
      Report.SortFields.Field  := '{RelContasReceber.CTRCINROPARC}';

      Report.SortFields.Send;
    end;
  Report.Execute ;
end;
procedure TFormRelatorioContasRecebidas.ComboEmpresaChange(
  Sender: TObject);
begin                                                                      
  inherited;
  if ComboEmpresa.Text <> 'Todas' then
    ListaTerminal(ListTerminal,ComboEmpresa.Value)
  else
    ListaTerminal(ListTerminal,'');

end;

procedure TFormRelatorioContasRecebidas.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormRelatorioContasRecebidas.CheckTerminalClick(
  Sender: TObject);
begin
  inherited;
  if CheckTerminal.Checked then
    ComboEmpresa.Value := '';
end;

procedure TFormRelatorioContasRecebidas.CheckNroDuplicClick(
  Sender: TObject);
begin
  inherited;
  If CheckNroDuplic.checked then
    CheckNossoNumero.checked := not CheckNroDuplic.checked;
end;

procedure TFormRelatorioContasRecebidas.CheckNossoNumeroClick(
  Sender: TObject);
begin
  inherited;
  if CheckNossoNumero.checked then
    CheckNroDuplic.Checked := not CheckNossoNumero.checked;
end;

end.
