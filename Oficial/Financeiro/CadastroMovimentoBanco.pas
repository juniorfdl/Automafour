unit CadastroMovimentoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, EDBNum, ToolEdit, RXDBCtrl,
  FormResources, VarSYS, UCrpe32, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel ;

type
  TFormCadastroMovimentoBanco = class(TFormCadastroTEMPLATE)
    SQLTemplateMVBCA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateMVBCICOD: TIntegerField;
    SQLTemplateMVBCDLANC: TDateTimeField;
    SQLTemplateBANCA5COD: TStringField;
    SQLTemplateCTCRICOD: TIntegerField;
    SQLTemplateMVBCA6NROCHQ: TStringField;
    SQLTemplateMVBCN2VLRDEB: TFloatField;
    SQLTemplateMVBCN2VLRCRED: TFloatField;
    SQLTemplateMVBCDCHQBOMPARA: TDateTimeField;
    SQLTemplateMVBCDCHQBAIXA: TDateTimeField;
    SQLTemplateMVBCA254HIST: TStringField;
    SQLTemplateMVBCA60FAVORECIDO: TStringField;
    SQLTemplateOPBCICOD: TIntegerField;
    SQLTemplateMVBCCALTSALD: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEditEmpresa: TDBEdit;
    RetornaEmpresa: TSpeedButton;
    DBEdit33: TDBEdit;
    LblValor: TLabel;
    DBEditValor: TEvDBNumEdit;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    DBEdit12: TDBDateEdit;
    DBDateEdit1: TDBDateEdit;
    Label11: TLabel;
    SQLTemplateEmpresaCalcField: TStringField;
    SQLTemplateBancoCalcField: TStringField;
    SQLTemplateTitularCalcField: TStringField;
    SQLTemplateOperacaoBancoCalcField: TStringField;
    SQLTemplateCOntaCorreneCalcField: TStringField;
    Label12: TLabel;
    DBDateLanc: TDBDateEdit;
    SQLContaCorrente: TRxQuery;
    SQLContaCorrenteCTCRICOD: TIntegerField;
    SQLContaCorrenteCTCRN2SALDOATUAL: TFloatField;
    DBEdit13: TDBMemo;
    Label7: TLabel;
    SQLTemplateContaCalcField: TStringField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateCTPGA13ID: TStringField;
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateCQEMA13ID: TStringField;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    SQLContaCorrenteCTCRDULTALTSALDO: TDateTimeField;
    Label6: TLabel;
    DBEditOperBanc: TDBEdit;
    RetornaOperBanc: TSpeedButton;
    DBEdit8: TDBEdit;
    DBEdit2: TDBEdit;
    RetornaPlanoContas: TSpeedButton;
    EditPlanoContas: TDBEdit;
    Label13: TLabel;
    Label3: TLabel;
    DBEditCC: TDBEdit;
    RetornaCC: TSpeedButton;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBEditEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaCCClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateOPBCICODChange(Sender: TField);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure RetornaOperBancClick(Sender: TObject);
    procedure DBEditOperBancKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaEmpresaClick(Sender: TObject);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure EditPlanoContasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DBEditCCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditValorExit(Sender: TObject);
    procedure SQLTemplateCTCRICODChange(Sender: TField);
  private
    { Private declarations }
    procedure TrocaCampoValor ;
  public
    { Public declarations }
    vSaldoContaCorrenteAtual : Double;
  end;

var
  FormCadastroMovimentoBanco: TFormCadastroMovimentoBanco;

implementation

uses CadastroOperacaoBanco,
  CadastroContaCorrente, UnitLibrary, TelaConsultaEmpresa, DataModulo,
  TelaConsultaPlanoContas;

{$R *.dfm}

procedure TFormCadastroMovimentoBanco.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'MOVIMENTOBANCO' ;
end;

procedure TFormCadastroMovimentoBanco.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateMVBCDLANC.Value     := DM.DataBaseSistema ;
  SQLTemplateMVBCN2VLRDEB.Value  := 0 ;
  SQLTemplateMVBCN2VLRCRED.Value := 0 ;

  LblValor.Caption := 'Valor' ;
  LblValor.Refresh ;
  DBEditValor.DataField := '' ;
end;

procedure TFormCadastroMovimentoBanco.DBEditEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaEmpresa.Click ;
end;

procedure TFormCadastroMovimentoBanco.RetornaCCClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CTCRICOD');
  FieldOrigem := 'CTCRICOD' ;
  CriaFormulario(TFormCadastroContaCorrente, 'FormCadastroContaCorrente',False,True,True,'');
end;

procedure TFormCadastroMovimentoBanco.SQLTemplateCalcFields(DataSet: TDataSet);
var
  Saldo : string ;
begin
  inherited;
  SQLTemplateBancoCalcField.AsString         := SQLLocate('BANCO', 'BANCA5COD', 'BANCA60NOME',     '"' + SQLLocate('CONTACORRENTE', 'CTCRICOD',  'BANCA5COD',  SQLTemplateCTCRICOD.AsString) + '"') ;
  SQLTemplateEmpresaCalcField.AsString       := SQLLocate('EMPRESA', 'EMPRICOD',   'EMPRA60RAZAOSOC', SQLTemplateEMPRICOD.AsString) ;
  SQLTemplateTitularCalcField.AsString       := SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRA60TITULAR',  SQLTemplateCTCRICOD.AsString) ;
  SQLTemplateOperacaoBancoCalcField.AsString := SQLLocate('OPERACAOBANCO', 'OPBCICOD',  'OPBCA60DESCR',    SQLTemplateOPBCICOD.AsString) ;
  Saldo := SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRN2SALDOATUAL',  SQLTemplateCTCRICOD.AsString) ;
  if Saldo = '' then
    Saldo := '0' ;
  SQLTemplateContaCorreneCalcField.AsString  := 'Agência: ' + SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRA15AGENCIA',  SQLTemplateCTCRICOD.AsString) +
                                                '   C.C.: ' + SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRA15NUMERO',  SQLTemplateCTCRICOD.AsString) +
                                                '   Saldo Atual: ' + FormatFloat('#,##0.00', StrToFloat(Saldo)) ;
  //PLANO CONTAS
   If DataSet.FieldByName('PLCTA15COD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15COD').AsString],1) Then
        Begin
          DataSet.FieldByName('ContaCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ContaCalcField').asString := MensagemLookUp ;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ContaCalcField').AsVariant  := Null;
    End;
end;

procedure TFormCadastroMovimentoBanco.TrocaCampoValor ;
var
  Tipo : string ;
begin
  Tipo := SQLLocate('OPERACAOBANCO', 'OPBCICOD', 'OPBCCTIPO', SQLTemplateOPBCICOD.AsString) ;
  if Tipo <> '' then
    case Tipo[1] of
      'C' : begin
              LblValor.Caption := 'Valor Crédito' ;
              LblValor.Refresh ;
              DBEditValor.DataField := 'MVBCN2VLRCRED' ;
            end ;
      'D' : begin
              LblValor.Caption := 'Valor Débito' ;
              LblValor.Refresh ;
              DBEditValor.DataField := 'MVBCN2VLRDEB' ;
            end ;
    end ;
end;


procedure TFormCadastroMovimentoBanco.SQLTemplateOPBCICODChange(
  Sender: TField);
begin
  inherited;
  TrocaCampoValor ;
end;

procedure TFormCadastroMovimentoBanco.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  TrocaCampoValor ;
end;

procedure TFormCadastroMovimentoBanco.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
var
  InfoRetorno : TInfoRetornoUser;
  Tipo : String;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACEXCMOVBCO',InfoRetorno) <> 'S' then
    begin
      if InfoRetorno.ModalResult <> MrCancel then
        Informa('Você não tem permissão para excluir movimentação bancária!');
      Abort;
      Exit;
    end
  else
    begin
      if (SQLLocate('OPERACAOBANCO', 'OPBCICOD', 'OPBCCALTSALDO', SQLTemplate.FieldByName('OPBCICOD').AsString) = 'S')
        and (SQLTemplate.State in [DsBrowse]) then
        begin
          SQLContaCorrente.Close;
          SQLContaCorrente.MacroByName('MFiltro').Value := 'CTCRICOD = ' + SQLTemplateCTCRICOD.AsString;
          SQLContaCorrente.Open;
          if not SQLContaCorrente.Eof then
            begin
              vSaldoContaCorrenteAtual := SaldoContaCorrente(SQLTemplateCTCRICOD.AsString,'', FormatDateTime('dd/mm/yyyy',DM.DataBaseSistema)) ;
              Tipo := SQLLocate('OPERACAOBANCO', 'OPBCICOD', 'OPBCCTIPO', SQLTemplateOPBCICOD.AsString);
              if Tipo <> '' then
                case Tipo[1] of
                  'C' : begin
                          SQLContaCorrente.Edit;
                          SQLContaCorrenteCTCRN2SALDOATUAL.Value      := vSaldoContaCorrenteAtual - SQLTemplateMVBCN2VLRCRED.Value;
                          SQLContaCorrenteCTCRDULTALTSALDO.AsDateTime := dm.DataBaseSistema;
                          SQLContaCorrente.Post;
                        end ;
                  'D' : begin
                          SQLContaCorrente.Edit;
                          SQLContaCorrenteCTCRN2SALDOATUAL.Value := vSaldoContaCorrenteAtual + SQLTemplateMVBCN2VLRDEB.Value;
                          SQLContaCorrenteCTCRDULTALTSALDO.AsDateTime := dm.DataBaseSistema;
                          SQLContaCorrente.Post;
                        end;
                end;
            end;
        end;
    end;
  inherited;
end;

procedure TFormCadastroMovimentoBanco.RetornaOperBancClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('OPBCICOD');
  FieldOrigem := 'OPBCICOD';
  CriaFormulario(TFormCadastroOperacaoBanco,'FormCadastroOperacaoBanco',False,True,True,'');
end;

procedure TFormCadastroMovimentoBanco.DBEditOperBancKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaOperBanc.Click;
end;

procedure TFormCadastroMovimentoBanco.RetornaEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,True,'');
end;

procedure TFormCadastroMovimentoBanco.RetornaPlanoContasClick(
  Sender: TObject);
var
  Tipo : String;
begin
  inherited;
  if (SQLTemplateOPBCICOD.AsString <> '') and (SQLTemplateOperacaoBancoCalcField.AsString <> 'Não Encontrado') then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
      FieldOrigem := 'PLCTA15COD';
      Tipo := SQLLocate('OPERACAOBANCO','OPBCICOD','OPBCCTIPO', SQLTemplateOPBCICOD.AsString);
      if Tipo <> '' then
        case Tipo[1] of
          'C' : TipoPlanoContas := 'C';
          'D' : TipoPlanoContas := 'D';
        end ;
      CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'Movimento Bancario');
    end
  else
    Informa('Você deve selecionar uma operação bancaria primeiramente!');
end;

procedure TFormCadastroMovimentoBanco.EditPlanoContasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click;
end;

procedure TFormCadastroMovimentoBanco.SQLTemplateBeforePost(
  DataSet: TDataSet);
var
  Tipo : string;
begin
  inherited;
  if (SQLLocate('OPERACAOBANCO', 'OPBCICOD', 'OPBCCALTSALDO', SQLTemplate.FieldByName('OPBCICOD').AsString) = 'S')
    and (SQLTemplate.State in [DsInsert]) then
    begin
      SQLContaCorrente.Close;
      SQLContaCorrente.MacroByName('MFiltro').Value := 'CTCRICOD = ' + SQLTemplateCTCRICOD.AsString;
      SQLContaCorrente.Open;
      if not SQLContaCorrente.Eof then
        begin
          vSaldoContaCorrenteAtual := SaldoContaCorrente(SQLTemplateCTCRICOD.AsString,'', FormatDateTime('dd/mm/yyyy',DM.DataBaseSistema)) ;
          Tipo := SQLLocate('OPERACAOBANCO', 'OPBCICOD', 'OPBCCTIPO', SQLTemplateOPBCICOD.AsString);
          if Tipo <> '' then
            case Tipo[1] of
              'C' : begin
                      SQLContaCorrente.Edit;
                      SQLContaCorrenteCTCRN2SALDOATUAL.Value      := vSaldoContaCorrenteAtual + SQLTemplateMVBCN2VLRCRED.Value;
                      SQLContaCorrenteCTCRDULTALTSALDO.AsDateTime := dm.DataBaseSistema;
                      SQLContaCorrente.Post;
                    end ;
              'D' : begin
                      SQLContaCorrente.Edit;
                      SQLContaCorrenteCTCRN2SALDOATUAL.Value      := vSaldoContaCorrenteAtual - SQLTemplateMVBCN2VLRDEB.Value;
                      SQLContaCorrenteCTCRDULTALTSALDO.AsDateTime := dm.DataBaseSistema;
                      SQLContaCorrente.Post;
                    end;
            end;
        end;
    end;
end;

procedure TFormCadastroMovimentoBanco.DBEditCCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaCC.Click;
end;

procedure TFormCadastroMovimentoBanco.DBEditValorExit(Sender: TObject);
begin
  inherited;
  SQLTemplatePLCTA15COD.Value := dm.SQLLocate('OPERACAOBANCO','OPBCICOD','PLCTA15COD',SQLTemplateOPBCICOD.AsString);
end;

procedure TFormCadastroMovimentoBanco.SQLTemplateCTCRICODChange(
  Sender: TField);
begin
  inherited;
  vSaldoContaCorrenteAtual := SaldoContaCorrente(SQLTemplateCTCRICOD.AsString,'', FormatDateTime('dd/mm/yyyy',DM.DataBaseSistema)) ;
end;

end.
