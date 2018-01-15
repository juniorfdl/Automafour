unit TelaBaixarChequesRecebidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Mask, ToolEdit, Buttons, jpeg,
  ExtCtrls, DBCtrls, DB, DBTables, RxQuery, Grids, DBGrids, RxLookup, VarSys,
  UnitLibrary, CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaBaixarChequesRecebidos = class(TFormTelaGeralTEMPLATE)
    DBGridLista: TDBGrid;
    SQLContasReceber: TRxQuery;
    SQLRecebimento: TRxQuery;
    SQLCliente: TRxQuery;
    TblRecebimento: TTable;
    DSTblRecebimento: TDataSource;
    TblRecebimentoParcela: TIntegerField;
    TblRecebimentoClienteNome: TStringField;
    TblRecebimentoDtVencimento: TDateTimeField;
    TblRecebimentoValor: TFloatField;
    TblRecebimentoValorJuro: TFloatField;
    TblRecebimentoValorMulta: TFloatField;
    TblRecebimentoValorDesconto: TFloatField;
    TblRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TFloatField;
    SQLRecebimentoRECEN2VLRJURO: TFloatField;
    SQLRecebimentoRECEN2VLRMULTA: TFloatField;
    SQLRecebimentoRECEN2DESC: TFloatField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TFloatField;
    DSSQLRecebimento: TDataSource;
    TblRecebimentoBanco: TStringField;
    TblRecebimentoAgencia: TStringField;
    TblRecebimentoConta: TStringField;
    TblRecebimentoCheque: TStringField;
    TblRecebimentoDeposito: TDateField;
    TblRecebimentoBaixar: TBooleanField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberPORTA60DESCR: TStringField;
    SQLContasReceberALINA30DESCR: TStringField;
    TblRecebimentoPortador: TStringField;
    TblRecebimentoAlinea: TStringField;
    SQLPortador: TRxQuery;
    SQLAlinea: TRxQuery;
    Label1: TLabel;
    ComboPortador: TRxDBLookupCombo;
    Label2: TLabel;
    ComboAlinea: TRxDBLookupCombo;
    Label6: TLabel;
    TblRecebimentoValorTotal: TFloatField;
    DSSQLCliente: TDataSource;
    DSSQLPortador: TDataSource;
    DSSQLAlinea: TDataSource;
    ComboCliente: TRxDBLookupCombo;
    Label8: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLTotalCheque: TRxQuery;
    SQLTotalChequeTotal: TFloatField;
    SQLContasReceberCTRCA13ID: TStringField;
    TblRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    RadioData: TRadioGroup;
    GroupPeriodo: TGroupBox;
    Label3: TLabel;
    De: TDateEdit;
    Label4: TLabel;
    Ate: TDateEdit;
    Label5: TLabel;
    DtBaixa: TDateEdit;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLAlineaALINICOD: TIntegerField;
    SQLAlineaALINA30DESCR: TStringField;
    GroupBanco: TGroupBox;
    ComboOperacaoBanco: TRxDBLookupCombo;
    Label7: TLabel;
    SQLOperacaoBanco: TRxQuery;
    SQLStatusCheque: TRxQuery;
    DSSQLOperacaoBanco: TDataSource;
    DSSQLStatusCheque: TDataSource;
    Label11: TLabel;
    ComboContaCorrente: TRxDBLookupCombo;
    MemoHist: TMemo;
    SQLContaCorrente: TRxQuery;
    DSSQLContaCorrente: TDataSource;
    SQLContaCorrenteCTCRICOD: TIntegerField;
    SQLContaCorrenteCTCRA60TITULAR: TStringField;
    SQLOperacaoBancoOPBCICOD: TIntegerField;
    SQLOperacaoBancoOPBCA60DESCR: TStringField;
    SQLStatusChequeALINICOD: TIntegerField;
    SQLStatusChequeALINA30DESCR: TStringField;
    Label9: TLabel;
    TotalCheque: TCurrencyEdit;
    GroupSituacao: TGroupBox;
    ComboStatus: TRxDBLookupCombo;
    RadioMovimento: TRadioGroup;
    Label10: TLabel;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    ComboPortadorNovo: TRxDBLookupCombo;
    DSSQLPortadorNovo: TDataSource;
    SQLPortadorNovo: TRxQuery;
    SQLPortadorNovoPORTICOD: TIntegerField;
    SQLPortadorNovoPORTA60DESCR: TStringField;
    GroupPadrao: TGroupBox;
    Padrao1: TRadioButton;
    Padrao2: TRadioButton;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    BtnBaixarDoc: TSpeedButton;
    BtnSelecionarDoc: TSpeedButton;
    procedure SQLRecebimentoBeforePost(DataSet: TDataSet);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure TblRecebimentoNewRecord(DataSet: TDataSet);
    procedure TblRecebimentoValorJuroChange(Sender: TField);
    procedure TblRecebimentoValorMultaChange(Sender: TField);
    procedure TblRecebimentoValorDescontoChange(Sender: TField);
    procedure DSTblRecebimentoDataChange(Sender: TObject; Field: TField);
    procedure TblRecebimentoAfterPost(DataSet: TDataSet);
    procedure RadioMovimentoClick(Sender: TObject);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    procedure AtualizaTotal ;
  public
  ValorOriginal : Double;
    { Public declarations }
  end;

var
  FormTelaBaixarChequesRecebidos: TFormTelaBaixarChequesRecebidos;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaBaixarChequesRecebidos.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaBaixarChequesRecebidos.SQLRecebimentoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                DM.CodigoAutomatico('RECEBIMENTO', DSSQLRecebimento, SQLRecebimento, 0, 1);
  end;
end;

procedure TFormTelaBaixarChequesRecebidos.BtnSelecionarDocClick(Sender: TObject);
begin
  inherited;
  if TblRecebimento.Active then TblRecebimento.Close;
  try
    TblRecebimento.DeleteTable;
  except
  end;
  TblRecebimento.CreateTable;
  TblRecebimento.AddIndex('','CTRCA13ID',[ixPrimary]);
//  TblRecebimento.AddIndex('Data','DtVencimento',[ixCaseInsensitive]);
  TblRecebimento.AddIndex('ClienteNome','ClienteNome',[ixCaseInsensitive]);


  TblRecebimento.IndexFieldNames := 'ClienteNome' ;
  TblRecebimento.Open ;

  SQLContasReceber.Close;
  case RadioData.ItemIndex of
    0 : SQLContasReceber.MacroByName('MData').Value := 'CR.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'CR.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
    1 : SQLContasReceber.MacroByName('MData').Value := 'CR.CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'CR.CTRCDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
    2 : SQLContasReceber.MacroByName('MData').Value := 'CR.CTRCDDEPOSCHQ >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'CR.CTRCDDEPOSCHQ <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  end;
  if ComboCliente.Value <> '' then
    SQLContasReceber.MacroByName('MCliente').Value   := 'CR.CLIEA13ID = ' + '"' + ComboCliente.Value + '"'
  else
    SQLContasReceber.MacroByName('MCliente').Value   := '0=0';

  if ComboPortador.Value <> '' then
    SQLContasReceber.MacroByName('MPortador').Value  := 'CR.PORTICOD = ' +ComboPortador.Value
  else
    SQLContasReceber.MacroByName('MPortador').Value  := '0=0';

  if ComboAlinea.Value <> '' then
    SQLContasReceber.MacroByName('MAlinea').Value   := 'CR.ALINICOD = ' +ComboAlinea.Value
  else
    SQLContasReceber.MacroByName('MAlinea').Value   := '0=0';

  case RadioMovimento.ItemIndex of
    0 : SQLContasReceber.MacroByName('Tipo').AsString  := 'CR.CTRCDDEPOSCHQ IS NULL AND CTRCN2TOTREC < CR.CTRCN2VLR ';
    1 : SQLContasReceber.MacroByName('Tipo').AsString  := 'CR.CTRCDDEPOSCHQ IS NOT NULL AND CTRCN2TOTREC < CR.CTRCN2VLR';
    2 : SQLContasReceber.MacroByName('Tipo').AsString  := 'CR.CTRCDDEPOSCHQ IS NULL AND CTRCN2TOTREC < CR.CTRCN2VLR';
  end;

  SQLContasReceber.Open;
  SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      TblRecebimento.Append;
      TblRecebimento.FieldByName('CTRCA13ID').AsString      := SQLContasReceber.FieldByName('CTRCA13ID').AsString;
      TblRecebimento.FieldByName('CLIEA13ID').AsString      := SQLContasReceber.FieldByName('CLIEA13ID').AsString;
      TblRecebimento.FieldByName('DtVencimento').AsDateTime := SQLContasReceber.FieldByName('CTRCDVENC').AsDateTime;
      if SQLContasReceber.FieldByName('CTRCA60TITULARCHQ').AsString <> '' then
        TblRecebimento.FieldByName('ClienteNome').AsString  := SQLContasReceber.FieldByName('CTRCA60TITULARCHQ').AsString
      else
        TblRecebimento.FieldByName('ClienteNome').AsString  := SQLContasReceber.FieldByName('CLIEA60RAZAOSOC').AsString;
      TblRecebimento.FieldByName('Parcela').Value           := SQLContasReceber.FieldByName('CTRCINROPARC').Value;
      TblRecebimento.FieldByName('Valor').AsFloat           := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
      TblRecebimento.FieldByName('Banco').AsString          := SQLContasReceber.FieldByName('BANCA5CODCHQ').AsString;
      TblRecebimento.FieldByName('Agencia').AsString        := SQLContasReceber.FieldByName('CTRCA10AGENCIACHQ').AsString;
      TblRecebimento.FieldByName('Conta').AsString          := SQLContasReceber.FieldByName('CTRCA15CONTACHQ').AsString;
      TblRecebimento.FieldByName('Cheque').AsString         := SQLContasReceber.FieldByName('CTRCA15NROCHQ').AsString;
      if SQLContasReceber.FieldByName('CTRCDDEPOSCHQ').AsVariant <> Null then
        TblRecebimento.FieldByName('Deposito').AsDateTime   := SQLContasReceber.FieldByName('CTRCDDEPOSCHQ').AsDateTime
      else
        TblRecebimento.FieldByName('Deposito').AsDateTime   := DtBaixa.Date;
      TblRecebimento.FieldByName('Portador').AsString       := SQLContasReceber.FieldByName('PORTA60DESCR').AsString;
      TblRecebimento.FieldByName('Alinea').AsString         := SQLContasReceber.FieldByName('ALINA30DESCR').AsString;
      if Padrao1.Checked then
        TblRecebimento.FieldByName('Baixar').Value          := True
      else
        TblRecebimento.FieldByName('Baixar').Value          := False;

      TblRecebimento.FieldByName('ValorTotal').AsFloat      := (TblRecebimento.FieldByName('Valor').AsFloat +
                                                                TblRecebimento.FieldByName('ValorJuro').AsFloat +
                                                                TblRecebimento.FieldByName('ValorMulta').AsFloat) -
                                                                TblRecebimento.FieldByName('ValorDesconto').AsFloat;
      TblRecebimento.Post;
      SQLContasReceber.Next;
    end;
  AtualizaTotal ;
end;

procedure TFormTelaBaixarChequesRecebidos.FormCreate(Sender: TObject);
begin
  inherited;
  DtBaixa.Date := dm.DataBaseSistema;
  De.Date      := dm.DataBaseSistema;
  Ate.Date     := dm.DataBaseSistema;

  ComboEmpresa.Value := EmpresaPadrao;
  if not UsuarioMaster then
    SQLEmpresa.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + IntToStr(EmpresaCorrente)
  else
    SQLEmpresa.MacroByName('MEmpresa').AsString := '0=0';
  SQLEmpresa.Open ;
  SQLCliente.Open ;
  SQLPortador.Open ;
  SQLPortadorNovo.Open;
  SQLAlinea.Open ;
  SQLOperacaoBanco.Open;
  SQLStatusCheque.Open;
  SQLContaCorrente.Open;
end;

procedure TFormTelaBaixarChequesRecebidos.DBGridListaCellClick(
  Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaBaixarChequesRecebidos.DBGridListaColEnter(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaBaixarChequesRecebidos.DBGridListaColExit(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaBaixarChequesRecebidos.DBGridListaDrawColumnCell(
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

procedure TFormTelaBaixarChequesRecebidos.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
  if (Key = Vk_Return) and (TblRecebimento.State in DsEditModes) then
    TblRecebimento.Post;
end;

procedure TFormTelaBaixarChequesRecebidos.BtnBaixarDocClick(
  Sender: TObject);
begin
  inherited;
  if (DtBaixa.Text = '  /  /    ') then
    begin
      Informa('Você deve informar a data da baixa !');
      Exit;
    end;

  TblRecebimento.First;
  SQLRecebimento.Open;
  if not TblRecebimento.RecordCount > 0 then
    begin
      if Pergunta('SIM','Você não selecionou nenhum cheque para baixa, Deseja selecionar agora ?') then
        BtnSelecionarDoc.Click
      else
        Exit;
    end;
  if ComboOperacaoBanco.Value <> '' then
    if ComboContaCorrente.Value = '' then
      begin
        Informa('Para efetuar uma transação Bancaria você deve selecionar uma Conta Corrente!');
        ComboContaCorrente.SetFocus;
        Exit;
      end;
  if ComboStatus.Value = '' then
    begin
      Informa('Você deve selecionar uma nova Situação para os cheques selecionados!');
      ComboStatus.SetFocus;
      Exit;
    end;

  while not TblRecebimento.Eof do
    begin
      if TblRecebimento.FieldByName('Baixar').Value then
        begin
          Case RadioMovimento.ItemIndex of
            0 : begin
                  BaixaChequeRecebido(TblRecebimentoCTRCA13ID.AsString,DtBaixa.Date);
                  MudaAlineaCheque(TblRecebimentoCTRCA13ID.AsString,ComboStatus.Value,ComboPortadorNovo.Value);
                end;
            1 : begin
                  SQLRecebimento.Append;
                  SQLRecebimento.FieldByName('CTRCA13ID').AsString        := TblRecebimento.FieldByName('CTRCA13ID').AsString;
                  SQLRecebimento.FieldByName('CLIEA13ID').AsString        := TblRecebimento.FieldByName('CLIEA13ID').AsString;
                  SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime     := DtBaixa.Date;
                  SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime   := DtBaixa.Date ;
                  SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat    := TblRecebimento.FieldByName('Valor').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat     := TblRecebimento.FieldByName('ValorJuro').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat    := TblRecebimento.FieldByName('ValorMulta').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2DESC').AsFloat        := TblRecebimento.FieldByName('ValorDesconto').AsFloat;
                  SQLRecebimento.FieldByName('RECEA254HISTORICO').Value   := UpperCase(MemoHist.Lines.Text);
                  SQLRecebimento.FieldByName('EMPRICODREC').Value         := EmpresaCorrente;
                  SQLRecebimento.Post;
                  AtualizaTotaisCabecalhoContasReceber(TblRecebimento.FieldByName('CTRCA13ID').Value);
                  if ComboOperacaoBanco.Value <> '' then
                    begin
                      LancaMovimentacaoBanco(EmpresaCorrente,
                                             ComboContaCorrente.KeyValue,
                                             ComboOperacaoBanco.KeyValue,
                                             TblRecebimentoCheque.AsInteger,
                                             TblRecebimentoValorTotal.AsFloat,
                                             TblRecebimentoDtVencimento.AsDateTime,
                                             DtBaixa.Date,
                                             DtBaixa.Date,
                                             MemoHist.Lines.Text,
                                             SQLContaCorrente.FieldByName('CTCRA60TITULAR').AsString,
                                             TblRecebimentoCTRCA13ID.AsString,
                                             '',
                                             '',
                                             '');
                    end;
                  if ComboStatus.Value <> '' then
                    begin
                      MudaAlineaCheque(TblRecebimentoCTRCA13ID.AsString,ComboStatus.Value,ComboPortadorNovo.Value);
                    end;
                end;
            2 : begin
                  SQLRecebimento.Append;
                  SQLRecebimento.FieldByName('CTRCA13ID').AsString        := TblRecebimento.FieldByName('CTRCA13ID').AsString;
                  SQLRecebimento.FieldByName('CLIEA13ID').AsString        := TblRecebimento.FieldByName('CLIEA13ID').AsString;
                  SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime     := DtBaixa.Date;
                  SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime   := DtBaixa.Date ;
                  SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat    := TblRecebimento.FieldByName('Valor').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat     := TblRecebimento.FieldByName('ValorJuro').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat    := TblRecebimento.FieldByName('ValorMulta').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2DESC').AsFloat        := TblRecebimento.FieldByName('ValorDesconto').AsFloat;
                  SQLRecebimento.FieldByName('RECEA254HISTORICO').Value   := UpperCase(MemoHist.Lines.Text);
                  SQLRecebimento.FieldByName('EMPRICODREC').Value         := EmpresaCorrente;
                  SQLRecebimento.Post;
                  AtualizaTotaisCabecalhoContasReceber(TblRecebimento.FieldByName('CTRCA13ID').Value);
                  BaixaChequeRecebido(TblRecebimentoCTRCA13ID.AsString,DtBaixa.Date);
                  if ComboStatus.Value <> '' then
                    begin
                      MudaAlineaCheque(TblRecebimentoCTRCA13ID.AsString,ComboStatus.Value,ComboPortadorNovo.Value);
                      // Testa se tem que Desbloquear o Cliente
                      if dm.SQLLocate('ALINEA','ALINICOD','ALINCBLOQCLI',ComboStatus.Value) = 'D' then
                        begin
                          dm.SQLTemplate.Close;
                          dm.SQLTemplate.sql.clear;
                          dm.SQLTemplate.sql.add('Update CLIENTE Set Pendente="S", MTBLICOD = null where CLIEA13ID = "'+TblRecebimento.FieldByName('CLIEA13ID').AsString+'"');
                          dm.SQLTemplate.ExecSQL;
                          dm.SQLTemplate.Close;
                        end;
                    end;
                  if ComboOperacaoBanco.Value <> '' then
                    begin
                      LancaMovimentacaoBanco(EmpresaCorrente,
                                             ComboContaCorrente.KeyValue,
                                             ComboOperacaoBanco.KeyValue,
                                             TblRecebimentoCheque.AsInteger,
                                             TblRecebimentoValorTotal.AsFloat,
                                             TblRecebimentoDtVencimento.AsDateTime,
                                             DtBaixa.Date,
                                             DtBaixa.Date,
                                             UpperCase(MemoHist.Lines.Text),
                                             SQLContaCorrente.FieldByName('CTCRA60TITULAR').AsString,
                                             TblRecebimentoCTRCA13ID.AsString,
                                             '',
                                             '',
                                             '');
                    end;
                end;
             end;
          TblRecebimento.Delete;
        end
      else
        TblRecebimento.Next;
    end;
end;

procedure TFormTelaBaixarChequesRecebidos.TblRecebimentoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TblRecebimento.FieldByName('ValorJuro').AsFloat     := 0;
  TblRecebimento.FieldByName('ValorMulta').AsFloat    := 0;
  TblRecebimento.FieldByName('ValorDesconto').AsFloat := 0;

end;

procedure TFormTelaBaixarChequesRecebidos.AtualizaTotal ;
begin
  SQLTotalCheque.Close ;
  SQLTotalCheque.Open ;
  TotalCheque.Value := SQLTotalChequeTotal.Value ;
  SQLTotalCheque.Close ;
end ;

procedure TFormTelaBaixarChequesRecebidos.TblRecebimentoValorJuroChange(
  Sender: TField);
begin
  inherited;
  TblRecebimentoValorTotal.AsFloat := (ValorOriginal + TblRecebimentoValorJuro.AsFloat +
                                       TblRecebimentoValorMulta.AsFloat) - TblRecebimentoValorDesconto.AsFloat  ;

end;

procedure TFormTelaBaixarChequesRecebidos.TblRecebimentoValorMultaChange(
  Sender: TField);
begin
  inherited;
  TblRecebimentoValorJuroChange(Sender);
end;

procedure TFormTelaBaixarChequesRecebidos.TblRecebimentoValorDescontoChange(
  Sender: TField);
begin
  inherited;
  TblRecebimentoValorJuroChange(Sender);  
end;

procedure TFormTelaBaixarChequesRecebidos.DSTblRecebimentoDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  ValorOriginal := TblRecebimentoValor.AsFloat;
end;

procedure TFormTelaBaixarChequesRecebidos.TblRecebimentoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  AtualizaTotal;
end;

procedure TFormTelaBaixarChequesRecebidos.RadioMovimentoClick(
  Sender: TObject);
begin
  inherited;
  GroupBanco.Visible := ((RadioMovimento.ItemIndex = 1) or  (RadioMovimento.ItemIndex = 2));
end;

end.
