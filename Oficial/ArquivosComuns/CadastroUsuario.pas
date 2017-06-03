unit CadastroUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, RxDBComb, ppDB, ppDBPipe, ppDBBDE, ppBands, ppBarCod,
  ppPrnabl, ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel, VarSys, FormResources;

type
  TFormCadastroUsuario = class(TFormCadastroTEMPLATE)
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    SQLTemplateUSUAA5SENHA: TStringField;
    SQLTemplateUSUACVERDADCOMPRCLI: TStringField;
    SQLTemplateUSUACDESBLOQCLI: TStringField;
    SQLTemplateUSUAN2PERCDESC: TFloatField;
    SQLTemplateUSUACVENDCLIBLOQ: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    SQLTemplateUSUACCANCVENDA: TStringField;
    SQLTemplateUSUACEXCLCLI: TStringField;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    SQLTemplateUSUACCANCPREVENDA: TStringField;
    GroupPermissoes: TGroupBox;
    SQLTemplateUSUACLIBERACREDITO: TStringField;
    SQLTemplateUSUCALTERASLDINVENTARIO: TStringField;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    SQLTemplateUSUACEXCLDADOSTESO: TStringField;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateUSUACALTCAIXATES: TStringField;
    SQLTemplateUSUACEXCMOVBCO: TStringField;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    SQLTemplateUSUACALTVLRVENDA: TStringField;
    SQLTemplateUSUAA60EMAIL: TStringField;
    DBCheckBox13: TDBCheckBox;
    SQLTemplateUSUACBLOQCTRLG: TStringField;
    ComboUsuarioMaster: TRxDBComboBox;
    SQLTemplateUSUACUSERMASTER: TStringField;
    Label6: TLabel;
    DBCheckBox14: TDBCheckBox;
    SQLTemplateUSUACVERTODASEMPR: TStringField;
    SQLTemplateUSUACBXCPAGFIN: TStringField;
    SQLTemplateUSUACBXCRECFIN: TStringField;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    SQLTemplateUSUACVISULUCVEND: TStringField;
    SQLTemplateUSUCENCERRAMVTODVS: TStringField;
    DBCheckBox17: TDBCheckBox;
    SQLTemplateUSUCDESTRIMPFISC: TStringField;
    DBCheckBox18: TDBCheckBox;
    SQLTemplateUSUACLIBERASALDNEG: TStringField;
    DBCheckBox19: TDBCheckBox;
    SQLTemplateUSUACPERMITECONFIG: TStringField;
    SQLTemplateUSUACPERMINTEG: TStringField;
    SQLTemplateUSUACPERMVMOVCX: TStringField;
    SQLTemplateUSUACPERMVVENDAS: TStringField;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    SQLTemplateUSUACVRESFINFORN: TStringField;
    DBCheckBox24: TDBCheckBox;
    ppEtiqCdBarras: TppReport;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppDBText20: TppDBText;
    ppColumnFooterBand3: TppColumnFooterBand;
    Pipe: TppBDEPipeline;
    MnImprimeCrach: TMenuItem;
    ppLabel1: TppLabel;
    SQLTemplateUSUACPERMLEITX: TStringField;
    SQLTemplateUSUACPERMREDZ: TStringField;
    SQLTemplateUSUACPERMSANGRIA: TStringField;
    SQLTemplateUSUACPERMSUPRI: TStringField;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    SQLTemplateUSUACRESUMOFIN: TStringField;
    DBCheckBox29: TDBCheckBox;
    SQLTemplateUSUACPERMRESUCX: TStringField;
    DBCheckBox30: TDBCheckBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox31: TDBCheckBox;
    SQLTemplateUSUACVENDCLIBLOQCHQ: TStringField;
    DBCheckBox32: TDBCheckBox;
    SQLTemplateUSUACVENDCLIBLOQMOTIV: TStringField;
    DBCheckBox33: TDBCheckBox;
    SQLTemplateUSUACPVERCLICASH: TStringField;
    ppDBBarCode1: TppDBBarCode;
    MnCriarUsuarioNovocomDadosdoUsuarioAtual: TMenuItem;
    SQLEspelhoNovoLanc: TRxQuery;
    GroupBox1: TGroupBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    SQLTemplateUSUACPERMITEADM: TStringField;
    SQLTemplateUSUACPERMITEFAT: TStringField;
    SQLTemplateUSUACPERMITEFIN: TStringField;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    SQLTemplateUSUACPERMITECASH: TStringField;
    SQLTemplateUSUACPRODNOTFOUND: TStringField;
    DBCheckBox38: TDBCheckBox;
    SQLTemplateUSUACPLANOCOMSENHA: TStringField;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    SQLTemplateUSUACPERMITETROCA: TStringField;
    SQLTemplateUSUACTROCAQTDE: TStringField;
    DBCheckBox41: TDBCheckBox;
    DBEditEmpresa: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    SQLTemplateEMPRESA_ACESSO: TIntegerField;
    TblEmpresa: TTable;
    TblEmpresaEMPRICOD: TIntegerField;
    TblEmpresaEMPRA60RAZAOSOC: TStringField;
    TblEmpresaEMPRA60NOMEFANT: TStringField;
    SQLTemplateEMPRESALOOKUP: TStringField;
    RetornaEmpresa: TSpeedButton;
    SQLTemplateCANCMESA: TStringField;
    DBCheckBox42: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure MnImprimeCrachClick(Sender: TObject);
    procedure MnCriarUsuarioNovocomDadosdoUsuarioAtualClick(
      Sender: TObject);
    procedure RetornaEmpresaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

uses CadastroEmpresa;

{$R *.DFM}

procedure TFormCadastroUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'USUARIO';
end;

procedure TFormCadastroUsuario.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  IF SQLTemplateUSUAA60LOGIN.Value = '' Then
    begin
      beep;
      ShowMessage('O campo Nome é obrigatório!');
      Abort;
    end;
end;

procedure TFormCadastroUsuario.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateUSUACUSERMASTER.Value := 'N';
end;

procedure TFormCadastroUsuario.MnImprimeCrachClick(Sender: TObject);
begin
  inherited;
  ppEtiqCdBarras.Print;
end;

procedure TFormCadastroUsuario.MnCriarUsuarioNovocomDadosdoUsuarioAtualClick(
  Sender: TObject);
var i : integer;  
begin
  inherited;
  SQLEspelhoNovoLanc.Close ;
  SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'USUAICOD = ' + SQLTemplateUSUAICOD.AsString ;
  SQLEspelhoNovoLanc.Open ;

  SQLTemplate.Append ;
  for i := 0 to SQLEspelhoNovoLanc.FieldCount-1 do
    if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'USUAICOD') then
      begin
        try
          SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant ;
        except
          Application.ProcessMessages;
        end;
      end;
  SQLTemplateUSUAA60LOGIN.Value := '';
  SQLTemplateUSUAA5SENHA.Value  := '';
  SQLTemplateUSUAA60LOGIN.FocusControl ;
end;

procedure TFormCadastroUsuario.RetornaEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('EMPRESA_ACESSO');
  FieldOrigem := 'EMPRICOD' ;
  CriaFormulario(TFormCadastroEmpresa,'FormCadastroEmpresa',False,True,True,'');
end;

end.
