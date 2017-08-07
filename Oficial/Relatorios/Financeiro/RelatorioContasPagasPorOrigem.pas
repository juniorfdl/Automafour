unit RelatorioContasPagasPorOrigem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasPagasPorOrigem = class(TFormRelatorioTEMPLATE)
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    DSSQLTerminal: TDataSource;
    SQLContaCorrente: TRxQuery;
    SQLContaCorrenteCTCRICOD: TIntegerField;
    SQLContaCorrenteBANCA5COD: TStringField;
    SQLContaCorrenteCTCRA15AGENCIA: TStringField;
    SQLContaCorrenteCTCRA15NUMERO: TStringField;
    SQLContaCorrenteCTCRA60TITULAR: TStringField;
    DSSQLContaCorrente: TDataSource;
    Report: TCrpe;
    GroupCC: TGroupBox;
    ComboCC: TRxDBLookupCombo;
    RadioSetor: TRadioGroup;
    SQLContasPagar: TRxQuery;
    GroupTerminal: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    SQLContasPagarCTPGA13ID: TStringField;
    SQLContasPagarPAGAN3VLRPAGTO: TFloatField;
    SQLContasPagarSALDO: TFloatField;
    SQLContasPagarPAGAN3VLRJURO: TFloatField;
    SQLContasPagarPAGAN3VLRMULTA: TFloatField;
    SQLContasPagarPAGAN3VLRDESC: TFloatField;
    SQLContasPagarPAGADPAGTO: TDateTimeField;
    SQLContasPagarNOCPA13ID: TStringField;
    SQLContasPagarPDCPA13ID: TStringField;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGDTEMIS: TDateTimeField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarCTPGN3VLR: TFloatField;
    SQLContasPagarPORTICOD: TIntegerField;
    SQLContasPagarFORNICOD: TIntegerField;
    SQLContasPagarFORNA60NOMEFANT: TStringField;
    SQLContasPagarTPDCA60DESCR: TStringField;
    SQLContasPagarPORTA60DESCR: TStringField;
    SQLContasPagarTESOA13ID: TStringField;
    SQLContasPagarMVBCA13ID: TStringField;
    SQLContasPagarTERMA60DESCR: TStringField;
    SQLContasPagarCTCRA15NUMERO: TStringField;
    SQLContasPagarDATAMOVIMENTO: TDateTimeField;
    SQLContasPagarCQEMA13ID: TStringField;
    SQLContasPagarCTCRICOD: TIntegerField;
    SQLContasPagarCTCRICOD_1: TIntegerField;
    SQLContasPagarCQEMINROCHEQUE: TIntegerField;
    TblTemporariaCTPGA13ID: TStringField;
    TblTemporariaPAGAN3VLRPAGTO: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaPAGAN3VLRJURO: TBCDField;
    TblTemporariaPAGAN3VLRMULTA: TBCDField;
    TblTemporariaPAGAN3VLRDESC: TBCDField;
    TblTemporariaPAGADPAGTO: TDateTimeField;
    TblTemporariaNOCPA13ID: TStringField;
    TblTemporariaPDCPA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTPGDTEMIS: TDateTimeField;
    TblTemporariaCTPGDVENC: TDateTimeField;
    TblTemporariaCTPGA20DOCORIG: TStringField;
    TblTemporariaCTPGINROPARC: TIntegerField;
    TblTemporariaCTPGN3VLR: TBCDField;
    TblTemporariaPORTICOD: TIntegerField;
    TblTemporariaFORNICOD: TIntegerField;
    TblTemporariaFORNA60NOMEFANT: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaTESOA13ID: TStringField;
    TblTemporariaMVBCA13ID: TStringField;
    TblTemporariaTERMA60DESCR: TStringField;
    TblTemporariaCTCRA15NUMERO: TStringField;
    TblTemporariaCTCRA15NUMERO_1: TStringField;
    TblTemporariaDATAMOVIMENTO: TDateTimeField;
    TblTemporariaCQEMA13ID: TStringField;
    TblTemporariaCTCRICOD: TIntegerField;
    TblTemporariaORIGEM: TStringField;
    TblTemporariaDOCORIGEM: TStringField;
    procedure RadioSetorClick(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboTerminalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboCCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasPagasPorOrigem: TFormRelatorioContasPagasPorOrigem;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioContasPagasPorOrigem.RadioSetorClick(
  Sender: TObject);
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

procedure TFormRelatorioContasPagasPorOrigem.ExecutarBtnClick(
  Sender: TObject);
var
  Achou : Boolean;
  NroDuplic : String;  
begin
  inherited;
  SQLContasPagar.Close;
  SQLContasPagar.MacroByName('MEmpresa').AsString := '0=0';//SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PAGAMENTO','');
  SQLContasPagar.MacrobyName('MData').Value       := 'PAGAMENTO.PAGADPAGTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'PAGAMENTO.PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  SQLContasPagar.MacrobyName('MTipoPadrao').Value := '0=0';
  SQLContasPagar.MacrobyName('MSetor').Value      := '0=0';
  SQLContasPagar.MacrobyName('MCampoData').Value  := ' PAGAMENTO.PAGADPAGTO';
  Case RadioSetor.ItemIndex of
    0 : begin
          if ComboTerminal.Value <> '' then
            SQLContasPagar.MacrobyName('MSetor').Value    := ' PAGAMENTO.CTPGA13ID in (Select CTPGA13ID from TESOURARIA WHERE TESOURARIA.TERMICOD = '+ ComboTerminal.Value +' ) '
          else
            SQLContasPagar.MacrobyName('MSetor').Value    := ' PAGAMENTO.CTPGA13ID in (Select CTPGA13ID from TESOURARIA) ';
          SQLContasPagar.MacrobyName('MCampoData').Value  := ' PAGAMENTO.PAGADPAGTO';
        end;

    1 : begin
          SQLContasPagar.MacrobyName('MSetor').Value      := ' CONTASPAGAR.CQEMA13ID in (Select CQEMA13ID from CHEQUEEMITIDO)';
          SQLContasPagar.MacrobyName('MCampoData').Value  := ' PAGAMENTO.PAGADPAGTO';
        end;

    2 : begin
          if ComboCC.Value <> '' then
            SQLContasPagar.MacrobyName('MSetor').Value    := ' PAGAMENTO.CTPGA13ID in (Select CTPGA13ID from MOVIMENTOBANCO WHERE MOVIMENTOBANCO.CTCRICOD = '+ ComboCC.Value +' ) '
          else
            SQLContasPagar.MacrobyName('MSetor').Value    := ' PAGAMENTO.CTPGA13ID in (Select CTPGA13ID from MOVIMENTOBANCO) ';

          SQLContasPagar.MacrobyName('MData').Value       := '0=0';
          SQLContasPagar.MacrobyName('MData').Value       := 'MOVIMENTOBANCO.MVBCDLANC >= "' + FormatDateTime('mm/dd/yyyy 00:00:00', De.Date) + '" and ' +
                                                             'MOVIMENTOBANCO.MVBCDLANC <= "' + FormatDateTime('mm/dd/yyyy 23:59:00', Ate.Date) + '"';
          SQLContasPagar.MacrobyName('MCampoData').Value  := 'MOVIMENTOBANCO.MVBCDLANC';
        end;                                     
  end;
//  GravaArqTexto(SQLContasPagar.RealSQL.Text,'C:\Unit\SQL.txt','NOVO');
  SQLContasPagar.Open;
  TblTemporaria.Open;
  SQLContasPagar.First;
  while not SQLContasPagar.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaFORNICOD.AsString         := SQLContasPagarFORNICOD.AsString;
      TblTemporariaFORNA60NOMEFANT.AsString  := SQLContasPagarFORNA60NOMEFANT.AsString;
      TblTemporariaCTPGA13ID.AsString        := SQLContasPagarCTPGA13ID.AsString;
      TblTemporariaCTPGDTEMIS.AsDateTime     := SQLContasPagarCTPGDTEMIS.AsDateTime;
      TblTemporariaCTPGDVENC.AsDateTime      := SQLContasPagarCTPGDVENC.AsDateTime;
      TblTemporariaCTPGINROPARC.AsString     := SQLContasPagarCTPGINROPARC.AsString;
      TblTemporariaCTPGN3VLR.AsFloat         := SQLContasPagarCTPGN3VLR.AsFloat;
      TblTemporariaEMPRICOD.AsInteger        := SQLContasPagarEMPRICOD.AsInteger;
      TblTemporariaPORTA60DESCR.AsString     := SQLContasPagarPORTA60DESCR.AsString;
      TblTemporariaTPDCA60DESCR.AsString     := SQLContasPagarTPDCA60DESCR.AsString;
      TblTemporariaPAGAN3VLRPAGTO.AsFloat    := SQLContasPagarPAGAN3VLRPAGTO.AsFloat;
      TblTemporariaPAGAN3VLRDESC.AsFloat     := SQLContasPagarPAGAN3VLRDESC.AsFloat;
      TblTemporariaPAGAN3VLRJURO.AsFloat     := SQLContasPagarPAGAN3VLRJURO.AsFloat;
      TblTemporariaPAGAN3VLRMULTA.AsFloat    := SQLContasPagarPAGAN3VLRMULTA.AsFloat;
      TblTemporariaPAGADPAGTO.AsFloat        := SQLContasPagarPAGADPAGTO.AsFloat;
      TblTemporariaSALDO.AsFloat             := SQLContasPagarSALDO.AsFloat;
      if SQLContasPagarDATAMOVIMENTO.AsVariant <> Null then
        TblTemporariaDATAMOVIMENTO.AsDateTime := SQLContasPagarDATAMOVIMENTO.AsDateTime;
      Achou := False;
      case RadioSetor.ItemIndex of
        0 : begin
              TblTemporariaORIGEM.AsString     := ' CAIXA - ' + SQLContasPagarTERMA60DESCR.AsString;
              TblTemporariaDOCORIGEM.AsString  := SQLContasPagarTESOA13ID.AsString;
            end;
        1 : begin
              TblTemporariaORIGEM.AsString     := ' CHEQUE';
              if DM.ProcuraRegistro('CONTACORRENTE',['CTCRICOD'],[SQLContasPagarCTCRICOD_1.AsString],1) then
                begin
                  TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' +
                  SQLLocate('BANCO','BANCA5COD','BANCA60NOME','"'+ DM.SQLTemplate.FieldByName('BANCA5COD').AsString + '"') + ' - ' +
                  DM.SQLTemplate.FieldByName('CTCRA15AGENCIA').AsString + ' - ' +
                  SQLContasPagarCTCRA15NUMERO.AsString;
                end
              else
                TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' + SQLContasPagarCTCRA15NUMERO.AsString;
            end;
        2 : begin
              TblTemporariaORIGEM.AsString     := ' BANCO';
              if DM.ProcuraRegistro('CONTACORRENTE',['CTCRICOD'],[SQLContasPagarCTCRICOD.AsString],1) then
                begin
                  TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' +
                  SQLLocate('BANCO','BANCA5COD','BANCA60NOME','"'+ DM.SQLTemplate.FieldByName('BANCA5COD').AsString +'"') + ' - ' +
                  DM.SQLTemplate.FieldByName('CTCRA15AGENCIA').AsString + ' - ' +
                  DM.SQLTemplate.FieldByName('CTCRA15NUMERO').AsString;
                end
              else
                TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' + SQLContasPagarCTCRA15NUMERO.AsString;
              TblTemporariaDOCORIGEM.AsString  := SQLContasPagarMVBCA13ID.AsString;
            end;
        3 : begin
              if SQLContasPagarTESOA13ID.AsString <> '' then
                begin
                  TblTemporariaORIGEM.AsString     := ' CAIXA - ' + SQLContasPagarTERMA60DESCR.AsString;
                  TblTemporariaDOCORIGEM.AsString  := SQLContasPagarTESOA13ID.AsString;
                  Achou := True;
                end;
              if SQLContasPagarMVBCA13ID.AsString <> '' then
                begin
                  TblTemporariaORIGEM.AsString     := ' BANCO';
                  if DM.ProcuraRegistro('CONTACORRENTE',['CTCRICOD'],[SQLContasPagarCTCRICOD.AsString],1) then
                    begin
                      TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' +
                      SQLLocate('BANCO','BANCA5COD','BANCA60NOME','"'+ DM.SQLTemplate.FieldByName('BANCA5COD').AsString +'"') + ' - ' +
                      DM.SQLTemplate.FieldByName('CTCRA15AGENCIA').AsString + ' - ' +
                      DM.SQLTemplate.FieldByName('CTCRA15NUMERO').AsString;
                    end
                  else
                    TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' + SQLContasPagarCTCRA15NUMERO.AsString;
                  TblTemporariaDOCORIGEM.AsString  := SQLContasPagarMVBCA13ID.AsString;
                  Achou := True;
                end;
              if SQLContasPagarCTCRICOD_1.AsString <> '' then
                begin
                  TblTemporariaORIGEM.AsString     := ' CHEQUE';
                  if DM.ProcuraRegistro('CONTACORRENTE',['CTCRICOD'],[SQLContasPagarCTCRICOD_1.AsString],1) then
                    begin
                      TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' +
                      SQLLocate('BANCO','BANCA5COD','BANCA60NOME','"'+ DM.SQLTemplate.FieldByName('BANCA5COD').AsString + '"') + ' - ' +
                      DM.SQLTemplate.FieldByName('CTCRA15AGENCIA').AsString + ' - ' +
                      SQLContasPagarCTCRA15NUMERO.AsString;
                    end
                  else
                    TblTemporariaORIGEM.AsString := TblTemporariaORIGEM.AsString + ' - ' + SQLContasPagarCTCRA15NUMERO.AsString;

                  TblTemporariaDOCORIGEM.AsString  := SQLContasPagarCQEMINROCHEQUE.AsString;
                  Achou := True;
                end;
              if not Achou then
                begin
                  TblTemporariaORIGEM.AsString     := ' BAIXA SIMPLES ';
                  TblTemporariaDOCORIGEM.AsString  := SQLContasPagarCTPGA13ID.AsString;
                end;
            end;
      end;
      if TblTemporariaDOCORIGEM.AsString = '' then
        TblTemporariaDOCORIGEM.AsString := TblTemporariaCTPGA13ID.AsString;
        
      TblTemporaria.Post;
      SQLContasPagar.Next;
    end;
  TblTemporaria.Close;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Pagas Por Origem de Liquidacao.rpt' ;

//  AjustaCaminhoCrystal;

  Report.ReportTitle       := 'Relatório de Contas Pagas Por Origem de Liquidação' ;
  Report.WindowStyle.Title := 'Relatório de Contas Pagas Por Origem de Liquidação' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date)  + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Setor' ;
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
 Report.Execute ;

end;

procedure TFormRelatorioContasPagasPorOrigem.ComboTerminalKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormRelatorioContasPagasPorOrigem.ComboCCKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormRelatorioContasPagasPorOrigem.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTerminal.Open;
  SQLContaCorrente.Open;
end;

end.
