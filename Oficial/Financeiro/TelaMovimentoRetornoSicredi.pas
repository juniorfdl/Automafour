unit TelaMovimentoRetornoSicredi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids,
  DB, DBTables, RxQuery, RxMemDS, UCrpe32, RelatorioRetornoBanco;

type
  TFormTelaMovimentoRetornoSicredi = class(TFormTelaGeralModalTemplate)
    DSMasterTemplate: TDataSource;
    DBGridLista: TDBGrid;
    TempOcorrencias: TRxMemoryData;
    TempOcorrenciasCODIGOOCORRENCIA: TStringField;
    TempOcorrenciasDESCRICAO: TStringField;
    TempOcorrenciasTITULO: TStringField;
    TempOcorrenciasCLIEA13ID: TStringField;
    TempOcorrenciasClienteNome: TStringField;
    TempOcorrenciasDtVencimento: TDateTimeField;
    TempOcorrenciasEmissao: TDateField;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCA15NOSSONUMERO: TStringField;
    TempOcorrenciasValor: TFloatField;
    TempOcorrenciasValorJuros: TFloatField;
    TempOcorrenciasValorMulta: TFloatField;
    TempOcorrenciasValorRecebido: TFloatField;
    TblTemporaria: TTable;
    TblTemporariaDtEmissao: TDateField;
    TblTemporariaDtVencto: TDateField;
    TblTemporariaNomeCliente: TStringField;
    TblTemporariaDescricao: TStringField;
    TblTemporariaOcorrencia: TStringField;
    TblTemporariaValorDocumento: TFloatField;
    TblTemporariaValorJuros: TFloatField;
    TblTemporariaValorMulta: TFloatField;
    TblTemporariaValorRecebido: TFloatField;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    TblTemporariaTitulo: TStringField;
    Report: TCrpe;
    TblTemporariaCodigoCliente: TStringField;
    procedure FormShow(Sender: TObject);
    procedure TempOcorrenciasCODIGOOCORRENCIAChange(Sender: TField);
    procedure TempOcorrenciasTITULOChange(Sender: TField);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fRelatorioRetornoBanco : TFormRelatorioRetornoBanco;
  public
    { Public declarations }
    fListaNossoNumero, fListaOcorrencias, fListaValorJuros, FListaValorDocumento, fListaValorMulta : TStrings;
    vTotalValor, vTotalValorMulta, vTotalValotJuros : Real;
    vNomeBanco : string;
  end;

var
  FormTelaMovimentoRetornoSicredi: TFormTelaMovimentoRetornoSicredi;

implementation

uses
  DataModulo;

{$R *.dfm}

procedure TFormTelaMovimentoRetornoSicredi.FormShow(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  TempOcorrencias.Open;
  for I := 0 to fListaNossoNumero.Count - 1 do
  begin
    TempOcorrencias.Append;
    TempOcorrenciasTITULO.AsString           := fListaNossoNumero.Strings[I];
    TempOcorrenciasCODIGOOCORRENCIA.AsString := fListaOcorrencias.Strings[I];
    if (fListaValorJuros.Strings[I] <> '0000000000000') then
      TempOcorrenciasValorJuros.AsFloat        := StrToFloat(fListaValorJuros.Strings[I]) / 100;
    if (fListaValorMulta.Strings[I] <> '0000000000000') then
      TempOcorrenciasValorMulta.AsFloat        := StrToFloat(fListaValorMulta.Strings[I]) / 100;
    if (FListaValorDocumento.Strings[I] <> '0000000000000') then
      TempOcorrenciasValorRecebido.AsFloat     := StrToFloat(FListaValorDocumento.Strings[I]) / 100;
    TempOcorrencias.Post;
  end;
end;

procedure TFormTelaMovimentoRetornoSicredi.TempOcorrenciasCODIGOOCORRENCIAChange(
  Sender: TField);
begin
  inherited;
  if DM.ProcuraRegistro('OCORRENCIA',['CODIGOOCORRENCIA'],[Sender.AsString], 1) Then
    TempOcorrenciasDESCRICAO.AsString := DM.SQLTemplate.FindField('DESCRICAO').AsString;
end;

procedure TFormTelaMovimentoRetornoSicredi.TempOcorrenciasTITULOChange(
  Sender: TField);
begin
  inherited;
  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MDocumento').AsString := '(CR.CTRCA15NOSSONUMERO = ''' + Sender.AsString + ''')';
  SQLContasReceber.Open;

  if not SQLContasReceber.IsEmpty then
  begin
    TempOcorrenciasCLIEA13ID.AsString      := SQLContasReceber.FieldByName('CLIEA13ID').AsString;
    TempOcorrenciasDtVencimento.AsDateTime := SQLContasReceber.FieldByName('CTRCDVENC').AsDateTime;
    TempOcorrenciasClienteNome.AsString    := SQLContasReceber.FieldByName('CLIEA60RAZAOSOC').AsString;
    TempOcorrenciasEmissao.AsFloat         := SQLContasReceber.FieldByName('CTRCDEMIS').AsFloat;
    TempOcorrenciasValor.AsFloat           := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
  end;
end;

procedure TFormTelaMovimentoRetornoSicredi.BtnFecharTelaClick(
  Sender: TObject);
begin
  inherited;
  if TempOcorrencias.IsEmpty then
  begin
    ShowMessage('Nenhum registro encontrado para impressão!');
    exit;
  end;
  TempOcorrencias.First;
  TblTemporaria.Close;
  try
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
    TblTemporaria.CreateTable;
  end;
  TblTemporaria.Open;
  while not TempOcorrencias.Eof  do
  begin
    TblTemporaria.Append ;
    TblTemporariaTitulo.Value            := TempOcorrenciasTITULO.Value;
    TblTemporariaDtEmissao.Value         := TempOcorrenciasEmissao.Value;
    TblTemporariaDtVencto.Value          := TempOcorrenciasDtVencimento.Value;
    TblTemporariaNomeCliente.Value       := TempOcorrenciasClienteNome.Value;
    TblTemporariaDescricao.Value         := TempOcorrenciasDESCRICAO.Value;
    TblTemporariaCodigoCliente.AsString := TempOcorrenciasCLIEA13ID.AsString;
    TblTemporariaOcorrencia.Value        := TempOcorrenciasCODIGOOCORRENCIA.Value;
    TblTemporariaValorDocumento.Value    := TempOcorrenciasValor.Value;
    TblTemporariaValorJuros.Value        := TempOcorrenciasValorJuros.Value;
    TblTemporariaValorMulta.Value        := TempOcorrenciasValorMulta.Value;
    TblTemporariaValorRecebido.Value     := TempOcorrenciasValorRecebido.Value;
    vTotalValor := vTotalValor + TempOcorrenciasValorRecebido.value;
    vTotalValorMulta := vTotalValorMulta + TempOcorrenciasValorMulta.value;
    vTotalValotJuros := vTotalValotJuros + TempOcorrenciasValorJuros.value;
    TblTemporaria.Post;
    TempOcorrencias.Next;
  end;
  TempOcorrencias.First;
  fRelatorioRetornoBanco := TFormRelatorioRetornoBanco.Create(Self);
  fRelatorioRetornoBanco.vValor := vTotalValor;
  fRelatorioRetornoBanco.vValorMulta := vTotalValorMulta;
  fRelatorioRetornoBanco.vValotJuros := vTotalValotJuros;
  fRelatorioRetornoBanco.vSubTitulo  := vNomeBanco;
  try
    fRelatorioRetornoBanco.RLReport1.PreviewModal;
    fRelatorioRetornoBanco.RLReport1.Free;
  finally
    FreeAndNil(fRelatorioRetornoBanco);
  end;
end;

procedure TFormTelaMovimentoRetornoSicredi.FormCreate(Sender: TObject);
begin
  inherited;
//  if not TblTemporaria.Active then TblTemporaria.Open;
  vTotalValor := 0;
  vTotalValorMulta := 0;
  vTotalValotJuros := 0;
end;

end.
