 unit RelatorioVendasPeriodo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Db, DBTables, StdCtrls, Mask, ToolEdit, DBCtrls,
  ComCtrls, Buttons, ExtCtrls, RxQuery, RxLookup, OleCtrls, jpeg, Placemnt, ImgList, UCrpe32,
  RXCtrls, VarSys, CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers ;

type
  TFormRelatorioVendasPeriodo = class(TFormRelatorioTEMPLATE)
    SQLVendas: TRxQuery;
    SQLVendedor: TQuery;
    DSSQLVendedor: TDataSource;
    GroupVendedor: TGroupBox;
    SQLVendasCLIEA13ID: TStringField;
    SQLVendasCUPOA13ID: TStringField;
    SQLVendasCUPOCSTATUS: TStringField;
    SQLVendasCUPOCTIPOPADRAO: TStringField;
    SQLVendasCUPODCANC: TDateTimeField;
    SQLVendasCUPODEMIS: TDateTimeField;
    SQLVendasCUPON2ACRESC: TFloatField;
    SQLVendasTOTAL: TFloatField;
    SQLVendasCUPON3BONUSTROCA: TFloatField;
    SQLVendasNROITENS: TFloatField;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasPLRCICOD: TIntegerField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasTERMICOD: TIntegerField;
    SQLVendasCLIEA60RAZAOSOC: TStringField;
    SQLVendasPLRCA60DESCR: TStringField;
    SQLVendasVENDA60NOME: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCUPOCSTATUS: TStringField;
    TblTemporariaCUPOCTIPOPADRAO: TStringField;
    TblTemporariaCUPODCANC: TDateTimeField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaCUPON2TOTITENS: TFloatField;
    TblTemporariaCUPON2ACRESC: TFloatField;
    TblTemporariaCUPON2DESC: TFloatField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaCUPON3BONUSTROCA: TFloatField;
    TblTemporariaNROITENS: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaPLRCICOD: TIntegerField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaPLRCA60DESCR: TStringField;
    TblTemporariaVENDA60NOME: TStringField;
    Report: TCrpe;
    VendConsig_Cheques: TCheckBox;
    TblVendaConsig: TTable;
    SQLVendasConsig: TRxQuery;
    SQLVendasConsigCLIEA13ID: TStringField;
    SQLVendasConsigCUPOA13ID: TStringField;
    SQLVendasConsigCUPOCSTATUS: TStringField;
    SQLVendasConsigCUPOCTIPOPADRAO: TStringField;
    SQLVendasConsigCUPODCANC: TDateTimeField;
    SQLVendasConsigCUPODEMIS: TDateTimeField;
    SQLVendasConsigCUPON2TOTITENS: TFloatField;
    SQLVendasConsigCUPON2ACRESC: TFloatField;
    SQLVendasConsigCUPON2DESC: TFloatField;
    SQLVendasConsigTOTAL: TFloatField;
    SQLVendasConsigEMPRICOD: TIntegerField;
    SQLVendasConsigPLRCICOD: TIntegerField;
    SQLVendasConsigVENDICOD: TIntegerField;
    SQLVendasConsigTERMICOD: TIntegerField;
    SQLVendasConsigCLIEA60RAZAOSOC: TStringField;
    SQLVendasConsigVENDA60NOME: TStringField;
    TblVendaConsigCLIEA13ID: TStringField;
    TblVendaConsigCUPOA13ID: TStringField;
    TblVendaConsigCUPOCSTATUS: TStringField;
    TblVendaConsigCUPOCTIPOPADRAO: TStringField;
    TblVendaConsigCUPODCANC: TDateTimeField;
    TblVendaConsigCUPODEMIS: TDateTimeField;
    TblVendaConsigCUPON2TOTITENS: TFloatField;
    TblVendaConsigCUPON2ACRESC: TFloatField;
    TblVendaConsigCUPON2DESC: TFloatField;
    TblVendaConsigTOTAL: TFloatField;
    TblVendaConsigEMPRICOD: TIntegerField;
    TblVendaConsigPLRCICOD: TIntegerField;
    TblVendaConsigVENDICOD: TIntegerField;
    TblVendaConsigTERMICOD: TIntegerField;
    TblVendaConsigCLIEA60RAZAOSOC: TStringField;
    TblVendaConsigVENDA60NOME: TStringField;
    SQLCheques: TRxQuery;
    TblVendaCheques: TTable;
    SQLChequesCTRCA13ID: TStringField;
    SQLChequesCTRCDEMIS: TDateTimeField;
    SQLChequesCLIEA13ID: TStringField;
    SQLChequesCUPOA13ID: TStringField;
    SQLChequesCTRCCSTATUS: TStringField;
    SQLChequesCTRCA5TIPOPADRAO: TStringField;
    SQLChequesEMPRICOD: TIntegerField;
    SQLChequesBANCA5CODCHQ: TStringField;
    SQLChequesCTRCA10AGENCIACHQ: TStringField;
    SQLChequesCTRCA15CONTACHQ: TStringField;
    SQLChequesCTRCA15NROCHQ: TStringField;
    SQLChequesCTRCA60TITULARCHQ: TStringField;
    SQLChequesCTRCDVENC: TDateTimeField;
    SQLChequesCTRCN2VLR: TFloatField;
    SQLChequesCLIEA60RAZAOSOC: TStringField;
    TblVendaChequesCTRCA13ID: TStringField;
    TblVendaChequesCTRCDEMIS: TDateTimeField;
    TblVendaChequesCLIEA13ID: TStringField;
    TblVendaChequesCUPOA13ID: TStringField;
    TblVendaChequesCTRCCSTATUS: TStringField;
    TblVendaChequesCTRCA5TIPOPADRAO: TStringField;
    TblVendaChequesEMPRICOD: TIntegerField;
    TblVendaChequesBANCA5CODCHQ: TStringField;
    TblVendaChequesCTRCA10AGENCIACHQ: TStringField;
    TblVendaChequesCTRCA15CONTACHQ: TStringField;
    TblVendaChequesCTRCA15NROCHQ: TStringField;
    TblVendaChequesCTRCA60TITULARCHQ: TStringField;
    TblVendaChequesCTRCDVENC: TDateTimeField;
    TblVendaChequesCTRCN2VLR: TFloatField;
    TblVendaChequesCLIEA60RAZAOSOC: TStringField;
    SQLRecebimentos: TRxQuery;
    SQLRecebimentosCTRCA13ID: TStringField;
    SQLRecebimentosRECEICOD: TIntegerField;
    SQLRecebimentosRECEDRECTO: TDateTimeField;
    SQLRecebimentosRECEN2VLRRECTO: TFloatField;
    SQLRecebimentosRECEN2VLRJURO: TFloatField;
    SQLRecebimentosRECEN2VLRMULTA: TFloatField;
    SQLRecebimentosRECEN2DESC: TFloatField;
    SQLRecebimentosRECEN2MULTACOBR: TFloatField;
    SQLRecebimentosEMPRICODREC: TIntegerField;
    SQLRecebimentosTERMICODREC: TIntegerField;
    SQLRecebimentosCLIEA13ID: TStringField;
    SQLRecebimentosRECEA30HIST: TStringField;
    TblVendasPeriodoRecConsig: TTable;
    TblVendasPeriodoRecConsigRECEDRECTO: TDateTimeField;
    TblVendasPeriodoRecConsigRECEN2VLRRECTO: TFloatField;
    TblVendasPeriodoRecConsigCUPOA13ID: TStringField;
    TblVendasPeriodoRecConsigCliente: TStringField;
    TblVendasPeriodoRecConsigPlano: TStringField;
    TblVendasPeriodoRecConsigVendedor: TStringField;
    SQLNotas: TRxQuery;
    SQLNotasCLIEA13ID: TStringField;
    SQLNotasCUPOA13ID: TStringField;
    SQLNotasCUPOCSTATUS: TStringField;
    SQLNotasCUPODEMIS: TDateTimeField;
    SQLNotasCUPON2TOTITENS: TFloatField;
    SQLNotasCUPON2ACRESC: TFloatField;
    SQLNotasCUPON2DESC: TFloatField;
    SQLNotasTOTAL: TFloatField;
    SQLNotasNROITENS: TFloatField;
    SQLNotasEMPRICOD: TIntegerField;
    SQLNotasPLRCICOD: TIntegerField;
    SQLNotasVENDICOD: TIntegerField;
    SQLNotasCLIEA60RAZAOSOC: TStringField;
    SQLNotasPLRCA60DESCR: TStringField;
    SQLNotasVENDA60NOME: TStringField;
    SQLNotasDOC: TIntegerField;
    SQLNotasSERIE: TStringField;
    SQLVendasDOC: TIntegerField;
    RadioTipo: TRadioGroup;
    GroupTipoVenda: TGroupBox;
    ComboTipoVenda: TComboBox;
    ComboVendedor: TRxDBLookupCombo;
    GroupCliente: TGroupBox;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    ComboCliente: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ListTerminal: TRxCheckListBox;
    CheckTerminal: TCheckBox;
    GroupValor: TGroupBox;
    ValorInicial: TCurrencyEdit;
    ValorFinal: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    CKSintetico: TCheckBox;
    GroupPlaca: TGroupBox;
    SQLVendasCUPOA8PLACAVEIC: TStringField;
    TblTemporariaCUPOA8PLACAVEIC: TStringField;
    SQLNotasCUPOA8PLACAVEIC: TStringField;
    PlacaVeiculo: TMaskEdit;
    BtnExportaCSV: TSpeedButton;
    TblTemporariaPROFICODINTERNET: TIntegerField;
    CKSomaTaxaCred: TCheckBox;
    CKIncluiPlaca: TCheckBox;
    CKApenasCanceladas: TCheckBox;
    ckMostraDisplay: TCheckBox;
    TblTemporariaMTBYA30DESCR: TStringField;
    SQLVendasCUPON2DESC2: TFloatField;
    SQLVendasCUPON2TOTITENS: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEmpresaChange(Sender: TObject);
    procedure BtnExportaCSVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendasPeriodo: TFormRelatorioVendasPeriodo;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormRelatorioVendasPeriodo.ExecutarBtnClick(Sender: TObject);
Var
  Aux, Display : string ;
  I:Integer;
  VlrRectoConsig:Double;
begin
  inherited;
  SQLVendas.Close ;
  SQLNotas.Close;

  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '');
  SQLNotas.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL','');

  SQLVendas.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                             'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLNotas.MacrobyName('MData').Value     := 'NOTAFISCAL.NOFIDEMIS  >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                             'NOTAFISCAL.NOFIDEMIS  <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboVendedor.Value <> '' then
    begin
      SQLVendas.MacrobyName('MVendedor').Value  := 'CUPOM.VENDICOD = ' + ComboVendedor.Value;
      SQLNotas.MacroByName('MVendedor').Value   := 'NOTAFISCAL.VENDICOD = ' + ComboVendedor.Value;
    end
  else
    begin
      SQLVendas.MacrobyName('MVendedor').Value  := '0=0' ;
      SQLNotas.MacroByName('MVendedor').Value   := '0=0' ;
    end;

  if PlacaVeiculo.Text <> '' then
    begin
      SQLVendas.MacrobyName('MPlaca').Value  := 'CUPOM.CUPOA8PLACAVEIC = "' + PlacaVeiculo.Text+ '"';
      SQLNotas.MacroByName('MPlaca').Value   := 'NOTAFISCAL.NOFIA8PLACAVEIC = "' + PlacaVeiculo.Text+ '"';
    end
  else
    begin
      SQLVendas.MacrobyName('MPlaca').Value  := '0=0' ;
      SQLNotas.MacroByName('MPlaca').Value   := '0=0' ;
    end;

  if ComboCliente.Value <> '' then
    begin
      SQLVendas.MacrobyName('MCliente').Value   := 'CUPOM.CLIEA13ID      = "' + ComboCliente.Value  + '"';
      SQLNotas.MacroByName('MCliente').Value    := 'NOTAFISCAL.CLIEA13ID = "' + ComboCliente.Value  + '"';
    end
  else
    begin
      SQLVendas.MacrobyName('MCliente').Value   := '0=0';
      SQLNotas.MacroByName('MCliente').Value    := '0=0';
    end;

  if CKApenasCanceladas.Checked then
    begin
       SQLVendas.MacrobyName('MStatus').Value  := 'CUPOM.CUPOCSTATUS = "C"';
       SQLNotas.MacrobyName('MStatus').Value   := 'NOTAFISCAL.NOFICSTATUS = "C"';
    end
  else
    begin
      SQLVendas.MacrobyName('MStatus').Value   := 'CUPOM.CUPOCSTATUS <> "C"';
      SQLNotas.MacrobyName('MStatus').Value    := 'NOTAFISCAL.NOFICSTATUS = "E"';
    end;
  // Seta o Tipo Padrão
  if ComboTipoVenda.ItemIndex >= 0 then
    begin
      case ComboTipoVenda.ItemIndex of
        0 : SQLVendas.MacrobyName('MTipoPadrao').Value := '0=0';
        1 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CRT"';
        2 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CHQP"';
        3 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CHQV"';
        4 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CNV"';
        5 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CRD"';
        6 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "DIN"';
      end;
    end
  else
    SQLVendas.MacrobyName('MTipoPadrao').Value := '0=0';

  //SETAR O(S) TERMINAL(IS);
  if CheckTerminal.Checked then
    SQLVendas.MacrobyName('MTerminal').Value   := 'CUPOM.TERMICOD IN' + MontaSQLdeListaTerminal(ListTerminal)
  else
    SQLVendas.MacrobyName('MTerminal').Value   := '0=0';

//  '';
  if CKSomaTaxaCred.Checked then
    SQLVendas.MacrobyName('MtaxaCred').Value   := ' + CUPOM.CUPON3CREDTAXA - '
  else
    SQLVendas.MacrobyName('MtaxaCred').Value   := ' - ';

  // FILTRO POR FAIXA DE VALORES

  if (ValorInicial.Value > 0) and (ValorFinal.Value > 0) then
    begin
      if ValorInicial.Value <= ValorFinal.Value then
        begin
          SQLVendas.MacroByName('MFaixaValor').Value := ' CUPOM.CUPON2TOTITENS        between ' + ConvFloatToStr(ValorInicial.Value) + ' AND ' + ConvFloatToStr(ValorFinal.Value);
          SQLNotas.MacroByName('MFaixaValor').Value  := ' NOTAFISCAL.NOFIN2VLRPRODUTO between ' + ConvFloatToStr(ValorInicial.Value) + ' AND ' + ConvFloatToStr(ValorFinal.Value);
        end
      else
        begin
          Informa('O valor inicial deve ser menor ou igual ao valor final!');
          Abort;
          Exit;
        end;
    end
  else
    begin
      SQLVendas.MacroByName('MFaixaValor').Value := '0=0';
      SQLNotas.MacroByName('MFaixaValor').Value  := '0=0';
    end;

  Case RadioTipo.ItemIndex of
    0 : begin
          SQLVendas.Open;
        end;
    1 : begin
          SQLNotas.Open;
        end;
    2 : begin
          SQLVendas.Open;
          SQLNotas.Open;
        end;
  end;

  if not TblTemporaria.Active then
    TblTemporaria.Open;
  if SQLVendas.Active then
    begin
      SQLVendas.First;
      while not SQLVendas.Eof do
        begin
          TblTemporaria.Append ;
          for i := 0 to SQLVendas.FieldCount-1 do
            if (SQLVendas.Fields[i].AsString <> '') and (TblTemporaria.FindField(SQLVendas.Fields[i].FieldName)<>Nil) then
              Begin
                TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant ;
                If (SQLVendas.Fields[i].FieldName='CUPOA13ID') and ((SQLVendas.FieldByName('DOC').asString<>'') and (SQLVendas.FieldByName('DOC').AsInteger > 0)) Then
                  Begin
                    TblTemporaria.FieldByName('CUPOA13ID').Clear;
                    TblTemporaria.FieldByName('CUPOA13ID').Value := 'CP-' + SQLVendas.FieldByName('DOC').AsString;
                  End
                else
                  Begin
                    If (SQLVendas.Fields[i].FieldName='CUPOA13ID') and (Display <> '') and ckMostraDisplay.Checked then
                  End;
              End;
          if ckMostraDisplay.Checked then
            begin
              Display := dm.SQLLocate('CUPOM','CUPOA13ID','DISPICOD','"'+SQLVendasCUPOA13ID.AsString+'"');
              if (Display <> '') then
                begin
                  TblTemporaria.FieldByName('CUPOA13ID').Clear;
                  TblTemporaria.FieldByName('CUPOA13ID').Value := 'Disp.'+Display;
                end;
            end;

          TblTemporaria.Post ;
          SQLVendas.Next ;
        end ;
    end;
  TblTemporaria.Last;
  if SQLNotas.Active then
    begin
      SQLNotas.First ;
      while not SQLNotas.Eof do
        begin
          TblTemporaria.Append ;
          for i := 0 to SQLNotas.FieldCount-1 do
            if (SQLNotas.Fields[i].AsString <> '') and (TblTemporaria.FindField(SQLNotas.Fields[i].FieldName)<>Nil) then
              Begin
                TblTemporaria.FieldByName(SQLNotas.Fields[i].FieldName).AsVariant := SQLNotas.Fields[i].AsVariant ;
                If (SQLNotas.Fields[i].FieldName='CUPOA13ID') and (SQLNotas.FieldByName('DOC').asString<>'') Then
                  Begin
                    TblTemporaria.FieldByName('CUPOA13ID').Clear;
                    TblTemporaria.FieldByName('CUPOA13ID').Value:= SQLNotas.FieldByName('SERIE').AsString + '-' + SQLNotas.FieldByName('DOC').AsString;
                  End;
              End;
          TblTemporaria.FieldByName('CUPON3BONUSTROCA').Value := 0;
          TblTemporaria.Post ;
          SQLNotas.Next ;
        end ;
    end;

  if VendConsig_Cheques.Checked then
    begin
      TblVendaConsig.Close;
      try
        TblVendaConsig.DeleteTable;
        TblVendaConsig.CreateTable;
      except
        TblVendaConsig.CreateTable;
      end;

      TblVendaConsig.Open;

      TblVendaCheques.Close;
      try
        TblVendaCheques.DeleteTable;
        TblVendaCheques.CreateTable;
      except
        TblVendaCheques.CreateTable;
      end;

      TblVendaCheques.Open;

      TblVendasPeriodoRecConsig.Close;
      try
        TblVendasPeriodoRecConsig.DeleteTable;
        TblVendasPeriodoRecConsig.CreateTable;
      except
        TblVendasPeriodoRecConsig.CreateTable;
      end;

      TblVendasPeriodoRecConsig.Open;

      SQLVendasConsig.Close;
      SQLVendasConsig.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '');
      SQLVendasConsig.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
      SQLVendasConsig.Open;
      BatchExec(SQLVendasConsig, TblVendaConsig);

      SQLCheques.Close;
      SQLCheques.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '');
      SQLCheques.MacrobyName('MData').Value    := 'CONTASRECEBER.CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                  'CONTASRECEBER.CTRCDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

      SQLCheques.Open ;
      BatchExec(SQLCheques, TblVendaCheques) ;

      SQLRecebimentos.Close ;
      SQLRecebimentos.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'RECEBIMENTO', 'EMPRICODREC');
      SQLRecebimentos.MacrobyName('MData').Value    := 'RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
      SQLRecebimentos.Open ;
      SQLRecebimentos.First ;
      VlrRectoConsig := 0;
      while not SQLRecebimentos.Eof do
        begin
          TblVendasPeriodoRecConsig.Append ;
          TblVendasPeriodoRecConsigRECEDRECTO.Value     := SQLRecebimentosRECEDRECTO.Value ;
          TblVendasPeriodoRecConsigRECEN2VLRRECTO.Value := SQLRecebimentosRECEN2VLRRECTO.Value ;
          TblVendasPeriodoRecConsigCUPOA13ID.Value      := SQLLocate('CONTASRECEBER', 'CTRCA13ID', 'CUPOA13ID', '"' + SQLRecebimentosCTRCA13ID.Value + '"') ;
          Aux := SQLLocate('CUPOM', 'CUPOA13ID', 'CLIEA13ID', '"' + TblVendasPeriodoRecConsigCUPOA13ID.Value + '"') ;
          Aux := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + Aux + '"');
          TblVendasPeriodoRecConsigCliente.Value        := Aux ;
          Aux := SQLLocate('CUPOM', 'CUPOA13ID', 'PLRCICOD', '"' + TblVendasPeriodoRecConsigCUPOA13ID.Value + '"');
          Aux := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', '"' + Aux + '"');
          TblVendasPeriodoRecConsigPlano.Value := Aux;
          Aux := SQLLocate('CUPOM', 'CUPOA13ID', 'VENDICOD', '"' + TblVendasPeriodoRecConsigCUPOA13ID.Value + '"');
          Aux := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', '"' + Aux + '"');
          TblVendasPeriodoRecConsigVendedor.Value := Aux;
          TblVendasPeriodoRecConsig.Post;
          VlrRectoConsig := VlrRectoConsig + SQLRecebimentosRECEN2VLRRECTO.asFloat;
          SQLRecebimentos.Next;
        end;

      //--------------------------------------------------------------------------\\
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Por Periodo + Consignadas + Cheques.rpt';
      Report.ReportTitle       := 'Relatório de Vendas + Consignações + Cheques + Rectos.Consignações';
      Report.WindowStyle.Title := 'Relatório de Vendas + Consignações + Cheques + Rectos.Consignações';
      Report.Formulas.Retrieve;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa';
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'PeriodoEmissao' ;
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                            FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name := 'Vendedor';
      if ComboVendedor.Text <> '' then
        Report.Formulas.Formula.Text := '"' + ComboVendedor.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todos"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name := 'PlacaVeiculo';
      if PlacaVeiculo.Text <> '' then
        Report.Formulas.Formula.Text := '"' + PlacaVeiculo.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todas"';

      Report.Formulas.Name := 'TotalRecConsig';
      Report.Formulas.Formula.Text := ConvFloatToStr(VlrRectoConsig);
    end ;

  if not VendConsig_Cheques.Checked then
    begin
      if not CKSintetico.Checked then
        Report.ReportName   := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Por Periodo.rpt'
      else
        Report.ReportName   := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Por Periodo Sintetico.rpt';
      Report.ReportTitle       := 'Relatório de Vendas Por Período';
      Report.WindowStyle.Title := 'Relatório de Vendas Por Período';
      Report.Formulas.Retrieve ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa';
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'PeriodoEmissao' ;
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                      FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name := 'Vendedor' ;
      if ComboVendedor.Text <> '' then
        Report.Formulas.Formula.Text := '"' + ComboVendedor.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todos"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name := 'PlacaVeiculo';
      if PlacaVeiculo.Text <> '' then
        Report.Formulas.Formula.Text := '"' + PlacaVeiculo.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todas"';
      //--------------------------------------------------------------------------\\
      if not CKSintetico.Checked then
      begin
        Report.Formulas.Name := 'placa';
        if CKIncluiPlaca.Checked then
          Report.Formulas.Formula.Text := '{RelVendasPeriodo.CUPOA8PLACAVEIC}'
        else
          Report.Formulas.Formula.Text := '{RelVendasPeriodo.VENDA60NOME}';
      end;
    end ;
//  AjustaCaminhoCrystal;
  Report.Execute ;
end;

procedure TFormRelatorioVendasPeriodo.FormCreate(Sender: TObject);
begin
  inherited;
  SQLVendedor.Open;
  SQLCliente.Open;
  ComboTipoVenda.ItemIndex := 0;
  if not UsuarioMaster then
    ListaTerminal(ListTerminal,EmpresaPadrao)
  else
    ListaTerminal(ListTerminal,'');

  if dm.SQLUsuario.FieldByName('USUACPERMVVENDAS').Value <> 'S' then
    begin
      de.Enabled  := False;
      ate.Enabled := False;
    end;
end;

procedure TFormRelatorioVendasPeriodo.ComboVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormRelatorioVendasPeriodo.ComboEmpresaChange(Sender: TObject);
begin
  inherited;
  if ComboEmpresa.Text <> 'Todas' then
    ListaTerminal(ListTerminal,ComboEmpresa.Value)
  else
    ListaTerminal(ListTerminal,'');

end;

procedure TFormRelatorioVendasPeriodo.BtnExportaCSVClick(Sender: TObject);
Var
  Aux : string ;
  I:Integer;
  VlrRectoConsig:Double;
  CaminhoNomeArquivo, Linha : String;
  Arquivo : TextFile;
begin
  inherited;

  TblTemporaria.Close ;
  try
    TblTemporaria.DeleteTable ;
    TblTemporaria.CreateTable ;
  except
    on E:Exception do
      begin
        if pos('Table is busy',E.Message) > 0 then
          Informa('A tabela já está sendo usada por outro relatório, por favor feche todos relatórios e tente novamente.');
        TblTemporaria.CreateTable ;
      end;
  end ;
  TblTemporaria.Open ;

  SQLVendas.Close ;
  SQLNotas.Close;

  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '');
  SQLNotas.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL','');

  SQLVendas.MacrobyName('MData').Value   :=  'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                             'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLNotas.MacrobyName('MData').Value    := 'NOTAFISCAL.NOFIDEMIS  >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                            'NOTAFISCAL.NOFIDEMIS  <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboVendedor.Value <> '' then
    begin
      SQLVendas.MacrobyName('MVendedor').Value  := 'CUPOM.VENDICOD = ' + ComboVendedor.Value;
      SQLNotas.MacroByName('MVendedor').Value   := 'NOTAFISCAL.VENDICOD = ' + ComboVendedor.Value;
    end
  else
    begin
      SQLVendas.MacrobyName('MVendedor').Value  := '0=0' ;
      SQLNotas.MacroByName('MVendedor').Value   := '0=0';
    end;

  if PlacaVeiculo.Text <> '' then
    begin
      SQLVendas.MacrobyName('MPlaca').Value  := 'CUPOM.CUPOA8PLACAVEIC = "' + PlacaVeiculo.Text+ '"';
      SQLNotas.MacroByName('MPlaca').Value   := 'NOTAFISCAL.NOFIA8PLACAVEIC = "' + PlacaVeiculo.Text+ '"';
    end
  else
    begin
      SQLVendas.MacrobyName('MPlaca').Value  := '0=0' ;
      SQLNotas.MacroByName('MPlaca').Value   := '0=0';
    end;

  if ComboCliente.Value <> '' then
    begin
      SQLVendas.MacrobyName('MCliente').Value   := 'CUPOM.CLIEA13ID      = "' + ComboCliente.Value  + '"';
      SQLNotas.MacroByName('MCliente').Value    := 'NOTAFISCAL.CLIEA13ID = "' + ComboCliente.Value  + '"';
    end
  else
    begin
      SQLVendas.MacrobyName('MCliente').Value   := '0=0';
      SQLNotas.MacroByName('MCliente').Value    := '0=0';
    end;

  // Seta o Tipo Padrão
  if ComboTipoVenda.ItemIndex >= 0 then
    begin
      case ComboTipoVenda.ItemIndex of
        0 : SQLVendas.MacrobyName('MTipoPadrao').Value := '0=0';
        1 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CRT"';
        2 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CHQP"';
        3 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CHQV"';
        4 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CNV"';
        5 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "CRD"';
        6 : SQLVendas.MacrobyName('MTipoPadrao').Value := 'CUPOM.CUPOCTIPOPADRAO = "DIN"';
      end;
    end
  else
    SQLVendas.MacrobyName('MTipoPadrao').Value := '0=0';

  //SETAR O(S) TERMINAL(IS);
  if CheckTerminal.Checked then
    begin
      SQLVendas.MacrobyName('MTerminal').Value   := 'CUPOM.TERMICOD IN'      + MontaSQLdeListaTerminal(ListTerminal);
    end
  else
    begin
      SQLVendas.MacrobyName('MTerminal').Value   := '0=0';
    end;

  // FILTRO POR FAIXA DE VALORES

  if (ValorInicial.Value > 0) and (ValorFinal.Value > 0) then
    begin
      if ValorInicial.Value <= ValorFinal.Value then
        begin
          SQLVendas.MacroByName('MFaixaValor').Value := ' CUPOM.CUPON2TOTITENS        between ' + ConvFloatToStr(ValorInicial.Value) + ' AND ' + ConvFloatToStr(ValorFinal.Value);
          SQLNotas.MacroByName('MFaixaValor').Value  := ' NOTAFISCAL.NOFIN2VLRPRODUTO between ' + ConvFloatToStr(ValorInicial.Value) + ' AND ' + ConvFloatToStr(ValorFinal.Value);
        end
      else
        begin
          Informa('O valor inicial deve ser menor ou igual ao valor final!');
          Abort;
          Exit;
        end;
    end
  else
    begin
      SQLVendas.MacroByName('MFaixaValor').Value := '0=0';
      SQLNotas.MacroByName('MFaixaValor').Value  := '0=0';
    end;

  Case RadioTipo.ItemIndex of
    0 : begin
          SQLVendas.Open;
        end;
    1 : begin
          SQLNotas.Open;
        end;
    2 : begin
          SQLVendas.Open;
          SQLNotas.Open;
        end;
  end;

  if not TblTemporaria.Active then
    TblTemporaria.Open;
  if SQLVendas.Active then
    begin
      SQLVendas.First;
      while not SQLVendas.Eof do
        begin
          TblTemporaria.Append ;
          for i := 0 to SQLVendas.FieldCount-1 do
            if (SQLVendas.Fields[i].AsString <> '') and (TblTemporaria.FindField(SQLVendas.Fields[i].FieldName)<>Nil) then
              Begin
                TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant ;
                If (SQLVendas.Fields[i].FieldName='CUPOA13ID') and ((SQLVendas.FieldByName('DOC').asString<>'') and (SQLVendas.FieldByName('DOC').AsInteger > 0)) Then
                  Begin
                    TblTemporaria.FieldByName('CUPOA13ID').Clear;
                    TblTemporaria.FieldByName('CUPOA13ID').Value := 'CP-' + SQLVendas.FieldByName('DOC').AsString;
                  End;
              End;
          TblTemporaria.Post ;
          SQLVendas.Next ;
        end ;
    end;
  TblTemporaria.Last;
  if SQLNotas.Active then
    begin
      SQLNotas.First ;
      while not SQLNotas.Eof do
        begin
          TblTemporaria.Append ;
          for i := 0 to SQLNotas.FieldCount-1 do
            if (SQLNotas.Fields[i].AsString <> '') and (TblTemporaria.FindField(SQLNotas.Fields[i].FieldName)<>Nil) then
              Begin
                TblTemporaria.FieldByName(SQLNotas.Fields[i].FieldName).AsVariant := SQLNotas.Fields[i].AsVariant ;
                If (SQLNotas.Fields[i].FieldName='CUPOA13ID') and (SQLNotas.FieldByName('DOC').asString<>'') Then
                  Begin
                    TblTemporaria.FieldByName('CUPOA13ID').Clear;
                    TblTemporaria.FieldByName('CUPOA13ID').Value:= SQLNotas.FieldByName('SERIE').AsString + '-' + SQLNotas.FieldByName('DOC').AsString;
                  End;
              End;
          TblTemporaria.Post ;
          SQLNotas.Next ;
        end ;
    end;

  TblTemporaria.First ;
  while not TblTemporaria.Eof do
    begin
      Aux := '';
      Aux := SQLLocate('CLIENTE', 'CLIEA13ID', 'PROFA13ID', '"' + TblTemporariaCLIEA13ID.AsString + '"');
      if (Aux = '') then
        TblTemporaria.Delete // Se nao achou profissional ligado ao cliente, apaga registro
      else
        begin
          Aux := SQLLocate('PROFISSIONAL', 'PROFA13ID', 'PROFICODINTERNET', '"' + Aux + '"');
          if (Aux = '') then
            TblTemporaria.Delete // Se achou profissional mas nao tem cod.internet de ligacao ao cliente, apaga registro
          else
            begin
              TblTemporaria.Edit;   // Se achou profissional ligado ao cliente e tem cod.internet, alimenta o cod. na tab temporaria e avanca
              TblTemporariaPROFICODINTERNET.Value := StrToInt(Aux);
              TblTemporaria.Post;
              TblTemporaria.next;
            end;
        end;
    end;
  // Gerar arquivo txt
  if Pergunta('Nao','Deseja gerar o arquivo TXT?') then
    begin
      CaminhoNomeArquivo := '..\Vendas_de_'+ FormatDateTime('ddmmyy',de.date)+'_ate_'+FormatDateTime('ddmmyy',Ate.date)+'.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);

      TblTemporaria.First ;
      while not TblTemporaria.Eof do
        begin
          Linha := TblTemporariaPROFICODINTERNET.AsString          + ';' +
                   FormatFloat('##0.00', TblTemporariaTOTAL.Value) + ';' +   // Pontos = Venda
                   TblTemporariaCupoa13id.AsString                 + ';' +
                   FormatFloat('##0.00', TblTemporariaTOTAL.Value) + ';' +
                   TblTemporariaCUPODEMIS.AsString                 + ';' +
                   TblTemporariaCLIEA60RAZAOSOC.AsString           + ';' +
                   ' ' ;
          Writeln(Arquivo,Linha);
          TblTemporaria.next;
        end;
      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Exportação concluida com sucesso!');
    end;
end;

end.

