unit uDlgBuscarProdutosBRT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, DB,
  DBClient, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtonEdit;

type
  TfDlgBuscarProdutosBRT = class(TForm)
    Panel1: TPanel;
    cmbSegmento: TComboBox;
    Label1: TLabel;
    edtEAN: TEdit;
    Label2: TLabel;
    edtNCM: TEdit;
    Label3: TLabel;
    edtNome: TEdit;
    Label4: TLabel;
    Button1: TButton;
    edtLimite: TdxSpinEdit;
    Label5: TLabel;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    cdsDadosNome: TStringField;
    cdsDadosNome_tipi: TStringField;
    cdsDadosEAN: TStringField;
    cdsDadosUnidade: TStringField;
    cdsDadosNCM: TStringField;
    cdsDadosEX: TStringField;
    cdsDadosCEST: TStringField;
    cdsDadosCST_ICMS: TStringField;
    cdsDadosCST_ICMS_DESCR: TStringField;
    cdsDadosCSOSN_ICMS: TStringField;
    cdsDadosCSOSN_ICMS_DESCR: TStringField;
    cdsDadosBASE_ICMS_VAREJO: TFloatField;
    cdsDadosALIQUOTA_ICMS_VAREJO: TFloatField;
    cdsDadosPERC_MVA_RS: TFloatField;
    cdsDadosPERC_MVA_4: TFloatField;
    cdsDadosPERC_MVA_7: TFloatField;
    cdsDadosPERC_MVA_OUTROS: TFloatField;
    cdsDadosBASE_ICMS: TFloatField;
    cdsDadosALIQUOTA_ICMS: TFloatField;
    cdsDadosBASE_LEGAL_ICMS: TStringField;
    cdsDadosCST_PIS: TStringField;
    cdsDadosCST_PIS_DESCR: TStringField;
    cdsDadosTIPO_CREDITO: TStringField;
    cdsDadosCST_COFINS: TStringField;
    cdsDadosCST_COFINS_DESCR: TStringField;
    cdsDadosBASE_PIS_COFINS: TFloatField;
    cdsDadosALIQUOTA_PIS_REAL: TFloatField;
    cdsDadosALIQUOTA_PIS_PRESUMIDO: TFloatField;
    cdsDadosALIQUOTA_COFINS_REAL: TFloatField;
    cdsDadosALIQUOTA_COFINS_PRESUMIDO: TFloatField;
    cdsDadosALIQUOTA_ICMS_ECF: TStringField;
    cdsDadosBASE_LEGAL_PIS_COFINS: TStringField;
    cdsDadosNATUREZA_OPERACAO: TStringField;
    cdsDadosFAR_REGISTRO: TStringField;
    cdsDadosFAR_GGREM: TStringField;
    cdsDadosFAR_FABRICANTE: TStringField;
    cdsDadosFAR_COMPOSICAO: TMemoField;
    cdsDadosFAR_PMF: TStringField;
    cdsDadosFAR_PMC: TFloatField;
    cdsDadosFAR_TIPO: TStringField;
    cdsDadosFAR_LISTA: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Nome_tipi: TcxGridDBColumn;
    cxGrid1DBTableView1EAN: TcxGridDBColumn;
    cxGrid1DBTableView1Unidade: TcxGridDBColumn;
    cxGrid1DBTableView1NCM: TcxGridDBColumn;
    cxGrid1DBTableView1EX: TcxGridDBColumn;
    cxGrid1DBTableView1CEST: TcxGridDBColumn;
    cxGrid1DBTableView1CST_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1CST_ICMS_DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1CSOSN_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1CSOSN_ICMS_DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1BASE_ICMS_VAREJO: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_ICMS_VAREJO: TcxGridDBColumn;
    cxGrid1DBTableView1PERC_MVA_RS: TcxGridDBColumn;
    cxGrid1DBTableView1PERC_MVA_4: TcxGridDBColumn;
    cxGrid1DBTableView1PERC_MVA_7: TcxGridDBColumn;
    cxGrid1DBTableView1PERC_MVA_OUTROS: TcxGridDBColumn;
    cxGrid1DBTableView1BASE_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1BASE_LEGAL_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1CST_PIS: TcxGridDBColumn;
    cxGrid1DBTableView1CST_PIS_DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_CREDITO: TcxGridDBColumn;
    cxGrid1DBTableView1CST_COFINS: TcxGridDBColumn;
    cxGrid1DBTableView1CST_COFINS_DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1BASE_PIS_COFINS: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_PIS_REAL: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_PIS_PRESUMIDO: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_COFINS_REAL: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_COFINS_PRESUMIDO: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_ICMS_ECF: TcxGridDBColumn;
    cxGrid1DBTableView1BASE_LEGAL_PIS_COFINS: TcxGridDBColumn;
    cxGrid1DBTableView1NATUREZA_OPERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1FAR_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1FAR_GGREM: TcxGridDBColumn;
    cxGrid1DBTableView1FAR_FABRICANTE: TcxGridDBColumn;
    cxGrid1DBTableView1FAR_COMPOSICAO: TcxGridDBColumn;
    cxGrid1DBTableView1FAR_PMF: TcxGridDBColumn;
    cxGrid1DBTableView1FAR_PMC: TcxGridDBColumn;
    cxGrid1DBTableView1FAR_TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1FAR_LISTA: TcxGridDBColumn;
    cdsDadosPRODICOD: TIntegerField;
    cxGrid1DBTableView1ColumnPRODICOD: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    ItemSelecionado:Boolean;
    class function BuscarDadosBRT:TClientDataSet;
  end;

var
  fDlgBuscarProdutosBRT: TfDlgBuscarProdutosBRT;

implementation

uses wsProdutos, UnitLibrary, VarSYS, InvokeRegistry, XSBuiltIns;

{$R *.dfm}

class function TfDlgBuscarProdutosBRT.BuscarDadosBRT: TClientDataSet;
begin
  inherited;
  if fDlgBuscarProdutosBRT = nil then
    fDlgBuscarProdutosBRT:= TfDlgBuscarProdutosBRT.Create(nil);

  fDlgBuscarProdutosBRT.ShowModal;

  if fDlgBuscarProdutosBRT.ItemSelecionado then
    Result := fDlgBuscarProdutosBRT.cdsDados
  else
    Result := nil;
end;

procedure TfDlgBuscarProdutosBRT.Button1Click(Sender: TObject);
var
  vwsProdutosSoap: wsProdutosSoap;
  vUF, vUSUARIO_BRT, vSENHA_BRT, vprodicod:String;
  vRet: ArrayOfProduto;
  i:Integer;
begin
  if cmbSegmento.ItemIndex = -1 then
  begin
    raise Exception.Create('Informar o Segmento!');
  end;

  vUSUARIO_BRT :=
  SQLLocate('EMPRESA', 'EMPRICOD', 'USUARIO_BRT', IntToStr(EmpresaCorrente));

  vSENHA_BRT :=
  SQLLocate('EMPRESA', 'EMPRICOD', 'SENHA_BRT', IntToStr(EmpresaCorrente));

  vUF :=
  SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF', IntToStr(EmpresaCorrente));

  cdsDados.Close;
  cdsDados.CreateDataSet;

  vwsProdutosSoap:= GetwsProdutosSoap;
  vRet := vwsProdutosSoap.retornarInformacoesProdutoV3(
    IntToStr(cmbSegmento.ItemIndex+1), vUSUARIO_BRT, vSENHA_BRT, edtEAN.Text, edtNCM.Text, edtNome.Text, vUF, edtLimite.text);

  for i:= Low(vRet) to High(vRet) do 
  begin
    cdsDados.Insert;

    if vRet[i].ean <> '' then
    begin
      vprodicod:= SQLLocate('PRODUTO', 'proda60codbar', 'prodicod', QuotedStr(vRet[i].ean));
      if vprodicod <> '' then
        cdsDadosPRODICOD.AsString := vprodicod;
    end;

    cdsDadosNATUREZA_OPERACAO.Value := vRet[i].natureza_operacao;
    cdsDadosNome.Value := vRet[i].nome;
    cdsDadosNome_tipi.Value := vRet[i].nome_tipi;
    cdsDadosEAN.Value := vRet[i].ean;
    cdsDadosUnidade.Value := vRet[i].unidade;
    cdsDadosNCM.Value := vRet[i].ncm;
    cdsDadosEX.Value := vRet[i].ex;
    cdsDadosCEST.Value := vRet[i].cest;
    cdsDadosCST_ICMS.Value := vRet[i].cst_icms;
    cdsDadosCST_ICMS_DESCR.Value := vRet[i].cst_icms_descr;
    cdsDadosCSOSN_ICMS.Value := vRet[i].csosn_icms;
    cdsDadosCSOSN_ICMS_DESCR.Value := vRet[i].csosn_icms_descr;
    cdsDadosBASE_ICMS_VAREJO.AsString := StringReplace(vRet[i].base_icms_varejo.DecimalString,'.',',',[]);
    cdsDadosALIQUOTA_ICMS_VAREJO.AsString := StringReplace(vRet[i].aliquota_icms_varejo.DecimalString,'.',',',[]);
    cdsDadosPERC_MVA_RS.AsString := StringReplace(vRet[i].perc_mva_rs.DecimalString,'.',',',[]);
    cdsDadosPERC_MVA_4.AsString := StringReplace(vRet[i].perc_mva_4.DecimalString,'.',',',[]);
    cdsDadosPERC_MVA_7.AsString := StringReplace(vRet[i].perc_mva_7.DecimalString,'.',',',[]);
    cdsDadosPERC_MVA_OUTROS.AsString := StringReplace(vRet[i].perc_mva_outros.DecimalString,'.',',',[]);
    cdsDadosBASE_ICMS.AsString := StringReplace(vRet[i].base_icms.DecimalString,'.',',',[]);
    cdsDadosALIQUOTA_ICMS.AsString := StringReplace(vRet[i].aliquota_icms.DecimalString,'.',',',[]);
    cdsDadosBASE_LEGAL_ICMS.Value := vRet[i].base_legal_icms;
    cdsDadosCST_PIS.Value := vRet[i].cst_pis;
    cdsDadosCST_PIS_DESCR.Value := vRet[i].cst_pis_descr;
    cdsDadosTIPO_CREDITO.Value := vRet[i].tipo_credito;
    cdsDadosCST_COFINS.Value := vRet[i].cst_cofins;
    cdsDadosCST_COFINS_DESCR.Value := vRet[i].cst_cofins_descr;
    cdsDadosBASE_PIS_COFINS.AsString := StringReplace(vRet[i].base_pis_cofins.DecimalString,'.',',',[]);
    cdsDadosALIQUOTA_PIS_REAL.AsString := StringReplace(vRet[i].aliquota_pis_real.DecimalString,'.',',',[]);
    cdsDadosALIQUOTA_PIS_PRESUMIDO.AsString  := StringReplace(vRet[i].aliquota_pis_presumido.DecimalString,'.',',',[]);
    cdsDadosALIQUOTA_COFINS_REAL.AsString := StringReplace(vRet[i].aliquota_cofins_real.DecimalString,'.',',',[]);
    cdsDadosALIQUOTA_COFINS_PRESUMIDO.AsString := StringReplace(vRet[i].aliquota_cofins_presumido.DecimalString,'.',',',[]);
    cdsDadosALIQUOTA_ICMS_ECF.AsString := StringReplace(vRet[i].aliquota_icms_ecf.DecimalString,'.',',',[]);
    cdsDadosBASE_LEGAL_PIS_COFINS.Value := vRet[i].base_legal_pis_cofins;
    cdsDadosFAR_REGISTRO.Value := vRet[i].far_registro;
    cdsDadosFAR_GGREM.Value := vRet[i].far_ggrem;
    cdsDadosFAR_FABRICANTE.Value := vRet[i].far_fabricante;
    cdsDadosFAR_COMPOSICAO.Value := vRet[i].far_composicao;
    cdsDadosFAR_PMF.Value := vRet[i].far_pmf;
    cdsDadosFAR_PMC.AsString := StringReplace(vRet[i].far_pmc.DecimalString,'.',',',[]);
    cdsDadosFAR_TIPO.Value := vRet[i].far_tipo;
    cdsDadosFAR_LISTA.Value := vRet[i].far_lista;
    cdsDados.Post;
  end;

end;

procedure TfDlgBuscarProdutosBRT.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  if cdsDados.IsEmpty then exit;
  
  if cdsDadosPRODICOD.Value > 0 then
  begin
    if not Pergunta('SIM', 'Existe um produto cadastrado para esse registro, deseja atualizar os dados?') then
      Abort;
  end;

  ItemSelecionado:= True;
  Close;
end;

procedure TfDlgBuscarProdutosBRT.FormShow(Sender: TObject);
begin
  ItemSelecionado := False;
end;

end.
