unit RelatorioChequesRecebidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, ExtCtrls, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, Buttons, jpeg, RxQuery, unitlibrary,
  OleCtrls, UCrpe32, DBCtrls, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache,
  ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppviewr,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioChequeRecebidos = class(TFormRelatorioTEMPLATE)
    RadioTipoRel: TRadioGroup;
    SQLPortador: TRxQuery;
    SQLAlinea: TRxQuery;
    SQLCliente: TRxQuery;
    SQLCheque: TRxQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DSSQLCliente: TDataSource;
    DSSQLPortador: TDataSource;
    DSSQLAlinea: TDataSource;
    SQLChequeCTRCA13ID: TStringField;
    SQLChequeEMPRICOD: TIntegerField;
    SQLChequeTERMICOD: TIntegerField;
    SQLChequeCLIEA13ID: TStringField;
    SQLChequeCTRCCSTATUS: TStringField;
    SQLChequeCTRCINROPARC: TIntegerField;
    SQLChequeCTRCDVENC: TDateTimeField;
    SQLChequeCTRCN2VLR: TFloatField;
    SQLChequeCTRCN2DESCFIN: TFloatField;
    SQLChequeCTRCN2TOTREC: TFloatField;
    SQLChequeCTRCDULTREC: TDateTimeField;
    SQLChequePORTICOD: TIntegerField;
    SQLChequeCTRCA5TIPOPADRAO: TStringField;
    SQLChequeCUPOA13ID: TStringField;
    SQLChequeBANCA5CODCHQ: TStringField;
    SQLChequeCTRCA10AGENCIACHQ: TStringField;
    SQLChequeCTRCA15CONTACHQ: TStringField;
    SQLChequeCTRCA15NROCHQ: TStringField;
    SQLChequeCTRCA60TITULARCHQ: TStringField;
    SQLChequeCTRCA20CGCCPFCHQ: TStringField;
    SQLChequeCTRCDDEPOSCHQ: TDateTimeField;
    SQLChequeALINICOD: TIntegerField;
    SQLChequeCLIEA60RAZAOSOC: TStringField;
    SQLChequePORTA60DESCR: TStringField;
    SQLChequeALINA30DESCR: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCCSTATUS: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCN2VLR: TFloatField;
    TblTemporariaCTRCN2DESCFIN: TFloatField;
    TblTemporariaCTRCN2TOTREC: TFloatField;
    TblTemporariaCTRCDULTREC: TDateTimeField;
    TblTemporariaPORTICOD: TIntegerField;
    TblTemporariaCTRCA5TIPOPADRAO: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaBANCA5CODCHQ: TStringField;
    TblTemporariaCTRCA10AGENCIACHQ: TStringField;
    TblTemporariaCTRCA15CONTACHQ: TStringField;
    TblTemporariaCTRCA15NROCHQ: TStringField;
    TblTemporariaCTRCA60TITULARCHQ: TStringField;
    TblTemporariaCTRCA20CGCCPFCHQ: TStringField;
    TblTemporariaCTRCDDEPOSCHQ: TDateTimeField;
    TblTemporariaALINICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaALINA30DESCR: TStringField;
    Report: TCrpe;
    ComboPortador: TDBLookupComboBox;
    ComboAlinea: TDBLookupComboBox;
    ComboCliente: TDBLookupComboBox;
    RadioData: TRadioGroup;
    SQLChequeCTRCDEMIS: TDateTimeField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    Label8: TLabel;
    ComboProtocolo: TDBLookupComboBox;
    SQLProtocolo: TRxQuery;
    DSSQLProtocolo: TDataSource;
    SQLProtocoloPRCHICOD: TIntegerField;
    SQLProtocoloPRCHA30NOME: TStringField;
    SQLChequePRCHICOD: TIntegerField;
    CKImprimeDadosCliente: TCheckBox;
    ppRptCheques: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    SQLClienteAux: TRxQuery;
    TblTemporariaClienteEndRes: TStringField;
    TblTemporariaClienteCidRes: TStringField;
    TblTemporariaClienteBaiRes: TStringField;
    TblTemporariaClienteCEPRes: TStringField;
    TblTemporariaClienteFone1: TStringField;
    TblTemporariaClienteEmpresa: TStringField;
    TblTemporariaClienteEmpresaEnd: TStringField;
    TblTemporariaClienteEmpresaBairro: TStringField;
    TblTemporariaClienteEmpresaCidade: TStringField;
    TblTemporariaClienteEmpresaFone: TStringField;
    TblTemporariaClienteProfissao: TStringField;
    Pipe: TppBDEPipeline;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel18: TppLabel;
    ppDBText17: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel19: TppLabel;
    SQLChequeCUPON2ACRESC: TFloatField;
    SQLChequeCUPON2TOTITENS: TFloatField;
    TblTemporariaCUPON2ACRESC: TFloatField;
    TblTemporariaCUPON2TOTITENS: TFloatField;
    CKResumoCheques: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppRptChequesPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetarDatPeriodoEmissaoRpt;
  public
    { Public declarations }
  end;

var
  FormRelatorioChequeRecebidos: TFormRelatorioChequeRecebidos;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioChequeRecebidos.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  if TblTemporaria.Active then
    TblTemporaria.Close ;
  try
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
    TblTemporaria.CreateTable;
  end;

  if not TblTemporaria.Active then
    TblTemporaria.Open;
  if SQLCheque.Active then
    SQLCheque.Close;
  case RadioTipoRel.ItemIndex of
  0: begin
       SQLCheque.MacroByName('MCampoFiltro').Value := 'CR.CTRCDDEPOSCHQ is null';
       if RadioData.ItemIndex = 0 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDVENC';
       if RadioData.ItemIndex = 1 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDEMIS';
       if RadioData.ItemIndex = 2 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDDEPOSCHQ';
       SQLCheque.MacroByName('MDataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" ';
       SQLCheque.MacroByName('MDataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" ';
     end;
  1: begin
       SQLCheque.MacroByName('MCampoFiltro').Value := 'CR.CTRCDULTREC is not null';
       if RadioData.ItemIndex = 0 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDVENC';
       if RadioData.ItemIndex = 1 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDEMIS';
       if RadioData.ItemIndex = 2 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDDEPOSCHQ';
       SQLCheque.MacroByName('MDataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" ';
       SQLCheque.MacroByName('MDataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" ';
     end;
  2: begin
       SQLCheque.MacroByName('MCampoFiltro').Value := 'CR.CTRCDDEPOSCHQ is not null';
       if RadioData.ItemIndex = 0 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDVENC';
       if RadioData.ItemIndex = 1 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDEMIS';
       if RadioData.ItemIndex = 2 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDDEPOSCHQ';

       SQLCheque.MacroByName('MDataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" ';
       SQLCheque.MacroByName('MDataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" ';
     end;
  3: begin
       SQLCheque.MacroByName('MCampoFiltro').Value := '0=0';
       if RadioData.ItemIndex = 0 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDVENC';
       if RadioData.ItemIndex = 1 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDEMIS';
       if RadioData.ItemIndex = 2 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDDEPOSCHQ';
       SQLCheque.MacroByName('MDataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" ';
       SQLCheque.MacroByName('MDataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" ';
     end;
  end;
  //-----------------------------------------------------------------------------------------------------------------\\
  SQLCheque.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CR', '');
  if ComboPortador.KeyValue <> null then
    SQLCheque.MacroByName('MPortador' ).Value := 'CR.PORTICOD = ' + IntToStr(ComboPortador.KeyValue)
  else
    SQLCheque.MacroByName('MPortador' ).Value := '0=0' ;

  if ComboProtocolo.KeyValue <> null then
    SQLCheque.MacroByName('MProtocolo' ).Value := 'CR.PRCHICOD = ' + IntToStr(ComboProtocolo.KeyValue)
  else
    SQLCheque.MacroByName('MProtocolo' ).Value := '0=0' ;

  if ComboAlinea.KeyValue <> null then
    SQLCheque.MacroByName('MAlinea' ).Value := 'CR.ALINICOD = ' + IntToStr(ComboAlinea.KeyValue)
  else
    SQLCheque.MacroByName('MAlinea' ).Value := '0=0' ;

  if ComboCliente.KeyValue <> null then
    SQLCheque.MacroByName('MCliente' ).Value := 'CR.CLIEA13ID = "' + SQLCliente.FieldByName('CLIEA13ID').AsString + '"'
  else
    SQLCheque.MacroByName('MCliente' ).Value := '0=0' ;

  SQLCheque.Open;
  BatchExec(SQLCheque,TblTemporaria) ;

  if CKResumoCheques.Checked then
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Recebidos Resumido.rpt' ;
      Report.ReportTitle       := 'Relatório de Cheques Vencidos/À Vencer' ;
      Report.WindowStyle.Title := 'Relatório de Cheques Vencidos/À Vencer' ;
      SetarDatPeriodoEmissaoRpt ;
      Report.Execute ;
      Exit;
    end;

  if CKImprimeDadosCliente.Checked then
    ppRptCheques.Print
  else
    begin
      case RadioTipoRel.ItemIndex of
        0: begin
             Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Recebidos.rpt' ;
             Report.ReportTitle       := 'Relatório de Cheques Vencidos/À Vencer' ;
             Report.WindowStyle.Title := 'Relatório de Cheques Vencidos/À Vencer' ;
             SetarDatPeriodoEmissaoRpt ;
             Report.Execute ;
           end;
        1: begin
             Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Recebidos.rpt';
             Report.ReportTitle       := 'Relatório de Cheques Quitados' ;
             Report.WindowStyle.Title := 'Relatório de Cheques Quitados' ;
             SetarDatPeriodoEmissaoRpt ;
             Report.Execute ;
           end;
        2: begin
             Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Recebidos.rpt';
             Report.ReportTitle       := 'Relatório de Cheques Depositados' ;
             Report.WindowStyle.Title := 'Relatório de Cheques Depositados' ;
             SetarDatPeriodoEmissaoRpt ;
             Report.Execute ;
           end;
        3: begin
             Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Recebidos.rpt';
             Report.ReportTitle       := 'Relatório de Cheques Lançados' ;
             Report.WindowStyle.Title := 'Relatório de Cheques Lançados' ;
             SetarDatPeriodoEmissaoRpt ;
             Report.Execute ;
           end;
      end ;
    end;
end ;

procedure TFormRelatorioChequeRecebidos.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLPortador.Active then SQLPortador.Open ;
  if not SQLAlinea.Active then SQLAlinea.Open ;
  if not SQLCliente.Active then SQLCliente.Open ;
  if not SQLProtocolo.Active then SQLProtocolo.Open ;
  RadioTipoRel.ItemIndex := 0;
end;

procedure TFormRelatorioChequeRecebidos.SetarDatPeriodoEmissaoRpt;
begin
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
  Report.Formulas.Name         := 'Portador' ;
  if ComboPortador.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboPortador.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Situacao' ;
  if ComboAlinea.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboAlinea.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Cliente' ;
  if ComboCliente.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboCliente.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
end ;

procedure TFormRelatorioChequeRecebidos.ComboPortadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as TDBLookupComboBox).KeyValue = '')
    or ((sender as TDBLookupComboBox).KeyValue <> (sender as TDBLookupComboBox).ListSource.DataSet.FieldByName((sender as TDBLookupComboBox).KeyField).Value) then
      (sender as TDBLookupComboBox).KeyValue := (sender as TDBLookupComboBox).ListSource.DataSet.FieldByName((sender as TDBLookupComboBox).KeyField).Value;
  if Key = VK_Escape then
    (sender as TDBLookupComboBox).KeyValue := Null;
end;

procedure TFormRelatorioChequeRecebidos.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppLabel19.Caption := TblTemporariaBANCA5CODCHQ.AsString + '-'+ SQLLocate('BANCO','BANCA5COD','BANCA60NOME','"'+TblTemporariaBANCA5CODCHQ.AsString+'"');
end;

procedure TFormRelatorioChequeRecebidos.ppRptChequesPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppRptCheques.PreviewForm.WindowState := wsMaximized;
end;

end.
