unit RelatorioOrdensListagemPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables;

type
  TFormListagemOrdemMec_Itens = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SQLOrdItens: TQuery;
    SQLOrdItensPRODICOD: TIntegerField;
    SQLOrdItensSUM: TBCDField;
    SQLOrdItensTOTAL: TFloatField;
    SQLOrdItensPRODUTO: TStringField;
    DSSQLOrdItens: TDataSource;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListagemOrdemMec_Itens: TFormListagemOrdemMec_Itens;

implementation

uses RelatorioOrdensPecas;

{$R *.dfm}

end.
