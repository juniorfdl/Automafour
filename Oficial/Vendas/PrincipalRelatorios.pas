unit PrincipalRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, DBTables, DB,
  ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, RxQuery, ppViewr,
  ppModule, raCodMod, ppMemo, Placemnt, AdvSmoothPanel, RXCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter;

type
  TFormPrincipalRelatorios = class(TForm)
    DSSQLTerminal: TDataSource;
    SQLTerminal: TRxQuery;
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    BatchMove: TBatchMove;
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
    DSSQLTotalOperacao: TDataSource;
    SQLTotalOperacao: TRxQuery;
    SQLTotalOperacaoOPCXICOD: TIntegerField;
    SQLTotalOperacaoOPCXA60DESCR: TStringField;
    SQLTotalOperacaoCREDITOS: TBCDField;
    SQLTotalOperacaoDEBITOS: TBCDField;
    SQLTotalOperacaoSALDO: TFloatField;
    DSSQLTotaNumrario: TDataSource;
    SQLTotaNumerario: TRxQuery;
    SQLTotaNumerarioNUMEICOD: TIntegerField;
    SQLTotaNumerarioNUMEA30DESCR: TStringField;
    SQLTotaNumerarioVLRCREDITO: TBCDField;
    SQLTotaNumerarioVLRDEBITO: TBCDField;
    SQLTotaNumerarioSALDO: TFloatField;
    SQLVendaCartoesCheques: TRxQuery;
    SQLVendaCartoesChequesCTRCN2VLR: TBCDField;
    SQLVendaCartoesChequesCTRCDVENC: TDateTimeField;
    SQLVendaCartoesChequesNUMEICOD: TIntegerField;
    SQLVendaCartoesChequesNUMEA30DESCR: TStringField;
    SQLVendaCartoesChequesTEF: TStringField;
    SQLVendaCartoesChequesBANCA5CODCHQ: TStringField;
    SQLVendaCartoesChequesCTRCA10AGENCIACHQ: TStringField;
    SQLVendaCartoesChequesCTRCA15NROCHQ: TStringField;
    dsSQLVendaCartoesCheques: TDataSource;
    SQLItensVendidos: TRxQuery;
    SQLItensVendidosPRODICOD: TIntegerField;
    SQLItensVendidosQTDE: TFloatField;
    SQLItensVendidosVLRTOTALITEM: TFloatField;
    dsSQLItensVendidos: TDataSource;
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
    DetalheProdutosVendidos: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    Produto: TppLabel;
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
    PipeItensVendidos: TppBDEPipeline;
    PipeItensVendidosppField1: TppField;
    PipeItensVendidosppField2: TppField;
    PipeItensVendidosppField3: TppField;
    PipeVendasCartoesCheques: TppBDEPipeline;
    PipeVendasCartoesChequesppField1: TppField;
    PipeVendasCartoesChequesppField2: TppField;
    PipeVendasCartoesChequesppField3: TppField;
    PipeVendasCartoesChequesppField4: TppField;
    PipeVendasCartoesChequesppField5: TppField;
    PipeVendasCartoesChequesppField6: TppField;
    PipeVendasCartoesChequesppField7: TppField;
    PipeVendasCartoesChequesppField8: TppField;
    SQLItensVendidosCPITN3VLRUNIT: TBCDField;
    CPITN3VLRUNIT: TppField;
    ppLabel30: TppLabel;
    ppDBText20: TppDBText;
    ppLabel31: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    TotalProdutosVendidos: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppOperador: TppLabel;
    FormStorage1: TFormStorage;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    BtnVisualizar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    HoraInicial: TEdit;
    HoraFinal: TEdit;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    ComboTerminal2: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboOperador: TRxDBLookupCombo;
    CKImpVendaCartoes: TCheckBox;
    ckImpProdutosVendidos: TCheckBox;
    ckBobina: TCheckBox;
    Memo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure ReportTotaisPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure SumarioNumerariosBeforePrint(Sender: TObject);
    procedure SumarioProdutosVendidosBeforePrint(Sender: TObject);
    procedure DetalheProdutosVendidosBeforePrint(Sender: TObject);
    procedure ReportTotaisPreviewFormClose(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipalRelatorios: TFormPrincipalRelatorios;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormPrincipalRelatorios.FormCreate(Sender: TObject);
begin
  SQLOperador.Open;
  SQLTerminal.Open;
  de.Date  := Date;
  Ate.Date := Date;

  if dm.SQLUsuario.FieldByName('USUACPERMVMOVCX').Value <> 'S' then
    begin
      de.Enabled  := False;
      ate.Enabled := False;

      ComboTerminal.keyValue := TerminalAtual;
      ComboOperador.keyValue := dm.SQLUsuario.FieldByName('USUAICOD').Value;
      ComboTerminal.Enabled  := False;
      ComboTerminal2.Enabled := False;
      ComboOperador.Enabled  := False;
    end;
end;

procedure TFormPrincipalRelatorios.BtnVisualizarClick(Sender: TObject);
var vSaldoTotal : double;
begin
  SQLTotaNumerario.Close ;
  SQLTotaNumerario.MacrobyName('MEmpresa').Value  := 'EMPRICOD  = ' + EmpresaPadrao;
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
  SQLTotalOperacao.MacrobyName('MEmpresa').Value  := 'EMPRICOD  = ' + EmpresaPadrao;
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

  SQLItensVendidos.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;

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

  SQLVendaCartoesCheques.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;

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

  if not ckBobina.checked then
    ReportTotais.Print
  else
    begin
      {Impressao em formato Bobina}
      vSaldoTotal := 0;
      memo.Lines.Clear;
      memo.Lines.Add(' ');
      memo.Lines.Add('<ce><e>Resumo de Caixa</e></ce>');
      memo.Lines.Add(' ');
      if HoraInicial.Text = '' then
        memo.Lines.Add('</ae></fn>Periodo: ' + de.Text + ' até ' + Ate.Text)
      else
        memo.Lines.Add('</ae></fn>Periodo: ' + de.Text+' '+HoraInicial.Text+' até ' + Ate.Text+' '+HoraFinal.Text);
      memo.Lines.Add('Terminais: ' + ComboTerminal.Text + ' - ' + ComboTerminal2.Text);
      memo.Lines.Add(' ');
      memo.Lines.Add('<n>Totais por Operacoes                  Vlr.Saldo</n>');
      SQLTotalOperacao.First;
      while not SQLTotalOperacao.eof do
        begin
          memo.Lines.Add('</fn>' + SQLTotalOperacaoOPCXA60DESCR.Value);
          memo.Lines.Add('<ad></fn>' + FormatFloat('R$ ##0.00',SQLTotalOperacaoSALDO.Value) + '</ad>');
          vSaldoTotal := vSaldoTotal + SQLTotalOperacaoSALDO.Value;
          SQLTotalOperacao.next;
        end;
      memo.Lines.Add('------------------------------------------------');
      memo.Lines.Add('<ad><n>TOTAL => ' + FormatFloat('R$ ##0.00',vSaldoTotal) + '</n></ad>');
      SQLTotalOperacao.First;

      vSaldoTotal := 0;
      memo.Lines.Add('------------------------------------------------');
      memo.Lines.Add('<n>Totais por Numerarios                 Vlr.Saldo</n>');
      SQLTotaNumerario.First;
      while not SQLTotaNumerario.eof do
        begin
          memo.Lines.Add('</fn>' + SQLTotaNumerarioNUMEA30DESCR.Value);
          memo.Lines.Add('<ad></fn>' + FormatFloat('R$ ##0.00',SQLTotaNumerarioSALDO.Value) + '</ad>');
          vSaldoTotal := vSaldoTotal + SQLTotaNumerarioSALDO.Value;
          SQLTotaNumerario.next;
        end;
      memo.Lines.Add('------------------------------------------------');
      memo.Lines.Add('<ad><n>TOTAL => ' + FormatFloat('R$ ##0.00',vSaldoTotal) + '</n></ad>');
      memo.Lines.Add('------------------------------------------------');
      memo.Lines.Add(' ');
      memo.Lines.Add(' ');
      memo.Lines.Add(' ');
      memo.Lines.Add(' ');
      memo.Lines.Add(' ');
      memo.Lines.Add('</corte_parcial>');

      try
        dm.ACBrPosPrinter.Device.Desativar;
        dm.ACBrPosPrinter.Device.Ativar;
        dm.ACBrPosPrinter.Imprimir(Memo.Lines.Text);
      except
        Application.ProcessMessages;
      end;
    end;
end;

procedure TFormPrincipalRelatorios.ReportTotaisPreviewFormCreate(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportTotais.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormPrincipalRelatorios.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormPrincipalRelatorios.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormPrincipalRelatorios.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  LbPeriodo.Caption  := de.Text + ' até ' + Ate.Text;
  LbTerminal.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
  ppOperador.Caption := 'Operador: ' + ComboOperador.Text;
end;

procedure TFormPrincipalRelatorios.SumarioNumerariosBeforePrint(
  Sender: TObject);
begin
  if not ckImpProdutosVendidos.Checked then
    begin
      TituloProdutosVendidos.Visible  := False;
    //  DetalheProdutosVendidos.Visible := False;
      TotalProdutosVendidos.Visible   := False;
    end
  else
    begin
      TituloProdutosVendidos.Visible  := True;
    //  DetalheProdutosVendidos.Visible := True;
      TotalProdutosVendidos.Visible   := True;
    end;
end;

procedure TFormPrincipalRelatorios.SumarioProdutosVendidosBeforePrint(
  Sender: TObject);
begin
  if not CKImpVendaCartoes.Checked then
    begin
      TituloVendaCartoes.Visible  := False;
      DetalheVendaCartoes.Visible := False;
    end
  else
    begin
      TituloVendaCartoes.Visible  := True;
      DetalheVendaCartoes.Visible := True;
    end;
end;

procedure TFormPrincipalRelatorios.DetalheProdutosVendidosBeforePrint(
  Sender: TObject);
begin
  PRODUTO.Caption    := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLItensVendidosPRODICOD.AsString);
end;

procedure TFormPrincipalRelatorios.ReportTotaisPreviewFormClose(
  Sender: TObject);
begin
  Close ;
end;

end.
