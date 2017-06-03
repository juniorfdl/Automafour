unit CadastroVendedorComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, ToolEdit, RXDBCtrl, DBCtrls, VarSys,
  RxDBComb, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroVendedorComissao = class(TFormCadastroTEMPLATE)
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateVDCOICOD: TIntegerField;
    SQLTemplateVDCON2TOTVENDVISTA: TBCDField;
    SQLTemplateVDCON2TOTVENDPRAZO: TBCDField;
    SQLTemplateVDCOINROVEND: TIntegerField;
    SQLTemplateVDCON2VENDMEDIA: TBCDField;
    SQLTemplateVDCON3QTDVEND: TBCDField;
    SQLTemplateVDCON2VLRCOMISS: TBCDField;
    SQLTemplateVDCODEMIS: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    ComboVendedor: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEditVV: TDBEdit;
    Label4: TLabel;
    DBEditVP: TDBEdit;
    SQLTemplateVENDA60NOME: TStringField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateVDCOA5TIPODOC: TStringField;
    SQLTemplateVDCOCDEBCRED: TStringField;
    SQLTemplateVDCODESTORNO: TDateTimeField;
    SQLTemplateVDCON3VLRESTORNO: TBCDField;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    ComboCliente: TRxDBLookupCombo;
    Label7: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label8: TLabel;
    GroupCredito: TGroupBox;
    Label6: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateVDCON2PERCOMISSAO: TBCDField;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVendedorComissao: TFormCadastroVendedorComissao;

implementation

uses FormResources, CadastroCupom;

{$R *.dfm}

procedure TFormCadastroVendedorComissao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'VENDEDORCOMISSAO';
  if not SQLVendedor.Active then SQLVendedor.Open;
  if not SQLCliente.Active  then SQLCliente.Open;
end;

procedure TFormCadastroVendedorComissao.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateVDCOA5TIPODOC.AsString     := 'MN';
  SQLTemplateVDCON2TOTVENDVISTA.AsFloat := 0;
  SQLTemplateVDCON2TOTVENDPRAZO.AsFloat := 0;
  SQLTemplateVDCON2VLRCOMISS.AsFloat    := 0;
  SQLTemplateVDCON3VLRESTORNO.AsFloat   := 0;
end;

procedure TFormCadastroVendedorComissao.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  DBEditVV.Enabled     := SQLTemplateVDCOCDEBCRED.AsString = 'C';
  DBEditVP.Enabled     := SQLTemplateVDCOCDEBCRED.AsString = 'C';
end;

procedure TFormCadastroVendedorComissao.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateVDCOCDEBCRED.AsString = 'D' then
    begin
      SQLTemplateVDCON2VLRCOMISS.AsFloat := -SQLTemplateVDCON2VLRCOMISS.AsFloat;
    end;
end;

end.
