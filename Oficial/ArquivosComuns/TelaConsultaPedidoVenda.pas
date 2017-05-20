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
    SQLTemplatePDVDN2VLRFRETE: TBCDField;
    SQLTemplatePDVDA30NROPEDCOMP: TStringField;
    SQLTemplatePDVDA30COMPRADOR: TStringField;
    SQLTemplatePDVDCTIPO: TStringField;
    SQLTemplatePDVDCSTATUS: TStringField;
    SQLTemplatePDVDN2VLRDESC: TBCDField;
    SQLTemplatePDVDN2TOTPROD: TBCDField;
    SQLTemplatePDVDN2TOTPED: TBCDField;
    SQLTemplatePDVDTOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplatePDVDN2VLRDESCPROM: TBCDField;
    SQLTemplatePDVDCTIPOFRETE: TStringField;
    SQLTemplatePDVDDENTREGA: TDateTimeField;
    SQLTemplatePDVDINROTALAO: TIntegerField;
    SQLTemplatePDVDCIMPORTADO: TStringField;
    SQLTemplatePDVDN2PERCFAT: TBCDField;
    SQLTemplatePDVDN2PERCOMIS: TBCDField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateROTAICOD: TIntegerField;
    SQLTemplateNOFIAOBSCORPONF: TStringField;
    SQLTemplatePDVD8PLACAVEIC: TStringField;
    SQLTemplatePDVDA15NROPEDPALM: TStringField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateVEICA13ID: TStringField;
    SQLTemplatePDVDN2VLROUTRASDESP: TBCDField;
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
