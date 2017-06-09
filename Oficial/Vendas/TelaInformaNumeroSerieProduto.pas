unit TelaInformaNumeroSerieProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, RXCtrls;

type
  TFormTelaInformaNumeroSerieProduto = class(TForm)
    EditNroSerie: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SQLConsulta: TQuery;
    LblNomeSistema: TRxLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    CdProduto : String;
  public
    { Public declarations }
  end;

var
  FormTelaInformaNumeroSerieProduto: TFormTelaInformaNumeroSerieProduto;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaInformaNumeroSerieProduto.BitBtn1Click(Sender: TObject);
begin
  SQLConsulta.Close;
  SQLConsulta.SQL.Clear;
  SQLConsulta.SQL.Add('SELECT * FROM PRODUTOSERIE WHERE PRSEA60NROSERIE = "' + EditNroSerie.Text + '"');
  SQLConsulta.SQL.Add('and PRODICOD = ' + CodigoProduto);
  SQLConsulta.Open;
  if SQLConsulta.IsEmpty then
    begin
      ShowMessage('Número de série não encontrado! Digite outro número!');
      EditNroSerie.Clear;
      EditNroSerie.SetFocus;
    end;
  if (not SQLConsulta.IsEmpty) and (SQLConsulta.FieldByName('PRSECSTATUS').Value = 'I') then
    begin
      ShowMessage('Número de série INDISPONIVEL! Digite outro número!');
      EditNroSerie.Clear;
      EditNroSerie.SetFocus;
    end;
  FormTelaInformaNumeroSerieProduto.ModalResult := MrOK
end;

end.
