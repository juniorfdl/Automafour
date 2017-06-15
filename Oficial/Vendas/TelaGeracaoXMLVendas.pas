unit TelaGeracaoXMLVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, StdCtrls, ComCtrls;

type
  TFormTelaGeracaoXMLVendas = class(TForm)
    BTGerarXML: TButton;
    PcdsXML: TDataSetProvider;
    cdsXML: TClientDataSet;
    ProgressBar: TProgressBar;
    Label1: TLabel;
    procedure BTGerarXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoXMLVendas: TFormTelaGeracaoXMLVendas;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaGeracaoXMLVendas.BTGerarXMLClick(Sender: TObject);
begin
  ProgressBar.Min :=  0;
  ProgressBar.Max := 50;
  // Gera Xml do Cupom
  ProgressBar.Position := 10;
  dm.SQLTemplate.close;
  dm.SQLTemplate.sql.clear;
  dm.SQLTemplate.sql.Add('Select * from Cupom where CUPOA13ID = '''+DM.CodNextCupom+'''');
  dm.SQLTemplate.Open;
  if not dm.SQLTemplate.IsEmpty then
    begin
      PcdsXML.DataSet := dm.SQLTemplate;
      cdsXML.Open;
      // Pra habilitar o metodo de AppendData
      cdsXML.data := cdsXML.data;

      cdsXML.SaveToFile('C:\Unit\Gestao\ExportaPDV\Cupom_'+DM.CodNextCupom+'.xml',dfBinary);
      cdsXML.close;
      cdsXML.data := null;
    end;
  // Gera Xml do CupomItem
  ProgressBar.Position := 20;
  dm.SQLTemplate.close;
  dm.SQLTemplate.sql.clear;
  dm.SQLTemplate.sql.Add('Select * from CupomItem where CUPOA13ID = '''+DM.CodNextCupom+'''');
  dm.SQLTemplate.Open;
  if not dm.SQLTemplate.IsEmpty then
    begin
      PcdsXML.DataSet := dm.SQLTemplate;
      cdsXML.Open;
      // Pra habilitar o metodo de AppendData
      cdsXML.data := cdsXML.data;

      cdsXML.SaveToFile('C:\Unit\Gestao\ExportaPDV\CupomItem_'+DM.CodNextCupom+'.xml',dfBinary);
      cdsXML.close;
      cdsXML.data := null;
    end;
  // Gera Xml do CupomNumerario
  ProgressBar.Position := 30;
  dm.SQLTemplate.close;
  dm.SQLTemplate.sql.clear;
  dm.SQLTemplate.sql.Add('Select * from CupomNumerario where CUPOA13ID = '''+DM.CodNextCupom+'''');
  dm.SQLTemplate.Open;
  if not dm.SQLTemplate.IsEmpty then
    begin
      PcdsXML.DataSet := dm.SQLTemplate;
      cdsXML.Open;
      // Pra habilitar o metodo de AppendData
      cdsXML.data := cdsXML.data;

      cdsXML.SaveToFile('C:\Unit\Gestao\ExportaPDV\CupomNumerario_'+DM.CodNextCupom+'.xml',dfBinary);
      cdsXML.close;
      cdsXML.data := null;
    end;

  // Gera Xml do ContasReceber
  ProgressBar.Position := 40;
  dm.SQLTemplate.close;
  dm.SQLTemplate.sql.clear;
  dm.SQLTemplate.sql.Add('Select * from ContasReceber where CUPOA13ID = '''+DM.CodNextCupom+'''');
  dm.SQLTemplate.Open;
  if not dm.SQLTemplate.IsEmpty then
    begin
      PcdsXML.DataSet := dm.SQLTemplate;
      cdsXML.Open;
      // Pra habilitar o metodo de AppendData
      cdsXML.data := cdsXML.data;

      cdsXML.SaveToFile('C:\Unit\Gestao\ExportaPDV\ContasReceber_'+DM.CodNextCupom+'.xml',dfBinary);
      cdsXML.close;
      cdsXML.data := null;
    end;
end;

end.
