unit RelatorioContasRecebidasPorSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, Grids,
  DBGrids, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasRecebidasPorSetor = class(TFormRelatorioTEMPLATE)
    SQLContasReceber: TRxQuery;
    RadioSetor: TRadioGroup;
    GroupTerminal: TGroupBox;
    SQLTerminal: TRxQuery;
    DSSQLTerminal: TDataSource;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    ComboTerminal: TRxDBLookupCombo;
    SQLContaCorrente: TRxQuery;
    DSSQLContaCorrente: TDataSource;
    GroupCC: TGroupBox;
    ComboCC: TRxDBLookupCombo;
    SQLContaCorrenteBANCA5COD: TStringField;
    SQLContaCorrenteCTCRA15AGENCIA: TStringField;
    SQLContaCorrenteCTCRA15NUMERO: TStringField;
    SQLContaCorrenteCTCRA60TITULAR: TStringField;
    SQLContaCorrenteCTCRICOD: TIntegerField;
    CheckNroDuplic: TCheckBox;
    Report: TCrpe;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICODREC: TIntegerField;
    SQLContasReceberRECEDRECTO: TDateTimeField;
    SQLContasReceberRECEN2DESC: TFloatField;
    SQLContasReceberRECEN2VLRJURO: TFloatField;
    SQLContasReceberRECEN2VLRMULTA: TFloatField;
    SQLContasReceberRECEN2VLRRECTO: TFloatField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberTPDCA60DESCR: TStringField;
    SQLContasReceberPORTA60DESCR: TStringField;
    SQLContasReceberCTCRICOD: TIntegerField;
    SQLContasReceberCTCRA15NUMERO: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberBANCA60NOME: TStringField;
    SQLContasReceberDATAMOVIMENTO: TDateTimeField;
    SQLContasReceberMVBCA13ID: TStringField;
    SQLTesouraria: TRxQuery;
    DsSQLContasReceber: TDataSource;
    SQLTesourariaTESOA13ID: TStringField;
    SQLTesourariaTERMICOD: TIntegerField;
    SQLContasReceberTERMICODREC: TIntegerField;
    SQLContasReceberUSUAICOD: TIntegerField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaEMPRICODREC: TIntegerField;
    TblTemporariaTERMICODREC: TIntegerField;
    TblTemporariaUSUAICOD: TIntegerField;
    TblTemporariaRECEDRECTO: TDateTimeField;
    TblTemporariaRECEN2DESC: TBCDField;
    TblTemporariaRECEN2VLRJURO: TBCDField;
    TblTemporariaRECEN2VLRMULTA: TBCDField;
    TblTemporariaRECEN2VLRRECTO: TBCDField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaEMPRICODULTREC: TIntegerField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaTESOA13ID: TStringField;
    TblTemporariaMVBCA13ID: TStringField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    TblTemporariaTERMA60DESCR: TStringField;
    TblTemporariaCTCRA15NUMERO: TStringField;
    TblTemporariaORIGEM: TStringField;
    TblTemporariaDOCORIGEM: TStringField;
    TblTemporariaDATAMOVIMENTO: TDateTimeField;
    procedure RadioSetorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboTerminalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasRecebidasPorSetor: TFormRelatorioContasRecebidasPorSetor;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioContasRecebidasPorSetor.RadioSetorClick(Sender: TObject);
begin
  inherited;
  Case RadioSetor.ItemIndex of
    0: begin
         GroupTerminal.Visible := True;
         GroupCC.Visible       := False;
       end;
    1: begin
         GroupTerminal.Visible := False;
         GroupCC.Visible       := False;
       end;
    2: begin
         GroupTerminal.Visible := False;
         GroupCC.Visible       := True;
       end;
    3: begin
         GroupTerminal.Visible := False;
         GroupCC.Visible       := False;
       end;
  end;
end;

procedure TFormRelatorioContasRecebidasPorSetor.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLTerminal.Open;
  SQLContaCorrente.Open;
end;

procedure TFormRelatorioContasRecebidasPorSetor.ComboTerminalKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormRelatorioContasRecebidasPorSetor.ExecutarBtnClick(
  Sender: TObject);
var
 NroDuplic : String;
 Achou : Boolean;
begin
  inherited;
  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MEmpresa').AsString := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'RECEBIMENTO','EMPRICODREC');
  SQLContasReceber.MacrobyName('MData').Value       := 'RECEBIMENTO.RECEDDATAMOV  >= "' + FormatDateTime('mm/dd/yyyy 00:00:00', De.Date) + '" and ' +
                                                       'RECEBIMENTO.RECEDDATAMOV  <= "' + FormatDateTime('mm/dd/yyyy 23:59:00', Ate.Date) + '"';

  SQLContasReceber.MacrobyName('MTipoPadrao').Value := '0=0';
  SQLContasReceber.MacrobyName('MSetor').Value      := '0=0';
  Case RadioSetor.ItemIndex of
    0 : begin
          if ComboTerminal.Value <> '' then
            SQLContasReceber.MacrobyName('MSetor').Value    := ' RECEBIMENTO.CTRCA13ID in (Select CTRCA13ID from TESOURARIA WHERE TESOURARIA.TERMICOD = '+ ComboTerminal.Value +' ) '
          else
            SQLContasReceber.MacrobyName('MSetor').Value    := ' RECEBIMENTO.CTRCA13ID in (Select CTRCA13ID from TESOURARIA) ';
        end;

    1 : begin
          SQLContasReceber.MacrobyName('MTipoPadrao').Value := ' CONTASRECEBER.CTRCA5TIPOPADRAO in("CHQ","CHQV","CHQP")';
        end;

    2 : begin
          if ComboCC.Value <> '' then
            SQLContasReceber.MacrobyName('MSetor').Value      := ' RECEBIMENTO.CTRCA13ID in (Select CTRCA13ID from MOVIMENTOBANCO WHERE MOVIMENTOBANCO.CTCRICOD = '+ ComboCC.Value +' ) '
          else
            SQLContasReceber.MacrobyName('MSetor').Value      := ' RECEBIMENTO.CTRCA13ID in (Select CTRCA13ID from MOVIMENTOBANCO) ';

          SQLContasReceber.MacrobyName('MTipoPadrao').Value   := ' CONTASRECEBER.CTRCA5TIPOPADRAO is not null';
        end;
    3 : begin
          SQLTesouraria.MacrobyName('MDataMovTes').Value   := 'TESOURARIA.TESODMOV  >= "' + FormatDateTime('mm/dd/yyyy 00:00:00', De.Date) + '" and ' +
                                                              'TESOURARIA.TESODMOV  <= "' + FormatDateTime('mm/dd/yyyy 23:59:00', Ate.Date) + '"';
          SQLContasReceber.MacrobyName('MDataMovBanco').Value := 'MOVIMENTOBANCO.MVBCDLANC  >= "' + FormatDateTime('mm/dd/yyyy 00:00:00', De.Date) + '" and ' +
                                                                 'MOVIMENTOBANCO.MVBCDLANC  <= "' + FormatDateTime('mm/dd/yyyy 23:59:00', Ate.Date) + '"';
        end;
  end;
  // GravaArqTexto(SQLContasReceber.RealSQL.Text,'C:\RecebidasOrigem.txt','NOVO');
  SQLContasReceber.Open;
  TblTemporaria.Open;
  SQLContasReceber.First;
  Progresso.Position := 0;
  Progresso.Min      := 0;
  Progresso.Max      := SQLContasReceber.RecordCount;
  while not SQLContasReceber.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaCLIEA13ID.AsString        := SQLContasReceberCLIEA13ID.AsString;
      TblTemporariaCLIEA60RAZAOSOC.AsString  := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblTemporariaCTRCA13ID.AsString        := SQLContasReceberCTRCA13ID.AsString;
      TblTemporariaCTRCDEMIS.AsDateTime      := SQLContasReceberCTRCDEMIS.AsDateTime;
      TblTemporariaCTRCDVENC.AsDateTime      := SQLContasReceberCTRCDVENC.AsDateTime;
      TblTemporariaCTRCINROPARC.AsString     := SQLContasReceberCTRCINROPARC.AsString;
      TblTemporariaCTRCN2VLR.AsFloat         := SQLContasReceberCTRCN2VLR.AsFloat;
      TblTemporariaEMPRICOD.AsInteger        := SQLContasReceberEMPRICOD.AsInteger;
      TblTemporariaEMPRICODREC.AsInteger     := SQLContasReceberEMPRICODREC.AsInteger;
      TblTemporariaTERMICODREC.AsInteger     := SQLContasReceberTERMICODREC.AsInteger;
      TblTemporariaUSUAICOD.AsInteger        := SQLContasReceberUSUAICOD.AsInteger;
      TblTemporariaEMPRICODULTREC.AsInteger  := SQLContasReceberEMPRICODULTREC.AsInteger;
      TblTemporariaPORTA60DESCR.AsString     := SQLContasReceberPORTA60DESCR.AsString;
      TblTemporariaTPDCA60DESCR.AsString     := SQLContasReceberTPDCA60DESCR.AsString;
      TblTemporariaRECEDRECTO.AsDateTime     := SQLContasReceberRECEDRECTO.AsDateTime;
      TblTemporariaRECEN2DESC.AsFloat        := SQLContasReceberRECEN2DESC.AsFloat;
      TblTemporariaRECEN2VLRJURO.AsFloat     := SQLContasReceberRECEN2VLRJURO.AsFloat;
      TblTemporariaRECEN2VLRMULTA.AsFloat    := SQLContasReceberRECEN2VLRMULTA.AsFloat;
      TblTemporariaRECEN2VLRRECTO.AsFloat    := SQLContasReceberRECEN2VLRRECTO.AsFloat;
      TblTemporariaSALDO.AsFloat             := SQLContasReceberSALDO.AsFloat;
      if SQLContasReceberDATAMOVIMENTO.AsVariant <> Null then
        TblTemporariaDATAMOVIMENTO.AsDateTime := SQLContasReceberDATAMOVIMENTO.AsDateTime;
      Achou := False;
      case RadioSetor.ItemIndex of
        0 : begin
              TblTemporariaORIGEM.AsString     := ' CAIXA - ' + SQLLocate('TERMINAL','TERMICOD','TERMA60DESCR',SQLTesourariaTERMICOD.AsString);
              TblTemporariaDOCORIGEM.AsString  := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
            end;
        1 : begin
              TblTemporariaORIGEM.AsString     := ' CHEQUE - ' + SQLContasReceberBANCA60NOME.AsString;
              TblTemporariaDOCORIGEM.AsString  := SQLContasReceberCTRCA15NROCHQ.AsString;
            end;
        2 : begin
              TblTemporariaORIGEM.AsString     := ' BANCO';
              if DM.ProcuraRegistro('CONTACORRENTE',['CTCRICOD'],[SQLContasReceberCTCRICOD.AsString],1) then
                begin
                  TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' +
                  SQLLocate('BANCO','BANCA5COD','BANCA60NOME','"'+ DM.SQLTemplate.FieldByName('BANCA5COD').AsString +'"') + ' - ' +
                  DM.SQLTemplate.FieldByName('CTCRA15AGENCIA').AsString + ' - ' +
                  SQLContasReceberCTCRA15NUMERO.AsString;
                end
              else
                TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' + SQLContasReceberCTCRA15NUMERO.AsString;
              TblTemporariaDOCORIGEM.AsString  := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
            end;
        3 : begin
            if SQLTesourariaTESOA13ID.AsString <> '' then
                begin
                  TblTemporariaORIGEM.AsString     := ' CAIXA - ' + SQLLocate('TERMINAL','TERMICOD','TERMA60DESCR', SQLTesourariaTERMICOD.AsString);
                  TblTemporariaDOCORIGEM.AsString  := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
                  Achou := True;
                end;
              if SQLContasReceberMVBCA13ID.AsString <> '' then
                begin
                  TblTemporariaORIGEM.AsString     := ' BANCO';
                  if DM.ProcuraRegistro('CONTACORRENTE',['CTCRICOD'],[SQLContasReceberCTCRICOD.AsString],1) then
                    begin
                      TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' +
                      SQLLocate('BANCO','BANCA5COD','BANCA60NOME','"'+ DM.SQLTemplate.FieldByName('BANCA5COD').AsString +'"') + ' - ' +
                      DM.SQLTemplate.FieldByName('CTCRA15AGENCIA').AsString + ' - ' +
                      SQLContasReceberCTCRA15NUMERO.AsString;
                    end
                  else
                    TblTemporariaORIGEM.AsString   := TblTemporariaORIGEM.AsString + ' - ' + SQLContasReceberCTCRA15NUMERO.AsString;
                  TblTemporariaDOCORIGEM.AsString  := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
                  Achou := True;
                end;
              if SQLContasReceberCTRCA15NROCHQ.AsString <> '' then
                begin
                  TblTemporariaORIGEM.AsString     := ' CHEQUE - ' + SQLContasReceberBANCA60NOME.AsString;
                  TblTemporariaDOCORIGEM.AsString  := SQLContasReceberCTRCA15NROCHQ.AsString;
                  Achou := True;
                end;
              if not Achou then
                begin
                  TblTemporariaORIGEM.AsString     := ' BAIXA SIMPLES ';
                  TblTemporariaDOCORIGEM.AsString  := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
                end;
            end;
      end;
      TblTemporaria.Post;
      SQLContasReceber.Next;
      Progresso.Position    := Progresso.Position + 1;
      Progresso.Update;
      Application.ProcessMessages;
    end;
  TblTemporaria.Close;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas Por Origem de Liquidacao.rpt' ;

  //AjustaCaminhoCrystal;

  Report.ReportTitle       := 'Relatório de Contas Recebidas Por Origem de Liquidação';
  Report.WindowStyle.Title := 'Relatório de Contas Recebidas Por Origem de Liquidação';
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa';
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date)  + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Setor';
  Case RadioSetor.ItemIndex of
    0 : begin
          if ComboTerminal.Value <> '' then
            Report.Formulas.Formula.Text := '"' + ' CAIXA - ' + ComboTerminal.DisplayValue + '"'
          else
            Report.Formulas.Formula.Text := '"' + 'CAIXA' + '"';
        end;
    1 : begin
          Report.Formulas.Formula.Text := '"' + 'CHEQUE' + '"';
        end;
    2 : begin
          if ComboCC.Value <> '' then
            Report.Formulas.Formula.Text := '"' + ' BANCO - ' + ComboCC.DisplayValue + '"'
          else
            Report.Formulas.Formula.Text := '"' + 'BANCO' + '"';
        end;
    3 : begin
          Report.Formulas.Formula.Text := '"' + 'TODOS' + '"';
        end;
  end;
 Report.Formulas.Send;
 Progresso.Position := 0;
 Report.Execute ;
end;

end.
