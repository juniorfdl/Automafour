unit CadastroProdutoComposicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, FormResources, EDBNum,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroProdutoComposicao = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODN3QTDE: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label61: TLabel;
    DBEdit55: TDBEdit;
    Label62: TLabel;
    DBEdit56: TDBEdit;
    Label49: TLabel;
    DBEdit40: TDBEdit;
    Label47: TLabel;
    DBEdit38: TDBEdit;
    Label9: TLabel;
    DBEditProduto: TDBEdit;
    BtnProduto: TSpeedButton;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    SQLTemplatePRODICODFILHO: TIntegerField;
    SQLTemplateProdutoLookUp: TStringField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateValorVenda: TFloatField;
    SQLTemplateTotalItem: TFloatField;
    SQLTemplatePRODN3VLRTOTAL: TFloatField;
    SQLSum: TRxQuery;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    EditQuant: TEvDBNumEdit;
    BtnCalcula: TSpeedButton;
    MnCopiarComposicao: TMenuItem;
    SQLComposicao: TRxQuery;
    procedure FormCreate(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure DBEditProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCalculaClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure MnCopiarComposicaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoComposicao: TFormCadastroProdutoComposicao;

implementation

uses DataModulo, TelaConsultaProduto, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroProdutoComposicao.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTOCOMPOSICAO';
  if Dm.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger > 1 then
    begin
      case Dm.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger of
        0, 2 : begin
                 SQLTemplatePRODN3QTDE.EditFormat        := '0.00';
                 SQLTemplatePRODN3QTDE.DisplayFormat     := '#,##0.00';
                 EditQuant.Decimals  := 2;
               end;
        3 :    begin
                 SQLTemplatePRODN3QTDE.EditFormat        := '0.000';
                 SQLTemplatePRODN3QTDE.DisplayFormat     := '#,##0.000';
                 EditQuant.Decimals  := 3;
               end;
        4 :    begin
                 SQLTemplatePRODN3QTDE.EditFormat        := '0.0000';
                 SQLTemplatePRODN3QTDE.DisplayFormat     := '#,##0.0000';
                 EditQuant.Decimals  := 4;
               end;
        5 :    begin
                 SQLTemplatePRODN3QTDE.EditFormat        := '0.00000';
                 SQLTemplatePRODN3QTDE.DisplayFormat     := '#,##0.00000';
                 EditQuant.Decimals  := 5;
               end;
      end;
    end;
end;

procedure TFormCadastroProdutoComposicao.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICODFILHO');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,True,'');
end;

procedure TFormCadastroProdutoComposicao.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PRODICOD').Value   := DataSet.DataSource.DataSet.FindField('PRODICOD').Value;
  DataSet.FindField('PRODN3QTDE').Value := 0;
end;

procedure TFormCadastroProdutoComposicao.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('PRODICODFILHO').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICODFILHO').AsString],1) Then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
          DataSet.FieldByName('ValorVenda').AsVariant       := DM.SQLTemplate.FindField('PRODN3VLRVENDA').AsVariant;
        end
      Else
        DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;

    End
  Else
    DataSet.FieldByName('ProdutoLookup').AsVariant  := Null;
  if DataSet.RecordCount > 0 then
    begin
      DataSet.FieldByName('TotalItem').AsFloat := DataSet.FieldByName('PRODN3QTDE').AsFloat * DataSet.FieldByName('ValorVenda').AsFloat;
    end;

end;

procedure TFormCadastroProdutoComposicao.DBEditProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnProduto.Click;
end;

procedure TFormCadastroProdutoComposicao.BtnCalculaClick(Sender: TObject);
var
 Total : Double;
begin
  inherited;
  SQLTemplate.DisableControls;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      Total := Total + SQLTemplate.FieldByName('TotalItem').AsFloat;
      SQLTemplate.Next;
    end;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      SQLTemplate.Edit;
      SQLTemplatePRODN3VLRTOTAL.AsFloat := SQLTemplate.FieldByName('TotalItem').AsFloat;
      SQLTemplate.Post;
      SQLTemplate.Next;
    end;

  if Pergunta('NAO','O valor da composiçãoo foi alterado, deseja reajustar o produto principal?') then
    begin
      SQLTemplate.Close;
      SQLTemplate.Open;
      DSMasterTemplate.DataSet.Edit;
      DSMasterTemplate.DataSet.FieldByName('PRODN3VLRVENDA').AsFloat := Total;
      DSMasterTemplate.DataSet.Post;
    end;

  SQLTemplate.EnableControls;
end;

procedure TFormCadastroProdutoComposicao.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  if MatrizFilial <> 'M' then
    begin
      Informa('Uma filial não pode alterar composição!');
      Abort;
    end;

  inherited;
end;

procedure TFormCadastroProdutoComposicao.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  if MatrizFilial <> 'M' then
    begin
      Informa('Uma filial não pode alterar composição!');
      Abort;
    end;

  inherited;

end;

procedure TFormCadastroProdutoComposicao.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if MatrizFilial <> 'M' then
    begin
      Informa('Uma filial não pode alterar composição!');
      Abort;
    end;
  if SQLTemplatePRODN3QTDE.AsFloat <= 0 then
    begin
     Informa('A quantidade deve ser maior que ZERO!');
     Abort;
    end
  else
    begin
      SQLTemplatePRODN3VLRTOTAL.AsFloat := SQLTemplatePRODN3QTDE.AsFloat * SQLTemplateValorVenda.AsFloat;
    end;
end;

procedure TFormCadastroProdutoComposicao.DSTemplateStateChange(
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

procedure TFormCadastroProdutoComposicao.MnCopiarComposicaoClick(
  Sender: TObject);
var ProdutoPai : string;
begin
  inherited;
  ProdutoPai := '';
  ProdutoPai := InputBox('Procura Produto','Digite o Codigo do Produto!','');
  if ProdutoPai <> '' then
    begin
      sqltemplate.DisableControls;
      sqlcomposicao.Close;
      sqlcomposicao.macrobyname('MFiltro').Value := 'PRODICOD = ' + ProdutoPai ;
      sqlcomposicao.open;
      while not SQLComposicao.Eof do
        begin
          sqltemplate.Append;
          SQLTemplatePRODICOD.AsString      := DBEdit2.Text;
          SQLTemplatePRODICODFILHO.AsString := sqlcomposicao.fieldbyname('PRODICODFILHO').AsString;
          SQLTemplatePRODN3QTDE.AsString    := sqlcomposicao.fieldbyname('PRODN3QTDE').AsString;
          SQLTemplateREGISTRO.Value         := now;
          SQLTemplatePENDENTE.Value         := 'S';
          sqltemplate.post;
          SQLComposicao.Next;
        end;
      sqltemplate.Close;
      sqltemplate.Open;
      sqltemplate.EnableControls;
    end;
end;

end.
