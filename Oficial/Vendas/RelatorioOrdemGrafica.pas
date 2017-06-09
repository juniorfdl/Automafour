unit RelatorioOrdemGrafica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables, QRCTRLS, QUICKRPT, ExtCtrls;

type
  TFormRelatorioOrdemGrafica = class(TForm)
    RelatorioOrdemGrafica: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
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
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBText31: TQRDBText;
    QRLabel1: TQRLabel;
    QRServico: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText19Print(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRServicoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrdemGrafica: TFormRelatorioOrdemGrafica;
  xCodProduto: Integer;
  xServico   : String;
implementation

uses CadastroGraficaOrdem, DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioOrdemGrafica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormRelatorioOrdemGrafica.QRDBText19Print(sender: TObject;
  var Value: String);
begin
  if Value = 'T' then
    Value := 'X'
  else
    Value := '';
end;

procedure TFormRelatorioOrdemGrafica.QRDBText15Print(sender: TObject;
  var Value: String);
begin
  if Pos('X',UpperCase(value)) > 0 then
  begin
    QRLabel1.Caption := Copy(value,Pos('X',UpperCase(value))+1,Length(value));
    Value := Copy(value,0,Pos('X',UpperCase(value))-1);
  end else
    Qrlabel1.Caption := '';
end;

procedure TFormRelatorioOrdemGrafica.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if not (RelatorioOrdemGrafica.DataSet = nil )then
  begin
    xCodProduto := RelatorioOrdemGrafica.DataSet.FieldByname('Prodicod').AsInteger;
    xServico    := RelatorioOrdemGrafica.DataSet.FieldByname('Servico').AsString;
  end;

end;

procedure TFormRelatorioOrdemGrafica.QRServicoPrint(sender: TObject;
  var Value: String);
begin
  Value := Trim(SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',IntToStr(xCodProduto)))+ ' '+ xServico ;
end;

end.
