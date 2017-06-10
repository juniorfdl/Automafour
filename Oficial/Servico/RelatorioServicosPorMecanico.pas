unit RelatorioServicosPorMecanico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormRelatorioServicosPorMecanico = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    DSSQLOrdItens: TDataSource;
    QRLabel10: TQRLabel;
    Mecanico: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SQLOrdItens: TQuery;
    SQLOrdItensCLIEA60RAZAOSOC: TStringField;
    SQLOrdItensDATA: TDateTimeField;
    SQLOrdItensORDITENSID: TIntegerField;
    SQLOrdItensORDID: TIntegerField;
    SQLOrdItensGRUPO_SERVICO: TIntegerField;
    SQLOrdItensGARANTIA: TStringField;
    SQLOrdItensPRODICOD: TIntegerField;
    SQLOrdItensORITN3QUANT: TFloatField;
    SQLOrdItensORITN2VLRUNIT: TFloatField;
    SQLOrdItensORITN2PERCDESC: TFloatField;
    SQLOrdItensORITN2VLRDESC: TFloatField;
    SQLOrdItensORITN3TOTVEND: TFloatField;
    SQLOrdItensORITA254OBS: TStringField;
    SQLOrdItensORMCTIPOSERVICOID: TIntegerField;
    SQLOrdItensIDMECANICO: TIntegerField;
    SQLOrdItensORITN2PERCCOMIS: TFloatField;
    SQLOrdItensORITN3TEMPO: TFloatField;
    SQLOrdItensVALORITEM: TFloatField;
    SQLOrdItensCOMISSAO: TFloatField;
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioServicosPorMecanico: TFormRelatorioServicosPorMecanico;

implementation

{$R *.dfm}

procedure TFormRelatorioServicosPorMecanico.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  Value:= Formatfloat(',0.00',StrToFloat(Value));
end;

end.
