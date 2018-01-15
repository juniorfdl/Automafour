unit TelaBaixarChequesEmitidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, StdCtrls, CurrEdit,
  RxLookup, Mask, ToolEdit, Buttons, jpeg, ExtCtrls, Grids, DBGrids,
  ComCtrls, VarSys, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaBaixarChequeEmitido = class(TFormTelaGeralTEMPLATE)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    DtComp: TDateEdit;
    ComboEmpresa: TRxDBLookupCombo;
    ComboAlinea: TRxDBLookupCombo;
    TotalCheques: TCurrencyEdit;
    GroupPadrao: TGroupBox;
    Padrao1: TRadioButton;
    Padrao2: TRadioButton;
    CheckVencimento: TCheckBox;
    DSSQLEmpresa: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLAlinea: TRxQuery;
    DSSQLAlinea: TDataSource;
    SQLAlineaALINICOD: TIntegerField;
    SQLAlineaALINA30DESCR: TStringField;
    SQLAlineaPENDENTE: TStringField;
    SQLAlineaREGISTRO: TDateTimeField;
    SQLAlineaALINCBLOQCLI: TStringField;
    SQLAlineaALINCDESBLOQCLI: TStringField;
    SQLAlineaMTBLICOD: TIntegerField;
    TblBaixaChequeEmitido: TTable;
    SQLCheque: TRxQuery;
    SQLChequeCQEMA13ID: TStringField;
    SQLChequeEMPRICOD: TIntegerField;
    SQLChequeCQEMICOD: TIntegerField;
    SQLChequeCTCRICOD: TIntegerField;
    SQLChequeCQEMDEMIS: TDateTimeField;
    SQLChequeCQEMDVENC: TDateTimeField;
    SQLChequeCQEMN3VLR: TFloatField;
    SQLChequeCQEMA60FAVORECIDO: TStringField;
    SQLChequeCQEMINROCHEQUE: TIntegerField;
    SQLChequeCQEMCCRUZADO: TStringField;
    SQLChequeCQEMA60HIST: TStringField;
    SQLChequeALINICOD: TIntegerField;
    SQLChequeREGISTRO: TDateTimeField;
    SQLChequePENDENTE: TStringField;
    SQLChequeCQEMDCOMP: TDateTimeField;
    TblBaixaChequeEmitidoCQEMA13ID: TStringField;
    TblBaixaChequeEmitidoEMPRICOD: TIntegerField;
    TblBaixaChequeEmitidoCQEMICOD: TIntegerField;
    TblBaixaChequeEmitidoCTCRICOD: TIntegerField;
    TblBaixaChequeEmitidoCQEMDEMIS: TDateTimeField;
    TblBaixaChequeEmitidoCQEMDVENC: TDateTimeField;
    TblBaixaChequeEmitidoCQEMN3VLR: TFloatField;
    TblBaixaChequeEmitidoCQEMA60FAVORECIDO: TStringField;
    TblBaixaChequeEmitidoCQEMINROCHEQUE: TIntegerField;
    TblBaixaChequeEmitidoCQEMCCRUZADO: TStringField;
    TblBaixaChequeEmitidoCQEMA60HIST: TStringField;
    TblBaixaChequeEmitidoALINICOD: TIntegerField;
    TblBaixaChequeEmitidoREGISTRO: TDateTimeField;
    TblBaixaChequeEmitidoPENDENTE: TStringField;
    TblBaixaChequeEmitidoCQEMDCOMP: TDateTimeField;
    TblBaixaChequeEmitidoBaixar: TBooleanField;
    DBGridLista: TDBGrid;
    DSTblBaixaChequeEmitido: TDataSource;
    TblBaixaChequeEmitidoAlineaLookup: TStringField;
    Progress: TProgressBar;
    GroupBox2: TGroupBox;
    ComboOperacaoBanco: TRxDBLookupCombo;
    SQLOperacaoBanco: TRxQuery;
    SQLOperacaoBancoOPBCICOD: TIntegerField;
    SQLOperacaoBancoOPBCA60DESCR: TStringField;
    SQLOperacaoBancoOPBCCTIPO: TStringField;
    SQLOperacaoBancoOPBCCALTSALDO: TStringField;
    SQLOperacaoBancoPENDENTE: TStringField;
    SQLOperacaoBancoREGISTRO: TDateTimeField;
    DSSQLOperacaoBanco: TDataSource;
    SQLTotal: TRxQuery;
    SQLTotalTotal: TFloatField;
    Mensagem: TLabel;
    BtnBaixarDoc: TSpeedButton;
    BtnSelecionarDoc: TSpeedButton;
    ChequeNro: TEdit;
    Label6: TLabel;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure FormCreate(Sender: TObject);
    procedure TblBaixaChequeEmitidoBeforeInsert(DataSet: TDataSet);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure AtualizaTotal;
  private
    OriginalOptions : TDBGridOptions;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FormTelaBaixarChequeEmitido: TFormTelaBaixarChequeEmitido;

implementation

uses UnitLibrary, DataModulo, TelaBaixarChequesRecebidos;

{$R *.dfm}

procedure TFormTelaBaixarChequeEmitido.BtnSelecionarDocClick(
  Sender: TObject);
var
  I : Integer;  
begin
  inherited;
  Mensagem.Caption := 'Verificando contas pendentes...' ;
  Mensagem.Refresh ;
  TblBaixaChequeEmitido.Close;
  try
    TblBaixaChequeEmitido.DeleteTable;
    TblBaixaChequeEmitido.CreateTable;
  except
    TblBaixaChequeEmitido.CreateTable;
  end;
  TblBaixaChequeEmitido.Open;

  SQLCheque.Close;
  if ComboEmpresa.Value <> '' then
    SQLCheque.MacroByName('Empresa').Value := 'EMPRICOD = ' + ComboEmpresa.Value
  else
    SQLCheque.MacroByName('Empresa').Value := '0=0';

  if not CheckVencimento.Checked then
    SQLCheque.MacroByName('Data').Value    := 'CQEMDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                              'CQEMDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLCheque.MacroByName('Data').Value    := '0=0';

  if ComboAlinea.Value <> '' then
    SQLCheque.MacroByName('Alinea').Value := 'ALINICOD = ' + ComboAlinea.Value
  else
    SQLCheque.MacroByName('Alinea').Value := '0=0';

  if ChequeNro.Text <> '' then
    SQLCheque.MacroByName('NroCheque').Value := 'CQEMINROCHEQUE = ' + ChequeNro.Text
  else
    SQLCheque.MacroByName('NroCheque').Value := '0=0';

  SQLCheque.Open;
  SQLCheque.First;
  While not SQLCheque.Eof do
    begin
      TblBaixaChequeEmitido.Append;
      for I := 0 to SQLCheque.FieldCount -1 do
        begin
          if TblBaixaChequeEmitido.FindField(SQLCheque.Fields[I].FieldName) <> Nil then
            TblBaixaChequeEmitido.FindField(SQLCheque.Fields[I].FieldName).AsVariant := SQLCheque.Fields[I].AsVariant;
        end;
      if Padrao1.Checked then
        TblBaixaChequeEmitidoBaixar.AsBoolean := True
      else
        TblBaixaChequeEmitidoBaixar.AsBoolean := False;
      TblBaixaChequeEmitido.Post;
      SQLCheque.Next;
    end;
  Mensagem.Caption := '';
  AtualizaTotal;   
end;

procedure TFormTelaBaixarChequeEmitido.DBGridListaCellClick(
  Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;

end;

procedure TFormTelaBaixarChequeEmitido.DBGridListaColEnter(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;

end;

procedure TFormTelaBaixarChequeEmitido.DBGridListaColExit(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;

end;

procedure TFormTelaBaixarChequeEmitido.DBGridListaDrawColumnCell(
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

procedure TFormTelaBaixarChequeEmitido.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
end;
procedure TFormTelaBaixarChequeEmitido.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaBaixarChequeEmitido.FormCreate(Sender: TObject);
begin
  inherited;
  if not UsuarioMaster then
    SQLEmpresa.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + IntToStr(EmpresaCorrente)
  else
    SQLEmpresa.MacroByName('MEmpresa').AsString := '0=0';
  if not SQLEmpresa.Active then SQLEmpresa.Open;
  if not SQLAlinea.Active then SQLAlinea.Open;
  if not SQLOperacaoBanco.Active then SQLOperacaoBanco.Open;
  ComboEmpresa.Value := EmpresaPadrao;
  De.Date            := dm.DataBaseSistema;
  Ate.Date           := dm.DataBaseSistema;
  DtComp.Date        := dm.DataBaseSistema;
end;

procedure TFormTelaBaixarChequeEmitido.TblBaixaChequeEmitidoBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel; 
end;

procedure TFormTelaBaixarChequeEmitido.BtnBaixarDocClick(Sender: TObject);
begin
  inherited;
  if not (DtComp.Date > 0) then
    begin
      Informa('A data de compensação deve ser informada !') ;
      DtComp.SetFocus ;
      exit ;
    end ;
  if ComboOperacaoBanco.Value = '' then
    begin
      Informa('Você deve selecionar uma operação bancária !');
      Exit;
    end;

  Progress.Min      := TblBaixaChequeEmitido.RecNo;
  Progress.Max      := TblBaixaChequeEmitido.RecordCount ;
  Progress.Position := 0 ;

  Mensagem.Caption := 'Baixando contas...' ;
  Mensagem.Refresh ;

  TblBaixaChequeEmitido.First;
  while not TblBaixaChequeEmitido.Eof do
    begin
      if TblBaixaChequeEmitidoBaixar.AsBoolean then
        begin
          BaixaChequeEmitido(TblBaixaChequeEmitidoCQEMINROCHEQUE.AsString, DtComp.Date);
          LancaMovimentacaoBanco(TblBaixaChequeEmitidoEMPRICOD.AsInteger,
                                 TblBaixaChequeEmitidoCTCRICOD.AsInteger,
                                 StrToInt(ComboOperacaoBanco.Value),
                                 TblBaixaChequeEmitidoCQEMINROCHEQUE.AsInteger,
                                 TblBaixaChequeEmitidoCQEMN3VLR.AsFloat,
                                 TblBaixaChequeEmitidoCQEMDEMIS.AsDateTime,
                                 DtComp.Date,
                                 DtComp.Date,
                                 TblBaixaChequeEmitidoCQEMA60HIST.AsString,
                                 TblBaixaChequeEmitidoCQEMA60FAVORECIDO.AsString,
                                 '',
                                 '',
                                 TblBaixaChequeEmitidoCQEMA13ID.AsString,
                                 '');
          TblBaixaChequeEmitido.Delete;
        end
      else
        begin
          TblBaixaChequeEmitido.Next;
        end;  
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    end;
    Progress.Position := 0;
    Mensagem.Caption := '';
    AtualizaTotal;
end;
procedure TFormTelaBaixarChequeEmitido.AtualizaTotal ;
begin
  SQLTotal.Close ;
  SQLTotal.Open ;
  TotalCheques.Value := SQLTotalTotal.Value ;
  SQLTotal.Close ;
end ;

end.
