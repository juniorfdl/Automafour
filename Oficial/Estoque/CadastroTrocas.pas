unit CadastroTrocas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit,
  VarSYS, FormResources, RXDBCtrl, RxDBComb, DBActns, ActnList, ImgList,
  RxLookup, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroTrocas = class(TFormCadastroTEMPLATE)
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateMOVDICOD: TIntegerField;
    SQLTemplateMOVDDMOVIMENTO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateMOVDA255OBS: TStringField;
    Label3: TLabel;
    DBEdit3: TDBDateEdit;
    Label4: TLabel;
    DBEdit4: TDBMemo;
    SQLTemplateMOVDCCONLUIDO: TStringField;
    ComboConcluido: TRxDBComboBox;
    Label5: TLabel;
    SQLItens: TRxQuery;
    SQLItensMOVDA13ID: TStringField;
    SQLItensMVDIIITEM: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensMVDIN3QTD: TFloatField;
    SQLItensLOTEA30NRO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    AcessaOperacaoEstoque: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SQLProdutoSerie: TRxQuery;
    SQLProdutoSeriePRODICOD: TIntegerField;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    SQLProdutoSeriePRSECSTATUS: TStringField;
    SQLProdutoSerieEMPRICOD: TIntegerField;
    SQLProdutoSerieEMPRICODDEST: TIntegerField;
    SQLProdutoSerieFORNICOD: TIntegerField;
    SQLProdutoSerieCLIEA13ID: TStringField;
    SQLProdutoSerieNOCPA13ID: TStringField;
    SQLProdutoSerieNOFIA13ID: TStringField;
    SQLProdutoSerieCUPOA13ID: TStringField;
    SQLProdutoSeriePDVDA13ID: TStringField;
    SQLProdutoSerieOSA13ID: TStringField;
    SQLProdutoSerieMOVDA13ID: TStringField;
    SQLProdutoSeriePENDENTE: TStringField;
    SQLProdutoSerieREGISTRO: TDateTimeField;
    ComboFornecedor: TRxDBLookupCombo;
    SQLTemplateMOVDCTROCA: TStringField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    SQLFornecedorFORNA60NOMEFANT: TStringField;
    SQLFornecedorTPFRICOD: TIntegerField;
    SQLFornecedorFORNA60CONTATO: TStringField;
    SQLFornecedorFORNCFISJURID: TStringField;
    SQLFornecedorFORNA14CGC: TStringField;
    SQLFornecedorFORNA20IE: TStringField;
    SQLFornecedorFORNA11CPF: TStringField;
    SQLFornecedorFORNA10RG: TStringField;
    SQLFornecedorFORNA60END: TStringField;
    SQLFornecedorFORNA60BAI: TStringField;
    SQLFornecedorFORNA60CID: TStringField;
    SQLFornecedorFORNA2UF: TStringField;
    SQLFornecedorFORNA8CEP: TStringField;
    SQLFornecedorFORNA15FONE1: TStringField;
    SQLFornecedorFORNA15FONE2: TStringField;
    SQLFornecedorFORNA15FAX: TStringField;
    SQLFornecedorFORNA60EMAIL: TStringField;
    SQLFornecedorFORNA60URL: TStringField;
    SQLFornecedorFORNTOBS: TStringField;
    SQLFornecedorPENDENTE: TStringField;
    SQLFornecedorREGISTRO: TDateTimeField;
    SQLFornecedorFORNA30CODCONTABIL: TStringField;
    SQLFornecedorPLCTA15CODDEBITO: TStringField;
    SQLFornecedorRAMOICOD: TIntegerField;
    SQLFornecedorSRAMICOD: TIntegerField;
    SQLFornecedorFORNA30LOCCATALOG: TStringField;
    SQLFornecedorFORNCTEMCATALOG: TStringField;
    SQLFornecedorFORNA15CODNOFORN: TStringField;
    SQLFornecedorFORNCPERMITETROCA: TStringField;
    SQLFornecedorFORNDCAD: TDateTimeField;
    SQLFornecedorREPRICOD: TIntegerField;
    SQLTemplateFornecedorRazao: TStringField;
    MnTrocas: TMenuItem;
    TblImpressao: TTable;
    TblImpressaoNumeroPedido: TStringField;
    TblImpressaoDataEmissaoPedido: TDateField;
    TblImpressaoNomeEmissor: TStringField;
    TblImpressaoEnderecoEmissor: TStringField;
    TblImpressaoBairroEmissor: TStringField;
    TblImpressaoCidadeEmissor: TStringField;
    TblImpressaoEstadoEmissor: TStringField;
    TblImpressaoCGCEmissor: TStringField;
    TblImpressaoFoneEmissor: TStringField;
    TblImpressaoFaxEmissor: TStringField;
    TblImpressaoIEEmissor: TStringField;
    TblImpressaoEmailEmissor: TStringField;
    TblImpressaoCepEmissor: TStringField;
    TblImpressaoCodigoFornecedor: TIntegerField;
    TblImpressaoNomeFornecedor: TStringField;
    TblImpressaoEnderecoFornecedor: TStringField;
    TblImpressaoBairroFornecedor: TStringField;
    TblImpressaoCidadeFornecedor: TStringField;
    TblImpressaoUFFornecedor: TStringField;
    TblImpressaoFoneFornecedor: TStringField;
    TblImpressaoFaxFornecedor: TStringField;
    TblImpressaoObservacaoPedido: TStringField;
    TblImpressaoPrevisaoEntregaPedido: TDateField;
    TblImpressaoCodigoProduto: TIntegerField;
    TblImpressaoReferenciaProduto: TStringField;
    TblImpressaoDescricaoProduto: TStringField;
    TblImpressaoMarcaProduto: TStringField;
    TblImpressaoCorProduto: TStringField;
    TblImpressaoTamanhoProduto: TStringField;
    TblImpressaoVlrIPIProduto: TFloatField;
    TblImpressaoQuantidadeProduto: TFloatField;
    TblImpressaoVlrUnitarioProduto: TFloatField;
    TblImpressaoVlrEmbalProduto: TFloatField;
    TblImpressaoVlrEncargos: TFloatField;
    TblImpressaoVlrFrete: TFloatField;
    TblImpressaoVlrDescPromo: TFloatField;
    TblImpressaoTipoFrete: TStringField;
    TblImpressaoNomeCompradorEmissor: TStringField;
    TblImpressaoNomeVendedorFornecedor: TStringField;
    TblImpressaoNomeTransportadora: TStringField;
    TblImpressaoVencimentos: TMemoField;
    TblImpressaoPlanoPgtoDescricao: TStringField;
    TblImpressaoUnidade: TStringField;
    TblImpressaoEmailFornecedor: TStringField;
    ImpTroca: TCrpe;
    SQLTrocaItem: TRxQuery;
    SQLTrocaItemMOVDA13ID: TStringField;
    SQLTrocaItemMVDIIITEM: TIntegerField;
    SQLTrocaItemPRODICOD: TIntegerField;
    SQLTrocaItemMVDIN3QTD: TFloatField;
    SQLTrocaItemLOTEA30NRO: TStringField;
    SQLTrocaItemMVDIN3VLRCUSTO: TFloatField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    ComboOpEst: TRxDBLookupCombo;
    SQLTemplateOPESICOD: TIntegerField;
    DSSQLOperacaoEstoque: TDataSource;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLTemplateMOVDCTROCASTAT: TStringField;
    Label8: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    MnTrocarStatusparaEnviadoaoFornecedor: TMenuItem;
    rocarStatusparaRecebidodoFornecedor1: TMenuItem;
    TblImpressaoOperacaoEstoque: TStringField;
    TblImpressaoMarca: TStringField;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure AcessaOperacaoEstoqueClick(Sender: TObject);
    procedure ButtonEmpresaClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure MnTrocasClick(Sender: TObject);
    procedure MnTrocarStatusparaEnviadoaoFornecedorClick(Sender: TObject);
    procedure rocarStatusparaRecebidodoFornecedor1Click(Sender: TObject);
  private
    { Private declarations }
    MovimentarEstoque, AbrirItens : boolean ;

  public
    { Public declarations }
  end;

var
  FormCadastroTrocas: TFormCadastroTrocas;

implementation

uses DataModulo,
     CadastroTrocasItem, UnitLibrary,
     TelaConsultaEmpresa, TelaConsultaOperacaoEstoque, CadastroFornecedor;

{$R *.DFM}

procedure TFormCadastroTrocas.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EMPRICOD').Value          := EmpresaPadrao;
  DataSet.FieldByName('MOVDDMOVIMENTO').Value    := Date;
  DataSet.FieldByName('MOVDCCONLUIDO').Value     := 'N';
  DataSet.FieldByName('USUAICOD').AsInteger      := UsuarioCorrente;
  DataSet.FieldByName('USUAA60LOGIN').AsString   := UsuarioAtualNome;
  DataSet.FieldByName('MOVDCTROCA').AsString     := 'S';
end;

procedure TFormCadastroTrocas.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLFornecedor.Open;
  SQLOperacaoEstoque.Open;
  Tabela := 'MOVIMENTODIVERSO';
end;

procedure TFormCadastroTrocas.Button3Click(
  Sender: TObject);
begin
  inherited;
  if (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroTrocasItem,'FormCadastroTrocasItem',True,False,True,'Movimentos de Troca Nº ' + SQLTemplateMOVDA13ID.Value);
    end;
end;

procedure TFormCadastroTrocas.SQLTemplateBeforePost(
  DataSet: TDataSet);
var  Usuario : Integer;
     InfoRetorno : TInfoRetornoUser;
begin
  inherited;
  Usuario := UsuarioCorrente;
  UsuarioCorrente := Usuario;
  MovimentarEstoque := false ;
  if (Dataset.State = dsEdit) and (Dataset.FieldByName('MOVDCCONLUIDO') .Value = 'S') then
    MovimentarEstoque := true ;
end;

procedure TFormCadastroTrocas.SQLTemplateAfterPost(
  DataSet: TDataSet);
var Tipo : string ;
begin
  inherited;
  if MovimentarEstoque then
    begin
      SQLItens.Close ;
      SQLItens.MacroByName('MFiltro').Value := 'MOVDA13ID = ''' + DataSet.FieldByName('MOVDA13ID').AsString + '''';
      SQLItens.Open ;

      if DataSet.FieldByName('OPESICOD').AsString <> '' then
        begin
          Tipo := SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCENTRADASAIDA', DataSet.FieldByName('OPESICOD').AsString);
          if Tipo = '' then
            begin
              Informa('Esta Operação de Estoque não está configurada para ENTRADA ou SAÍDA');
              SQLTemplate.Edit;
              SQLTemplateMOVDCCONLUIDO.AsString := 'N';
              SQLTemplate.Post;
              Exit;
            end;
        end;
      SQLItens.First;
      while not SQLItens.EOF do
        begin
          GravaMovimentoEstoque(DM.SQLProduto,
                                DM.SQLProdutoFilho,
                                DM.SQLProdutoSaldo,
                                SQLTemplateEMPRICOD.AsInteger,
                                SQLItensPRODICOD.Value,
                                DataSet.FieldByName('OPESICOD').AsInteger,
                                SQLItensMVDIN3QTD.Value,
                                Tipo,
                                FormatDateTime('mm/dd/yyyy', Now),
                                '0', //Valor
                                'MOVIMENTOSDIVERSOS',
                                SQLTemplateMOVDA13ID.AsString,
                                '');

          SQLItens.Next;
        end;
    end;
  if AbrirItens then
    begin
      Button3.Click;
      AbrirItens := False;
    end;
end;

procedure TFormCadastroTrocas.DBEdit2KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaOperacaoEstoque.Click;
end;

procedure TFormCadastroTrocas.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateMOVDCCONLUIDO.AsString = 'S' then
    begin
      Informa('Esta movimentação já foi concluída, portanto, não pode ser alterada !');
      Abort;
    end;
end;

procedure TFormCadastroTrocas.AcessaOperacaoEstoqueClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('OPESICOD');
  FieldOrigem := 'OPESICOD' ;
  CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor', False,True,True,'') ;
end;

procedure TFormCadastroTrocas.ButtonEmpresaClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD' ;
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa', False,True,True,'') ;
end;

procedure TFormCadastroTrocas.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  if SQLTemplateMOVDCCONLUIDO.AsString = 'S' then
    begin
      Informa('Esta movimentação já foi concluída, portanto, não pode ser excluida !');
      Abort;
    end;
 { if SQLTemplate.FieldByName('USUAICOD').AsInteger > 0 then
    if UsuarioCorrente <>  SQLTemplate.FieldByName('USUAICOD').AsInteger then
      begin
        Informa('Esta Operação foi iniciada por outro usuário, você não poderá modificar esta operação!');
        Abort;
      end;}
  inherited;
end;

procedure TFormCadastroTrocas.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  ComboConcluido.Enabled := not (DSTemplate.DataSet.State in [DSInsert]);
end;

procedure TFormCadastroTrocas.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  AbrirItens := True;
end;

procedure TFormCadastroTrocas.MnTrocasClick(Sender: TObject);
begin
  inherited;
  SQLTrocaItem.Close ;
  SQLTrocaItem.MacroByName('MFiltro').Value := 'MOVDA13ID = ''' + SQLTemplateMOVDA13ID.Value + '''' ;
  SQLTrocaItem.Open ;

  TblImpressao.Close ;
  if TblImpressao.Exists then
    TblImpressao.DeleteTable ;
  TblImpressao.CreateTable ;
  TblImpressao.Open ;

  SQLTrocaItem.First ;
  while not SQLTrocaItem.EOF do
    begin
      TblImpressao.Append ;
      TblImpressaoNumeroPedido.Value          := SQLTrocaItemMOVDA13ID.Value ;
      TblImpressaoDataEmissaoPedido.Value     := SQLTemplateMOVDDMOVIMENTO.Value ;
      TblImpressaoNomeEmissor.Value           := dm.SQLEmpresaEMPRA60RAZAOSOC.Value ;
      TblImpressaoCodigoFornecedor.Value      := SQLTemplateFORNICOD.Value ;
      TblImpressaoNomeFornecedor.Value        := SQLTemplateFornecedorRazao.Value ;
      TblImpressaoObservacaoPedido.Value      := SQLTemplateMOVDA255OBS.Value ;
      TblImpressaoOperacaoEstoque.Value       := ComboOpEst.DisplayValue ;
      TblImpressaoCodigoProduto.Value         := SQLTrocaItemPRODICOD.Value ;
      TblImpressaoReferenciaProduto.Value     := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',SQLTrocaItemPRODICOD.AsString) ;
      TblImpressaoDescricaoProduto.Value      := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLTrocaItemPRODICOD.AsString) ;
      TblImpressaoUnidade.Value               := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',
                                                 dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLTrocaItemPRODICOD.AsString)) ;

      TblImpressaoMarca.Value                 := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR', SQLLocate('PRODUTO','PRODICOD','MARCICOD',SQLTrocaItemPRODICOD.AsString));
      TblImpressaoQuantidadeProduto.Value     := SQLTrocaItemMVDIN3QTD.Value;
      TblImpressaoVlrEmbalProduto.Value       := SQLTrocaItemMVDIN3VLRCUSTO.Value ;

      TblImpressao.Post ;
      SQLTrocaItem.Next ;
    end ;
  ImpTroca.ReportName := DM.PathAplicacao + '\Troca\Troca.rpt' ;
  ImpTroca.Execute;
end;

procedure TFormCadastroTrocas.MnTrocarStatusparaEnviadoaoFornecedorClick(
  Sender: TObject);
begin
  inherited;
  try
    dm.SQLTemplate.Close;
    dm.SQLTemplate.SQL.Clear;
    dm.SQLTemplate.SQL.Add('Update MOVIMENTODIVERSO Set Pendente=''S'', MOVDCTROCASTAT = ''E'' where MOVDA13ID = '''+ SQLTemplateMOVDA13ID.Value+'''');
    dm.SQLTemplate.ExecSQL;
    ShowMessage('Operação realizada com sucesso!');
    SQLTemplate.Close;
  except
    Application.ProcessMessages;
    ShowMessage('Não foi possível marcar como Enviado ao Fornecedor!');
  end;
end;

procedure TFormCadastroTrocas.rocarStatusparaRecebidodoFornecedor1Click(
  Sender: TObject);
begin
  inherited;
  try
    dm.SQLTemplate.Close;
    dm.SQLTemplate.SQL.Clear;
    dm.SQLTemplate.SQL.Add('Update MOVIMENTODIVERSO Set Pendente=''S'', MOVDCTROCASTAT = ''R'' where MOVDA13ID = '''+ SQLTemplateMOVDA13ID.Value+'''');
    dm.SQLTemplate.ExecSQL;
    ShowMessage('Operação realizada com sucesso!');
    SQLTemplate.Close;
  except
    Application.ProcessMessages;
    ShowMessage('Não foi possível marcar como Recebido do Fornecedor!');
  end;
end;

end.
