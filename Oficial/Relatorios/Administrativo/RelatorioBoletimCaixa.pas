unit RelatorioBoletimCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Db, DBTables, ComCtrls, RxLookup, StdCtrls,
  Mask, ToolEdit, ExtCtrls, Buttons, jpeg, OleCtrls, Placemnt,
  ImgList, RxQuery, UCrpe32, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioBoletimCaixa = class(TFormRelatorioTEMPLATE)
    SQLOperador: TQuery;
    DSSQLOperador: TDataSource;
    DSSQLTerminal: TDataSource;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    SQLBoletim: TRxQuery;
    SQLBoletimEMPRICOD: TIntegerField;
    SQLBoletimTERMICOD: TIntegerField;
    SQLBoletimTOTAICOD: TIntegerField;
    SQLBoletimTODIDMOV: TDateTimeField;
    SQLBoletimTODIN2VLRDEBITO: TFloatField;
    SQLBoletimTODIN2VLRCREDITO: TFloatField;
    SQLBoletimUSUAICOD: TIntegerField;
    SQLBoletimTOTAA60DESCR: TStringField;
    SQLBoletimTOTAIORDLIST: TIntegerField;
    SQLBoletimTERMA60DESCR: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaTOTAICOD: TIntegerField;
    TblTemporariaTODIDMOV: TDateTimeField;
    TblTemporariaTODIN2VLRDEBITO: TFloatField;
    TblTemporariaTODIN2VLRCREDITO: TFloatField;
    TblTemporariaUSUAICOD: TIntegerField;
    TblTemporariaTOTAA60DESCR: TStringField;
    TblTemporariaTOTAIORDLIST: TIntegerField;
    TblTemporariaTERMA60DESCR: TStringField;
    Report: TCrpe;
    SQLFechamentoCaixa: TRxQuery;
    TblFechamentoCaixa: TTable;
    SQLFechamentoCaixaFECXDDATAMOV: TDateTimeField;
    SQLFechamentoCaixaEMPRICOD: TIntegerField;
    SQLFechamentoCaixaTERMICOD: TIntegerField;
    SQLFechamentoCaixaNUMEICOD: TIntegerField;
    SQLFechamentoCaixaFECXN2VALOR: TFloatField;
    SQLFechamentoCaixaUSUAICOD: TIntegerField;
    TblFechamentoCaixaFECXDDATAMOV: TDateTimeField;
    TblFechamentoCaixaEMPRICOD: TIntegerField;
    TblFechamentoCaixaTERMICOD: TIntegerField;
    TblFechamentoCaixaNUMEICOD: TIntegerField;
    TblFechamentoCaixaFECXN2VALOR: TFloatField;
    TblFechamentoCaixaUSUAICOD: TIntegerField;
    TblFechamentoCaixaNUMEA30DESCR: TStringField;
    TblFechamentoCaixaUSUAA60LOGIN: TStringField;
    SQLTerminal: TRxQuery;
    GroupTerminalAux: TGroupBox;
    ComboTerminalAux: TRxDBLookupCombo;
    SQLTerminalAux: TRxQuery;
    DSSQLTerminalAux: TDataSource;
    SQLBoletimAux: TRxQuery;
    SQLBoletimAuxEMPRICOD: TIntegerField;
    SQLBoletimAuxTERMICOD: TIntegerField;
    SQLBoletimAuxTOTAICOD: TIntegerField;
    SQLBoletimAuxTODIDMOV: TDateTimeField;
    SQLBoletimAuxTODIN2VLRDEBITO: TFloatField;
    SQLBoletimAuxTODIN2VLRCREDITO: TFloatField;
    SQLBoletimAuxUSUAICOD: TIntegerField;
    SQLBoletimAuxTOTAA60DESCR: TStringField;
    SQLBoletimAuxTOTAIORDLIST: TIntegerField;
    SQLBoletimAuxTERMA60DESCR: TStringField;
    SQLFechamentoCaixaAux: TRxQuery;
    SQLFechamentoCaixaAuxFECXDDATAMOV: TDateTimeField;
    SQLFechamentoCaixaAuxEMPRICOD: TIntegerField;
    SQLFechamentoCaixaAuxTERMICOD: TIntegerField;
    SQLFechamentoCaixaAuxNUMEICOD: TIntegerField;
    SQLFechamentoCaixaAuxFECXN2VALOR: TFloatField;
    SQLFechamentoCaixaAuxUSUAICOD: TIntegerField;
    CkBobina: TCheckBox;
    ReportBobina: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel11: TppLabel;
    ppLabel22: TppLabel;
    Fone: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel21: TppLabel;
    PipeCaixa: TppBDEPipeline;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppTerminais: TppLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure DSSQLTerminalDataChange(Sender: TObject; Field: TField);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioBoletimCaixa: TFormRelatorioBoletimCaixa;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormRelatorioBoletimCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  SQLOperador.Open ;

  SQLTerminal.Close;

  if FileExists(DM.PathAplicacao + 'Terminal.cfg') then
    SQLTerminal.MacroByName('MFiltro').Value := 'TERMINAL.ECFA13ID <> '' '''
  else
    SQLTerminal.MacroByName('MFiltro').Value := '0=0';

  SQLTerminal.Open ;

  if not FileExists(DM.PathAplicacao + 'Terminal.cfg') then
    begin
      GroupTerminalAux.Visible := True;
      SQLTerminalAux.Open;
    end;

  if dm.SQLUsuario.FieldByName('USUACPERMVMOVCX').Value <> 'S' then
    begin
      de.Enabled  := False;
      ate.Enabled := False;
    end;
end ;

procedure TFormRelatorioBoletimCaixa.ExecutarBtnClick(Sender: TObject);
var
  I : Integer;
begin
  inherited;
  if (ComboTerminalAux.Text <> '') and (ComboTerminal.Text = '') then
    begin
      Informa('O Terminal deve ser Informado');
      ComboTerminal.SetFocus;
      Abort;
    end;

  SQLBoletim.Close ;
  SQLBoletim.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'TOTALIZADORDIARIOCAIXA', '') ;
  SQLBoletim.MacrobyName('MData').Value    := 'TOTALIZADORDIARIOCAIXA.TODIDMOV >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                              'TOTALIZADORDIARIOCAIXA.TODIDMOV <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
  if ComboTerminal.text <> '' then
    SQLBoletim.MacrobyName('MTerminal').Value := 'TOTALIZADORDIARIOCAIXA.TERMICOD = ' + ComboTerminal.Value ;

  SQLBoletim.Open ;
  if SQLBoletim.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Exit;
    end;

  BatchExec(SQLBoletim, TblTemporaria) ;

  if (ComboTerminalAux.Value <> '') and (ComboTerminalAux.Visible) then
    begin
      SQLBoletimAux.Close;
      SQLBoletimAux.MacroByName('MEmpresaAux').Value   := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'TOTALIZADORDIARIOCAIXA', '') ;
      SQLBoletimAux.MacrobyName('MDataAux').Value      := 'TOTALIZADORDIARIOCAIXA.TODIDMOV >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                       'TOTALIZADORDIARIOCAIXA.TODIDMOV <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
      SQLBoletimAux.MacrobyName('MTerminalAux').Value  := 'TOTALIZADORDIARIOCAIXA.TERMICOD = ' + ComboTerminalAux.Value ;

      SQLBoletimAux.Open;
      SQLBoletimAux.First;
      TblTemporaria.First;
      while not SQLBoletimAux.Eof do
        begin
          if TblTemporaria.Locate('TOTAICOD',SQLBoletimAuxTOTAICOD.AsInteger,[]) then
            begin
              TblTemporaria.Edit;
              TblTemporariaTODIN2VLRCREDITO.AsFloat := TblTemporariaTODIN2VLRCREDITO.AsFloat + SQLBoletimAuxTODIN2VLRCREDITO.AsFloat;
              TblTemporariaTODIN2VLRDEBITO.AsFloat  := TblTemporariaTODIN2VLRDEBITO.AsFloat  + SQLBoletimAuxTODIN2VLRDEBITO.AsFloat;
              TblTemporaria.Post;
            end;
          SQLBoletimAux.Next;
        end;
    end;

  //Valores de Fechamento do Caixa

  SQLFechamentoCaixa.Close;
  SQLFechamentoCaixa.MacroByName('Mdata').Value := 'FECXDDATAMOV >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' and ' +
                                                   'FECXDDATAMOV <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  if ComboTerminal.Value <> '' then
    SQLFechamentoCaixa.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value
  else
    SQLFechamentoCaixa.MacroByName('MTerminal').Value := '0=0';

    TblFechamentoCaixa.Close;
  try
    TblFechamentoCaixa.DeleteTable;
    TblFechamentoCaixa.CreateTable;
  except
    TblFechamentoCaixa.CreateTable;
  end;
    TblFechamentoCaixa.Open;

  SQLFechamentoCaixa.Open;
  SQLFechamentoCaixa.First;
  while not SQLFechamentoCaixa.Eof do
    begin
      TblFechamentoCaixa.Append;
      for I := 0 to SQLFechamentoCaixa.FieldCount - 1 do
        begin
          if TblFechamentoCaixa.FieldByName(SQLFechamentoCaixa.Fields[I].FieldName) <> nil then
            TblFechamentoCaixa.FieldByName(SQLFechamentoCaixa.Fields[I].FieldName).AsVariant := SQLFechamentoCaixa.Fields[I].AsVariant;
          TblFechamentoCaixa.FieldByName('NUMEA30DESCR').AsString := SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLFechamentoCaixaNUMEICOD.AsString);
          TblFechamentoCaixa.FieldByName('USUAA60LOGIN').AsString := SQLLocate('USUARIO','USUAICOD','USUAA60LOGIN',SQLFechamentoCaixaUSUAICOD.AsString);
        end;
      TblFechamentoCaixa.Post;
      SQLFechamentoCaixa.Next;
    end;
  if ComboTerminalAux.Value <> '' then
    begin
      SQLFechamentoCaixaAux.Close;
      SQLFechamentoCaixaAux.MacroByName('MdataAux').Value := 'FECXDDATAMOV >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' and ' +
                                                             'FECXDDATAMOV <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

      if ComboTerminalAux.Value <> '' then
        SQLFechamentoCaixaAux.MacroByName('MTerminalAux').Value := 'TERMICOD = ' + ComboTerminalAux.Value
      else
        SQLFechamentoCaixaAux.MacroByName('MTerminalAux').Value := '0=0';

      SQLFechamentoCaixaAux.Open;
      SQLFechamentoCaixaAux.First;
      TblFechamentoCaixa.Open;
      while not SQLFechamentoCaixaAux.Eof do
        begin
          if TblFechamentoCaixa.Locate('NUMEICOD',SQLFechamentoCaixaAuxNUMEICOD.AsInteger,[]) then
            begin
              TblFechamentoCaixa.Edit;
              TblFechamentoCaixaFECXN2VALOR.AsFloat := TblFechamentoCaixaFECXN2VALOR.AsFloat + SQLFechamentoCaixaAuxFECXN2VALOR.AsFloat;
              TblFechamentoCaixa.Post;
            end;
          SQLFechamentoCaixaAux.Next;
        end;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Boletim de Caixa.rpt' ;

  Report.ReportTitle       := 'Boletim de Caixa' ;
  Report.WindowStyle.Title := 'Boletim de Caixa' ;
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Terminal' ;
  if ComboTerminal.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboTerminal.Text + '  '+ ComboTerminalAux.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  if not CkBobina.Checked then
    Report.Execute
  else
    ReportBobina.print;  
end;

procedure TFormRelatorioBoletimCaixa.DSSQLTerminalDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  ComboTerminalAux.Enabled := ComboTerminal.Value <> '';
end;

procedure TFormRelatorioBoletimCaixa.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  if (ComboTerminal.Value <> '') and (ComboTerminalAux.Value = '') then
    ppTerminais.caption := ComboTerminal.DisplayValue;
  if (ComboTerminal.Value <> '') and (ComboTerminalAux.Value <> '') then
    ppTerminais.caption := ComboTerminal.DisplayValue + ', '+ ComboTerminalAux.DisplayValue;
  if (ComboTerminal.Value = '') and (ComboTerminalAux.Value = '') then
    ppTerminais.caption := 'Todos...';
end;

end.
