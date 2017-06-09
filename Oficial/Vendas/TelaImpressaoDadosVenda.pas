unit TelaImpressaoDadosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppDBPipe, ppDBBDE, DB, DBTables, ppBands, ppBarCod, ppVar,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  StdCtrls, Buttons, ppStrtch, ppSubRpt, ppMemo;

type
  TFormTelaImpressaoDadosVenda = class(TForm)
    Imprime: TBitBtn;
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    DSTblTicketPreVendaCab: TDataSource;
    TblTicketPreVendaCab: TTable;
    PipeCab: TppBDEPipeline;
    ProtocoloEntrega: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText17: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText20: TppDBText;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText18: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText8: TppDBText;
    ProtocoloFabricacao: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppLabel4: TppLabel;
    ppDBText15: TppDBText;
    ppLabel5: TppLabel;
    ppDBText19: TppDBText;
    ppLabel6: TppLabel;
    ppDBText23: TppDBText;
    ppLabel7: TppLabel;
    ppDBText24: TppDBText;
    ppLabel9: TppLabel;
    ppLabelLinhaAss: TppLabel;
    ppLabel10: TppLabel;
    ppDBText26: TppDBText;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText27: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel11: TppLabel;
    ppDBText28: TppDBText;
    ppLabel34: TppLabel;
    ppDBText29: TppDBText;
    ppLabel35: TppLabel;
    ppDBText30: TppDBText;
    ppLabel36: TppLabel;
    ppDBText31: TppDBText;
    ProtocoloEncomenda: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel37: TppLabel;
    ppDBText32: TppDBText;
    ppLabel38: TppLabel;
    ppDBText33: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBText40: TppDBText;
    ppLabel46: TppLabel;
    TblTicketPreVendaItem: TTable;
    DSTblTicketPreVendaItem: TDataSource;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaCabNomeEmpresa: TStringField;
    TblTicketPreVendaCabFoneEmpresa: TStringField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabMensagem: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    PipeItem: TppBDEPipeline;
    ppDBText12: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText22: TppDBText;
    ppLabel50: TppLabel;
    ppDBText25: TppDBText;
    ppLabel51: TppLabel;
    ppDBText34: TppDBText;
    ppLabel52: TppLabel;
    ppDBText51: TppDBText;
    ppDBText21: TppDBText;
    TblTicketPreVendaCabMensagem2: TMemoField;
    ppDBText52: TppDBText;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppTitleBand4: TppTitleBand;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDBText47: TppDBText;
    ppLabel53: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBText48: TppDBText;
    TblTicketPreVendaCabDataEmissao: TDateField;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText59: TppDBText;
    procedure ImprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Arquivo       : TextFile ;
    TotalGeral,
    TotalProdutos : Double ;

  public
    { Public declarations }
  end;

var
  FormTelaImpressaoDadosVenda: TFormTelaImpressaoDadosVenda ;

implementation

uses DataModulo, UnitLibrary ;

{$R *.dfm}

procedure TFormTelaImpressaoDadosVenda.ImprimeClick(Sender: TObject);
begin
  if DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').Value = 'LPT1' Then
  Begin
    try
      AssignFile(Arquivo,'LPT1');
      Rewrite(Arquivo);
    except
      ShowMessage('Problemas a tentar abrir a porta de comunicação !');
      CloseFile(Arquivo);
      exit;
    end;
    //Reposiciona
    Writeln(Arquivo, CHR(27));
    //Compactar Letras
    Writeln(Arquivo, CHR(15));
    CloseFile(Arquivo);
  end;
  ppReport1.PrinterSetup.DocumentName := 'Cupom de Dados da Venda';
  
  if DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').Value <> '' then
    ppReport1.PrinterSetup.PrinterName  := DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').asString
  else
    ppReport1.PrinterSetup.PrinterName  := 'Default';

  if DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').Value = '' then
    ppReport1.DeviceType := 'Screen';

  {NomePessoa.Caption     := 'Nome: ' + NomeClienteRec ;
  EnderecoPessoa.Caption := 'Endereco: ' + EnderecoClienteRec ;
  BairroPessoa.Caption   := 'Bairro: ' + BairroCLienteRec ;
  CidadePessoa.Caption   := 'Cidade: ' + CidadeClienteRec + 'Estado: ' + EstadoClienteRec ;
  FonePessoa.Caption     := 'Cidade: ' + FoneClienteRec ;}

  ppReport1.print ;
  Close;
end;

procedure TFormTelaImpressaoDadosVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

end.
