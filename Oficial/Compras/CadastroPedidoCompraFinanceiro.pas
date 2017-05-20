unit CadastroPedidoCompraFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RXDBCtrl, EDBNum, DBCtrls, VarSys, FOrmResources,
  RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPedidoCompraFinanceiro = class(TFormCadastroTEMPLATE)
    SQLGeral: TRxQuery;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    LBCodPedido: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    DbCodIntegrado: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit6: TEvDBNumEdit;
    EvDBNumEdit7: TEvDBNumEdit;
    Label10: TLabel;
    RetornaTipoDocumento: TSpeedButton;
    Label11: TLabel;
    RetornaPortador: TSpeedButton;
    SQLTemplateCTPGA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCTPGICOD: TIntegerField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateCTPGINROPARC: TIntegerField;
    SQLTemplateCTPGDVENC: TDateTimeField;
    SQLTemplateCTPGN3VLR: TFloatField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplateTipoDocumentoCalcField: TStringField;
    SQLTemplateCTPGN3TXJURO: TFloatField;
    SQLTemplateCTPGN3TXMULTA: TFloatField;
    SQLTemplateCTPGA5TIPOPADRAO: TStringField;
    SQLTemplateNOCPA13ID: TStringField;
    SQLTemplateCTPGDULTPAGTO: TDateTimeField;
    SQLTemplateCTPGN3JUROPAGTO: TFloatField;
    SQLTemplateCTPGN3MULTAPAGTO: TFloatField;
    SQLTemplateCTPGN3DESCPAGTO: TFloatField;
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCTPGDTEMIS: TDateTimeField;
    SQLTemplateCTPGA20DOCORIG: TStringField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplatePortadorCalcField: TStringField;
    SQLTemplateCTPGN2DESCPROMO: TFloatField;
    SQLTemplateCTPGCPREVREAL: TStringField;
    SQLTemplateCTPGN2TOTPAG: TFloatField;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    DSSQLTipoDocumento: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboPortador: TRxDBLookupCombo;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure RetornaTipoDocumentoClick(Sender: TObject);
    procedure RetornaPortadorClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure ComboTipoDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSTemplateStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoCompraFinanceiro: TFormCadastroPedidoCompraFinanceiro;

implementation

uses DataModulo, CadastroTipoDocumento, CadastroPortador, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroPedidoCompraFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='CONTASPAGAR';
end;

procedure TFormCadastroPedidoCompraFinanceiro.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PDCPA13ID').Value          := DataSet.DataSource.DataSet.FindField('PDCPA13ID').Value;
  DataSet.FindField('FORNICOD').Value           := DataSet.DataSource.DataSet.FindField('FORNICOD').Value;
  DataSet.FindField('CTPGDTEMIS').Value         := DataSet.DataSource.DataSet.FindField('PDCPDEMIS').Value;
  DataSet.FindField('EMPRICOD').Value           := EmpresaCorrente;
  DataSet.FindField('CTPGN3TXJURO').asFloat     := 0 ;
  DataSet.FindField('CTPGN3TXMULTA').asFloat    := 0 ;
  DataSet.FindField('CTPGN3JUROPAGTO').asFloat  := 0 ;
  DataSet.FindField('CTPGN3MULTAPAGTO').asFloat := 0 ;
  DataSet.FindField('CTPGN3DESCPAGTO').asFloat  := 0 ;
  DataSet.FindField('CTPGN2DESCPROMO').asFloat  := 0 ;
  DataSet.FindField('CTPGN2TOTPAG').asFloat     := 0 ;
  DataSet.FindField('CTPGCPREVREAL').Value      := 'C' ;
  DataSet.FindField('TPDCICOD').Value           := DM.SQLConfigCompra.fieldbyname('TPDCICOD').AsVariant;
  DataSet.FindField('PORTICOD').Value           := DM.SQLConfigCompra.fieldbyname('PORTICOD').AsVariant;

  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select Max(CTPGINROPARC) As Parcela from CONTASPAGAR') ;
  SQLGeral.SQL.Add('where PDCPA13ID = "'+DataSet.DataSource.DataSet.FindField('PDCPA13ID').asString+'"');
  SQLGeral.Open ;
  if SQLGeral.FieldByName('Parcela').Value > 0 then
    SQLTemplateCTPGINROPARC.Value := SQLGeral.FieldByName('Parcela').Value + 1
  Else
    SQLTemplateCTPGINROPARC.Value := 1;
  SQLGeral.Close;
end;

procedure TFormCadastroPedidoCompraFinanceiro.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //TIPO DOCUMENTO
   If DataSet.FieldByName('TPDCICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('TIPODOCUMENTO',['TPDCICOD'],[DataSet.FieldByName('TPDCICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('TipoDocumentoCalcField').AsVariant    := DM.SQLTemplate.FindField('TPDCA60DESCR').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('TipoDocumentoCalcField').asString := MensagemLookUp ;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('TipoDocumentoCalcField').AsVariant  := Null;
    End;
  //PORTADOR
   if DataSet.FieldByName('PORTICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PORTADOR',['PORTICOD'],[DataSet.FieldByName('PORTICOD').AsString],1) Then
        begin
          DataSet.FieldByName('PortadorCalcField').AsVariant    := DM.SQLTemplate.FindField('PORTA60DESCR').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('PortadorCalcField').asString := MensagemLookUp ;
        end;
    end
  else
    begin
      DataSet.FieldByName('PortadorCalcField').AsVariant  := Null;
    end;
end;

procedure TFormCadastroPedidoCompraFinanceiro.RetornaTipoDocumentoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPDCICOD');
  FieldOrigem := 'TPDCICOD' ;
  CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento',False,True,True,'');
end;

procedure TFormCadastroPedidoCompraFinanceiro.RetornaPortadorClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PORTICOD');
  FieldOrigem := 'PORTICOD' ;
  CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador',False,True,True, '');
end;

procedure TFormCadastroPedidoCompraFinanceiro.DBEdit9KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaTipoDocumento.Click;
end;

procedure TFormCadastroPedidoCompraFinanceiro.DBEdit11KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPortador.Click;
end;

procedure TFormCadastroPedidoCompraFinanceiro.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
//  ShowMessage('Não é permitido excluir o financeiro do pedido!');
//  Abort;
  inherited;
end;

procedure TFormCadastroPedidoCompraFinanceiro.ComboTipoDocKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaTipoDocumento.Click;
end;

procedure TFormCadastroPedidoCompraFinanceiro.ComboPortadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPortador.Click;
end;

procedure TFormCadastroPedidoCompraFinanceiro.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  If DSMasterTemplate.DataSet.FieldByName('PDCPCSTATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);
end;

end.
