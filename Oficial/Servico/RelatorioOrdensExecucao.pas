unit RelatorioOrdensExecucao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormRelatoriOrdensPorExecucao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    DSSQLOrdItens: TDataSource;
    SQLOrdItens: TQuery;
    IntegerField1: TIntegerField;
    SQLOrdItensORDREINCIDENTE: TIntegerField;
    SQLOrdItensCLIEA13ID: TStringField;
    DateTimeField1: TDateTimeField;
    SQLOrdItensTIPO: TIntegerField;
    SQLOrdItensACESSORIOS: TMemoField;
    SQLOrdItensPROBLEMA: TMemoField;
    SQLOrdItensVALOR: TFloatField;
    SQLOrdItensFINALIZADO: TDateTimeField;
    SQLOrdItensKM_ENTRADA: TIntegerField;
    SQLOrdItensCOMBUSTIVEL: TStringField;
    SQLOrdItensLITROS: TSmallintField;
    SQLOrdItensANO_MODELO: TStringField;
    SQLOrdItensORDA10COR: TStringField;
    SQLOrdItensDATA_ENTREGA: TDateTimeField;
    SQLOrdItensOBS_ENTREGA: TMemoField;
    SQLOrdItensSOLUCAO: TMemoField;
    SmallintField1: TSmallintField;
    SQLOrdItensCDUSU: TSmallintField;
    SQLOrdItensMARCAA30: TStringField;
    SQLOrdItensORDA50VEICULO: TStringField;
    SQLOrdItensSTATUS: TStringField;
    SQLOrdItensEMPRICOD: TIntegerField;
    SQLOrdItensORITN2VLRPRODUTO: TFloatField;
    SQLOrdItensORITN2VLRSERVICO: TFloatField;
    BCDField1: TFloatField;
    SQLOrdItensPLACA: TStringField;
    SQLOrdItensPARCELAS: TStringField;
    SQLOrdItensPARCELASVARIAVEIS: TStringField;
    SQLOrdItensORDA25EXECUTAEM: TStringField;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    SQLOrdItensCLIEA60RAZAOSOC: TStringField;
    QRLabel1: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    procedure QRExpr3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatoriOrdensPorExecucao: TFormRelatoriOrdensPorExecucao;

implementation

{$R *.dfm}

procedure TFormRelatoriOrdensPorExecucao.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  if Value <> '' then
    Value := FormatFloat(',0.00',StrToFloat(value));

end;

end.
