unit TelaConsultaPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaPedidoVenda = class(TFormTelaConsultaTemplate)
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePDVDICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePDVDDEMISSAO: TDateTimeField;
    SQLTemplatePDVDN2VLRFRETE: TFloatField;
    SQLTemplatePDVDA30NROPEDCOMP: TStringField;
    SQLTemplatePDVDA30COMPRADOR: TStringField;
    SQLTemplatePDVDCTIPO: TStringField;
    SQLTemplatePDVDCSTATUS: TStringField;
    SQLTemplatePDVDN2VLRDESC: TFloatField;
    SQLTemplatePDVDN2TOTPROD: TFloatField;
    SQLTemplatePDVDN2TOTPED: TFloatField;
    SQLTemplatePDVDTOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplatePDVDN2VLRDESCPROM: TFloatField;
    SQLTemplatePDVDCTIPOFRETE: TStringField;
    SQLTemplatePDVDDENTREGA: TDateTimeField;
    SQLTemplatePDVDINROTALAO: TIntegerField;
    SQLTemplatePDVDCIMPORTADO: TStringField;
    SQLTemplatePDVDN2PERCFAT: TFloatField;
    SQLTemplatePDVDN2PERCOMIS: TFloatField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateROTAICOD: TIntegerField;
    SQLTemplateNOFIAOBSCORPONF: TStringField;
    SQLTemplatePDVD8PLACAVEIC: TStringField;
    SQLTemplatePDVDA15NROPEDPALM: TStringField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateVEICA13ID: TStringField;
    SQLTemplatePDVDN2VLROUTRASDESP: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaPedidoVenda: TFormTelaConsultaPedidoVenda;

implementation

{$R *.dfm}

end.
