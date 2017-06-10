unit RelatorioOrdensServicosPorTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, DB, DBTables, QRCtrls, ExtCtrls;

type
  TRelatorioOrdensServicoPorTipo = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand4: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    DSSQLOrdItens: TDataSource;
    SQLOrdItens: TQuery;
    SQLOrdItensCLIEA60RAZAOSOC: TStringField;
    SQLOrdItensDATA: TDateTimeField;
    SQLOrdItensORDITENSID: TIntegerField;
    SQLOrdItensORDID: TIntegerField;
    SQLOrdItensGRUPO_SERVICO: TIntegerField;
    SQLOrdItensGARANTIA: TStringField;
    SQLOrdItensPRODICOD: TIntegerField;
    SQLOrdItensORITN3QUANT: TBCDField;
    SQLOrdItensORITN2VLRUNIT: TBCDField;
    SQLOrdItensORITN2PERCDESC: TBCDField;
    SQLOrdItensORITN2VLRDESC: TBCDField;
    SQLOrdItensORITN3TOTVEND: TBCDField;
    SQLOrdItensORITA254OBS: TStringField;
    SQLOrdItensORMCTIPOSERVICOID: TIntegerField;
    SQLOrdItensIDMECANICO: TIntegerField;
    SQLOrdItensORITN2PERCCOMIS: TBCDField;
    SQLOrdItensORITN3TEMPO: TBCDField;
    SQLOrdItensVALORITEM: TFloatField;
    SQLOrdItensCOMISSAO: TFloatField;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    SQLOrdItensORMCA30TIPOSERVICO: TStringField;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelatorioOrdensServicoPorTipo: TRelatorioOrdensServicoPorTipo;

implementation

{$R *.dfm}

procedure TRelatorioOrdensServicoPorTipo.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  Value:= Formatfloat(',0.00',StrToFloat(Value));
end;

procedure TRelatorioOrdensServicoPorTipo.QRGroup1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  QRExpr1.Reset;
  QRExpr2.Reset;

end;

end.
