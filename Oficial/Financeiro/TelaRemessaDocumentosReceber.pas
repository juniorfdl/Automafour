unit TelaRemessaDocumentosReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FormResources, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, Grids,
  DBGrids, Mask, ToolEdit, Db, DBTables, RxQuery, MemTable, RxLookup,
  CurrEdit, VarSYS, Variants, ComCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaRemessaDocumentosReceber = class(TFormTelaGeralTEMPLATE)
    PanelFundoBxDocREc: TPanel;
    PanelTopBxDocREc: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    Label4: TLabel;
    SQLContasReceber: TRxQuery;
    ComboEmpresa: TRxDBLookupCombo;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    ComboCliente: TRxDBLookupCombo;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    TblRecebimento: TTable;
    TblRecebimentoCTRCA13ID: TStringField;
    TblRecebimentoCLIEA13ID: TStringField;
    TblRecebimentoDtVencimento: TDateTimeField;
    TblRecebimentoClienteNome: TStringField;
    TblRecebimentoParcela: TIntegerField;
    TblRecebimentoValor: TFloatField;
    TblRecebimentoValorJuro: TFloatField;
    TblRecebimentoValorMulta: TFloatField;
    TblRecebimentoValorDesconto: TFloatField;
    TblRecebimentoValorTotal: TFloatField;
    TblRecebimentoBaixar: TBooleanField;
    DSTblRecebimento: TDataSource;
    DBGridLista: TDBGrid;
    Label9: TLabel;
    TotalContas: TCurrencyEdit;
    SQLTotal: TRxQuery;
    SQLTotalTotal: TFloatField;
    TblRecebimentoDocumento: TStringField;
    GroupBox1: TGroupBox;
    Padrao1: TRadioButton;
    Padrao2: TRadioButton;
    Progress: TProgressBar;
    SQLContasReceberCTRCA13ID: TStringField;
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
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
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
    SQLContasReceberNOFIA13ID: TStringField;
    ComboPortador: TRxDBLookupCombo;
    Label6: TLabel;
    SQLPortador: TRxQuery;
    DSSQLConvenio: TDataSource;
    TblRecebimentoDtEmissao: TDateTimeField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    RadioData: TRadioGroup;
    SQLContasReceberPORTA60DESCR: TStringField;
    TblRecebimentoPortador: TStringField;
    Mensagem: TLabel;
    BtnBaixarDoc: TSpeedButton;
    BtnSelecionarDoc: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure TblRecebimentoAfterPost(DataSet: TDataSet);
    procedure TblRecebimentoValorJuroChange(Sender: TField);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    Selecionando : Boolean;
    procedure AtualizaTotal;
  public
    { Public declarations }
    DataSetTitulos : TDataSet;
  end;

var
  FormTelaRemessaDocumentosReceber: TFormTelaRemessaDocumentosReceber;

implementation

uses CadastroCliente, DataModulo, UnitLibrary,
     CadastroRemessaBancosContasReceber, CadastroTEMPLATE;

{$R *.DFM}

procedure TFormTelaRemessaDocumentosReceber.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaRemessaDocumentosReceber.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open ;
  SQLCliente.Open ;
  SQLPortador.Open ;
  If DSMasterSys<>Nil Then
    Begin
      SQLContasReceber.DataSource := DSMasterSys;
      DataSetTitulos := DSMasterSys.DataSet;
    End;
  DSMasterSys:=Nil;
  ComboEmpresa.KeyValue := EmpresaPadrao;
  De.Date := Date ;
  Ate.Date := Date ;
  Mensagem.Caption := '' ;
  Mensagem.Refresh ;
end;

procedure TFormTelaRemessaDocumentosReceber.BtnSelecionarDocClick(
  Sender: TObject);
begin
  inherited;

  Mensagem.Caption := 'Verificando contas pendentes...' ;
  Mensagem.Refresh ;

  if TblRecebimento.Active then TblRecebimento.Close;
  if TblRecebimento.Exists then
    TblRecebimento.DeleteTable;
  TblRecebimento.CreateTable;
  TblRecebimento.AddIndex('','CTRCA13ID',[ixPrimary]);
  TblRecebimento.AddIndex('Data','DtVencimento',[ixCaseInsensitive]);
  TblRecebimento.IndexFieldNames := 'DtVencimento' ;
  TblRecebimento.Open ;

  SQLContasReceber.Close;

  if ComboEmpresa.Text <> '' then
    SQLContasReceber.MacroByName('MEmpresa').Value := 'CR.EMPRICOD = ' + ComboEmpresa.Value
  else
    SQLContasReceber.MacroByName('MEmpresa').Value := '0=0';

  if ComboPortador.Text <> '' then
    SQLContasReceber.MacroByName('MPortador').Value := 'CR.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasReceber.MacroByName('MPortador').Value := '0=0';

  if RadioData.ItemIndex = 0 then
    SQLContasReceber.MacroByName('MData').Value := 'CR.CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'CR.CTRCDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLContasReceber.MacroByName('MData').Value := 'CR.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'CR.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';

  if ComboCliente.Text <> '' then
    SQLContasReceber.MacroByName('MCliente').Value   := 'CL.CLIEA13ID = "' + ComboCliente.Value + '"'
  else
    SQLContasReceber.MacroByName('MCliente').Value   := '0=0';
  SQLContasReceber.Open;

  Selecionando := True;

  TblRecebimento.DisableControls;
  while not SQLContasReceber.Eof do
    begin
      TblRecebimento.Append;
      TblRecebimento.FieldByName('CTRCA13ID').AsString      := SQLContasReceberCTRCA13ID.AsString ;
      TblRecebimento.FieldByName('CLIEA13ID').AsString      := SQLContasReceberCLIEA13ID.AsString ;
      TblRecebimento.FieldByName('DtVencimento').AsDateTime := SQLContasReceberCTRCDVENC.AsDateTime ;
      TblRecebimento.FieldByName('DtEmissao').AsDateTime    := SQLContasReceberCTRCDEMIS.AsDateTime ;
      TblRecebimento.FieldByName('ClienteNome').AsString    := SQLContasReceberCLIEA60RAZAOSOC.AsString ;
      TblRecebimento.FieldByName('Parcela').Value           := SQLContasReceberCTRCINROPARC.Value ;
      TblRecebimento.FieldByName('Valor').AsFloat           := SQLContasReceberCTRCN2VLR.AsFloat ;
      TblRecebimento.FieldByName('ValorTotal').asFloat      := TblRecebimentoValor.asFloat +
                                                               TblRecebimentoValorMulta.asFloat +
                                                               TblRecebimentoValorJuro.asFloat -
                                                               TblRecebimentoValorDesconto.asFloat;
      If SQLContasReceber.FieldByName('NOFIA13ID').asVariant <> Null Then
        begin
          If DM.ProcuraRegistro('NOTAFISCAL',['NOFIA13ID'],[SQLContasReceberNOFIA13ID.asString],1) Then
            TblRecebimento.FieldByName('Documento').asString := DM.SQLTemplate.FindField('SERIA5COD').asString + '-' +
                                                                DM.SQLTemplate.FindField('NOFIINUMERO').asString;
        end
      else
        If SQLContasReceber.FieldByName('CUPOA13ID').asVariant <> Null Then
          TblRecebimento.FieldByName('Documento').AsString := SQLContasReceberCUPOA13ID.asString
        Else
          TblRecebimento.FieldByName('Documento').AsString := SQLContasReceberCTRCA30NRODUPLICBANCO.asString;

      TblRecebimentoPortador.AsString := SQLContasReceber.FieldByName('PORTA60DESCR').AsString;

      If Padrao1.Checked Then
        TblRecebimento.FieldByName('Baixar').Value := True
      Else
        TblRecebimento.FieldByName('Baixar').Value := False;


      TblRecebimento.Post;
      SQLContasReceber.Next;
    end;
  Selecionando := False;
  AtualizaTotal;
  TblRecebimento.EnableControls;

  Mensagem.Caption := '';
  Mensagem.Refresh;
end;

procedure TFormTelaRemessaDocumentosReceber.AtualizaTotal ;
begin
  SQLTotal.Close ;
  SQLTotal.Open ;
  TotalContas.Value := SQLTotalTotal.Value ;
  SQLTotal.Close ;
end ;


procedure TFormTelaRemessaDocumentosReceber.DBGridListaCellClick(
  Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaRemessaDocumentosReceber.DBGridListaColEnter(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaRemessaDocumentosReceber.DBGridListaColExit(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaRemessaDocumentosReceber.DBGridListaDrawColumnCell(
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

procedure TFormTelaRemessaDocumentosReceber.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
end;

procedure TFormTelaRemessaDocumentosReceber.BtnBaixarDocClick(
  Sender: TObject);
begin
  inherited;
  Progress.Max      := TblRecebimento.RecordCount ;
  Progress.Position := 0 ;

  Mensagem.Caption := 'Baixando contas...' ;
  Mensagem.Refresh ;

  TblRecebimento.DisableControls ;
  TblRecebimento.First;
  DataSetTitulos.DisableControls;
  while not TblRecebimento.Eof do
    begin
      if TblRecebimento.FieldByName('Baixar').Value then
        begin
          DataSetTitulos.Append;
          DataSetTitulos.FieldByName('CTRCA13ID').AsString     := TblRecebimento.FieldByName('CTRCA13ID').AsString;
          DataSetTitulos.Post ;
          TblRecebimento.Delete ;
        end
      else
        TblRecebimento.Next ;
      Progress.Position := Progress.Position + 1 ;
    end;
  DataSetTitulos.EnableControls;
  TblRecebimento.First;
  TblRecebimento.EnableControls ;
  AtualizaTotal;
  Progress.Position := 0 ;

  Mensagem.Caption := '' ;
  Mensagem.Refresh ;
end;

procedure TFormTelaRemessaDocumentosReceber.TblRecebimentoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  If Not Selecionando Then
    AtualizaTotal;
end;

procedure TFormTelaRemessaDocumentosReceber.TblRecebimentoValorJuroChange(
  Sender: TField);
begin
  inherited;
  TblRecebimentoValorTotal.asFloat :=
  TblRecebimentoValor.asFloat +
  TblRecebimentoValorMulta.asFloat +
  TblRecebimentoValorJuro.asFloat -
  TblRecebimentoValorDesconto.asFloat;
end;

end.

