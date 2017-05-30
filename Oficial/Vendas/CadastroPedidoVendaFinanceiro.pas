unit CadastroPedidoVendaFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, VarSys,FormResources,
  EDBNum, RxDBComb, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPedidoVendaFinanceiro = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBDateEdit;
    DBEdit3: TDBEdit;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    BtnNumerario: TSpeedButton;
    BtnPortadores: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit6: TDBEdit;
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCTRCICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCTRCCSTATUS: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplateCTRCDVENC: TDateTimeField;
    SQLTemplateCTRCN2VLR: TBCDField;
    SQLTemplateCTRCN2DESCFIN: TBCDField;
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateCTRCN2TXJURO: TBCDField;
    SQLTemplateCTRCN2TXMULTA: TBCDField;
    SQLTemplateCTRCA5TIPOPADRAO: TStringField;
    SQLTemplateCTRCDULTREC: TDateTimeField;
    SQLTemplateCTRCN2TOTREC: TBCDField;
    SQLTemplateCTRCN2TOTJUROREC: TBCDField;
    SQLTemplateCTRCN2TOTMULTAREC: TBCDField;
    SQLTemplateCTRCN2TOTDESCREC: TBCDField;
    SQLTemplateEMPRICODULTREC: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateCTRCA30NRODUPLICBANCO: TStringField;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateCTRCDEMIS: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCTRCDREABILSPC: TDateTimeField;
    SQLTemplateCTRCN2TOTMULTACOBR: TBCDField;
    SQLTemplateBANCA5CODCHQ: TStringField;
    SQLTemplateCTRCA10AGENCIACHQ: TStringField;
    SQLTemplateCTRCA15CONTACHQ: TStringField;
    SQLTemplateCTRCA15NROCHQ: TStringField;
    SQLTemplateCTRCA60TITULARCHQ: TStringField;
    SQLTemplateCTRCA20CGCCPFCHQ: TStringField;
    SQLTemplateCTRCDDEPOSCHQ: TDateTimeField;
    SQLTemplateALINICOD: TIntegerField;
    SQLTemplateNumerarioLookUp: TStringField;
    SQLTemplatePortadorLookUp: TStringField;
    SQLTemplatePDVDA13ID: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    DBEdit7: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLTemplateTipoPadraoLookup: TStringField;
    Label15: TLabel;
    EvDBNumEdit5: TEvDBNumEdit;
    Label16: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label14: TLabel;
    BtnTipoDocumento: TSpeedButton;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    SQLTemplateTipoDocumentoLookUp: TStringField;
    TblPedidoVenda: TTable;
    DSTblPedidoVenda: TDataSource;
    TblPedidoVendaPDVDA13ID: TStringField;
    TblPedidoVendaPDVDDEMISSAO: TDateTimeField;
    TblPedidoVendaPDVDCTIPO: TStringField;
    TblPedidoVendaPDVDCSTATUS: TStringField;
    TblPedidoVendaPDVDN2VLRDESC: TBCDField;
    TblPedidoVendaPDVDN2TOTPROD: TBCDField;
    TblPedidoVendaPDVDN2TOTPED: TBCDField;
    TblPedidoVendaPDVDN2VLRDESCPROM: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure BtnNumerarioClick(Sender: TObject);
    procedure BtnPortadoresClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNUMEICODChange(Sender: TField);
    procedure BtnTipoDocumentoClick(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSTemplateStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoVendaFinanceiro: TFormCadastroPedidoVendaFinanceiro;

implementation

uses TelaConsultaPortador,
     TelaConsultaNumerario,
     DataModulo,
     TelaConsultaTipoDocumento ;

{$R *.dfm}

procedure TFormCadastroPedidoVendaFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CONTASRECEBER';
  if not TblPedidoVenda.Active then TblPedidoVenda.Open; 
end;

procedure TFormCadastroPedidoVendaFinanceiro.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PDVDA13ID').Value := DataSet.DataSource.DataSet.FindField('PDVDA13ID').Value;
  DataSet.FindField('CLIEA13ID').Value := DataSet.DataSource.DataSet.FindField('CLIEA13ID').Value;
  DataSet.FindField('CTRCDEMIS').Value := DataSet.DataSource.DataSet.FindField('PDVDDEMISSAO').Value;
  DataSet.FindField('CTRCCSTATUS').Value := 'A';
  DataSet.FindField('CTRCN2TXJURO').Value       := 0;
  DataSet.FindField('CTRCN2TXMULTA').Value      := 0;
  DataSet.FindField('CTRCN2TOTREC').Value       := 0;
  DataSet.FindField('CTRCN2TOTJUROREC').Value   := 0;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value  := 0;
  DataSet.FindField('CTRCN2TOTDESCREC').Value   := 0;
  DataSet.FindField('CTRCN2TOTMULTACOBR').Value := 0;
  DataSet.FindField('CTRCN2TOTMULTACOBR').Value := 0;
  DataSet.FindField('CTRCN2DESCFIN').Value      := 0;
  DataSet.FindField('TPDCICOD').Value           := DM.SQLConfigVenda.Fieldbyname('TPDCICOD').AsInteger; //#ver estava .asvariant
  DataSet.FindField('PORTICOD').Value           := DM.SQLConfigVenda.Fieldbyname('PORTICOD').AsInteger; //#ver estava .asvariant

end;

procedure TFormCadastroPedidoVendaFinanceiro.BtnNumerarioClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('NUMEICOD');
  FieldOrigem := 'NUMEICOD';
  CriaFormulario(TFormTelaConsultaNumerario,'FormTelaConsultaNumerario',False,True,True,'');
end;

procedure TFormCadastroPedidoVendaFinanceiro.BtnPortadoresClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('PORTICOD');
  FieldOrigem := 'PORTICOD';
  CriaFormulario(TFormTelaConsultaPortador,'FormTelaConsultaPortador',False,True,True,'');
end;

procedure TFormCadastroPedidoVendaFinanceiro.DBEdit4KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnNumerario.Click;
end;

procedure TFormCadastroPedidoVendaFinanceiro.DBEdit5KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnPortadores.Click;
end;

procedure TFormCadastroPedidoVendaFinanceiro.SQLTemplateNUMEICODChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateCTRCA5TIPOPADRAO.Value := SQLTemplateTipoPadraoLookUp.asString;
end;

procedure TFormCadastroPedidoVendaFinanceiro.BtnTipoDocumentoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('TPDCICOD');
  FieldOrigem := 'TPDCICOD';
  CriaFormulario(TFormTelaConsultaTipoDocumento,'FormTelaConsultaTipoDocumento',False,True,True,'');
end;

procedure TFormCadastroPedidoVendaFinanceiro.DBEdit10KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnTipoDocumento.Click;
end;

procedure TFormCadastroPedidoVendaFinanceiro.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  // verifica status do pedido e desabilita os botões de manipulação de registros
  if DSMasterTemplate.DataSet.FieldByName('PDVDCSTATUS').AsString <> '' then
    if DSMasterTemplate.DataSet.FieldByName('PDVDCSTATUS').AsString <> 'A' then
      DesabilitarBotoes(True,True,True,True,True);
end;

end.
