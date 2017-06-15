unit CadastroRemessaBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBActns, ActnList, ImgList, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  RxDBComb, gbCobranca, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroRemessaBancos = class(TFormCadastroTEMPLATE)
    SQLTemplateRMBCICOD: TIntegerField;
    SQLTemplateRMBCDEMIS: TDateTimeField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    CriarArquivodeRemessa1: TMenuItem;
    ReceberArquivoRetorno1: TMenuItem;
    Banrisul2: TMenuItem;
    SQLTitulos: TRxQuery;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLTitulosRMBCICOD: TIntegerField;
    SQLTitulosCTRCA13ID: TStringField;
    SQLTitulosREGISTRO: TDateTimeField;
    SQLTitulosPENDENTE: TStringField;
    SQLTitulosRBCRA60STATUS: TStringField;
    SQLTitulosRBCRDSTATUS: TDateTimeField;
    SQLContaReceber: TRxQuery;
    SQLContaReceberCTRCA13ID: TStringField;
    SQLContaReceberEMPRICOD: TIntegerField;
    SQLContaReceberTERMICOD: TIntegerField;
    SQLContaReceberCTRCICOD: TIntegerField;
    SQLContaReceberCLIEA13ID: TStringField;
    SQLContaReceberCTRCCSTATUS: TStringField;
    SQLContaReceberCTRCINROPARC: TIntegerField;
    SQLContaReceberCTRCDVENC: TDateTimeField;
    SQLContaReceberCTRCN2VLR: TFloatField;
    SQLContaReceberCTRCN2DESCFIN: TFloatField;
    SQLContaReceberNUMEICOD: TIntegerField;
    SQLContaReceberPORTICOD: TIntegerField;
    SQLContaReceberCTRCN2TXJURO: TFloatField;
    SQLContaReceberCTRCN2TXMULTA: TFloatField;
    SQLContaReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContaReceberCTRCDULTREC: TDateTimeField;
    SQLContaReceberCTRCN2TOTREC: TFloatField;
    SQLContaReceberCTRCN2TOTJUROREC: TFloatField;
    SQLContaReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLContaReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContaReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLContaReceberEMPRICODULTREC: TIntegerField;
    SQLContaReceberCUPOA13ID: TStringField;
    SQLContaReceberTPDCICOD: TIntegerField;
    SQLContaReceberPLCTA15COD: TStringField;
    SQLContaReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContaReceberNOFIA13ID: TStringField;
    SQLContaReceberCTRCDEMIS: TDateTimeField;
    SQLContaReceberPENDENTE: TStringField;
    SQLContaReceberREGISTRO: TDateTimeField;
    SQLContaReceberCTRCDREABILSPC: TDateTimeField;
    SQLContaReceberBANCA5CODCHQ: TStringField;
    SQLContaReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContaReceberCTRCA15CONTACHQ: TStringField;
    SQLContaReceberCTRCA15NROCHQ: TStringField;
    SQLContaReceberCTRCA60TITULARCHQ: TStringField;
    SQLContaReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContaReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContaReceberALINICOD: TIntegerField;
    SQLContaReceberPDVDA13ID: TStringField;
    SQLContaReceberCTRCDESTORNO: TDateTimeField;
    SQLContaReceberFRETA13ID: TStringField;
    SQLCliente: TRxQuery;
    QueryBanco: TRxQuery;
    SQLConfigRemessa: TRxQuery;
    SQLTemplateCFRBA13ID: TStringField;
    SQLTemplateRMBCA2IDOCORRENCIA: TStringField;
    SQLTemplateRMBCA12PRIMSG: TStringField;
    SQLTemplateRMBCA60SEGMSG: TStringField;
    SQLTemplateRMBCA2PRIINSTRUCAO: TStringField;
    SQLTemplateRMBCA2SEGINSTRUCAO: TStringField;
    SQLTemplateRMBCN2VLRDIAATRASO: TFloatField;
    SQLTemplateRMBCDLIMDESCONTO: TDateTimeField;
    SQLTemplateRMBCN2VLRDESCONTO: TFloatField;
    SQLTemplateBANCA5COD: TStringField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    ComboOcorrencia: TRxDBComboBox;
    ComboPrimeiraInstrucao: TRxDBComboBox;
    Label9: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    SQLTemplateCFRBA60DESCR: TStringField;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    ButtonCadastroConfig: TSpeedButton;
    DBEdit9: TDBEdit;
    TableConfigRemessa: TTable;
    SQLTemplateRMBCA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    QueryTemp: TRxQuery;
    gbCobranca: TgbCobranca;
    SQLConfigRemessaCFRBA13ID: TStringField;
    SQLConfigRemessaEMPRICOD: TIntegerField;
    SQLConfigRemessaCFRBICOD: TIntegerField;
    SQLConfigRemessaCFRBA60DESCR: TStringField;
    SQLConfigRemessaCFRBA20CODEMPRESA: TStringField;
    SQLConfigRemessaCFRBA30NOMEMPRESA: TStringField;
    SQLConfigRemessaCFRBA2CODCARTEIRA: TStringField;
    SQLConfigRemessaCFRBA4CODAGENCIA: TStringField;
    SQLConfigRemessaCFRBA6CONTACORRE: TStringField;
    SQLConfigRemessaCFRBA1DIGCONTA: TStringField;
    SQLConfigRemessaCFRBA1RATEIOCRED: TStringField;
    SQLConfigRemessaBANCA5COD: TStringField;
    SQLConfigRemessaCFRBTPATH: TMemoField;
    SQLConfigRemessaPENDENTE: TStringField;
    SQLConfigRemessaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA100INFSPC: TStringField;
    DSSQLTitulos: TDataSource;
    SQLConfigRemessaCFRBA2DIGAGENCIA: TStringField;
    SQLConfigRemessaCFRBA2DIGEMPRESA: TStringField;
    SQLConfigRemessaCFRBA30NOMEAGENCIA: TStringField;
    MnADMRemCNAB400: TMenuItem;
    MnADMRemBanrisul: TMenuItem;
    gbTitulo: TgbTitulo;
    SQLConfigRemessaCFRBA15CODCONVENIO: TStringField;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Banrisul2Click(Sender: TObject);
    procedure SQLTemplateRMBCA2PRIINSTRUCAOChange(Sender: TField);
    procedure ButtonCadastroConfigClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure CriarArquivodeRemessa1Click(Sender: TObject);
    procedure MnADMRemCNAB400Click(Sender: TObject);
    procedure MnADMRemBanrisulClick(Sender: TObject);
  private
    { Private declarations }
    function NextNumber(Data : TDateTime; Banco : string) : string;
    procedure PrepareQuery(Query : TQuery; SQL : string);
    procedure GerarRemessa();
    function GerarRemessaComponente : Boolean;
  public
    { Public declarations }
  end;

var
  FormCadastroRemessaBancos: TFormCadastroRemessaBancos;

implementation

uses CadastroRemessaBancosContasReceber, DataModulo, UnitLibrary,
     RemessaBanco, CadastroConfigRemessaBanco, WaitWindow;

{$R *.dfm}

function TFormCadastroRemessaBancos.NextNumber(Data : TDateTime; Banco : string) : string;
var
  Query : TQuery;
  Aux : integer;
begin
  Query := TQuery.Create(Application);
  Query.DatabaseName := 'DB';
  PrepareQuery(Query,'SELECT RMBCICOD FROM REMESSABANCO WHERE RMBCDEMIS = ''' + FormatDateTime('mm/dd/yyyy',Data) + ''' AND BANCA5COD = ''' + Banco + '''');
  Aux := Query.RecordCount;
  Inc(Aux);
  Result := IntToStr(Aux);
  while length(Result) < 2 do
    Result := '0' + Result;
  Query.Free;
end;

procedure TFormCadastroRemessaBancos.PrepareQuery(Query : TQuery; SQL : string);
begin
  if Query.Active then
    Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(SQL);
  Query.Open;
end;

procedure TFormCadastroRemessaBancos.GerarRemessa();
var
  Info : TRemessa;
begin
  PrepareQuery(SQLConfigRemessa,'SELECT * FROM CONFIGREMESSABANCO WHERE CFRBA13ID = ''' + DsTemplate.DataSet.FieldByName('CFRBA13ID').AsString + '''');
  {SETA AS INFORMAÇÕES DO HEADER}
  Info.CODIGOEMPRESA := SQLConfigRemessa.FieldByName('CFRBA20CODEMPRESA').AsString;
  Info.NOMEEMPRESA := SQLConfigRemessa.FieldByName('CFRBA30NOMEMPRESA').AsString;
  Info.NUMEROBANCO := SQLConfigRemessa.FieldByName('BANCA5COD').AsString;
  PrepareQuery(QueryBanco,'SELECT * FROM BANCO WHERE BANCA5COD = ''' + SQLConfigRemessa.FieldByName('BANCA5COD').AsString + '''');
  Info.NOMEBANCO := QueryBanco.FieldByName('BANCA60NOME').AsString;
  Info.NUMEROREMESSA := DsTemplate.DataSet.FieldByName('RMBCICOD').AsString;
  Info.SEQUENCIALREGISTRO := 2;
  {GERA O HEADER DO ARQUIVO}
  GeraHeader(Info,SQLConfigRemessa.FieldByName('CFRBTPATH').AsString + '\CB' + FormatDateTime('ddmm',Date) + NextNumber(Date,Info.NUMEROBANCO) + '.REM');
  if not SQLTitulos.Active then
    SQLTitulos.Open;
  MakeWindow(SQLTitulos.RecordCount,'Aguarde a geração do arquivo de remessa!');
  SQLTitulos.First;
  while not SQLTitulos.Eof do
    begin
      {SETA AS INFORMAÇÕES CONTIDAS A CADA REGISTRO DE COBRANÇA DO ARQUIVO}
      Info.CODIGOCARTEIRA := SQLConfigRemessa.FieldByName('CFRBA2CODCARTEIRA').AsString;
      Info.CODIGOAGENCIA := SQLConfigRemessa.FieldByName('CFRBA4CODAGENCIA').AsString;
      Info.CONTACORRENTE := SQLConfigRemessa.FieldByName('CFRBA6CONTACORRE').AsString;
      Info.CONTARECEBER := SQLTitulos.FieldByName('CTRCA13ID').AsString;
      PrepareQuery(SQLContaReceber,'SELECT * FROM CONTASRECEBER WHERE CTRCA13ID = ''' + Info.CONTARECEBER + '''');
      Info.DESCONTOBONIFICACAO := NoPointComma(SQLContaReceber.FieldByName('CTRCN2DESCFIN').AsFloat);
      if Trim(SQLConfigRemessa.FieldByName('CFRBA1RATEIOCRED').AsString) = 'S' then
        Info.RATEIOCREDITO := 'R'
      else
        Info.RATEIOCREDITO := ' ';
      Info.IDENTIFICACAOOCORRENCIA := DsTemplate.DataSet.FieldByName('RMBCA2IDOCORRENCIA').AsString;
      Info.DATAVENCIMENTOTITULO := CorrectDate(SQLContaReceber.FieldByName('CTRCDVENC').AsDateTime);
      Info.VALORTITULO := NoPointComma(SQLContaReceber.FieldByName('CTRCN2VLR').AsFloat);
      Info.PRIMEIRAINSTRUCAO := DsTemplate.DataSet.FieldByName('RMBCA2PRIINSTRUCAO').AsString;
      Info.SEGUNDAINSTRUCAO := DsTemplate.DataSet.FieldByName('RMBCA2SEGINSTRUCAO').AsString;
      Info.VALORDIAATRASO := NoPointComma(DsTemplate.DataSet.FieldByName('RMBCN2VLRDIAATRASO').AsFloat);
      Info.DATALIMITEDESCONTO := CorrectDate(DsTemplate.DataSet.FieldByName('RMBCDLIMDESCONTO').AsDateTime);
      Info.VALORDESCONTO := NoPointComma(DsTemplate.DataSet.FieldByName('RMBCN2VLRDESCONTO').AsFloat);
      PrepareQuery(SQLCliente,'SELECT * FROM CLIENTE WHERE CLIEA13ID = ''' + SQLContaReceber.FieldByName('CLIEA13ID').AsString + '''');
      case SQLCliente.FieldByName('CLIEA5FISJURID').AsString[1] of
        'F' : begin
                Info.NUMEROINSCRICAOSACADO := DocumentNumber(SQLCliente.FieldByName('CLIEA11CPF').AsString);
                Info.IDENTIFICACAOSACADO := '01';
              end;
        'J' : begin
                Info.NUMEROINSCRICAOSACADO := DocumentNumber(SQLCliente.FieldByName('CLIEA14CGC').AsString);
                Info.IDENTIFICACAOSACADO := '02';
              end;
        else
          begin
            Info.NUMEROINSCRICAOSACADO := '';
            Info.IDENTIFICACAOSACADO := '98';
          end;
      end;
      Info.NOMESACADO := SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsString;
      Info.ENDERECOSACADO := SQLCliente.FieldByName('CLIEA60ENDRES').AsString;
      Info.CEPSACADO := SQLCliente.FieldByName('CLIEA8CEPRES').AsString;
      Info.PRIMEIRAMENSAGEM := DsTemplate.DataSet.FieldByName('RMBCA12PRIMSG').AsString;
      Info.SEGUNDAMENSAGEM := DsTemplate.DataSet.FieldByName('RMBCA60SEGMSG').AsString;
      {GERA O REGISTRO DE COBRANÇA}
      GeraRegistroCobranca(Info);
      Inc(Info.SEQUENCIALREGISTRO);
      SetProgress(Info.SEQUENCIALREGISTRO);
      SQLTitulos.Next;
    end;
  DestroyWindow;
  {GERA O TRAILLER DO ARQUIVO}
  GeraTrailler(Info.SEQUENCIALREGISTRO);
end;

procedure TFormCadastroRemessaBancos.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'REMESSABANCO';
  if not TableConfigRemessa.Active then
    TableConfigRemessa.Open;
  if not QueryBanco.Active then
    QueryBanco.Open;
end;

procedure TFormCadastroRemessaBancos.Button3Click(Sender: TObject);
begin
  inherited;
  if (Sender as TRxSpeedButton).Name = 'Button3' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroRemessaBancosContasReceber,'FormCadastroRemessaBancosContasReceber',True,False,False,'');
    end;
end;

procedure TFormCadastroRemessaBancos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplate.FieldByName('RMBCDEMIS').AsDateTime := Date;
end;

procedure TFormCadastroRemessaBancos.Banrisul2Click(Sender: TObject);
Var
  Arq:TextFile;
  Header,Transacao,Trailer,CTRCA13ID,Data,Status:String;
begin
  inherited;
  If FileExists('RETORNO.TXT') Then
    Begin
      AssignFile(Arq,'RETORNO.TXT');
      Reset(Arq);
      ReadLn(Arq,Header);
      While Not EOF(Arq) Do
        Begin
          ReadLn(Arq,Transacao);
          If EOF(Arq) Then
            Trailer := Transacao
          Else
            Begin
              CTRCA13ID:=Trim(Copy(Transacao,38,25));
              Data:=Copy(Header,97,2)+'/'+Copy(Header,95,2)+'/20'+Copy(Header,99,2);
              Case StrToInt(Copy(Transacao,109,2)) Of
                2:Status:='Confirmação da Entrada';
                3:Status:='Entrada Rejeitada';
                6:Status:='Liquidação Normal';
                7:Status:='Liquidação Parcial';
                8:Status:='Baixa por Pagamento, Liquidação pelo Saldo';
                9:Status:='Devolução Automática';
               10:Status:='Baixado conforme Instruções';
               11:Status:='Arquivo Levantamento';
               12:Status:='Concessão de Abatimento';
               13:Status:='Cancelamento de Abatimento';
               14:Status:='Vencimento Alterado';
               15:Status:='Pagamento em Cartório';
               19:Status:='Confirmação Instrução Protesto';
               20:Status:='Confirmação Instrução  p/ Sustar Protesto';
               21:Status:='Aguardando autorização para protesto por edital';
               22:Status:='Protesto sustado por alt. de vcto. e prazo de cartório';
               23:Status:='Confirmação da Entrada em Cartório.';
               25:Status:='Devolução, Liquidado Anteriormente.';
               26:Status:='Devolvido pelo cartório - erro de informação';
               30:Status:='Cobrança a creditar (em trânsito).';
               31:Status:='Título em trânsito pago em cartório.';
               32:Status:='Reembolso e Transferência (Vêndor Eletrônico)';
               33:Status:='Reembolso e Devolução (Vêndor Eletrônico)';
               40:Status:='Baixa de títulos protestados.';
               41:Status:='Despesa de aponte.';
               42:Status:='Alteração de título.';
               43:Status:='Relação de títulos.';
               44:Status:='Manutenção mensal.';
               45:Status:='Sustação de cartório e envio de título à cartório.';
               46:Status:='Fornecimento de formulário pré-impresso.';
              Else
                Status:='';
              End;
              DM.SQLTemplate.SQL.Text:='UPDATE REMESSABANCOCONTASRECEBER SET Pendente=''S'', RBCRDSTATUS='''+Data+''',RBCRA60STATUS='''+Status+''',PENDENTE=''S'',REGISTRO='''+FormatDateTime('mm/dd/yyyy hh:mm:ss',dm.DataBaseSistema)+''' WHERE CTRCA13ID='''+CTRCA13ID+''' AND (RBCRDSTATUS IS NULL OR RBCRDSTATUS<='''+Data+''')';
              DM.SQLTemplate.ExecSQL;
            End;
        End;
      CloseFile(Arq);
    End
  Else
    Informa('Arquivo não existe!');
end;

procedure TFormCadastroRemessaBancos.SQLTemplateRMBCA2PRIINSTRUCAOChange(
  Sender: TField);
begin
  inherited;
  if DsTemplate.DataSet.State in dsEditModes then
end;

procedure TFormCadastroRemessaBancos.ButtonCadastroConfigClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFRBA13ID');
  FieldOrigem := 'CFRBA13ID';
  CriaFormulario(TFormCadastroConfigRemessaBanco,'FormCadastroConfigRemessaBanco',False,True,True,'');
end;

procedure TFormCadastroRemessaBancos.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if DataSet.FieldByName('CFRBA13ID').AsVariant <> null then
    begin
      PrepareQuery(SQLConfigRemessa,'SELECT * FROM CONFIGREMESSABANCO WHERE CFRBA13ID = ''' + DataSet.FieldByName('CFRBA13ID').AsString + '''');
      DataSet.FieldByName('BANCA5COD').AsString := SQLConfigRemessa.FieldByName('BANCA5COD').AsString;
    end
  else
    begin
      Application.MessageBox('Você deve informar corretamente o número do configurador!','Atenção',MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_OK + MB_ICONINFORMATION);
      DataSet.FieldByName('CFRBA13ID').FocusControl;
      Abort;
    end;
  if DataSet.FieldByName('RMBCA2PRIINSTRUCAO').AsString = '06' then
    if DataSet.FieldByName('RMBCA2SEGINSTRUCAO').AsInteger < 5 then
      begin
        Application.MessageBox('O número mínimo de dias para protesto é cinco dias!','Atenção',MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_OK + MB_ICONINFORMATION);
        DataSet.FieldByName('RMBCA2SEGINSTRUCAO').FocusControl;
        Abort;
      end;
  inherited;
  if DataSet.State in [DSInsert] then
    begin
      PrepareQuery(QueryTemp,'SELECT MAX(RMBCICOD) AS NEXTCODE FROM REMESSABANCO WHERE BANCA5COD = ''' + DataSet.FieldByName('BANCA5COD').AsString + '''');
      if QueryTemp.FieldByName('NEXTCODE').AsInteger > 0 then
        DataSet.FieldByName('RMBCICOD').AsInteger := QueryTemp.FieldByName('NEXTCODE').AsInteger + 1
      else
        DataSet.FieldByName('RMBCICOD').AsInteger := 1;
      QueryTemp.Close;
    end;
end;

procedure TFormCadastroRemessaBancos.CriarArquivodeRemessa1Click(
  Sender: TObject);
begin
  inherited;
//  GerarRemessa;
end;

function TFormCadastroRemessaBancos.GerarRemessaComponente : Boolean;
var
  Info : TRemessa;
  I : Integer;
begin
  /////////////////////////////////////////////////////////////////////////////////
  //ESTA FUNÇAO UTILIZA COMPONENTES DE TERCEIROS PARA GERAR O ARQUIVO DE REMESSA.//
  //COMPONENTE: GBCOBRANCA CLASSE: TGBCOBRANCA                                   //
  //PALETA: GBSOFT                                                               //
  /////////////////////////////////////////////////////////////////////////////////
  gbCobranca.Titulos.Clear;
  PrepareQuery(SQLConfigRemessa,'SELECT * FROM CONFIGREMESSABANCO WHERE CFRBA13ID = ''' + DsTemplate.DataSet.FieldByName('CFRBA13ID').AsString + '''');
  {SETA AS INFORMAÇÕES DO HEADER}
  if not SQLTitulos.Active then SQLTitulos.Open;
  MakeWindow(SQLTitulos.RecordCount,'Aguarde a geração do arquivo de remessa!');
  if not DM.SQLEmpresa.Active then DM.SQLEmpresa.Open;
  DM.SQLEmpresa.Locate('EMPRICOD',IntToStr(EmpresaCorrente),[]);
  SQLTitulos.First;
  I := 0;
  while not SQLTitulos.Eof do
    begin
      {SETA AS INFORMAÇÕES CONTIDAS A CADA REGISTRO DE COBRANÇA DO ARQUIVO}
      SQLContaReceber.Close;
      SQLContaReceber.Open;
      with gbTitulo do
        begin
          SeuNumero         := SQLTitulos.FieldByName('CTRCA13ID').AsString;
          NossoNumero       := SQLTitulos.FieldByName('CTRCA13ID').AsString;
          Carteira          := SQLConfigRemessa.FieldByName('CFRBA2CODCARTEIRA').AsString;
          DataDocumento     := SQLContaReceber.FieldByName('CTRCDEMIS').AsDateTime;
          DataVencimento    := SQLContaReceber.FieldByName('CTRCDVENC').AsDateTime;
          ValorDocumento    := SQLContaReceber.FieldByName('CTRCN2VLR').AsFloat;
          NumeroDocumento   := SQLContaReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString + ' - ' + SQLContaReceber.FieldByName('CTRCINROPARC').AsString;
          if DsTemplate.DataSet.FieldByName('RMBCN2VLRDIAATRASO').AsFloat > 0 then
            ValorMoraJuros  := (DsTemplate.DataSet.FieldByName('RMBCN2VLRDIAATRASO').AsFloat / 30 / 100) * SQLContaReceber.FieldByName('CTRCN2VLR').AsFloat
          else
            ValorMoraJuros  := 0;
          if DsTemplate.DataSet.FieldByName('RMBCN2VLRDESCONTO').AsFloat > 0 then
            ValorDesconto   := (DsTemplate.DataSet.FieldByName('RMBCN2VLRDESCONTO').AsFloat / 30 / 100)  * SQLContaReceber.FieldByName('CTRCN2VLR').AsFloat
          else
            ValorDesconto   := 0;
          if ValorDesconto > 0 then
            DataDesconto    := SQLContaReceber.FieldByName('CTRCDVENC').AsDateTime
          else
            DataDesconto    := 0;
          DataProcessamento := DsTemplate.DataSet.FieldByName('RMBCDEMIS').AsDateTime;

          //if DsTemplate.DataSet.FieldByName('RMBCA2SEGINSTRUCAO').AsString <> '' then
          //  SegundaInstrucaoCodificada := DsTemplate.DataSet.FieldByName('RMBCA2SEGINSTRUCAO').AsString; #ver

          //if SQLTemplate.FieldByName('RMBCA2PRIINSTRUCAO').AsString <> '' then
          //  PrimeiraInstrucaoCodificada := DsTemplate.DataSet.FieldByName('RMBCA2PRIINSTRUCAO').AsString;  #ver

          if DsTemplate.DataSet.FieldByName('RMBCA12PRIMSG').AsString <> '' then
            Instrucoes.Add(DsTemplate.DataSet.FieldByName('RMBCA12PRIMSG').AsString);

          if DsTemplate.DataSet.FieldByName('RMBCA60SEGMSG').AsString <> '' then
            Instrucoes.Add(DsTemplate.DataSet.FieldByName('RMBCA60SEGMSG').AsString);
          {Dados do cedente}
          with Cedente do
          begin
             NumeroCPFCGC        := DM.SQLEmpresaEMPRA14CGC.AsString;
             TipoInscricao       := tiPessoaJuridica;
             Nome                := DM.SQLEmpresaEMPRA60RAZAOSOC.AsString;
             CodigoCedente       := SQLConfigRemessaCFRBA20CODEMPRESA.AsString;
             DigitoCodigoCedente := SQLConfigRemessaCFRBA2DIGEMPRESA.AsString;
             //CodigoConvenio      := SQLConfigRemessa.FieldByName('CFRBA15CODCONVENIO').AsString; #ver
             {Endereço do cedente}
             with Endereco do
             begin
                Rua             := DM.SQLEmpresaEMPRA60END.AsString;
                Endereco.Numero := '';
                Complemento     := '';
                Bairro          := DM.SQLEmpresaEMPRA60BAI.AsString;
                Cidade          := DM.SQLEmpresaEMPRA60CID.AsString;
                Estado          := DM.SQLEmpresaEMPRA2UF.AsString;
                CEP             := DM.SQLEmpresaEMPRA8CEP.AsString;
                Email           := DM.SQLEmpresaEMPRA60EMAIL.AsString;
             end; {with Endereco}

             {Dados bancários do cedente}
             if not SQLConfigRemessa.Active then SQLConfigRemessa.Open;
             with ContaBancaria do
             begin
                Banco.Codigo  := SQLConfigRemessa.FieldByName('BANCA5COD').AsString;
                CodigoAgencia := SQLConfigRemessaCFRBA4CODAGENCIA.AsString;
                DigitoAgencia := SQLConfigRemessaCFRBA2DIGAGENCIA.AsString;
                NumeroConta   := SQLConfigRemessaCFRBA6CONTACORRE.AsString;
                DigitoConta   := SQLConfigRemessaCFRBA1DIGCONTA.AsString;
             end; {with Banco}
          end; {with Cedente}

{          {Se não localizar o sacado, gera erro
          if not dmFinancas.qryClientes.Locate('Codigo',dmFinancas.qryTitulosCodigoCliente.Value,[]) then
             Raise Exception.Create('Cliente (sacado) não localizado');

          {Dados do sacado do título}
          with Sacado do
            begin
              PrepareQuery(SQLCliente,'SELECT * FROM CLIENTE WHERE CLIEA13ID = ''' + SQLContaReceber.FieldByName('CLIEA13ID').AsString + '''');
              case SQLCliente.FieldByName('CLIEA5FISJURID').AsString[1] of
               'F' : begin
                       NumeroCPFCGC  := DocumentNumber(SQLCliente.FieldByName('CLIEA11CPF').AsString);
                       TipoInscricao :=  tiPessoaFisica
                     end;
               'J' : begin
                       NumeroCPFCGC  := DocumentNumber(SQLCliente.FieldByName('CLIEA14CGC').AsString);
                       TipoInscricao := tiPessoaJuridica
                     end;
              else
                 begin
                   NumeroCPFCGC  := '';
                   TipoInscricao := tiOutro;
                 end;
              end;

              Nome := SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsString;

              {Endereço do sacado do título}
              with Endereco do
              begin
                if SQLCliente.FieldByName('CLIEA60ENDCOB').AsString = '' then
                  Rua         := SQLCliente.FieldByName('CLIEA60ENDRES').AsString
                else
                  Rua         := SQLCliente.FieldByName('CLIEA60ENDCOB').AsString;

                Numero      := '';
                Complemento := '';

                if SQLCliente.FieldByName('CLIEA60BAICOB').AsString = '' then
                  Bairro      := SQLCliente.FieldByName('CLIEA60BAIRES').AsString
                else
                  Bairro      := SQLCliente.FieldByName('CLIEA60BAICOB').AsString;

                if SQLCliente.FieldByName('CLIEA60CIDCOB').AsString = '' then
                  Cidade      := SQLCliente.FieldByName('CLIEA60CIDRES').AsString
                else
                  Cidade      := SQLCliente.FieldByName('CLIEA60CIDCOB').AsString;

                if SQLCliente.FieldByName('CLIEA2UFCOB').AsString = '' then
                  Estado      := SQLCliente.FieldByName('CLIEA2UFRES').AsString
                else
                  Estado      := SQLCliente.FieldByName('CLIEA2UFCOB').AsString;

                if SQLCliente.FieldByName('CLIEA8CEPCOB').AsString = '' then
                  CEP         := SQLCliente.FieldByName('CLIEA8CEPRES').AsString
                else
                  CEP         := SQLCliente.FieldByName('CLIEA8CEPCOB').AsString;

                Email       := SQLCliente.FieldByName('CLIEA60EMAIL').AsString;
              end; {with Endereco}

              {Dados bancários do sacado do título}
              with ContaBancaria do
              begin
                Banco.Codigo := '';
                CodigoAgencia := '';
                DigitoAgencia := '';
                NumeroConta := '';
                DigitoConta := '';
              end; {with Banco}
            end; {with Sacado}
        end; {with Titulo}
      SQLTitulos.Next;
      Inc(I);
      SetProgress(I);
      gbCobranca.Titulos.Add(gbTitulo);
    end;
  gbCobranca.DataArquivo   := Now;
  gbCobranca.NumeroArquivo := SQLTemplateRMBCICOD.AsInteger;
  gbCobranca.NomeArquivo   := SQLConfigRemessaCFRBTPATH.AsString + '\REMESSA.TXT';
  gbCobranca.LayoutArquivo := laCNAB400;
  try
    gbCobranca.GerarRemessa;
    DestroyWindow;
    Informa('Arquivo de Remessa Concluído com Sucesso!');
  except
    on E:Exception do
      begin
        DestroyWindow;
        Informa('Problema ao gerar arquivo, ANOTE O ERRO: ' + E.Message);
      end;
  end;
end;
procedure TFormCadastroRemessaBancos.MnADMRemCNAB400Click(
  Sender: TObject);
begin
  inherited;
  GerarRemessaComponente;
end;

procedure TFormCadastroRemessaBancos.MnADMRemBanrisulClick(
  Sender: TObject);
var
  Header,Transacao,Trailer,NF,Valor,CGCCPF,CGCCPFok:String;
  ContaReg,I:Integer;
  Soma:Double;
  Arq:TextFile;
begin
  inherited;
  try
    SQLTitulos.Open;
    MakeWindow(SQLTitulos.RecordCount,'Aguarde a geração do arquivo de remessa!');
    PrepareQuery(SQLConfigRemessa,'SELECT * FROM CONFIGREMESSABANCO WHERE CFRBA13ID = ''' + DsTemplate.DataSet.FieldByName('CFRBA13ID').AsString + '''');
    AssignFile(Arq,SQLConfigRemessaCFRBTPATH.AsString + '\BANRISUL_' + FormatDateTime('ddmmyy hhnnss',Now) + '.TXT');
    ReWrite(Arq);
    SQLEmpresa.Close;
    SQLEmpresa.ParamByName('EMPRICOD').asInteger := StrToInt(EmpresaPadrao);
    SQLEmpresa.Open;
    Header    := '';
    Trailer   := '';
    For I:= 1 To 400 Do
      Begin
        Header    := Header    + ' ';
        Trailer   := Trailer   + ' ';
      End;
    Insert('01REMESSA',Header,1);
    Preenche(Header,'',17,2);
    Insert(SQLConfigRemessaCFRBA20CODEMPRESA.asString,Header,27);
    Insert(SQLConfigRemessaCFRBA30NOMEMPRESA.asString,Header,47);
    Insert('041BANRISUL',Header,77);
    Insert(FormatDateTime('ddmmyy',Date),Header,95);
    Insert('000001',Header,395);
    Header:=Copy(Header,1,400);
    WriteLn(Arq,Header);
    SQLTitulos.First;ContaReg:=2;Soma:=0;
    While Not SQLTitulos.Eof Do
      Begin
        Transacao := '';
        For I:= 1 To 400 Do
          Transacao := Transacao + ' ';
        Insert('1',Transacao,1);
        Insert(SQLConfigRemessaCFRBA20CODEMPRESA.asString,Transacao,18);
        Insert('            '+SQLTitulos.FindField('CTRCA13ID').AsString,Transacao,38);

        DM.ProcuraRegistro('CONTASRECEBER',['CTRCA13ID'],[SQLTitulos.FindField('CTRCA13ID').AsString],1);

//          NF:=SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO',''''+DM.SQLTemplate.FindField('NOFIA13ID').asString+'''');
//          if NF <> '' then
//            Insert('NOTA FISCAL N°:'+NF,Transacao,73)
//          else


        if DM.SQLTemplate.FindField('CTRCA30NRODUPLICBANCO').AsString <> '' then
          Insert('NOTA FISCAL N°:'+ DM.SQLTemplate.FindField('CTRCA30NRODUPLICBANCO').AsString,Transacao,73)
        else
          Insert('NOTA FISCAL N°:'+ DM.SQLTemplate.FindField('CTRCA13ID').AsString,Transacao,73);

        Insert('1',Transacao,108); {108 Tipo de Carteira 01=Cobranca Simples}
        Insert('01',Transacao,109); {109,110 Código de Ocorrência. 01=Remessa 02=Pedido de Baixa ...}
        Insert(Format('%10s',[DM.SQLTemplate.FindField('CTRCA30NRODUPLICBANCO').AsString + ' - ' + DM.SQLTemplate.FindField('CTRCINROPARC').AsString]),Transacao,111);
        Insert(FormatDateTime('ddmmyy',DM.SQLTemplate.FindField('CTRCDVENC').asDateTime),Transacao,121);
        Soma := Soma + DM.SQLTemplate.FindField('CTRCDVENC').asFloat;
        Valor := FormatFloat('00000000000.00',DM.SQLTemplate.FindField('CTRCN2VLR').asFloat);
        Valor := Copy(Valor,1,11)+Copy(Valor,13,2);
        Insert(Valor,Transacao,127);
        Insert('041',Transacao,140);
        Insert('08',Transacao,148); {08 = boleto impresso pelo cliente e cobrado pelo banco, obrigatorio gerar nosso nro 63-72}
        Insert('N',Transacao,150);
        Insert(FormatDateTime('ddmmyy',DM.SQLTemplate.FindField('CTRCDEMIS').asDateTime),Transacao,151);
        if DsTemplate.DataSet.FieldByName('RMBCA2PRIINSTRUCAO').AsString = '' then
          Insert('09',Transacao,157)
        else
          Insert(DsTemplate.DataSet.FieldByName('RMBCA2PRIINSTRUCAO').AsString,Transacao,157);

        if DsTemplate.DataSet.FieldByName('RMBCA2SEGINSTRUCAO').AsString <> '' then
          Insert(DsTemplate.DataSet.FieldByName('RMBCA2SEGINSTRUCAO').AsString,Transacao,159);

        Insert('0',Transacao,161);

        // Juros
        Valor  := FormatFloat('0000000000.00',(DsTemplate.DataSet.FieldByName('RMBCN2VLRDIAATRASO').AsFloat / 30 / 100) * DM.SQLTemplate.FieldByName('CTRCN2VLR').AsFloat);
  //      Valor :=FormatFloat('0000000000.00',(/30/100) * DM.SQLTemplate.FindField('CTRCN2VLR').asFloat));
        Valor := Copy(Valor,1,10)+Copy(Valor,12,2);
        Insert(Valor,Transacao,162);
        Insert('0000000000000',Transacao,180);
        Insert('0000000000000',Transacao,193);
        Insert('0000000000000',Transacao,206);
        DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[DM.SQLTemplate.FindField('CLIEA13ID').asString],1);
        If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString='F' Then
          Begin
            Insert('01',Transacao,219);
            CGCCPF:=DM.SQLTemplate.FindField('CLIEA11CPF').asString;
          End
        Else
          Begin
            Insert('02',Transacao,219);
            CGCCPF:=DM.SQLTemplate.FindField('CLIEA14CGC').asString;
          End;
        CGCCPFok := '';
        For I:=1 To Length(CGCCPF) Do
          If CGCCPF[I] in ['0'..'9'] Then
            CGCCPFok := CGCCPFok + CGCCPF[I];
        Insert(CGCCPFok,Transacao,221);
        Insert(Copy(DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').asString,1,35),Transacao,235);

        if DM.SQLTemplate.FindField('CLIEA60ENDCOB').asString = '' then
          Insert(Copy(DM.SQLTemplate.FindField('CLIEA60ENDRES').asString,1,40),Transacao,275)
        else
          Insert(Copy(DM.SQLTemplate.FindField('CLIEA60ENDCOB').asString,1,40),Transacao,275);

        if DM.SQLTemplate.FindField('CLIEA8CEPCOB').asString = '' then
          Insert(DM.SQLTemplate.FindField('CLIEA8CEPRES').asString,Transacao,327)
        else
          Insert(DM.SQLTemplate.FindField('CLIEA8CEPCOB').asString,Transacao,327);

        if DM.SQLTemplate.FindField('CLIEA60CIDCOB').asString = '' then
          Insert(Copy(DM.SQLTemplate.FindField('CLIEA60CIDRES').asString,1,15),Transacao,335)
        else
          Insert(Copy(DM.SQLTemplate.FindField('CLIEA60CIDCOB').asString,1,15),Transacao,335);

        if DM.SQLTemplate.FindField('CLIEA2UFRES').asString = '' then
          Insert(DM.SQLTemplate.FindField('CLIEA2UFRES').asString,Transacao,350)
        else
          Insert(DM.SQLTemplate.FindField('CLIEA2UFCOB').asString,Transacao,350);

        Insert('0000',Transacao,352);
        Insert('0000000000000',Transacao,357);
        Insert('05',Transacao,370);
        Insert(FormatFloat('000000',ContaReg),Transacao,395);
        Inc(ContaReg);
        Transacao:=Copy(Transacao,1,400);
        WriteLn(Arq,Transacao);
        SQLTitulos.Next;
        SetProgress(ContaReg);
      End;
    SQLTitulos.Close;
    Insert('9',Trailer,1);
    Valor := FormatFloat('00000000000.00',Soma);
    Valor := Copy(Valor,1,11)+Copy(Valor,13,2);
    Insert(Valor,Trailer,28);
    Insert(FormatFloat('000000',ContaReg),Trailer,395);
    Trailer:=Copy(Trailer,1,400);
    WriteLn(Arq,Trailer);
    CloseFile(Arq);
    DestroyWindow;
    Informa('Arquivo de Remessa Concluído com Sucesso!');
  except
    on E:Exception do
      begin
        DestroyWindow;
        Informa('Problema ao gerar arquivo, ANOTE O ERRO: ' + E.Message);
      end;
  end;
end;

end.
