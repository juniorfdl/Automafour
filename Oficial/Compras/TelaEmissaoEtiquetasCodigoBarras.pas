unit TelaEmissaoEtiquetasCodigoBarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, Grids, DBGrids, DB, DBTables, Mask, ToolEdit, CurrEdit, RxQuery,
  RxLookup, RXCtrls, Menus, VarSys, FormResources, IniFiles, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBClient;

type
  TFormTelaEmissaoEtiquetasCodigoBarras = class(TFormTelaGeralTEMPLATE)
    PageControl: TPageControl;
    TabSheetItem: TTabSheet;
    TabSheetPedido: TTabSheet;
    Label1: TLabel;
    CodProd: TEdit;
    BtnProduto: TSpeedButton;
    DescrProd: TLabel;
    DBGridLista: TDBGrid;
    TblEtiquetas: TTable;
    TblEtiquetasContador: TAutoIncField;
    TblEtiquetasProdutoCodigo: TIntegerField;
    TblEtiquetasCodigoBarras: TStringField;
    TblEtiquetasREFERENCIA: TStringField;
    TblEtiquetasDescricao: TStringField;
    TblEtiquetasPreco: TFloatField;
    TblEtiquetasTamanho: TStringField;
    TblEtiquetasDescricaoReduzida: TStringField;
    TblEtiquetasCodigoEstrut: TStringField;
    TblEtiquetasMarca: TStringField;
    TblEtiquetasDtUltEntr: TDateField;
    TblEtiquetasCustFant: TStringField;
    TblEtiquetasParcPlanos: TMemoField;
    TblEtiquetasCor: TStringField;
    TblEtiquetasQuant: TIntegerField;
    TblEtiquetasProdutoCodigoAntigo: TStringField;
    DSTblEtiquetas: TDataSource;
    Quant: TCurrencyEdit;
    Label2: TLabel;
    SQLProduto: TRxQuery;
    Panel4: TPanel;
    Label3: TLabel;
    ComboEtiquetas: TRxDBLookupCombo;
    SQLConfigEtiquetaCodigoBarra: TRxQuery;
    SQLConfigEtiquetaCodigoBarraCFCBICOD: TIntegerField;
    SQLConfigEtiquetaCodigoBarraCFCBA60DESCR: TStringField;
    DSSQLConfigEtiquetaCodigoBarra: TDataSource;
    SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA: TStringField;
    SQLConfigEtiquetaCodigoBarraCFCBA100PATHEXEIMP: TStringField;
    SQLConfigEtiquetaCodigoBarraCFCBA100PATHARQTXT: TStringField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    RefProd: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    CodBarProd: TLabel;
    MarcaProd: TLabel;
    Label7: TLabel;
    TamProd: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CorProd: TLabel;
    SQLCor: TRxQuery;
    SQLMarca: TRxQuery;
    SQLGradeTamanho: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoTAMANHOLOOKUP: TStringField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoCorLookup: TStringField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoMarcaLookup: TStringField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoGRADICOD: TIntegerField;
    PopupMenuDiversos: TPopupMenu;
    PularnEtiquetas1: TMenuItem;
    TabSheetNota: TTabSheet;
    EditPedido: TEdit;
    BtnPedido: TSpeedButton;
    EditNotaCompra: TEdit;
    BtnNotaCompra: TSpeedButton;
    BtnIncProdPed: TButton;
    BtnIncProdNota: TButton;
    SQLPedidoCompraItem: TRxQuery;
    SQLNotaCompraItem: TRxQuery;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    TabSheetPedidoVenda: TTabSheet;
    TabSheetNotaFiscal: TTabSheet;
    EditPedidoVenda: TEdit;
    BtnPedidoVenda: TSpeedButton;
    BtnIncProdPedVenda: TButton;
    SQLPedidoVendaItem: TRxQuery;
    EditNotaFiscal: TEdit;
    BtnNotaVenda: TSpeedButton;
    BtnIncProdNotaVenda: TButton;
    SQLNotaVendaItem: TRxQuery;
    SQLConfigEtiquetaCodigoBarraCFCBINROCOL: TIntegerField;
    Label6: TLabel;
    SQLConfigEtiquetaCodigoBarraCFCBA254TEXTOTERM: TMemoField;
    DSSQLProduto: TDataSource;
    MnLimparArquivoTemporario: TMenuItem;
    SQLLote: TRxQuery;
    DSSQLLote: TDataSource;
    SQLLoteLOTEA30NRO: TStringField;
    SQLLoteLOTEDVECTO: TDateTimeField;
    SQLLoteREGISTRO: TDateTimeField;
    SQLLotePENDENTE: TStringField;
    ComboLote: TRxDBLookupCombo;
    Label10: TLabel;
    TblEtiquetasLote: TStringField;
    TblEtiquetasPrateleira: TStringField;
    TblEtiquetasPavimento: TStringField;
    TblEtiquetasRua: TStringField;
    TblEtiquetasDimensao: TStringField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODN3DIMENTOTAL: TFloatField;
    TblEtiquetasInfo01EtqBarras: TStringField;
    TblEtiquetasInfo02EtqBarras: TStringField;
    SQLProdutoPRODA30INF01ETQBARRAS: TStringField;
    SQLProdutoPRODA30INF02ETQBARRAS: TStringField;
    MnInserir01LinhaBranco: TMenuItem;
    MnInserir02LinhasBranco: TMenuItem;
    TblEtiquetasUnidade: TStringField;
    SQLUnidade: TRxQuery;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoUnidadeLookup: TStringField;
    TblEtiquetasDescricaoTecnica: TStringField;
    TabSheetMovDiv: TTabSheet;
    EditMovDiv: TEdit;
    BtnIncProdMovDiv: TButton;
    SQLMovimentoDiversoItem: TRxQuery;
    TblEtiquetasPrecoPromo: TFloatField;
    SQLConfigEtiquetaCodigoBarraCFCBA4PORTASERIAL: TStringField;
    TabAvulsa: TTabSheet;
    Label11: TLabel;
    Linha01: TEdit;
    Label12: TLabel;
    Linha02: TEdit;
    Label13: TLabel;
    Linha03: TEdit;
    Linha04: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    QtdeAvulsa: TCurrencyEdit;
    BtEtqAvulsa: TButton;
    TabAlteradosViaCadastro: TTabSheet;
    DateEdit1: TDateEdit;
    MaskEdit1: TMaskEdit;
    btnProdutosAlterados: TButton;
    SQLProdutoPRODN3VLRVENDA2: TFloatField;
    TblEtiquetasPRECOATACADO: TFloatField;
    TblEtiquetasPRECOVAREJO: TFloatField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    TblEtiquetasNFnumero: TStringField;
    BtnImprimir: TSpeedButton;
    LabelDiversos: TRxSpeedButton;
    NroEtiq: TLabel;
    TblEtiquetasFornecedor: TStringField;
    SQLProdutoPRODDULTCOMPRA: TDateTimeField;
    TblEtiquetasCOD_FORN: TStringField;
    TblEtiquetasNumero_Serie: TStringField;
    cdsSerie: TClientDataSet;
    cdsSerieNumeroSerie: TStringField;
    cdsSerieEmpresa: TIntegerField;
    cdsSerieProduto: TIntegerField;
    cdsSerieItem: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure CodProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QuantKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnImprimirClick(Sender: TObject);
    procedure ComboEtiquetasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TblEtiquetasAfterPost(DataSet: TDataSet);
    procedure TblEtiquetasAfterDelete(DataSet: TDataSet);
    procedure PularnEtiquetas1Click(Sender: TObject);
    procedure TblEtiquetasBeforeDelete(DataSet: TDataSet);
    procedure BtnProdutoClick(Sender: TObject);
    procedure BtnPedidoClick(Sender: TObject);
    procedure EditPedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditNotaCompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnNotaCompraClick(Sender: TObject);
    procedure EditNotaCompraChange(Sender: TObject);
    procedure EditPedidoChange(Sender: TObject);
    procedure BtnIncProdPedClick(Sender: TObject);
    procedure BtnIncProdNotaClick(Sender: TObject);
    procedure BtnPedidoVendaClick(Sender: TObject);
    procedure EditPedidoVendaChange(Sender: TObject);
    procedure EditPedidoVendaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnIncProdPedVendaClick(Sender: TObject);
    procedure EditNotaFiscalChange(Sender: TObject);
    procedure EditNotaFiscalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnNotaVendaClick(Sender: TObject);
    procedure BtnIncProdNotaVendaClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure MnLimparArquivoTemporarioClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TblEtiquetasBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MnInserir01LinhaBrancoClick(Sender: TObject);
    procedure MnInserir02LinhasBrancoClick(Sender: TObject);
    procedure EditMovDivChange(Sender: TObject);
    procedure BtnIncProdMovDivClick(Sender: TObject);
    procedure BtEtqAvulsaClick(Sender: TObject);
    procedure btnProdutosAlteradosClick(Sender: TObject);
  private
    { Private declarations }
    NroEtiquetasPular: Integer;
    FormStorage: TIniFile;
  public
    { Public declarations }
  end;

var
  FormTelaEmissaoEtiquetasCodigoBarras: TFormTelaEmissaoEtiquetasCodigoBarras;

implementation

uses
  UnitLibrary, TelaConsultaProduto, TelaConsultaPedidoCompra,
  TelaConsultaNotaCompra, DataModulo, TelaConsultaPedidoVenda,
  TelaConsultaNotaFiscal, TelaEmissaoEtiquetaGrade, TelaConsultaProdutoGeral,
  TelaInformaNumeroSerieProduto, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaEmissaoEtiquetasCodigoBarras.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLLote.Active then
    SQLLote.Open;
  NroEtiq.Caption := '';
  TblEtiquetas.Close;
  try
    TblEtiquetas.DeleteTable;
  except
    Application.ProcessMessages;
  end;
  TblEtiquetas.CreateTable;
  TblEtiquetas.Open;

  SQLProduto.Open;
  SQLConfigEtiquetaCodigoBarra.Open;
  FormStorage := TIniFile.Create(Application.ExeName + FormTelaEmissaoEtiquetasCodigoBarras.Caption + '.ini');
  ComboLote.Value := FormStorage.ReadString('COMBOLOTE', 'ComboLote_Value', '0');
  ComboEtiquetas.Value := FormStorage.ReadString('COMBOETIQ', 'ComboEtiquetas_Value', '0');

  if (not SQLConfigEtiquetaCodigoBarra.Eof) and (ComboEtiquetas.Value = '') then
    ComboEtiquetas.Value := SQLConfigEtiquetaCodigoBarraCFCBICOD.asString;
  if EtiquetaProduto <> '' then
  begin
    PageControl.ActivePage := TabSheetItem;
    CodProd.Text := EtiquetaProduto;
    EtiquetaProduto := '';
  end;
  if EtiquetaPedidoCompra <> '' then
  begin
    PageControl.ActivePage := TabSheetPedido;
    EditPedido.Text := EtiquetaPedidoCompra;
    EtiquetaPedidoCompra := '';
  end;
  if EtiquetaNotaCompra <> '' then
  begin
    PageControl.ActivePage := TabSheetNota;
    EditNotaCompra.Text := EtiquetaNotaCompra;
    EtiquetaNotaCompra := '';
  end;
  if EtiquetaPedidoVenda <> '' then
  begin
    PageControl.ActivePage := TabSheetPedidoVenda;
    EditPedidoVenda.Text := EtiquetaPedidoVenda;
    EtiquetaPedidoVenda := '';
  end;
  if EtiquetaNotaVenda <> '' then
  begin
    PageControl.ActivePage := TabSheetNotaFiscal;
    EditNotaFiscal.Text := EtiquetaNotaVenda;

    EtiquetaNotaVenda := '';
  end;
  if EtiquetaMovDiversos <> '' then
  begin
    PageControl.ActivePage := TabSheetMovDiv;
    EditMovDiv.Text := EtiquetaMovDiversos;

    EtiquetaMovDiversos := '';
  end;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.CodProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  vItem : Integer;
begin
  inherited;
  if Key = VK_F2 then
    BtnProduto.Click;
  vItem := 0;
  if (Key = VK_Return) and (CodProd.Text <> '') then
  begin
    if EncontrouProduto(CodProd.Text, SQLProduto) then
    begin
      if (sqllocate('PRODUTO', 'PRODICOD', 'PRODCIMPETIQCDBAR', SQLProdutoPRODICOD.AsString) = 'S') then
      begin
        if SQLProdutoGRTMICOD.AsString <> '' then
        begin
          DSMasterSys := DSTblEtiquetas;
          TipoEtiqueta := SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.AsString;
          DM.ConfigEtiqueta := ComboEtiquetas.KeyValue;
          CodProd.SetFocus;
          CriaFormulario(TFormTelaEmissaoEtiquetaGrade, 'FormTelaEmissaoEtiquetaGrade', False, False, True, '');
        end
        else
        begin
          DescrProd.Caption := SQLProduto.fieldbyname('PRODA60DESCR').AsString;
          RefProd.Caption := SQLProdutoPRODA60REFER.AsString;
          CodBarProd.Caption := SQLProdutoPRODA60CODBAR.AsString;
          MarcaProd.Caption := SQLProdutoMarcaLookup.AsString;
          TamProd.Caption := SQLProdutoTAMANHOLOOKUP.AsString;
          CorProd.Caption := SQLProdutoCorLookup.AsString;
          Quant.SetFocus;
        end;
      end;
      if (DM.SQLlocate('produto', 'prodicod', 'PRODCTEMNROSERIE', SQLProdutoPRODICOD.AsString) = 'S') then
      begin
        cdsSerie.EmptyDataSet;
        CodigoProduto := SQLProdutoPRODICOD.AsString;
        Status := ' PRSECSTATUS = ' + QuotedStr('D');
        Application.CreateForm(TFormTelaInformaNumeroSerieProduto, FormTelaInformaNumeroSerieProduto);
        try
          FormTelaInformaNumeroSerieProduto.Valida_Qtde := False;
          FormTelaInformaNumeroSerieProduto.ShowModal;
          if FormTelaInformaNumeroSerieProduto.ModalResult = MrOK then
          begin
            FormTelaInformaNumeroSerieProduto.RXSerie.First;
            while not FormTelaInformaNumeroSerieProduto.RXSerie.Eof do
            begin
              Inc(vItem);
              cdsSerie.Insert;
              cdsSerieNumeroSerie.AsString := FormTelaInformaNumeroSerieProduto.RXSerieNumeroSerie.Text;
              cdsSerieItem.AsInteger := vItem;
              cdsSerie.Post;
              FormTelaInformaNumeroSerieProduto.RXSerie.Next;
            end;
          end;
        finally
          FormTelaInformaNumeroSerieProduto.Destroy;
        end;
        cdsSerie.First;
        Quant.Value := cdsSerie.RecordCount;
      end;

    end
    else
    begin
      Informa('Produto n�o encontrado !');
      DescrProd.Caption := '';
      CodProd.SetFocus;
    end;
  end;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.QuantKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i, Etiquetas: Integer;
begin
  inherited;
  if Key = VK_Return then
  begin
    if DescrProd.Caption = '' then
    begin
      Informa('Voc� deve escolher um produto primeiro !');
      CodProd.SetFocus;
      Exit;
    end;
    if (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.AsString = 'LASERJATO') or (SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger > 1) then
      Etiquetas := StrToInt(Quant.Text)
    else
      Etiquetas := 1;
    if SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger > 1 then
      if not (StrToInt(Quant.Text) mod SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger = 0) then
      begin
//          Informa('Sua etiqueta est� configurada com ' + SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsString + ' colunas...' + #13 +
//                  'A Quantidade digitada de ser um m�ltiplo de ' + SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsString);
//          Quant.SetFocus;
//          Exit;
      end;
    for i := 1 to Etiquetas do
    begin
      TblEtiquetas.Append;
      TblEtiquetasProdutoCodigo.AsString := SQLProdutoPRODICOD.AsString;
      TblEtiquetasCodigoBarras.AsString := SQLProdutoPRODA60CODBAR.AsString;
      TblEtiquetasREFERENCIA.AsString := SQLProdutoPRODA60REFER.AsString;
      ;
      TblEtiquetasDescricao.AsString := SQLProdutoPRODA60DESCR.AsString;
      if cdsSerie.Locate('Item',i,[]) then
        TblEtiquetasNumero_Serie.AsString := cdsSerieNumeroSerie.AsString;

      TblEtiquetasPreco.Value := RetornaPreco(SQLProduto, DM.SQLConfigVenda.fieldbyname('TPRCICOD').asString, '');
      TblEtiquetasPrecoPromo.Value := SQLProdutoPRODN3VLRVENDAPROM.Value;
      TblEtiquetasPrecoVarejo.Value := SQLProdutoPRODN3VLRVENDA.Value;
      TblEtiquetasPrecoAtacado.Value := SQLProdutoPRODN3VLRVENDA2.Value;
      TblEtiquetasTamanho.AsString := SQLProdutoTAMANHOLOOKUP.AsString;
      TblEtiquetasDescricaoReduzida.AsString := SQLProdutoPRODA30ADESCRREDUZ.AsString;
      TblEtiquetasCodigoEstrut.AsString := SQLProdutoPRODA30CODESTRUT.AsString;
      TblEtiquetasMarca.AsString := SQLProdutoMarcaLookup.AsString;
      TblEtiquetasUnidade.AsString := SQLProdutoUnidadeLookup.AsString;
      TblEtiquetasDtUltEntr.AsString := SQLProdutoPRODDULTCOMPRA.AsString;
      TblEtiquetasCustFant.AsString := '';
      TblEtiquetasParcPlanos.AsString := '';
      TblEtiquetasCor.AsString := SQLProdutoCorLookup.AsString;
      if (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.AsString = 'LASERJATO') or (SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger > 1) then
        TblEtiquetasQuant.Value := 1
      else
        TblEtiquetasQuant.Value := StrToInt(Quant.Text);
      TblEtiquetasProdutoCodigoAntigo.AsString := SQLProdutoPRODA15CODANT.AsString;
      if ComboLote.Value <> '' then
        TblEtiquetasLote.AsString := ComboLote.Value;

      TblEtiquetasPrateleira.AsString := SQLProdutoPRODA15PRATEL.AsString;
      TblEtiquetasPavimento.AsString := SQLProdutoPRODA15APAVIM.AsString;
      TblEtiquetasRua.AsString := SQLProdutoPRODA15RUA.AsString;
      TblEtiquetasDimensao.AsString := SQLProdutoPRODA60DIMENSAO.AsString;
      TblEtiquetasInfo01EtqBarras.AsString := SQLProdutoPRODA30INF01ETQBARRAS.AsString;
      TblEtiquetasInfo02EtqBarras.AsString := SQLProdutoPRODA30INF02ETQBARRAS.AsString;
      TblEtiquetasDescricaoTecnica.AsString := SQLProdutoPRODA255DESCRTEC.AsString;
      TblEtiquetas.Post;

      Quant.Value := 1;
      CodProd.Clear;
      DescrProd.Caption := '';
      RefProd.Caption := '';
      CodBarProd.Caption := '';
      MarcaProd.Caption := '';
      TamProd.Caption := '';
      CorProd.Caption := '';
      CodProd.SelectAll;
      CodProd.SetFocus;
    end;
  end;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  if ComboEtiquetas.Text = '' then
  begin
    Informa('A Etiqueta deve ser selecionada !');
    ComboEtiquetas.SetFocus;
    exit;
  end;
  if TblEtiquetas.RecordCount = 0 then
  begin
    Informa('N�o h� itens a serem impressos !');
    CodProd.SetFocus;
    exit;
  end;
  if (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.Value = 'LASERJATO') then
  begin
    if not FileExists(SQLConfigEtiquetaCodigoBarraCFCBA100PATHEXEIMP.Value) then
    begin
      Informa('O programa de impress�o de etiquetas n�o foi encontrado!');
      exit;
    end;
    WinExec(PChar(SQLConfigEtiquetaCodigoBarraCFCBA100PATHEXEIMP.Value), SW_SHOW);
  end
  else
  begin
    if (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.Value = 'ZEBRA_ZPL') or (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.Value = 'ELTTPL2642') or (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.Value = 'URAUSECBC') or (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.Value = 'ALLEGRO2') or (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.Value = 'RABBIT214') or (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.Value = 'ARQTEXTO') then
    begin
         // EtiquetaImpTermica(SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger,SQLConfigEtiquetaCodigoBarraCFCBA4PORTASERIAL.AsString,
         //                    SQLConfigEtiquetaCodigoBarraCFCBA254TEXTOTERM.AsString,SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.AsString,
         //                    SQLConfigEtiquetaCodigoBarraCFCBA100PATHARQTXT.AsString); #ver
    end;
  end;
  if FileExists('ApagaEtiquetas.txt') then
  begin
    if Pergunta('SIM', 'Apagar lista atual de etiquetas?') then
    begin
      TblEtiquetas.First;
      while not TblEtiquetas.eof do
        TblEtiquetas.delete;
      CodProd.Text := '';
      CodProd.SetFocus;
    end;
  end;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.ComboEtiquetasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    CodProd.SetFocus;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.TblEtiquetasAfterPost(DataSet: TDataSet);
begin
  inherited;
  if TblEtiquetasProdutoCodigo.asString = '' then
    Inc(NroEtiquetasPular);
  NroEtiq.Caption := 'Pular ' + IntToStr(NroEtiquetasPular) + ' e Imprimir ' + Inttostr(TblEtiquetas.RecordCount - NroEtiquetasPular) + ' etiquetas.';
  NroEtiq.Refresh;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.TblEtiquetasAfterDelete(DataSet: TDataSet);
begin
  inherited;
  NroEtiq.Caption := 'Pular ' + IntToStr(NroEtiquetasPular) + ' e Imprimir ' + Inttostr(TblEtiquetas.RecordCount - NroEtiquetasPular) + ' etiquetas.';
  NroEtiq.Refresh;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.PularnEtiquetas1Click(Sender: TObject);
var
  I, NroEtiquetas: Integer;
  Erro: Boolean;
begin
  inherited;
  Erro := True;
  while Erro do
  begin
    try
      NroEtiquetas := StrToInt(InputBox('Pular ''n'' etiquetas', 'Digite o Nro de Etiquetas a pular:', '0'));
      if NroEtiquetas >= 0 then
        Erro := False;
    except
      Erro := True;
    end;
  end;
  for I := 1 to NroEtiquetas do
  begin
    TblEtiquetas.Append;
    TblEtiquetas.Post;
  end;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.TblEtiquetasBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if TblEtiquetasProdutoCodigo.asString = '' then
    Dec(NroEtiquetasPular);
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  CodProd.SetFocus;
  ProdutoReferencia := '';
  ProdutoDescricao := CodProd.Text;
  Application.CreateForm(TFormTelaConsultaProdutoGeral, FormTelaConsultaProdutoGeral);
  FormTelaConsultaProdutoGeral.ShowModal;
  if FormTelaConsultaProdutoGeral.ModalResult = 2 then
  begin
      // ProdutoReferencia = Pega o Cod Interno da tela de consulta de produtos acima
    CodProd.Text := ProdutoReferencia;
    ProdutoReferencia := '';
    ProdutoDescricao := '';
  end;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnPedidoClick(Sender: TObject);
begin
  inherited;
  EditLookup := EditPedido;
  FieldOrigem := 'PDCPA13ID';
  CriaFormulario(TFormTelaConsultaPedidoCompra, 'FormTelaConsultaPedidoCompra', False, True, True, '');
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditPedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnPedido.Click;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditNotaCompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnNotaCompra.Click;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnNotaCompraClick(Sender: TObject);
begin
  inherited;
  EditLookup := EditNotaCompra;
  FieldOrigem := 'NOCPA13ID';
  CriaFormulario(TFormTelaConsultaNotaCompra, 'FormTelaConsultaNotaCompra', False, True, True, '');
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditNotaCompraChange(Sender: TObject);
begin
  inherited;
  BtnIncProdNota.Enabled := (Sender as TEdit).Text <> '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditPedidoChange(Sender: TObject);
begin
  inherited;
  BtnIncProdPed.Enabled := (Sender as TEdit).Text <> '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnIncProdPedClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  SQLPedidoCompraItem.ParamByName('PDCPA13ID').asString := EditPedido.Text;
  SQLPedidoCompraItem.Open;
  SQLPedidoCompraItem.First;
  while not SQLPedidoCompraItem.Eof do
  begin
    if EncontrouProduto(SQLPedidoCompraItem.FindField('PRODICOD').asString, SQLProduto) then
    begin
      for I := 1 to (SQLPedidoCompraItem.FindField('PCITN3QTDEMBAL').asInteger * SQLPedidoCompraItem.FindField('PCITN3CAPEMBAL').asInteger) do
      begin
        TblEtiquetas.Append;
        TblEtiquetasProdutoCodigo.AsString := SQLProdutoPRODICOD.AsString;
        TblEtiquetasCodigoBarras.AsString := SQLProdutoPRODA60CODBAR.AsString;
        TblEtiquetasREFERENCIA.AsString := SQLProdutoPRODA60REFER.AsString;
        ;
        TblEtiquetasDescricao.AsString := SQLProdutoPRODA60DESCR.AsString;
        TblEtiquetasPreco.Value := RetornaPreco(SQLProduto, DM.SQLConfigVenda.fieldbyname('TPRCICOD').asString, '');
        TblEtiquetasPrecoPromo.Value := SQLProdutoPRODN3VLRVENDAPROM.Value;
        TblEtiquetasTamanho.AsString := SQLProdutoTAMANHOLOOKUP.AsString;
        TblEtiquetasDescricaoReduzida.AsString := SQLProdutoPRODA30ADESCRREDUZ.AsString;
        TblEtiquetasCodigoEstrut.AsString := SQLProdutoPRODA30CODESTRUT.AsString;
        TblEtiquetasMarca.AsString := SQLProdutoMarcaLookup.AsString;
        TblEtiquetasUnidade.AsString := SQLProdutoUnidadeLookup.AsString;
        TblEtiquetasDtUltEntr.AsString := '';
        TblEtiquetasCustFant.AsString := '';
        TblEtiquetasParcPlanos.AsString := '';
        TblEtiquetasCor.AsString := SQLProdutoCorLookup.AsString;
        TblEtiquetasQuant.AsString := Quant.Text;
        TblEtiquetasProdutoCodigoAntigo.AsString := SQLProdutoPRODA15CODANT.AsString;
        TblEtiquetasInfo01EtqBarras.AsString := SQLProdutoPRODA30INF01ETQBARRAS.AsString;
        TblEtiquetasInfo02EtqBarras.AsString := SQLProdutoPRODA30INF02ETQBARRAS.AsString;
        TblEtiquetasDescricaoTecnica.AsString := SQLProdutoPRODA255DESCRTEC.AsString;
        if ComboLote.Value <> '' then
          TblEtiquetasLote.AsString := ComboLote.Value;
        TblEtiquetas.Post;
      end;
    end;
    SQLPedidoCompraItem.Next;
  end;
  SQLPedidoCompraItem.Close;
  EditPedido.Text := '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnIncProdNotaClick(Sender: TObject);
var
  I, vQtde, vItem: Integer;
begin
  inherited;
  SQLNotaCompraItem.ParamByName('NOCPA13ID').asString := EditNotaCompra.Text;
  SQLNotaCompraItem.Open;
  SQLNotaCompraItem.First;
  vItem := 0;
  while not SQLNotaCompraItem.Eof do
  begin
    if (EncontrouProduto(SQLNotaCompraItem.FindField('PRODICOD').asString, SQLProduto)) and (sqllocate('PRODUTO', 'PRODICOD', 'PRODCIMPETIQCDBAR', SQLProdutoPRODICOD.AsString) = 'S') then
    begin
      vQtde := (SQLNotaCompraItem.FindField('NOCIN3QTDEMBAL').asInteger * SQLNotaCompraItem.FindField('NOCIN3CAPEMBAL').asInteger);
      if (DM.SQLlocate('produto', 'prodicod', 'PRODCTEMNROSERIE', SQLProdutoPRODICOD.AsString) = 'S') then
      begin
        dm.SqlConsulta.SQL.Clear;
        dm.SqlConsulta.SQL.Add('select * from PRODUTOSERIE where NOCPA13ID = ');
        dm.SqlConsulta.SQL.Add(QuotedStr(SQLNotaCompraItem.FindField('NOCPA13ID').AsString));
        dm.SqlConsulta.SQL.Add(' and PRODICOD = ' + SQLNotaCompraItem.FindField('PRODICOD').asString);
        dm.SqlConsulta.Open;
        if not (dm.SqlConsulta.IsEmpty) then
        begin
          dm.SqlConsulta.First;
          cdsSerie.EmptyDataSet;
          vItem := 0;
          while not dm.SqlConsulta.Eof do
          begin
            Inc(vItem);
            cdsSerie.Insert;
            cdsSerieNumeroSerie.AsString := dm.SqlConsulta.FieldByName('PRSEA60NROSERIE').AsString;
            cdsSerieItem.AsInteger := vItem;
            cdsSerie.Post;
            dm.SqlConsulta.Next;
          end;
        end;
      end;

      for I := 1 to vQtde  do
      begin
        TblEtiquetas.Append;
        TblEtiquetasProdutoCodigo.AsString := SQLProdutoPRODICOD.AsString;
        TblEtiquetasCodigoBarras.AsString := SQLProdutoPRODA60CODBAR.AsString;
        TblEtiquetasREFERENCIA.AsString := SQLProdutoPRODA60REFER.AsString;
        TblEtiquetasDescricao.AsString := SQLProdutoPRODA60DESCR.AsString;
        TblEtiquetasPreco.Value := RetornaPreco(SQLProduto, DM.SQLConfigVenda.fieldbyname('TPRCICOD').asString, '');
        TblEtiquetasPrecoPromo.Value := SQLProdutoPRODN3VLRVENDAPROM.Value;
        TblEtiquetasTamanho.AsString := SQLProdutoTAMANHOLOOKUP.AsString;
        TblEtiquetasDescricaoReduzida.AsString := SQLProdutoPRODA30ADESCRREDUZ.AsString;
        TblEtiquetasCodigoEstrut.AsString := SQLProdutoPRODA30CODESTRUT.AsString;
        TblEtiquetasMarca.AsString := SQLProdutoMarcaLookup.AsString;
        TblEtiquetasUnidade.AsString := SQLProdutoUnidadeLookup.AsString;
        TblEtiquetasDtUltEntr.AsString := dm.SQLLocate('NOTACOMPRA', 'NOCPA13ID', 'NOCPDRECEBIMENTO', '''' + SQLNotaCompraItem.FindField('NOCPA13ID').AsString + '''');
        TblEtiquetasNFnumero.AsString := dm.SQLLocate('NOTACOMPRA', 'NOCPA13ID', 'NOCPA30NRO', '''' + SQLNotaCompraItem.FindField('NOCPA13ID').AsString + '''');
        TblEtiquetasCOD_FORN.AsString := dm.SQLLocate('NOTACOMPRA', 'NOCPA13ID', 'FORNICOD', '''' + SQLNotaCompraItem.FindField('NOCPA13ID').AsString + '''');
        TblEtiquetasFornecedor.AsString := dm.SQLLocate('FORNECEDOR', 'FORNICOD', 'FORNA60RAZAOSOC', TblEtiquetasCOD_FORN.AsString);
        TblEtiquetasCustFant.AsString := '';
        TblEtiquetasParcPlanos.AsString := '';
        if cdsSerie.Locate('Item',i,[]) then
          TblEtiquetasNumero_Serie.AsString := cdsSerieNumeroSerie.AsString;

        TblEtiquetasCor.AsString := SQLProdutoCorLookup.AsString;
        TblEtiquetasQuant.AsString := Quant.Text;
        TblEtiquetasProdutoCodigoAntigo.AsString := SQLProdutoPRODA15CODANT.AsString;
        TblEtiquetasInfo01EtqBarras.AsString := SQLProdutoPRODA30INF01ETQBARRAS.AsString;
        TblEtiquetasInfo02EtqBarras.AsString := SQLProdutoPRODA30INF02ETQBARRAS.AsString;
        TblEtiquetasDescricaoTecnica.AsString := SQLProdutoPRODA255DESCRTEC.AsString;
        if ComboLote.Value <> '' then
          TblEtiquetasLote.AsString := ComboLote.Value;
        TblEtiquetas.Post;
      end;
    end;
    SQLNotaCompraItem.Next;
  end;
  SQLNotaCompraItem.Close;
  EditNotaCompra.Text := '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnPedidoVendaClick(Sender: TObject);
begin
  inherited;
  EditLookup := EditPedidoVenda;
  FieldOrigem := 'PDVDA13ID';
  CriaFormulario(TFormTelaConsultaPedidoVenda, 'FormTelaConsultaPedidoVenda', False, True, True, '');
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditPedidoVendaChange(Sender: TObject);
begin
  inherited;
  BtnIncProdPedVenda.Enabled := (Sender as TEdit).Text <> '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditPedidoVendaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnPedidoVenda.Click;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnIncProdPedVendaClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  SQLPedidoVendaItem.ParamByName('PDVDA13ID').asString := EditPedidoVenda.Text;
  SQLPedidoVendaItem.Open;
  SQLPedidoVendaItem.First;
  while not SQLPedidoVendaItem.Eof do
  begin
    if EncontrouProduto(SQLPedidoVendaItem.FindField('PRODICOD').asString, SQLProduto) then
    begin
      for I := 1 to SQLPedidoVendaItem.FindField('PVITN3QUANT').asInteger do
      begin
        TblEtiquetas.Append;
        TblEtiquetasProdutoCodigo.AsString := SQLProdutoPRODICOD.AsString;
        TblEtiquetasCodigoBarras.AsString := SQLProdutoPRODA60CODBAR.AsString;
        TblEtiquetasREFERENCIA.AsString := SQLProdutoPRODA60REFER.AsString;
        ;
        TblEtiquetasDescricao.AsString := SQLProdutoPRODA60DESCR.AsString;
        TblEtiquetasPreco.Value := RetornaPreco(SQLProduto, DM.SQLConfigVenda.fieldbyname('TPRCICOD').asString, '');
        TblEtiquetasPrecoPromo.Value := SQLProdutoPRODN3VLRVENDAPROM.Value;
        TblEtiquetasTamanho.AsString := SQLProdutoTAMANHOLOOKUP.AsString;
        TblEtiquetasDescricaoReduzida.AsString := SQLProdutoPRODA30ADESCRREDUZ.AsString;
        TblEtiquetasCodigoEstrut.AsString := SQLProdutoPRODA30CODESTRUT.AsString;
        TblEtiquetasMarca.AsString := SQLProdutoMarcaLookup.AsString;
        TblEtiquetasUnidade.AsString := SQLProdutoUnidadeLookup.AsString;
        TblEtiquetasDtUltEntr.AsString := '';
        TblEtiquetasCustFant.AsString := '';
        TblEtiquetasParcPlanos.AsString := '';
        TblEtiquetasCor.AsString := SQLProdutoCorLookup.AsString;
        TblEtiquetasQuant.AsString := Quant.Text;
        TblEtiquetasProdutoCodigoAntigo.AsString := SQLProdutoPRODA15CODANT.AsString;
        TblEtiquetasInfo01EtqBarras.AsString := SQLProdutoPRODA30INF01ETQBARRAS.AsString;
        TblEtiquetasInfo02EtqBarras.AsString := SQLProdutoPRODA30INF02ETQBARRAS.AsString;
        TblEtiquetasDescricaoTecnica.AsString := SQLProdutoPRODA255DESCRTEC.AsString;
        if ComboLote.Value <> '' then
          TblEtiquetasLote.AsString := ComboLote.Value;
        TblEtiquetas.Post;
      end;
    end;
    SQLPedidoVendaItem.Next;
  end;
  SQLPedidoVendaItem.Close;
  EditPedidoVenda.Text := '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditNotaFiscalChange(Sender: TObject);
begin
  inherited;
  BtnIncProdNotaVenda.Enabled := (Sender as TEdit).Text <> '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditNotaFiscalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnNotaVenda.Click;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnNotaVendaClick(Sender: TObject);
begin
  inherited;
  EditLookup := EditNotaFiscal;
  FieldOrigem := 'NOFIA13ID';
  CriaFormulario(TFormTelaConsultaNotaFiscal, 'FormTelaConsultaNotaFiscal', False, True, True, '');
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnIncProdNotaVendaClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  SQLNotaVendaItem.ParamByName('NOFIA13ID').asString := EditNotaFiscal.Text;
  SQLNotaVendaItem.Open;
  SQLNotaVendaItem.First;
  while not SQLNotaVendaItem.Eof do
  begin
    if EncontrouProduto(SQLNotaVendaItem.FindField('PRODICOD').asString, SQLProduto) then
    begin
      for I := 1 to SQLNotaVendaItem.FindField('NFITN3QUANT').asInteger do
      begin
        TblEtiquetas.Append;
        TblEtiquetasProdutoCodigo.AsString := SQLProdutoPRODICOD.AsString;
        TblEtiquetasCodigoBarras.AsString := SQLProdutoPRODA60CODBAR.AsString;
        TblEtiquetasREFERENCIA.AsString := SQLProdutoPRODA60REFER.AsString;
        ;
        TblEtiquetasDescricao.AsString := SQLProdutoPRODA60DESCR.AsString;
        TblEtiquetasPreco.Value := RetornaPreco(SQLProduto, DM.SQLConfigVenda.fieldbyname('TPRCICOD').asString, '');
        TblEtiquetasPrecoPromo.Value := SQLProdutoPRODN3VLRVENDAPROM.Value;
        TblEtiquetasTamanho.AsString := SQLProdutoTAMANHOLOOKUP.AsString;
        TblEtiquetasDescricaoReduzida.AsString := SQLProdutoPRODA30ADESCRREDUZ.AsString;
        TblEtiquetasCodigoEstrut.AsString := SQLProdutoPRODA30CODESTRUT.AsString;
        TblEtiquetasMarca.AsString := SQLProdutoMarcaLookup.AsString;
        TblEtiquetasUnidade.AsString := SQLProdutoUnidadeLookup.AsString;
        TblEtiquetasDtUltEntr.AsString := '';
        TblEtiquetasCustFant.AsString := '';
        TblEtiquetasParcPlanos.AsString := '';
        TblEtiquetasCor.AsString := SQLProdutoCorLookup.AsString;
        TblEtiquetasQuant.AsString := Quant.Text;
        TblEtiquetasProdutoCodigoAntigo.AsString := SQLProdutoPRODA15CODANT.AsString;
        TblEtiquetasInfo01EtqBarras.AsString := SQLProdutoPRODA30INF01ETQBARRAS.AsString;
        TblEtiquetasInfo02EtqBarras.AsString := SQLProdutoPRODA30INF02ETQBARRAS.AsString;
        TblEtiquetasDescricaoTecnica.AsString := SQLProdutoPRODA255DESCRTEC.AsString;
        if ComboLote.Value <> '' then
          TblEtiquetasLote.AsString := ComboLote.Value;
        TblEtiquetas.Post;
      end;
    end;
    SQLNotaVendaItem.Next;
  end;
  SQLNotaVendaItem.Close;
  EditNotaFiscal.Text := '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnFecharTelaClick(Sender: TObject);
begin
  inherited;
  if TblEtiquetas.Active then
    TblEtiquetas.Close;

  DSMasterSys := nil;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.MnLimparArquivoTemporarioClick(Sender: TObject);
begin
  inherited;
  TblEtiquetas.First;
  while not TblEtiquetas.eof do
    TblEtiquetas.delete;
  CodProd.Text := '';
  CodProd.SetFocus;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.FormActivate(Sender: TObject);
begin
  inherited;
  SQLConfigEtiquetaCodigoBarra.Close;
  SQLConfigEtiquetaCodigoBarra.Open;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.TblEtiquetasBeforePost(DataSet: TDataSet);
begin
  inherited;
  if ComboLote.Value <> '' then
    TblEtiquetasLote.AsString := ComboLote.Value;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FormStorage := TIniFile.Create(ExtractFilePath(Application.ExeName) + FormTelaEmissaoEtiquetasCodigoBarras.Caption + '.ini');
  if ComboLote.Value <> '' then
  begin
    FormStorage.WriteString('COMBOLOTE', 'ComboLOTE_Value', ComboLote.Value);
  end;
  if ComboEtiquetas.Value <> '' then
  begin
    FormStorage.WriteString('COMBOETIQ', 'ComboEtiquetas_Value', ComboEtiquetas.Value);
  end;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.MnInserir01LinhaBrancoClick(Sender: TObject);
begin
  inherited;
  // Inserir Linha em Branco no fim da tabela
  TblEtiquetas.Append;
  TblEtiquetas.Post;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.MnInserir02LinhasBrancoClick(Sender: TObject);
begin
  inherited;
  // Inserir Linha em Branco no fim da tabela
  TblEtiquetas.Append;
  TblEtiquetas.Post;
  // Inserir Linha em Branco no fim da tabela
  TblEtiquetas.Append;
  TblEtiquetas.Post;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.EditMovDivChange(Sender: TObject);
begin
  inherited;
  BtnIncProdMovDiv.Enabled := (Sender as TEdit).Text <> '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtnIncProdMovDivClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  SQLMovimentoDiversoItem.ParamByName('MOVDA13ID').asString := EditMovDiv.Text;
  SQLMovimentoDiversoItem.Open;
  SQLMovimentoDiversoItem.First;
  while not SQLMovimentoDiversoItem.Eof do
  begin
    if EncontrouProduto(SQLMovimentoDiversoItem.FindField('PRODICOD').asString, SQLProduto) then
    begin
      for I := 1 to (SQLMovimentoDiversoItem.FindField('MVDIN3QTD').asInteger) do
      begin
        TblEtiquetas.Append;
        TblEtiquetasProdutoCodigo.AsString := SQLProdutoPRODICOD.AsString;
        TblEtiquetasCodigoBarras.AsString := SQLProdutoPRODA60CODBAR.AsString;
        TblEtiquetasREFERENCIA.AsString := SQLProdutoPRODA60REFER.AsString;
        ;
        TblEtiquetasDescricao.AsString := SQLProdutoPRODA60DESCR.AsString;
        TblEtiquetasPreco.Value := RetornaPreco(SQLProduto, DM.SQLConfigVenda.fieldbyname('TPRCICOD').asString, '');
        TblEtiquetasPrecoPromo.Value := SQLProdutoPRODN3VLRVENDAPROM.Value;
        TblEtiquetasTamanho.AsString := SQLProdutoTAMANHOLOOKUP.AsString;
        TblEtiquetasDescricaoReduzida.AsString := SQLProdutoPRODA30ADESCRREDUZ.AsString;
        TblEtiquetasCodigoEstrut.AsString := SQLProdutoPRODA30CODESTRUT.AsString;
        TblEtiquetasMarca.AsString := SQLProdutoMarcaLookup.AsString;
        TblEtiquetasUnidade.AsString := SQLProdutoUnidadeLookup.AsString;
        TblEtiquetasDtUltEntr.AsString := '';
        TblEtiquetasCustFant.AsString := '';
        TblEtiquetasParcPlanos.AsString := '';
        TblEtiquetasPrecoVarejo.Value := SQLProdutoPRODN3VLRVENDA.Value;
        TblEtiquetasPrecoAtacado.Value := SQLProdutoPRODN3VLRVENDA2.Value;
        TblEtiquetasCor.AsString := SQLProdutoCorLookup.AsString;
        TblEtiquetasQuant.AsString := Quant.Text;
        TblEtiquetasProdutoCodigoAntigo.AsString := SQLProdutoPRODA15CODANT.AsString;
        TblEtiquetasInfo01EtqBarras.AsString := SQLProdutoPRODA30INF01ETQBARRAS.AsString;
        TblEtiquetasInfo02EtqBarras.AsString := SQLProdutoPRODA30INF02ETQBARRAS.AsString;
        TblEtiquetasDescricaoTecnica.AsString := SQLProdutoPRODA255DESCRTEC.AsString;
        if ComboLote.Value <> '' then
          TblEtiquetasLote.AsString := ComboLote.Value;
        TblEtiquetas.Post;
      end;
    end;
    SQLMovimentoDiversoItem.Next;
  end;
  SQLMovimentoDiversoItem.Close;
  EditMovDiv.Text := '';
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.BtEtqAvulsaClick(Sender: TObject);
var
  i, Etiquetas: Integer;
begin
  inherited;
  Etiquetas := QtdeAvulsa.AsInteger;
  for i := 1 to Etiquetas do
  begin
    TblEtiquetas.Append;
    TblEtiquetasProdutoCodigo.Value := i;
    TblEtiquetasDescricao.AsString := Linha01.Text;
    TblEtiquetasCor.AsString := Linha02.Text;
    TblEtiquetasInfo01EtqBarras.AsString := Linha03.Text;
    TblEtiquetasInfo02EtqBarras.AsString := Linha04.Text;
    TblEtiquetas.Post;
    Quant.Value := 1;
  end;
end;

procedure TFormTelaEmissaoEtiquetasCodigoBarras.btnProdutosAlteradosClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if (DateEdit1.Text = '  /  /    ') or (MaskEdit1.Text = '  :  ') then
  begin
    ShowMessage('Informe a partir de que Data e Hora');
    Exit;
  end;
  SQLProduto.Close;
  SQLProduto.SQL.Text := 'Select * from Produto where registro >= :xRegistro';
  SQLProduto.ParamByName('xRegistro').AsDateTime := StrToDateTime(DateEdit1.Text + ' ' + MaskEdit1.Text);
  SQLProduto.Open;
  SQLProduto.First;
  while not SQLProduto.Eof do
  begin
    TblEtiquetas.Append;
    TblEtiquetasProdutoCodigo.AsString := SQLProdutoPRODICOD.AsString;
    TblEtiquetasCodigoBarras.AsString := SQLProdutoPRODA60CODBAR.AsString;
    TblEtiquetasREFERENCIA.AsString := SQLProdutoPRODA60REFER.AsString;
    ;
    TblEtiquetasDescricao.AsString := SQLProdutoPRODA60DESCR.AsString;
    TblEtiquetasPreco.Value := SQLProdutoPRODN3VLRVENDA.AsFloat;
    TblEtiquetasPrecoPromo.Value := SQLProdutoPRODN3VLRVENDAPROM.Value;
    TblEtiquetasTamanho.AsString := SQLProdutoTAMANHOLOOKUP.AsString;
    TblEtiquetasDescricaoReduzida.AsString := SQLProdutoPRODA30ADESCRREDUZ.AsString;
    TblEtiquetasCodigoEstrut.AsString := SQLProdutoPRODA30CODESTRUT.AsString;
    TblEtiquetasMarca.AsString := SQLProdutoMarcaLookup.AsString;
    TblEtiquetasUnidade.AsString := SQLProdutoUnidadeLookup.AsString;
    TblEtiquetasDtUltEntr.AsString := '';
    TblEtiquetasCustFant.AsString := '';
    TblEtiquetasParcPlanos.AsString := '';
    TblEtiquetasCor.AsString := SQLProdutoCorLookup.AsString;
    TblEtiquetasQuant.AsString := Quant.Text;
    TblEtiquetasProdutoCodigoAntigo.AsString := SQLProdutoPRODA15CODANT.AsString;
    TblEtiquetasInfo01EtqBarras.AsString := SQLProdutoPRODA30INF01ETQBARRAS.AsString;
    TblEtiquetasInfo02EtqBarras.AsString := SQLProdutoPRODA30INF02ETQBARRAS.AsString;
    TblEtiquetasDescricaoTecnica.AsString := SQLProdutoPRODA255DESCRTEC.AsString;
    TblEtiquetas.Post;
    SQLProduto.Next;
  end;
  SQLProduto.Close;
  DateEdit1.Clear;
  MaskEdit1.Clear;
end;

end.

