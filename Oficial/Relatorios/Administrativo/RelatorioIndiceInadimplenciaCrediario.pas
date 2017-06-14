unit RelatorioIndiceInadimplenciaCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioIndiceInadimplenciaCrediario = class(TFormRelatorioTEMPLATE)
    SQLContasAReceber: TRxQuery;
    SQLContasAReceberCTRCA13ID: TStringField;
    SQLContasAReceberEMPRICOD: TIntegerField;
    SQLContasAReceberCTRCCSTATUS: TStringField;
    SQLContasAReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasAReceberCTRCDVENC: TDateTimeField;
    SQLContasAReceberCTRCN2VLR: TFloatField;
    SQLContasAReceberCTRCN2TXJURO: TFloatField;
    SQLContasAReceberCTRCN2TXMULTA: TFloatField;
    SQLContasAReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLContasAReceberCTRCN2TOTREC: TFloatField;
    SQLContasAReceberCTRCDEMIS: TDateTimeField;
    SQLContasAReceberCUPOA13ID: TStringField;
    TblTemporariaEmpricod: TIntegerField;
    TblTemporariaEmpresaRazaoSoc: TStringField;
    TblTemporariaValorTotalAReceber: TFloatField;
    TblTemporariaValorTotalRecebido: TFloatField;
    SQLContasRecebidas: TRxQuery;
    SQLContasRecebidasCTRCA13ID: TStringField;
    SQLContasRecebidasEMPRICOD: TIntegerField;
    SQLContasRecebidasCTRCCSTATUS: TStringField;
    SQLContasRecebidasCTRCA5TIPOPADRAO: TStringField;
    SQLContasRecebidasCTRCDVENC: TDateTimeField;
    SQLContasRecebidasCTRCN2VLR: TFloatField;
    SQLContasRecebidasCTRCN2TXJURO: TFloatField;
    SQLContasRecebidasCTRCN2TXMULTA: TFloatField;
    SQLContasRecebidasCTRCN2TOTMULTACOBR: TFloatField;
    SQLContasRecebidasCTRCN2TOTREC: TFloatField;
    SQLContasRecebidasCTRCDEMIS: TDateTimeField;
    SQLContasRecebidasCUPOA13ID: TStringField;
    TblTemporariaIndice: TFloatField;
    Report: TCrpe;
    TblTemporariaValorDiferenca: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioIndiceInadimplenciaCrediario: TFormRelatorioIndiceInadimplenciaCrediario;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioIndiceInadimplenciaCrediario.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLContasAReceber.Close;
  SQLContasAReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasAReceber.MacroByName('MData').Value    := 'CONTASRECEBER.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CONTASRECEBER.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLContasAReceber.Open;

  SQLContasRecebidas.Close;
  SQLContasRecebidas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasRecebidas.MacroByName('MData').Value    := 'CONTASRECEBER.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                      'CONTASRECEBER.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLContasRecebidas.Open;

  if (SQLContasAReceber.IsEmpty) and (SQLContasRecebidas.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  TblTemporaria.Close;
  TblTemporaria.Open;
  While Not SQLContasAReceber.Eof Do
    Begin
      TblTemporaria.Edit;
      TblTemporariaEmpricod.Value           := SQLContasAReceberEMPRICOD.Value;
      if TblTemporariaEmpricod.AsString <> '' then
        TblTemporariaEmpresaRazaoSoc.Value    := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',SQLContasAReceberEMPRICOD.AsString)
      else
        TblTemporariaEmpresaRazaoSoc.Value    := 'Todas';
      TblTemporariaValorTotalAReceber.Value := TblTemporariaValorTotalAReceber.Value+
                                               SQLContasAReceberCTRCN2VLR.Value;
      TblTemporaria.Post;
      SQLContasAReceber.Next;
    End;
  While Not SQLContasRecebidas.Eof Do
    Begin
      TblTemporaria.Edit;
      TblTemporariaEmpricod.Value           := SQLContasRecebidasEMPRICOD.AsInteger;
      TblTemporariaValorTotalRecebido.Value := TblTemporariaValorTotalRecebido.Value+
                                               SQLContasRecebidasCTRCN2TOTREC.Value;
      TblTemporaria.Post;
      SQLContasRecebidas.Next;
    End;
  // Coloca indice
  TblTemporaria.Edit;
  TblTemporariaIndice.Value         := (TblTemporariaValorTotalAReceber.Value-TblTemporariaValorTotalRecebido.Value)/TblTemporariaValorTotalAReceber.Value*100;
  TblTemporariaValorDiferenca.Value := TblTemporariaValorTotalAReceber.Value-TblTemporariaValorTotalRecebido.Value;
  TblTemporaria.Post;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\IndiceInadimplencia.rpt' ;
  Report.ReportTitle       := 'Relatório de Indice de Inadimplencia' ;
  Report.WindowStyle.Title := 'Relatório de Indice de Inadimplencia' ;
  Report.Formulas.Retrieve ;
  Report.Formulas.Name         := 'Periodo' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  Report.Execute ;
end;

end.
