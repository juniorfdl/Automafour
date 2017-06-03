unit TelaContagemManual;

interface

uses
  VarSys, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, DBTables, RxQuery, ToolEdit, DBCtrls, Buttons,
  ComCtrls, ToolWin, Mask, StdCtrls, ExtCtrls, Grids, DBGrids, jpeg, Menus,
  RXCtrls, DBActns, RXDBCtrl, EDBNum, Placemnt, CurrEdit,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaContagemManual = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Principais: TGroupBox;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    ComboEmpresa: TDBLookupComboBox;
    ComboTerminal: TDBLookupComboBox;
    Data: TDateEdit;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoGRUPA60DESCR: TStringField;
    SQLProdutoSUBGA60DESCR: TStringField;
    SQLProdutoVARIA60DESCR: TStringField;
    SQLProdutoMARCA60DESCR: TStringField;
    DataSource1: TDataSource;
    ActionList1: TActionList;
    actGravar: TAction;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    DSTblTerminal: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    DSEmpresa: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubgrupo: TRxQuery;
    SQLSubgrupoGRUPICOD: TIntegerField;
    SQLSubgrupoSUBGICOD: TIntegerField;
    SQLSubgrupoSUBGA60DESCR: TStringField;
    SQLVariacao: TRxQuery;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    Panel1: TPanel;
    actExibir: TAction;
    GroupBox2: TGroupBox;
    DBGridLista: TDBGrid;
    SQLInventario: TRxQuery;
    DSInventario: TDataSource;
    SQLConsultaInventario: TRxQuery;
    SpeedButton2: TSpeedButton;
    PopupMenuExcluir: TPopupMenu;
    InventrioSelecionado1: TMenuItem;
    odooArquivoInventrio1: TMenuItem;
    actExcluirSelecionado: TAction;
    SQLExcluirInventario: TRxQuery;
    actAtualizar: TAction;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMAX: TFloatField;
    SQLProdutoSaldoPENDENTE: TStringField;
    SQLProdutoSaldoREGISTRO: TDateTimeField;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLUsuarioUSUAA5SENHA: TStringField;
    SQLUsuarioUSUACVERDADCOMPRCLI: TStringField;
    SQLUsuarioUSUACDESBLOQCLI: TStringField;
    SQLUsuarioUSUAN2PERCDESC: TFloatField;
    SQLUsuarioUSUACVENDCLIBLOQ: TStringField;
    SQLUsuarioUSUACCANCVENDA: TStringField;
    SQLUsuarioPENDENTE: TStringField;
    SQLUsuarioREGISTRO: TDateTimeField;
    SQLUsuarioUSUACEXCLCLI: TStringField;
    SQLUsuarioUSUCALTERASLDINVENTARIO: TStringField;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    EditPesquisa: TEdit;
    Label6: TLabel;
    EditContagem: TEdit;
    PanelConfig: TPanel;
    RadioLeitorTeclado: TRadioGroup;
    RadioGroupContagem: TRadioGroup;
    RadioGroupPesquisa: TRadioGroup;
    SQLInventarioEMPRICOD: TIntegerField;
    SQLInventarioTERMICOD: TIntegerField;
    SQLInventarioPRODICOD: TIntegerField;
    SQLInventarioINVDDATA: TDateTimeField;
    SQLInventarioINVIPRODPOS: TIntegerField;
    SQLInventarioINVICONTAGEM1: TFloatField;
    SQLInventarioINVICONTAGEM2: TFloatField;
    SQLInventarioINVICONTAGEM3: TFloatField;
    SQLInventarioPENDENTE: TStringField;
    SQLInventarioREGISTRO: TDateTimeField;
    SQLConsultaInventarioEMPRICOD: TIntegerField;
    SQLConsultaInventarioTERMICOD: TIntegerField;
    SQLConsultaInventarioPRODICOD: TIntegerField;
    SQLConsultaInventarioINVDDATA: TDateTimeField;
    SQLConsultaInventarioINVIPRODPOS: TIntegerField;
    SQLConsultaInventarioINVICONTAGEM1: TFloatField;
    SQLConsultaInventarioINVICONTAGEM2: TFloatField;
    SQLConsultaInventarioINVICONTAGEM3: TFloatField;
    SQLConsultaInventarioPENDENTE: TStringField;
    SQLConsultaInventarioREGISTRO: TDateTimeField;
    SQLExcluirInventarioEMPRICOD: TIntegerField;
    SQLExcluirInventarioTERMICOD: TIntegerField;
    SQLExcluirInventarioPRODICOD: TIntegerField;
    SQLExcluirInventarioINVDDATA: TDateTimeField;
    SQLExcluirInventarioINVIPRODPOS: TIntegerField;
    SQLExcluirInventarioINVICONTAGEM1: TFloatField;
    SQLExcluirInventarioINVICONTAGEM2: TFloatField;
    SQLExcluirInventarioINVICONTAGEM3: TFloatField;
    SQLExcluirInventarioPENDENTE: TStringField;
    SQLExcluirInventarioREGISTRO: TDateTimeField;
    Produtoselecionado1: TMenuItem;
    PopupMenuDiverso: TPopupMenu;
    MnInvImportarProdutosdoColetor: TMenuItem;
    ActGravar1: TDataSetPost;
    DSSQLConsultaInventario: TDataSource;
    PopupGrid: TPopupMenu;
    MnAlterarPrimeiraContagem: TMenuItem;
    MnAlterarSegundaContagem: TMenuItem;
    MnAlterarTerceiraContagem: TMenuItem;
    Label14: TLabel;
    SQLConsultaInventarioINVDFECHAMENTO: TDateTimeField;
    SQLExec: TRxQuery;
    DBDateEdit1: TDBDateEdit;
    SQLInventarioINVDFECHAMENTO: TDateTimeField;
    SQLInventarioProdutoLookUp: TStringField;
    SQLInventarioGradeCodLookUp: TIntegerField;
    SQLInventarioAgrupGradeLookUp: TIntegerField;
    SQLInventarioReferenciaLookUp: TStringField;
    Panel2: TPanel;
    SQL: TRxQuery;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateTimeField2: TDateTimeField;
    IntegerField4: TIntegerField;
    BCDField1: TFloatField;
    BCDField2: TFloatField;
    BCDField3: TFloatField;
    StringField1: TStringField;
    DateTimeField3: TDateTimeField;
    StringField2: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField3: TStringField;
    SQLConfigInventario: TRxQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLTotalContagem: TRxQuery;
    TotalPriContagem: TEvDBNumEdit;
    TotalSecContagem: TEvDBNumEdit;
    TotalTercContagem: TEvDBNumEdit;
    DSSQLTotalContagem: TDataSource;
    SQLTotalContagemTOTAL1: TFloatField;
    SQLTotalContagemTOTAL2: TFloatField;
    SQLTotalContagemTOTAL3: TFloatField;
    Label15: TLabel;
    ActAumentarSaldo: TAction;
    PopupMenuAtualizaEstoque: TPopupMenu;
    MnAdicionar: TMenuItem;
    MnDiminuir: TMenuItem;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    dsSQLProdutoSaldo: TDataSource;
    N1: TMenuItem;
    ExcluirItemSelecionado1: TMenuItem;
    FormStorage1: TFormStorage;
    N2: TMenuItem;
    IncorporaraoNegativo1: TMenuItem;
    Label17: TLabel;
    ImportardoPalmOne1: TMenuItem;
    Memo1: TMemo;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    SpeedButton1: TSpeedButton;
    LabelDiversos: TRxSpeedButton;
    BTAtualiza: TRxSpeedButton;
    RxSpeedButton1: TRxSpeedButton;
    LabelGravar: TSpeedButton;
    SQLConsultaInventarioTIPO: TStringField;
    SQLInventarioTIPO: TStringField;
    Label18: TLabel;
    ComboTipoInventario: TComboBox;
    SQLTIPO: TStringField;
    SQLExcluirInventarioINVDFECHAMENTO: TDateTimeField;
    SQLExcluirInventarioTIPO: TStringField;
    btAjusteInventarioFiscal: TRxSpeedButton;
    EditValorEstoque: TCurrencyEdit;
    lbProdutoConsulta: TLabel;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    N3: TMenuItem;
    ZerarSaldoEstoquedosprodutosdesseinventario1: TMenuItem;
    Msg: TLabel;
    SQLTotalContagemTOTALCUSTO1: TFloatField;
    EditTotalCusto1: TEvDBNumEdit;
    ProgressBar: TProgressBar;
    ImportarBematechDC20001: TMenuItem;
    ImportarProdutosdoColetorOptimusPadrao1: TMenuItem;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure EditPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure EditPesquisaChange(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actExibirUpdate(Sender: TObject);
    procedure actExibirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure DataKeyPress(Sender: TObject; var Key: Char);
    procedure SQLInventarioBeforeOpen(DataSet: TDataSet);
    procedure SQLConsultaInventarioAfterPost(DataSet: TDataSet);
    procedure SQLInventarioAfterOpen(DataSet: TDataSet);
    procedure SQLConsultaInventarioBeforePost(DataSet: TDataSet);
    procedure actExcluirSelecionadoUpdate(Sender: TObject);
    procedure actExcluirSelecionadoExecute(Sender: TObject);
    procedure odooArquivoInventrio1Click(Sender: TObject);
    procedure actAtualizarUpdate(Sender: TObject);
    procedure EditContagemEnter(Sender: TObject);
    procedure Produtoselecionado1Click(Sender: TObject);
    procedure MnInvImportarProdutosdoColetorClick(Sender: TObject);
    procedure SQLConsultaInventarioNewRecord(DataSet: TDataSet);
    procedure EditPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MnAlterarPrimeiraContagemClick(Sender: TObject);
    procedure DBGridListaTitleClick(Column: TColumn);
    procedure SQLConsultaInventarioINVICONTAGEM2Change(Sender: TField);
    procedure SQLConsultaInventarioINVICONTAGEM3Change(Sender: TField);
    procedure SQLConsultaInventarioBeforeEdit(DataSet: TDataSet);
    procedure SQLInventarioCalcFields(DataSet: TDataSet);
    procedure MnAdicionarClick(Sender: TObject);
    procedure MnDiminuirClick(Sender: TObject);
    procedure EditContagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IncorporaraoNegativo1Click(Sender: TObject);
    procedure ImportardoPalmOne1Click(Sender: TObject);
    procedure ComboTipoInventarioChange(Sender: TObject);
    procedure btAjusteInventarioFiscalClick(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ZerarSaldoEstoquedosprodutosdesseinventario1Click(
      Sender: TObject);
    procedure ImportarBematechDC20001Click(Sender: TObject);
    procedure ImportarProdutosdoColetorOptimusPadrao1Click(
      Sender: TObject);
  private
    { Private declarations }
    EntradaSaida, vTipoInventario, CaminhoNomeArquivo, Origem, Destino : String;
    Qtde : Double;
    Texto : TextFile;

    procedure GravarExclusao;
    function AutoIncremento(Tabela,Campo,Filtro: string): Integer;
    function RetornaQuantidade(QtdeAtual,QtdeInventario : Double) : Double ;
  public
    { Public declarations }
  end;

const
   SQLEXCLUIR = 'DELETE FROM INVENTARIOESTOQUE WHERE %MFILTRO';
   SQLSELECT = 'SELECT * FROM INVENTARIOESTOQUE WHERE %MFILTRO';

var
  FormTelaContagemManual: TFormTelaContagemManual;

implementation

uses DataModulo, TELALOGIN, TelaImportaItens, UnitLibrary, WaitWindow,
  DataModuloTemplate, UnSoundPlay;

{$R *.dfm}

procedure TFormTelaContagemManual.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaContagemManual.EditPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
{ if not (Key in [#48..#57, #13,#8]) then
    Abort;}
{ if (Sender = EditContagem) and (Key = #13) then
   if actGravar.Enabled then
     begin
       actGravar.Execute;
     end; }
 if (Sender = EditContagem) and (Key = #13) then
   EditPesquisa.SetFocus;
end;

procedure TFormTelaContagemManual.EditPesquisaChange(Sender: TObject);
begin
  if SQLProduto.Active then
    SQLProduto.Close;
end;

procedure TFormTelaContagemManual.actGravarUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (ComboEmpresa.KeyValue <> null) and (ComboTerminal.KeyValue <> null)
    and (EditContagem.Text <> '') and(Data.Date <> 0) and (not (SQLProduto.IsEmpty));
end;

procedure TFormTelaContagemManual.FormCreate(Sender: TObject);
begin
  SQLEmpresa.Open;
  SQLTerminal.Open;
  SQLGrupo.Open;
  SQLSubgrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  Data.Date := Date;
  ComboEmpresa.KeyValue  := EmpresaCorrente;
  ComboTerminal.KeyValue := TerminalCorrente;
end;

procedure TFormTelaContagemManual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormTelaContagemManual := nil;
  Action := caFree;
end;

procedure TFormTelaContagemManual.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormTelaContagemManual.actExibirUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (ComboEmpresa.KeyValue <> null) and (ComboTerminal.KeyValue <> null)
   and(Data.Date <> 0);
end;

procedure TFormTelaContagemManual.actExibirExecute(Sender: TObject);
begin
  if ComboTipoInventario.ItemIndex < 0 then
    begin
      showmessage('É obrigatorio informar o tipo de inventario!');
      exit;
    end;
  SQLInventario.Close;
  SQLInventario.Open;
end;

procedure TFormTelaContagemManual.actGravarExecute(Sender: TObject);
begin
  with SQLConsultaInventario do
  begin
    Close;
    MacroByName('MFILTRO').AsString :=
      ' EMPRICOD = ' +  IntToStr(ComboEmpresa.KeyValue) +
      ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
      ' AND TIPO = "'     + vTipoInventario + '"' +
      ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) +
      '" AND PRODICOD = ' + DBEdit1.Text;
    Open;
    if not (SQLInventario.Active) then
      SQLInventario.Open;
    if not IsEmpty then
      Edit
    else
      Insert;
    if State = DsInsert then
      SQLConsultaInventarioPRODICOD.AsInteger := StrToInt(DBEdit1.Text);
    case RadioGroupContagem.ItemIndex of
      0: if State = DsEdit then
           SQLConsultaInventarioINVICONTAGEM1.AsFloat := SQLConsultaInventarioINVICONTAGEM1.AsFloat +
                                                         StrToFloat(EditContagem.Text)
         else
           SQLConsultaInventarioINVICONTAGEM1.AsFloat := StrToFloat(EditContagem.Text);
      1: if State = DsEdit then
           SQLConsultaInventarioINVICONTAGEM2.AsFloat := SQLConsultaInventarioINVICONTAGEM2.AsFloat +
                                                         StrToFloat(EditContagem.Text)
         else
           SQLConsultaInventarioINVICONTAGEM2.AsFloat := StrToFloat(EditContagem.Text);

      2: if State = DsEdit then
           SQLConsultaInventarioINVICONTAGEM3.AsFloat := SQLConsultaInventarioINVICONTAGEM3.AsFloat +
                                                         StrToFloat(EditContagem.Text)
         else
           SQLConsultaInventarioINVICONTAGEM3.AsFloat := StrToFloat(EditContagem.Text);
    end;
   SQLConsultaInventarioTIPO.Value := vTipoInventario;

   Post;
   actGravar.Enabled := False;
   EditPesquisa.Text := '';
   EditPesquisa.Clear;
   EditPesquisa.setfocus;
  end;
end;

procedure TFormTelaContagemManual.DataKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and actExibir.Enabled then
    actExibirExecute(actExibir);
end;

procedure TFormTelaContagemManual.SQLInventarioBeforeOpen(DataSet: TDataSet);
begin
  SQLInventario.MacroByName('MFILTRO').AsString :=
    ' EMPRICOD = '      + IntToStr(ComboEmpresa.KeyValue) +
    ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
    ' AND TIPO = "'     + vTipoInventario + '"' +
    ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"';
  if lbProdutoConsulta.Caption <> '' then
    SQLInventario.MacroByName('MProduto').AsString := 'PRODICOD = ' + lbProdutoConsulta.Caption
  else
    SQLInventario.MacroByName('MProduto').AsString := '0=0';

 SQLTotalContagem.Close;
 SQLTotalContagem.MacroByName('MFILTRO').AsString :=
    ' EMPRICOD = '      + IntToStr(ComboEmpresa.KeyValue) +
    ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
    ' AND TIPO = "'     + vTipoInventario + '"' +
    ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"';
 SQLTotalContagem.Open;
end;

procedure TFormTelaContagemManual.SQLConsultaInventarioAfterPost(
  DataSet: TDataSet);
begin
  SQLInventario.Close;
  SQLInventario.Open;
end;

procedure TFormTelaContagemManual.SQLInventarioAfterOpen(DataSet: TDataSet);
begin
  if DBEdit1.Text <> '' then
    SQLInventario.Locate('PRODICOD', StrToInt(DBEdit1.Text),[]);
  ComboEmpresa.TabStop := False;
  ComboTerminal.TabStop := False;
  ComboTipoInventario.TabStop := False;
  Data.TabStop := False;
  RadioGroupPesquisa.TabStop := False;
  RadioGroupContagem.TabStop := False;
end;

procedure TFormTelaContagemManual.SQLConsultaInventarioBeforePost(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('INVIPRODPOS').AsInteger    := DM.ProximoCodigoUnico('INVENTARIOESTOQUE',DataSet,DSSQLConsultaInventario,3);
  DataSet.FieldByName('REGISTRO').AsDateTime      := Now ;
  DataSet.FieldByName('PENDENTE').AsString        := 'S' ;
  if SQLConsultaInventarioINVICONTAGEM1.AsFloat < 0 then
    SQLConsultaInventarioINVICONTAGEM1.AsFloat := 0;
  if SQLConsultaInventarioINVICONTAGEM2.AsFloat < 0 then
    SQLConsultaInventarioINVICONTAGEM2.AsFloat := 0;
  if SQLConsultaInventarioINVICONTAGEM3.AsFloat < 0 then
    SQLConsultaInventarioINVICONTAGEM3.AsFloat := 0;
end;

procedure TFormTelaContagemManual.actExcluirSelecionadoUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not (SQLInventario.IsEmpty);
end;

procedure TFormTelaContagemManual.actExcluirSelecionadoExecute(
  Sender: TObject);
begin
  if SQLConsultaInventario.FieldByName('INVDFECHAMENTO').AsString <> '' then
    begin
      Application.MessageBox('Este inventário já foi encerrado, não serão permitidas alterações!','Informação',MB_OK + MB_SYSTEMMODAL + MB_ICONERROR + MB_SETFOREGROUND);
      Abort;
    end;
  if Application.MessageBox('Confirma Exclusão do Inventário Selecionado?','Pergunta',
     MB_YESNO) = mryes then
  begin
    SQLExcluirInventario.SQL.Text := SQLSELECT;
    SQLExcluirInventario.MacroByName('MFILTRO').AsString :=
      ' EMPRICOD = '      + IntToStr(ComboEmpresa.KeyValue) +
      ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
      ' AND TIPO = "'     + vTipoInventario + '"' +
      ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"';
    GravarExclusao;
    SQLExcluirInventario.SQL.Text := SQLEXCLUIR;
    SQLExcluirInventario.MacroByName('MFILTRO').AsString :=
      ' EMPRICOD = '      + IntToStr(ComboEmpresa.KeyValue) +
      ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
      ' AND TIPO = "'     + vTipoInventario + '"' +
      ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"';
    SQLExcluirInventario.ExecSQL;
    SQLInventario.Close;
    SQLInventario.Open;
  end;
end;

procedure TFormTelaContagemManual.odooArquivoInventrio1Click(Sender: TObject);
begin
   if Application.MessageBox('Confirma a Exclusão de Todo o Arquivo de Inventário','Pergunta',
     MB_YESNO) = mryes then
  begin
    SQLExcluirInventario.SQL.Text := SQLSELECT;
    SQLExcluirInventario.MacroByName('MFILTRO').AsString := 'INVDFECHAMENTO is NULL';
    GravarExclusao;
    SQLExcluirInventario.SQL.Text := SQLEXCLUIR;
    SQLExcluirInventario.MacroByName('MFILTRO').AsString := 'INVDFECHAMENTO is NULL';
    SQLExcluirInventario.ExecSQL;
    SQLInventario.Close;
    SQLInventario.Open;
  end;
end;

procedure TFormTelaContagemManual.GravarExclusao;
begin
  with SQLExcluirInventario do
    begin
      Close;
      Open;
      First;
      while not Eof do
        begin
          DM.RegistraExclusao('INVENTARIOESTOQUE',SQLExcluirInventario);
          Next;
        end;
    end;
end;

procedure TFormTelaContagemManual.actAtualizarUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not(SQLInventario.IsEmpty);
end;

function TFormTelaContagemManual.AutoIncremento(Tabela, Campo,
  Filtro: string): Integer;
var
  Query: TQuery;
begin
  Query := nil;
  Query := TQuery.Create(Query);
  Query.DatabaseName := 'DB';
  Query.Close;
  Query.SQL.Text := 'SELECT MAX('+Campo+')'+'AS CONT FROM '+Tabela + ' '+ Filtro;
  Query.Open;
  if Query.FieldByName('CONT').AsInteger > 0 then
    Result := Query.FieldByName('CONT').AsInteger + 1
  else
   Result := 1;
  Query.Close;
  FreeAndNil(Query);
end;

procedure TFormTelaContagemManual.EditContagemEnter(Sender: TObject);
var
Key : Char;
begin
 if RadioLeitorTeclado.ItemIndex = 0 then
   begin
     EditContagem.Text := '1';
   end;
 if RadioLeitorTeclado.ItemIndex = 0 then
   begin
     TAction(actGravar).Enabled := (ComboEmpresa.KeyValue <> null) and (ComboTerminal.KeyValue <> null)
                                and (EditPesquisa.Text <> '') and(Data.Date <> 0) and (not (SQLProduto.IsEmpty));
     Key := #13;
     EditPesquisaKeyPress(EditContagem,Key);
   end;
end;

function TFormTelaContagemManual.RetornaQuantidade(QtdeAtual,QtdeInventario : Double) : Double ;
begin
  if (QtdeAtual > QtdeInventario) and (QtdeAtual >= 0) then
    begin
      RetornaQuantidade := QtdeAtual - QtdeInventario;
      EntradaSaida := 'S';
    end;
  if (QtdeAtual < QtdeInventario) and (QtdeAtual >= 0) then
    begin
      RetornaQuantidade := QtdeInventario - QtdeAtual;
      EntradaSaida := 'E';
    end;
  if (QtdeAtual < 0) then
    begin
      RetornaQuantidade := ABS(QtdeAtual);
      EntradaSaida := 'E';
    end;
  if QtdeAtual =  QtdeInventario then
    EntradaSaida := 'N';
end;

procedure TFormTelaContagemManual.Produtoselecionado1Click(
  Sender: TObject);
begin
  if SQLConsultaInventario.FieldByName('INVDFECHAMENTO').AsString <> '' then
    begin
      Application.MessageBox('Este inventário já foi encerrado, não serão permitidas alterações!','Informação',MB_OK + MB_SYSTEMMODAL + MB_ICONERROR + MB_SETFOREGROUND);
      Abort;
    end;
  if SQLConsultaInventario.State in DsEditModes then
    begin
      Application.MessageBox('O produto só pode ser excluido quando não estiver alterando ou incluindo um registro','Informação',MB_OK + MB_SYSTEMMODAL + MB_ICONERROR + MB_SETFOREGROUND);
      Abort;
    end
  else
    begin
      if Application.MessageBox('Confirma Exclusão do Produto Selecionado?','Pergunta',
         MB_YESNO) = mryes then
      begin
        SQLExcluirInventario.SQL.Text := SQLSELECT;
        SQLExcluirInventario.MacroByName('MFILTRO').AsString :=
          ' EMPRICOD = '      + IntToStr(ComboEmpresa.KeyValue) +
          ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
          ' AND TIPO = "'     + vTipoInventario + '"' +
          ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"' +
          ' AND PRODICOD = '  + SQLInventarioPRODICOD.AsString;
        GravarExclusao;
        SQLExcluirInventario.SQL.Text := SQLEXCLUIR;
        SQLExcluirInventario.MacroByName('MFILTRO').AsString :=
          ' EMPRICOD = '      + IntToStr(ComboEmpresa.KeyValue) +
          ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
          ' AND TIPO = "'     + vTipoInventario + '"' +
          ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"' +
          ' AND PRODICOD = '  + SQLInventarioPRODICOD.AsString;
        SQLExcluirInventario.ExecSQL;
        SQLInventario.Close;
        SQLInventario.Open;
      end;
    end;
end;

procedure TFormTelaContagemManual.MnInvImportarProdutosdoColetorClick(
  Sender: TObject);
var
  Field : String;
begin
  SQLInventario.Close;
  SQLConsultaInventario.Close;
  SQLConsultaInventario.MacroByName('MFiltro').AsString := ' EMPRICOD = '      + IntToStr(ComboEmpresa.KeyValue) +
                                                           ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
                                                           ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"';
  SQLConsultaInventario.Open;
  Application.CreateForm(TFormTelaImportaItens,FormTelaImportaItens);
  case RadioGroupContagem.ItemIndex of
    0: Field := 'INVICONTAGEM1';
    1: Field := 'INVICONTAGEM2';
    2: Field := 'INVICONTAGEM3';
  end;
  FormTelaImportaItens.EditTipoInv.Text := vTipoInventario;
  if not SQLConsultaInventario.Active then SQLConsultaInventario.Open;
  FormTelaImportaItens.SetParams(SQLConsultaInventario,Field,ComboEmpresa.KeyValue, ComboTerminal.KeyValue, Data.Date);
  FormTelaImportaItens.ShowModal;
  SQLInventario.Open;
end;

procedure TFormTelaContagemManual.SQLConsultaInventarioNewRecord(
  DataSet: TDataSet);
begin
  SQLConsultaInventarioEMPRICOD.AsInteger    := ComboEmpresa.KeyValue;
  SQLConsultaInventarioTERMICOD.AsInteger    := ComboTerminal.KeyValue;
  SQLConsultaInventarioINVDDATA.AsDateTime   := Data.Date;
end;

procedure TFormTelaContagemManual.EditPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_F2 then
    MnAlterarPrimeiraContagem.click;
  if Key = Vk_F3 then
    Produtoselecionado1.click;

  if key = 27 then
    begin
      lbProdutoConsulta.Caption := '';
      lbProdutoConsulta.update;
      SQLInventario.Close;
      SQLInventario.Open;
    end;

  if Key = Vk_Return then
    begin
      if EditPesquisa.text = '' then
      begin
        ShowMessage('O campo Valor da Pesquisa deve ser preenchido!');
        EditPesquisa.SetFocus;
        Abort;
      end;
      with SQLProduto do
      begin
        Close;
        MacroByName('MPRODICOD').AsString      := '0 = 0';
        MacroByName('MPRODA15CODANT').AsString := '0 = 0';
        MacroByName('MPRODA60CODBAR').AsString := '0 = 0';
        case RadioGroupPesquisa.ItemIndex of
          0: MacroByName('MPRODICOD').AsString := 'PRODICOD = '+EditPesquisa.Text;
          1: MacroByName('MPRODA15CODANT').AsString := 'PRODA15CODANT = "'+EditPesquisa.Text + '"';
          2: MacroByName('MPRODA60CODBAR').AsString := 'PRODa60CODBAR = "'+EditPesquisa.Text + '"';
        end;
        Open;
        Last;
        First;
        if (IsEmpty) and (RadioGroupPesquisa.ItemIndex=2) then
          begin
            // PROCURAR NA TAB.CD BARRAS AUX
            dm.SQLTemplate.Close ;
            dm.SQLTemplate.SQL.Clear ;
            dm.SQLTemplate.SQL.Add('select * from PRODUTOBARRAS') ;
            dm.SQLTemplate.SQL.Add('where PRBAA15BARRAS = "' + EditPesquisa.Text + '"') ;
            dm.SQLTemplate.Open ;
            dm.SQLTemplate.First ;
            if not dm.SQLTemplate.IsEmpty then
              begin
                Close;
                MacroByName('MPRODICOD').AsString := 'PRODICOD = '+dm.SQLTemplate.fieldbyname('PRODICOD').AsString;
                MacroByName('MPRODA15CODANT').AsString := '0 = 0';
                MacroByName('MPRODA60CODBAR').AsString := '0 = 0';
                Open;
                Last;
                First;
              end;
          end;

        if IsEmpty then
        begin
          MessageDlg('Produto não encontrado', mtWarning, [mbOK], 0);
          EditPesquisa.SetFocus;
          Close;
          Abort;
        end;
        if RecordCount > 1 then
        begin
          MessageDlg('A pesquisa retornou mais de um registro, confira o ''Código ''interno no cadastro.''', mtWarning, [mbOK], 0);
          RadioGroupPesquisa.SetFocus;
        end;
        if RecordCount = 1 then
        begin
          SQLProdutoSaldo.Close;
          SQLProdutoSaldo.MacroByName('MFiltro').AsString :=
            ' PRODICOD = '     + SQLProdutoPRODICOD.AsString +
            ' AND EMPRICOD = ' + IntToStr(ComboEmpresa.KeyValue);
          SQLProdutoSaldo.Open;
        end;
      end;
    end;
end;

procedure TFormTelaContagemManual.MnAlterarPrimeiraContagemClick(
  Sender: TObject);
var
  QtdeAlterada : Double;
  Erro : Boolean;
begin
  Erro := True;
  while Erro do
    begin
      try
        QtdeAlterada := StrToFloat(InputBox('Digite a nova quantidade','Quantidade','0'));
        if QtdeAlterada > 0 then
          Erro := False
        else
          Erro := True;
      except
        Erro := True;
      end;
    end;
  with SQLConsultaInventario do
  begin
    Close;
    MacroByName('MFILTRO').AsString :=
      ' EMPRICOD = ' +  IntToStr(ComboEmpresa.KeyValue) +
      ' AND TERMICOD = ' + IntToStr(ComboTerminal.KeyValue) +
      ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) +
      '" AND PRODICOD = ' + SQLInventarioPRODICOD.AsString;
    //ShowMessage(RealSQL.Text);
    Open;
    if not (SQLInventario.Active) then
      SQLInventario.Open;
    Edit;
    if State = DsInsert then
      SQLConsultaInventarioPRODICOD.AsInteger := SQLInventarioPRODICOD.AsInteger;
    case TMenuItem(Sender).Tag of
      0: if State = DsEdit then
           SQLConsultaInventarioINVICONTAGEM1.AsFloat := QtdeAlterada;
      1: if State = DsEdit then
           SQLConsultaInventarioINVICONTAGEM2.AsFloat := QtdeAlterada;
      2: if State = DsEdit then
           SQLConsultaInventarioINVICONTAGEM3.AsFloat := QtdeAlterada;
    end;
    Post;
   actGravar.Enabled := False;
   EditPesquisa.Clear;
  end;
end;

procedure TFormTelaContagemManual.DBGridListaTitleClick(Column: TColumn);
begin
  if Column.Field.FieldKind = FkData then
    begin
      SQLInventario.Close;
      SQLInventario.MacroByName('Ordem').AsString := 'Order By ' + Column.FieldName;
      SQLInventario.Open;
    end;
end;

procedure TFormTelaContagemManual.SQLConsultaInventarioINVICONTAGEM2Change(
  Sender: TField);
begin
  if (SQLConsultaInventario.FieldByName('INVICONTAGEM1').AsInteger <= 0) and
     (SQLConsultaInventario.FieldByName('PRODICOD').AsInteger > 0) then
    begin
      Informa('Você deve informar a 1º contagem antes da 2º contagem!');
      Abort;
    end;
end;

procedure TFormTelaContagemManual.SQLConsultaInventarioINVICONTAGEM3Change(
  Sender: TField);
begin
  if (SQLConsultaInventario.FieldByName('INVICONTAGEM1').AsInteger <= 0) or
    (SQLConsultaInventario.FieldByName('INVICONTAGEM2').AsInteger <= 0) then
    begin
      Informa('Você deve informar a 1º e 2º contagem antes da 3º contagem!');
      Abort;
    end;
end;

procedure TFormTelaContagemManual.SQLConsultaInventarioBeforeEdit(
  DataSet: TDataSet);
begin
  if SQLConsultaInventario.FieldByName('INVDFECHAMENTO').AsVariant <> Null then
    begin
      Application.MessageBox('Este inventário já foi encerrado, não serão permitidas alterações!','Informação',MB_OK + MB_SYSTEMMODAL + MB_ICONERROR + MB_SETFOREGROUND);
      Abort;
    end;
end;

procedure TFormTelaContagemManual.SQLInventarioCalcFields(
  DataSet: TDataSet);
begin
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

          DataSet.FieldByName('GradeCodLookup').AsVariant   := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;
          DataSet.FieldByName('GradeCodLookup').AsVariant   := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant := MensagemLookUp;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant    := Null;
      DataSet.FieldByName('GradeCodLookup').AsVariant   := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
    End;
end;

procedure TFormTelaContagemManual.MnAdicionarClick(Sender: TObject);
var
  RegAtual: TBookmarkStr;
  Usuario, I, vOperacao: Integer;
  InfoRetorno : TInfoRetornoUser;
begin
  if vTipoInventario = 'F' then
    begin
      Informa('Inventário Fiscal não movimenta ESTOQUE!');
      exit; {Nao atualizar estoque QUANDO TIPO=FISCAL}
    end;

  SQLConfigInventario.Close;
  SQLConfigInventario.Open;

{ Removido Adilson para que se possa continuar lancando itens no mesmo inventario e ao Adicionar saldo ira mexer
  if SQLInventarioINVDFECHAMENTO.AsVariant <> null then
    begin
      Informa('Este inventário já foi encerrado. A operação será cancelada!');
      Exit;
    end;}

  Usuario := UsuarioCorrente;
  if AutenticaUsuario(UsuarioAtualNome,'USUCALTERASLDINVENTARIO',InfoRetorno) = 'S' then
    begin
      RegAtual := SQLInventario.Bookmark;
      SQLInventario.First;
      MakeWindow(SQLInventario.RecordCount,'Aumentando no Saldo de Estoque Atual!');
      I := 0;
      SQLInventario.DisableControls;
      while not (SQLInventario.Eof) do
      begin
        if SQLInventarioINVDFECHAMENTO.AsVariant = null then
          begin
            SQLProdutoSaldo.Close;
            SQLProdutoSaldo.MacroByName('MFiltro').AsString :=
              ' PRODICOD = '     + SQLInventarioPRODICOD.AsString +
              ' AND EMPRICOD = ' + SQLInventarioEMPRICOD.AsString;
            SQLProdutoSaldo.Open;
            if SQLProdutoSaldo.IsEmpty then
              begin
                SQLProdutoSaldo.Insert;
                SQLProdutoSaldoPRODICOD.AsInteger   :=  SQLInventarioPRODICOD.AsInteger;
                SQLProdutoSaldoEMPRICOD.AsInteger   :=  SQLInventarioEMPRICOD.AsInteger;
                SQLProdutoSaldoPSLDN3QTDE.AsFloat   :=  0;
                SQLProdutoSaldoPSLDN3QTDMIN.AsFloat :=  0;
                SQLProdutoSaldoPSLDN3QTDMAX.AsFloat :=  0;
                SQLProdutoSaldoPENDENTE.AsString    := 'S';
                SQLProdutoSaldoREGISTRO.AsDateTime  := Now;
                SQLProdutoSaldo.Post;
              end;
            if (SQLInventarioINVICONTAGEM1.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM1.IsNull)) then
                Qtde := SQLInventarioINVICONTAGEM1.AsFloat;
            if (SQLInventarioINVICONTAGEM2.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM2.IsNull)) then
                Qtde := SQLInventarioINVICONTAGEM2.AsFloat;
            if (SQLInventarioINVICONTAGEM3.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM3.IsNull)) then
                Qtde := SQLInventarioINVICONTAGEM3.AsFloat;

            if sqlinventarioINVDFECHAMENTO.AsString = '' then
              begin
                GravaMovimentoEstoque(DM.SQLProduto,
                                      DM.SQLProdutoFilho,
                                      DM.SQLProdutoSaldo,
                                      SQLInventarioEMPRICOD.Value,//Empresa
                                      SQLInventarioPRODICOD.AsInteger,//Produto
                                      SQLConfigInventarioOPESICODENTRADA.AsInteger,//Operacao
                                      Qtde,//Quantidade
                                      'E',//ENTRADA/SAIDA
                                      FormatDateTime('mm/dd/yyyy', Now),
                                      '0', // Valor nao usado
                                      'MOVIMENTOSDIVERSOS', // Tipo Operacao
                                      'AI'+FormatDateTime('dd/mm/yy', Now), // Documento
                                      ''); //Lote
              end;
          end;
        SQLInventario.Next;
        Inc(I);
        SetProgress(I);
        Application.ProcessMessages;
      end;
      SQLInventario.Bookmark := RegAtual;
      SQLInventario.EnableControls;

      try
        // FECHA INVENTARIO
        SQLExec.Close;
        SQLExec.SQL.Clear;
        SQLExec.SQL.ADD('UPDATE INVENTARIOESTOQUE SET Pendente="S", INVDFECHAMENTO = "' + FormatDateTime('mm/dd/yyyy',Date) + '"');
        SQLExec.SQL.ADD(' WHERE EMPRICOD = ' +  IntToStr(SQLInventarioEMPRICOD.Value));
        SQLExec.SQL.ADD(' AND TERMICOD = ' + IntToStr(SQLInventarioTERMICOD.Value));
        SQLExec.SQL.ADD(' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"');
        SQLExec.ExecSQL;
        SQLInventario.Close;
        SQLInventario.Open;
        DestroyWindow;
        MessageDlg('Saldo Estoque aumentado com sucesso!', mtInformation, [mbOK], 0);
      except
        on E:Exception do
          begin
            DestroyWindow;
            MessageDlg('Problemas ao atualizar saldo de estoque, ANOTE O ERRO: ' + #13 + E.Message, mtError, [mbOK], 0);
            Application.ProcessMessages;
          end;
      end;
    end
  else
    begin
      MessageDlg('O usuário informado não tem permissao para alterar o Saldo do ' +
        #13+#10+'Estoque pelo Inventario.', mtWarning, [mbOK], 0);
      Abort;
      Exit;
    end;
  UsuarioCorrente := Usuario;
end;

procedure TFormTelaContagemManual.MnDiminuirClick(Sender: TObject);
  var
  RegAtual: TBookmarkStr;
  Usuario,I, vOperacao: Integer;
  InfoRetorno : TInfoRetornoUser;
begin
  if vTipoInventario = 'F' then
    begin
      Informa('Inventário Fiscal não movimenta ESTOQUE!');
      exit; {Nao atualizar estoque QUANDO TIPO=FISCAL}
    end;

  SQLConfigInventario.Close;
  SQLConfigInventario.Open;

  Usuario := UsuarioCorrente;
  if AutenticaUsuario(UsuarioAtualNome,'USUCALTERASLDINVENTARIO',InfoRetorno) = 'S' then
    begin
      RegAtual := SQLInventario.Bookmark;
      SQLInventario.First;
      MakeWindow(SQLInventario.RecordCount,'Diminuindo do Saldo de Estoque Atual!');
      I := 0;
      SQLInventario.DisableControls;
      while not (SQLInventario.Eof) do
      begin
        if SQLInventarioINVDFECHAMENTO.AsVariant = null then
          begin
            SQLProdutoSaldo.Close;
            SQLProdutoSaldo.MacroByName('MFiltro').AsString :=
              ' PRODICOD = '     + SQLInventarioPRODICOD.AsString +
              ' AND EMPRICOD = ' + SQLInventarioEMPRICOD.AsString;
            SQLProdutoSaldo.Open;
            if SQLProdutoSaldo.IsEmpty then
              begin
                SQLProdutoSaldo.Insert;
                SQLProdutoSaldoPRODICOD.AsInteger   :=  SQLInventarioPRODICOD.AsInteger;
                SQLProdutoSaldoEMPRICOD.AsInteger   :=  SQLInventarioEMPRICOD.AsInteger;
                SQLProdutoSaldoPSLDN3QTDE.AsFloat   :=  0;
                SQLProdutoSaldoPSLDN3QTDMIN.AsFloat :=  0;
                SQLProdutoSaldoPSLDN3QTDMAX.AsFloat :=  0;
                SQLProdutoSaldoPENDENTE.AsString    := 'S';
                SQLProdutoSaldoREGISTRO.AsDateTime  := Now;
                SQLProdutoSaldo.Post;
              end;
            if (SQLInventarioINVICONTAGEM1.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM1.IsNull)) then
                Qtde := SQLInventarioINVICONTAGEM1.AsFloat;
            if (SQLInventarioINVICONTAGEM2.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM2.IsNull)) then
                Qtde := SQLInventarioINVICONTAGEM2.AsFloat;
            if (SQLInventarioINVICONTAGEM3.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM3.IsNull)) then
                Qtde := SQLInventarioINVICONTAGEM3.AsFloat;

            if sqlinventarioINVDFECHAMENTO.AsString = '' then
              begin
                GravaMovimentoEstoque(DM.SQLProduto,
                                      DM.SQLProdutoFilho,
                                      DM.SQLProdutoSaldo,
                                      SQLInventarioEMPRICOD.Value,//Empresa
                                      SQLInventarioPRODICOD.AsInteger,//Produto
                                      SQLConfigInventarioOPESICODSAIDA.AsInteger,//Operacao
                                      Qtde,//Quantidade
                                      'S',//ENTRADA/SAIDA
                                      FormatDateTime('mm/dd/yyyy', Now),
                                      '0', // Valor nao usado
                                      'MOVIMENTOSDIVERSOS', // Tipo Operacao
                                      'DI'+FormatDateTime('dd/mm/yy', Now), // Documento
                                      ''); //Lote
              end;
          end;
        SQLInventario.Next;
        Inc(I);
        SetProgress(I);
        Application.ProcessMessages;
      end;
      SQLInventario.Bookmark := RegAtual;
      SQLInventario.EnableControls;

      try
        // FECHA INVENTARIO
        SQLExec.Close;
        SQLExec.SQL.Clear;
        SQLExec.SQL.ADD('UPDATE INVENTARIOESTOQUE SET Pendente="S", INVDFECHAMENTO = "' + FormatDateTime('mm/dd/yyyy',Date) + '"');
        SQLExec.SQL.ADD(' WHERE EMPRICOD = ' +  IntToStr(SQLInventarioEMPRICOD.Value));
        SQLExec.SQL.ADD(' AND TERMICOD = ' + IntToStr(SQLInventarioTERMICOD.Value));
        SQLExec.SQL.ADD(' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"');
        SQLExec.ExecSQL;
        SQLInventario.Close;
        SQLInventario.Open;
        DestroyWindow;
        MessageDlg('Saldo Estoque aumentado com sucesso!', mtInformation, [mbOK], 0);
      except
        on E:Exception do
          begin
            DestroyWindow;
            MessageDlg('Problemas ao atualizar saldo de estoque, ANOTE O ERRO: ' + #13 + E.Message, mtError, [mbOK], 0);
            Application.ProcessMessages;
          end;
      end;
    end
  else
    begin
      MessageDlg('O usuário informado não tem permissao para alterar o Saldo do ' +
        #13+#10+'Estoque pelo Inventario.', mtWarning, [mbOK], 0);
      Abort;
      Exit;
    end;
  UsuarioCorrente := Usuario;
end;

procedure TFormTelaContagemManual.EditContagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      try
        if StrToFloat(EditContagem.Text) > 1000  then
          begin
            Beep;
            SoundPlay('error.wav',Sender);
            Showmessage('Por segurança o sistema não deixa dar entradas elevadas! Divida o lançamento!');
            EditContagem.SetFocus;
            Abort;
            exit;
          end
        else
          begin
            if actGravar.Enabled then
              actGravar.Execute;
          end;
      except
        Abort;
      end;
    end;
end;

procedure TFormTelaContagemManual.IncorporaraoNegativo1Click(
  Sender: TObject);
var
  RegAtual: TBookmarkStr;
  Usuario,I, vOperacao: Integer;
  InfoRetorno : TInfoRetornoUser;
begin
  if vTipoInventario = 'F' then
    begin
      Informa('Inventário Fiscal não movimenta ESTOQUE!');
      exit; {Nao atualizar estoque QUANDO TIPO=FISCAL}
    end;

  SQLConfigInventario.Close;
  SQLConfigInventario.Open;

{  if SQLInventarioINVDFECHAMENTO.AsVariant <> null then
    begin
      Informa('Este inventário já foi encerrado. A operação será cancelada!');
      Exit;
    end; }

  Usuario := UsuarioCorrente;
  if AutenticaUsuario(UsuarioAtualNome,'USUCALTERASLDINVENTARIO',InfoRetorno) = 'S' then
    begin
      RegAtual := SQLInventario.Bookmark;
      SQLInventario.First;
      MakeWindow(SQLInventario.RecordCount,'Aumentando no Saldo de Estoque Atual com Adição do saldo Negativos');
      I := 0;
      SQLInventario.DisableControls;
      while not (SQLInventario.Eof) do
      begin
        if SQLInventarioINVDFECHAMENTO.AsVariant = null then
          begin
            SQLProdutoSaldo.Close;
            SQLProdutoSaldo.MacroByName('MFiltro').AsString :=
              ' PRODICOD = '     + SQLInventarioPRODICOD.AsString +
              ' AND EMPRICOD = ' + SQLInventarioEMPRICOD.AsString;
            SQLProdutoSaldo.Open;
            if SQLProdutoSaldo.IsEmpty then
              begin
                SQLProdutoSaldo.Insert;
                SQLProdutoSaldoPRODICOD.AsInteger   :=  SQLInventarioPRODICOD.AsInteger;
                SQLProdutoSaldoEMPRICOD.AsInteger   :=  SQLInventarioEMPRICOD.AsInteger;
                SQLProdutoSaldoPSLDN3QTDE.AsFloat   :=  0;
                SQLProdutoSaldoPSLDN3QTDMIN.AsFloat :=  0;
                SQLProdutoSaldoPSLDN3QTDMAX.AsFloat :=  0;
                SQLProdutoSaldoPENDENTE.AsString    := 'S';
                SQLProdutoSaldoREGISTRO.AsDateTime  := Now;
                SQLProdutoSaldo.Post;
              end;
            if (SQLInventarioINVICONTAGEM1.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM1.IsNull)) then
              if SQLProdutoSaldoPSLDN3QTDE.AsFloat < 0 then
                Qtde := SQLInventarioINVICONTAGEM1.AsFloat + (-(SQLProdutoSaldoPSLDN3QTDE.AsFloat))
              else
                Qtde := SQLInventarioINVICONTAGEM1.AsFloat;

            if (SQLInventarioINVICONTAGEM2.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM2.IsNull)) then
              if SQLProdutoSaldoPSLDN3QTDE.AsFloat < 0 then
                Qtde := SQLInventarioINVICONTAGEM2.AsFloat + (-(SQLProdutoSaldoPSLDN3QTDE.AsFloat))
              else
                Qtde := SQLInventarioINVICONTAGEM2.AsFloat;
            if (SQLInventarioINVICONTAGEM3.AsFloat <> 0) and
              (not (SQLInventarioINVICONTAGEM3.IsNull)) then
              if SQLProdutoSaldoPSLDN3QTDE.AsFloat < 0 then
                Qtde := SQLInventarioINVICONTAGEM3.AsFloat + (-(SQLProdutoSaldoPSLDN3QTDE.AsFloat))
              else
                Qtde := SQLInventarioINVICONTAGEM3.AsFloat;

            if sqlinventarioINVDFECHAMENTO.AsString = '' then
              begin
                GravaMovimentoEstoque(DM.SQLProduto,
                                      DM.SQLProdutoFilho,
                                      DM.SQLProdutoSaldo,
                                      SQLInventarioEMPRICOD.Value,//Empresa
                                      SQLInventarioPRODICOD.AsInteger,//Produto
                                      SQLConfigInventarioOPESICODENTRADA.AsInteger,//Operacao
                                      Qtde,//Quantidade
                                      'E',//ENTRADA/SAIDA
                                      FormatDateTime('mm/dd/yyyy', Now),
                                      '0', // Valor nao usado
                                      'MOVIMENTOSDIVERSOS', // Tipo Operacao
                                      'AI'+FormatDateTime('dd/mm/yy', Now), // Documento
                                      ''); //Lote
              end;
          end;
        SQLInventario.Next;
        Inc(I);
        SetProgress(I);
        Application.ProcessMessages;
      end;
      SQLInventario.Bookmark := RegAtual;
      SQLInventario.EnableControls;

      try
        // FECHA INVENTARIO
        SQLExec.Close;
        SQLExec.SQL.Clear;
        SQLExec.SQL.ADD('UPDATE INVENTARIOESTOQUE SET Pendente="S", INVDFECHAMENTO = "' + FormatDateTime('mm/dd/yyyy',Date) + '"');
        SQLExec.SQL.ADD(' WHERE EMPRICOD = ' +  IntToStr(SQLInventarioEMPRICOD.Value));
        SQLExec.SQL.ADD(' AND TERMICOD = ' + IntToStr(SQLInventarioTERMICOD.Value));
        SQLExec.SQL.ADD(' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"');
        SQLExec.ExecSQL;
        SQLInventario.Close;
        SQLInventario.Open;
        DestroyWindow;
        MessageDlg('Saldo Estoque aumentado com sucesso!', mtInformation, [mbOK], 0);
      except
        on E:Exception do
          begin
            DestroyWindow;
            MessageDlg('Problemas ao atualizar saldo de estoque, ANOTE O ERRO: ' + #13 + E.Message, mtError, [mbOK], 0);
            Application.ProcessMessages;
          end;
      end;
    end
  else
    begin
      MessageDlg('O usuário informado não tem permissao para alterar o Saldo do ' +
        #13+#10+'Estoque pelo Inventario.', mtWarning, [mbOK], 0);
      Abort;
      Exit;
    end;
  UsuarioCorrente := Usuario;
end;

procedure TFormTelaContagemManual.ImportardoPalmOne1Click(Sender: TObject);
var
  Field, ErrosEncontrados, CodProduto : String;
  LinhaAtual, NroLinhas : integer;
  HouveErro : Boolean;
  Info : string;
begin
  if FileExists('..\Invent.Txt') then
  begin
    Memo1.Lines.Clear;
    if Application.MessageBox('Deseja realmente importar os registro do Arquivo ..\Invent.Txt ?','Atenção',MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = IDYES then
    begin
      case RadioGroupContagem.ItemIndex of
      0: Field := 'INVICONTAGEM1';
      1: Field := 'INVICONTAGEM2';
      2: Field := 'INVICONTAGEM3';
      end;
      ErrosEncontrados := '';
      NroLinhas := 0;
      AssignFile(Texto,'..\Invent.Txt');
      Reset(Texto);
      while not EOF(Texto) do
      begin
        Readln(Texto,Info);
        NroLinhas := NroLinhas + 1;
      end;
      CloseFile(Texto);

      ProgressBar.Min := 1;
      ProgressBar.Max := NroLinhas;

      AssignFile(Texto,'..\Invent.Txt');
      Reset(Texto);
      LinhaAtual := 0;
      HouveErro  := False;
      while not EOF(Texto) do
      begin
        Application.ProcessMessages;
        ReadLn(Texto,Info);
        LinhaAtual := LinhaAtual + 1;
        LabelTitulo.Caption := 'Lendo Linha Nro.: ' + IntToStr(LinhaAtual) + ' de ' + IntToStr(NroLinhas);
        LabelTitulo.Update;
        ProgressBar.Position := ProgressBar.Position + 1;
        ProgressBar.Update;
        try
          CodProduto := '';
          CodProduto := Dm.SQLLocate('PRODUTOBARRAS','PRBAA15BARRAS','PRODICOD','"'+Info+'"');

          if (CodProduto = '') then
            CodProduto := Dm.SQLLocate('PRODUTO','PRODA60CODBAR','PRODICOD','"'+Info+'"');

          if (CodProduto = '') then
            CodProduto := Dm.SQLLocate('PRODUTO','PRODICOD','PRODICOD', Info);

          if CodProduto <> '' Then
          begin
            SQLConsultaInventario.Close;
            SQLConsultaInventario.MacroByName('MFILTRO').AsString :=
                                    ' EMPRICOD = '      + IntToStr(EmpresaCorrente)  +
                                    ' AND TERMICOD = '  + IntToStr(TerminalCorrente) +
                                    ' AND TIPO = "'     + vTipoInventario + '"' +
                                    ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"'+
                                    ' AND PRODICOD = "' + CodProduto +'"';
            SQLConsultaInventario.Open;

            if not SQLConsultaInventario.IsEmpty then
            begin
                SQLConsultaInventario.Edit;
                SQLConsultaInventario.FieldByName(Field).AsFloat := SQLConsultaInventario.FieldByName(Field).AsFloat + 1;
            End else
            begin
              SQLConsultaInventario.Append;
              SQLConsultaInventario.FieldByName('PRODICOD').AsString := CodProduto;
              SQLConsultaInventario.FieldByName(Field).Value         := 1;
              SQLConsultaInventarioTIPO.Value                        := vTipoInventario;
            end;
            SQLConsultaInventario.Post;
          End Else
          begin
            Memo1.Lines.Add('Codigo de Produto Não Encontrado: '+Info);
            HouveErro := True;
          end;
        except on e:Exception do
        begin
          HouveErro := True;
          Memo1.Lines.Add('Problemas ao importar Produto : ' + Info + #13#10 + e.message);
        end; end;
      End;
      CloseFile(Texto);
    end;

    ProgressBar.Position:=0;
    ProgressBar.UpDate;

    if HouveErro then
      begin
        CaminhoNomeArquivo := 'c:\easy2solutions\coletor\Erros_Coletor_'+FormatDateTime('ddmmyyyy',now)+'.txt';
        AssignFile(Texto, CaminhoNomeArquivo);
        Rewrite(Texto);
        Reset(Texto);
        Append(Texto);
        Writeln(Texto,memo1.lines.text);
        CloseFile(Texto);

        ShowMessage(CaminhoNomeArquivo);
      end
    else
      begin
        Origem  := '..\Invent.Txt';
        Destino := 'c:\easy2solutions\coletor\Invent_importada_'+FormatDateTime('ddmmyy_hhnn',now);
        CopyFile(PChar(origem), PChar(destino), false);
        DeleteFile(PChar(origem));
        ShowMessage('Importação Executada com Sucesso');
      end;
  End Else
    Showmessage('Arquivo ..\Invent.Txt não foi localizado');
  LabelTitulo.Caption := 'Digitação de Dados (Inventário)';
  LabelTitulo.Refresh;
end;

procedure TFormTelaContagemManual.ComboTipoInventarioChange(
  Sender: TObject);
begin
  case ComboTipoInventario.ItemIndex of
    0 : vTipoInventario := 'F';
    1 : vTipoInventario := 'G';
  end;
end;

procedure TFormTelaContagemManual.btAjusteInventarioFiscalClick(Sender: TObject);
var nCustoEstoqueCalc, nCustoDesejado, nDiferencaValor, nDiferencaPercentual, nNovoValorCusto, nQtde : Double;
begin
  {Achar o custo do estoque atual e mostrar}
  if not SQLInventario.Active then
    SQLInventario.open;
    
  dm.SQLConsulta.Close;
  dm.SQLConsulta.sql.clear;
  dm.SQLConsulta.sql.add('select sum(PRODUTOSALDO.PSLDN3QTDE*PRODUTO.PRODN3VLRCUSTO) as ValorEstoque from ');
  dm.SQLConsulta.sql.add('Produto Produto inner join ProdutoSaldo on Produto.PRODICOD = ProdutoSaldo.PRODICOD');
  dm.SQLConsulta.sql.add('where PRODUTOSALDO.PSLDN3QTDE>0 and PRODUTO.PRODN3VLRCUSTO>0 and PRODUTO.PRODA2TIPOITEM = "00" and PRODUTO.PRODCSERVICO <> "M"');
  dm.SQLConsulta.sql.add(' and PRODUTO.PRODCATIVO = "S" and PRODUTOSALDO.EMPRICOD = '+ intToStr(ComboEmpresa.KeyValue));
  dm.SQLConsulta.Open;
  if dm.SQLConsulta.findfield('ValorEstoque').IsNull then
    nCustoEstoqueCalc := 0
  else
    nCustoEstoqueCalc := dm.SQLConsulta.findfield('ValorEstoque').Value;

  msg.Visible := True;
  msg.caption := 'Estoque Gerencial Atual esta em R$ '+FormatFloat('##0.00',nCustoEstoqueCalc);
  msg.Update;

  if Application.MessageBox('Preparar o Inventario Fiscal para o SPED ?','Pergunta', MB_YESNO) = mryes then
    begin

      nCustoDesejado := EditValorEstoque.Value;

      {Verificar Comparacao pra ver se estoque desejado pelo usuario é maior ou menor que estoque calculado via sistema}
      {para saber se tenho que acrescentar ou diminuir valores}
      nDiferencaValor := nCustoEstoqueCalc - nCustoDesejado;
      if nDiferencaValor > 0 then {Pq o estoque do sistema esta maior que o desejado, e tera que ir diminuindo ate chegar no total desejado}
        begin
          nDiferencaPercentual := 100 -((nCustoDesejado/nCustoEstoqueCalc)*100) ; {achar a dif que terei qua baixar em percentual}
          if nDiferencaPercentual > 100 then
            begin
              ShowMessage('Percentual de Redução não pode ser Superior a 100%. Verifique!');
              msg.Visible := False;
              Exit;
            end;

          try
            nNovoValorCusto := SQLTotalContagemTOTALCUSTO1.Value;
          except
            nNovoValorCusto := 0;
          end;

          {Listar produtos que tenha zaldo maior que zero}
          dm.SQLConsulta.Close;
          dm.SQLConsulta.sql.clear;
          dm.SQLConsulta.sql.add('select PRODUTO.PRODICOD, PRODUTO.PRODN3VLRCUSTO, PRODUTO.UNIDICOD, PRODUTOSALDO.PSLDN3QTDE from ');
          dm.SQLConsulta.sql.add('PRODUTOSALDO inner join PRODUTO on (PRODUTO.PRODICOD  = PRODUTOSALDO.PRODICOD)');
          dm.SQLConsulta.sql.add('where PRODUTOSALDO.PSLDN3QTDE>10 and PRODUTO.PRODN3VLRCOMPRA>0 and PRODUTO.PRODA2TIPOITEM = "00" and PRODUTO.PRODCSERVICO = "N"');
          dm.SQLConsulta.sql.add(' and PRODUTO.PRODCATIVO = "S" and PRODUTOSALDO.EMPRICOD = '+ intToStr(ComboEmpresa.KeyValue));
          dm.SQLConsulta.sql.add(' order by PRODUTOSALDO.PSLDN3QTDE asc');
          dm.SQLConsulta.Open;

          ProgressBar.Min:=1;
          ProgressBar.Max:=dm.SQLConsulta.RecordCount;
          SQLConsultaInventario.DisableControls;
          SQLConsultaInventario.AfterPost := nil;
          while not dm.SQLConsulta.eof do
            begin
              SQLConsultaInventario.Close;
              SQLConsultaInventario.MacroByName('MFILTRO').AsString := ' EMPRICOD = ' +  IntToStr(ComboEmpresa.KeyValue) +
                                                                       ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
                                                                       ' AND TIPO = "'     + vTipoInventario + '"' +
                                                                       ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) +
                                                                       '" AND PRODICOD = ' + dm.SQLConsulta.findfield('PRODICOD').AsString;
              SQLConsultaInventario.Open;

              SQLConsultaInventario.Insert;
              SQLConsultaInventarioPRODICOD.AsInteger := dm.SQLConsulta.findfield('PRODICOD').Value;
              nQtde := (dm.SQLConsulta.findfield('PSLDN3QTDE').Value*nDiferencaPercentual)/100;
              nQtde := (dm.SQLConsulta.findfield('PSLDN3QTDE').Value-nQtde);
              {se for produto fracionado}
              if dm.SQLLocate('unidade','unidicod','UNIDCFRAC',dm.SQLLocate('produto','prodicod','unidicod',dm.SQLConsulta.findfield('PRODICOD').AsString)) = 'S' then
                SQLConsultaInventarioINVICONTAGEM1.AsFloat := SQLConsultaInventarioINVICONTAGEM1.AsFloat + nQtde
              else
                SQLConsultaInventarioINVICONTAGEM1.AsFloat := SQLConsultaInventarioINVICONTAGEM1.AsFloat + round(nQtde) ;

              SQLConsultaInventarioTIPO.Value := vTipoInventario;
              SQLConsultaInventario.Post;

              nNovoValorCusto := nNovoValorCusto + (SQLConsultaInventarioINVICONTAGEM1.AsFloat*dm.SQLConsulta.findfield('PRODN3VLRCUSTO').Value);

              msg.caption := 'Estoque Atual R$ '+FormatFloat('##0.00',nCustoEstoqueCalc)+' Reduzindo Inventario em '+FormatFloat('##0.00',nDiferencaPercentual)+'% para chegar ao valor desejado... Novo Valor Custo Estoque em R$ ' + FormatFloat('##0.00',nNovoValorCusto);
              msg.Update;
              ProgressBar.Position:=ProgressBar.Position+1;
              ProgressBar.UpDate;

              dm.SQLConsulta.next;

              if (nNovoValorCusto >= nCustoDesejado) then
                dm.SQLConsulta.last;

              Application.ProcessMessages;
            end;
        end
      else
        begin {Pq o estoque do sistema esta menor que o desejado, e tera que ir aumentando ate chegar no total desejado}
          try
            nNovoValorCusto := SQLTotalContagemTOTALCUSTO1.Value;
          except
            nNovoValorCusto := 0;
          end;
          nDiferencaPercentual := 110 - ((nCustoEstoqueCalc/nCustoDesejado)*100) ; {achar a dif que terei qua aumentar em percentual}
          if nDiferencaPercentual > 100 then
            begin
              ShowMessage('Percentual de Redução não pode ser Superior a 100%. Verifique!');
              msg.Visible := False;
              Exit;
            end;

          {Listar produtos que tenha zaldo maior que zero}
          dm.SQLConsulta.Close;
          dm.SQLConsulta.sql.clear;
          dm.SQLConsulta.sql.add('select PRODUTO.PRODICOD, PRODUTO.PRODN3VLRCUSTO, PRODUTO.UNIDICOD, PRODUTOSALDO.PSLDN3QTDE from ');
          dm.SQLConsulta.sql.add('PRODUTOSALDO inner join PRODUTO on (PRODUTO.PRODICOD  = PRODUTOSALDO.PRODICOD)');
          dm.SQLConsulta.sql.add('where PRODUTOSALDO.PSLDN3QTDE>1 and PRODUTO.PRODN3VLRCOMPRA>0 and PRODUTO.PRODA2TIPOITEM = "00" and PRODUTO.PRODCSERVICO = "N"');
          dm.SQLConsulta.sql.add(' and PRODUTO.PRODCATIVO = "S" and PRODUTOSALDO.EMPRICOD = '+ intToStr(ComboEmpresa.KeyValue));
          dm.SQLConsulta.sql.add(' order by PRODUTOSALDO.PSLDN3QTDE asc');
          dm.SQLConsulta.Open;

          ProgressBar.Min:=1;
          ProgressBar.Max:=dm.SQLConsulta.RecordCount;
          SQLConsultaInventario.DisableControls;
          SQLConsultaInventario.AfterPost := nil;
          while not dm.SQLConsulta.eof do
            begin
              SQLConsultaInventario.Close;
              SQLConsultaInventario.MacroByName('MFILTRO').AsString := ' EMPRICOD = ' +  IntToStr(ComboEmpresa.KeyValue) +
                                                                       ' AND TERMICOD = '  + IntToStr(ComboTerminal.KeyValue) +
                                                                       ' AND TIPO = "'     + vTipoInventario + '"' +
                                                                       ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) +
                                                                       '" AND PRODICOD = ' + dm.SQLConsulta.findfield('PRODICOD').AsString;
              SQLConsultaInventario.Open;

              SQLConsultaInventario.Insert;
              SQLConsultaInventarioPRODICOD.AsInteger := dm.SQLConsulta.findfield('PRODICOD').Value;
              nQtde := (dm.SQLConsulta.findfield('PSLDN3QTDE').Value*nDiferencaPercentual)/100;
              nQtde := (dm.SQLConsulta.findfield('PSLDN3QTDE').Value+nQtde);
              {se for produto fracionado}
              if dm.SQLLocate('unidade','unidicod','UNIDCFRAC',dm.SQLLocate('produto','prodicod','unidicod',dm.SQLConsulta.findfield('PRODICOD').AsString)) = 'S' then
                SQLConsultaInventarioINVICONTAGEM1.AsFloat := SQLConsultaInventarioINVICONTAGEM1.AsFloat + nQtde
              else
                SQLConsultaInventarioINVICONTAGEM1.AsFloat := SQLConsultaInventarioINVICONTAGEM1.AsFloat + round(nQtde) ;
              SQLConsultaInventarioTIPO.Value := vTipoInventario;
              SQLConsultaInventario.Post;

              nNovoValorCusto := nNovoValorCusto + (SQLConsultaInventarioINVICONTAGEM1.AsFloat*dm.SQLConsulta.findfield('PRODN3VLRCUSTO').Value);

              msg.caption := 'Estoque Atual R$ '+FormatFloat('##0.00',nCustoEstoqueCalc)+' Aumentando Inventario em '+FormatFloat('##0.00',nDiferencaPercentual)+'% para chegar ao valor desejado... Novo Valor Custo em R$ ' + FormatFloat('##0.00',nNovoValorCusto);
              msg.Update;
              ProgressBar.Position:=ProgressBar.Position+1;
              ProgressBar.UpDate;

              dm.SQLConsulta.next;

              if (nNovoValorCusto >= nCustoDesejado) then
                dm.SQLConsulta.last;

              Application.ProcessMessages;
            end;
        end;
      ProgressBar.Position:=0;
      ProgressBar.UpDate;
      SQLConsultaInventario.AfterPost := SQLConsultaInventarioAfterPost;
      SQLConsultaInventario.EnableControls;
      SQLInventario.close;
      SQLInventario.open;
      msg.caption := 'Estoque Fiscal SPED ajustado para R$ '+EditTotalCusto1.Text+ ' na data de '+data.Text;
      msg.Update;
      ShowMessage('Operação Concluida!');
    end;
end;

procedure TFormTelaContagemManual.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_F2 then
    MnAlterarPrimeiraContagem.click;
  if Key = Vk_F3 then
    Produtoselecionado1.click;

  if (key = 8) or (key = 27) then
    begin
      lbProdutoConsulta.Caption := '';
      lbProdutoConsulta.update;
      SQLInventario.Close;
      SQLInventario.Open;
    end;
  if (key >= 48) and (key <= 57) then
    begin
      lbProdutoConsulta.Caption := lbProdutoConsulta.Caption + char(Key);
      lbProdutoConsulta.update;
    end;
  if (key = 13) then
    begin
      SQLInventario.Close;
      SQLInventario.Open;
      lbProdutoConsulta.Caption := '';
      lbProdutoConsulta.update;
      DBGridLista.SetFocus;
    end;
end;

procedure TFormTelaContagemManual.ZerarSaldoEstoquedosprodutosdesseinventario1Click(
  Sender: TObject);
var Saldo : Double;  
begin
  if Application.MessageBox('Zerar Saldo Estoque desse Inventário Selecionado?','Pergunta', MB_YESNO) = mryes then
    begin
      SQLInventario.First;
      SQLInventario.DisableControls;
      while not SQLInventario.Eof do
      begin
        if SQLInventarioINVDFECHAMENTO.AsVariant = null then
          begin
            SQLProdutoSaldo.Close;
            SQLProdutoSaldo.MacroByName('MFiltro').AsString :=
              ' PRODICOD = '     + SQLInventarioPRODICOD.AsString +
              ' AND EMPRICOD = ' + SQLInventarioEMPRICOD.AsString;
            SQLProdutoSaldo.Open;
            if SQLProdutoSaldo.IsEmpty then
              begin
                SQLProdutoSaldo.Insert;
                SQLProdutoSaldoPRODICOD.AsInteger   :=  SQLInventarioPRODICOD.AsInteger;
                SQLProdutoSaldoEMPRICOD.AsInteger   :=  SQLInventarioEMPRICOD.AsInteger;
                SQLProdutoSaldoPSLDN3QTDE.AsFloat   :=  0;
                SQLProdutoSaldoPSLDN3QTDMIN.AsFloat :=  0;
                SQLProdutoSaldoPSLDN3QTDMAX.AsFloat :=  0;
                SQLProdutoSaldoPENDENTE.AsString    := 'S';
                SQLProdutoSaldoREGISTRO.AsDateTime  := Now;
                SQLProdutoSaldo.Post;
              end;

              if SQLProdutoSaldoPSLDN3QTDE.AsFloat < 0 then
                GravaMovimentoEstoque(DM.SQLProduto,
                                      DM.SQLProdutoFilho,
                                      DM.SQLProdutoSaldo,
                                      SQLInventarioEMPRICOD.Value,//Empresa
                                      SQLInventarioPRODICOD.AsInteger,//Produto
                                      SQLConfigInventarioOPESICODENTRADA.AsInteger,//Operacao
                                      -(SQLProdutoSaldoPSLDN3QTDE.AsFloat),//Quantidade
                                      'E',//ENTRADA/SAIDA
                                      FormatDateTime('mm/dd/yyyy', Now),
                                      '0', // Valor nao usado
                                      'MOVIMENTOSDIVERSOS', // Tipo Operacao
                                      'AI'+FormatDateTime('dd/mm/yy', Now), // Documento
                                      ''); //Lote
              if SQLProdutoSaldoPSLDN3QTDE.AsFloat > 0 then
                GravaMovimentoEstoque(DM.SQLProduto,
                                      DM.SQLProdutoFilho,
                                      DM.SQLProdutoSaldo,
                                      SQLInventarioEMPRICOD.Value,//Empresa
                                      SQLInventarioPRODICOD.AsInteger,//Produto
                                      SQLConfigInventarioOPESICODENTRADA.AsInteger,//Operacao
                                      SQLProdutoSaldoPSLDN3QTDE.AsFloat,//Quantidade
                                      'S',//ENTRADA/SAIDA
                                      FormatDateTime('mm/dd/yyyy', Now),
                                      '0', // Valor nao usado
                                      'MOVIMENTOSDIVERSOS', // Tipo Operacao
                                      'DI'+FormatDateTime('dd/mm/yy', Now), // Documento
                                      ''); //Lote
          end;
        SQLInventario.Next;
        Application.ProcessMessages;
      end;
      SQLInventario.EnableControls;
      {Apaga os registro apos o zeramento do estoque}
      InventrioSelecionado1.click;
    end;
end;

procedure TFormTelaContagemManual.ImportarBematechDC20001Click(
  Sender: TObject);
var
  Field, ErrosEncontrados, CodProduto, CodInterno, vQtde, sCampo : String;
  LinhaAtual, NroLinhas, I, ContadorCampos : integer;
  HouveErro : Boolean;
  Info : string;
begin
  if FileExists('c:\easy2solutions\coletor\Contagem.txt') then
    begin
      Memo1.Lines.Clear;
      if Application.MessageBox('Deseja realmente importar os registro do Arquivo c:\easy2solutions\coletor\Contagem.txt ?','Atenção',MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = IDYES then
        begin
          case RadioGroupContagem.ItemIndex of
            0: Field := 'INVICONTAGEM1';
            1: Field := 'INVICONTAGEM2';
            2: Field := 'INVICONTAGEM3';
          end;
          ErrosEncontrados := '';
          NroLinhas := 0;
          AssignFile(Texto,'c:\easy2solutions\coletor\Contagem.txt');
          Reset(Texto);
          while not EOF(Texto) do
          begin
            Readln(Texto,Info);
            NroLinhas := NroLinhas + 1;
          end;
          CloseFile(Texto);

          ProgressBar.Min := 1;
          ProgressBar.Max := NroLinhas;

          AssignFile(Texto,'c:\easy2solutions\coletor\Contagem.txt');
          Reset(Texto);

          {pula titulo}
          Readln(Texto,Info);

          LinhaAtual := 0;
          HouveErro  := False;
          while not EOF(Texto) do
            begin
              Application.ProcessMessages;
              ReadLn(Texto,Info);
              LinhaAtual := LinhaAtual + 1;
              LabelTitulo.Caption := 'Lendo Linha Nro.: ' + IntToStr(LinhaAtual) + ' de ' + IntToStr(NroLinhas);
              LabelTitulo.Update;
              ProgressBar.Position := ProgressBar.Position + 1;
              ProgressBar.UpDate;

              ContadorCampos := 1;
              sCampo := '';
              for i:= 1 to Length(Info) do
                begin
                  if Info[i] = ';' then
                    begin
                      Case ContadorCampos of
                         1 : CodProduto  := trim(sCampo);
                      end;
                      sCampo:= '';
                      ContadorCampos := ContadorCampos+1;
                      Continue;
                    end
                  else
                    sCampo:= sCampo + Info[i];
                end;
              vQtde := trim(sCampo);

              try
                CodInterno := '';
                CodInterno := Dm.SQLLocate('PRODUTOBARRAS','PRBAA15BARRAS','PRODICOD','"'+CodProduto+'"');

                if (CodInterno = '') then
                  CodInterno := Dm.SQLLocate('PRODUTO','PRODA60CODBAR','PRODICOD','"'+CodProduto+'"');

                if (CodInterno = '') then
                  CodInterno := Dm.SQLLocate('PRODUTO','PRODICOD','PRODICOD',CodProduto);

                if CodInterno <> '' Then
                  begin
                    SQLConsultaInventario.Close;
                    SQLConsultaInventario.MacroByName('MFILTRO').AsString :=
                                            ' EMPRICOD = '      + IntToStr(EmpresaCorrente)  +
                                            ' AND TERMICOD = '  + IntToStr(TerminalCorrente) +
                                            ' AND TIPO = "'     + vTipoInventario + '"' +
                                            ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"'+
                                            ' AND PRODICOD = "' + CodInterno +'"';
                    SQLConsultaInventario.Open;

                    if not SQLConsultaInventario.IsEmpty then
                    begin
                        SQLConsultaInventario.Edit;
                        SQLConsultaInventario.FieldByName(Field).AsFloat := SQLConsultaInventario.FieldByName(Field).AsFloat + strToFloat(vQtde);
                    End else
                    begin
                      SQLConsultaInventario.Append;
                      SQLConsultaInventario.FieldByName('PRODICOD').AsString := CodInterno ;
                      SQLConsultaInventario.FieldByName(Field).AsString      := vQtde ;
                      SQLConsultaInventarioTIPO.Value                        := vTipoInventario;
                    end;
                    SQLConsultaInventario.Post;
                  end
                else
                  begin
                    Memo1.Lines.Add('Codigo de Produto Não Encontrado: '+Info);
                    HouveErro := True;
                  end;
              Except
                Application.ProcessMessages;
              End;
            end;
          CloseFile(Texto);
        end;

      ProgressBar.Position:=0;
      ProgressBar.UpDate;

      if HouveErro then
        begin
          // Grava em TXT os Erros Relatados para posterior analise
          CaminhoNomeArquivo := 'c:\easy2solutions\coletor\Erros_Coletor_'+FormatDateTime('ddmmyyyy',now)+'.txt';
          AssignFile(Texto, CaminhoNomeArquivo);
          Rewrite(Texto);
          Reset(Texto);
          Append(Texto);
          Writeln(Texto,memo1.lines.text);
          CloseFile(Texto);

          ShowMessage(CaminhoNomeArquivo);
        end
      else
        begin
          Origem  := 'c:\easy2solutions\coletor\Contagem.txt';
          Destino := 'c:\easy2solutions\coletor\Contagem_importada_'+FormatDateTime('ddmmyy_hhnn',now)+'.txt';
          CopyFile(PChar(origem), PChar(destino), false);
          DeleteFile(PChar(origem));
          ShowMessage('Importação Executada com Sucesso');
        end;
    end
  Else
    Showmessage('Arquivo Contagem.txt não foi localizado');

  LabelTitulo.Caption := 'Digitação de Dados (Inventário)';
  LabelTitulo.Refresh;
end;

procedure TFormTelaContagemManual.ImportarProdutosdoColetorOptimusPadrao1Click(
  Sender: TObject);
var
  Field, ErrosEncontrados, CodProduto, CodInterno, vQtde, sCampo : String;
  LinhaAtual, NroLinhas, I, ContadorCampos : integer;
  HouveErro : Boolean;
  Info : string;
begin
  if FileExists('c:\easy2solutions\coletor\Contagem.txt') then
    begin
      Memo1.Lines.Clear;
      if Application.MessageBox('Deseja realmente importar os registro do Arquivo c:\easy2solutions\coletor\Contagem.txt ?','Atenção',MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = IDYES then
        begin
          case RadioGroupContagem.ItemIndex of
            0: Field := 'INVICONTAGEM1';
            1: Field := 'INVICONTAGEM2';
            2: Field := 'INVICONTAGEM3';
          end;
          ErrosEncontrados := '';
          NroLinhas := 0;
          AssignFile(Texto,'c:\easy2solutions\coletor\Contagem.txt');
          Reset(Texto);
          while not EOF(Texto) do
          begin
            Readln(Texto,Info);
            NroLinhas := NroLinhas + 1;
          end;
          CloseFile(Texto);

          ProgressBar.Min := 1;
          ProgressBar.Max := NroLinhas;

          AssignFile(Texto,'c:\easy2solutions\coletor\Contagem.txt');
          Reset(Texto);

          LinhaAtual := 0;
          HouveErro  := False;
          while not EOF(Texto) do
            begin
              Application.ProcessMessages;
              ReadLn(Texto,Info);
              LinhaAtual := LinhaAtual + 1;
              LabelTitulo.Caption := 'Lendo Linha Nro.: ' + IntToStr(LinhaAtual) + ' de ' + IntToStr(NroLinhas);
              LabelTitulo.Update;
              ProgressBar.Position := ProgressBar.Position + 1;
              ProgressBar.UpDate;

              ContadorCampos := 1;
              sCampo := '';
              for i:= 1 to Length(Info) do
                begin
                  if Info[i] = ',' then
                    begin
                      Case ContadorCampos of
                         2 : CodProduto  := trim(sCampo);
                      end;
                      sCampo:= '';
                      ContadorCampos := ContadorCampos+1;
                      Continue;
                    end
                  else
                    sCampo:= sCampo + Info[i];
                end;
              vQtde := trim(sCampo);

              try
                CodInterno := '';
                CodInterno := Dm.SQLLocate('PRODUTOBARRAS','PRBAA15BARRAS','PRODICOD','"'+CodProduto+'"');

                if (CodInterno = '') then
                  CodInterno := Dm.SQLLocate('PRODUTO','PRODA60CODBAR','PRODICOD','"'+CodProduto+'"');

                if (CodInterno = '') then
                  CodInterno := Dm.SQLLocate('PRODUTO','PRODICOD','PRODICOD',CodProduto);

                if CodInterno <> '' Then
                  begin
                    SQLConsultaInventario.Close;
                    SQLConsultaInventario.MacroByName('MFILTRO').AsString :=
                                            ' EMPRICOD = '      + IntToStr(EmpresaCorrente)  +
                                            ' AND TERMICOD = '  + IntToStr(TerminalCorrente) +
                                            ' AND TIPO = "'     + vTipoInventario + '"' +
                                            ' AND INVDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"'+
                                            ' AND PRODICOD = "' + CodInterno +'"';
                    SQLConsultaInventario.Open;

                    if not SQLConsultaInventario.IsEmpty then
                    begin
                        SQLConsultaInventario.Edit;
                        SQLConsultaInventario.FieldByName(Field).AsFloat := SQLConsultaInventario.FieldByName(Field).AsFloat + strToFloat(vQtde);
                    End else
                    begin
                      SQLConsultaInventario.Append;
                      SQLConsultaInventario.FieldByName('PRODICOD').AsString := CodInterno ;
                      SQLConsultaInventario.FieldByName(Field).AsString      := vQtde ;
                      SQLConsultaInventarioTIPO.Value                        := vTipoInventario;
                    end;
                    SQLConsultaInventario.Post;
                  end
                else
                  begin
                    Memo1.Lines.Add('Codigo de Produto Não Encontrado: '+Info);
                    HouveErro := True;
                  end;
              Except
                Application.ProcessMessages;
              End;
            end;
          CloseFile(Texto);
        end;

      ProgressBar.Position:=0;
      ProgressBar.UpDate;

      if HouveErro then
        begin
          // Grava em TXT os Erros Relatados para posterior analise
          CaminhoNomeArquivo := 'c:\easy2solutions\coletor\Erros_Coletor_'+FormatDateTime('ddmmyyyy',now)+'.txt';
          AssignFile(Texto, CaminhoNomeArquivo);
          Rewrite(Texto);
          Reset(Texto);
          Append(Texto);
          Writeln(Texto,memo1.lines.text);
          CloseFile(Texto);

          ShowMessage(CaminhoNomeArquivo);
        end
      else
        begin
          Origem  := 'c:\easy2solutions\coletor\Contagem.txt';
          Destino := 'c:\easy2solutions\coletor\Contagem_importada_'+FormatDateTime('ddmmyy_hhnn',now)+'.txt';
          CopyFile(PChar(origem), PChar(destino), false);
          DeleteFile(PChar(origem));
          ShowMessage('Importação Executada com Sucesso');
        end;
    end
  Else
    Showmessage('Arquivo Contagem.txt não foi localizado');

  LabelTitulo.Caption := 'Digitação de Dados (Inventário)';
  LabelTitulo.Refresh;
end;

end.

