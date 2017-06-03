unit RelatorioAgendaTelefonica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  DBTables, Placemnt, DB, StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls,
  Buttons, jpeg, ComCtrls, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache,
  ppProd, ppReport, RxQuery;

type
  TFormRelatorioAgenda = class(TFormRelatorioTEMPLATE)
    ppBDEPipeline1: TppBDEPipeline;
    RxQuery1: TRxQuery;
    RxQuery1AGFOA13ID: TStringField;
    RxQuery1EMPRICOD: TIntegerField;
    RxQuery1AGFOICOD: TIntegerField;
    RxQuery1AGFOA60NOME: TStringField;
    RxQuery1AGFOA15FONE1: TStringField;
    RxQuery1AGFOA15FONE2: TStringField;
    RxQuery1AGFOA60END: TStringField;
    RxQuery1AGFOA60BAI: TStringField;
    RxQuery1AGFOA60CID: TStringField;
    RxQuery1AGFOA8CEP: TStringField;
    RxQuery1AGFOA2UF: TStringField;
    RxQuery1AGFOA254OBS: TStringField;
    RxQuery1REGISTRO: TDateTimeField;
    RxQuery1PENDENTE: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaAGFOICOD: TIntegerField;
    TblTemporariaAGFOA13ID: TStringField;
    TblTemporariaAGFOA60NOME: TStringField;
    TblTemporariaAGFOA15FONE1: TStringField;
    TblTemporariaAGFOA15FONE2: TStringField;
    TblTemporariaAGFOA60END: TStringField;
    TblTemporariaAGFOA60BAI: TStringField;
    TblTemporariaAGFOA60CID: TStringField;
    TblTemporariaAGFOA8CEP: TStringField;
    TblTemporariaAGFOA2UF: TStringField;
    TblTemporariaAGFOA254OBS: TStringField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaPENDENTE: TStringField;
    ppReportrelatorioagenda: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioAgenda: TFormRelatorioAgenda;

implementation

uses DataModulo;

{$R *.dfm}

end.
