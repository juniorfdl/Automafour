unit RelatorioOrdemToazzaCaderno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables, QRCTRLS, QUICKRPT, ExtCtrls;

type
  TFormRelatorioOrdemGraficaToazzaCaderno = class(TForm)
    RelatorioOrdemGrafica: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRServico: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    procedure QRServicoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrdemGraficaToazzaCaderno: TFormRelatorioOrdemGraficaToazzaCaderno;
  xCCodProduto: Integer;
  xCServico   : String;

implementation

uses CadastroGraficaOrdem, DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioOrdemGraficaToazzaCaderno.QRServicoPrint(
  sender: TObject; var Value: String);
begin
  value := Trim(SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',IntToStr(xCCodProduto)))+ ' '+ xCServico ;
end;

end.
