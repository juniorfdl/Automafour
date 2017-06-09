unit TelaImpressaoCarne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppDBPipe, ppDBBDE, ppBands, ppClass, ppBarCod, ppCtrls,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFormTelaImpressaoCarne = class(TForm)
    CarneJonas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppParcela: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText2: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText8: TppDBText;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText3: TppDBText;
    ppLine2: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    ppDBText22: TppDBText;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine4: TppLine;
    BDEPipeCarne: TppBDEPipeline;
    CarneCastelo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel18: TppLabel;
    ppDBBarCode2: TppDBBarCode;
    ppDBText30: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText31: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaImpressaoCarne: TFormTelaImpressaoCarne;

implementation

uses TelaFechamentoVenda, DataModulo, TelaItens;

{$R *.dfm}

procedure TFormTelaImpressaoCarne.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
