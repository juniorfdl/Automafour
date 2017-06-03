unit CadastroICMS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, RxDBComb, ToolEdit, CurrEdit, RXDBCtrl, EDBNum,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroICMS = class(TFormCadastroTemplate)
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplateICMSA60DESCR: TStringField;
    SQLTemplateICMSN2ALIQUOTA: TBCDField;
    SQLTemplateICMSA5TOTECF: TStringField;
    SQLTemplateICMSN2PERCSUBSTSAI: TBCDField;
    SQLTemplateICMSN2PERCSUBSTENT: TBCDField;
    SQLTemplateICMSICODSITTRIB: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateDECRICOD: TStringField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateICMSPOSALIQECF: TStringField;
    SQLTemplateICMSPOSMAPARESUMO: TIntegerField;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    SQLTemplateICMSN2REDBASEICMS: TBCDField;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    SQLTemplateICMSN2ICMSM1: TBCDField;
    Label68: TLabel;
    ComboSitTrib: TRxDBComboBox;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroICMS: TFormCadastroICMS;

implementation

uses UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormCadastroICMS.FormCreate(Sender: TObject);
var TipoRegime:String;
begin
  inherited;
  Tabela := 'ICMS' ;

  TipoRegime:= SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao);
  if (TipoRegime < '3') and (TipoRegime <> '') then
  begin
    ComboSitTrib.Items.Clear;
    ComboSitTrib.Values.Clear;
    ComboSitTrib.Items.Add('101 - Tributada pelo Simples Nacional com permissão de crédito. (v.2.0)');
    ComboSitTrib.Items.Add('102 - Tributada pelo Simples Nacional sem permissão de crédito.');
    ComboSitTrib.Items.Add('103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta.');
    ComboSitTrib.Items.Add('300 - Imune.');
    ComboSitTrib.Items.Add('400 - Não tributada pelo Simples Nacional (v.2.0)');
    ComboSitTrib.Items.Add('201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por Substituição Tributária');
    ComboSitTrib.Items.Add('202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária');
    ComboSitTrib.Items.Add('203 - Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária');
    ComboSitTrib.Items.Add('500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação');
    ComboSitTrib.Items.Add('900 - Outros');

    ComboSitTrib.Values.Add('101');
    ComboSitTrib.Values.Add('102');
    ComboSitTrib.Values.Add('103');
    ComboSitTrib.Values.Add('300');
    ComboSitTrib.Values.Add('400');
    ComboSitTrib.Values.Add('201');
    ComboSitTrib.Values.Add('202');
    ComboSitTrib.Values.Add('203');
    ComboSitTrib.Values.Add('500');
    ComboSitTrib.Values.Add('900');
  end else
  begin
    ComboSitTrib.Items.Clear;
    ComboSitTrib.Values.Clear;
    ComboSitTrib.Items.Add('00   - Tributada integralmente');
    ComboSitTrib.Items.Add('10   - Tributada e com cobrança do ICMS por substituição tributária');
    ComboSitTrib.Items.Add('20   - Com redução de base de cálculo');
    ComboSitTrib.Items.Add('30   - Isenta ou não tributada e com cobrança do ICMS por substituição tributária');
    ComboSitTrib.Items.Add('40   - Isenta');
    ComboSitTrib.Items.Add('41   - Não tributada');
    ComboSitTrib.Items.Add('50   - Suspensão');
    ComboSitTrib.Items.Add('51   - Diferimento');
    ComboSitTrib.Items.Add('60   - ICMS cobrado anteriormente por substituição tributária');
    ComboSitTrib.Items.Add('70   - Com redução de base de cálculo e cobrança do ICMS por substituição tributária');
    ComboSitTrib.Items.Add('90   - Outros');

    ComboSitTrib.Values.Add('0');
    ComboSitTrib.Values.Add('10');
    ComboSitTrib.Values.Add('20');
    ComboSitTrib.Values.Add('30');
    ComboSitTrib.Values.Add('40');
    ComboSitTrib.Values.Add('41');
    ComboSitTrib.Values.Add('50');
    ComboSitTrib.Values.Add('51');
    ComboSitTrib.Values.Add('60');
    ComboSitTrib.Values.Add('70');
    ComboSitTrib.Values.Add('90');
  end;
end;

procedure TFormCadastroICMS.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateICMSA60DESCR.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
  if SQLTemplateICMSN2ALIQUOTA.AsString = '' Then
    begin
      Beep ;
      Informa('O campo Alíquota deve ser preenchido!') ;
      Abort ;
    end;
    
end;

procedure TFormCadastroICMS.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  DM.zConsulta.Close;
  DM.zConsulta.SQL.Clear;
  DM.zConsulta.SQL.ADD('select prodicod from produto where icmsicod = '+SQLTemplateICMSICOD.AsString);
  DM.zConsulta.Open;
  if not DM.zConsulta.IsEmpty then
    begin
      ShowMessage('Existem Produtos usando a Aliquota Atual! Exclusão Cancelada!');
      abort;
    end;
  inherited;
end;

end.
