unit RelatorioProdutosVendidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Db, DBTables, ComCtrls, RxLookup, StdCtrls,
  Mask, ToolEdit, ExtCtrls, Buttons, jpeg, OleCtrls, Placemnt,
  ImgList, RxQuery, DBCtrls, UCrpe32, RXCtrls, Grids, DBGrids,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioProdutosVendidos = class(TFormRelatorioTEMPLATE)
    SQLVendas: TRxQuery;
    GroupBox2: TGroupBox;
    OrdemDescricao: TRadioButton;
    OrdemCupom: TRadioButton;
    OrdemCodigo: TRadioButton;
    GroupBox3: TGroupBox;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label11: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboGrupo: TRxDBLookupCombo;
    SQLGrupo: TRxQuery;
    DSSQLGrupo: TDataSource;
    DSSQLSubGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    DSSQLVariacao: TDataSource;
    SQLVariacao: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    Label5: TLabel;
    ComboMarca: TRxDBLookupCombo;
    SQLMarca: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLVendedor: TQuery;
    DSSQLNumerario: TDataSource;
    GroupBox5: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasCUPODEMIS: TDateTimeField;
    SQLVendasPRODICOD: TIntegerField;
    SQLVendasPRODA60DESCR: TStringField;
    SQLVendasPRODN3VLRCUSTO: TBCDField;
    SQLVendasPRODN3VLRVENDA: TBCDField;
    SQLVendasGRUPICOD: TIntegerField;
    SQLVendasSUBGICOD: TIntegerField;
    SQLVendasVARIICOD: TIntegerField;
    SQLVendasMARCICOD: TIntegerField;
    SQLVendasMARGEMPERC: TFloatField;
    SQLVendasMARGEMVLR: TFloatField;
    SQLVendasCPITN3QTD: TBCDField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasVLRTOTALITEM: TFloatField;
    Report: TCrpe;
    Timer1: TTimer;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaVLRTOTALITEM: TFloatField;
    TblTemporariaPRODN3VLRCUSTO: TBCDField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaMARCICOD: TIntegerField;
    TblTemporariaMARGEMPERC: TFloatField;
    TblTemporariaMARGEMVLR: TFloatField;
    TblTemporariaCPITN3QTD: TBCDField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaCUPOA13ID: TStringField;
    GroupBox4: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLVendasCLIEA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLVariacaoPENDENTE: TStringField;
    SQLVariacaoREGISTRO: TDateTimeField;
    GroupBox6: TGroupBox;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    CheckPeriodo: TCheckBox;
    CheckFiltro: TCheckBox;
    GroupProduto: TGroupBox;
    ComboProduto: TRxDBLookupCombo;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    RadioTotal: TRadioGroup;
    SQLVendasCPITN2VLRQDEVERIAVENDER: TBCDField;
    TblTemporariaCPITN2VLRQDEVERIAVENDER: TBCDField;
    ComboColecao: TRxDBLookupCombo;
    Label6: TLabel;
    SQLColecao: TRxQuery;
    DSSQLColecao: TDataSource;
    SQLColecaoCOLEICOD: TIntegerField;
    SQLColecaoCOLEA60DESCR: TStringField;
    SQLVendasCOLEICOD: TIntegerField;
    GroupBox7: TGroupBox;
    CodInternoProd: TEdit;
    TblTemporariaCOLEICOD: TIntegerField;
    Label7: TLabel;
    EditHoraIni: TEdit;
    Label8: TLabel;
    EditHoraFim: TEdit;
    SQLVendasREGISTRO: TDateTimeField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaVendedorNome: TStringField;
    SQLTrocas: TRxQuery;
    SQLTrocasEMPRICOD: TIntegerField;
    SQLTrocasCUPODEMIS: TDateTimeField;
    SQLTrocasREGISTRO: TDateTimeField;
    SQLTrocasPRODICOD: TIntegerField;
    SQLTrocasPRODA60DESCR: TStringField;
    SQLTrocasPRODN3VLRCUSTO: TBCDField;
    SQLTrocasPRODN3VLRVENDA: TBCDField;
    SQLTrocasGRUPICOD: TIntegerField;
    SQLTrocasSUBGICOD: TIntegerField;
    SQLTrocasVARIICOD: TIntegerField;
    SQLTrocasMARCICOD: TIntegerField;
    SQLTrocasCOLEICOD: TIntegerField;
    SQLTrocasMARGEMPERC: TFloatField;
    SQLTrocasCPITN3QTD: TBCDField;
    SQLTrocasVENDICOD: TIntegerField;
    SQLTrocasCUPOA13ID: TStringField;
    SQLTrocasCLIEA13ID: TStringField;
    SQLTrocasCPITN2VLRQDEVERIAVENDER: TBCDField;
    TblTemporariaCPITN3QTDTROCA: TBCDField;
    TblTemporariaVLRTOTALITEMTROCA: TFloatField;
    SQLTrocasVLRTOTALITEMTROCA: TFloatField;
    SQLTrocasMARGEMVLRTROCA: TFloatField;
    TblTemporariaMARGEMVLRTROCA: TFloatField;
    CKCofins: TCheckBox;
    SQLVendasGRADICOD: TIntegerField;
    SQLVendasGRTMICOD: TIntegerField;
    SQLVendasCORICOD: TIntegerField;
    TblTemporariaGRADICOD: TIntegerField;
    TblTemporariaGRTMICOD: TIntegerField;
    TblTemporariaCORICOD: TIntegerField;
    SQLTrocasGRADICOD: TIntegerField;
    SQLTrocasGRTMICOD: TIntegerField;
    SQLTrocasCORICOD: TIntegerField;
    TblTemporariaNroVendas: TIntegerField;
    GroupBox8: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    SQLTerminal: TQuery;
    DSSQLTerminal: TDataSource;
    TblTemporariaGrupoDescricao: TStringField;
    SQLVendasCUPOA13ID: TStringField;
    CKPlaca: TCheckBox;
    TblTemporariaCUPOA8PLACAVEIC: TStringField;
    SQLVendasCUPOA8PLACAVEIC: TStringField;
    GroupBox9: TGroupBox;
    ListSeries: TRxCheckListBox;
    edtCultura: TEdit;
    Label9: TLabel;
    SQLTrocasCPITN3QTDTROCA: TBCDField;
    SQLVendasIDVENDA: TStringField;
    TblTemporariaIDVENDA: TStringField;
    TblTemporariaClienteNome: TStringField;
    DSSQLUsuario: TDataSource;
    SQLUsuario: TQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    GroupBox10: TGroupBox;
    ComboUsuario: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    RxLabel1: TRxLabel;
    ckECF: TCheckBox;
    ckDescricaoExpandida: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxLabel1Click(Sender: TObject);
    procedure ComboProdutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutosVendidos: TFormRelatorioProdutosVendidos;

implementation

uses UnitLibrary, DataModulo, DataModuloTemplate;

{$R *.DFM}

procedure TFormRelatorioProdutosVendidos.ExecutarBtnClick(Sender: TObject);
var
  Entra : boolean ;
  i : integer ;
  ultidvenda : string;
begin
  inherited;
  SQLVendas.Close ;
  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  SQLVendas.MacrobyName('MEmpresa1').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;
  SQLTrocas.Close ;
  SQLTrocas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;

  if not CheckPeriodo.Checked then
    begin
      if (EditHoraIni.Text = '') and (EditHoraFim.Text = '') then
        begin
          SQLVendas.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
          SQLVendas.MacrobyName('MData1').Value   := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
          SQLTrocas.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
        end
      else
        begin
          SQLVendas.MacrobyName('MData').Value    := 'CUPOM.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + ' ' + EditHoraIni.Text + '" and ' +
                                                     'CUPOM.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' ' + EditHoraFim.Text + '"' ;
          SQLVendas.MacrobyName('MData1').Value   := 'NOTAFISCAL.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + ' ' + EditHoraIni.Text + '" and ' +
                                                     'NOTAFISCAL.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' ' + EditHoraFim.Text + '"' ;
          SQLTrocas.MacrobyName('MData').Value    := 'CUPOM.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + ' ' + EditHoraIni.Text + '" and ' +
                                                     'CUPOM.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' ' + EditHoraFim.Text + '"' ;
        end;
    end
  else
    begin
      SQLVendas.MacrobyName('MData').Value    := '0=0';
      SQLVendas.MacrobyName('MData1').Value   := '0=0';
      SQLTrocas.MacrobyName('MData').Value    := '0=0';
    end;

  if ComboUsuario.Text <> '' then
    begin
      SQLVendas.MacrobyName('MUsuario').Value  := 'CUPOM.USUAICODVENDA = ' + ComboUsuario.Value;
      SQLVendas.MacrobyName('MUsuario1').Value := 'NOTAFISCAL.USUAICOD = ' + ComboUsuario.Value;
      SQLTrocas.MacrobyName('MUsuario').Value  := 'CUPOM.VENDICOD = ' + ComboUsuario.Value;
    end
  else
    begin
      SQLVendas.MacrobyName('MUsuario').Value  := '0=0';
      SQLVendas.MacrobyName('MUsuario1').Value := '0=0';
      SQLTrocas.MacrobyName('MUsuario').Value  := '0=0';
    end;

   if ComboVendedor.Text <> '' then
    begin
      SQLVendas.MacrobyName('MVendedor').Value  := 'CUPOM.VENDICOD = ' + ComboVendedor.Value;
      SQLVendas.MacrobyName('MVendedor1').Value := 'NOTAFISCAL.VENDICOD = ' + ComboVendedor.Value;
      SQLTrocas.MacrobyName('MVendedor').Value  := 'CUPOM.VENDICOD = ' + ComboVendedor.Value;
    end
  else
    begin
      SQLVendas.MacrobyName('MVendedor').Value  := '0=0';
      SQLVendas.MacrobyName('MVendedor1').Value := '0=0';
      SQLTrocas.MacrobyName('MVendedor').Value  := '0=0';
    end;

  if ComboTerminal.Text <> '' then
    begin
      SQLVendas.MacrobyName('MTERMINAL').Value  := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;
      SQLTrocas.MacrobyName('MTERMINAL').Value  := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;
    end
  else
    begin
      SQLVendas.MacrobyName('MTERMINAL').Value   := '0=0';
      SQLTrocas.MacrobyName('MTERMINAL').Value  := '0=0';
    End;

  if ComboCliente.Text <> '' then
    begin
      SQLVendas.MacrobyName('MCliente').Value  := 'CUPOM.CLIEA13ID = ' + '"' + ComboCliente.Value + '"';
      SQLVendas.MacrobyName('MCliente1').Value := 'NOTAFISCAL.CLIEA13ID = ' + '"' + ComboCliente.Value + '"';
      SQLTrocas.MacrobyName('MCliente').Value  := 'CUPOM.CLIEA13ID = ' + '"' + ComboCliente.Value + '"';
    end
  else
    begin
      SQLVendas.MacrobyName('MCliente').Value  := '0=0';
      SQLVendas.MacrobyName('MCliente1').Value := '0=0';
      SQLTrocas.MacrobyName('MCliente').Value  := '0=0';
    end;

  if CodInternoProd.Text <> '' then
    begin
      SQLVendas.MacroByName('MProduto').Value   := 'CUPOMITEM.PRODICOD = ' + CodInternoProd.Text;
      SQLVendas.MacroByName('MProduto1').Value  := 'NOTAFISCALITEM.PRODICOD = ' + CodInternoProd.Text;
      SQLTrocas.MacroByName('MProduto').Value   := 'CUPOMITEM.PRODICOD = ' + CodInternoProd.Text;
    end
  else
    begin
      SQLVendas.MacroByName('MProduto').Value   := '0=0';
      SQLVendas.MacroByName('MProduto1').Value  := '0=0';
      SQLTrocas.MacroByName('MProduto').Value   := '0=0';
    end;

  if ComboGrupo.Value <> '' then
    begin
      SQLVendas.MacroByName('MGrupo').Value      := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value;
      SQLVendas.MacroByName('MGrupo1').Value     := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value;
      SQLTrocas.MacroByName('MGrupo').Value      := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MGrupo').Value      := '0=0';
      SQLVendas.MacroByName('MGrupo1').Value     := '0=0';
      SQLTrocas.MacroByName('MGrupo').Value      := '0=0';
    end;

  if ComboSubGrupo.Value <> '' then
    begin
      SQLVendas.MacroByName('MSubGrupo').Value      := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;
      SQLVendas.MacroByName('MSubGrupo1').Value     := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;
      SQLTrocas.MacroByName('MSubGrupo').Value      := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MSubGrupo').Value      := '0=0';
      SQLVendas.MacroByName('MSubGrupo1').Value     := '0=0';
      SQLTrocas.MacroByName('MSubGrupo').Value      := '0=0';
    end;

  if ComboVariacao.Value <> '' then
    begin
      SQLVendas.MacroByName('MVariacao').Value      := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value;
      SQLVendas.MacroByName('MVariacao1').Value     := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value;
      SQLTrocas.MacroByName('MVariacao').Value      := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MVariacao').Value      := '0=0';
      SQLVendas.MacroByName('MVariacao1').Value     := '0=0';
      SQLTrocas.MacroByName('MVariacao').Value      := '0=0';
    end;

  if ComboMarca.Value <> '' then
    begin
      SQLVendas.MacroByName('MMarca').Value      := 'PRODUTO.MARCICOD = ' + ComboMarca.Value;
      SQLVendas.MacroByName('MMarca1').Value     := 'PRODUTO.MARCICOD = ' + ComboMarca.Value;
      SQLTrocas.MacroByName('MMarca').Value      := 'PRODUTO.MARCICOD = ' + ComboMarca.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MMarca').Value      := '0=0';
      SQLVendas.MacroByName('MMarca1').Value     := '0=0';
      SQLTrocas.MacroByName('MMarca').Value      := '0=0';
    end;
  if ComboColecao.Value <> '' then
    begin
      SQLVendas.MacroByName('MColecao').Value      := 'PRODUTO.COLEICOD = ' + ComboColecao.Value;
      SQLVendas.MacroByName('MColecao1').Value     := 'PRODUTO.COLEICOD = ' + ComboColecao.Value;
      SQLTrocas.MacroByName('MColecao').Value      := 'PRODUTO.COLEICOD = ' + ComboColecao.Value;
    end
  else
    begin
      SQLVendas.MacroByName('MColecao').Value      := '0=0';
      SQLVendas.MacroByName('MColecao1').Value     := '0=0';
      SQLTrocas.MacroByName('MColecao').Value      := '0=0';
    end;
  if CKCofins.Checked then
    begin
      SQLVendas.MacroByName('MCofins').Value      := 'PRODUTO.PRODCCOFINS = "S"';
      SQLVendas.MacroByName('MCofins1').Value     := 'PRODUTO.PRODCCOFINS = "S"';
      SQLTrocas.MacroByName('MCofins').Value      := 'PRODUTO.PRODCCOFINS = "S"';
    end
  else
    begin
      SQLVendas.MacroByName('MCofins').Value      := '0=0';
      SQLVendas.MacroByName('MCofins1').Value     := '0=0';
      SQLTrocas.MacroByName('MCofins').Value      := '0=0';
    end;
  if edtCultura.Text = '' then
    SQLVendas.MacroByName('MCultura').value := '0=0'
  else
    SQLVendas.MacroByName('MCultura').value := 'NFITA254OBS CONTAINING "'+edtCultura.Text+'"';


  SQLVendas.MacroByName('MSerie').value := '0=0';
  for i:= 0 to ListSeries.Items.Count do
    if ListSeries.Checked[i] then
    begin
      SQLVendas.MacrobyName('MSerie').Value   := 'NOTAFISCAL.SERIA5COD IN '      + MontaSQLdeListaSeries(ListSeries);
      Break;
    end;

  if ckecf.Checked then
    SQLVendas.MacrobyName('Mecf').Value   := 'CUPOM.CUPOINRO>0'
  else
    SQLVendas.MacrobyName('Mecf').Value   := '0=0';

  SQLVendas.Open ;
  SQLTrocas.Open;

  if SQLVendas.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Exit;
    end;

  TblTemporaria.Open ;
  SQLVendas.First ;
  while not SQLVendas.Eof do
    begin
      TblTemporaria.Append ;

      for i := 0 to SQLVendas.FieldCount-1 do
        if SQLVendas.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant ;
      TblTemporariaPRODA60DESCR.Value   := TblTemporariaPRODA60DESCR.Value+'/'+dm.SQLLocate('COR','CORICOD','CORA30DESCR',dm.SQLLocate('PRODUTO','PRODICOD','CORICOD',TblTemporariaPRODICOD.AsString));
      if(TblTemporariaGRADICOD.AsString <> '') and (TblTemporariaGRTMICOD.AsString <> '') then
        TblTemporariaPRODA60DESCR.Value   := TblTemporariaPRODA60DESCR.Value+'/'+RetornaTamanhoProduto(TblTemporariaGRADICOD.AsString,TblTemporariaGRTMICOD.AsString);
      TblTemporariaVendedorNome.Value      := dm.SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',TblTemporariaVENDICOD.AsString);
      TblTemporariaGrupoDescricao.Value    := dm.SQLLocate('GRUPO','GRUPICOD','GRUPA60DESCR',TblTemporariaGRUPICOD.AsString);
      TblTemporariaClienteNome.Value       := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+TblTemporariaCLIEA13ID.AsString+'"');

      TblTemporariaCPITN3QTDTROCA.value    := 0;
      TblTemporariaVLRTOTALITEMTROCA.Value := 0;
      TblTemporaria.Post ;
      SQLVendas.Next ;
    end ;

  // Calcula o Ticket de vendas
  ultidvenda := '';
  TblTemporaria.First ;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;
      if ultidvenda <> TblTemporariaCUPOA13ID.Value then
        TblTemporariaNroVendas.Value := 1
      else
        TblTemporariaNroVendas.Value := 0;
      TblTemporaria.Post ;
      ultidvenda := TblTemporariaCUPOA13ID.Value;
      TblTemporaria.Next ;
    end ;

  if CheckFiltro.Checked then
    begin
      SQLContasReceber.Close;

      if not CheckPeriodo.Checked then
        SQLContasReceber.MacrobyName('MData').Value := 'CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'CTRCDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
      else
        SQLContasReceber.MacrobyName('MData').Value := '0=0';

      if ComboCliente.Text <> '' then
        SQLContasReceber.MacrobyName('MCliente').Value := 'CLIEA13ID = ' +'"' + ComboCliente.Value+'"'
      else
        SQLContasReceber.MacrobyName('MCliente').Value := '0=0';

      SQLContasReceber.Open;

      TblTemporaria.First;
      SQLContasReceber.First;
      Entra := False;
      while not TblTemporaria.Eof do
        begin
          if SQLContasReceber.Locate('CUPOA13ID',TblTemporariaCUPOA13ID.AsString,[]) then
            Entra := True
          else
            Entra := False;

          if not Entra then
            if SQLContasReceber.Locate('NOFIA13ID',TblTemporariaCUPOA13ID.AsString,[]) then
              Entra := True
            else
              Entra := False;
          if Entra then
            TblTemporaria.Next
          else
            TblTemporaria.Delete;
        end;
    end;


  if (RadioTotal.ItemIndex = 3) then
    begin
      SQLTrocas.First ;
      while not SQLTrocas.Eof do
        begin
          TblTemporaria.Append;
          try
            for i := 0 to SQLTrocas.FieldCount-1 do
              if SQLTrocas.Fields[i].AsString <> '' then
                begin
                  try TblTemporaria.FieldByName(SQLTrocas.Fields[i].FieldName).AsVariant:=SQLTrocas.Fields[i].AsVariant; except application.ProcessMessages; end;
                end;
            TblTemporariaCPITN3QTD.value := 0;
            TblTemporariaVLRTOTALITEM.Value := 0;
            TblTemporariaNroVendas.Value    := 1;
            if TblTemporariaVENDICOD.AsString <> '' then
              TblTemporariaVendedorNome.Value := dm.SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',TblTemporariaVENDICOD.AsString);
            if TblTemporariaCLIEA13ID.AsString <> '' then
              TblTemporariaClienteNome.Value := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+TblTemporariaCLIEA13ID.AsString+'"');
            TblTemporaria.Post;
          except
            TblTemporaria.Cancel;
            Application.ProcessMessages;
          end;
          SQLTrocas.Next;
        end
    end
  else
    begin
      SQLTrocas.First ;
      while not SQLTrocas.Eof do
        begin
          TblTemporaria.Append ;
          try
            for i := 0 to SQLTrocas.FieldCount-1 do
              if SQLTrocas.Fields[i].AsString <> '' then
                begin
                  try TblTemporaria.FieldByName(SQLTrocas.Fields[i].FieldName).AsVariant:=SQLTrocas.Fields[i].AsVariant; except Application.ProcessMessages; end;
                end;
            TblTemporariaCPITN2VLRQDEVERIAVENDER.Value := -(SQLTrocasCPITN2VLRQDEVERIAVENDER.Value);
            TblTemporariaCPITN3QTD.value               := -(SQLTrocasCPITN3QTDTROCA.value);
            TblTemporariaVLRTOTALITEM.Value            := -(SQLTrocasVLRTOTALITEMTROCA.Value);
            TblTemporariaCPITN2VLRQDEVERIAVENDER.Value := -(SQLTrocasCPITN2VLRQDEVERIAVENDER.Value);
            TblTemporariaMARGEMPERC.Value              := -(SQLTrocasMARGEMPERC.Value);
            TblTemporariaMARGEMVLR.Value               := -(SQLTrocasMARGEMVLRTROCA.Value);
            TblTemporariaPRODN3VLRCUSTO.Value          := -(SQLTrocasPRODN3VLRCUSTO.Value);
            TblTemporariaPRODN3VLRVENDA.Value          := -(SQLTrocasPRODN3VLRVENDA.Value);
            TblTemporariaVLRTOTALITEM.Value            := -(SQLTrocasVLRTOTALITEMTROCA.Value);
            TblTemporariaPRODA60DESCR.Value            := '(T) '+SQLTrocasPRODA60DESCR.Value;
            TblTemporariaVendedorNome.Value            := dm.SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',TblTemporariaVENDICOD.AsString);
            TblTemporariaClienteNome.Value             := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+TblTemporariaCLIEA13ID.AsString+'"');
            TblTemporariaMARGEMVLRTROCA.Value          := 0;
            TblTemporariaCPITN3QTDTROCA.Value          := 0;
            TblTemporaria.Post;
          except
            TblTemporaria.Cancel;
            Application.ProcessMessages;
          end;
          SQLTrocas.Next ;
        end
    end;


  case RadioTotal.ItemIndex of
    0 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Data' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Data' ;
        end;
    1 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Produto.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Produto' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Produto' ;
        end;
    2 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Mix.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Mostrando por Mix' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Mostrando por Mix' ;
        end;
    3 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Vendedor.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Total por Vendedor' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Total por Vendedor' ;
        end;
    4 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Grupo.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Grupo' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Grupo' ;
        end;
    5 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Cliente.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Cliente' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Cliente' ;
        end;
    6 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Empresa.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Empresa' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Empresa' ;
        end;
  end;

  if ckDescricaoExpandida.Checked then
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Expandido.rpt' ;
      Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Data' ;
      Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Data' ;
    end;

  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Grupo' ;
  if ComboGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboGrupo.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'SubGrupo' ;
  if ComboSubGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboSubGrupo.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Variacao' ;
  if ComboVariacao.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboVariacao.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Marca' ;
  if ComboMarca.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboMarca.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Vendedor' ;
  if ComboVendedor.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboVendedor.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Cliente' ;
  if ComboCliente.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboCliente.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\

  Report.Formulas.Name := 'OrdemImpressao' ;
  if OrdemCupom.Checked then
    Report.Formulas.Formula.Text := '"Cupom"' ;
  if OrdemCodigo.Checked then
    Report.Formulas.Formula.Text := '"Código Produto"' ;
  if OrdemDescricao.Checked then
    Report.Formulas.Formula.Text := '"Descrição Produto"' ;
  //--------------------------------------------------------------------------\\

  If RadioTotal.ItemIndex in ([0,1,4]) then
  begin
    Report.Formulas.Name     := 'PRODICOD_PLACA';
    if not CKPlaca.Checked then
      Report.Formulas.Formula.Text := 'ToText({RelProdutosVendidos.PRODICOD},"######0")'
    else
      Report.Formulas.Formula.Text := '{RelProdutosVendidos.CUPOA8PLACAVEIC}';
  end;

  Report.Formulas.Send;
  Report.SortFields.Clear ;
  Report.SortFields.Add(0) ;
  Report.SortFields.Number := 0 ;
  if OrdemCupom.Checked then
      Report.SortFields.Field  := '{RelProdutosVendidos.CUPOA13ID}' ;
  if OrdemDescricao.Checked then
      Report.SortFields.Field  := '{RelProdutosVendidos.PRODA60DESCR}' ;
  if OrdemCodigo.Checked then
      Report.SortFields.Field  := '{RelProdutosVendidos.PRODICOD}' ;
  Report.SortFields.Send ;
  Report.Execute ;
end;

procedure TFormRelatorioProdutosVendidos.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open ;
  SQLSubGrupo.Open ;
  SQLVariacao.Open ;
  SQLMarca.Open ;
  SQLVendedor.Open ;
  SQLTerminal.Open;
  SQLCliente.Open ;
  SQLProduto.Open ;
  SQLColecao.Open ;
  SQLUsuario.Open ;
  ListaSeries(ListSeries,EmpresaPadrao)
end;

procedure TFormRelatorioProdutosVendidos.Timer1Timer(Sender: TObject);
begin
  inherited;
  if ComboGrupo.Text <> '' then
    ComboSubGrupo.Enabled := true
  else
    ComboSubGrupo.Enabled := false ;

  if ComboSubGrupo.Text <> '' then
    ComboVariacao.Enabled := true
  else
    ComboVariacao.Enabled := false ;

  if CheckPeriodo.Checked then
    begin
      De.Enabled  := False;
      Ate.Enabled := False;
    end
  else
    begin
      De.Enabled  := True;
      Ate.Enabled := True;
    end;
end;

procedure TFormRelatorioProdutosVendidos.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormRelatorioProdutosVendidos.RxLabel1Click(Sender: TObject);
begin
  inherited;
  if not CheckFiltro.Checked then
    CheckFiltro.Checked
  else
    CheckFiltro.Checked := False;
end;

procedure TFormRelatorioProdutosVendidos.ComboProdutoExit(Sender: TObject);
begin
  inherited;
  if ComboProduto.Value <> '' then
    CodInternoProd.Text := ComboProduto.Value; 
end;

end.
