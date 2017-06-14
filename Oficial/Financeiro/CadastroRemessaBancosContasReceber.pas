unit CadastroRemessaBancosContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBActns, ActnList, ImgList, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, VarSys,FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroRemessaBancosContasReceber = class(TFormCadastroTEMPLATE)
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    SQLTemplateClienteLookUp: TStringField;
    SQLTemplateValorLookUp: TFloatField;
    SQLTemplateDataVenctoLookUp: TDateTimeField;
    SQLTemplateDataEmissaoLookUp: TDateTimeField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BtnContasReceber: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    SQLTemplateNotaFiscalLookUp: TStringField;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    IncluirTtulos1: TMenuItem;
    SQLTemplateRBCRA60STATUS: TStringField;
    SQLTemplateRBCRDSTATUS: TDateTimeField;
    SQLTemplateRMBCICOD: TIntegerField;
    SQLTemplateRMBCA13ID: TStringField;
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnContasReceberClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure IncluirTtulos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroRemessaBancosContasReceber: TFormCadastroRemessaBancosContasReceber;

implementation

uses CadastroContasReceber, UnitLibrary, DataModulo,
     TelaRemessaDocumentosReceber;

{$R *.dfm}

procedure TFormCadastroRemessaBancosContasReceber.DBEdit3KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then BtnContasReceber.Click;
end;

procedure TFormCadastroRemessaBancosContasReceber.BtnContasReceberClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CTRCA13ID');
  FieldOrigem := 'CTRCA13ID' ;
  CriaFormulario(TFormCadastroContasReceber, 'FormCadastroContasReceber',False,True,False,'') ;
end;

procedure TFormCadastroRemessaBancosContasReceber.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('CTRCA13ID').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('CONTASRECEBER',['CTRCA13ID'],[DataSet.FieldByName('CTRCA13ID').AsString],1) Then
        Begin
          DataSet.FieldByName('DataVenctoLookUp').AsVariant    := DM.SQLTemplate.FindField('CTRCDVENC').AsVariant;
          DataSet.FieldByName('DataEmissaoLookUp').AsVariant   := DM.SQLTemplate.FindField('CTRCDEMIS').AsVariant;
          DataSet.FieldByName('ValorLookUp').AsVariant         := DM.SQLTemplate.FindField('CTRCN2VLR').AsVariant;
          If DM.SQLTemplate.FindField('CLIEA13ID').AsVariant <> Null Then
            DataSet.FieldByName('ClienteLookUp').AsVariant       := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+DM.SQLTemplate.FindField('CLIEA13ID').asString+'"');
          If DM.SQLTemplate.FindField('NOFIA13ID').AsVariant <> Null Then
            DataSet.FieldByName('NotaFiscalLookUp').AsVariant    := SQLLocate('NOTAFISCAL','NOFIA13ID','SERIA5COD','"'+DM.SQLTemplate.FindField('NOFIA13ID').asString+'"') + '-' + SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"'+DM.SQLTemplate.FindField('NOFIA13ID').asString+'"');
        End
      Else
        Begin
          DataSet.FieldByName('DataVenctoLookUp').AsVariant    := Null;
          DataSet.FieldByName('DataEmissaoLookUp').AsVariant   := Null;
          DataSet.FieldByName('ValorLookUp').AsVariant         := Null;
          DataSet.FieldByName('NotaFiscalLookUp').AsVariant    := Null;
          DataSet.FieldByName('ClienteLookUp').AsVariant       := Null;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('DataVenctoLookUp').AsVariant    := Null;
      DataSet.FieldByName('DataEmissaoLookUp').AsVariant   := Null;
      DataSet.FieldByName('ValorLookUp').AsVariant         := Null;
      DataSet.FieldByName('ClienteLookUp').AsVariant       := Null;
    End;
end;

procedure TFormCadastroRemessaBancosContasReceber.IncluirTtulos1Click(
  Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormTelaRemessaDocumentosReceber,'FormTelaRemessaDocumentosReceber',False,False,False,'');
end;

procedure TFormCadastroRemessaBancosContasReceber.FormCreate(
  Sender: TObject);
begin
  inherited;
  TABELA := 'REMESSABANCOCONTASRECEBER';
end;

procedure TFormCadastroRemessaBancosContasReceber.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplate.FindField('RMBCA13ID').AsString  := SQLTemplate.DataSource.DataSet.FindField('RMBCA13ID').Value;
  SQLTemplate.FindField('RMBCICOD').AsString   := SQLTemplate.DataSource.DataSet.FindField('RMBCICOD').Value;
  SQLTemplateRBCRA60STATUS.asString            := 'Remetido';
  SQLTemplateRBCRDSTATUS.asDateTime            := SQLTemplate.DataSource.DataSet.FindField('RMBCDEMIS').Value;
end;

end.
