unit RelatorioSaldoContasaPagarContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioSaldoContasPagarContabil = class(TFormRelatorioTEMPLATE)
    SQLContasPagar: TRxQuery;
    Report: TCrpe;
    GroupBox2: TGroupBox;
    Calendario: TMonthCalendar;
    SQLPagamento: TRxQuery;
    DSSQLRecebimento: TDataSource;
    BtnCancelar: TSpeedButton;
    GroupBox3: TGroupBox;
    SQLHistoricoPadrao: TRxQuery;
    DSSQLHistoricoPadrao: TDataSource;
    SQLHistoricoPadraoHTPDICOD: TIntegerField;
    SQLHistoricoPadraoHTPDA100HISTORICO: TStringField;
    ComboHistorico: TRxDBLookupCombo;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGDTEMIS: TDateTimeField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGA13ID: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarDTVENC: TStringField;
    SQLContasPagarPDCPA13ID: TStringField;
    SQLContasPagarNOCPA13ID: TStringField;
    SQLContasPagarFORNICOD: TIntegerField;
    SQLContasPagarFORNA60RAZAOSOC: TStringField;
    SQLContasPagarFORNA60CID: TStringField;
    SQLContasPagarFORNA15FONE1: TStringField;
    SQLContasPagarFORNA15FONE2: TStringField;
    SQLContasPagarCTPGN3VLR: TFloatField;
    SQLContasPagarDTULTREC: TStringField;
    SQLContasPagarCTPGN2TOTPAG: TFloatField;
    SQLContasPagarSALDO: TFloatField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarTPDCA60DESCR: TStringField;
    SQLContasPagarPORTA60DESCR: TStringField;
    SQLContasPagarHTPDICOD: TIntegerField;
    SQLPagamentoSUM: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTPGDTEMIS: TDateTimeField;
    TblTemporariaCTPGDVENC: TDateTimeField;
    TblTemporariaCTPGA13ID: TStringField;
    TblTemporariaCTPGINROPARC: TIntegerField;
    TblTemporariaDTVENC: TStringField;
    TblTemporariaPDCPA13ID: TStringField;
    TblTemporariaNOCPA13ID: TStringField;
    TblTemporariaFORNICOD: TIntegerField;
    TblTemporariaFORNA60RAZAOSOC: TStringField;
    TblTemporariaFORNA60CID: TStringField;
    TblTemporariaFORNA15FONE1: TStringField;
    TblTemporariaFORNA15FONE2: TStringField;
    TblTemporariaCTPGN3VLR: TFloatField;
    TblTemporariaDTULTREC: TStringField;
    TblTemporariaCTPGN2TOTPAG: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaCTPGA20DOCORIG: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaHTPDICOD: TIntegerField;
    RadioData: TRadioGroup;
    RadioPrevReal: TRadioGroup;
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
  FormRelatorioSaldoContasPagarContabil: TFormRelatorioSaldoContasPagarContabil;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioSaldoContasPagarContabil.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  BtnVisualizar.Enabled := False;
  BtnCancelar.Visible   := True;
  SQLContasPagar.Close ;

  SQLContasPagar.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASPAGAR', '') ;
  case RadioData.ItemIndex of
    0 : begin
          SQLContasPagar.MacrobyName('MData').Value    := '(CONTASPAGAR.CTPGDULTPAGTO <= "' +
                                                            FormatDateTime('mm/dd/yyyy', Calendario.Date) + '"' +
                                                            'AND CONTASPAGAR.CTPGDULTPAGTO IS NOT NULL) OR ' +
                                                            '(CONTASPAGAR.CTPGDULTPAGTO IS NULL ' +
                                                            'AND CONTASPAGAR.CTPGDTEMIS <= "' +
                                                            FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" ) OR ' +
                                                            '(CONTASPAGAR.CTPGDTEMIS <= "' +
                                                            FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" AND ' +
                                                            'CONTASPAGAR.CTPGDULTPAGTO >= "' +
                                                            FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" )';
        end;
    1 : begin
          SQLContasPagar.MacrobyName('MData').Value    := '(CONTASPAGAR.CTPGDULTPAGTO <= "' +
                                                            FormatDateTime('mm/dd/yyyy', Calendario.Date) + '"' +
                                                            'AND CONTASPAGAR.CTPGDULTPAGTO IS NOT NULL) OR ' +
                                                            '(CONTASPAGAR.CTPGDULTPAGTO IS NULL ' +
                                                            'AND CONTASPAGAR.CTPGDRECBTO <= "' +
                                                            FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" ) OR ' +
                                                            '(CONTASPAGAR.CTPGDRECBTO <= "' +
                                                            FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" AND ' +
                                                            'CONTASPAGAR.CTPGDULTPAGTO >= "' +
                                                            FormatDateTime('mm/dd/yyyy', Calendario.Date) + '" )';
        end;
  end;
  SQLPagamento.MacrobyName('MDataRec').Value   := 'PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy', Calendario.Date) + '"';
  
  if ComboHistorico.Value <> '' then
    SQLContasPagar.MacrobyName('MHistoricoPadrao').Value := 'CONTASPAGAR.HTPDICOD <> ' + ComboHistorico.Value
  else
    SQLContasPagar.MacrobyName('MHistoricoPadrao').Value := '0=0';

  case RadioPrevReal.ItemIndex of
    0 : SQLContasPagar.MacrobyName('MPrevReal').Value   := '0=0' ;
    1 : SQLContasPagar.MacrobyName('MPrevReal').Value   := 'CONTASPAGAR.CTPGCPREVREAL = "P"' ;
    2 : SQLContasPagar.MacrobyName('MPrevReal').Value   := 'CONTASPAGAR.CTPGCPREVREAL = "R"' ;
  end ;


  SQLContasPagar.Open;
  SQLPagamento.Open;
  BatchExec(SQLContasPagar, TblTemporaria);

  TblTemporaria.Open;
  Cursor := crDefault;
  Progresso.Min := 0;
  Progresso.Max := TblTemporaria.RecordCount;
  Progresso.Position := 0;
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

        if SQLPagamentoSUM.AsFloat > 0 then
          TblTemporariaSALDO.AsFloat := TblTemporariaCTPGN3VLR.AsFloat - SQLPagamentoSUM.AsFloat
        else
          TblTemporariaSALDO.AsFloat := TblTemporariaCTPGN3VLR.AsFloat;

        if TblTemporariaNOCPA13ID.AsString <> '' then
          begin
            TblTemporariaCTPGA13ID.Value := 'NC - ' + SQLLocate('NOTACOMPRA', 'NOCPA13ID','NOCPA30NRO', '"' + TblTemporariaNOCPA13ID.AsString + '"');
          end;
        if TblTemporariaPDCPA13ID.AsString <> '' then
          begin
            TblTemporariaCTPGA13ID.AsString :='PC - ' + TblTemporariaPDCPA13ID.AsString;
          end;

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
  Progresso.Position := 0;
  Progresso.Update;
  Application.ProcessMessages;
  TblTemporaria.Close;
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Saldo Contas a Pagar Contabil.rpt' ;
  Report.ReportTitle       := 'Relatório de Saldo de Contas À PAGAR Contábil' ;
  Report.WindowStyle.Title := 'Relatório de Saldo de Contas À PAGAR Contábil' ;
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
  Report.Formulas.Name         := 'DataBase' ;
  case RadioData.ItemIndex of
    0 : Report.Formulas.Formula.Text := '"Data de Emissão"';
    1 : Report.Formulas.Formula.Text := '"Data de Recebimento"';
  end;
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

procedure TFormRelatorioSaldoContasPagarContabil.FormCreate(
  Sender: TObject);
begin
  inherited;
  Calendario.Date := Date;
  SQLHistoricoPadrao.Open;
end;

procedure TFormRelatorioSaldoContasPagarContabil.Button1Click(
  Sender: TObject);
begin
  inherited;
  Parar := True;
end;

procedure TFormRelatorioSaldoContasPagarContabil.BtnCancelarClick(
  Sender: TObject);
begin
  inherited;
  Parar := True;
end;

end.
