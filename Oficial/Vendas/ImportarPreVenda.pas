unit ImportarPreVenda;

interface

uses
  VarSYS, Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RxQuery,
  DBCtrls, DBCGrids, MemTable, RXCtrls, EWall, Mask, Menus,
  cxLookAndFeelPainters, cxButtons;

type
  TFormTelaImportarPreVenda = class(TForm)
    LblNomeSistema: TRxLabel;
    SQLCliente: TRxQuery;
    DSMemPrevenda: TDataSource;
    TblTicketPreVenda: TTable;
    TblTicketPreVendaNomeEmpresa: TStringField;
    TblTicketPreVendaFoneEmpresa: TStringField;
    TblTicketPreVendaNumeroPreVenda: TStringField;
    TblTicketPreVendaNomeVendedor: TStringField;
    TblTicketPreVendaNomePlano: TStringField;
    TblTicketPreVendaCodigoCliente: TStringField;
    TblTicketPreVendaNomeCliente: TStringField;
    TblTicketPreVendaCodProd: TIntegerField;
    TblTicketPreVendaDescriProd: TStringField;
    TblTicketPreVendaMarcaProd: TStringField;
    TblTicketPreVendaRefProd: TStringField;
    TblTicketPreVendaQtdeProd: TFloatField;
    TblTicketPreVendaPrecoProd: TFloatField;
    TblTicketPreVendaTotalProd: TFloatField;
    TblTicketPreVendaTaxaCred: TFloatField;
    TblTicketPreVendaAcrescimo: TFloatField;
    TblTicketPreVendaDesconto: TFloatField;
    TblTicketPreVendaIDCupom: TStringField;
    SQLReimpPreVenda: TRxQuery;
    SQLReimpPreVendaTERMICOD: TIntegerField;
    SQLReimpPreVendaPRVDICOD: TIntegerField;
    SQLReimpPreVendaCONVICOD: TIntegerField;
    SQLReimpPreVendaCLIEA13ID: TStringField;
    SQLReimpPreVendaPLRCICOD: TIntegerField;
    SQLReimpPreVendaPRVDCMARCADO: TStringField;
    SQLReimpPreVendaPRVDN2TOTITENS: TFloatField;
    SQLReimpPreVendaVENDICOD: TIntegerField;
    SQLReimpPreVendaCLIEA60RAZAOSOC: TStringField;
    SQLReimpPreVendaPLRCA60DESCR: TStringField;
    SQLReimpPreVendaVENDA60NOME: TStringField;
    SQLReimpPreVendaTERMA60DESCR: TStringField;
    SQLReimpPreVendaPRVDN2ACRESC: TFloatField;
    SQLReimpPreVendaPRVDN2DESC: TFloatField;
    Label1: TLabel;
    DBGridLista: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    EntradaDados: TEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    SQLPrevendaItem: TRxQuery;
    SQLPrevendaItemTERMICOD: TIntegerField;
    SQLPrevendaItemPRVDICOD: TIntegerField;
    SQLPrevendaItemPVITIPOS: TIntegerField;
    SQLPrevendaItemPRODICOD: TIntegerField;
    SQLPrevendaItemPVITN3QTD: TFloatField;
    SQLPrevendaItemPVITN3VLRUNIT: TFloatField;
    SQLPrevendaItemPVITN3VLRCUSTUNIT: TFloatField;
    SQLPrevendaItemPVITN2DESC: TFloatField;
    SQLPrevendaItemVENDICOD: TIntegerField;
    SQLPrevendaItemPVITN3VLRUNITLUCR: TFloatField;
    SQLPrevendaItemPVITCSTATUS: TStringField;
    SQLPrevendaItemPVITN2ICMSALIQ: TFloatField;
    SQLPrevendaItemPRODA60NROSERIE: TStringField;
    SQLPrevendaItemPVITN3QTDTROCA: TFloatField;
    DSSQLPrevendaItem: TDataSource;
    DBGrid1: TDBGrid;
    Label22: TLabel;
    LBTipoTerm: TLabel;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLPrevendaItemDescricaoRed: TStringField;
    SQLPrevendaNumerario: TRxQuery;
    SQLPrevendaNumerarioTERMICOD: TIntegerField;
    SQLPrevendaNumerarioPRVDICOD: TIntegerField;
    SQLPrevendaNumerarioNUMEICOD: TIntegerField;
    SQLPrevendaNumerarioPVNUN2VLR: TFloatField;
    DSSQLPrevendaNumerario: TDataSource;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLPrevendaNumerarioNumerarioDescri: TStringField;
    DBGrid2: TDBGrid;
    SQLPrevendaContasReceber: TRxQuery;
    SQLPrevendaContasReceberPVCRICOD: TIntegerField;
    SQLPrevendaContasReceberTERMICOD: TIntegerField;
    SQLPrevendaContasReceberPRVDICOD: TIntegerField;
    SQLPrevendaContasReceberCLIEA13ID: TStringField;
    SQLPrevendaContasReceberNUMEICOD: TIntegerField;
    SQLPrevendaContasReceberPVCRN2VLR: TFloatField;
    SQLPrevendaContasReceberNumerarioDescri: TStringField;
    dsSQLPrevendaContasReceber: TDataSource;
    DBGrid3: TDBGrid;
    TblMemPreVenda: TTable;
    TblMemPreVendaContador: TAutoIncField;
    TblMemPreVendaTERMICOD: TIntegerField;
    TblMemPreVendaPRVDICOD: TIntegerField;
    TblMemPreVendaCLIEA13ID: TStringField;
    TblMemPreVendaClienteNome: TStringField;
    TblMemPreVendaPLRCICOD: TIntegerField;
    TblMemPreVendaPlanoNome: TStringField;
    TblMemPreVendaPRVDN2TOTITENS: TFloatField;
    TblMemPreVendaVENDICOD: TIntegerField;
    TblMemPreVendaTerminal: TStringField;
    TblMemPreVendaPRVDCMARCADO: TBooleanField;
    TblMemPreVendaClienteEnd: TStringField;
    TblMemPreVendaClienteCidade: TStringField;
    TblMemPreVendaClienteFone: TStringField;
    TblMemPreVendaClienteObs: TStringField;
    TblMemPreVendaClienteTipoCliente: TStringField;
    TblMemPreVendaClienteSituacaoAutal: TStringField;
    TblMemPreVendaValorDesconto: TCurrencyField;
    TblMemPreVendaClienteDataCadastro: TStringField;
    TblMemPreVendaClienteDataPRICompra: TStringField;
    TblMemPreVendaClienteDataULTCompra: TStringField;
    TblMemPreVendaClienteDocumento: TStringField;
    TblMemPreVendaValorRendaTitular: TCurrencyField;
    TblMemPreVendaValorTotalCompras: TCurrencyField;
    TblMemPreVendaValorTotalComprasAberto: TCurrencyField;
    TblMemPreVendaValorLimiteCred: TCurrencyField;
    TblMemPreVendaDataNascTitular: TStringField;
    TblMemPreVendaCLIETOBS: TStringField;
    TblMemPreVendaPDVDDHVENDA: TStringField;
    SQLImportarPrevendaSel: TRxQuery;
    SQLImportarPrevendaSelContador: TIntegerField;
    SQLImportarPrevendaSelTERMICOD: TIntegerField;
    SQLImportarPrevendaSelPRVDICOD: TIntegerField;
    SQLImportarPrevendaSelCLIEA13ID: TStringField;
    SQLImportarPrevendaSelClienteNome: TStringField;
    SQLImportarPrevendaSelPLRCICOD: TIntegerField;
    SQLImportarPrevendaSelPlanoNome: TStringField;
    SQLImportarPrevendaSelPRVDN2TOTITENS: TFloatField;
    SQLImportarPrevendaSelVENDICOD: TIntegerField;
    SQLImportarPrevendaSelTerminal: TStringField;
    SQLImportarPrevendaSelPRVDCMARCADO: TBooleanField;
    SQLImportarPrevendaSelClienteEnd: TStringField;
    SQLImportarPrevendaSelClienteCidade: TStringField;
    SQLImportarPrevendaSelClienteFone: TStringField;
    SQLImportarPrevendaSelClienteObs: TStringField;
    SQLImportarPrevendaSelClienteTipoCliente: TStringField;
    SQLImportarPrevendaSelClienteSituacaoAutal: TStringField;
    SQLImportarPrevendaSelValorDesconto: TCurrencyField;
    SQLImportarPrevendaSelClienteDataCadastro: TStringField;
    SQLImportarPrevendaSelClienteDataPRICompra: TStringField;
    SQLImportarPrevendaSelClienteDataULTCompra: TStringField;
    SQLImportarPrevendaSelClienteDocumento: TStringField;
    SQLImportarPrevendaSelValorRendaTitular: TCurrencyField;
    SQLImportarPrevendaSelValorTotalCompras: TCurrencyField;
    SQLImportarPrevendaSelValorTotalComprasAberto: TCurrencyField;
    SQLImportarPrevendaSelValorLimiteCred: TCurrencyField;
    SQLImportarPrevendaSelDataNascTitular: TStringField;
    SQLImportarPrevendaSelCLIETOBS: TStringField;
    SQLImportarPrevendaSelPDVDDHVENDA: TStringField;
    TblMemPreVendaVendedor: TStringField;
    SQLImportarPrevendaSelVendedor: TStringField;
    TblMemPreVendaCLDPICOD: TIntegerField;
    SQLImportarPrevendaSelCLDPICOD: TIntegerField;
    DBEdit4: TDBEdit;
    Label24: TLabel;
    SQLPrevendaItemPVITTOBS: TStringField;
    Label17: TLabel;
    Label25: TLabel;
    btAdd10: TcxButton;
    btDiminuir10: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLPrevendaItemCalcFields(DataSet: TDataSet);
    procedure DSMemPrevendaDataChange(Sender: TObject; Field: TField);
    procedure btAdd10Click(Sender: TObject);
    procedure btDiminuir10Click(Sender: TObject);
  private
    MostraItens : Boolean;
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure ImprimirPreVenda(Terminal, Numero : string) ;
  public
    { Public declarations }
  ExistePreVendaSelecionada : Boolean;
  end;

var
  FormTelaImportarPreVenda: TFormTelaImportarPreVenda;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens, DataModulo,
     UnitCheckoutLibrary, TelaImpressaoPreVenda, DataModuloTemplate;

{$R *.DFM}

procedure TFormTelaImportarPreVenda.SaveBoolean(Grid : TDBGrid) ;
begin
  TblMemPreVenda.Edit ;
  TblMemPreVendaPRVDCMARCADO.Value := not TblMemPreVendaPRVDCMARCADO.Value ;
  TblMemPreVenda.Post ;
end ;

procedure TFormTelaImportarPreVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblMemPreVenda.Close ;
  Action := caFree ;
end;

procedure TFormTelaImportarPreVenda.FormCreate(Sender: TObject);
begin
  if FileExists('ZigZag.txt') then
    begin
      btAdd10.Visible      := True;
      btDiminuir10.Visible := True;
    end;

  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;

  MostraItens := False;

  AtualizarPedidos := False;

  try
    TblMemPrevenda.Close ;
    TblMemPrevenda.DeleteTable ;
    TblMemPrevenda.CreateTable ;
  except
    TblMemPrevenda.CreateTable ;
  end ;
  TblMemPrevenda.Open ;

  if vImportarPrevenda then
    begin
      DM.SQLPreVenda.Close ;
      if NomeClienteVenda = '' then
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N" and PDVCPreConclu = "S"'
      else
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N" and PDVCPreConclu = "S" and CLIENTENOME Like "%'+NomeClienteVenda+'%"';

      DM.SQLPreVenda.MacroByName('Ordem').Value   := 'Order by '+ dm.sqlconfigvenda.ParamByName('CFVEA20ORDIMPVEND').AsString ;
      DM.SQLPreVenda.Open ;

      DM.SQLPreVenda.First ;
      while not DM.SQLPreVenda.EOF do
      begin
        TblMemPrevenda.Append ;
        TblMemPrevendaTERMICOD.Value   := DM.SQLPreVendaTERMICOD.Value ;
        TblMemPrevendaPRVDICOD.Value   := DM.SQLPreVendaPRVDICOD.Value ;
        TblMemPrevendaCLIEA13ID.Value  := DM.SQLPreVendaCLIEA13ID.Value ;
        TblMemPreVendaCLDPICOD.AsVariant := DM.SQLPreVendaCLDPICOD.AsVariant;
        TblMemPreVendaPDVDDHVENDA.AsString  := FormatDateTime('dd/mm/yyyy hh:mm:ss',DM.SQLPreVendaPDVDDHVENDA.Value) ;

        if DM.SQLPreVendaCLIENTENOME.Value <> '' then
          TblMemPrevendaClienteNome.Value    := DM.SQLPreVendaCLIENTENOME.Value
        else
          TblMemPrevendaClienteNome.Value    := DM.SQLPreVendaCLIEA60RAZAOSOC.Value ;
        if DM.SQLPreVendaCLIENTEENDE.Value <> '' then
          TblMemPreVendaClienteEnd.Value     := DM.SQLPreVendaCLIENTEENDE.Value
        else
          TblMemPreVendaClienteEnd.Value     := DM.SQLPreVendaCLIEA60ENDRES.Value;
        if dm.SQLPreVendaCLIENTECIDA.Value <> '' then
          TblMemPreVendaClienteCidade.Value  := dm.SQLPreVendaCLIENTECIDA.Value
        else
          TblMemPreVendaClienteCidade.Value  := DM.SQLPreVendaCLIEA60CIDRES.Value;
        if dm.SQLPreVendaCLIENTEFONE.Value <> '' then
          TblMemPreVendaClienteFone.Value  := dm.SQLPreVendaCLIENTEFONE.Value
        else
          TblMemPreVendaClienteFone.Value  := DM.SQLPreVendaCLIEA15FONE1.Value;
        if dm.SQLPreVendaCLIENTEOBS.Value <> '' then
          TblMemPreVendaClienteObs.Value     := dm.SQLPreVendaCLIENTEOBS.Value;
        if DM.SQLPreVendaCLIETOBS1.Value <> '' then
          TblMemPreVendaCLIETOBS.Value     := DM.SQLPreVendaCLIETOBS1.Value;
        if DM.SQLPreVendaCLIENTECNPJ.Value <> '' then
          TblMemPreVendaClienteDocumento.Value   := DM.SQLPreVendaCLIENTECNPJ.Value;

        if (DM.SQLPreVendaCLIEA13ID.Value <> dm.SQLTerminalAtivo.FieldByName('CLIEA13ID').Value)  then
          begin
            if dm.SQLPreVendaCLIEDCAD.AsString <> '' then
              TblMemPreVendaClienteDataCadastro.Value    := FormatDateTime('DD/MM/YYYY',DM.SQLPreVendaCLIEDCAD.Value)
            else
              TblMemPreVendaClienteDataCadastro.Value    := '';
            if dm.SQLPreVendaCLIEDNASC.AsString <> '' then
              TblMemPreVendaDataNascTitular.Value    := FormatDateTime('DD/MM/YYYY',DM.SQLPreVendaCLIEDNASC.Value)
            else
              TblMemPreVendaDataNascTitular.Value    := '';
            if DM.SQLPreVendaCLIEDPRICOMPRA.AsString <> '' then
              TblMemPreVendaClienteDataPriCompra.Value   := FormatDateTime('DD/MM/YYYY',DM.SQLPreVendaCLIEDPRICOMPRA.Value)
            else
              TblMemPreVendaClienteDataPriCompra.Value   := '';
            if DM.SQLPreVendaCLIEDULTCOMPRA.AsString <> '' then
              TblMemPreVendaClienteDataULTCompra.Value   := FormatDateTime('DD/MM/YYYY',DM.SQLPreVendaCLIEDULTCOMPRA.Value)
            else
              TblMemPreVendaClienteDataULTCompra.Value   := '';

            TblMemPreVendaValorLimiteCred.Value        := DM.SQLPreVendaCLIEN2LIMITECRED.Value;
            TblMemPreVendaValorRendaTitular.Value := 0;
            if DM.SQLPreVendaCLIEN2RENDA.Value        > 0 then
              TblMemPreVendaValorRendaTitular.Value := DM.SQLPreVendaCLIEN2RENDA.Value;
            if DM.SQLPreVendaCLIEN2CONJUGERENDA.Value > 0 then
              TblMemPreVendaValorRendaTitular.Value := TblMemPreVendaValorRendaTitular.Value +
                                                       DM.SQLPreVendaCLIEN2CONJUGERENDA.Value;

            if (TblMemPreVendaClienteEnd.Value = '') or (TblMemPreVendaClienteCidade.Value = '') or
              (TblMemPreVendaClienteCidade.Value = '') then
              TblMemPreVendaClienteSituacaoAutal.Value   := '*** Cadastro Incompleto ***';

            if DM.SQLPreVendaMTBLICOD.AsString <> '' then
              TblMemPreVendaClienteSituacaoAutal.Value   := '*** Bloqueado para compras a Prazo ***';

            DM.SQLTemplate.Close ;
            DM.SQLTemplate.SQL.Clear ;
            DM.SQLTemplate.SQL.Add('Select') ;
            DM.SQLTemplate.SQL.Add('sum(CTRCN2VLR-CTRCN2TOTREC) as TOTALAPAGAR ') ;
            DM.SQLTemplate.SQL.Add('from CONTASRECEBER');
            DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + DM.SQLPreVendaCLIEA13ID.AsString + '"') ;
            DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
            DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = "N" OR CTRCCTIPOREGISTRO IS NULL)') ;
            DM.SQLTemplate.Open ;
            if DM.SQLTemplate.FieldByName('TOTALAPAGAR').Value > 0 then
              TblMemPreVendaValorTotalComprasAberto.Value    := DM.SQLTemplate.FieldByName('TOTALAPAGAR').Value ;

            DM.SQLTemplate.Close ;
            DM.SQLTemplate.SQL.Clear ;
            DM.SQLTemplate.SQL.Add('select sum(CUPON2TOTITENS+CUPON3CREDTAXA+CUPON2ACRESC-CUPON2DESC-CUPON3BONUSTROCA) as TOTALCOMPRAS') ;
            DM.SQLTemplate.SQL.Add('from CUPOM') ;
            DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + DM.SQLPreVendaCLIEA13ID.AsString + '"') ;
            DM.SQLTemplate.SQL.Add(' and (CUPOCSTATUS = "A" or CUPOCSTATUS = "N") ') ;
            DM.SQLTemplate.Open ;
            if DM.SQLTemplate.FieldByName('TOTALCOMPRAS').Value > 0 then
              TblMemPreVendaValorTotalCompras.Value := DM.SQLTemplate.FieldByName('TOTALCOMPRAS').Value ;
          end;

        TblMemPrevendaVENDICOD.Value          := DM.SQLPreVendaVENDICOD.Value ;
        TblMemPreVendaVendedor.Value          := DM.SQLPreVendaVENDA60NOME.Value;
        TblMemPrevendaPlanoNome.Value         := SQLLocate('planorecebimento','PLRCICOD','PLRCA60DESCR',DM.SQLPreVendaPLRCICOD.AsString);
        TblMemPrevendaPLRCICOD.Value          := DM.SQLPreVendaPLRCICOD.Value ;
        TblMemPrevendaPRVDN2TOTITENS.Value    := DM.SQLPreVendaPRVDN2TOTITENS.Value ;
        TblMemPreVendaValorDesconto.AsString  := DM.SQLPreVendaPRVDN2DESC.AsString ;
        TblMemPreVendaTerminal.Value          := DM.SQLPreVendaTERMA60DESCR.Value ;
        TblMemPrevendaPRVDCMARCADO.Value      := False ;
        TblMemPrevenda.Post ;

        DM.SQLPreVenda.Next;
      end ;
    end ;

  if ReativarPreVenda then
    begin
      DM.SQLPreVenda.Close ;
      if NomeClienteVenda = '' then
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "S"'
      else
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "S" and CLIENTENOME Like "%'+NomeClienteVenda+'%"';

      DM.SQLPreVenda.MacroByName('Ordem').Value   := 'Order by '+ dm.sqlconfigvenda.ParamByName('CFVEA20ORDIMPVEND').AsString ;
      DM.SQLPreVenda.Open ;

      DM.SQLPreVenda.First ;
      while not DM.SQLPreVenda.EOF do
      begin
        TblMemPrevenda.Append ;
        TblMemPrevendaTERMICOD.Value       := DM.SQLPreVendaTERMICOD.Value ;
        TblMemPrevendaPRVDICOD.Value       := DM.SQLPreVendaPRVDICOD.Value ;
        TblMemPrevendaCLIEA13ID.Value      := DM.SQLPreVendaCLIEA13ID.Value ;
        TblMemPreVendaCLDPICOD.AsVariant   := DM.SQLPreVendaCLDPICOD.AsVariant;
        TblMemPreVendaPDVDDHVENDA.AsString  := FormatDateTime('dd/mm/yyyy hh:mm:ss',DM.SQLPreVendaPDVDDHVENDA.Value) ;
        if DM.SQLPreVendaCLIENTENOME.Value <> ''  then
          TblMemPrevendaClienteNome.Value    := DM.SQLPreVendaCLIENTENOME.Value
        else
          TblMemPrevendaClienteNome.Value    := DM.SQLPreVendaCLIEA60RAZAOSOC.Value ;
        TblMemPrevendaVENDICOD.Value       := DM.SQLPreVendaVENDICOD.Value ;
        TblMemPreVendaVendedor.Value       := DM.SQLPreVendaVENDA60NOME.Value;
        TblMemPrevendaPlanoNome.Value      := SQLLocate('planorecebimento','PLRCICOD','PLRCA60DESCR',DM.SQLPreVendaPLRCICOD.AsString);
        TblMemPrevendaPLRCICOD.Value       := DM.SQLPreVendaPLRCICOD.Value ;
        TblMemPrevendaPRVDN2TOTITENS.Value := DM.SQLPreVendaPRVDN2TOTITENS.Value ;
        TblMemPreVendaValorDesconto.AsString  := DM.SQLPreVendaPRVDN2DESC.AsString ;
        TblMemPreVendaTerminal.Value       := DM.SQLPreVendaTERMA60DESCR.Value ;
        TblMemPrevendaPRVDCMARCADO.Value   := False ;

        if DM.SQLPreVendaCLIENTEENDE.Value <> '' then
          TblMemPreVendaClienteEnd.Value     := DM.SQLPreVendaCLIENTEENDE.Value
        else
          TblMemPreVendaClienteEnd.Value     := DM.SQLPreVendaCLIEA60ENDRES.Value;
        if dm.SQLPreVendaCLIENTECIDA.Value <> '' then
          TblMemPreVendaClienteCidade.Value  := dm.SQLPreVendaCLIENTECIDA.Value
        else
          TblMemPreVendaClienteCidade.Value  := DM.SQLPreVendaCLIEA60CIDRES.Value;
        if dm.SQLPreVendaCLIENTEFONE.Value <> '' then
          TblMemPreVendaClienteFone.Value  := dm.SQLPreVendaCLIENTEFONE.Value
        else
          TblMemPreVendaClienteFone.Value  := DM.SQLPreVendaCLIEA15FONE1.Value;
        if dm.SQLPreVendaCLIENTEOBS.Value <> '' then
          TblMemPreVendaClienteObs.Value     := dm.SQLPreVendaCLIENTEOBS.Value;
        if DM.SQLPreVendaCLIETOBS1.Value <> '' then
          TblMemPreVendaCLIETOBS.Value     := DM.SQLPreVendaCLIETOBS1.Value;
        if DM.SQLPreVendaCLIENTECNPJ.Value <> '' then
          TblMemPreVendaClienteDocumento.Value   := DM.SQLPreVendaCLIENTECNPJ.Value;

        TblMemPrevenda.Post ;

        DM.SQLPreVenda.Next;
      end ;
    end;

  if ContinuarPrevenda then
    begin
      DM.SQLPreVenda.Close ;
      if NomeClienteVenda = '' then
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N" and P.VENDICOD = ' + IntToStr(VendedorVenda)
      else
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N" and P.VENDICOD = ' + IntToStr(VendedorVenda) +
                                                       ' and CLIENTENOME Like "%'+NomeClienteVenda+'%"';

      DM.SQLPreVenda.MacroByName('Ordem').Value   := 'Order by '+ dm.sqlconfigvenda.ParamByName('CFVEA20ORDIMPVEND').AsString ;
      DM.SQLPreVenda.Open ;

      if VendedorVenda > 0 then
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N" and P.VENDICOD = ' + IntToStr(VendedorVenda)
      else
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N"';

      DM.SQLPreVenda.MacroByName('Ordem').Value   := 'Order by '+ dm.sqlconfigvenda.ParamByName('CFVEA20ORDIMPVEND').AsString ;
      DM.SQLPreVenda.Open ;

      DM.SQLPreVenda.First ;
      while not DM.SQLPreVenda.EOF do
      begin
        TblMemPrevenda.Append ;
        TblMemPrevendaTERMICOD.Value       := DM.SQLPreVendaTERMICOD.Value ;
        TblMemPrevendaPRVDICOD.Value       := DM.SQLPreVendaPRVDICOD.Value ;
        TblMemPrevendaCLIEA13ID.Value      := DM.SQLPreVendaCLIEA13ID.Value ;
        TblMemPreVendaCLDPICOD.AsVariant   := DM.SQLPreVendaCLDPICOD.AsVariant;
        TblMemPreVendaPDVDDHVENDA.AsString  := FormatDateTime('dd/mm/yyyy hh:mm:ss',DM.SQLPreVendaPDVDDHVENDA.Value) ;
        if DM.SQLPreVendaCLIENTENOME.Value <> ''  then
          TblMemPrevendaClienteNome.Value    := DM.SQLPreVendaCLIENTENOME.Value
        else
          TblMemPrevendaClienteNome.Value    := DM.SQLPreVendaCLIEA60RAZAOSOC.Value ;
        TblMemPrevendaVENDICOD.Value       := DM.SQLPreVendaVENDICOD.Value ;
        TblMemPreVendaVendedor.Value       := DM.SQLPreVendaVENDA60NOME.Value;
        TblMemPrevendaPlanoNome.Value      := SQLLocate('planorecebimento','PLRCICOD','PLRCA60DESCR',DM.SQLPreVendaPLRCICOD.AsString);
        TblMemPrevendaPLRCICOD.Value       := DM.SQLPreVendaPLRCICOD.Value ;
        TblMemPrevendaPRVDN2TOTITENS.Value := DM.SQLPreVendaPRVDN2TOTITENS.Value ;
        TblMemPreVendaValorDesconto.AsString  := DM.SQLPreVendaPRVDN2DESC.AsString ;
        TblMemPreVendaTerminal.Value       := DM.SQLPreVendaTERMA60DESCR.Value ;
        TblMemPrevendaPRVDCMARCADO.Value   := False ;

        if DM.SQLPreVendaCLIENTEENDE.Value <> '' then
          TblMemPreVendaClienteEnd.Value     := DM.SQLPreVendaCLIENTEENDE.Value
        else
          TblMemPreVendaClienteEnd.Value     := DM.SQLPreVendaCLIEA60ENDRES.Value;
        if dm.SQLPreVendaCLIENTECIDA.Value <> '' then
          TblMemPreVendaClienteCidade.Value  := dm.SQLPreVendaCLIENTECIDA.Value
        else
          TblMemPreVendaClienteCidade.Value  := DM.SQLPreVendaCLIEA60CIDRES.Value;
        if dm.SQLPreVendaCLIENTEFONE.Value <> '' then
          TblMemPreVendaClienteFone.Value  := dm.SQLPreVendaCLIENTEFONE.Value
        else
          TblMemPreVendaClienteFone.Value  := DM.SQLPreVendaCLIEA15FONE1.Value;
        if dm.SQLPreVendaCLIENTEOBS.Value <> '' then
          TblMemPreVendaClienteObs.Value     := dm.SQLPreVendaCLIENTEOBS.Value;
        if DM.SQLPreVendaCLIETOBS1.Value <> '' then
          TblMemPreVendaCLIETOBS.Value     := DM.SQLPreVendaCLIETOBS1.Value;
        if DM.SQLPreVendaCLIENTECNPJ.Value <> '' then
          TblMemPreVendaClienteDocumento.Value   := DM.SQLPreVendaCLIENTECNPJ.Value;

        TblMemPrevenda.Post ;

        DM.SQLPreVenda.Next;
      end ;
    end;

  MostraItens := True;

  TblMemPrevenda.First ;
  DM.SQLPreVenda.First ;

  if DM.SQLConfigVenda.FieldByName('CFVECIMPPREVDCOD').Value = 'S' then
    EntradaDados.Visible := True
  else
    EntradaDados.Visible := False ;

  if ECFAtual = '' then
    LBTipoTerm.Visible := True
  else
    LBTipoTerm.Visible := False;
end;

procedure TFormTelaImportarPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Escape then
    begin
      NomeClienteVenda  := ''; 
      vImportarPrevenda := False;
      ContinuarPrevenda := False;
      VendedorVenda     := 0;
      FormTelaItens.rxVendedor.Caption := '';
      FormTelaItens.rxVendedor.Update ;
      Close ;
    end;
end;

procedure TFormTelaImportarPreVenda.ImprimirPreVenda(Terminal, Numero : string) ;
begin
  if (DM.SQLTerminalAtivo.FieldByName('TERMCIMPPREVENDA').Value <> 'S') then
    begin
      Informa('Este terminal não está configurado para imprimir pré-venda !') ;
      exit ;
    end ;
  GravarTabelaTempImpPreVenda(Terminal,
                              Numero,
                              '',
                              DM.SQLPreVD,
                              DM.SQLPreVDIt) ;
end ;


procedure TFormTelaImportarPreVenda.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  InfoRetornoUser : TInfoRetornoUser;
begin
  if (Key = VK_SPACE ) then
    begin
      if TblMemPreVendaPRVDCMARCADO.AsBoolean = True then
        begin
          ExistePreVendaSelecionada := False;
          SaveBoolean(DBGridLista);
        end
      else
        begin
          ExistePreVendaSelecionada := True;
          SaveBoolean(DBGridLista);
        end;
    end;

  if (Key = VK_F5) then
  begin
    ImprimirPreVenda(TblMemPrevendaTERMICOD.AsString, TblMemPrevendaPRVDICOD.AsString) ;
    exit ;
  end ;

  if (Key = VK_F6) then
    begin
      if AutenticaUsuario(UsuarioAtualNome,'USUACCANCPREVENDA',InfoRetornoUser) = 'S' then
        begin
          if not Pergunta('Sim', '* * * CONFIRMA A DESATIVAÇÃO DESTA PRÉ-VENDA ? * * *') then
           exit ;
        end
      else
        begin
          Informa('Você não tem permissão para desativar uma pré-venda !');
          Exit;
        end;

      TblMemPreVenda.First;
      while not TblMemPreVenda.Eof do
        begin
          if TblMemPreVendaPRVDCMARCADO.Value then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('update PREVENDA') ;
              DM.SQLTemplate.SQL.Add('set PRVDCIMPORT = "S"') ;
              DM.SQLTemplate.SQL.Add('where TERMICOD = ' + TblMemPrevendaTERMICOD.AsString) ;
              DM.SQLTemplate.SQL.Add('and   PRVDICOD = ' + TblMemPrevendaPRVDICOD.AsString) ;
              DM.SQLTemplate.ExecSQL ;

              TblMemPreVenda.Delete ;
              TblMemPreVenda.Prior ;
            end;
          TblMemPreVenda.Next;
        end;

      Informa('Pré-vendas desativadas com sucesso!') ;
      exit ;
    end ;

  if Key = VK_Return then
    begin
      if ReativarPreVenda then
        begin
          if not Pergunta('Sim', '* * * CONFIRMA A REATIVAÇÃO DESTA(S) PRÉ-VENDA(S) ? * * *') then
            exit ;

          TblMemPrevenda.First ;
          while not TblMemPrevenda.EOF do
            begin
              if TblMemPrevendaPRVDCMARCADO.Value then
                begin
                  DM.SQLTemplate.Close ;
                  DM.SQLTemplate.SQL.Clear ;
                  DM.SQLTemplate.SQL.Add('Update PREVENDA') ;
                  DM.SQLTemplate.SQL.Add('set PRVDCIMPORT = "N"') ;
                  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + TblMemPrevendaTERMICOD.AsString) ;
                  DM.SQLTemplate.SQL.Add('and   PRVDICOD = ' + TblMemPrevendaPRVDICOD.AsString) ;
                  DM.SQLTemplate.ExecSQL ;
                end ;

              TblMemPrevenda.Next ;
            end ;
        end
      else
        begin
          if (ExistePreVendaSelecionada) or (Dm.SQLConfigVenda.FieldByName('CFVECIMPPREVDCOD').AsString = 'S') then
            begin
              if not Pergunta('Sim', '* * * CONFIRMA A IMPORTAÇÃO DESTA(S) PRÉ-VENDA(S) ? * * *') then
                exit;

              SQLPrevendaItem.Close;
              SQLPrevendaNumerario.Close;
              SQLPrevendaContasReceber.Close;
              SQLNumerario.Close;
              SQLProduto.Close;
              SQLCliente.Close;

              ImportandoPreVenda := True;
              TblMemPrevenda.Close ;
              SQLImportarPrevendaSel.Close;
              SQLImportarPrevendaSel.Open;
              FormTelaImportarPreVenda.Hide ;
              FormTelaItens.Refresh ;
              PedidosImportados := '' ;
              ValorDescontoASerImportado := 0;
              While Not SQLImportarPrevendaSel.EOF Do
                Begin
                  If SQLImportarPrevendaSelPRVDCMARCADO.Value Then
                    Begin
                      If FormTelaItens.EstadoPDVChk = 'AguardandoNovaVenda' Then
                        FormTelaItens.FormKeyDown(Sender, F2, [ssAlt]);

                      TermPVImp := SQLImportarPrevendaSelTERMICOD.Value ;
                      CodPVImp  := SQLImportarPrevendaSelPRVDICOD.Value ;

                      ValorDescontoASerImportado := ValorDescontoASerImportado + SQLImportarPrevendaSelValorDesconto.Value;

                      DM.SQLPreVendaItem1.Close ;
                      DM.SQLPreVendaItem1.MacroByName('MFiltro').Value := 'TERMICOD = ' + SQLImportarPrevendaSelTERMICOD.AsString + ' and ' +
                                                                          'PRVDICOD = ' + SQLImportarPrevendaSelPRVDICOD.AsString ;
                      DM.SQLPreVendaItem1.Open;

                      //INCLUINDO OS ITENS DA PRE-VENDA
                      DM.SQLPreVendaItem1.First;
                      While Not DM.SQLPreVendaItem1.EOF Do
                        Begin
                          If DM.SQLPreVendaItem1PVITN3QTDTROCA.Value > 0 then
                            Begin
                              FormTelaItens.TrocandoItens     := True ;
                              FormTelaItens.EstadoPDVChk      := 'InformandoItensTroca';
                              FormTelaItens.EditQtde.Value    := DM.SQLPreVendaItem1PVITN3QTDTROCA.Value;
                            End
                          else
                            Begin
                              FormTelaItens.TrocandoItens     := False ;
                              FormTelaItens.EstadoPDVChk      := 'InformandoItens';
                              FormTelaItens.EditQtde.Value    := DM.SQLPreVendaItem1PVITN3QTD.Value;
                            End;
                          FormTelaItens.ValorItem             := DM.SQLPreVendaItem1PVITN3VLRUNIT.Value;
                          FormTelaItens.DescItemVlr           := DM.SQLPreVendaItem1PVITN2DESC.Value;
                          FormTelaItens.VendPreVenda          := DM.SQLPreVendaItem1VENDICOD.Value;
                          FormTelaItens.NroSerieProduto       := DM.SQLPreVendaItem1PRODA60NROSERIE.AsString;
                          DescrLivreProd                      := DM.SQLPreVendaItem1PVITTOBS.AsString;
                          if not FileExists('ProcuraApenasCdBarras.txt') then
                            FormTelaItens.EntradaDados.Text := DM.SQLPreVendaItem1PRODICOD.AsString
                          else
                            FormTelaItens.EntradaDados.Text := SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',DM.SQLPreVendaItem1PRODICOD.AsString);

                          FormTelaItens.EntradaDadosKeyDown(Sender, Enter, [ssAlt]);

                          DM.SQLPreVendaItem1.Next;
                        end;
                      // Preparando pra Finalizar a Venda
                      FormTelaItens.EstadoPDVChk  := 'InformandoItens';
                      VendedorVenda               := SQLImportarPrevendaSelVENDICOD.Value;
                      ClienteVenda                := SQLImportarPrevendaSelCLIEA13ID.Value;
                      NomeClienteVenda            := SQLImportarPrevendaSelClienteNome.Value;
                      EnderecoClienteVenda        := SQLImportarPrevendaSelClienteEnd.Value;
                      CidadeClienteVenda          := SQLImportarPrevendaSelClienteCidade.Value;
                      FoneClienteVenda            := SQLImportarPrevendaSelClienteFone.Value;
                      DocumentoClienteVenda       := SQLImportarPrevendaSelClienteDocumento.Value;
                      ClienteDependente           := SQLImportarPrevendaSelCLDPICOD.AsString;
                      ObsCupom                    := SQLImportarPrevendaSelClienteObs.Value;
                      if SQLImportarPrevendaSelClienteObs.Value <> '' then
                        OBSImpressaoCupom  := SQLImportarPrevendaSelClienteObs.Value;

                      if (DM.SQLConfigVenda.FieldByName('CFVECFINVENDADPREVD').AsString = 'S') then
                        begin
                          PlanoVenda := SQLImportarPrevendaSelPLRCICOD.Value;

                          DM.SQLPreVendaNumerario.Close;
                          DM.SQLPreVendaNumerario.MacroByName('MFiltro').Value := 'TERMICOD = ' + SQLImportarPrevendaSelTERMICOD.AsString + ' and ' +
                                                                                  'PRVDICOD = ' + SQLImportarPrevendaSelPRVDICOD.AsString;
                          DM.SQLPreVendaNumerario.Open;


                          DM.SQLPreVendaContasReceber.Close;
                          DM.SQLPreVendaContasReceber.MacroByName('MFiltro').Value := 'TERMICOD = ' + SQLImportarPrevendaSelTERMICOD.AsString + ' and ' +
                                                                                      'PRVDICOD = ' + SQLImportarPrevendaSelPRVDICOD.AsString;
                          DM.SQLPreVendaContasReceber.Open;
                        end;

                      if PedidosImportados = '' then
                        PedidosImportados := (SQLImportarPrevendaSelTERMICOD.AsString + '-' + FormatFloat('000000', SQLImportarPrevendaSelPRVDICOD.AsFloat))
                      else
                        PedidosImportados := PedidosImportados + ',' + (SQLImportarPrevendaSelTERMICOD.AsString + '-' + FormatFloat('000000', SQLImportarPrevendaSelPRVDICOD.AsFloat)) ;
                    end ;
                  SQLImportarPrevendaSel.Next ;
              end ;
              //APÓS INCLUIR OS ITENS
              if VendedorVenda > 0 then
                begin
                  FormTelaItens.rxVendedor.Caption := 'Vendedor: '+SQLImportarPrevendaSelVendedor.Value;
                  FormTelaItens.rxVendedor.Update ;
                end;

              if vImportarPrevenda then
                if (DM.SQLConfigVenda.FieldByName('CFVECFINVENDADPREVD').AsString = 'S') then
                  FormTelaItens.FormKeyDown(Sender, F3, [ssAlt]);
            end
          else
            begin
              Informa('Nenhuma Pré-Venda foi selecionada para importação, operação cancelada !') ;
              Abort;
            end;
        end ;
      Close ;
    end ;
end;

procedure TFormTelaImportarPreVenda.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaImportarPreVenda.DBGridListaColExit(Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaImportarPreVenda.DBGridListaColEnter(Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaImportarPreVenda.DBGridListaCellClick(Column: TColumn);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaImportarPreVenda.EntradaDadosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key =  VK_Return then
    begin
      TblMemPreVenda.DisableControls ;
      TblMemPreVenda.First ;
      while not TblMemPreVenda.Eof do
        begin
          if (TblMemPreVendaTERMICOD.AsString = Copy(EntradaDados.Text, 1, Pos('.', EntradaDados.Text)-1)) and
             (TblMemPreVendaPRVDICOD.AsString = Copy(EntradaDados.Text, Pos('.', EntradaDados.Text)+1, Length(EntradaDados.Text))) then
            begin
              TblMemPreVenda.Edit ;
              TblMemPreVendaPRVDCMARCADO.Value := True ;
              TblMemPreVenda.Post ;
              Break ;
            end ;

          TblMemPreVenda.Next ;
        end ;

      TblMemPreVenda.EnableControls ;

      DBGridListaKeyDown(Sender, Enter, [ssAlt]);
    end ;

{  if key =  VK_Return then
    begin
      if TblMemPreVenda.Locate('ClienteNome',EntradaDados.Text,[]) then
        begin
          DBGridLista.SetFocus;
          Showmessage('Achou!');
        end;
    end; }
end;

procedure TFormTelaImportarPreVenda.SQLPrevendaItemCalcFields(
  DataSet: TDataSet);
begin
{  if SQLPrevendaItemPRODICOD.Value > 0 then
    SQLPrevendaItemDescricaoRed.Value := SQLLocate('PRODUTO','PRODICOD','PRODA30ADESCRREDUZ',SQLPrevendaItemPRODICOD.AsString);}
end;

procedure TFormTelaImportarPreVenda.DSMemPrevendaDataChange(
  Sender: TObject; Field: TField);
begin
  if (TblMemPreVendaPRVDICOD.AsString <> '') and (TblMemPreVendaTERMICOD.AsString <> '')  and (MostraItens) then
    begin
      SQLPrevendaItem.Close;
      SQLPrevendaItem.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPreVendaTERMICOD.AsString + 'and PRVDICOD = ' + TblMemPreVendaPRVDICOD.AsString;
      SQLPrevendaItem.Open;
      SQLPrevendaNumerario.Close;
      SQLPrevendaNumerario.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPreVendaTERMICOD.AsString + 'and PRVDICOD = ' + TblMemPreVendaPRVDICOD.AsString;
      SQLPrevendaNumerario.Open;
      SQLPrevendaContasReceber.Close;
      SQLPrevendaContasReceber.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPreVendaTERMICOD.AsString + 'and PRVDICOD = ' + TblMemPreVendaPRVDICOD.AsString;
      SQLPrevendaContasReceber.Open;
    end;
end;

procedure TFormTelaImportarPreVenda.btAdd10Click(Sender: TObject);
begin
  SQLPrevendaItem.first;
  while not SQLPrevendaItem.Eof do
    begin
      SQLPrevendaItem.edit;
      SQLPrevendaItemPVITN3VLRUNIT.Value := SQLPrevendaItemPVITN3VLRUNIT.Value / 0.9 ;
{      if Frac(SQLPrevendaItemPVITN3VLRUNIT.Value)>0 then
        SQLPrevendaItemPVITN3VLRUNIT.Value := SQLPrevendaItemPVITN3VLRUNIT.Value + 0.01 ; }
      SQLPrevendaItem.post;
      SQLPrevendaItem.Next;
    end;
  SQLPrevendaItem.first;
  DBGridLista.setfocus;
end;

procedure TFormTelaImportarPreVenda.btDiminuir10Click(Sender: TObject);
begin
  SQLPrevendaItem.first;
  while not SQLPrevendaItem.Eof do
    begin
      SQLPrevendaItem.edit;
      SQLPrevendaItemPVITN3VLRUNIT.Value := SQLPrevendaItemPVITN3VLRUNIT.Value * 0.9 ;
      SQLPrevendaItem.post;
      SQLPrevendaItem.Next;
    end;
  SQLPrevendaItem.first;
  DBGridLista.setfocus;
end;

end.
