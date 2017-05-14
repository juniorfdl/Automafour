unit CadastroProfissional;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, RxDBComb, DBCtrls, DBActns, ActnList, ImgList, Db,
  DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl,VarSys,FormResources,
  RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel ;

type
  TFormCadastroProfissional = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateVENDA60NOME: TStringField;
    SQLTemplateVENDN2COMISV: TBCDField;
    SQLTemplateVENDN2COMISP: TBCDField;
    SQLTemplateVENDCTIPCOMIS: TStringField;
    SQLTemplateVENDCCOMISACRESC: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateVENDA60EMAIL: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
    DBMemo1: TDBMemo;
    Label15: TLabel;
    SQLTemplateVENDA254OBS: TStringField;
    TblBanco: TTable;
    TblBancoBANCA5COD: TStringField;
    TblBancoBANCA60NOME: TStringField;
    SQLTemplateVENDN2PERCFIDEL: TBCDField;
    SQLTemplateVENDIDIASVALFIDEL: TIntegerField;
    SQLTemplateVENDN2PERCIRRF: TBCDField;
    Label17: TLabel;
    DBEditComissao: TDBEdit;
    ComboUF: TRxDBComboBox;
    SQLTemplateESPEICOD: TIntegerField;
    SQLEspecialidade: TRxQuery;
    SQLEspecialidadeESPEICOD: TIntegerField;
    SQLEspecialidadeESPEA60DESCR: TStringField;
    SQLEspecialidadeESPEN3VLRCONSULTA: TBCDField;
    ComboEspecialidade: TRxDBLookupCombo;
    Label8: TLabel;
    DSSQLEspecialidade: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure AcessaBancoClick(Sender: TObject);
    procedure DBEdit38KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProfissional: TFormCadastroProfissional;

implementation

uses CadastroBanco;

{$R *.DFM}

procedure TFormCadastroProfissional.FormCreate(Sender: TObject);
begin
  inherited ;
  TABELA := 'Vendedor' ;
  SQLEspecialidade.Open;
end;

procedure TFormCadastroProfissional.AcessaBancoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5COD');
  FieldOrigem := 'BANCA5COD' ;
  CriaFormulario(TFormCadastroBanco,'FormCadastroBanco', False,True,True,'Cliente ' + SQLTemplateVENDA60NOME.Value) ;
end;

procedure TFormCadastroProfissional.DBEdit38KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = VK_F2 Then
    AcessaBanco.Click;
end;

end.
