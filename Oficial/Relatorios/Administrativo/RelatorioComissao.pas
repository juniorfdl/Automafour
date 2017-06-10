unit RelatorioComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, DBTables, Placemnt, Db, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioComissao = class(TFormRelatorioTEMPLATE)
    SQLVendedorComissao: TRxQuery;
    SQLVendedorComissaoVENDICOD: TIntegerField;
    SQLVendedorComissaoVENDAVISTA: TFloatField;
    SQLVendedorComissaoVENDAPRAZO: TFloatField;
    SQLVendedorComissaoNROVENDAS: TIntegerField;
    SQLVendedorComissaoNTOITENS: TFloatField;
    SQLVendedorComissaoVALORCOMISSAO: TFloatField;
    SQLVendedorComissaoVENDA60NOME: TStringField;
    SQLVendedorComissaoTOTALVENDA: TFloatField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaVENDAVISTA: TFloatField;
    TblTemporariaVENDAPRAZO: TFloatField;
    TblTemporariaTOTALVENDA: TFloatField;
    TblTemporariaNROVENDAS: TIntegerField;
    TblTemporariaNTOITENS: TFloatField;
    TblTemporariaVALORCOMISSAO: TFloatField;
    TblTemporariaVENDA60NOME: TStringField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure TblTemporariaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioComissao: TFormRelatorioComissao;

implementation

uses DataModulo;

{$R *.DFM}

procedure TFormRelatorioComissao.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLVendedorComissao.Close ;
  SQLVendedorComissao.MacrobyName('MData').Value := 'VENDEDORCOMISSAO.VDCODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'VENDEDORCOMISSAO.VDCODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLVendedorComissao.Open ;
  if SQLVendedorComissao.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  BatchExec(SQLVendedorComissao, TblTemporaria) ;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Comissao Vendedor.rpt' ;

  Report.ReportTitle       := 'Relatório de Comissões' ;
  Report.WindowStyle.Title := 'Relatório de Comissões' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  Report.Execute ;
end;

procedure TFormRelatorioComissao.TblTemporariaNewRecord(DataSet: TDataSet);
begin
  inherited ;
  TblTemporariaVENDAVISTA.Value    := 0 ;
  TblTemporariaVENDAPRAZO.Value    := 0 ;
  TblTemporariaNROVENDAS.Value     := 0 ;
  TblTemporariaNTOITENS.Value      := 0 ;
  TblTemporariaVALORCOMISSAO.Value := 0 ;
end ;

end.
