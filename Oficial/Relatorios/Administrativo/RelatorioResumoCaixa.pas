unit RelatorioResumoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, ppDB,
  ppDBPipe, ppDBBDE, ppModule, ppVar, ppCtrls, ppBands, ppReport,
  ppStrtch, ppSubRpt, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppViewr, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioResumoCaixa = class(TFormRelatorioTEMPLATE)
    SQLTotaNumerario: TRxQuery;
    DSSQLTotaNumrario: TDataSource;
    SQLTotalOperacao: TRxQuery;
    SQLTotalOperacaoOPCXICOD: TIntegerField;
    SQLTotalOperacaoOPCXA60DESCR: TStringField;
    SQLTotalOperacaoCREDITOS: TBCDField;
    SQLTotalOperacaoDEBITOS: TBCDField;
    DSSQLTotalOperacao: TDataSource;
    SQLTerminal: TRxQuery;
    DSSQLTerminal: TDataSource;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    SQLTotaNumerarioNUMEICOD: TIntegerField;
    SQLTotaNumerarioNUMEA30DESCR: TStringField;
    SQLTotaNumerarioVLRCREDITO: TBCDField;
    SQLTotaNumerarioVLRDEBITO: TBCDField;
    SQLTotaNumerarioSALDO: TFloatField;
    GroupBox2: TGroupBox;
    ComboTerminal2: TRxDBLookupCombo;
    HoraInicial: TEdit;
    HoraFinal: TEdit;
    SQLTotalOperacaoSALDO: TFloatField;
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
    GroupBox4: TGroupBox;
    ComboOperador: TRxDBLookupCombo;
    CKImpVendaCartoes: TCheckBox;
    ckImpProdutosVendidos: TCheckBox;
    ckImpEncerrantes: TCheckBox;
    SQLVendaCartoesCheques: TRxQuery;
    dsSQLVendaCartoesCheques: TDataSource;
    SQLVendaCartoesChequesCTRCN2VLR: TBCDField;
    SQLVendaCartoesChequesCTRCDVENC: TDateTimeField;
    SQLVendaCartoesChequesNUMEICOD: TIntegerField;
    SQLVendaCartoesChequesNUMEA30DESCR: TStringField;
    SQLVendaCartoesChequesTEF: TStringField;
    SQLVendaCartoesChequesBANCA5CODCHQ: TStringField;
    SQLVendaCartoesChequesCTRCA10AGENCIACHQ: TStringField;
    SQLVendaCartoesChequesCTRCA15NROCHQ: TStringField;
    PipeOperacao: TppBDEPipeline;
    PipeOperacaoppField1: TppField;
    PipeOperacaoppField2: TppField;
    PipeOperacaoppField3: TppField;
    PipeOperacaoppField4: TppField;
    PipeOperacaoppField5: TppField;
    PipeNumerario: TppBDEPipeline;
    PipeNumerarioppField1: TppField;
    PipeNumerarioppField2: TppField;
    PipeNumerarioppField3: TppField;
    PipeNumerarioppField4: TppField;
    PipeNumerarioppField5: TppField;
    PipeVendasCartoesCheques: TppBDEPipeline;
    PipeVendasCartoesChequesppField1: TppField;
    PipeVendasCartoesChequesppField2: TppField;
    PipeVendasCartoesChequesppField3: TppField;
    PipeVendasCartoesChequesppField4: TppField;
    PipeVendasCartoesChequesppField5: TppField;
    PipeVendasCartoesChequesppField6: TppField;
    PipeVendasCartoesChequesppField7: TppField;
    PipeVendasCartoesChequesppField8: TppField;
    ReportTotais: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    LbPeriodo: TppLabel;
    LbTerminal: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel14: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel15: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel32: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    SumarioNumerarios: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel33: TppLabel;
    ppLine4: TppLine;
    ppLine13: TppLine;
    SubProdutosVendidos: TppSubReport;
    ppChildReport5: TppChildReport;
    TituloProdutosVendidos: TppTitleBand;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel30: TppLabel;
    DetalheProdutosVendidos: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    Produto: TppLabel;
    ppDBText20: TppDBText;
    SumarioProdutosVendidos: TppSummaryBand;
    ppLine5: TppLine;
    SubVendasCartoesCheque: TppSubReport;
    ppChildReport6: TppChildReport;
    TituloVendaCartoes: TppTitleBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel47: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    DetalheVendaCartoes: TppDetailBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    TEF: TppLabel;
    SumarioVendaCartoes: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine11: TppLine;
    ppLabel45: TppLabel;
    ppLine12: TppLine;
    ppDBCalc8: TppDBCalc;
    dsSQLItensVendidos: TDataSource;
    SQLItensVendidos: TRxQuery;
    SQLItensVendidosPRODICOD: TIntegerField;
    SQLItensVendidosCPITN3VLRUNIT: TBCDField;
    SQLItensVendidosQTDE: TFloatField;
    SQLItensVendidosVLRTOTALITEM: TFloatField;
    ppLabel31: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    TotalProdutosVendidos: TppGroupFooterBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppOperador: TppLabel;
    ppReducaoZ: TppReport;
    ckLayout: TCheckBox;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppLabel39: TppLabel;
    ppLabel44: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppCancelamentos: TppLabel;
    ppSangrias: TppLabel;
    ppVendaBruta: TppLabel;
    ppSuprimentos: TppLabel;
    ppVendaLiq: TppLabel;
    ppDescontos: TppLabel;
    ppLabel55: TppLabel;
    ppRecebimentos: TppLabel;
    LbTerminal2: TppLabel;
    LbPeriodo2: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    lbOperador2: TppLabel;
    ppLabel61: TppLabel;
    ppSubRepNumerarios: TppSubReport;
    ppReportNumerarios: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText63: TppDBText;
    ppDBText66: TppDBText;
    ppDBCalc10: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine9: TppLine;
    ppLabel54: TppLabel;
    ppTitleBand3: TppTitleBand;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel60: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppDBText21: TppDBText;
    ppDBText35: TppDBText;
    ppLabel62: TppLabel;
    LbEmpresa2: TppLabel;
    SQLTotalOperacaoDESCONTOS: TBCDField;
    ppLabel63: TppLabel;
    ppEstornoVenda: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    SQLItensVendidosCPITTOBS: TStringField;
    PipeItensVendidos: TppBDEPipeline;
    ppDBText36: TppDBText;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReportTotaisPreviewFormCreate(Sender: TObject);
    procedure SumarioProdutosVendidosBeforePrint(Sender: TObject);
    procedure DetalheProdutosVendidosBeforePrint(Sender: TObject);
    procedure SumarioNumerariosBeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppReducaoZPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
    Sigla : String;
    VendaBruta, Cancelamentos_Operador, Estorno_VendasRealizadas, Descontos, VendaLiq, Sangrias, Suprimentos, Recebimentos : Double;
  public
    { Public declarations }
  end;

var
  FormRelatorioResumoCaixa: TFormRelatorioResumoCaixa;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormRelatorioResumoCaixa.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLTotaNumerario.Close ;
  SQLTotaNumerario.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'MOVIMENTOCAIXA','');
  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLTotaNumerario.MacroByName('MData').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + '" and ' +
                                                   'MOVIMENTOCAIXA.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotaNumerario.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'MOVIMENTOCAIXA.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := SQLTotaNumerario.MacroByName('MTerminal').Value + ' or ' +
                                                       'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLTotaNumerario.MacroByName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotaNumerario.MacroByName('MOperador').Value := '0=0';

  SQLTotaNumerario.Open;

  SQLTotalOperacao.Close;
  SQLTotalOperacao.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'MOVIMENTOCAIXA','');
  SQLTotalOperacao.MacroByName('MTerminal').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'MOVIMENTOCAIXA.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'MOVIMENTOCAIXA.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';


  if ComboTerminal.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := SQLTotalOperacao.MacroByName('MTerminal').Value + ' or ' +
                                                       'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLTotalOperacao.MacroByName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotalOperacao.MacroByName('MOperador').Value := '0=0';

  SQLTotalOperacao.Open ;

  // Produtos Vendidos
  SQLItensVendidos.Close;

  SQLItensVendidos.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM','');

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLItensVendidos.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLItensVendidos.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

  SQLItensVendidos.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLItensVendidos.MacroByName('MTerminal').Value := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLItensVendidos.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' +
                                                       'CUPOM.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLItensVendidos.MacroByName('MOperador').Value := 'CUPOM.USUAICODVENDA = ' + ComboOperador.Value
  else
    SQLItensVendidos.MacroByName('MOperador').Value := '0=0';

  SQLItensVendidos.Open ;

 // Venda Cartoes , Cheques e Crediario
  SQLVendaCartoesCheques.Close;

  SQLVendaCartoesCheques.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM','');

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLVendaCartoesCheques.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                         'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLVendaCartoesCheques.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                         'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

  SQLVendaCartoesCheques.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MTerminal').Value := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' +
                                                             'CUPOM.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MOperador').Value := 'CUPOM.USUAICODVENDA = ' + ComboOperador.Value
  else
    SQLVendaCartoesCheques.MacroByName('MOperador').Value := '0=0';

  SQLVendaCartoesCheques.Open ;

  if not ckLayout.Checked then
    ReportTotais.Print
  else
    begin
      Sangrias := 0; Suprimentos := 0; Recebimentos := 0; VendaBruta := 0; VendaLiq := 0; Cancelamentos_Operador := 0; Descontos := 0;
      Estorno_VendasRealizadas := 0;
      SQLTotalOperacao.First;
      while not SQLTotalOperacao.eof do
        begin
          Sigla := dm.SQLLocate('OPERACAOCAIXA ','OPCXICOD','OPCXA5SIGLA',SQLTotalOperacaoOPCXICOD.AsString);

          // Cancelamentos
          if (Sigla = 'CANVV') or (Sigla = 'CANVP') or (Sigla = 'CANCO') then
            Cancelamentos_Operador := Cancelamentos_Operador + SQLTotalOperacaoDEBITOS.Value;

          // Descontos
          if SQLTotalOperacaoDESCONTOS.Value > 0 then
            Descontos := Descontos + SQLTotalOperacaoDESCONTOS.Value;

          // Sangria
          if Sigla = 'SANGR' then
            Sangrias := Sangrias + SQLTotalOperacaoDEBITOS.Value;

          // Suprimento
          if Sigla = 'SUPRI' then
            Suprimentos := Suprimentos + SQLTotalOperacaoCREDITOS.Value;

          // Recebimentos Crediario
          if Sigla = 'RCCRD' then
            Recebimentos := Recebimentos + SQLTotalOperacaoCREDITOS.Value;

          // Venda Bruta
          if (Sigla = 'VDVIS') or (Sigla = 'VDCRD') or (Sigla = 'VDCHQ') or (Sigla = 'VDCRT') or (Sigla = 'EVPRZ') or (Sigla = 'EVCHP') or (Sigla = 'EVCRT') then
            begin
              VendaBruta := VendaBruta + SQLTotalOperacaoCREDITOS.Value;
              Estorno_VendasRealizadas := Estorno_VendasRealizadas + SQLTotalOperacaoDEBITOS.Value;
            end;

          SQLTotalOperacao.Next;
        end;
      VendaBruta := VendaBruta + Descontos;
      ppReducaoZ.Print;
    end;
end;

procedure TFormRelatorioResumoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  SQLOperador.Open;
  SQLTerminal.Open;

  if dm.SQLUsuario.FieldByName('USUACPERMVMOVCX').Value <> 'S' then
    begin
      de.Enabled  := False;
      ate.Enabled := False;
    end;
end;

procedure TFormRelatorioResumoCaixa.ReportTotaisPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportTotais.PreviewForm.Viewer).ZoomPercentage := 100;
end;


procedure TFormRelatorioResumoCaixa.SumarioProdutosVendidosBeforePrint(
  Sender: TObject);
begin
  inherited;
  if not CKImpVendaCartoes.Checked then
    begin
      TituloVendaCartoes.Visible  := False;
      DetalheVendaCartoes.Visible := False;
      TotalProdutosVendidos.Visible := False;
    end
  else
    begin
      TituloVendaCartoes.Visible  := True;
      DetalheVendaCartoes.Visible := True;
      TotalProdutosVendidos.Visible := True;
    end;
end;

procedure TFormRelatorioResumoCaixa.DetalheProdutosVendidosBeforePrint(
  Sender: TObject);
begin
  inherited;
  PRODUTO.Caption := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLItensVendidosPRODICOD.AsString);
end;

procedure TFormRelatorioResumoCaixa.SumarioNumerariosBeforePrint(
  Sender: TObject);
begin
  inherited;
  if not ckImpProdutosVendidos.Checked then
    begin
      TituloProdutosVendidos.Visible  := False;
      TotalProdutosVendidos.Visible   := False;
    end
  else
    begin
      TituloProdutosVendidos.Visible  := True;
      TotalProdutosVendidos.Visible   := True;
    end;
end;

procedure TFormRelatorioResumoCaixa.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  LbPeriodo.Caption  := de.Text + ' até ' + Ate.Text;
  LbTerminal.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
  ppOperador.Caption := 'Operador: ' + ComboOperador.Text;
end;

procedure TFormRelatorioResumoCaixa.ppHeaderBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  LbEmpresa2.Caption  := ComboEmpresa.Text;
  LbPeriodo2.Caption  := de.Text + ' até ' + Ate.Text;
  LbTerminal2.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
  lbOperador2.Caption := 'Operador: ' + ComboOperador.Text;

  ppVendaBruta.Caption    := FormatFloat('##0.00',VendaBruta);
  ppCancelamentos.Caption := FormatFloat('##0.00',Cancelamentos_Operador);
  ppEstornoVenda.Caption  := FormatFloat('##0.00',Estorno_VendasRealizadas);
  ppDescontos.Caption     := FormatFloat('##0.00',Descontos);
  ppVendaLiq.Caption      := FormatFloat('##0.00',VendaBruta-
                                                  Cancelamentos_Operador-
                                                  Estorno_VendasRealizadas-
                                                  Descontos);

  ppSangrias.Caption      := FormatFloat('##0.00',Sangrias);
  ppSuprimentos.Caption   := FormatFloat('##0.00',Suprimentos);
  ppRecebimentos.Caption  := FormatFloat('##0.00',Recebimentos);

end;

procedure TFormRelatorioResumoCaixa.ppReducaoZPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReducaoZ.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReducaoZ.PreviewForm.Viewer).ZoomPercentage := 100;
end;

end.

