unit RelatorioRegistroInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, ppPrnabl,
  ppClass, ppCtrls, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppDBBDE, CurrEdit, ppVar, RDprint, ppViewr,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioRegistroInventario = class(TFormRelatorioTEMPLATE)
    SQLInventario: TRxQuery;
    PipeInventario: TppBDEPipeline;
    reportOficial: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBandProduto: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel27: TppLabel;
    ppLabel7: TppLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    TotalPaginas: TCurrencyEdit;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    Label6: TLabel;
    EditNroOrdem: TCurrencyEdit;
    ppLabel9: TppLabel;
    NomeEmpresa: TppLabel;
    ppLabel11: TppLabel;
    LBDataPag: TppLabel;
    LabelGravar: TSpeedButton;
    TipoRel: TRadioGroup;
    PgAtual: TppSystemVariable;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA15CODANT: TStringField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    TblTemporariaPRODN3VLRCOMPRA: TFloatField;
    TblTemporariaPRODN3VLRCUSTO: TFloatField;
    TblTemporariaPRODN3VLRCUSTOMED: TFloatField;
    TblTemporariaPSLDN3QTDE: TFloatField;
    TblTemporariaQTDXCMEDIO: TFloatField;
    TblTemporariaQTDXVENDA: TFloatField;
    TblTemporariaUNIDA5DESCR: TStringField;
    SaveReport: TRadioGroup;
    OpenDialog: TOpenDialog;
    TblTemporariaPRODIAGRUPGRADE: TIntegerField;
    ppLabel5: TppLabel;
    ppDBCalc2: TppDBCalc;
    PathRel: TPanel;
    Label14: TLabel;
    ppTitleBand1: TppTitleBand;
    ppContadorNome: TppLabel;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    LBNroOrdem: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    LBTotalPaginas: TppLabel;
    ppLabel35: TppLabel;
    LBPagFinal: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    LBRazaoSocial: TppLabel;
    LBEndereco: TppLabel;
    LBCidade: TppLabel;
    LBCNPJ: TppLabel;
    LBIE: TppLabel;
    LBData: TppLabel;
    RptTermoEncerramento: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppTitleBand2: TppTitleBand;
    ppLabel41: TppLabel;
    LBDataFim: TppLabel;
    ppLabel31: TppLabel;
    LBTotalPaginasFIM: TppLabel;
    ppLabel36: TppLabel;
    LBPagFinalFIM: TppLabel;
    ppLabel40: TppLabel;
    ppLabel13: TppLabel;
    LBNroOrdemFim: TppLabel;
    ppLabel6: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    BtTermoEncerramento: TSpeedButton;
    EditDataInventario: TDateEdit;
    ppLabel12: TppLabel;
    LBPagFinalEncerramento: TppLabel;
    ppCODPROD: TppDBText;
    LBRegJunta: TppLabel;
    LbPeriodoEncerramento: TppLabel;
    Label7: TLabel;
    EditDataInicialEncerramento: TDateEdit;
    EditDataFimEncerramento: TDateEdit;
    Label8: TLabel;
    GroupCodDesc: TGroupBox;
    OrdemCodigo: TRadioButton;
    OrdemDescricao: TRadioButton;
    ICMSICOD: TIntegerField;
    CKSubtraiICMS: TCheckBox;
    Label17: TLabel;
    ComboIcms: TRxDBLookupCombo;
    SQLIcms: TRxQuery;
    SQLIcmsICMSICOD: TIntegerField;
    SQLIcmsICMSA60DESCR: TStringField;
    dsSQLIcms: TDataSource;
    ppContadorCargo: TppLabel;
    ppContadorDoc: TppLabel;
    ppRepresentanteNome: TppLabel;
    ppLabel15: TppLabel;
    ppRepresentanteCargo: TppLabel;
    ppRepresentanteDoc: TppLabel;
    LBDataRegJunta: TppLabel;
    LBIMunicipal: TppLabel;
    ppContNome: TppLabel;
    ppLabel16: TppLabel;
    ppContCargo: TppLabel;
    ppContDoc: TppLabel;
    ppRepNome: TppLabel;
    ppLabel20: TppLabel;
    ppRepCargo: TppLabel;
    ppRepDoc: TppLabel;
    LBRazaoFim: TppLabel;
    LBEnderecoFim: TppLabel;
    LBCidadeFim: TppLabel;
    LBCNPJFim: TppLabel;
    LBIEFim: TppLabel;
    LbRegJuntaFim: TppLabel;
    LBDataRegJuntaFim: TppLabel;
    LBIMunicipalFim: TppLabel;
    SQLInventarioOld: TRxQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    BCDField1: TFloatField;
    BCDField2: TFloatField;
    BCDField3: TFloatField;
    BCDField4: TFloatField;
    BCDField5: TFloatField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    CkGruposResumo: TCheckBox;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaGRUPODESCRICAO: TStringField;
    PipeInventarioppField15: TppField;
    ppGroup3: TppGroup;
    ppGroupHeaderProdudo: TppGroupHeaderBand;
    ppGroupFooterProduto: TppGroupFooterBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ReportResumo: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppEmpresaResumo: TppLabel;
    ppLabel65: TppLabel;
    ppDataResumo: TppLabel;
    ppLabel67: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel68: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaDATA: TDateField;
    TblTemporariaTERMINAL: TIntegerField;
    OrdemQtde: TRadioButton;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveReportClick(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppTitleBand2BeforePrint(Sender: TObject);
    procedure BtTermoEncerramentoClick(Sender: TObject);
    procedure reportOficialPreviewFormCreate(Sender: TObject);
    procedure RptTermoEncerramentoPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure ReportResumoPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioRegistroInventario: TFormRelatorioRegistroInventario;

implementation

uses DataModulo, UnitLibrary, ExtensoLib;

{$R *.dfm}

procedure TFormRelatorioRegistroInventario.ExecutarBtnClick(
  Sender: TObject);
var NomeArq : string ;
    Linha : Integer;
    VlrCustoSemImposto, nSaldoAtual, nTotEntradas, nTotSaidas : Double;
begin
  inherited;
  SQLInventario.Close ;
  if ComboEmpresa.Text <> 'Todas' then
    begin
      SQLInventario.MacroByName('MEmpresa').Value  := 'PRODUTOSALDO.EMPRICOD = ' + ComboEmpresa.Value;
      SQLInventario.MacroByName('MEmpresa1').Value := 'MOVIMENTOESTOQUE.EMPRICOD = ' + ComboEmpresa.Value;
      SQLInventario.MacroByName('MEmpresa2').Value := 'MOVIMENTOESTOQUE.EMPRICOD = ' + ComboEmpresa.Value;
    end
  else
    begin
      Showmessage('É necessário escolher uma Filial');
      exit;
    end;

   if ComboIcms.KeyValue <> null then
     SQLInventario.MacroByName('MIcms').Value := 'PRODUTO.ICMSICOD = '+ ComboIcms.Value
   else
     SQLInventario.MacroByName('MIcms').Value := '0=0';

  case SaveReport.ItemIndex of
    1:  begin
          NomeArq := InputBox('Salvar Inventário', 'Informe o nome do inventário', 'Inventario' + FOrmatDateTime('dd-mm-yyyy',Date));
          TblTemporaria.Close ;
          TblTemporaria.TableName := NomeArq ;
          if TblTemporaria.Exists then
            TblTemporaria.DeleteTable ;
          TblTemporaria.CreateTable ;
        end ;
    2:  begin
          TblTemporaria.Close ;
          TblTemporaria.TableName := PathRel.Caption ;
          TblTemporaria.Open ;
        end ;
  end ;

  if CkGruposResumo.Checked then
    SQLInventario.MacroByName('MOrdem').Value := 'PRODUTO.GRUPICOD';

  if (EditDataFimEncerramento.Text <> '  /  /    ') then
    begin
      SQLInventario.MacroByName('MDataFim1').Value := 'MOVIMENTOESTOQUE.MVESDMOV > "' + FormatDateTime('MM/DD/YYYY',EditDataFimEncerramento.Date) + '"';
      SQLInventario.MacroByName('MDataFim2').Value := 'MOVIMENTOESTOQUE.MVESDMOV > "' + FormatDateTime('MM/DD/YYYY',EditDataFimEncerramento.Date) + '"';
    end
  else
    begin
      SQLInventario.MacroByName('MDataFim1').Value := 'MOVIMENTOESTOQUE.MVESDMOV > "' + FormatDateTime('MM/DD/YYYY',now) + '"';
      SQLInventario.MacroByName('MDataFim2').Value := 'MOVIMENTOESTOQUE.MVESDMOV > "' + FormatDateTime('MM/DD/YYYY',now) + '"';
    end;

  // Ordem
  if OrdemCodigo.Checked then
    SQLInventario.MacroByName('MOrdem').Value := 'PRODUTO.PRODIAGRUPGRADE'
  else
    SQLInventario.MacroByName('MOrdem').Value := 'PRODUTO.PRODA60DESCR';

  SQLInventario.Open ;

  TblTemporaria.Close;
  TblTemporaria.Open;
  Progresso.min := 0;
  Progresso.Max := 50000; {SQLInventario.RecordCount};
  while not SQLInventario.Eof do
    begin
      try
        nSaldoAtual := 0; nTotEntradas := 0; nTotSaidas := 0;

        if not SQLInventario.findfield('SaldoAtual').IsNull then
          nSaldoAtual := SQLInventario.findfield('SaldoAtual').Value else nSaldoAtual := 0;
        if not SQLInventario.findfield('Entradas').IsNull then
          nTotEntradas := SQLInventario.findfield('Entradas').Value else nTotEntradas := 0;
        if not SQLInventario.findfield('Saidas').IsNull then
          nTotSaidas := SQLInventario.findfield('Saidas').Value else nTotSaidas := 0;

        nSaldoAtual := nSaldoAtual - nTotEntradas + nTotSaidas;
        if nSaldoAtual > 0 then
          begin
            TblTemporaria.Append;
            TblTemporariaEMPRICOD.Value           := ComboEmpresa.KeyValue;
            TblTemporariaPRODICOD.Value           := SQLInventario.findfield('PRODICOD').AsVariant;
            TblTemporariaPRODIAGRUPGRADE.Value    := SQLInventario.findfield('PRODIAGRUPGRADE').AsVariant;
            TblTemporariaPRODA15CODANT.Value      := SQLInventario.findfield('PRODA15CODANT').AsString;
            TblTemporariaPRODA60DESCR.Value       := SQLInventario.findfield('PRODA60DESCR').AsVariant;
            TblTemporariaPRODN3VLRCOMPRA.Value    := SQLInventario.findfield('PRODN3VLRCOMPRA').AsVariant;
            TblTemporariaPRODN3VLRCUSTO.Value     := SQLInventario.findfield('PRODN3VLRCUSTO').AsVariant;
            TblTemporariaGRUPICOD.AsVariant       := SQLInventario.findfield('GRUPICOD').AsVariant;
            if TblTemporariaGRUPICOD.AsString <> '' then
              TblTemporariaGRUPODESCRICAO.Value     := DM.SQLLocate('GRUPO','GRUPICOD','GRUPA60DESCR',TblTemporariaGRUPICOD.AsString);
            if (CKSubtraiICMS.Checked) and (SQLInventario.findfield('ICMSN2ALIQUOTA').AsVariant>0) then
              begin
                VlrCustoSemImposto := SQLInventario.findfield('PRODN3VLRCOMPRA').AsVariant - ((SQLInventario.findfield('PRODN3VLRCOMPRA').AsVariant * SQLInventario.findfield('ICMSN2ALIQUOTA').AsVariant)/100);
                TblTemporariaPRODN3VLRCUSTO.Value := VlrCustoSemImposto;
              end;
            TblTemporariaPRODN3VLRCUSTOMED.Value  := SQLInventario.findfield('PRODN3VLRCUSTOMED').AsVariant;
            TblTemporariaPRODN3VLRVENDA.Value     := SQLInventario.findfield('PRODN3VLRVENDA').AsVariant;

            TblTemporariaPSLDN3QTDE.Value         := nSaldoAtual;
            TblTemporariaQTDXCMEDIO.Value         := TblTemporariaPRODN3VLRCUSTO.Value * TblTemporariaPSLDN3QTDE.Value;
            TblTemporariaQTDXVENDA.Value          := SQLInventario.findfield('PRODN3VLRVENDA').AsVariant * TblTemporariaPSLDN3QTDE.Value;
            TblTemporariaUNIDA5DESCR.AsString     := SQLInventario.findfield('UNIDA5DESCR').AsString;

            TblTemporaria.Post;
          end;
      except
        Application.ProcessMessages;
      end;

      Progresso.Position := Progresso.Position + 1;
      SQLInventario.Next;
      Application.ProcessMessages;
    end;

  NomeEmpresa.Caption := ComboEmpresa.Text ;

  case TipoRel.ItemIndex of
    0 : reportOficial.DeviceType := 'Screen' ;
    1 : reportOficial.DeviceType := 'Printer' ;
  end ;

  Progresso.Position := 0;

  if CkGruposResumo.Checked then
    ReportResumo.Print
  else
    reportOficial.Print;
end;

procedure TFormRelatorioRegistroInventario.FormCreate(Sender: TObject);
begin
  inherited;
  try
    TblTemporaria.Close;
    TblTemporaria.DeleteTable ;
    TblTemporaria.CreateTable ;
  except
    Application.ProcessMessages;
  end;

  EditDataInventario.Date := Now;
  SQLIcms.Open;
end;

procedure TFormRelatorioRegistroInventario.SaveReportClick(
  Sender: TObject);
begin
  inherited;
  if SaveReport.ItemIndex = 1 then
    begin
      OpenDialog.Execute ;
      PathRel.Caption := OpenDialog.FileName ;
      PathRel.Refresh ;
      EmpresaGroup.Visible := false ;
    end
  else
    begin
      EmpresaGroup.Visible := true ;
    end ;
end;

procedure TFormRelatorioRegistroInventario.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ValorExtenso(VExt,TotalPaginas.Value, '', '', 02, 70, '*',4);
  LBNroOrdem.Caption         := 'No. de Ordem: '   + FormatFloat('000',EditNroOrdem.Value);
  LBRazaoSocial.Caption      := 'Razao Social..: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',ComboEmpresa.Value);
  LBEndereco.Caption         := 'Endereco......: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',ComboEmpresa.Value);
  LBCidade.Caption           := 'Cidade........: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',ComboEmpresa.Value);
  LBCNPJ.Caption             := 'CNPJ..........: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',ComboEmpresa.Value);
  LBIE.Caption               := 'Insc.Estadual.: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',ComboEmpresa.Value);
  LBIMunicipal.Caption       := 'Insc.Municipal: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20IMUNIC',ComboEmpresa.Value);
  LBData.Caption             := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',ComboEmpresa.Value) + ', ' + FormatDateTime('dd',EditDataInventario.Date)+' de '+
                                                                                                            FormatDateTime('mmmm',EditDataInventario.Date)+' de '+
                                                                                                            FormatDateTime('yyyy',EditDataInventario.Date);

  LBRegJunta.Caption         := 'Registro na Junta Comercial: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA15REGJUNTA',ComboEmpresa.Value);
  LBDataRegJunta.Caption     := 'Data do Registro na Junta  : ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRDREGJUNTA',ComboEmpresa.Value);
  LBTotalPaginas.Caption     := FormatFloat('000',TotalPaginas.Value)+' '+VExt[0];
  LBPagFinal.Caption         := FormatFloat('000',TotalPaginas.Value);
  LBDataPag.Caption          := 'Data: ' + FormatDateTime('dd/mm/yyyy',EditDataInventario.Date);

  ppRepresentanteNome.Caption  := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CONTATO',ComboEmpresa.Value);
  ppRepresentanteCargo.Caption := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA40CARGORESP',ComboEmpresa.Value);
  ppRepresentanteDoc.Caption   := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20CPFRESP',ComboEmpresa.Value);

  ppContadorNome.Caption  := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CONTADOR',ComboEmpresa.Value);
  ppContadorCargo.Caption := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA40CARGOCONT',ComboEmpresa.Value);
  ppContadorDoc.Caption   := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20CPFCONTADOR',ComboEmpresa.Value);

end;

procedure TFormRelatorioRegistroInventario.ppTitleBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  ValorExtenso(VExt,TotalPaginas.Value, '', '', 02, 70, '*',4);
  LBNroOrdemFIM.Caption      := 'No. de Ordem: '     + FormatFloat('000',EditNroOrdem.Value);
  LBRazaoFim.Caption         := 'Razao Social..: '   + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',ComboEmpresa.Value);
  LBEnderecoFim.Caption      := 'Endereco......: '   + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',ComboEmpresa.Value);
  LBCidadeFim.Caption        := 'Cidade........: '   + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',ComboEmpresa.Value);
  LBCNPJFim.Caption          := 'CNPJ..........: '   + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',ComboEmpresa.Value);
  LBIEFim.Caption            := 'Insc.Estadual.: '   + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',ComboEmpresa.Value);
  LBIMunicipalFim.Caption    := 'Insc.Municipal: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20IMUNIC',ComboEmpresa.Value);
  LBRegJuntaFim.Caption      := 'Registro na Junta Comercial: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA15REGJUNTA',ComboEmpresa.Value);
  LBDataRegJuntaFim.Caption  := 'Data do Registro na Junta  : ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRDREGJUNTA',ComboEmpresa.Value);
  LBDataFim.Caption          := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',ComboEmpresa.Value) + ', ' + FormatDateTime('dd',EditDataInventario.Date)+' de '+
                                                                                                            FormatDateTime('mmmm',EditDataInventario.Date)+' de '+
                                                                                                            FormatDateTime('yyyy',EditDataInventario.Date);

  LbPeriodoEncerramento.Caption   := 'Período do encerramento ' + FormatDateTime('dd',EditDataInicialEncerramento.Date)+' de '+
                                                                  FormatDateTime('mmmm',EditDataInicialEncerramento.Date)+' de '+
                                                                  FormatDateTime('yyyy',EditDataInicialEncerramento.Date)+' a '+
                                                                  FormatDateTime('dd',EditDataFimEncerramento.Date)+' de '+
                                                                  FormatDateTime('mmmm',EditDataFimEncerramento.Date)+' de '+
                                                                  FormatDateTime('yyyy',EditDataFimEncerramento.Date);
  LBTotalPaginasFIM.Caption       := FormatFloat('000',TotalPaginas.Value)+' '+VExt[0];
  LBPagFinalFIM.Caption           := FormatFloat('000',TotalPaginas.Value);
  LBPagFinalEncerramento.Caption  := 'Folha: ' + FormatFloat('000',TotalPaginas.Value);

  ppRepNome.Caption  := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CONTATO',ComboEmpresa.Value);
  ppRepCargo.Caption := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA40CARGORESP',ComboEmpresa.Value);
  ppRepDoc.Caption   := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20CPFRESP',ComboEmpresa.Value);

  ppContNome.Caption  := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CONTADOR',ComboEmpresa.Value);
  ppContCargo.Caption := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA40CARGOCONT',ComboEmpresa.Value);
  ppContDoc.Caption   := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20CPFCONTADOR',ComboEmpresa.Value);

end;

procedure TFormRelatorioRegistroInventario.BtTermoEncerramentoClick(
  Sender: TObject);
begin
  inherited;
  RptTermoEncerramento.Print;
end;

procedure TFormRelatorioRegistroInventario.reportOficialPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  reportOficial.PreviewForm.WindowState := wsMaximized;
  TppViewer(reportOficial.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormRelatorioRegistroInventario.RptTermoEncerramentoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  RptTermoEncerramento.PreviewForm.WindowState := wsMaximized;
  TppViewer(RptTermoEncerramento.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormRelatorioRegistroInventario.ppHeaderBand3BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppempresaresumo.Caption := 'Empresa: ' + ComboEmpresa.Text;
  ppDataResumo.Caption    := 'Data: ' + EditDataFimEncerramento.EditText;
end;

procedure TFormRelatorioRegistroInventario.ReportResumoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportResumo.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportResumo.PreviewForm.Viewer).ZoomPercentage := 100;
end;

end.
