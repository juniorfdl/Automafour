unit RelatorioExtratoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, UCrpe32, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioExtratoCliente = class(TFormRelatorioTEMPLATE)
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCLIEA15FONE1: TStringField;
    SQLContasReceberCLIEA60ENDRES: TStringField;
    SQLContasReceberCLIEA60BAIRES: TStringField;
    SQLContasReceberCLIEA60CIDRES: TStringField;
    SQLContasReceberCLIEA2UFRES: TStringField;
    SQLContasReceberCLIEA15FONEEMPRESA: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaCTRCICOD: TIntegerField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCCSTATUS: TStringField;
    TblTemporariaCTRCA5TIPOPADRAO: TStringField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCN2VLR: TFloatField;
    TblTemporariaCTRCN2TXJURO: TFloatField;
    TblTemporariaCTRCN2TXMULTA: TFloatField;
    TblTemporariaCTRCN2TOTMULTACOBR: TFloatField;
    TblTemporariaCTRCN2TOTREC: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA15FONE1: TStringField;
    TblTemporariaCLIEA60ENDRES: TStringField;
    TblTemporariaCLIEA60BAIRES: TStringField;
    TblTemporariaCLIEA60CIDRES: TStringField;
    TblTemporariaCLIEA2UFRES: TStringField;
    TblTemporariaCLIEA15FONEEMPRESA: TStringField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaCTRCCTIPOREGISTRO: TStringField;
    Report: TCrpe;
    TblTemporariaATRAZO: TIntegerField;
    TblTemporariaVLRJUROS: TFloatField;
    TblTemporariaVLRMULTA: TFloatField;
    TblTemporariaVLRTXCOBR: TFloatField;
    TblTemporariaVLRDESC: TFloatField;
    TblTemporariaTOTALPAGAR: TFloatField;
    SQLNumerario: TRxQuery;
    DSSQLNumerario: TDataSource;
    GroupBox3: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    SQLContasReceberCLIEA8CEPRES: TStringField;
    TblTemporariaCLIEA8CEPRES: TStringField;
    SQLContasReceberCLIEA60NOMEPAI: TStringField;
    SQLContasReceberCLIEA60NOMEMAE: TStringField;
    SQLContasReceberCLIEDNASC: TDateTimeField;
    SQLContasReceberCLIEA11CPF: TStringField;
    SQLContasReceberCLIEA10RG: TStringField;
    TblTemporariaCLIEA60NOMEPAI: TStringField;
    TblTemporariaCLIEA60NOMEMAE: TStringField;
    TblTemporariaCLIEDNASC: TDateTimeField;
    TblTemporariaCLIEA11CPF: TStringField;
    TblTemporariaCLIEA10RG: TStringField;
    CKPeriodo: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioExtratoCliente: TFormRelatorioExtratoCliente;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioExtratoCliente.ExecutarBtnClick(Sender: TObject);
var
  i : integer ;
  Saldo : double ;
begin
  inherited;
  if ComboCliente.text = '' then
  begin
    ShowMessage('O Cliente deve ser selecionado!') ;
    ComboCliente.SetFocus ;
    exit ;
  end ;

  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  if CKPeriodo.Checked then
    SQLContasReceber.MacrobyName('MData').Value    := '0=0'
  else
    SQLContasReceber.MacrobyName('MData').Value    := 'CONTASRECEBER.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                      'CONTASRECEBER.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  SQLContasReceber.MacrobyName('MCliente').Value    := 'CONTASRECEBER.CLIEA13ID = "' + ComboCliente.Value + '"' ;

 //   SQLContasReceber.MacrobyName('MTipoPadrao').Value := 'CONTASRECEBER.CTRCA5TIPOPADRAO = "CRD" or CONTASRECEBER.CTRCA5TIPOPADRAO is null' ;
  if ComboNumerario.Value = '' then
    SQLContasReceber.MacrobyName('MTipoPadrao').Value := '0=0'
  else
    SQLContasReceber.MacrobyName('MTipoPadrao').Value := 'CONTASRECEBER.CTRCA5TIPOPADRAO = "'+SQLNumerario.fieldbyname('NUMEA5TIPO').Value+'"';

  SQLContasReceber.Open ;
  if (SQLContasReceber.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  TblTemporaria.Open ;

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

  Progresso.Max := TblTemporaria.RecordCount ;
  Progresso.Position := 0 ;
  TblTemporaria.First ;
  while not TblTemporaria.EOF do
  begin
    TblTemporaria.Edit ;

    Saldo := TblTemporariaCTRCN2VLR.Value - TblTemporariaCTRCN2TOTREC.Value ;

    if TblTemporariaCTRCCTIPOREGISTRO.AsString <> 'C' then
      begin

        TblTemporaria.FieldByName('ATRAZO').Value := Date -
                                                     TblTemporariaCTRCDVENC.Value ;

        if TblTemporariaCTRCN2TXJURO.Value > 0 then
          TblTemporaria.FieldByName('VLRJUROS').Value := CalculaJuroMultaDesc( Saldo,
                                                                               TblTemporariaCTRCN2TXJURO.Value,
                                                                               TblTemporariaCTRCDVENC.Value,
                                                                               Date,
                                                                               0,
                                                                               DM.SQLConfigCrediario.FieldByName('CFCRINRODIASTOLJUR').Value,
                                                                               'Juro',
                                                                               TblTemporariaCUPOA13ID.AsString,
                                                                               TblTemporariaCTRCINROPARC.AsString) ;

        if TblTemporariaCTRCN2TXMULTA.Value > 0 then
          TblTemporaria.FieldByName('VLRMULTA').Value := CalculaJuroMultaDesc(Saldo,
                                                                              TblTemporariaCTRCN2TXMULTA.Value,
                                                                              TblTemporariaCTRCDVENC.Value,
                                                                              Date,
                                                                              0,
                                                                              DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                                                              'Multa',
                                                                              TblTemporariaCUPOA13ID.AsString,
                                                                              TblTemporariaCTRCINROPARC.AsString) ;

        if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value > 0 then
          TblTemporaria.FieldByName('VLRTXCOBR').Value := CalculaJuroMultaDesc(Saldo,
                                                                               DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value,
                                                                               TblTemporariaCTRCDVENC.Value,
                                                                               Date,
                                                                               0,
                                                                               0,
                                                                               'TaxaCobranca',
                                                                               TblTemporariaCUPOA13ID.AsString,
                                                                               TblTemporariaCTRCINROPARC.AsString) ;

        if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value > 0 then
          TblTemporaria.FieldByName('VLRDESC').Value := CalculaJuroMultaDesc(Saldo,
                                                                             DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
                                                                             TblTemporariaCTRCDVENC.Value,
                                                                             Date,
                                                                             0,
                                                                             DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
                                                                             'Desconto',
                                                                             TblTemporariaCUPOA13ID.AsString,
                                                                             TblTemporariaCTRCINROPARC.AsString) ;


        TblTemporariaTOTALPAGAR.Value := Saldo +
                                         TblTemporaria.FieldByName('VLRJUROS').AsFloat +
                                         TblTemporaria.FieldByName('VLRMULTA').AsFloat +
                                         TblTemporaria.FieldByName('VLRTXCOBR').AsFloat -
                                         TblTemporaria.FieldByName('VLRDESC').AsFloat ;
      end
    else
      begin
        TblTemporariaCTRCN2VLR.AsFloat := - TblTemporariaCTRCN2VLR.AsFloat;
        TblTemporariaTOTALPAGAR.Value  := TblTemporariaTOTALPAGAR.Value - Saldo;
      end;

    if not (TblTemporaria.FieldByName('ATRAZO').Value > 0) then
      TblTemporaria.FieldByName('ATRAZO').Value   := 0 ;
    if not (TblTemporaria.FieldByName('VLRJUROS').Value > 0) then
      TblTemporaria.FieldByName('VLRJUROS').Value := 0 ;
    if not (TblTemporaria.FieldByName('VLRMULTA').Value > 0) then
      TblTemporaria.FieldByName('VLRMULTA').Value := 0 ;
    if not (TblTemporaria.FieldByName('VLRTXCOBR').Value > 0) then
      TblTemporaria.FieldByName('VLRTXCOBR').Value := 0 ;
    if not (TblTemporaria.FieldByName('VLRDESC').Value > 0) then
      TblTemporaria.FieldByName('VLRDESC').Value := 0 ;


    if TblTemporariaNOFIA13ID.AsString <> '' then
      begin
        TblTemporariaCTRCA13ID.Value := 'NF - ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                        SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;
      end;
    if TblTemporariaPDVDA13ID.AsString <> '' then
      begin
        TblTemporariaCTRCA13ID.AsString := 'PV - ' + TblTemporariaPDVDA13ID.AsString;
      end;
    if TblTemporariaCUPOA13ID.AsString <> '' then
      begin
        TblTemporariaCTRCA13ID.AsString := 'CP - ' + TblTemporariaCUPOA13ID.AsString;
      end;

    TblTemporaria.Post;

    TblTemporaria.Next;
    Progresso.Position := Progresso.Position + 1;
    Progresso.Update;
    Application.ProcessMessages;
  end ;
  Progresso.Position := 0;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Extrato Por Clientes.rpt';

  Report.ReportTitle       := 'Relatório de Extrato de Clientes';
  Report.WindowStyle.Title := 'Relatório de Extrato de Clientes';
  Report.Execute ;
end;

procedure TFormRelatorioExtratoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCliente.Open ;
  SQLNumerario.Open;
  DM.SQLConfigCrediario.Open;
end;

end.
