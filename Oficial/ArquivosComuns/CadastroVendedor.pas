unit CadastroVendedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, RxDBComb, DBCtrls, DBActns, ActnList, ImgList, Db,
  DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl,VarSys,FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel ;

type
  TFormCadastroVendedor = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateVENDA60NOME: TStringField;
    SQLTemplateVENDN2COMISV: TFloatField;
    SQLTemplateVENDN2COMISP: TFloatField;
    SQLTemplateVENDCTIPCOMIS: TStringField;
    SQLTemplateVENDCCOMISACRESC: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateVENDA60EMAIL: TStringField;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LabelCgc_CPF: TLabel;
    LabelIE_RG: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit5: TDBEdit;
    DBEditIE_RG: TDBEdit;
    DBEditCgc_Cpf: TDBEdit;
    RxComboBoxFisJur: TRxDBComboBox;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    SQLTemplateVENDA5FISJURID: TStringField;
    SQLTemplateVENDA14CGC: TStringField;
    SQLTemplateVENDA20IE: TStringField;
    SQLTemplateVENDA11CPF: TStringField;
    SQLTemplateVENDA10RG: TStringField;
    SQLTemplateVENDA60CONTATO: TStringField;
    SQLTemplateVENDA15FONE1: TStringField;
    SQLTemplateVENDA15FONE2: TStringField;
    SQLTemplateVENDA15FAX: TStringField;
    SQLTemplateVENDA60END: TStringField;
    SQLTemplateVENDA60BAI: TStringField;
    SQLTemplateVENDA60CID: TStringField;
    SQLTemplateVENDA2UF: TStringField;
    SQLTemplateVENDA8CEP: TStringField;
    SQLTemplateBANCA5COD: TStringField;
    SQLTemplateVENDA5AGENCIA: TStringField;
    SQLTemplateVENDA10CONTA: TStringField;
    SQLTemplateVENDA60TITULAR: TStringField;
    SQLTemplateVENDDABERTCONTA: TDateTimeField;
    GroupBox7: TGroupBox;
    Label56: TLabel;
    AcessaBanco: TSpeedButton;
    Label58: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBDateEdit5: TDBDateEdit;
    SQLTemplateBancoLookUp: TStringField;
    SQLTemplateVENDA30CORE: TStringField;
    SQLTemplateVENDA60RAZAOSOCIAL: TStringField;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    SQLTemplateVENDA254OBS: TStringField;
    TblBanco: TTable;
    TblBancoBANCA5COD: TStringField;
    TblBancoBANCA60NOME: TStringField;
    SQLTemplateVENDN2PERCFIDEL: TFloatField;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    SQLTemplateVENDIDIASVALFIDEL: TIntegerField;
    SQLTemplateVENDN2PERCIRRF: TFloatField;
    Label17: TLabel;
    DBEditComissao: TDBEdit;
    ComboUF: TRxDBComboBox;
    SQLVendedorAux: TRxQuery;
    SQLTemplateVENDCATIVO: TStringField;
    RxDBComboBox3: TRxDBComboBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    SQLTemplateVENDA30SENHA: TStringField;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    SQLTemplateVENDN2FLEX: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure AcessaBancoClick(Sender: TObject);
    procedure DBEdit38KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVendedor: TFormCadastroVendedor;

implementation

uses CadastroBanco;

{$R *.DFM}

procedure TFormCadastroVendedor.FormCreate(Sender: TObject);
begin
  inherited ;
  TABELA := 'Vendedor' ;
end;

procedure TFormCadastroVendedor.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if ((Sender as TDataSource).DataSet <> Nil) and
     ((Sender as TDataSource).DataSet.Active) then
  begin
    if SQLTemplateVENDA5FISJURID.AsString <> '' then
      case SQLTemplateVENDA5FISJURID.AsString[1] of
        'F' :begin
               LabelCgc_CPF.Caption    := 'CPF' ;
               LabelIE_RG.Caption      := 'RG' ;
               DBEditCgc_Cpf.DataField := 'VENDA11CPF' ;
               DBEditIE_RG.DataField   := 'VENDA10RG' ;
             end ;
        'J' :begin
               LabelCgc_CPF.Caption    := 'CGC' ;
               LabelIE_RG.Caption      := 'Insc.Est.' ;
               DBEditCgc_Cpf.DataField := 'VENDA14CGC' ;
               DBEditIE_RG.DataField   := 'VENDA20IE' ;
             end ;
       end ;
  end ;
end;

procedure TFormCadastroVendedor.AcessaBancoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5COD');
  FieldOrigem := 'BANCA5COD' ;
  CriaFormulario(TFormCadastroBanco,'FormCadastroBanco', False,True,True,'Cliente ' + SQLTemplateVENDA60NOME.Value) ;
end;

procedure TFormCadastroVendedor.DBEdit38KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = VK_F2 Then
    AcessaBanco.Click;
end;

procedure TFormCadastroVendedor.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if SQLTemplateVENDICOD.AsString = '' then
    begin
      ShowMessage('Vendedor sem Código! Verifique!');
      dbedit1.SetFocus;
      Abort;
    end;

  if sqltemplate.State = dsinsert then
    begin
      SQLVendedorAux.Close;
      SQLVendedorAux.MacroByName('Cod').Value := 'VENDICOD = ' + SQLTemplateVENDICOD.AsString;
      SQLVendedorAux.Open;
      if not SQLVendedorAux.IsEmpty then
        begin
          ShowMessage('Já existe um Vendedor com este Código! Verifique!');
          Abort;
        end;
    end;
  inherited;
end;

end.
