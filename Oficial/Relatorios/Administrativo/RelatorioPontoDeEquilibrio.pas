unit RelatorioPontoDeEquilibrio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, DateUtils,
  Grids, DBGrids, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioPontoDeEquilibrio = class(TFormRelatorioTEMPLATE)
    SQLNotaFiscal: TRxQuery;
    TblTemporariaDia: TDateField;
    TblTemporariaVendaDia: TFloatField;
    TblTemporariaImpostosDia: TFloatField;
    TblTemporariaComissaoDia: TFloatField;
    TblTemporariaVendaLiqDia: TFloatField;
    TblTemporariaCustoMercDia: TFloatField;
    TblTemporariaVlrMargemDia: TFloatField;
    TblTemporariaPercMargemDia: TFloatField;
    SQLCupom: TRxQuery;
    SQLEmpresaCusto: TRxQuery;
    SQLEmpresaCustoEMPRICOD: TIntegerField;
    SQLEmpresaCustoEMCTICOD: TIntegerField;
    SQLEmpresaCustoEMCTA2MES: TStringField;
    SQLEmpresaCustoEMCTA4ANO: TStringField;
    SQLEmpresaCustoEMCTA60DESCR: TStringField;
    SQLEmpresaCustoEMCTCFIXOVARIA: TStringField;
    SQLEmpresaCustoEMCTN2VALOR: TFloatField;
    SQLEmpresaCustoEMCTN2PERC: TFloatField;
    TblTemporariaCustoFixo: TFloatField;
    SQLCustoMedioNota: TRxQuery;
    SQLCustoMedioCupom: TRxQuery;
    TblTemporariaPontoEquilibrio: TFloatField;
    Report: TCrpe;
    SQLNotaFiscalVLRICMS: TFloatField;
    SQLNotaFiscalVLRIPI: TFloatField;
    SQLNotaFiscalVLRNOTA: TFloatField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLCupomVLRCUPOM: TFloatField;
    SQLCupomVLRICMS: TFloatField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCustoMedioNotaCUSTOMEDIO: TFloatField;
    SQLCustoMedioNotaNOFIDEMIS: TDateTimeField;
    SQLCustoMedioCupomCUSTOMEDIO: TFloatField;
    SQLCustoMedioCupomCUPODEMIS: TDateTimeField;
    GroupCusto: TRadioGroup;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPontoDeEquilibrio: TFormRelatorioPontoDeEquilibrio;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioPontoDeEquilibrio.ExecutarBtnClick(Sender: TObject);
var
UltPontoEquilibrio : Double;
begin
  inherited;
  SQLNotaFiscal.Close;
  SQLCupom.Close;
  SQLNotaFiscal.MacroByName('MEmpresa').Value     := SQLDeLista(ComboEmpresa,ListaEmpresas,'','NOTAFISCAL','EMPRICOD');
  SQLCustoMedioNota.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','NOTAFISCAL','EMPRICOD');
  SQLCupom.MacroByName('MEmpresa').Value      := SQLDeLista(ComboEmpresa,ListaEmpresas,'','','');

  SQLNotaFiscal.MacroByName('MData').Value    := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                 'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  SQLCustoMedioNota.MacroByName('MData').Value:= 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                 'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';


  SQLCupom.MacroByName('MData').Value         := 'CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                 'CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';


  SQLEmpresaCusto.Close;
  SQLEmpresaCusto.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','','');
  SQLEmpresaCusto.MacroByName('MMes').Value    := 'EMCTA2MES between ' + FormatDateTime('mm',de.Date)   + ' AND ' + FormatDateTime('mm',Ate.Date);
  SQLEmpresaCusto.MacroByName('MAno').Value    := 'EMCTA4ANO between ' + FormatDateTime('yyyy',de.Date) + ' AND ' + FormatDateTime('yyyy',Ate.Date);
  SQLEmpresaCusto.Open;
  if SQLEmpresaCusto.IsEmpty then
    begin
      Informa('Você deve informar o custos da empresa, acesse o cadastro de empresa e verifique!');
      Abort;
      Exit;
    end;


  SQLNotaFiscal.Open;
  TblTemporaria.Open;
  SQLNotaFiscal.First;
  SQLCustoMedioNota.Close;
  case GroupCusto.ItemIndex of
    0 : SQLCustoMedioNota.MacroByName('CustoProduto').AsString := 'PRODUTO.PRODN3VLRCUSTO';
    1 : SQLCustoMedioNota.MacroByName('CustoProduto').AsString := 'PRODUTO.PRODN3VLRCUSTOMED';
  end;
  
//  GravaArqTexto(SQLCustoMedioNota.RealSQL.Text,'C:\Unit\Ponto.sql','NOVO');

  SQLCustoMedioNota.Open;
  while not SQLNotaFiscal.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaDia.AsString        := SQLNotaFiscalNOFIDEMIS.AsString;
      TblTemporariaVendaDia.AsFloat    := SQLNotaFiscalVLRNOTA.AsFloat;
      TblTemporariaImpostosDia.AsFloat := SQLNotaFiscalVLRICMS.AsFloat + SQLNotaFiscalVLRIPI.AsFloat;
      if SQLCustoMedioNota.Locate('NOFIDEMIS',TblTemporariaDia.AsString,[]) then
        TblTemporariaCustoMercDia.AsFloat   := SQLCustoMedioNotaCUSTOMEDIO.AsFloat;
      SQLNotaFiscal.Next;
      Application.ProcessMessages;
    end;

  SQLCupom.Open;
  SQLCupom.First;
  SQLCustoMedioCupom.Close;
  case GroupCusto.ItemIndex of
    0 : SQLCustoMedioCupom.MacroByName('CustoProduto').AsString := 'PRODUTO.PRODN3VLRCUSTO';
    1 : SQLCustoMedioCupom.MacroByName('CustoProduto').AsString := 'PRODUTO.PRODN3VLRCUSTOMED';
  end;
  SQLCustoMedioCupom.Open;
  while not SQLCupom.Eof do
    begin
      if not TblTemporaria.Locate('Dia',SQLCupomCUPODEMIS.AsDateTime,[]) then
        TblTemporaria.Append
      else
        TblTemporaria.Edit;

      TblTemporariaDia.AsString        := SQLCupomCUPODEMIS.AsString;
      TblTemporariaVendaDia.AsFloat    := TblTemporariaVendaDia.AsFloat    + SQLCupomVLRCUPOM.AsFloat;
      TblTemporariaImpostosDia.AsFloat := TblTemporariaImpostosDia.AsFloat + SQLCupomVLRICMS.AsFloat;

      if SQLCustoMedioCupom.Locate('CUPODEMIS',TblTemporariaDia.AsString,[]) then
        TblTemporariaCustoMercDia.AsFloat   := TblTemporariaCustoMercDia.AsFloat + SQLCustoMedioCupomCUSTOMEDIO.AsFloat;

      SQLCupom.Next;
      Application.ProcessMessages;
    end;

  UltPontoEquilibrio := 0;
  TblTemporaria.First;

  if SQLEmpresaCusto.Locate('EMCTA60DESCR','CUSTOFIXO',[]) then
    begin
      TblTemporaria.Edit;

      if SQLEmpresaCustoEMCTCFIXOVARIA.AsString = 'V' then
        TblTemporariaCustoFixo.AsFloat   := TblTemporariaVendaDia.AsFloat * (SQLEmpresaCustoEMCTN2PERC.AsFloat / 100)
      else
        TblTemporariaCustoFixo.AsFloat   := SQLEmpresaCustoEMCTN2VALOR.AsFloat;
      TblTemporariaPontoEquilibrio.AsFloat := TblTemporariaCustoFixo.AsFloat;
      UltPontoEquilibrio := TblTemporariaCustoFixo.AsFloat;
    end;
    
  TblTemporaria.Post;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit;
      if SQLEmpresaCusto.Locate('EMCTA60DESCR','PIS',[]) then
        if SQLEmpresaCustoEMCTCFIXOVARIA.AsString = 'V' then
          TblTemporariaImpostosDia.AsFloat := TblTemporariaImpostosDia.AsFloat + (TblTemporariaImpostosDia.AsFloat * (SQLEmpresaCustoEMCTN2PERC.AsFloat / 100))
        else
          TblTemporariaImpostosDia.AsFloat := TblTemporariaImpostosDia.AsFloat + SQLEmpresaCustoEMCTN2VALOR.AsFloat;

      if SQLEmpresaCusto.Locate('EMCTA60DESCR','COFINS',[]) then
        if SQLEmpresaCustoEMCTCFIXOVARIA.AsString = 'V' then
          TblTemporariaImpostosDia.AsFloat := TblTemporariaImpostosDia.AsFloat + (TblTemporariaImpostosDia.AsFloat * (SQLEmpresaCustoEMCTN2PERC.AsFloat / 100))
        else
          TblTemporariaImpostosDia.AsFloat := TblTemporariaImpostosDia.AsFloat + SQLEmpresaCustoEMCTN2VALOR.AsFloat;

      if SQLEmpresaCusto.Locate('EMCTA60DESCR','SIMPLES',[]) then
        if SQLEmpresaCustoEMCTCFIXOVARIA.AsString = 'V' then
          TblTemporariaImpostosDia.AsFloat := TblTemporariaImpostosDia.AsFloat + (TblTemporariaImpostosDia.AsFloat * (SQLEmpresaCustoEMCTN2PERC.AsFloat / 100))
        else
          TblTemporariaImpostosDia.AsFloat := TblTemporariaImpostosDia.AsFloat + SQLEmpresaCustoEMCTN2VALOR.AsFloat;

      if SQLEmpresaCusto.Locate('EMCTA60DESCR','COMISSOES',[]) then
        if SQLEmpresaCustoEMCTCFIXOVARIA.AsString = 'V' then
          TblTemporariaComissaoDia.AsFloat := TblTemporariaVendaDia.AsFloat * (SQLEmpresaCustoEMCTN2PERC.AsFloat / 100)
        else
          TblTemporariaImpostosDia.AsFloat := SQLEmpresaCustoEMCTN2VALOR.AsFloat;

       TblTemporariaVendaLiqDia.AsFloat    := TblTemporariaVendaDia.AsFloat -
                                              TblTemporariaImpostosDia.AsFloat -
                                              TblTemporariaComissaoDia.AsFloat;


       TblTemporariaVlrMargemDia.AsFloat    := TblTemporariaVendaLiqDia.AsFloat - TblTemporariaCustoMercDia.AsFloat;

       TblTemporariaPercMargemDia.AsFloat   := (TblTemporariaVlrMargemDia.AsFloat / TblTemporariaVendaDia.AsFloat) * 100;

       if TblTemporaria.RecNo = 1 then
         UltPontoEquilibrio := TblTemporariaVlrMargemDia.AsFloat - UltPontoEquilibrio
       else
         UltPontoEquilibrio := TblTemporariaVlrMargemDia.AsFloat + UltPontoEquilibrio;

       TblTemporariaPontoEquilibrio.AsFloat := UltPontoEquilibrio;

       TblTemporaria.Post;
       TblTemporaria.Next;
       Application.ProcessMessages;
    end;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Ponto de Equilibrio.rpt' ;
  Report.ReportTitle       := 'Relatório Ponto de Equilíbrio';
  Report.WindowStyle.Title := 'Relatório Ponto de Equilíbrio';
  //SETAR FORMULAS NO RPT
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '''';
  //--------------------------------------------------------------------------\\

  // AjustaCaminhoCrystal;
  
  Report.Execute;
end;

end.
