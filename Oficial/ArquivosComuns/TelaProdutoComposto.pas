unit TelaProdutoComposto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, RxQuery, Mask, ToolEdit, CurrEdit, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaGeralTEMPLATE2 = class(TFormTelaGeralTEMPLATE)
    SQLTemplate: TRxQuery;
    DSTemplate: TDataSource;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODA30CODESTRUT: TStringField;
    SQLTemplatePRODA60CODBAR: TStringField;
    SQLTemplatePRODA15CODANT: TStringField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplatePRODA30ADESCRREDUZ: TStringField;
    SQLTemplatePRODA255DESCRTEC: TStringField;
    SQLTemplatePRODICODBALANCA: TIntegerField;
    SQLTemplatePRODA15APAVIM: TStringField;
    SQLTemplatePRODA15RUA: TStringField;
    SQLTemplatePRODA15PRATEL: TStringField;
    SQLTemplateCLFSICOD: TIntegerField;
    SQLTemplateMARCICOD: TIntegerField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGRTMICOD: TIntegerField;
    SQLTemplateGRUPICOD: TIntegerField;
    SQLTemplateSUBGICOD: TIntegerField;
    SQLTemplateVARIICOD: TIntegerField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplatePRODN3PESOBRUTO: TFloatField;
    SQLTemplatePRODN3PESOLIQ: TFloatField;
    SQLTemplatePRODN3CAPACEMBAL: TFloatField;
    SQLTemplatePRODDCAD: TDateTimeField;
    SQLTemplatePRODDULTALTER: TDateTimeField;
    SQLTemplatePRODN3VLRVENDA: TFloatField;
    SQLTemplatePRODN3VLRVENDAPROM: TFloatField;
    SQLTemplatePRODDINIPROMO: TDateTimeField;
    SQLTemplatePRODDFIMPROMO: TDateTimeField;
    SQLTemplatePRODN3VLRCOMPRA: TFloatField;
    SQLTemplatePRODN3VLRCUSTO: TFloatField;
    SQLTemplatePRODN3VLRCUSTOMED: TFloatField;
    SQLTemplatePRODN3PERCIPI: TFloatField;
    SQLTemplatePRODN3PERCMARGLUCR: TFloatField;
    SQLTemplatePRODCATIVO: TStringField;
    SQLTemplatePRODCSERVICO: TStringField;
    SQLTemplatePRODCGERACOMIS: TStringField;
    SQLTemplatePRODN2COMISVISTA: TFloatField;
    SQLTemplatePRODN2COMISPRAZO: TFloatField;
    SQLTemplatePRODDIMOBOLIZ: TDateTimeField;
    SQLTemplatePRODICODPAI: TIntegerField;
    SQLTemplatePRODCTIPOBAIXA: TStringField;
    SQLTemplatePRODN3QTDEBAIXA: TFloatField;
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplatePRODIORIGEM: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePRODDULTATUALIZ: TDateTimeField;
    PanelControle: TPanel;
    Label15: TLabel;
    EditQtdeBaixa: TCurrencyEdit;
    LabelNovo: TSpeedButton;
    LabelGravar: TSpeedButton;
    LabelCancelar: TSpeedButton;
    LabelExcluir: TSpeedButton;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    EditCodigo: TEdit;
    EditDesc: TEdit;
    UpdateSQLTemplate: TUpdateSQL;
    procedure DSTemplateStateChange(Sender: TObject);
    procedure LabelNovoClick(Sender: TObject);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure LabelCancelarClick(Sender: TObject);
    procedure LabelExcluirClick(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeralTEMPLATE2: TFormTelaGeralTEMPLATE2;

implementation

{$R *.dfm}

procedure TFormTelaGeralTEMPLATE2.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  LabelExcluir.Enabled := Not SQLTemplate.Eof;
end;

procedure TFormTelaGeralTEMPLATE2.LabelNovoClick(Sender: TObject);
begin
  inherited;
  PanelControle.Enabled :=True;
  LabelNovo.Enabled     :=False;
  LabelGravar.Enabled   :=True;
  LabelCancelar.Enabled :=True;
  LabelExcluir.Enabled  :=False;
end;

procedure TFormTelaGeralTEMPLATE2.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Not (Key in ['0'..'9']) and (Key<>CHR(8)) Then
    Key:=#0;
end;

procedure TFormTelaGeralTEMPLATE2.LabelCancelarClick(Sender: TObject);
begin
  inherited;
  PanelControle.Enabled :=False;
  ComboBaixa.ItemIndex  := -1;
  EditCodigo.Text       := '';
  EditDesc.Text         := '';
  EditQtdeBaixa.Value   := 0;
  LabelNovo.Enabled     :=True;
  LabelGravar.Enabled   :=False;
  LabelCancelar.Enabled :=False;
  LabelExcluir.Enabled := Not SQLTemplate.Eof;
end;

procedure TFormTelaGeralTEMPLATE2.LabelExcluirClick(Sender: TObject);
begin
  inherited;
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Text := 'UPDATE PRODUTO SET PRODICODPAI = NULL Where PRODICOD = ' + SQLTemplatePRODICOD.AsString;
  DM.SQLTemplate.SQL.ExecSQL;
  SQLTemplate.Close;
  SQLTemplate.Open;
  LabelExcluir.Enabled := Not SQLTemplate.Eof;
end;

procedure TFormTelaGeralTEMPLATE2.LabelGravarClick(Sender: TObject);
begin
  inherited;
  If EditCodigo.Text='' Then
    Begin
      ShowMessage('Selecione o Produto!');
      EditCodigo.SetFocus;
      Abort;
    End;
  If EditQtdeBaixa.Value=0 Then
    Begin
      ShowMessage('A Quantidade deve ser maior do que zero!');
      EditQtdeBaixa.SetFocus;
      Abort;
    End;
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Text := 'UPDATE PRODUTO SET PRODICODPAI = '+SQLTemplate.DataSource.DataSet.FindField('PRODICOD').asString+' Where PRODICOD = ' + EditCodigo.Text;
  DM.SQLTemplate.SQL.ExecSQL;
  SQLTemplate.Close;
  SQLTemplate.Open;
  LabelExcluir.Enabled := Not SQLTemplate.Eof;
end;

end.

