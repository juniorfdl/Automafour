unit TelaConsultaNumeroSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, RxLookup, Buttons, jpeg, ExtCtrls,
  DB, DBTables, RxQuery, ComCtrls, RxRichEd, ShellApi, Printers,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;
var
  TAGSTIPOFONTE_SYS : array[0..2] of TFontStyle = (fsBold, fsItalic, fsUnderline);

type
  TFormTelaConsultaNumeroSerie = class(TFormTelaGeralTEMPLATE)
    Label1: TLabel;
    GroupPesquisa1: TGroupBox;
    Label2: TLabel;
    ComboProduto: TRxDBLookupCombo;
    Label3: TLabel;
    ComboNroSerie: TRxDBLookupCombo;
    GroupPesquisa2: TGroupBox;
    BtnPesquisa1: TSpeedButton;
    Label4: TLabel;
    BtnPesquisa2: TSpeedButton;
    EditNroSerie: TEdit;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    DSSQLProduto: TDataSource;
    SQLProdutoSerie: TRxQuery;
    DSSQLProdutoSerie: TDataSource;
    SQLNotaEntrada: TRxQuery;
    SQLPesquisaSerie: TRxQuery;
    SQLPesquisaSeriePRODICOD: TIntegerField;
    SQLPesquisaSeriePRSEA60NROSERIE: TStringField;
    SQLPesquisaSerieEMPRICOD: TIntegerField;
    SQLPesquisaSerieFORNICOD: TIntegerField;
    SQLPesquisaSerieCLIEA13ID: TStringField;
    SQLPesquisaSerieNOCPA13ID: TStringField;
    SQLPesquisaSerieNOFIA13ID: TStringField;
    SQLPesquisaSerieCUPOA13ID: TStringField;
    SQLPesquisaSeriePDVDA13ID: TStringField;
    SQLPesquisaSerieOSA13ID: TStringField;
    SQLPesquisaSerieMOVDA13ID: TStringField;
    SQLPesquisaSeriePENDENTE: TStringField;
    SQLPesquisaSerieREGISTRO: TDateTimeField;
    SQLNotaEntradaNOCPA13ID: TStringField;
    SQLNotaEntradaNOCPA30NRO: TStringField;
    SQLNotaEntradaNOCPCSTATUS: TStringField;
    SQLNotaEntradaNOCPDEMISSAO: TDateTimeField;
    SQLNotaEntradaNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotaEntradaFORNICOD: TIntegerField;
    SQLNotaEntradaOPESICOD: TIntegerField;
    SQLNotaEntradaCLIEA13ID: TStringField;
    SQLNotaEntradaEMPRICODDEST: TIntegerField;
    SQLNotaEntradaOPESCORIGEMDESTINO: TStringField;
    SQLNotaEntradaOPESA60DESCR: TStringField;
    RichTemp: TRichEdit;
    mmTemp: TMemo;
    RichEditConsultaSerie: TRxRichEdit;
    BtnVisualizar: TSpeedButton;
    SQLNotaFiscal: TRxQuery;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalNOFICSTATUS: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalEMPRICODDEST: TIntegerField;
    SQLNotaFiscalOPESA60DESCR: TStringField;
    SQLNotaFiscalOPESCORIGEMDESTINO: TStringField;
    SQLMovimentoDiverso: TRxQuery;
    SQLMovimentoDiversoMOVDA13ID: TStringField;
    SQLMovimentoDiversoMOVDICOD: TIntegerField;
    SQLMovimentoDiversoMOVDCCONLUIDO: TStringField;
    SQLMovimentoDiversoMOVDDMOVIMENTO: TDateTimeField;
    SQLMovimentoDiversoOPESICOD: TIntegerField;
    SQLMovimentoDiversoEMPRICOD: TIntegerField;
    SQLMovimentoDiversoOPESA60DESCR: TStringField;
    SQLMovimentoDiversoOPESCORIGEMDESTINO: TStringField;
    SQLMovimentoDiversoMOVDA255OBS: TStringField;
    SQLPedidoVenda: TRxQuery;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaPDVDICOD: TIntegerField;
    SQLPedidoVendaPDVDCSTATUS: TStringField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaCLIEA13ID: TStringField;
    SQLPedidoVendaEMPRICOD: TIntegerField;
    SQLCupom: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPOCSTATUS: TStringField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomOPESICOD: TIntegerField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomOPESA60DESCR: TStringField;
    SQLCupomOPESCORIGEMDESTINO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure IncTextForm(RichEdit : TRxRichEdit; Texto : String);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure RichEditConsultaSerieURLClick(Sender: TObject;
      const URLText: String; Button: TMouseButton);
    procedure MontaPesquisaNroSerie(NroSerie:String);
    procedure BtnPesquisa1Click(Sender: TObject);
    procedure BtnPesquisa2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaNumeroSerie: TFormTelaConsultaNumeroSerie;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaConsultaNumeroSerie.FormCreate(Sender: TObject);
begin
  inherited;
  SQLProduto.Open;
  SQLProdutoSerie.Open;
end;

procedure TFormTelaConsultaNumeroSerie.IncTextForm(RichEdit : TRxRichEdit; Texto : String);
Var I, PosInicial, PosFinal : Integer;
    PosInicialTEXTO, PosFinalTEXTO, Posicao : Integer;
Label Inicio;

function EstiloTexto(Estilo : String) : TFontStyles ;
begin
    Result := [];
    if Pos(UpperCase('fsBold'), UpperCase(Estilo)) > 0 then
       Result := [fsBold];
    if Pos(UpperCase('fsItalic'), UpperCase(Estilo)) > 0 then
       Result := Result + [fsItalic];
    if Pos(UpperCase('fsUnderline'), UpperCase(Estilo)) > 0 then
       Result := Result + [fsUnderline];
end;

begin
    PosInicialTEXTO := 0;
    PosFinalTEXTO   := 0;
    PosInicial      := 0;
    PosFinal        := 0;
    Posicao := 0;
    Inicio:
    for I := Posicao to Length(Texto) do
      begin
         if Texto[I - 1] + Texto[I] = '$;' then
            Exit;
         if Texto[I] = '<' then
            begin
               if PosInicialTEXTO <> 0 then
                  PosFinalTEXTO := I;
               PosInicial := I;
            end;
         if Texto[I] = '>' then
            PosFinal   := I;
         if PosInicial < PosFinal then
            begin
              mmTEMP.Lines.Add(Copy(Texto, PosInicial, PosFinal - (PosInicial - 1)));
              PosInicialTEXTO := PosFinal;
              PosInicial := 0;
              PosFinal   := 0;
            end;

         if PosInicialTEXTO < PosFinalTEXTO then
            begin
              RichTEMP.Text      := Copy(Texto, PosInicialTEXTO + 1, PosFinalTEXTO - (PosInicialTEXTO + 1));
              RichTEMP.SelStart  := 0;
              RichTEMP.SelLength := Length(RichTEMP.Text);
              if Trim(Copy(mmTEMP.Text, Pos('[SIZE',mmTEMP.Lines.Text) + 5, Pos('/SIZE]',mmTEMP.Lines.Text) - Pos('[SIZE',mmTEMP.Lines.Text) - 5)) <> '' then
                 RichTEMP.SelAttributes.Size  := StrToInt(Trim(Copy(mmTEMP.Text, Pos('[SIZE',mmTEMP.Lines.Text) + 5, Pos('/SIZE]',mmTEMP.Lines.Text) - Pos('[SIZE',mmTEMP.Lines.Text) - 5)))
              else
                 RichTEMP.SelAttributes.Size  := 8;
              if Trim(Copy(mmTEMP.Text, Pos('[COLOR',mmTEMP.Lines.Text) + 6, Pos('/COLOR]',mmTEMP.Lines.Text) - Pos('[COLOR',mmTEMP.Lines.Text) - 6)) <> '' then
                RichTEMP.SelAttributes.Color := StringToColor(Trim(Copy(mmTEMP.Text, Pos('[COLOR',mmTEMP.Lines.Text) + 6, Pos('/COLOR]',mmTEMP.Lines.Text) - Pos('[COLOR',mmTEMP.Lines.Text) - 6)))
              else
                RichTEMP.SelAttributes.Color := clBlack;
              if Copy(mmTEMP.Text, Pos('[STYLE',mmTEMP.Lines.Text) + 6, Pos('/STYLE]',mmTEMP.Lines.Text) - Pos('[STYLE',mmTEMP.Lines.Text) - 6) <> '' then
                 RichTEMP.SelAttributes.Style := EstiloTexto(Copy(mmTEMP.Text, Pos('[STYLE',mmTEMP.Lines.Text) + 6, Pos('/STYLE]',mmTEMP.Lines.Text) - Pos('[STYLE',mmTEMP.Lines.Text) - 6))
              else
                 RichTEMP.SelAttributes.Style := [];
              RichTEMP.CopyToClipboard;
              RichEdit.SelStart  := Length(RichEdit.Text);
              RichEdit.SelLength := 0;
              RichEdit.ReadOnly  := False;
              RichEdit.PasteFromClipboard;
              RichEdit.ReadOnly  := True;
              Posicao := PosFinalTEXTO;
              PosInicialTEXTO    := 0;
              PosFinalTEXTO   := 0;
              mmTEMP.Clear;
              Break;
            end;
      end;
    goto Inicio;
end;

procedure TFormTelaConsultaNumeroSerie.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
  RichEditConsultaSerie.Print('Consulta Número Série');
end;

procedure TFormTelaConsultaNumeroSerie.RichEditConsultaSerieURLClick(
  Sender: TObject; const URLText: String; Button: TMouseButton);
begin
  inherited;
  ShellExecute(0,'open','http://www.atwnet.com.br',0,0, SW_SHOWMAXIMIZED);
end;
procedure TFormTelaConsultaNumeroSerie.MontaPesquisaNroSerie(NroSerie:String);
var
  CliFornEmpresa, Status : String;
begin
  SQLPesquisaSerie.Close;
  SQLPesquisaSerie.MacroByName('MSerie').AsString := 'PRSEA60NROSERIE = "' + NroSerie + '"';
  SQLPesquisaSerie.Open;
  if not SQLPesquisaSerie.IsEmpty then
    begin
      RichEditConsultaSerie.Lines.Clear;
      IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE] [SIZE 12 /SIZE]> Rastreamento de número de série<$;');
      RichEditConsultaSerie.Lines.Add(Char(13));
      IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE] [SIZE 12 /SIZE] [COLOR clNavy /COLOR]> Número de série : ' + SQLPesquisaSeriePRSEA60NROSERIE.AsString + ' - ' +
      SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLPesquisaSeriePRODICOD.AsString) + '<$;');
      RichEditConsultaSerie.Lines.Add(Char(13));
      IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE] [SIZE 10 /SIZE]> --------------------------------------------------------------------------------- <$;');
      RichEditConsultaSerie.Lines.Add(Char(13));
      if SQLPesquisaSerieNOCPA13ID.AsString <> '' then
        begin
          SQLNotaEntrada.Close;
          SQLNotaEntrada.MacroByName('MFiltro').AsString := 'NOCPA13ID = "' + SQLPesquisaSerieNOCPA13ID.AsString + '"';
          SQLNotaEntrada.Open;
          if not SQLNotaEntrada.IsEmpty then
            begin
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsUnderline /STYLE]> NOTA DE ENTRADA <$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              case SQLNotaEntradaOPESCORIGEMDESTINO.AsString[1] of
                'C' : CliFornEmpresa := 'Cliente - ' + SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"' + SQLNotaEntradaCLIEA13ID.AsString + '"');
                'F' : CliFornEmpresa := 'Fornecedor - ' + SQLLocate('FORNECEDOR','FORNICOD','FORNA60RAZAOSOC',SQLNotaEntradaFORNICOD.AsString);
                'E' : CliFornEmpresa := 'Empresa - ' + SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',SQLNotaEntradaEMPRICODDEST.AsString);
              else
                CliFornEmpresa := 'Não encontrada';
              end;
              case SQLNotaEntradaNOCPCSTATUS.AsString[1] of
                'A' : Status := 'Status : Nota Em Aberto ';
                'E' : Status := 'Status : Nota Encerrada ';
                'C' : Status := 'Status : Nota Cancelada ';
              else
                Status := 'Indefinido';
              end;
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE] [COLOR clRed /COLOR]>' + Status + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Origem : ' + CliFornEmpresa + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Operação : ' + SQLNotaEntradaOPESA60DESCR.AsString     + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Documento : ' + SQLNotaEntradaNOCPA30NRO.AsString       + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Data : ' + SQLNotaEntradaNOCPDRECEBIMENTO.AsString + '<$;');
            end;
        end;
      if SQLPesquisaSerieNOFIA13ID.AsString <> '' then
        begin
          SQLNotaFiscal.Close;
          SQLNotaFiscal.MacroByName('MFiltro').AsString := 'NOFIA13ID = "' + SQLPesquisaSerieNOFIA13ID.AsString + '"';
          SQLNotaFiscal.Open;
          if not SQLNotaFiscal.IsEmpty then
            begin
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> --------------------------------------------------------------------------------- <$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsUnderline /STYLE]> NOTA DE SAIDA <$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              case SQLNotaFiscalOPESCORIGEMDESTINO.AsString[1] of
                'C' : CliFornEmpresa := 'Cliente - ' + SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"' + SQLNotaFiscalCLIEA13ID.AsString + '"');
                'F' : CliFornEmpresa := 'Fornecedor - ' + SQLLocate('FORNECEDOR','FORNICOD','FORNA60RAZAOSOC',SQLNotaFiscalFORNICOD.AsString);
                'E' : CliFornEmpresa := 'Empresa - ' + SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',SQLNotaFiscalEMPRICODDEST.AsString);
              else
                CliFornEmpresa := 'Não encontrada';
              end;
              case SQLNotaFiscalNOFICSTATUS.AsString[1] of
                'A' : Status := 'Status : Nota Em Aberto ';
                'E' : Status := 'Status : Nota Encerrada ';
                'C' : Status := 'Status : Nota Cancelada ';
              else
                Status := 'Indefinido';
              end;
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE] [COLOR clRed /COLOR]>' + Status + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));

              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Origem : ' + CliFornEmpresa + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Operação : ' + SQLNotaFiscalOPESA60DESCR.AsString     + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Documento : ' + SQLNotaFiscalNOFIINUMERO.AsString       + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Data : ' + SQLNotaFiscalNOFIDEMIS.AsString + '<$;');
            end;
        end;
      if SQLPesquisaSerieCUPOA13ID.AsString <> '' then
        begin
          SQLCupom.Close;
          SQLCupom.MacroByName('MFiltro').AsString := 'CUPOA13ID = "' + SQLPesquisaSerieCUPOA13ID.AsString + '"';
          SQLCupom.Open;
          if not SQLCupom.IsEmpty then
            begin
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> --------------------------------------------------------------------------------- <$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsUnderline /STYLE]> CUPOM <$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              case SQLCupomOPESCORIGEMDESTINO.AsString[1] of
                'C' : CliFornEmpresa := 'Cliente - ' + SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"' + SQLCupomCLIEA13ID.AsString + '"');
              else
                CliFornEmpresa := 'Não encontrada';
              end;
              case SQLCupomCUPOCSTATUS.AsString[1] of
                'A' : Status := 'Status : Cupom Ativo ';
                'E' : Status := 'Status : Cupom Encerrado ';
                'C' : Status := 'Status : Cupom Cancelado ';
              else
                Status := 'Indefinido';
              end;
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE] [COLOR clRed /COLOR]>' + Status + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));

              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Origem : ' + CliFornEmpresa + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Operação : ' + SQLCupomOPESA60DESCR.AsString     + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Documento(ID) : ' + SQLCupomCUPOA13ID.AsString + ' - ' +  SQLCupomCUPOINRO.AsString  + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Data : ' + SQLCupomCUPODEMIS.AsString + '<$;');
            end;
        end;
      if SQLPesquisaSerieMOVDA13ID.AsString <> '' then
        begin
          RichEditConsultaSerie.Lines.Add(Char(13));
          SQLMovimentoDiverso.Close;
          SQLMovimentoDiverso.MacroByName('MFiltro').AsString := 'MOVDA13ID = "' + SQLPesquisaSerieMOVDA13ID.AsString + '"';
          SQLMovimentoDiverso.Open;
          if not SQLMovimentoDiverso.IsEmpty then
            begin
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> --------------------------------------------------------------------------------- <$;');
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsUnderline /STYLE]> MOVIMENTO DIVERSO <$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              case SQLMovimentoDiversoOPESCORIGEMDESTINO.AsString[1] of
                'E' : CliFornEmpresa := 'Empresa - ' + SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',SQLMovimentoDiversoEMPRICOD.AsString);
              else
                CliFornEmpresa := 'Não encontrada';
              end;
              case SQLMovimentoDiversoMOVDCCONLUIDO.AsString[1] of
                'S' : Status := 'Status : Concluído ';
                'N' : Status := 'Status : Em Aberto ';
              else
                Status := 'Indefinido';
              end;
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE] [COLOR clRed /COLOR]>' + Status + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));

              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Origem : ' + CliFornEmpresa + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Operação : ' + SQLMovimentoDiversoOPESA60DESCR.AsString     + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Documento : ' + SQLMovimentoDiversoMOVDA13ID.AsString       + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Data : ' + SQLMovimentoDiversoMOVDDMOVIMENTO.AsString + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Observações : ' + SQLMovimentoDiversoMOVDA255OBS.AsString + '<$;');
            end;
        end;
      if SQLPesquisaSeriePDVDA13ID.AsString <> '' then
        begin
          SQLPedidoVenda.Close;
          SQLPedidoVenda.MacroByName('MFiltro').AsString := 'PDVDA13ID = "' + SQLPesquisaSeriePDVDA13ID.AsString + '"';
          SQLPedidoVenda.Open;
          if not SQLPedidoVenda.IsEmpty then
            begin
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> --------------------------------------------------------------------------------- <$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsUnderline /STYLE]> PEDIDO DE VENDA <$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              CliFornEmpresa := 'Cliente : ' + SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"' + SQLPedidoVendaCLIEA13ID.AsString + '"');

              case SQLPedidoVendaPDVDCSTATUS.AsString[1] of
                'A' : Status := 'Status : Pedido de Venda Em Aberto ';
                'E' : Status := 'Status : Pedido de Venda Encerrado ';
                'C' : Status := 'Status : Pedido de Venda Cancelado ';
              else
                Status := 'Indefinido';
              end;
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE] [COLOR clRed /COLOR]>' + Status + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Origem - ' + CliFornEmpresa + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Documento : ' + SQLPedidoVendaPDVDA13ID.AsString  + '<$;');
              RichEditConsultaSerie.Lines.Add(Char(13));
              IncTextForm(RichEditConsultaSerie,'<[STYLE fsBold /STYLE]> Data : ' + SQLPedidoVendaPDVDDEMISSAO.AsString + '<$;');
            end;
        end;
      RichEditConsultaSerie.Lines.Add(Char(13));
      IncTextForm(RichEditConsultaSerie,'<[STYLE fsItalic /STYLE]> ######################################################################################<$;');
      RichEditConsultaSerie.Lines.Add(Char(13));
      IncTextForm(RichEditConsultaSerie,'<[STYLE fsItalic /STYLE]> Advanced Control - www.atwnet.com.br - ' + FormatDateTime('dddddd hh:nn:ss', Now) + '<$;');
    end
  else
    begin
      Informa('Número de série não encontrado!');
    end;
end;

procedure TFormTelaConsultaNumeroSerie.BtnPesquisa1Click(Sender: TObject);
begin
  inherited;
  MontaPesquisaNroSerie(ComboNroSerie.Value);
end;

procedure TFormTelaConsultaNumeroSerie.BtnPesquisa2Click(Sender: TObject);
begin
  inherited;
  MontaPesquisaNroSerie(UpperCase(EditNroSerie.Text));
end;

end.
