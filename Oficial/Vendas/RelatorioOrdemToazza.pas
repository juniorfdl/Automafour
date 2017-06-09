unit RelatorioOrdemToazza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormRelatorioOrdensToazza = class(TForm)
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
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBText31: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText32: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText19Print(sender: TObject; var Value: String);
    procedure QRServicoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrdensToazza: TFormRelatorioOrdensToazza;
  xTCodProduto: Integer;
  xTServico   : String;
  
implementation

uses CadastroGraficaOrdem, DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioOrdensToazza.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if not (RelatorioOrdemGrafica.DataSet = nil )then
  begin
    xTCodProduto := RelatorioOrdemGrafica.DataSet.FieldByname('Prodicod').AsInteger;
    xTServico    := RelatorioOrdemGrafica.DataSet.FieldByname('Servico').AsString;
  end;

end;

procedure TFormRelatorioOrdensToazza.QRDBText19Print(sender: TObject;
  var Value: String);
begin
  if Value = 'T' then
    Value := '[X]'
  else
    Value := '[ ]';
end;

procedure TFormRelatorioOrdensToazza.QRServicoPrint(sender: TObject;
  var Value: String);
begin
  value := Trim(SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',IntToStr(xTCodProduto)))+ ' '+ xTServico ;
end;

end.
