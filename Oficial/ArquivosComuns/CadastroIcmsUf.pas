unit CadastroIcmsUf;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, FormResources,
  VarSys, DBActns, ActnList, ImgList, RxDBComb, RxLookup, EDBNum,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;
type
  TFormCadastroIcmsUF = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateICMUA2UF: TStringField;
    SQLTemplateICMUN2ALIQUOTA: TBCDField;
    SQLTemplateICMSN2PERCSUBSTSAI: TBCDField;
    SQLICMSUFAux: TRxQuery;
    SQLICMSUFAuxICMUA2UF: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label2: TLabel;
    Label3: TLabel;
    SQLTemplateICMUA60DESCR: TStringField;
    SQLTemplateICMUA30NOMEESTADO: TStringField;
    SQLTemplateICMUICOD: TIntegerField;
    SQLTemplateICMUN3REDBASECALC: TBCDField;
    SQLTemplateICMUISITTRIB: TIntegerField;
    SQLTemplateICMUN3MVA: TBCDField;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    ComboSitTribFisica: TRxDBComboBox;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateICMUN2ALIQUOTAINTERNA: TBCDField;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    ComboSitTribJuridica: TRxDBComboBox;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateICMUISITTRIBJURIDICA: TIntegerField;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    btnClearProduto: TSpeedButton;
    btnClearSTFisica: TSpeedButton;
    btnClearSTJuridica: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ComboRegime: TRxDBComboBox;
    Label91: TLabel;
    ComboUFRes: TRxDBComboBox;
    RadioFisJur: TDBRadioGroup;
    SQLTemplateTIPOPESSOA: TStringField;
    SQLTemplateENQUADRAMENTO: TStringField;
    Label120: TLabel;
    ComboNCM: TRxDBLookupCombo;
    dsNCM: TDataSource;
    SQLNcm: TRxQuery;
    SQLNcmNCMICOD: TIntegerField;
    SQLNcmNCMA30CODIGO: TStringField;
    SQLNcmNCMA100DESCR: TStringField;
    SQLTemplateNCMA30CODIGO: TStringField;
    EvDBNumEdit1: TEvDBNumEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure RadioFisJurChange(Sender: TObject);
    procedure ComboUFResChange(Sender: TObject);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroIcmsUF: TFormCadastroIcmsUF;
implementation

uses DataModulo, CadastroICMS, UnitLibrary;

{$R *.DFM}

procedure TFormCadastroIcmsUF.FormCreate(Sender: TObject);
var TipoRegime : String;
begin
  inherited;
  Tabela := 'ICMSUF';
  SQLProduto.Open;
  SQLNcm.Open;

  TipoRegime:= SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao);
  if (TipoRegime < '3') and (TipoRegime <> '') then
  begin
    ComboSitTribFisica.Items.Clear;
    ComboSitTribFisica.Values.Clear;
    ComboSitTribFisica.Items.Add('101 - Tributada pelo Simples Nacional com permissão de crédito. (v.2.0)');
    ComboSitTribFisica.Items.Add('102 - Tributada pelo Simples Nacional sem permissão de crédito.');
    ComboSitTribFisica.Items.Add('103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta.');
    ComboSitTribFisica.Items.Add('300 - Imune.');
    ComboSitTribFisica.Items.Add('400 - Não tributada pelo Simples Nacional (v.2.0)');
    ComboSitTribFisica.Items.Add('201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por Substituição Tributária');
    ComboSitTribFisica.Items.Add('202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária');
    ComboSitTribFisica.Items.Add('203 - Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária');
    ComboSitTribFisica.Items.Add('500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação');
    ComboSitTribFisica.Items.Add('900 - Outros');

    ComboSitTribFisica.Values.Add('101');
    ComboSitTribFisica.Values.Add('102');
    ComboSitTribFisica.Values.Add('103');
    ComboSitTribFisica.Values.Add('300');
    ComboSitTribFisica.Values.Add('400');
    ComboSitTribFisica.Values.Add('201');
    ComboSitTribFisica.Values.Add('202');
    ComboSitTribFisica.Values.Add('203');
    ComboSitTribFisica.Values.Add('500');
    ComboSitTribFisica.Values.Add('900');

    ComboSitTribJuridica.Items.Clear;
    ComboSitTribJuridica.Values.Clear;
    ComboSitTribJuridica.Items.Add('101 - Tributada pelo Simples Nacional com permissão de crédito. (v.2.0)');
    ComboSitTribJuridica.Items.Add('102 - Tributada pelo Simples Nacional sem permissão de crédito.');
    ComboSitTribJuridica.Items.Add('103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta.');
    ComboSitTribJuridica.Items.Add('300 - Imune.');
    ComboSitTribJuridica.Items.Add('400 - Não tributada pelo Simples Nacional (v.2.0)');
    ComboSitTribJuridica.Items.Add('201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por Substituição Tributária');
    ComboSitTribJuridica.Items.Add('202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária');
    ComboSitTribJuridica.Items.Add('203 - Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária');
    ComboSitTribJuridica.Items.Add('500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação');
    ComboSitTribJuridica.Items.Add('900 - Outros');

    ComboSitTribJuridica.Values.Add('101');
    ComboSitTribJuridica.Values.Add('102');
    ComboSitTribJuridica.Values.Add('103');
    ComboSitTribJuridica.Values.Add('300');
    ComboSitTribJuridica.Values.Add('400');
    ComboSitTribJuridica.Values.Add('201');
    ComboSitTribJuridica.Values.Add('201');
    ComboSitTribJuridica.Values.Add('203');
    ComboSitTribJuridica.Values.Add('500');
    ComboSitTribJuridica.Values.Add('900');


  end else
  begin
    ComboSitTribFisica.Items.Clear;
    ComboSitTribFisica.Values.Clear;
    ComboSitTribFisica.Items.Add('00   - Tributada integralmente');
    ComboSitTribFisica.Items.Add('10   - Tributada e com cobrança do ICMS por substituição tributária');
    ComboSitTribFisica.Items.Add('20   - Com redução de base de cálculo');
    ComboSitTribFisica.Items.Add('30   - Isenta ou não tributada e com cobrança do ICMS por substituição tributária');
    ComboSitTribFisica.Items.Add('40   - Isenta');
    ComboSitTribFisica.Items.Add('41   - Não tributada');
    ComboSitTribFisica.Items.Add('50   - Suspensão');
    ComboSitTribFisica.Items.Add('51   - Diferimento');
    ComboSitTribFisica.Items.Add('60   - ICMS cobrado anteriormente por substituição tributária');
    ComboSitTribFisica.Items.Add('70   - Com redução de base de cálculo e cobrança do ICMS por substituição tributária');
    ComboSitTribFisica.Items.Add('90   - Outros');

    ComboSitTribFisica.Values.Add('0');
    ComboSitTribFisica.Values.Add('10');
    ComboSitTribFisica.Values.Add('20');
    ComboSitTribFisica.Values.Add('30');
    ComboSitTribFisica.Values.Add('40');
    ComboSitTribFisica.Values.Add('41');
    ComboSitTribFisica.Values.Add('50');
    ComboSitTribFisica.Values.Add('51');
    ComboSitTribFisica.Values.Add('60');
    ComboSitTribFisica.Values.Add('70');
    ComboSitTribFisica.Values.Add('90');

    ComboSitTribJuridica.Items.Clear;
    ComboSitTribJuridica.Values.Clear;
    ComboSitTribJuridica.Items.Add('00   - Tributada integralmente');
    ComboSitTribJuridica.Items.Add('10   - Tributada e com cobrança do ICMS por substituição tributária');
    ComboSitTribJuridica.Items.Add('20   - Com redução de base de cálculo');
    ComboSitTribJuridica.Items.Add('30   - Isenta ou não tributada e com cobrança do ICMS por substituição tributária');
    ComboSitTribJuridica.Items.Add('40   - Isenta');
    ComboSitTribJuridica.Items.Add('41   - Não tributada');
    ComboSitTribJuridica.Items.Add('50   - Suspensão');
    ComboSitTribJuridica.Items.Add('51   - Diferimento');
    ComboSitTribJuridica.Items.Add('60   - ICMS cobrado anteriormente por substituição tributária');
    ComboSitTribJuridica.Items.Add('70   - Com redução de base de cálculo e cobrança do ICMS por substituição tributária');
    ComboSitTribJuridica.Items.Add('90   - Outros');

    ComboSitTribJuridica.Values.Add('0');
    ComboSitTribJuridica.Values.Add('10');
    ComboSitTribJuridica.Values.Add('20');
    ComboSitTribJuridica.Values.Add('30');
    ComboSitTribJuridica.Values.Add('40');
    ComboSitTribJuridica.Values.Add('41');
    ComboSitTribJuridica.Values.Add('50');
    ComboSitTribJuridica.Values.Add('51');
    ComboSitTribJuridica.Values.Add('60');
    ComboSitTribJuridica.Values.Add('70');
    ComboSitTribJuridica.Values.Add('90');
  end;
end;

procedure TFormCadastroIcmsUF.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (SQLTemplatePRODICOD.Value > 0) and (SQLTemplateNCMA30CODIGO.AsString <> '') then
  begin
    Showmessage('Não é permitido cadastrar Codigo de Produto e Codigo NCM para a mesma regra tributária');
    Abort;
  end;

  if (SQLTemplateICMUA2UF.Value = '')  Then
    begin
      Beep ;
      ShowMessage('O campo UF deve ser preenchido!') ;
      Abort ;
    end;
  if (SQLTemplatePRODICOD.Value < 0)  Then
    begin
      Beep ;
      ShowMessage('O campo Cód. Produto Deve ser igual ou maior que Zero!') ;
      Abort ;
    end;
end;

procedure TFormCadastroIcmsUF.Button4Click(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsInsert,dsEdit]) then
    SQLTemplatePRODICOD.AsInteger := 0;
end;

procedure TFormCadastroIcmsUF.Button5Click(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsInsert,dsEdit]) then
    SQLTemplateICMUISITTRIB.Clear;
end;

procedure TFormCadastroIcmsUF.Button6Click(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsInsert,dsEdit]) then
    SQLTemplateICMUISITTRIBJURIDICA.Clear
end;

procedure TFormCadastroIcmsUF.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTIPOPESSOA.AsString            := 'A';
  SQLTemplatePRODICOD.AsInteger             := 0;
  SQLTemplateNCMA30CODIGO.AsString          := ' ';
  SQLTemplateICMUN2ALIQUOTA.AsInteger       := 0;
  SQLTemplateICMSN2PERCSUBSTSAI.AsInteger   := 0;
  SQLTemplateICMUN3REDBASECALC.AsInteger    := 0;
  SQLTemplateICMUN2ALIQUOTAINTERNA.AsInteger:= 0;
  SQLTemplateICMUN3MVA.AsInteger            := 0;

  RadioFisJurChange(RadioFisJur);
end;

procedure TFormCadastroIcmsUF.RadioFisJurChange(Sender: TObject);
begin
  inherited;
  if ((RadioFisJur.ItemIndex = 0) or (RadioFisJur.ItemIndex = 2)) and (SQLTemplate.State in ([dsInsert,dsEdit])) then
  begin
    ComboRegime.Enabled               := False;
    ComboSitTribFisica.Enabled        := True;
    if RadioFisJur.ItemIndex = 2 then
      ComboSitTribJuridica.Enabled      := True
    else begin
      ComboSitTribJuridica.Enabled      := False;
      btnClearSTJuridica.Click;
    end;
    SQLTemplateENQUADRAMENTO.AsString := 'A';
  end else
  begin
    ComboRegime.Enabled           := True;
    ComboSitTribJuridica.Enabled  := True;
    ComboSitTribFisica.Enabled    := False;
    btnClearSTFisica.Click
  end;
end;

procedure TFormCadastroIcmsUF.ComboUFResChange(Sender: TObject);
begin
  inherited;
  If SQLTemplate.State in ([dsInsert, dsEdit]) then
    if      ComboUFRes.Text = 'AC' then SQLTemplateICMUA30NOMEESTADO.AsString := 'ACRE'
    else if ComboUFRes.Text = 'AL' then SQLTemplateICMUA30NOMEESTADO.AsString := 'ALAGOAS'
    else if ComboUFRes.Text = 'AM' then SQLTemplateICMUA30NOMEESTADO.AsString := 'AMAZONAS'
    else if ComboUFRes.Text = 'AP' then SQLTemplateICMUA30NOMEESTADO.AsString := 'AMAPA'
    else if ComboUFRes.Text = 'BA' then SQLTemplateICMUA30NOMEESTADO.AsString := 'BAHIA'
    else if ComboUFRes.Text = 'CE' then SQLTemplateICMUA30NOMEESTADO.AsString := 'CEARA'
    else if ComboUFRes.Text = 'DF' then SQLTemplateICMUA30NOMEESTADO.AsString := 'DISTRITO FEDERAL'
    else if ComboUFRes.Text = 'ES' then SQLTemplateICMUA30NOMEESTADO.AsString := 'ESPIRITO SANTO'
    else if ComboUFRes.Text = 'GO' then SQLTemplateICMUA30NOMEESTADO.AsString := 'GOIAS'
    else if ComboUFRes.Text = 'MA' then SQLTemplateICMUA30NOMEESTADO.AsString := 'MARANHÃO'
    else if ComboUFRes.Text = 'MG' then SQLTemplateICMUA30NOMEESTADO.AsString := 'MINAS GERAIS'
    else if ComboUFRes.Text = 'MS' then SQLTemplateICMUA30NOMEESTADO.AsString := 'MATO GROSSO DO SUL'
    else if ComboUFRes.Text = 'PA' then SQLTemplateICMUA30NOMEESTADO.AsString := 'PARA'
    else if ComboUFRes.Text = 'PB' then SQLTemplateICMUA30NOMEESTADO.AsString := 'PARAIBA'
    else if ComboUFRes.Text = 'PE' then SQLTemplateICMUA30NOMEESTADO.AsString := 'PERNAMBUCO'
    else if ComboUFRes.Text = 'PI' then SQLTemplateICMUA30NOMEESTADO.AsString := 'PIAUI'
    else if ComboUFRes.Text = 'PR' then SQLTemplateICMUA30NOMEESTADO.AsString := 'PARANA'
    else if ComboUFRes.Text = 'MT' then SQLTemplateICMUA30NOMEESTADO.AsString := 'MATO GROSSO'
    else if ComboUFRes.Text = 'RJ' then SQLTemplateICMUA30NOMEESTADO.AsString := 'RIO DE JANEIRO'
    else if ComboUFRes.Text = 'RN' then SQLTemplateICMUA30NOMEESTADO.AsString := 'RIO GRANDE DO NORTE'
    else if ComboUFRes.Text = 'RO' then SQLTemplateICMUA30NOMEESTADO.AsString := 'RONDONIA'
    else if ComboUFRes.Text = 'RR' then SQLTemplateICMUA30NOMEESTADO.AsString := 'RORAIMA'
    else if ComboUFRes.Text = 'RS' then SQLTemplateICMUA30NOMEESTADO.AsString := 'RIO GRANDE DO SUL'
    else if ComboUFRes.Text = 'SC' then SQLTemplateICMUA30NOMEESTADO.AsString := 'SANTA CATARINA'
    else if ComboUFRes.Text = 'SE' then SQLTemplateICMUA30NOMEESTADO.AsString := 'SERGIPE'
    else if ComboUFRes.Text = 'SP' then SQLTemplateICMUA30NOMEESTADO.AsString := 'SAO PAULO'
    else if ComboUFRes.Text = 'TO' then SQLTemplateICMUA30NOMEESTADO.AsString := 'TOCANTINS'
    else if ComboUFRes.Text = 'EX' then SQLTemplateICMUA30NOMEESTADO.AsString := 'EXTERIOR';
end;

procedure TFormCadastroIcmsUF.SQLTemplatePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ShowMessage('Impossível Gravar Registro.... Provavel Falha: Registro Duplicado');
  Action := daAbort;
end;

end.
