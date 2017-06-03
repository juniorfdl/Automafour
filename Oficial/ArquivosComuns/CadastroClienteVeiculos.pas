 unit CadastroClienteVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroClienteVeiculos = class(TFormCadastroTEMPLATE)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    SQLEspecie: TRxQuery;
    RxDBComboBox2: TRxDBComboBox;
    SQLPlanosRecebimento: TRxQuery;
    SQLVerificaPlaca: TRxQuery;
    DBComboBox3: TRxDBComboBox;
    SQLPlanosRecebimentoPLRCICOD: TIntegerField;
    SQLPlanosRecebimentoPLRCA60DESCR: TStringField;
    SQLPlanosRecebimentoPLRCN2TXJURO: TFloatField;
    SQLPlanosRecebimentoPLRCN2TXMULTA: TFloatField;
    SQLPlanosRecebimentoPLRCN2TXCRED: TFloatField;
    SQLPlanosRecebimentoPLRCN2PERCDESC: TFloatField;
    SQLPlanosRecebimentoPLRCCDFIX: TStringField;
    SQLPlanosRecebimentoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanosRecebimentoPLRCDFIXDVENC: TIntegerField;
    SQLPlanosRecebimentoPLRCCDFIXENTR: TStringField;
    SQLPlanosRecebimentoPLRCN2PERCENTR: TFloatField;
    SQLPlanosRecebimentoPLRCN2DESC: TFloatField;
    SQLPlanosRecebimentoPLRCCATIVO: TStringField;
    SQLPlanosRecebimentoPENDENTE: TStringField;
    SQLPlanosRecebimentoREGISTRO: TDateTimeField;
    SQLPlanosRecebimentoPLRCN2PERCACRESC: TFloatField;
    SQLPlanosRecebimentoPLRCCIMPDESCRNF: TStringField;
    SQLPlanosRecebimentoPLRCN5FATOR: TFloatField;
    SQLPlanosRecebimentoPLRCN5FATORPARC: TFloatField;
    SQLPlanosRecebimentoPLRCFATCASH: TStringField;
    SQLPlanosRecebimentoPLRCN2PERCJURDIA: TFloatField;
    SQLTemplateVICLICODVEICULO: TIntegerField;
    SQLTemplateVICLA15PLACA: TStringField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateVICLA40MODELO: TStringField;
    SQLTemplateVOCLA20ESPECIE: TStringField;
    SQLTemplateVICLA1ATIVO: TStringField;
    SQLTemplateVICLDDATAINC: TDateTimeField;
    SQLTemplateVICLA10FROTA: TStringField;
    SQLTemplateVICLA15COR: TStringField;
    SQLTemplateVICLA1COMBUSTIVEL: TStringField;
    SQLTemplateVICLA25MARCA: TStringField;
    SQLTemplateVICLIPLRCPREFERENCIAL: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateVICLN2KMATUAL: TFloatField;
    SQLTemplateVICLA9ANOMODELO: TStringField;
    SQLTemplatePLANOPREFERENCIAL: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    SQLTemplateCOMBUSTIVEL: TStringField;
    dtsPlanosRecbto: TDataSource;
    SQLTemplateVEICA60PLRCOPCIONAIS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteVeiculos: TFormCadastroClienteVeiculos;

implementation

{$R *.dfm}

procedure TFormCadastroClienteVeiculos.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'VEICULOSCLIENTE';
end;

procedure TFormCadastroClienteVeiculos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('CLIEA13ID').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('CLIEA13ID').Value;
  TRxQuery(DataSet).FieldByname('VICLDDATAINC').asdateTime := now;
end;

procedure TFormCadastroClienteVeiculos.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
  SQLEspecie.Open;
  DBComboBox1.Items.Clear;
  While Not SQLEspecie.Eof do
  begin
    DBComboBox1.Items.Add(SQLEspecie.Fieldbyname('VOCLA20ESPECIE').AsString);
    SQLEspecie.Next;
  end;
  SQLEspecie.Close;
end;

procedure TFormCadastroClienteVeiculos.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if copy(SQLTemplateVICLA15PLACA.AsString,4,1) <> '-' then
    MessageDlg('Atenção... O 4º Digito da PLACA não é (-) hífem.'+#13+#10+''+#13+#10+'Se estiver digitando uma PLACA digite no formato XXX-9999', mtWarning, [mbOK], 0);
  SQLVerificaPlaca.Close;
  SQLVerificaPlaca.Prepare;
  SQLVerificaPlaca.ParamByName('xPlaca').asstring := DBEdit3.Text;
  SQLVerificaPlaca.Open;
  if (not SQLVerificaPlaca.IsEmpty) and ((SQLVerificaPlaca.FieldByName('CLIEA13ID').AsString <> SQLTemplateCLIEA13ID.Text) or (SQLTemplate.State in ([dsInsert]))) then
    ShowMessage('Esta placa já esta cadastrada para: '+ SQLVerificaPlaca.FieldbyName('cliea60razaosoc').asstring);
  SQLVerificaPlaca.Close;
end;

procedure TFormCadastroClienteVeiculos.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if dataset.FieldByName('VICLA1COMBUSTIVEL').asstring = '1' then
    DataSet.FieldByName('Combustivel').asstring := '1 - Alcool'
  else if dataset.FieldByName('VICLA1COMBUSTIVEL').asstring = '2' then
    DataSet.FieldByName('Combustivel').asstring := '2 - Diesel'
  else if dataset.FieldByName('VICLA1COMBUSTIVEL').asstring = '3' then
    DataSet.FieldByName('Combustivel').asstring := '3 - Flex'
  else if dataset.FieldByName('VICLA1COMBUSTIVEL').asstring = '4' then
    DataSet.FieldByName('Combustivel').asstring := '4 - Gasolina'
  else if dataset.FieldByName('VICLA1COMBUSTIVEL').asstring = '5' then
    DataSet.FieldByName('Combustivel').asstring := '5 - GNV'
  else
    DataSet.FieldByName('Combustivel').asstring := '...';
end;

end.


