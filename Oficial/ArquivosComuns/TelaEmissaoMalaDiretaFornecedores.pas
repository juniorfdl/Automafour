unit TelaEmissaoMalaDiretaFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, ppEndUsr, ppBands, ppClass, ppCtrls,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  DB, DBTables, RxQuery, Grids, DBGrids, ExtCtrls, Mask, RxLookup,
  StdCtrls, Buttons, ConerBtn, jpeg, ppVar, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaEmissaoMalaDiretaFornecedores = class(TFormTelaGeralTEMPLATE)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    ComboFiltro: TComboBox;
    EditFiltro: TEdit;
    ConerBtn1: TConerBtn;
    GroupBox4: TGroupBox;
    chkFisica: TRadioButton;
    chkJuridica: TRadioButton;
    chkTodas: TRadioButton;
    DBLUF: TRxDBLookupCombo;
    DBLCidades: TRxDBLookupCombo;
    CepDe: TMaskEdit;
    CepAte: TMaskEdit;
    GroupBox3: TGroupBox;
    ConerBtnOK: TConerBtn;
    RelNovo: TRadioButton;
    RelExistente: TRadioButton;
    RelPadrao: TRadioButton;
    RelExterno: TRadioButton;
    TipoExterno: TRadioGroup;
    DBGridLista: TDBGrid;
    TabelaTemporaria: TTable;
    TabelaTemporariaCLIEA13ID: TStringField;
    TabelaTemporariaCLIEA60RAZAOSOC: TStringField;
    TabelaTemporariaCLIEA60ENDRES: TStringField;
    TabelaTemporariaCLIEA60BAIRES: TStringField;
    TabelaTemporariaCLIEA60CIDRES: TStringField;
    TabelaTemporariaCLIEA2UFRES: TStringField;
    TabelaTemporariaCLIEA8CEPRES: TStringField;
    TabelaTemporariaCLIEA15FONE: TStringField;
    SQLUF: TRxQuery;
    DSSQLUF: TDataSource;
    SQLCidades: TRxQuery;
    DSSQLClientes: TDataSource;
    BatchMove: TBatchMove;
    SQLGeral: TRxQuery;
    DSSQLGeral: TDataSource;
    ExecSql: TRxQuery;
    Clientes: TppDBPipeline;
    Relatorio: TppReport;
    RelatorioDesigner: TppDesigner;
    AbrirRel: TOpenDialog;
    SQLUFFORNA2UF: TStringField;
    SQLCidadesFORNA60CID: TStringField;
    SQLCidadesFORNA2UF: TStringField;
    SQLGeralFORNICOD: TIntegerField;
    SQLGeralFORNA60RAZAOSOC: TStringField;
    SQLGeralFORNA60END: TStringField;
    SQLGeralFORNA60BAI: TStringField;
    SQLGeralFORNA60CID: TStringField;
    SQLGeralFORNA2UF: TStringField;
    SQLGeralFORNA8CEP: TStringField;
    SQLGeralFORNA15FONE1: TStringField;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    ComboOrdem: TComboBox;
    OrdemAsc: TRadioButton;
    OrdemDesc: TRadioButton;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine3: TppLine;
    SQLGeralFORNA14CGC: TStringField;
    procedure DBLUFChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConerBtn1Click(Sender: TObject);
    procedure ConerBtnOKClick(Sender: TObject);
    procedure RelNovoClick(Sender: TObject);
    procedure RelExternoClick(Sender: TObject);
    procedure TipoExternoClick(Sender: TObject);
    procedure ComboFiltroChange(Sender: TObject);
    procedure CepDeChange(Sender: TObject);
    procedure CepAteChange(Sender: TObject);
    procedure CepAteKeyPress(Sender: TObject; var Key: Char);
    procedure CepDeExit(Sender: TObject);
    procedure CepDeKeyPress(Sender: TObject; var Key: Char);
    procedure RelatorioBeforePrint(Sender: TObject);
    procedure DSSQLGeralDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaEmissaoMalaDiretaFornecedores: TFormTelaEmissaoMalaDiretaFornecedores;

implementation

uses FormResources, UnitLibrary, StrUtils;

{$R *.dfm}

procedure TFormTelaEmissaoMalaDiretaFornecedores.DBLUFChange(
  Sender: TObject);
begin
  inherited;
  if DBLUF.text <> 'Todos' then
     begin
        SQLCidades.Close;
        SQLCidades.MacroByName('MFiltro').AsString := ' FORNA2UF = :FORNA2UF';
        SQLCidades.DataSource := DSSQLUF;
        SQLCidades.Open;
     end
  else
     begin
        SQLCidades.Close;
        SQLCidades.MacroByName('MFiltro').AsString := '0=0';
        SQLCidades.DataSource := Nil;
        SQLCidades.Open;
     end
end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.FormCreate(
  Sender: TObject);
begin
  inherited;
  if not SQLUF.Active then SQLUF.Active := True;
end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.ConerBtn1Click(
  Sender: TObject);
var CepI , CepF : String;
begin
  inherited;
  SQLGeral.Close;
  SQLGeral.MacroByName('MFiltro').AsString := '0=0';
  if SQLCidades.Active then
     if DBLCidades.Text <> 'Todos' then
        SQLGeral.MacroByName('MFiltro').AsString := ' FORNA60CID = '''+DBLCidades.Text+'''';

  if DBLUF.Text <> 'Todos' then
    SQLGeral.MacroByName('MFiltro').AsString := SQLGeral.MacroByName('MFiltro').AsString + (' and FORNA2UF  = '''+ DBLUF.Text +'''');

  if chkFisica.Checked then
    SQLGeral.MacroByName('MFiltro').AsString := SQLGeral.MacroByName('MFiltro').AsString + (' and FORNCFISJURID  = ''F''')
  else
    if chkJuridica.Checked then
      SQLGeral.MacroByName('MFiltro').AsString := SQLGeral.MacroByName('MFiltro').AsString + (' and FORNCFISJURID = ''J''');

  if ComboFiltro.Text <> 'Todos' then
    begin
      case ComboFiltro.ItemIndex of
        1 : SQLGeral.MacroByName('MFiltro').AsString := SQLGeral.MacroByName('MFiltro').AsString + (' and FORNA60RAZAOSOC  like ''%'+EditFiltro.Text+'%''');
        2 : SQLGeral.MacroByName('MFiltro').AsString := SQLGeral.MacroByName('MFiltro').AsString + (' and FORNA60RAZAOSOC  like '''+EditFiltro.Text+'%''');
      end;
    end;

  if CepDe.Text <> '     -   ' then
    begin
      if CepAte.Text = '     -   ' then
        begin
           CepAte.SetFocus;
           raise Exception.Create('Você deve informar um CEP final para a consulta.');
        end
      else
        begin
          CepI := CepDe.Text;
          CepF := CepAte.Text;
          Delete(CepI,6,1);
          Delete(CepF,6,1);
          SQLGeral.MacroByName('MFiltro').AsString := SQLGeral.MacroByName('MFiltro').AsString + (' and FORNA8CEP  >= '''+CepI+''' and FORNA8CEP  <= '''+CepF+'''');
        end;
    end;

  case ComboOrdem.ItemIndex of
     0 : SQLGeral.MacroByName('MOrdem').AsString := (' order by  FORNA60RAZAOSOC ');
     1 : SQLGeral.MacroByName('MOrdem').AsString := (' order by  FORNA14CGC ');
     2 : SQLGeral.MacroByName('MOrdem').AsString := (' order by  FORNA60BAI ');
     3 : SQLGeral.MacroByName('MOrdem').AsString := (' order by  FORNA8CEP ');
     4 : SQLGeral.MacroByName('MOrdem').AsString := (' order by  FORNA2UF ');
     5 : SQLGeral.MacroByName('MOrdem').AsString := (' order by  FORNA60CID ');
  end;

  if OrdemAsc.Checked then
     SQLGeral.MacroByName('MOrdem').AsString := SQLGeral.MacroByName('MOrdem').AsString + (' asc');
  if OrdemDesc.Checked then
     SQLGeral.MacroByName('MOrdem').AsString := SQLGeral.MacroByName('MOrdem').AsString + (' desc');

  SQLGeral.Open;

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.ConerBtnOKClick(
  Sender: TObject);
label Inicio;
begin
  inherited;
  Inicio:
  try
     TabelaTemporaria.close;
     TabelaTemporaria.DeleteTable;
     TabelaTemporaria.CreateTable;
  except
     TabelaTemporaria.CreateTable;
  end;
  BatchMove.Execute;
  if DirectoryExists(ExtractFilePath(Application.ExeName)+'Report') then
    begin
      if RelNovo.Checked then
        begin
          RelatorioDesigner.Report.Template.New;
          
          RelatorioDesigner.Show;
        end
      else if RelExistente.Checked then
        begin
          AbrirRel.Filter := 'Relatórios|*.rtm';
          AbrirRel.Options := [ofHideReadOnly,ofEnableSizing];
          if AbrirRel.Execute then
            begin
               RelatorioDesigner.Report.Template.FileName := AbrirRel.FileName;
               RelatorioDesigner.Report.Template.LoadFromFile;
               RelatorioDesigner.Show;
            end;
        end
      else if RelPadrao.Checked then
        begin
          if FileExists(ExtractFilePath(Application.ExeName)+'Report\PadraoFornecedor.rtm') then
             begin
               RelatorioDesigner.Report.Template.FileName := ExtractFilePath(Application.ExeName)+'Report\PadraoFornecedor.rtm';
               RelatorioDesigner.Report.Template.LoadFromFile;
               RelatorioDesigner.Show;
             end
          else
             Informa('Não foi possivel encontrar o arquivo ' + ExtractFilePath(Application.ExeName)+'Report\PadraoFornecedor.rtm');
        end
      else if RelExterno.Checked then
        begin
          AbrirRel.Filter := 'Programas Relatórios|*.exe';
          AbrirRel.Options := [ofReadOnly,ofHideReadOnly,ofNoChangeDir,ofExtensionDifferent,ofEnableSizing,ofDontAddToRecent];
          if AbrirRel.Execute then
            begin
              try
                if TipoExterno.ItemIndex = 0 then
                   begin
                     WinExec(pchar(AbrirRel.FileName+' REL'),SW_MAXIMIZE);
                     TipoExterno.Visible := false;
                   end
                else if TipoExterno.ItemIndex = 1 then
                   begin
                     WinExec(pchar(AbrirRel.FileName+' ETQ'),SW_MAXIMIZE);
                     TipoExterno.Visible := false;
                   end
                else
                  if Application.MessageBox('Informe um tipo de Programa externo'+char(#13)+'Deseja tentar novamente?','Atenção',MB_YESNO+MB_ICONEXCLAMATION) = IDNO then
                     begin
                       TipoExterno.Visible := false;
                       TipoExterno.ItemIndex := -1;
                     end;
              except
                raise Exception.Create('Não foi possivel abrir o programa '+AbrirRel.FileName);
              end;
            end;
        end;
  end
  else
    if Application.MessageBox(PChar('Não foi possivel encontrar o Diretório '+ExtractFilePath(Application.ExeName)+'Report'+char(#13)+'Deseja cria-lo?'),'Atenção...',MB_YESNO+MB_ICONQUESTION) = IDYES then
       begin
         CreateDir(ExtractFilePath(Application.ExeName)+'Report');
         goto Inicio;
       end;
  TipoExterno.Visible := false;

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.RelNovoClick(
  Sender: TObject);
begin
  inherited;
  if not SQLGeral.IsEmpty then
    begin
      TipoExterno.Visible := false;
      ConerBtnOK.Enabled := true;
    end;

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.RelExternoClick(
  Sender: TObject);
begin
  inherited;
  if RelExterno.Checked then
     TipoExterno.Visible := true
  else
     TipoExterno.Visible := false;

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.TipoExternoClick(
  Sender: TObject);
begin
  inherited;
  if (TipoExterno.ItemIndex > -1) and not (SQLGeral.IsEmpty) then
     ConerBtnOK.Enabled := true;

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.ComboFiltroChange(
  Sender: TObject);
begin
  inherited;
  if ComboFiltro.Text <> 'Todos' then
    EditFiltro.Enabled := true
  else
    EditFiltro.Enabled := false;

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.CepDeChange(
  Sender: TObject);
var Cep : string;
begin
  inherited;
  cep := CepDe.Text;
  AnsiReplaceStr(cep, ' ','0');

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.CepAteChange(
  Sender: TObject);
Var Cep : String;
begin
  inherited;
  cep := CepAte.Text;
  AnsiReplaceStr(cep, ' ','0');

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.CepAteKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    CepAte.Text := '     -   ';

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.CepDeExit(
  Sender: TObject);
begin
  inherited;
  if CepDe.Text <> '     -   ' then
    CepAte.Enabled := true
  else
    CepAte.Enabled := false;

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.CepDeKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    CepDe.Text := '     -   ';

end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.RelatorioBeforePrint(
  Sender: TObject);
begin
  inherited;
  Relatorio.ReportDesigner.WindowState := wsMaximized;
end;

procedure TFormTelaEmissaoMalaDiretaFornecedores.DSSQLGeralDataChange(
  Sender: TObject; Field: TField);
var Ok : Boolean;  
begin
  inherited;
  ok := False;
  if RelNovo.Checked then Ok := True;
  if RelExistente.Checked then Ok := True;
  if RelPadrao.Checked then Ok := True;
  if RelExterno.Checked then Ok := True;
  if not SQLGeral.IsEmpty and ok then
     ConerBtnOK.Enabled := true
  else
     ConerBtnOK.Enabled := false;

end;

end.
