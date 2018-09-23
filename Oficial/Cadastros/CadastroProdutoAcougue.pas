unit CadastroProdutoAcougue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, AdvOfficeStatusBar,VarSys, Grids, DBGrids,
  DBCtrls, AdvOfficeStatusBarStylers, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, AdvPanel, ComCtrls, RXCtrls, Buttons, ExtCtrls,
  EDBNum, FormResources, UnitLibrary;

type
  TFormCadastroProdutoAcougue = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODICODFILHO: TIntegerField;
    SQLTemplatePERCENTUAL: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateProdutoLookUp: TStringField;
    Label9: TLabel;
    DBEditProduto: TDBEdit;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    EditQuant: TEvDBNumEdit;
    BtnProduto: TSpeedButton;
    SQLTemplateTotalPercentual: TFloatField;
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure BtnProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DBEditProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoAcougue: TFormCadastroProdutoAcougue;

implementation

uses DataModulo, TelaConsultaProduto;

{$R *.dfm}

procedure TFormCadastroProdutoAcougue.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('PRODICODFILHO').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICODFILHO').AsString],1) Then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
        end
      Else
        DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;

    End
  Else
    DataSet.FieldByName('ProdutoLookup').AsVariant  := Null;

end;

procedure TFormCadastroProdutoAcougue.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICODFILHO');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,True,'');
end;

procedure TFormCadastroProdutoAcougue.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTO_ACOUGUE';
end;

procedure TFormCadastroProdutoAcougue.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PRODICOD').Value   := DataSet.DataSource.DataSet.FindField('PRODICOD').Value;
  DataSet.FindField('PERCENTUAL').Value := 0;

end;

procedure TFormCadastroProdutoAcougue.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if MatrizFilial <> 'M' then
  begin
    Informa('Uma filial não pode alterar composição!');
    Abort;
  end;
  if SQLTemplatePERCENTUAL.AsFloat <= 0 then
  begin
    Informa('O percentual deve ser maior que ZERO!');
    Abort;
  end;
  {vPercentual := vPercentual + SQLTemplatePERCENTUAL.AsFloat;
  if vPercentual > 100 then
  begin
    Informa('Soma do percentual dos produtos ultrapassou 100%');
    Abort;
  end;}
end;

procedure TFormCadastroProdutoAcougue.DBEditProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnProduto.Click;
end;

procedure TFormCadastroProdutoAcougue.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if MatrizFilial <> 'M' then
    begin
      Informa('Uma filial não pode alterar produtos do açougue!');
      Abort;
    end;
end;

procedure TFormCadastroProdutoAcougue.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if MatrizFilial <> 'M' then
    begin
      Informa('Uma filial não pode alterar os produtos do açougue!');
      Abort;
    end;
end;

procedure TFormCadastroProdutoAcougue.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  if not (DSTemplate.DataSet.State in [DsInsert]) then
    begin
      DBEditProduto.Enabled := False;
      BtnProduto.Enabled    := False;
    end
  else
    begin
      DBEditProduto.Enabled := True;
      BtnProduto.Enabled    := True;
    end;
end;

end.
