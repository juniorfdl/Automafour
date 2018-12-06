unit CadastroRepresentanteProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask, AdvPanel,
  Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, DBCtrls, RxDBComb,
  VarSys, FormResources, ToolEdit, RXDBCtrl, cxLookAndFeelPainters, cxControls,
  cxContainer, cxEdit, cxGroupBox, DBClient;

type
  TFormCadastroRepresentanteProduto = class(TFormCadastroTEMPLATE)
    SQLTemplateREPRICOD: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRSEA60NROSERIE: TStringField;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateNOCPA13ID: TStringField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLTemplateDATA_SAIDA: TDateTimeField;
    SQLTemplateDATE_ENTRADA: TDateTimeField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateSTATUS: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    EditProduto: TEdit;
    BtnProduto: TSpeedButton;
    RadioPesquisa: TRadioGroup;
    RxDBComboBox1: TRxDBComboBox;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label27: TLabel;
    DBEdit12: TDBEdit;
    Label30: TLabel;
    DBEdit13: TDBEdit;
    Label31: TLabel;
    DBEdit23: TDBEdit;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateReferenciaLookUp: TStringField;
    SQLTemplateCodAntigoLookup: TStringField;
    SQLTemplateNomeClienteLookUp: TStringField;
    SQLTemplateNomeFornecedorLookUp: TStringField;
    Label11: TLabel;
    DBDateEdit3: TDBDateEdit;
    SQLTemplateENTRADA_SAIDA: TStringField;
    SQLTemplateDATA_REGISTRO: TDateTimeField;
    grbEntrada: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    btnConsultaFornecedor: TSpeedButton;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    grbSaida: TcxGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    btnConsultaCliente: TSpeedButton;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    DBEditCod: TDBEdit;
    DBEdit17: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    btnAdicionaNumSerie: TSpeedButton;
    cdsSerie: TClientDataSet;
    cdsSerieNumeroSerie: TStringField;
    cdsSerieEmpresa: TIntegerField;
    cdsSerieProduto: TIntegerField;
    cdsSerieNotaFiscal: TStringField;
    cdsSerieNotaEntrada: TStringField;
    cdsSerieNome_Cliente: TStringField;
    cdsSerieData_Saida: TDateField;
    cdsSerieData_Entrada: TDateField;
    cdsSerieStatus: TStringField;
    cdsSerieData_Registro: TDateField;
    cdsSerieEntrada_Saida: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    procedure EditProdutoEnter(Sender: TObject);
    procedure EditProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnProdutoClick(Sender: TObject);
    procedure DBEditCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnConsultaClienteClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure btnConsultaFornecedorClick(Sender: TObject);
    procedure SQLTemplateENTRADA_SAIDAChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionaNumSerieClick(Sender: TObject);
    procedure GravarNumeroSeries;
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
  private
    Autenticado: Boolean;
    procedure prc_habilita_ES;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroRepresentanteProduto: TFormCadastroRepresentanteProduto;

implementation

uses
  SearchLibrary, TelaConsultaProduto, CadastroCliente, DataModulo,
  CadastroProdutos, TelaProdutoNumeroSerie, TelaInformaNumeroSerieProduto,
  TelaInformaNumeroSerieProdutoRepre, UnitLibrary, CadastroFornecedor;

{$R *.dfm}

procedure TFormCadastroRepresentanteProduto.EditProdutoEnter(Sender: TObject);
begin
  inherited;
  EditProduto.SelectAll;
end;

procedure TFormCadastroRepresentanteProduto.EditProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  Autenticado := True;
  if Key = VK_F2 then
    BtnProduto.Click;
  if Key = VK_RETURN then
  begin
    if (EditProduto.Text <> '') and (SQLTemplate.State in DSEditModes) then
    begin
      case RadioPesquisa.ItemIndex of
        0:
          begin
            FindProduct(EditProduto, SQLTemplate.FieldByName('PRODICOD'));
          end;
        1:
          begin
            SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorCodigoAntigo(EditProduto.Text);
          end;
        2:
          begin
            SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorReferencia(EditProduto.Text);
          end;
      end;
    end
    else
    begin
      ProdutoDescricao := '';
      FieldLookup := SQLTemplate.FieldByName('PRODICOD');
      FieldOrigem := 'PRODICOD';
      CriaFormulario(TFormTelaConsultaProduto, 'FormTelaConsultaProduto', False, True, True, '');
    end;
  end;
  if Key = VK_F3 then
  begin
    ProdutoDescricao := '';
    FieldLookup := SQLTemplate.FieldByName('PRODICOD');
    FieldOrigem := 'PRODICOD';
    CriaFormulario(TFormTelaConsultaProduto, 'FormTelaConsultaProduto', False, True, True, '');
  end;
  Autenticado := False;

end;

procedure TFormCadastroRepresentanteProduto.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto, 'FormCadastroProduto', False, True, False, '');
end;

procedure TFormCadastroRepresentanteProduto.DBEditCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) then
    btnConsultaCliente.Click;
end;

procedure TFormCadastroRepresentanteProduto.btnConsultaClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, True, False, '');
end;

procedure TFormCadastroRepresentanteProduto.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('CLIENTE', ['CLIEA13ID'], [SQLTemplateCLIEA13ID.asString], 1) then
      DataSet.FieldByName('NomeClienteLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant
    else
      DataSet.FieldByName('NomeClienteLookUp').AsVariant := '';
  end;
  if DataSet.FieldByName('FORNICOD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('FORNECEDOR', ['FORNICOD'], [SQLTemplateFORNICOD.asString], 1) then
      DataSet.FieldByName('NomeFornecedorLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA60RAZAOSOC').AsVariant
    else
      DataSet.FieldByName('NomeFornecedorLookUp').AsVariant := '';
  end;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('PRODUTO', ['PRODICOD'], [SQLTemplatePRODICOD.asString], 1) then
    begin
      DataSet.FieldByName('ProdutoLookUp').AsVariant := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
      DataSet.FieldByName('ReferenciaLookUp').AsVariant := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
      DataSet.FieldByName('CodAntigoLookup').AsVariant := DM.SQLTemplate.FindField('PRODICOD').AsVariant;
    end;
  end
  else
  begin
    DataSet.FieldByName('ProdutoLookUp').AsVariant := '';
    DataSet.FieldByName('ReferenciaLookUp').AsVariant := '';
    DataSet.FieldByName('CodAntigoLookup').AsVariant := '';
  end;

end;

procedure TFormCadastroRepresentanteProduto.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('REPRICOD').Value := DataSet.DataSource.DataSet.FindField('REPRICOD').Value;
  SQLTemplateSTATUS.AsString := 'D';
  SQLTemplateDATA_REGISTRO.AsDateTime := Now;
  SQLTemplateENTRADA_SAIDA.AsString := '';
  SQLTemplateEMPRICOD.AsInteger := StrToInt(EmpresaPadrao);
  cdsSerie.EmptyDataSet;
end;

procedure TFormCadastroRepresentanteProduto.btnConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('FORNICOD');
  FieldOrigem := 'FORNICOD';
  CriaFormulario(TFormCadastroFornecedor, 'FormCadastroFornecedor', False, True, False, '');
end;

procedure TFormCadastroRepresentanteProduto.SQLTemplateENTRADA_SAIDAChange(Sender: TField);
begin
  inherited;
  prc_habilita_ES;
end;

procedure TFormCadastroRepresentanteProduto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUTOREPRESENTANTE';
end;

procedure TFormCadastroRepresentanteProduto.prc_habilita_ES;
begin
  if SQLTemplateENTRADA_SAIDA.AsString = 'E' then
  begin
    grbEntrada.Enabled := True;
    grbSaida.Enabled := False;
    if SQLTemplate.State in [DsEdit, DsInsert] then
    begin
      SQLTemplateDATA_SAIDA.Clear;
      SQLTemplateCLIEA13ID.Clear;
      SQLTemplateNOFIA13ID.Clear;
    end;
  end
  else
  begin
    grbEntrada.Enabled := False;
    grbSaida.Enabled := True;
    if SQLTemplate.State in [DsEdit, DsInsert] then
    begin
      SQLTemplateDATE_ENTRADA.Clear;
      SQLTemplateFORNICOD.Clear;
      SQLTemplateNOCPA13ID.Clear;
    end;
  end;
end;

procedure TFormCadastroRepresentanteProduto.FormShow(Sender: TObject);
begin
  inherited;
  prc_habilita_ES
end;

procedure TFormCadastroRepresentanteProduto.btnAdicionaNumSerieClick(Sender: TObject);
var
  ProdutoComSerie, NumeroSerie: string;
  i: Integer;
begin                      
  inherited;
  if DBRadioGroup1.ItemIndex = 0 then
    SQLTemplateENTRADA_SAIDA.AsString := 'E';
  if DBRadioGroup1.ItemIndex = 1 then
    SQLTemplateENTRADA_SAIDA.AsString := 'S';
    ProdutoComSerie := DM.SQLlocate('produto', 'prodicod', 'PRODCTEMNROSERIE', SQLTemplatePRODICOD.AsString);
  if ProdutoComSerie = 'S' then
  begin
    if SQLTemplateENTRADA_SAIDA.AsString = '' then
    begin
      ShowMessage('Informe se o lançamento é entrada ou saída!');
      DBRadioGroup1.SetFocus;
      Abort;
    end;
    NumeroSerie := '';
    cdsSerie.EmptyDataSet;
    CodigoProduto := SQLTemplatePRODICOD.AsString;
    if SQLTemplateENTRADA_SAIDA.AsString = 'S' then
      Status := 'D'
    else
      Status := 'U';
    Application.CreateForm(TFormTelaInformaNumeroSerieProduto, FormTelaInformaNumeroSerieProduto);
    FormTelaInformaNumeroSerieProduto.Valida_Qtde := False;
    FormTelaInformaNumeroSerieProduto.ShowModal;
//    for i := 1 to FormTelaInformaNumeroSerieProduto.RXSerie.RecordCount do
//    begin
      if FormTelaInformaNumeroSerieProduto.ModalResult = MrOK then
      begin
        FormTelaInformaNumeroSerieProduto.RXSerie.First;
        if SQLTemplatePRSEA60NROSERIE.AsString = '' then
          SQLTemplatePRSEA60NROSERIE.AsString := FormTelaInformaNumeroSerieProduto.RXSerieNumeroSerie.Text;
        while not FormTelaInformaNumeroSerieProduto.RXSerie.Eof do
        begin
          cdsSerie.Insert;
          cdsSerieNumeroSerie.AsString := FormTelaInformaNumeroSerieProduto.RXSerieNumeroSerie.Text;
          cdsSerie.Post;
          FormTelaInformaNumeroSerieProduto.RXSerie.Next;
        end;
      end;
//    end;
    FormTelaInformaNumeroSerieProduto.Destroy;
  end
  else
    ShowMessage('Produto não possui número de série!');
end;

procedure TFormCadastroRepresentanteProduto.GravarNumeroSeries;
var
  vREPRICOD, vOperacaoEstoque : Integer;
  vStatus : string;
begin
  if SQLTemplateENTRADA_SAIDA.AsString = 'E' then
  begin
    vStatus := 'D';
    vOperacaoEstoque := 24;
  end
  else
  begin
    vStatus := 'U';
    vOperacaoEstoque := 25;
  end;
  if not cdsSerie.IsEmpty then
  begin
    vREPRICOD := SQLTemplateREPRICOD.asinteger; // + 1;
    cdsSerie.first;
    while not cdsSerie.Eof do
    begin
      dm.SQLUpdate.SQL.Clear;
      dm.SQLUpdate.SQL.Add('UPDATE OR INSERT INTO PRODUTOREPRESENTANTE (REPRICOD,PRODICOD,PRSEA60NROSERIE,NOFIA13ID,NOCPA13ID,FORNICOD,CLIEA13ID,CLIEA60RAZAOSOC,');
      DM.SQLUpdate.SQL.Add('DATA_SAIDA,DATE_ENTRADA,EMPRICOD,STATUS,ENTRADA_SAIDA,DATA_REGISTRO) values (');
      DM.SQLUpdate.SQL.Add(inttostr(vREPRICOD) + ',' + SQLTemplatePRODICOD.AsString + ',''' + cdsSerieNumeroSerie.AsString + ''',');
      if SQLTemplateNOFIA13ID.AsString <> '' then
        DM.SQLUpdate.SQL.Add('''' + SQLTemplateNOFIA13ID.AsString + ''',')
      else
        DM.SQLUpdate.SQL.Add('null,');
      if SQLTemplateNOCPA13ID.AsString <> '' then
        DM.SQLUpdate.SQL.Add('''' + SQLTemplateNOCPA13ID.AsString + ''',')
      else
        DM.SQLUpdate.SQL.Add('null,');
      if SQLTemplateFORNICOD.AsInteger > 0 then
        DM.SQLUpdate.SQL.Add('''' + SQLTemplateFORNICOD.AsString + ''',')
      else
        DM.SQLUpdate.SQL.Add('null,');
      if SQLTemplateCLIEA13ID.AsString <> '' then
        DM.SQLUpdate.SQL.Add('''' + SQLTemplateCLIEA13ID.AsString + ''',')
      else
        DM.SQLUpdate.SQL.Add('null,');
      if SQLTemplateCLIEA60RAZAOSOC.AsString <> '' then
        DM.SQLUpdate.SQL.Add('''' + SQLTemplateCLIEA60RAZAOSOC.AsString + ''',')
      else
        DM.SQLUpdate.SQL.Add('null,');
      if SQLTemplateDATA_SAIDA.AsDateTime > 10 then
        DM.SQLUpdate.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', SQLTemplateDATA_SAIDA.AsDateTime) + ''',')
      else
        DM.SQLUpdate.SQL.Add('null,');
      if SQLTemplateDATE_ENTRADA.AsDateTime > 10 then
        DM.SQLUpdate.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', SQLTemplateDATE_ENTRADA.AsDateTime) + ''',')
      else
        DM.SQLUpdate.SQL.Add('null,');
      DM.SQLUpdate.SQL.Add('''' + SQLTemplateEMPRICOD.AsString + ''',');
      DM.SQLUpdate.SQL.Add('''' + SQLTemplateSTATUS.AsString + ''',');
      DM.SQLUpdate.SQL.Add('''' + SQLTemplateENTRADA_SAIDA.AsString + ''',');
      DM.SQLUpdate.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', SQLTemplateDATA_REGISTRO.AsDateTime) + ''')');
      DM.SQLUpdate.ExecSQL;
      if cdsSerieNumeroSerie.AsString <> '' then
        GravaSaidaNroSerieProduto(cdsSerieNumeroSerie.AsString,
                                  SQLTemplatePRODICOD.AsString,
                                  vStatus,
                                  EmpresaPadrao,
                                  SQLTemplateCLIEA13ID.AsString,
                                  '',
                                  '',
                                  SQLTemplateNOFIA13ID.AsString, '');
          GravaMovimentoEstoque(DM.SQLProduto,
                                DM.SQLProdutoFilho,
                                DM.SQLProdutoSaldo,
                                StrToInt(EmpresaPadrao),
                                SQLTemplatePRODICOD.Value,
                                vOperacaoEstoque,
                                1.00,
                                SQLTemplateENTRADA_SAIDA.AsString,
                                FormatDateTime('mm/dd/yyyy', Now),
                                '0', //Valor
                                'MOVIMENTOSDIVERSOS',
                                'REP'+FormatDateTime('dd/mm/yy', Now),
                                '');

      cdsSerie.Next;
    end;
  end;
end;

procedure TFormCadastroRepresentanteProduto.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if (SQLTemplatePRSEA60NROSERIE.AsString = '') then
  begin
    ShowMessage('Nenhum número de série informado!');
    Abort;
  end;
  inherited;

end;

procedure TFormCadastroRepresentanteProduto.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  GravarNumeroSeries;
end;
end.

