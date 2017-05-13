Unit CadastroCodigoFiscalOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroCodigoFiscalOperacao = class(TFormCadastroTEMPLATE)
    SQLTemplateCFOPA5COD: TStringField;
    SQLTemplateCFOPA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateCFOPCDESTVLRNTRIB: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    lblTipoCfop: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateCFOPA5CODChange(Sender: TField);
    procedure DBEdit1Change(Sender: TObject);
  private
  AlterouChave : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCodigoFiscalOperacao: TFormCadastroCodigoFiscalOperacao;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroCodigoFiscalOperacao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CFOP';
  AlterouChave := False;
end;

procedure TFormCadastroCodigoFiscalOperacao.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if AlterouChave then
{  if SQLLocate('CFOP','CFOPA5COD','CFOPA5COD','"' + SQLTemplateCFOPA5COD.AsString + '"') <> '' then
    begin
      ShowMessage('Atenção !  Codigo CFOP Já Cadastrado com a Descricao '+#13+#10+
      SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR','"' + SQLTemplateCFOPA5COD.AsString + '"')) ;
      Abort;
    end; }

end;

procedure TFormCadastroCodigoFiscalOperacao.SQLTemplateCFOPA5CODChange(
  Sender: TField);
begin
  inherited;
  if Copy(SQLTemplateCFOPA5COD.AsString,0,1) = '1' Then
    lblTipoCfop.caption := 'Operação de ENTRADA ou AQUISIÇÕES dentro do UF'
  Else if Copy(SQLTemplateCFOPA5COD.AsString,0,1) = '2' Then
    lblTipoCfop.caption := 'Operação de ENTRADA ou AQUISIÇÕES Fora do UF'
  Else if Copy(SQLTemplateCFOPA5COD.AsString,0,1) = '3' Then
    lblTipoCfop.caption := 'Operação de ENTRADA ou AQUISIÇÕES De Importações'
  Else if Copy(SQLTemplateCFOPA5COD.AsString,0,1) = '5' Then
    lblTipoCfop.caption := 'Operação de SAÍDAS ou PRESTAÇÕES DE SERVIÇO dentro do UF'
  Else if Copy(SQLTemplateCFOPA5COD.AsString,0,1) = '6' Then
    lblTipoCfop.caption := 'Operação de SAÍDAS ou PRESTAÇÕES DE SERVIÇO Fora do UF'
  Else if Copy(SQLTemplateCFOPA5COD.AsString,0,1) = '7' Then
    lblTipoCfop.caption := 'Operação de SAÍDAS ou PRESTAÇÕES DE SERVIÇO para o Exterior'
  Else if Copy(SQLTemplateCFOPA5COD.AsString,0,1) = '5' Then
    lblTipoCfop.caption := 'Operação de SAÍDAS ou PRESTAÇÕES DE SERVIÇO dentro do UF'
  Else if Copy(SQLTemplateCFOPA5COD.AsString,0,1) = '9' Then
    lblTipoCfop.caption := 'Nota Fiscal de Estorno - Favor Observar Procedimentos'
  Else
    lblTipoCfop.caption := 'CFOP Inválido!  Verifique.';

  AlterouChave := True;
end;

procedure TFormCadastroCodigoFiscalOperacao.DBEdit1Change(Sender: TObject);
begin
  inherited;
  SQLTemplateCFOPA5CODChange(SQLTemplateCFOPA5COD)
end;

end.
