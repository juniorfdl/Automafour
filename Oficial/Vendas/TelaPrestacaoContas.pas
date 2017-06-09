unit TelaPrestacaoContas;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ToolEdit, CurrEdit, RXLookup,
  RxDBComb, Db, DBTables, ConerBtn, Grids, DBGrids, RXCtrls, RxQuery,
  ppVar, ppPrnabl, ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppMemo, RXDBCtrl, EDBNum ;
type
  TFormTelaPrestacaoContas = class(TForm)
    BtnOK: TConerBtn;
    PainelBomba: TPanel;
    dsEncerrante: TDataSource;
    DBGrigEncerrantesDia: TRxDBGrid;
    SQLEncerranteDiario: TRxQuery;
    SQLEncerranteDiarioENDIA13ID: TStringField;
    SQLEncerranteDiarioEMPRICOD: TIntegerField;
    SQLEncerranteDiarioENDIICOD: TIntegerField;
    SQLEncerranteDiarioENDIDDATA: TDateTimeField;
    SQLEncerranteDiarioUSUAICOD: TIntegerField;
    SQLEncerranteDiarioBOMBICOD: TIntegerField;
    SQLEncerranteDiarioPRODICOD: TIntegerField;
    SQLEncerranteDiarioBombaDescricao: TStringField;
    SQLEncerranteDiarioResultado: TFloatField;
    SQLEncerranteDiarioENDIN2ENCERINI: TBCDField;
    SQLEncerranteDiarioENDIN2ENCERFIM: TBCDField;
    SQLEncerranteDiarioENDIN2AFERICAO: TBCDField;
    SQLBombaAux: TRxQuery;
    SQLBombaAuxEMPRICOD: TIntegerField;
    SQLBombaAuxBOMBICOD: TIntegerField;
    SQLBombaAuxTANQICOD: TIntegerField;
    SQLBombaAuxBOMBA30DESCR: TStringField;
    RxLabel1: TRxLabel;
    SQLBomba: TRxQuery;
    SQLBombaBOMBICOD: TIntegerField;
    SQLBombaBOMBA30DESCR: TStringField;
    DSPrestaContas: TDataSource;
    SQLPrestaContas: TRxQuery;
    SQLPrestaContasEMPRICOD: TIntegerField;
    SQLPrestaContasPRECODATA: TDateTimeField;
    SQLPrestaContasUSUAICOD: TIntegerField;
    SQLPrestaContasVLRMOEDA: TBCDField;
    SQLPrestaContasVLRCHPRAZO: TBCDField;
    SQLPrestaContasVLRNTPRAZO: TBCDField;
    SQLPrestaContasVLRNTAVULSO: TBCDField;
    SQLPrestaContasVLRCARCREDITO: TBCDField;
    SQLPrestaContasVLRVALES: TBCDField;
    SQLPrestaContasVLRORFRE: TBCDField;
    SQLPrestaContasVLROUTSAIDA: TBCDField;
    SQLPrestaContasREGISTRO: TDateTimeField;
    SQLPrestaContasPENDENTE: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    EvDBNumEdit5: TEvDBNumEdit;
    EvDBNumEdit6: TEvDBNumEdit;
    EvDBNumEdit7: TEvDBNumEdit;
    EvDBNumEdit8: TEvDBNumEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SQLPrestaContasVLRCHVISTA: TBCDField;
    SQLUltimoEncer: TRxQuery;
    SQLUltimoEncerENDIA13ID: TStringField;
    SQLUltimoEncerEMPRICOD: TIntegerField;
    SQLUltimoEncerENDIICOD: TIntegerField;
    SQLUltimoEncerENDIDDATA: TDateTimeField;
    SQLUltimoEncerUSUAICOD: TIntegerField;
    SQLUltimoEncerBOMBICOD: TIntegerField;
    SQLUltimoEncerPRODICOD: TIntegerField;
    SQLUltimoEncerENDIN2ENCERINI: TBCDField;
    SQLUltimoEncerENDIN2ENCERFIM: TBCDField;
    SQLUltimoEncerENDIN2AFERICAO: TBCDField;
    SQLItensVendidos: TRxQuery;
    SQLItensVendidosPRODICOD: TIntegerField;
    SQLItensVendidosQTDE: TFloatField;
    SQLItensVendidosVLRTOTALITEM: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditEncerranteExit(Sender: TObject);
    procedure SQLEncerranteDiarioBeforePost(DataSet: TDataSet);
    procedure DBGrigEncerrantesDiaEnter(Sender: TObject);
    procedure DBGrigEncerrantesDiaExit(Sender: TObject);
    procedure SQLEncerranteDiarioCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure SQLPrestaContasBeforePost(DataSet: TDataSet);
    Function RetornaVendaBomba(Bomba : Integer) : Real;
  private
    { Private declarations }
  public
  Result : TModalResult;
  NroUltCupom : Integer;
  RetornoCampoUsuario, Cabecalho : String;
    { Public declaraions }
  end;
var
  FormTelaPrestacaoContas: TFormTelaPrestacaoContas;
implementation

uses DataModulo, UnitLibrary, ECFCheckout, UnitCheckoutLibrary,
  TelaFechamentoCaixa, TelaConsultaRapidaCupom, Corisco_CT7000_V3,
  IMPNAOFISCAL, {Sigtron_FS345, Bematech_MP20_FI_II, }BemaFi32, //#ver
  MovimentoCaixaCheckout;

{$R *.DFM}

Function TFormTelaPrestacaoContas.RetornaVendaBomba(Bomba : Integer) : Real;
begin
  SQLItensVendidos.Close;
  SQLItensVendidos.MacroByName('MDATA').Value := 'CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',StrtoDatetime(TerminalAtualData)) + '"';
  SQLItensVendidos.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLItensVendidos.MacroByName('MBomba').Value := 'BOMBICOD = ' + InttoStr(Bomba);
  SQLItensVendidos.Open;
  result := 0;
  while not SQLItensVendidos.Eof do
  begin
    result := result + SQLItensVendidosQTDE.Value;
    SQLItensVendidos.Next;
  end;
  SQLItensVendidos.Close;
end;

procedure TFormTelaPrestacaoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFormTelaPrestacaoContas.FormDeactivate(Sender: TObject);
begin
  Activate;
end;

procedure TFormTelaPrestacaoContas.FormCreate(Sender: TObject);
begin
  SQLEncerranteDiario.Open;
  SQLBomba.Open;
  SQLPrestaContas.Open;
end ;

procedure TFormTelaPrestacaoContas.EditEncerranteExit(Sender: TObject);
begin
  BtnOK.SetFocus;
end;

procedure TFormTelaPrestacaoContas.SQLEncerranteDiarioBeforePost(
  DataSet: TDataSet);
begin
  Case DataSet.State Of
    DsInsert: dm.CodigoAutomatico('ENCERRANTEDIARIO', dsEncerrante, DataSet, 2, 0);
  end ;
end;

procedure TFormTelaPrestacaoContas.DBGrigEncerrantesDiaEnter(
  Sender: TObject);
begin
  FormTelaPrestacaoContas.KeyPreview := False;
end;

procedure TFormTelaPrestacaoContas.DBGrigEncerrantesDiaExit(
  Sender: TObject);
begin
  if dsEncerrante.State in DSEditModes then
    SQLEncerranteDiario.Post;
    
  FormTelaPrestacaoContas.KeyPreview := True;
end;

procedure TFormTelaPrestacaoContas.SQLEncerranteDiarioCalcFields(
  DataSet: TDataSet);
begin
    SQLEncerranteDiarioResultado.Value :=  SQLEncerranteDiarioENDIN2ENCERFIM.Value -
                                           SQLEncerranteDiarioENDIN2ENCERINI.Value -
                                           SQLEncerranteDiarioENDIN2AFERICAO.Value;
end;

procedure TFormTelaPrestacaoContas.FormShow(Sender: TObject);
  function RetornaUltimoEncer(Bomba : Integer) : Real;
    begin
      SQLUltimoEncer.Close;
      SQLUltimoEncer.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
      SQLUltimoEncer.MacroByName('MBomba').Value := 'BOMBICOD = ' + InttoStr(Bomba);
      SQLUltimoEncer.Open;
      SQLUltimoEncer.Last;
      result := SQLUltimoEncerENDIN2ENCERFIM.Value;
      SQLUltimoEncer.Close;
    end;
begin
  SQLEncerranteDiario.Close;
  SQLEncerranteDiario.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLEncerranteDiario.MacroByName('MData').Value    := 'ENDIDDATA = "' + FormatDateTime('mm/dd/yyyy',StrtoDatetime(TerminalAtualData)) + '"';
  SQLEncerranteDiario.MacroByName('MUsuario').Value := 'USUAICOD  = ' + IntToStr(DM.UsuarioAtual);
  SQLEncerranteDiario.Open;
  if SQLEncerranteDiario.IsEmpty then
  begin
    SQLBombaAux.Close;
    SQLBombaAux.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
    SQLBombaAux.Open;
    if not SQLBombaAux.IsEmpty then
    begin
      SQLBombaAux.First;
      while not SQLBombaAux.eof do
      begin
        SQLEncerranteDiario.Append;
        SQLEncerranteDiarioEMPRICOD.Value        := SQLBombaAuxEMPRICOD.Value;
        SQLEncerranteDiarioUSUAICOD.Value        := Dm.UsuarioAtual;
        SQLEncerranteDiarioENDIDDATA.AsString    := FormatDateTime('dd/mm/yyyy',Now);
        SQLEncerranteDiarioBOMBICOD.Value        := SQLBombaAuxBOMBICOD.Value;
        SQLEncerranteDiarioBombaDescricao.Value  := SQLBombaAuxBOMBA30DESCR.Value;
        SQLEncerranteDiarioENDIN2ENCERINI.Value  := RetornaUltimoEncer(SQLBombaAuxBOMBICOD.Value);
        // SQLEncerranteDiarioENDIN2ENCERFIM.Value  := RetornaVendaBomba(SQLBombaAuxBOMBICOD.Value) + SQLEncerranteDiarioENDIN2ENCERINI.Value;
        SQLEncerranteDiarioENDIN2AFERICAO.Value  := 0;
        SQLEncerranteDiario.Post;
        SQLBombaAux.Next;
      end;
      SQLEncerranteDiario.Close;
      SQLEncerranteDiario.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
      SQLEncerranteDiario.MacroByName('MData').Value    := 'ENDIDDATA = "' + FormatDateTime('mm/dd/yyyy',StrtoDatetime(TerminalAtualData)) + '"';
      SQLEncerranteDiario.MacroByName('MUsuario').Value := 'USUAICOD  = ' + IntToStr(DM.UsuarioAtual);
      SQLEncerranteDiario.Open;
    end;
  end;
  SQLPrestaContas.Close;
  SQLPrestaContas.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLPrestaContas.MacroByName('MData').Value    := 'PRECODATA = "' + FormatDateTime('mm/dd/yyyy',StrtoDatetime(TerminalAtualData)) + '"';
  SQLPrestaContas.MacroByName('MUsuario').Value := 'USUAICOD  = ' + IntToStr(DM.UsuarioAtual);
  SQLPrestaContas.Open;
end;

procedure TFormTelaPrestacaoContas.BtnOKClick(Sender: TObject);
Var
  VendaQtd : Real;
  VendaDif : Real;
begin
  if dsPrestaContas.State in DSEditModes then
    SQLPrestaContas.Post;

  // Verifica diferença na venda dos encerrantes para emissão
{  if Pergunta('NAO','Confirma a emissão de cupons das diferenças nos encerrantes ?') then
  begin
    SQLEncerranteDiario.First;
    VendaQtd := 0;
    While not SQLEncerranteDiario.Eof Do
    begin
      SQLEncerranteDiarioResultado.Value;
      VendaQtd := RetornaVendaBomba(SQLEncerranteDiarioBOMBICOD.Value);
      VendaDif := (SQLEncerranteDiarioResultado.Value - VendaQtd);
      if VendaDif > 0 then
      begin
        ShowMessage(FloattoStr(VendaDif));
      end;

      SQLEncerranteDiario.Next;
    end;
    SQLEncerranteDiarioResultado.Value
  end;  }

  Close ;
end;

procedure TFormTelaPrestacaoContas.SQLPrestaContasBeforePost(
  DataSet: TDataSet);
begin
  SQLPrestaContasEMPRICOD.AsString  := EmpresaPadrao;
  SQLPrestaContasPRECODATA.AsString := TerminalAtualData;
  SQLPrestaContasUSUAICOD.AsString  := InttoStr(DM.UsuarioAtual);
  SQLPrestaContasPENDENTE.AsString  := 'S';
  SQLPrestaContasREGISTRO.Value     := Now;
end;

end.


