unit RelatorioRetornoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormRelatorioRetornoBanco = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    rlTotal: TRLLabel;
    rlJuros: TRLLabel;
    rlMulta: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    rlSubTitulo: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vValor, vValorMulta, vValotJuros : Real;
    vSubTitulo : String;
  end;

var
  FormRelatorioRetornoBanco: TFormRelatorioRetornoBanco;

implementation

uses
  TelaMovimentoRetornoSicredi;


{$R *.dfm}

procedure TFormRelatorioRetornoBanco.FormCreate(Sender: TObject);
begin
  vValor := 0;
  vValorMulta := 0;
  vValotJuros := 0;
end;

procedure TFormRelatorioRetornoBanco.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlTotal.Caption := FormatFloat('###,###,##0.00', vValor);
  rlJuros.Caption := FormatFloat('###,###,##0.00', vValotJuros);
  rlMulta.Caption := FormatFloat('###,###,##0.00', vValorMulta);
end;

procedure TFormRelatorioRetornoBanco.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlSubTitulo.Caption := 'Retorno do banco ' + vSubTitulo;
end;

end.
