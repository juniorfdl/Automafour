unit ListagemOrdensGraficas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables, QRCTRLS, QUICKRPT, ExtCtrls;

type
  TFormListagemOrdemGrafica = class(TForm)
    ListagemOrdemGrafica: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRSysData3: TQRSysData;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListagemOrdemGrafica: TFormListagemOrdemGrafica;

implementation

uses CadastroGraficaOrdem, DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormListagemOrdemGrafica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormListagemOrdemGrafica.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  Value := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',Dm.SQLTerminalAtivo.FieldByName('EMPRICOD').AsString);
end;

end.
