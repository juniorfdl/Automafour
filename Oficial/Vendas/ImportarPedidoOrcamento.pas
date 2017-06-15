unit ImportarPedidoOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, RXCtrls, DB, MemTable, DBTables,
  RxQuery, StdCtrls, RxLookup, Mask, ToolEdit, Buttons, UCrpe32, RxDBComb;

type
  TFormTelaImportarPedidoOrcamento = class(TForm)
    LblNomeSistema: TRxLabel;
    TblMemPedidoOrcamento: TMemoryTable;
    TblMemPedidoOrcamentoContador: TAutoIncField;
    TblMemPedidoOrcamentoTERMICOD: TIntegerField;
    TblMemPedidoOrcamentoCLIEA13ID: TStringField;
    TblMemPedidoOrcamentoClienteNome: TStringField;
    TblMemPedidoOrcamentoPLRCICOD: TIntegerField;
    TblMemPedidoOrcamentoPlanoNome: TStringField;
    TblMemPedidoOrcamentoVENDICOD: TIntegerField;
    TblMemPedidoOrcamentoTerminal: TStringField;
    DSTblMemPedidoOrcamento: TDataSource;
    TblMemPedidoOrcamentoPDVDA13ID: TStringField;
    TblMemPedidoOrcamentoPDVDCMARCADO: TBooleanField;
    TblMemPedidoOrcamentoPDVDN3VALOR: TFloatField;
    Label1: TLabel;
    DBGridLista: TDBGrid;
    EntradaDados: TEdit;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Label7: TLabel;
    DataEmissaoNF: TDateEdit;
    ComboSerie: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    ComboOperacaoEstoque: TRxDBLookupCombo;
    SQLNotaFiscal: TRxQuery;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaFiscalNOFIICOD: TIntegerField;
    SQLNotaFiscalEMPRICODDEST: TIntegerField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalNOFICSTATUS: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalCFOPA5COD: TStringField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalNOFIN2BASCALCICMS: TFloatField;
    SQLNotaFiscalNOFIN2VLRICMS: TFloatField;
    SQLNotaFiscalNOFIN2BASCALCSUBS: TFloatField;
    SQLNotaFiscalNOFIN2BASCALCCIPI: TFloatField;
    SQLNotaFiscalNOFIN2VLRIPI: TFloatField;
    SQLNotaFiscalNOFIN2VLRDESC: TFloatField;
    SQLNotaFiscalNOFIN2VLRFRETE: TFloatField;
    SQLNotaFiscalNOFIN2VLRSEGURO: TFloatField;
    SQLNotaFiscalNOFIN2VLROUTRASDESP: TFloatField;
    SQLNotaFiscalNOFIN2VLRSERVICO: TFloatField;
    SQLNotaFiscalNOFIN2VLRISSQN: TFloatField;
    SQLNotaFiscalNOFIN2VLRPRODUTO: TFloatField;
    SQLNotaFiscalNOFIN2VLRNOTA: TFloatField;
    SQLNotaFiscalNOFIA255OBS: TStringField;
    SQLNotaFiscalNOFICFRETEPORCONTA: TStringField;
    SQLNotaFiscalTRANICOD: TIntegerField;
    SQLNotaFiscalNOFIN3QUANT: TFloatField;
    SQLNotaFiscalNOFIA15MARCA: TStringField;
    SQLNotaFiscalNOFIN3PESBRUT: TFloatField;
    SQLNotaFiscalNOFIN3PESLIQ: TFloatField;
    SQLNotaFiscalNOFIA8PLACAVEIC: TStringField;
    SQLNotaFiscalPLRCICOD: TIntegerField;
    SQLNotaFiscalPLCTA15COD: TStringField;
    SQLNotaFiscalPENDENTE: TStringField;
    SQLNotaFiscalREGISTRO: TDateTimeField;
    SQLNotaFiscalNOFIN2VLRDESCPROM: TFloatField;
    SQLNotaFiscalNOFIINROTALAO: TIntegerField;
    SQLNotaFiscalPDVDA13ID: TStringField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLNotaFiscalPDVDA60OBS: TStringField;
    SQLNotaFiscalNOFIA20ESPECIE: TStringField;
    SQLNotaFiscalNOFIA30COMPRADOR: TStringField;
    SQLNotaFiscalNOFIA30NROPEDCOMP: TStringField;
    SQLNotaFiscalNOFIN2VLRICMSFRETE: TFloatField;
    SQLNotaFiscalNOFIN2VLRSUBS: TFloatField;
    SQLNotaFiscalCUPOA13ID: TStringField;
    SQLNotaFiscalNOFIA13IDCONSIGNADA: TStringField;
    SQLNotaFiscalAVALA13ID: TStringField;
    SQLNotaFiscalCUPOA13IDCUPNEG: TStringField;
    SQLNotaFiscalNOFIDCANCEL: TDateTimeField;
    SQLNotaFiscalPLCTA15CODCRED: TStringField;
    SQLNotaFiscalPLCTA15CODDEB: TStringField;
    SQLNotaFiscalUSUAICOD: TIntegerField;
    SQLNotaFiscalUSUAA60LOGIN: TStringField;
    SQLNotaFiscalROTAICOD: TIntegerField;
    SQLNotaFiscalNOFIAOBSCORPONF: TStringField;
    SQLNotaFiscalVEICA13ID: TStringField;
    SQLNotaFiscalNOFICEXPCONTABIL: TStringField;
    SQLNotaFiscalNOFIDSAIDAENTRADA: TDateTimeField;
    SQLNotaFiscalItem: TRxQuery;
    SQLNotaFiscalItemNOFIA13ID: TStringField;
    SQLNotaFiscalItemNFITIITEM: TIntegerField;
    SQLNotaFiscalItemPRODICOD: TIntegerField;
    SQLNotaFiscalItemNFITN3QUANT: TFloatField;
    SQLNotaFiscalItemNFITN2VLRUNIT: TFloatField;
    SQLNotaFiscalItemNFITN2PERCDESC: TFloatField;
    SQLNotaFiscalItemNFITN2VLRDESC: TFloatField;
    SQLNotaFiscalItemNFITN2PERCICMS: TFloatField;
    SQLNotaFiscalItemNFITN2BASEICMS: TFloatField;
    SQLNotaFiscalItemNFITN2VLRICMS: TFloatField;
    SQLNotaFiscalItemNFITN2PERCSUBS: TFloatField;
    SQLNotaFiscalItemNFITN2BASESUBS: TFloatField;
    SQLNotaFiscalItemNFITN2VLRSUBS: TFloatField;
    SQLNotaFiscalItemNFITN2PERCIPI: TFloatField;
    SQLNotaFiscalItemNFITN2VLRIPI: TFloatField;
    SQLNotaFiscalItemNFITN2PERCISSQN: TFloatField;
    SQLNotaFiscalItemNFITN2VLRISSQN: TFloatField;
    SQLNotaFiscalItemNFITN2VLRFRETE: TFloatField;
    SQLNotaFiscalItemNFITN2VLRLUCRO: TFloatField;
    SQLNotaFiscalItemPENDENTE: TStringField;
    SQLNotaFiscalItemREGISTRO: TDateTimeField;
    SQLNotaFiscalItemNFITN2PERCREDUCAO: TFloatField;
    SQLNotaFiscalItemNFITN3TOTVEND: TFloatField;
    SQLNotaFiscalItemPDVDA13ID: TStringField;
    SQLNotaFiscalItemPVITIITEM: TIntegerField;
    SQLNotaFiscalItemNFITN3QUANTVEND: TFloatField;
    SQLNotaFiscalItemNFITN2PERCCOMIS: TFloatField;
    SQLNotaFiscalItemCPITICPOS: TIntegerField;
    SQLNotaFiscalItemCUPOA13ID: TStringField;
    SQLNotaFiscalItemLOTEA30NRO: TStringField;
    SQLNotaFiscalItemNFITA254OBS: TStringField;
    SQLNotaFiscalItemCalculaIPI: TStringField;
    SQLNotaFiscalItemCalculaICMS: TStringField;
    DSSQLSerie: TDataSource;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSerieSERIINRONF: TIntegerField;
    SQLSerieEMPRICOD: TIntegerField;
    SQLSerieREGISTRO: TDateTimeField;
    SQLSeriePENDENTE: TStringField;
    SQLIcmsUF: TRxQuery;
    DSSQLOperacaoEstoque: TDataSource;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueSERIA5COD: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaoEstoquePENDENTE: TStringField;
    SQLOperacaoEstoqueREGISTRO: TDateTimeField;
    SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaoEstoquePDVDA13ID: TStringField;
    SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField;
    SQLOperacaoEstoqueACUMICOD: TIntegerField;
    SQLOperacaoEstoquePLCTA15CODCRED: TStringField;
    SQLOperacaoEstoquePLCTA15CODDEB: TStringField;
    BTGerarNF: TBitBtn;
    SQLPedido: TRxQuery;
    DSPedido: TDataSource;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLTransportadoraTRANA60END: TStringField;
    SQLTransportadoraTRANA60BAI: TStringField;
    SQLTransportadoraTRANA60CID: TStringField;
    SQLTransportadoraTRANA8CEP: TStringField;
    SQLTransportadoraTRANA2UF: TStringField;
    SQLTransportadoraTRANA14CGC: TStringField;
    SQLTransportadoraTRANA15IE: TStringField;
    SQLVeiculo: TRxQuery;
    SQLVeiculoVEICA13ID: TStringField;
    SQLVeiculoEMPRICOD: TIntegerField;
    SQLVeiculoTERMICOD: TIntegerField;
    SQLVeiculoVEICICOD: TIntegerField;
    SQLVeiculoVEICA7PLACA: TStringField;
    SQLVeiculoVEICA2UFPLACA: TStringField;
    SQLVeiculoVEICA60DESCR: TStringField;
    SQLVeiculoVEICA3OMARCA: TStringField;
    SQLVeiculoVEICA3OMOTORISTA: TStringField;
    SQLVeiculoVEICA3OMOTOCPF: TStringField;
    SQLVeiculoVEICN3PESOSUPORTA: TFloatField;
    SQLVeiculoTRANICOD: TIntegerField;
    SQLVeiculoPENDENTE: TStringField;
    SQLVeiculoREGISTRO: TDateTimeField;
    SQLNotaFiscalTransportadoraLookup: TStringField;
    DSSQLTransportadora: TDataSource;
    SQLNotaFiscalTransportadoraCGCLookUp: TStringField;
    SQLNotaFiscalTransportadoraEnderecoLookUp: TStringField;
    SQLNotaFiscalTransportadoraCidadeLookUp: TStringField;
    SQLNotaFiscalTransportadoraEstadoLookUp: TStringField;
    SQLNotaFiscalTransportadoraIELookUp: TStringField;
    TblMemPedidoOrcamentoVlrFrete: TFloatField;
    EditNroNF: TEdit;
    Label4: TLabel;
    SQLNotaFiscalCUPOCTIPOPADRAO: TStringField;
    Label5: TLabel;
    ComboTipoVenda: TComboBox;
    Label6: TLabel;
    SQLNotaFiscalCFOPA5CODAUX: TStringField;
    SQLCFOPAUX: TRxQuery;
    DSSQLCFOPAUX: TDataSource;
    SQLCFOPAUXCFOPA5COD: TStringField;
    SQLCFOPAUXCFOPA60DESCR: TStringField;
    SQLCFOPAUXCFOPCVENDA: TStringField;
    SQLCFOPAUXPENDENTE: TStringField;
    SQLCFOPAUXREGISTRO: TDateTimeField;
    SQLCFOPAUXCFOPCDESTVLRNTRIB: TStringField;
    ComboCFOPAux: TRxDBLookupCombo;
    Label8: TLabel;
    EditPlacaVeiculo: TEdit;
    EditEstado: TEdit;
    Label9: TLabel;
    TblMemPedidoOrcamentoVendedor: TStringField;
    TblMemPedidoOrcamentoDESCTOTAL: TFloatField;
    procedure ImportaItensPedidoVenda;
    procedure ImportaContasReceber;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BTGerarNFClick(Sender: TObject);
    procedure SQLNotaFiscalBeforePost(DataSet: TDataSet);
    procedure ComboSerieChange(Sender: TObject);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    procedure SaveBoolean(Grid : TDBGrid) ;
  public
    ExistePedidoOrcamentoSelecionado : Boolean;
    UFEmpresa, UFCliente, IDNotaAtual : String;
    TotalPedidos, Reducao, TotBaseCalcICMS, TotVlrICMS, TotBaseCalcICMSSubst, DescPromPerc,
    TotVlrICMSSubst, TotVlrISSQN, AliquotaISSQN, PesoTotalBruto, PesoTotalLiq, QtdeTotal : Double;
    DataDifPedidoNota : TDate;
    NroUltItemNFAtual : integer;
    { Public declarations }
  end;

var
  FormTelaImportarPedidoOrcamento: TFormTelaImportarPedidoOrcamento;

implementation

uses TelaItens, DataModulo, UnitLibrary, UnitCheckoutLibrary,
  DataModuloTemplate, ExtensoLib;

{$R *.dfm}

procedure TFormTelaImportarPedidoOrcamento.FormCreate(Sender: TObject);
begin
  SQLSerie.Close;
  SQLSerie.MacroByName('Empresa').Value := 'EMPRICOD = ' + EmpresaPadrao;
  SQLSerie.Open ;
  SQLOperacaoEstoque.Open;
  SQLCFOPAUX.Open;

  DataEmissaoNF.Date := Date ;

  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;

  TblMemPedidoOrcamento.Open ;
  AtualizarPedidos := False;
  if ReativarPedidoOrcamento then
  begin
    DM.SQLPedidoOrcamento.Close ;
    DM.SQLPedidoOrcamento.MacroByName('MFiltro').Value := 'Pedido.PDVDCIMPORTADO = ''S'' or Pedido.PDVDCIMPORTADO is null' ;
    DM.SQLPedidoOrcamento.Open ;

    TblMemPedidoOrcamento.Open ;

    DM.SQLPedidoOrcamento.First ;
    while not DM.SQLPedidoOrcamento.EOF do
    begin
      TblMemPedidoOrcamento.Append ;
      TblMemPedidoOrcamentoPDVDA13ID.AsString   := DM.SQLPedidoOrcamentoPDVDA13ID.AsString;
      TblMemPedidoOrcamentoCLIEA13ID.Value      := DM.SQLPedidoOrcamentoCLIEA13ID.Value;
      TblMemPedidoOrcamentoClienteNome.Value    := DM.SQLPedidoOrcamentoClienteNome.Value;
      TblMemPedidoOrcamentoVENDICOD.Value       := DM.SQLPedidoOrcamentoVENDICOD.Value;
      TblMemPedidoOrcamentoPlanoNome.Value      := DM.SQLPedidoOrcamentoPLRCA60DESCR.Value;
      TblMemPedidoOrcamentoPLRCICOD.Value       := DM.SQLPedidoOrcamentoPLRCICOD.Value;
      TblMemPedidoOrcamentoPDVDN3VALOR.Value    := DM.SQLPedidoOrcamentoPDVDN2TOTPED.Value;
      TblMemPedidoOrcamentoVlrFrete.Value       := DM.SQLPedidoOrcamentoPDVDN2VLRFRETE.Value;
      TblMemPedidoOrcamentoDESCTOTAL.Value      := DM.SQLPedidoOrcamentoPDVDN2VLRDESCPROM.Value;
      TblMemPedidoOrcamentoPDVDCMARCADO.Value   := False;
      TblMemPedidoOrcamento.Post;
      DM.SQLPedidoOrcamento.Next;
    end ;
  end
  else begin
    DM.SQLPedidoOrcamento.Close;
    DM.SQLPedidoOrcamento.MacroByName('MFiltro').Value := 'Pedido.PDVDCIMPORTADO <> ''S'' OR Pedido.PDVDCIMPORTADO IS NULL ';
    DM.SQLPedidoOrcamento.Open;

    TblMemPedidoOrcamento.Open;

    DM.SQLPedidoOrcamento.First;
    while not DM.SQLPedidoOrcamento.EOF do
    begin
      TblMemPedidoOrcamento.Append;
      TblMemPedidoOrcamentoPDVDA13ID.Value      := DM.SQLPedidoOrcamentoPDVDA13ID.Value;
      TblMemPedidoOrcamentoCLIEA13ID.Value      := DM.SQLPedidoOrcamentoCLIEA13ID.Value;
      TblMemPedidoOrcamentoClienteNome.Value    := DM.SQLPedidoOrcamentoCLIEA60RAZAOSOC.Value;
      TblMemPedidoOrcamentoVENDICOD.Value       := DM.SQLPedidoOrcamentoVENDICOD.Value;
      TblMemPedidoOrcamentoPlanoNome.Value      := DM.SQLPedidoOrcamentoPLRCA60DESCR.Value;
      TblMemPedidoOrcamentoPLRCICOD.Value       := DM.SQLPedidoOrcamentoPLRCICOD.Value;
      TblMemPedidoOrcamentoPDVDN3VALOR.Value    := DM.SQLPedidoOrcamentoPDVDN2TOTPED.Value;
      TblMemPedidoOrcamentoVlrFrete.Value       := DM.SQLPedidoOrcamentoPDVDN2VLRFRETE.Value;
      TblMemPedidoOrcamentoDESCTOTAL.Value      := DM.SQLPedidoOrcamentoPDVDN2VLRDESCPROM.Value;
      TblMemPedidoOrcamentoPDVDCMARCADO.Value   := false;
      TblMemPedidoOrcamento.Post;
      DM.SQLPedidoOrcamento.Next;
    end ;
  end ;
  TblMemPedidoOrcamento.First ;
  DM.SQLPedidoOrcamento.First ;

  if DM.SQLConfigVenda.FieldByName('CFVECIMPPREVDCOD').Value = 'S' then
    EntradaDados.Visible        := true
  else
    EntradaDados.Visible        := false ;

  if Dm.SQLConfigVenda.FieldByName('OPESICODNF').Value > 0 then
    ComboOperacaoEstoque.Value := Dm.SQLConfigVenda.FieldByName('OPESICODNF').AsString;
end;

procedure TFormTelaImportarPedidoOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblMemPedidoOrcamento.Close ;
  ReativarPedidoOrcamento := False;
  Action := caFree ;
end;

procedure TFormTelaImportarPedidoOrcamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close ;
end;

procedure TFormTelaImportarPedidoOrcamento.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var
  InfoRetornoUser : TInfoRetornoUser;
begin
  if (Key = VK_SPACE {) and (DBGridLista.SelectedField.DataType = ftBoolean}) then
    begin
      if TblMemPedidoOrcamentoPDVDCMARCADO.AsBoolean = True then
        begin
          ExistePedidoOrcamentoSelecionado := False;
          SaveBoolean(DBGridLista);
        end
      else
        begin
          ExistePedidoOrcamentoSelecionado := True;
          SaveBoolean(DBGridLista);
        end;
    end;

  if (Key = VK_F6) then
    begin
      if AutenticaUsuario(UsuarioAtualNome,'USUACCANCPREVENDA',InfoRetornoUser) = 'S' then
        begin
          if not Pergunta('Sim', '* * * CONFIRMA A DESATIVAÇÃO DESTE ORÇAMENTO/PEDIDO(S) ? * * *') then
           exit ;
        end
      else
        begin
          Informa('Você não tem permissão para desativar um Pedido/Orçamento(s) !');
          Exit;
        end;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('update PEDIDOVENDA') ;
      DM.SQLTemplate.SQL.Add('set Pendente=''S'', PDVDCIMPORTADO = ''S''') ;
      DM.SQLTemplate.SQL.Add('where PDVDA13ID = ' + '''' + TblMemPedidoOrcamentoPDVDA13ID.AsString + '''') ;
      DM.SQLTemplate.ExecSQL;

      TblMemPedidoOrcamento.Delete ;

      Informa('Orçamento/Pedido(s) desativado(s) com sucesso !') ;
      exit ;
    end ;

  if Key = VK_Return then
    begin
      if ReativarPedidoOrcamento then
      begin
        if not Pergunta('Sim', '* * * CONFIRMA A REATIVAÇÃO DESTE(S) ORÇAMENTO/PEDIDO(S) ? * * *') then
          exit ;

        TblMemPedidoOrcamento.First;
        while not TblMemPedidoOrcamento.EOF do
        begin
          if TblMemPedidoOrcamentoPDVDCMARCADO.Value then
          begin
            DM.SQLTemplate.Close;
            DM.SQLTemplate.SQL.Clear;
            DM.SQLTemplate.SQL.Add('Update PEDIDOVENDA');
            DM.SQLTemplate.SQL.Add('set Pendente=''S'', PDVDCIMPORTADO = ''N''');
            DM.SQLTemplate.SQL.Add('where PDVDA13ID = ' + '''' + TblMemPedidoOrcamentoPDVDA13ID.AsString + '''');
            DM.SQLTemplate.ExecSQL;
          end;

          TblMemPedidoOrcamento.Next ;
        end ;
      end
      else begin
        if (ExistePedidoOrcamentoSelecionado) or (Dm.SQLConfigVenda.FieldByName('CFVECIMPPREVDCOD').AsString = 'S') then
          begin
            if not Pergunta('Sim', '* * * CONFIRMA A IMPORTAÇÃO DESTE(S) ORÇAMENTO/PEDIDO(S) ? * * *') then
              exit ;
            ImportandoPreVenda := True;
            TblMemPedidoOrcamento.First ;
            FormTelaImportarPedidoOrcamento.Hide ;
            FormTelaItens.Refresh ;
            PedidosImportados := '' ;
            ValorDescontoASerImportado := 0;
            while not TblMemPedidoOrcamento.EOF do
            begin
              if TblMemPedidoOrcamentoPDVDCMARCADO.Value then
              begin
                if FormTelaItens.EstadoPDVChk = 'AguardandoNovaVenda' then
                  FormTelaItens.FormKeyDown(Sender, F2, [ssAlt]);

                DM.SQLPedidoOrcamentoItem.Close;
                DM.SQLPedidoOrcamentoItem.MacroByName('MFiltro').Value := 'PDVDA13ID = ''' + TblMemPedidoOrcamentoPDVDA13ID.AsString + '''';
                DM.SQLPedidoOrcamentoItem.Open;
                //INCLUINDO OS ITENS DO PEDIDO
                DM.SQLPedidoOrcamentoItem.First;
                while not DM.SQLPedidoOrcamentoItem.EOF do
                begin
                  FormTelaItens.EstadoPDVChk      := 'InformandoItens';
                  FormTelaItens.ValorItem         := DM.SQLPedidoOrcamentoItemPVITN2VLRUNIT.Value;
                  FormTelaItens.EditQtde.Value    := DM.SQLPedidoOrcamentoItemPVITN3QUANT.Value;
                  FormTelaItens.DescItemVlr       := DM.SQLPedidoOrcamentoItemPVITN2VLRDESC.Value;
                  FormTelaItens.VendPreVenda      := DM.SQLPedidoOrcamentoVENDICOD.Value;
                  FormTelaItens.EntradaDados.Text := DM.SQLPedidoOrcamentoItemPRODICOD.AsString;

                  FormTelaItens.EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
             {     if (DM.SQLConfigVendaCFVEIQTDPADRPDV.AsVariant = null) or (DM.SQLConfigVendaCFVEIQTDPADRPDV.AsVariant <= 0) then
                    begin
                      FormTelaItens.EntradaDados.Text := FormatFloat('####0.000',DM.SQLPedidoOrcamentoItemPVITN3QUANT.AsFloat);
                      FormTelaItens.EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
                    end; }

                  if ECFAtual = 'SIGTRON FS300' then
                    Sleep(1000);
                  DM.SQLPedidoOrcamentoItem.Next;
                end;

                ClienteVenda   := TblMemPedidoOrcamentoCLIEA13ID.Value;
                VendedorVenda  := TblMemPedidoOrcamentoVENDICOD.Value;
                PlanoVenda     := TblMemPedidoOrcamentoPLRCICOD.Value;
                VlrDescPromoImportado := TblMemPedidoOrcamentoDESCTOTAL.Value;
{                //Stop
                if (DM.SQLConfigVendaCFVECIMPPREVDCOD.Value = 'S') or (DM.SQLConfigVendaCFVECFINVENDADPREVD.AsString <> 'N') then
                  begin
                    PlanoVenda := TblMemPedidoOrcamentoPLRCICOD.Value ;
                    DM.SQLPedidoOrcamentoNumerario.Close ;
                    DM.SQLPedidoOrcamentoNumerario.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPedidoOrcamentoTERMICOD.AsString + ' and ' +
                                                                            'PRVDICOD = ' + TblMemPedidoOrcamentoPRVDICOD.AsString ;
                    DM.SQLPedidoOrcamentoNumerario.Open ;


                    DM.SQLPedidoOrcamentoContasReceber.Close ;
                    DM.SQLPedidoOrcamentoContasReceber.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPedidoOrcamentoTERMICOD.AsString + ' and ' +
                                                                                'PRVDICOD = ' + TblMemPedidoOrcamentoPRVDICOD.AsString ;
                    DM.SQLPedidoOrcamentoContasReceber.Open ;
                  end ;

                while not DM.SQLPedidoOrcamentoNumerario.EOF do
                begin
                  DM.SQLPedidoOrcamentoNumerario.Next ;
                end ;}

                if PedidosImportados = '' then
                  PedidosImportados := TblMemPedidoOrcamentoPDVDA13ID.AsString
                else
                  PedidosImportados := PedidosImportados + ',' + TblMemPedidoOrcamentoPDVDA13ID.AsString;
              end ;
              AtualizarPedidos := True;
              TblMemPedidoOrcamento.Next ;
            end ;
            //APÓS INCLUIR OS ITENS
            ImportandoPreVenda := False;
            if FormTelaItens.EstadoPDVChk = 'InformandoItens' then
              FormTelaItens.FormKeyDown(Sender, F3, [ssAlt]);
          end
        else
          begin
            Informa('Nenhum orçamento foi selecionado para importação, operação cancelada !') ;
            Abort;
          end;
      end ;
      Close ;
    end ;
end;

procedure TFormTelaImportarPedidoOrcamento.DBGridListaCellClick(
  Column: TColumn);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaImportarPedidoOrcamento.DBGridListaColEnter(
  Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaImportarPedidoOrcamento.DBGridListaColExit(
  Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaImportarPedidoOrcamento.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;
procedure TFormTelaImportarPedidoOrcamento.SaveBoolean(Grid : TDBGrid) ;
begin
  TblMemPedidoOrcamento.Edit ;
  TblMemPedidoOrcamentoPDVDCMARCADO.Value := not TblMemPedidoOrcamentoPDVDCMARCADO.Value ;
  TblMemPedidoOrcamento.Post ;
end ;
procedure TFormTelaImportarPedidoOrcamento.EntradaDadosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    if Pos('.', EntradaDados.text) > 0 then
      begin
        EntradaDados.text := ConverteCodigo(EntradaDados.Text) ;
      end ;
    TblMemPedidoOrcamento.DisableControls ;
    TblMemPedidoOrcamento.First ;
    while not TblMemPedidoOrcamento.Eof do
      begin
        if TblMemPedidoOrcamentoPDVDA13ID.AsString = Copy(EntradaDados.Text,1,Length(EntradaDados.Text)) then
          begin
            TblMemPedidoOrcamento.Edit ;
            TblMemPedidoOrcamentoPDVDCMARCADO.Value := True ;
            TblMemPedidoOrcamento.Post ;
            Break ;
          end ;
        TblMemPedidoOrcamento.Next ;
      end ;
    TblMemPedidoOrcamento.EnableControls ;
    DBGridListaKeyDown(Sender, Enter, [ssAlt]);
  end;
end ;

procedure TFormTelaImportarPedidoOrcamento.FormActivate(Sender: TObject);
begin
  if DM.SQLConfigVenda.FieldByName('CFVECIMPPREVDCOD').Value = 'S' then
    EntradaDados.SetFocus;
end;

procedure TFormTelaImportarPedidoOrcamento.BTGerarNFClick(Sender: TObject);
begin
  try
    //GERA CABEÇALHO DA NOTA
    SQLVeiculo.Open;
    SQLNotaFiscal.Close;
    SQLNotaFiscal.Open;
    if TblMemPedidoOrcamentoPDVDCMARCADO.Value = True then
      begin
        if EditNroNF.Text  = '' then
          begin
            ShowMessage('Não foi informado o número da nota fiscal! Verifique!');
            Abort;
          end;

        UFEmpresa := DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',EmpresaPadrao);
        UFCliente := DM.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES',''''+TblMemPedidoOrcamentoCLIEA13ID.Value+ '''');
        if UFCliente  = '' then
          begin
            ShowMessage('Não foi cadastrado o Estado para o Cliente '+DM.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC',''''+TblMemPedidoOrcamentoCLIEA13ID.Value+ '''')+
                        ', Verifique!');
            Abort;
          end;
        if UFEmpresa <> UFCliente then
          begin
            SQLICMSUF.Close;
            SQLICMSUF.MacroByName('MFiltro').asString  := 'ICMUA2UF = '+''''+UFCliente+'''';
            SQLICMSUF.Open;
            if SQLICMSUF.IsEmpty then
              begin
                ShowMessage('O UF do cliente não está cadastrado na tabela de Icms por Estado, verifique!');
                Abort;
              end;
            try
              if SQLIcmsUF.FieldByName('ICMUN2ALIQUOTA').Value = 0 then
                begin
                  ShowMessage('A aliquota de Icms está cadastrado com valor Zero na tabela de Icms por Estado, verifique!');
                  Abort;
                end;
            except
              Application.ProcessMessages;
            end;
          end;
        // Abrir Pedido Corrente
        dm.SQLPedidoOrcamento.Close;
        dm.SQLPedidoOrcamento.MacroByName('MFiltro').Value := 'PDVDA13ID = ''' + TblMemPedidoOrcamentoPDVDA13ID.Value + '''';
        dm.SQLPedidoOrcamento.Open;
        PesoTotalBruto                        := 0;
        PesoTotalLiq                          := 0;
        QtdeTotal                             := 0;
        SQLNotaFiscal.Append;
        SQLNotaFiscalEMPRICOD.AsString        := EmpresaPadrao;
        SQLNotaFiscalNOFIINUMERO.Value        := StrToInt(EditNroNF.Text);
        SQLNotaFiscalPDVDA13ID.Value          := dm.SQLPedidoOrcamentoPDVDA13ID.Value;
        SQLNotaFiscalCLIEA13ID.Value          := dm.SQLPedidoOrcamentoCLIEA13ID.Value;
        SQLNotaFiscalNOFICSTATUS.Value        := 'A';
        SQLNotaFiscalNOFIDEMIS.Value          := DataEmissaoNF.Date;
        SQLNotaFiscalNOFIA30COMPRADOR.Value   := dm.SQLPedidoOrcamentoPDVDA30COMPRADOR.Value;
        SQLNotaFiscalVENDICOD.Value           := dm.SQLPedidoOrcamentoVENDICOD.Value;
        SQLNotaFiscalSERIA5COD.Value          := ComboSerie.Value;
        SQLNotaFiscalNOFICFRETEPORCONTA.Value := dm.SQLPedidoOrcamentoPDVDCTIPOFRETE.Value;
        SQLNotaFiscalTRANICOD.Value           := dm.SQLPedidoOrcamentoTRANICOD.Value;
        SQLNotaFiscalOPESICOD.AsString        := ComboOperacaoEstoque.Value;
        SQLNotaFiscalNOFIA8PLACAVEIC.AsString := EditPlacaVeiculo.Text;

        if ComboTipoVenda.ItemIndex = 0 then
          SQLNotaFiscalCUPOCTIPOPADRAO.Value    :=  'VISTA';
        if ComboTipoVenda.ItemIndex = 1 then
          SQLNotaFiscalCUPOCTIPOPADRAO.Value    :=  'CHQ';
        if ComboTipoVenda.ItemIndex = 2 then
          SQLNotaFiscalCUPOCTIPOPADRAO.Value    :=  'CRT';
        if ComboTipoVenda.ItemIndex = 3 then
          SQLNotaFiscalCUPOCTIPOPADRAO.Value    :=  'CRD';

        if UFEmpresa = UFCliente then
          SQLNotaFiscalCFOPA5COD.Value        := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLNotaFiscalOPESICOD.AsString)
        else
          SQLNotaFiscalCFOPA5COD.Value        := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',SQLNotaFiscalOPESICOD.AsString);

        // Alimenta o CFOP auxiliar se existente
          SQLNotaFiscalCFOPA5CODAUX.AsVariant := ComboCFOPAux.Value;
        // Alimenta o Plano de Contas Padrao q esta ligado a Op Estoque
        SQLNotaFiscalPLCTA15CODCRED.Value     := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','PLCTA15CODCRED',SQLNotaFiscalOPESICOD.AsString);
        // Setar Valores
        SQLNotaFiscalNOFIN2VLRPRODUTO.Value   := dm.SQLPedidoOrcamentoPDVDN2TOTPROD.Value;
        SQLNotaFiscalNOFIN2VLRDESCPROM.Value  := dm.SQLPedidoOrcamentoPDVDN2VLRDESCPROM.Value;
{        if SQLNotaFiscalNOFIN2VLRDESCPROM.Value > 0 then
          begin
            DescPromPerc := dm.SQLPedidoOrcamentoPDVDN2TOTPED.Value/dm.SQLPedidoOrcamentoPDVDN2TOTPROD.Value;
            DescPromPerc := DescPromPerc*100;
            DescPromPerc := 100 - DescPromPerc;
          end;}
        SQLNotaFiscalNOFIN2VLRNOTA.Value      := dm.SQLPedidoOrcamentoPDVDN2TOTPED.Value;
        SQLNotaFiscalNOFIN2VLRFRETE.Value     := dm.SQLPedidoOrcamentoPDVDN2VLRFRETE.Value;
        SQLNotaFiscalNOFIN2VLRPRODUTO.Value   := dm.SQLPedidoOrcamentoPDVDN2TOTPROD.Value;
        SQLNotaFiscalNOFIN2BASCALCCIPI.Value  := 0;
        SQLNotaFiscalNOFIN2BASCALCICMS.Value  := 0;
        SQLNotaFiscalNOFIN2BASCALCSUBS.Value  := 0;
        SQLNotaFiscalNOFIN2VLRDESC.Value      := 0;
        SQLNotaFiscalNOFIN2VLRICMS.Value      := 0;
        if dm.SQLPedidoOrcamentoPDVDN2VLRFRETE.Value > 0 then
          SQLNotaFiscalNOFIN2VLRICMSFRETE.Value := SQLNotaFiscalNOFIN2VLRFRETE.Value * dm.SQLConfigVenda.FieldByName('CFVEN3PERCICMFRETE').Value/100
        else
          SQLNotaFiscalNOFIN2VLRICMSFRETE.Value := 0;
        SQLNotaFiscalNOFIN2VLRIPI.Value       := 0;
        SQLNotaFiscalNOFIN2VLRISSQN.Value     := 0;
        SQLNotaFiscalNOFIN2VLROUTRASDESP.Value:= 0;
        SQLNotaFiscalNOFIN2VLRSERVICO.Value   := 0;
        SQLNotaFiscalNOFIN2VLRSEGURO.Value    := 0;
        SQLNotaFiscalNOFIN2VLRSUBS.Value      := 0;
        SQLNotaFiscalNOFIN3PESBRUT.Value      := 0;
        SQLNotaFiscalNOFIN3PESLIQ.Value       := 0;
        SQLNotaFiscalNOFIN3QUANT.Value        := 0;
        // Alimenta a Forma de Recto da Venda
        SQLNotaFiscalPLRCICOD.Value           := dm.SQLPedidoOrcamentoPLRCICOD.Value;
        SQLNotaFiscalPENDENTE.Value           := 'S';
        SQLNotaFiscalREGISTRO.Value           := Now;
        SQLNotaFiscalUSUAICOD.Value           := dm.UsuarioAtual;
        SQLNotaFiscalUSUAA60LOGIN.Value       := dm.SQLPedidoOrcamentoUSUAA60LOGIN.value;
        SQLNotaFiscal.Post;
        IDNotaAtual := SQLNotaFiscalNOFIA13ID.Value;
        // Importa os Itens do Pedido
        ImportaItensPedidoVenda;
        // Corrigir o Contas Receber
        ImportaContasReceber;

        // Alimenta Totais de Impostos
        SQLNotaFiscal.Edit;
        // Base e Valor IPI
        SQLNotaFiscalNOFIN2BASCALCCIPI.Value := 0;
        SQLNotaFiscalNOFIN2VLRIPI.Value      := 0;
        // Base e Valor Total ICMS
        SQLNotaFiscalNOFIN2BASCALCICMS.Value := TotBaseCalcICMS+SQLNotaFiscalNOFIN2VLRFRETE.Value;
        SQLNotaFiscalNOFIN2VLRICMS.Value     := TotVlrICMS + SQLNotaFiscalNOFIN2VLRICMSFRETE.Value;
        // Base e Valor Total ICMS Subst
        SQLNotaFiscalNOFIN2BASCALCSUBS.Value := TotBaseCalcICMSSubst;
        SQLNotaFiscalNOFIN2VLRSUBS.Value     := TotVlrICMSSubst;
        // Aliquota e Valor ISSQN
        SQLNotaFiscalNOFIN2VLRISSQN.Value    := TotVlrISSQN;
        //  Peso Bruto, Liq e Quantidade
        SQLNotaFiscalNOFIN3PESBRUT.Value     := PesoTotalBruto;
        SQLNotaFiscalNOFIN3PESLIQ.Value      := PesoTotalLiq;
        SQLNotaFiscalNOFIN3QUANT.Value       := QtdeTotal;
        SQLNotaFiscalNOFIA255OBS.Value       := dm.SQLPedidoOrcamentoPDVDTOBS.Value;
        SQLNotaFiscalNOFIAOBSCORPONF.Value   := dm.SQLPedidoOrcamentoNOFIAOBSCORPONF.Value;
        SQLNotaFiscal.Post;

        // Troca Status do Pedido pra FATURADO e Alimenta a Coluna Importado(SN)
        SQLPedido.Close;
        SQLPedido.Sql.Clear;
        SQLPedido.Sql.Add('UPDATE PEDIDOVENDA SET Pendente=''S'', PDVDCIMPORTADO=''S'', PDVDCSTATUS=''F'' Where PDVDA13ID = ''' + TblMemPedidoOrcamentoPDVDA13ID.Value + '''') ;
        SQLPedido.ExecSql;

        // Atualizar o Nro da Prox Nota no cadastro de serie
        SQLSerie.Edit;
        SQLSerieSERIINRONF.Value     := StrToInt(EditNroNF.text)+1;
        SQLSeriePENDENTE.asString      := 'S';
        SQLSerieREGISTRO.asDateTime    := Now;
        SQLSerie.Post;

        if Pergunta('Sim','*** Deseja imprimir agora a nota fiscal ***') then
          begin
            { colocar rotina }
          end;
      end;
  except
    Application.ProcessMessages;
  end;
end;

procedure TFormTelaImportarPedidoOrcamento.SQLNotaFiscalBeforePost(
  DataSet: TDataSet);
var Erro : Boolean;
begin
  inherited;
  // Gerar o ID da Nota
  if DataSet.State in [DSInsert] then
    DM.CodigoAutomatico('NOTAFISCAL',Nil,DataSet,2,0);
end;

Procedure TFormTelaImportarPedidoOrcamento.ImportaItensPedidoVenda;
var Item : Integer;
var CalculaIPI, CalculaICMS : String;
begin
  Item                 := 0;
  TotBaseCalcICMS      := 0;
  TotBaseCalcICMSSubst := 0;
  TotVlrICMS           := 0;
  TotVlrICMSSubst      := 0;
  TotVlrISSQN          := 0;

  SQLNotaFiscalItem.Close;
  SQLNotaFiscalItem.Open;
  DM.SQLPedidoOrcamentoItem.Close;
  DM.SQLPedidoOrcamentoItem.MacroByName('MFiltro').Value := 'PDVDA13ID = '''+DM.SQLPedidoOrcamentoPDVDA13ID.Value+'''';
  DM.SQLPedidoOrcamentoItem.Open;
  DM.SQLPedidoOrcamentoItem.First;
  While not DM.SQLPedidoOrcamentoItem.Eof do
    begin
      Item := Item+1;
      SQLNotaFiscalItem.Append;
      SQLNotaFiscalItemNOFIA13ID.Value          := IDNotaAtual;
      SQLNotaFiscalItemNFITIITEM.Value          := Item;
      SQLNotaFiscalItemPDVDA13ID.Value          := DM.SQLPedidoOrcamentoPDVDA13ID.Value;
      SQLNotaFiscalItemPRODICOD.Value           := DM.SQLPedidoOrcamentoItemPRODICOD.Value;
      SQLNotaFiscalItemNFITN3QUANT.Value        := DM.SQLPedidoOrcamentoItemPVITN3QUANT.Value;
      SQLNotaFiscalItemNFITN2VLRUNIT.Value      := DM.SQLPedidoOrcamentoItemPVITN2VLRUNIT.Value;
      SQLNotaFiscalItemNFITN2PERCDESC.AsVariant := DM.SQLPedidoOrcamentoItemPVITN2PERCDESC.AsVariant;
      SQLNotaFiscalItemNFITN2VLRDESC.AsVariant  := DM.SQLPedidoOrcamentoItemPVITN2VLRDESC.AsVariant;
      SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.asFloat -
                                                    StrToFloat(dm.SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCOMPRA',DM.SQLPedidoOrcamentoItemPRODICOD.AsString))) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
      SQLNotaFiscalItemNFITN2VLRDESC.asFloat    := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat *
                                                    SQLNotaFiscalItemNFITN3QUANT.asFloat) *
                                                   (SQLNotaFiscalItemNFITN2PERCDESC.asFloat / 100);
      // Produto é Servico
      if DM.SQLLocate('PRODUTO','PRODICOD','PRODCSERVICO',SQLNotaFiscalItemPRODICOD.AsString)= 'S' then
        begin
          SQLNotaFiscalItemNFITN2PERCISSQN.asFloat  := DM.SQLConfigVenda.FieldByName('CFVEN3ALIQISSQN').asFloat;
          SQLNotaFiscalItemNFITN2VLRISSQN.asFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*(SQLNotaFiscalItemNFITN2PERCISSQN.asFloat / 100);
        end
      else
        begin
          // se a op.estoque estiver marcada para calcular IPI e o campo Perc IPI no cad.produtos for maior que zero.
          CalculaIPI  := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCIPI',SQLNotaFiscalOPESICOD.AsString);
          CalculaICMS := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCICMS',SQLNotaFiscalOPESICOD.AsString);

          SQLNotaFiscalItemNFITN2PERCIPI.AsString   := DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PERCIPI',SQLNotaFiscalItemPRODICOD.AsString);
          if (CalculaIPI = 'S') and (SQLNotaFiscalItemNFITN2PERCIPI.AsFloat > 0) then
            SQLNotaFiscalItemNFITN2VLRIPI.asFloat     := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*
                                                         (SQLNotaFiscalItemNFITN2PERCIPI.asFloat/100);
          // Se for venda dentro do estado, buscar dados da tabela de ICMS, else buscar da tabela ICMSUF
          if UFEmpresa = UFCliente then
            begin
              // Pega os Percentuais de Icms e Icms Subst se a Op.Estoque Permitir Calcular ICMS
              if CalculaICMS = 'S' then
                begin
                  SQLNotaFiscalItemNFITN2PERCICMS.AsString    := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2ICMSM1',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
                  SQLNotaFiscalItemNFITN2PERCSUBS.AsString    := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2PERCSUBSTSAI',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));

                  SQLNotaFiscalItemNFITN2PERCREDUCAO.AsString := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2REDBASEICMS',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
                  if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsString = '' then SQLNotaFiscalItemNFITN2PERCREDUCAO.Value := 0;
                  if SQLNotaFiscalItemNFITN2PERCICMS.AsFloat > 0 then
                    begin
                      // Se a base for reduzida
                      if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat > 0 then
                        begin
                          SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                          SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := SQLNotaFiscalItemNFITN2BASEICMS.AsFloat*(SQLNotaFiscalItemNFITN2PERCREDUCAO.asFloat/100);
                        end
                      else
                        begin
                          SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                        end;
                    end;
                  // Se o produto tiver Subst Tributaria
                  if SQLNotaFiscalItemNFITN2PERCSUBS.AsString = '' then SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat := 0;
                  if SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat > 0 then
                    begin
                      // Se a base for reduzida
                      if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat > 0 then
                        begin
                          SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                          SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := SQLNotaFiscalItemNFITN2BASESUBS.AsFloat*(SQLNotaFiscalItemNFITN2PERCREDUCAO.asFloat/100);
                        end
                      else
                        begin
                          SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                        end;
                    end;
                end;
            end
          else
            begin
              if CalculaICMS = 'S' then
                begin
                  SQLNotaFiscalItemNFITN2PERCICMS.AsString    := DM.SQLLocate('ICMSUF','ICMUA2UF','ICMUN2ALIQUOTA',''''+UFCliente+'''');
                  if SQLNotaFiscalItemNFITN2PERCICMS.AsString = '' then SQLNotaFiscalItemNFITN2PERCICMS.AsFloat := 0;
                  if SQLNotaFiscalItemNFITN2PERCICMS.AsFloat > 0 then
                    begin
                      SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat  := 0;
                      SQLNotaFiscalItemNFITN2BASEICMS.AsFloat     := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                    end;
                  SQLNotaFiscalItemNFITN2PERCSUBS.AsString    := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2PERCSUBSTSAI',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
                  if SQLNotaFiscalItemNFITN2PERCSUBS.AsString = '' then SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat := 0;
                  if SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat > 0 then
                    begin
                      SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat  := 0;
                      SQLNotaFiscalItemNFITN2BASESUBS.AsFloat     := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                    end;
                end
              else
                begin
                  SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat  := 0;
                  SQLNotaFiscalItemNFITN2PERCICMS.AsFloat     := 0;
                  SQLNotaFiscalItemNFITN2BASEICMS.AsFloat     := 0;
                end;
            end;
          if CalculaICMS = 'S' then
            begin
              SQLNotaFiscalItemNFITN2VLRICMS.AsFloat := SQLNotaFiscalItemNFITN2BASEICMS.AsFloat*(SQLNotaFiscalItemNFITN2PERCICMS.asFloat/100);
              SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat := SQLNotaFiscalItemNFITN2BASESUBS.AsFloat*(SQLNotaFiscalItemNFITN2PERCSUBS.asFloat/100);
            end
          else
            begin
              SQLNotaFiscalItemNFITN2VLRICMS.AsFloat := 0;
              SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat := 0;
            end;
          QtdeTotal      := QtdeTotal      + SQLNotaFiscalItemNFITN3QUANT.asFloat;

          PesoTotalBruto := PesoTotalBruto + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOBRUTO',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
          PesoTotalLiq   := PesoTotalLiq   + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOLIQ',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
        end;
      SQLNotaFiscalItem.Post;
      // alimenta variaveis com totais de impostos por item
      TotBaseCalcICMS      := TotBaseCalcICMS + SQLNotaFiscalItemNFITN2BASEICMS.AsFloat;
      TotVlrICMS           := TotVlrICMS + SQLNotaFiscalItemNFITN2VLRICMS.AsFloat;
      TotBaseCalcICMSSubst := TotBaseCalcICMSSubst + SQLNotaFiscalItemNFITN2BASESUBS.AsFloat;
      TotVlrICMSSubst      := TotVlrICMSSubst + SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat;
      TotVlrISSQN          := SQLNotaFiscalItemNFITN2VLRISSQN.asFloat;
      AliquotaISSQN        := SQLNotaFiscalItemNFITN2PERCISSQN.asFloat;
      DM.SQLPedidoOrcamentoItem.Next;
    end;
  DM.SQLPedidoOrcamentoItem.Close;
end;

Procedure TFormTelaImportarPedidoOrcamento.ImportaContasReceber;
var VlrFreteParcela : Double;
begin
  DM.SQLContasReceber.Close;
  DM.SQLContasReceber.MacroByName('MFiltro').Value := 'PDVDA13ID = '''+DM.SQLPedidoOrcamentoPDVDA13ID.Value+'''';
  DM.SQLContasReceber.Open;
  DM.SQLContasReceber.First;
  if not DM.SQLContasReceber.IsEmpty then
    begin
      if DM.SQLContasReceber.RecordCount > 1 then
        VlrFreteParcela := SQLNotaFiscalNOFIN2VLRFRETE.Value / DM.SQLContasReceber.RecordCount
      else
        VlrFreteParcela := SQLNotaFiscalNOFIN2VLRFRETE.Value;

      DataDifPedidoNota := DataEmissaoNF.Date - DM.SQLPedidoOrcamentoPDVDDEMISSAO.Value;
      While not DM.SQLContasReceber.eof do
        begin
          DM.SQLContasReceber.Edit;
          DM.SQLContasReceber.FieldByName('NOFIA13ID').AsString             := IDNotaAtual;
          DM.SQLContasReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString := FormatFloat('000000',SQLNotaFiscalNOFIINUMERO.AsFloat)+
                                                               '-'+DM.SQLContasReceber.FieldByName('CTRCINROPARC').AsString;
          DM.SQLContasReceber.FieldByName('CTRCN2VLR').Value                := DM.SQLContasReceber.FieldByName('CTRCN2VLR').Value + VlrFreteParcela;
          DM.SQLContasReceber.FieldByName('CTRCN2DESCFIN').Value            := 0;
          DM.SQLContasReceber.FieldByName('CTRCN2TXJURO').Value             := 0;
          DM.SQLContasReceber.FieldByName('CTRCN2TXMULTA').Value            := 0;
          DM.SQLContasReceber.FieldByName('CTRCN2TOTREC').Value             := 0;
          DM.SQLContasReceber.FieldByName('CTRCN2TOTDESCREC').Value         := 0;
          DM.SQLContasReceber.FieldByName('CTRCN2TOTJUROREC').Value         := 0;
          DM.SQLContasReceber.FieldByName('CTRCN2TOTMULTAREC').Value        := 0;
          DM.SQLContasReceber.FieldByName('CTRCN2TOTMULTACOBR').Value       := 0;
          DM.SQLContasReceber.FieldByName('CTRCCSTATUS').Value              := 'A';
          DM.SQLContasReceber.FieldByName('CTRCDEMIS').Value                := DataEmissaoNF.Date;
          DM.SQLContasReceber.FieldByName('CTRCDVENC').Value                := dm.SQLContasReceber.FieldByName('CTRCDVENC').Value+DataDifPedidoNota;
          DM.SQLContasReceber.FieldByName('CTRCA5TIPOPADRAO').Value         := dm.SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',DM.SQLContasReceber.FieldByName('NUMEICOD').AsString);
          if DM.SQLContasReceber.FieldByName('CTRCCEMITIDOBOLETO').Value = '' then
            dm.SQLContasReceber.FieldByName('CTRCCEMITIDOBOLETO').Value := 'N';
          DM.SQLContasReceber.FieldByName('PENDENTE').Value                 := 'S';
          DM.SQLContasReceber.Post;
          DM.SQLContasReceber.Next;
        end;
    end;
end;

procedure TFormTelaImportarPedidoOrcamento.ComboSerieChange(
  Sender: TObject);
begin
  if ComboSerie.Value <> '' then
    EditNroNF.Text := IntToStr(SQLSerieSERIINRONF.asInteger)
  else
    EditNroNF.Text := '';
end;

end.
