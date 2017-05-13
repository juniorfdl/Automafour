unit CadastroTabelaPrecoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTabelaPrecoProduto = class(TFormCadastroTEMPLATE)
    SQLTemplateTPRCICOD: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateTPCPN3VLRVENDA: TFloatField;
    SQLTemplateTPCPN3MARGLUCR: TFloatField;
    SQLTemplateTPCPN3VLRVENDAPROM: TFloatField;
    SQLTemplateTPCPDINIPROMO: TDateTimeField;
    SQLTemplateTPCPDFIMPROMO: TDateTimeField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBDateEdit;
    DBEdit5: TDBDateEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit11: TDBEdit;
    SQLTemplateProdutoLookUp: TStringField;
    MnAssistente: TMenuItem;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplatePRODA60REFER: TStringField;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateTPCPN3VLRVENDAChange(Sender: TField);
    procedure SQLTemplateTPCPN3MARGLUCRChange(Sender: TField);
  private
    { Private declarations }
    AlterandoValores:Boolean;
  public
    { Public declarations }
  end;

var
  FormCadastroTabelaPrecoProduto: TFormCadastroTabelaPrecoProduto;

implementation

uses CadastroProdutos, DataModulo;

{$R *.dfm}

procedure TFormCadastroTabelaPrecoProduto.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='TABELAPRECOPRODUTO';
end;

procedure TFormCadastroTabelaPrecoProduto.SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant
      Else
        DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;
    End
  Else
    DataSet.FieldByName('ProdutoLookup').AsVariant  := Null;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('TPRCICOD').Value   := DataSet.DataSource.DataSet.FindField('TPRCICOD').Value;
  SQLTemplateTPCPN3MARGLUCR.asFloat     := 0;
  SQLTemplateTPCPN3VLRVENDA.asFloat     := 0;
  SQLTemplateTPCPN3VLRVENDAPROM.asFloat := 0;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplatePRODICODChange(
  Sender: TField);
begin
  inherited;
  If SQLTemplate.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').asString],1) Then
        Begin
          SQLTemplatePRODA60REFER.asVariant   := DM.SQLTemplate.FindField('PRODA60REFER').asVariant;
          SQLTemplateTPCPN3VLRVENDA.asVariant := DM.SQLTemplate.FindField('PRODN3VLRVENDA').asVariant;
          SQLTemplateTPCPN3MARGLUCR.asVariant := DM.SQLTemplate.FindField('PRODN3PERCMARGLUCR').asVariant;
        End;
    End;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateTPCPN3VLRVENDAChange(
  Sender: TField);
begin
  inherited;
  If AlterandoValores Then Exit;
  If SQLTemplate.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').asString],1) Then
        Begin
          AlterandoValores := True;
          If (DM.SQLConfigCompra.Fieldbyname('CFCOCTOTPRCVENPROD').Value='O') AND (DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat>0) Then
            Sender.DataSet.FindField('TPCPN3MARGLUCR').asFloat := ((Sender.AsFloat / DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat) - 1) * 100;
          If (DM.SQLConfigCompra.Fieldbyname('CFCOCTOTPRCVENPROD').Value='U') AND (Sender.DataSet.FindField('PRODN3VLRCUSTO').asFloat>0) Then
            Sender.DataSet.FindField('TPCPN3MARGLUCR').asFloat := ((Sender.AsFloat / DM.SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat) - 1) * 100;
          AlterandoValores := False;
        End;
    End;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateTPCPN3MARGLUCRChange(
  Sender: TField);
begin
  inherited;
  If AlterandoValores Then Exit;
  If SQLTemplate.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').asString],1) Then
        Begin
          AlterandoValores := True;
          If DM.SQLConfigCompra.Fieldbyname('CFCOCTOTPRCVENPROD').Value='O' Then
            Sender.DataSet.FindField('TPCPN3VLRVENDA').asFloat := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat * (1+(Sender.AsFloat/100));
          If DM.SQLConfigCompra.Fieldbyname('CFCOCTOTPRCVENPROD').Value='U' Then
            Sender.DataSet.FindField('TPCPN3VLRVENDA').asFloat := DM.SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat * (1+(Sender.AsFloat/100));
          AlterandoValores := False;
        End;
    End;
end;

end.
