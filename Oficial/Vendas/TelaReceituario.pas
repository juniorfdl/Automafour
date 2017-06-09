unit TelaReceituario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  Buttons, DB, DBTables, MemTable, RxQuery, RXCtrls, DBCtrls, ConerBtn,
  ImgList, DBActns, ActnList, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache,
  ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, EDBNum,
  RXDBCtrl, ppStrtch, ppMemo, BDE, UCrpe32;

type
  TFormTelaReceituario = class(TForm)
    ActionList1: TActionList;
    actAnterior: TDataSetPrior;
    actNovo: TDataSetInsert;
    actAlterar: TDataSetEdit;
    actGravar: TDataSetPost;
    actCancelar: TDataSetCancel;
    actExcluir: TDataSetDelete;
    actProximo: TDataSetNext;
    actLookup: TAction;
    ImageList1: TImageList;
    ppReportOculosOLD: TppReport;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel16: TppLabel;
    ppDBText19: TppDBText;
    ppLabel17: TppLabel;
    ppDBText20: TppDBText;
    ppLabel18: TppLabel;
    ppDBText21: TppDBText;
    ppLabel19: TppLabel;
    ppDBText22: TppDBText;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    ppLabel21: TppLabel;
    ppDBText24: TppDBText;
    ppLabel22: TppLabel;
    ppDBText25: TppDBText;
    Declaracao: TppMemo;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    L1: TppLabel;
    ppLabel37: TppLabel;
    LblEndEmpresa: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel36: TppLabel;
    ppDBText28: TppDBText;
    ppLabel51: TppLabel;
    ppDBText29: TppDBText;
    ppLabel53: TppLabel;
    ppDBText30: TppDBText;
    ppLabel54: TppLabel;
    ppDBText31: TppDBText;
    ppLabel55: TppLabel;
    ppDBText32: TppDBText;
    ppLabel56: TppLabel;
    ppDBText33: TppDBText;
    ppLabel57: TppLabel;
    ppDBText34: TppDBText;
    Assinatura: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    SQLClienteReceituario: TRxQuery;
    SQLClienteReceituarioCLRCICOD: TIntegerField;
    SQLClienteReceituarioCLIEA13ID: TStringField;
    SQLClienteReceituarioClienteCalcField: TStringField;
    SQLClienteReceituarioEndCliCalcField: TStringField;
    SQLClienteReceituarioFoneCliCalcField: TStringField;
    SQLClienteReceituarioCLRCDCAD: TDateTimeField;
    SQLClienteReceituarioCLRCA7LONGODESF: TStringField;
    SQLClienteReceituarioCLRCA7LONGOEESF: TStringField;
    SQLClienteReceituarioCLRCA7LONGODCIL: TStringField;
    SQLClienteReceituarioCLRCA7LONGOECIL: TStringField;
    SQLClienteReceituarioCLRCA7LONGODEIX: TStringField;
    SQLClienteReceituarioCLRCA7LONGOEEIX: TStringField;
    SQLClienteReceituarioCLRCA7LONGODDNP: TStringField;
    SQLClienteReceituarioCLRCA7LONGOEDNP: TStringField;
    SQLClienteReceituarioCLRCA7PERTODESF: TStringField;
    SQLClienteReceituarioCLRCA7PERTOEESF: TStringField;
    SQLClienteReceituarioCLRCA7PERTODCIL: TStringField;
    SQLClienteReceituarioCLRCA7PERTOECIL: TStringField;
    SQLClienteReceituarioCLRCA7PERTODEIX: TStringField;
    SQLClienteReceituarioCLRCA7PERTOEEIX: TStringField;
    SQLClienteReceituarioVENDICOD: TIntegerField;
    SQLClienteReceituarioVendedorCalcField: TStringField;
    SQLClienteReceituarioCLRCDENTREGA: TDateTimeField;
    SQLClienteReceituarioCLRCA30LENTES: TStringField;
    SQLClienteReceituarioCLRCA30COR: TStringField;
    SQLClienteReceituarioPENDENTE: TStringField;
    DSSQLClienteReceituario: TDataSource;
    PanelCabecalho: TPanel;
    RxLabel1: TRxLabel;
    LabelNovo: TConerBtn;
    BotGravar: TConerBtn;
    BotCanc: TConerBtn;
    LabelExcluir: TConerBtn;
    ConerBtn1: TConerBtn;
    BtnRegistroAnterior: TConerBtn;
    BtnProximoRegistro: TConerBtn;
    Label23: TLabel;
    DBEdit24: TDBEdit;
    DBEdit35: TDBEdit;
    Label24: TLabel;
    DataEntrega: TDBDateEdit;
    Label15: TLabel;
    Panel1: TPanel;
    SQLClienteReceituarioCLRCA15MARCA: TStringField;
    SQLClienteReceituarioCLRCA15CAIXA: TStringField;
    SQLClienteReceituarioCLRCA15PULSEIRA: TStringField;
    SQLClienteReceituarioCLRCA15MOSTRADOR: TStringField;
    SQLClienteReceituarioCLRCN3VLRTOTAL: TBCDField;
    SQLClienteReceituarioCLRCN3VLRSINAL: TBCDField;
    SQLClienteReceituarioCLRCN3VLRSALDO: TBCDField;
    SQLClienteReceituarioREGISTRO: TDateTimeField;
    DBRadioTipoOS: TDBRadioGroup;
    SQLClienteReceituarioCLRCCTIPOOS: TStringField;
    PanelOculos: TPanel;
    Shape5: TShape;
    Shape3: TShape;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit25: TDBEdit;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    DBEdit20: TDBEdit;
    Shape4: TShape;
    PanelRelogio: TPanel;
    Label11: TLabel;
    DBEdit26: TDBEdit;
    Label12: TLabel;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    DBEdit28: TDBEdit;
    Label28: TLabel;
    DBEdit29: TDBEdit;
    Label20: TLabel;
    DBEdit21: TDBEdit;
    SQLClienteReceituarioCLRCA7PERTODDNP: TStringField;
    SQLClienteReceituarioCLRCA7PERTOEDNP: TStringField;
    SQLClienteReceituarioCLRCA30ARMACAO: TStringField;
    SQLClienteReceituarioCLRCA254SOLICIT: TStringField;
    SQLClienteReceituarioCLRCA254REALIZA: TStringField;
    DBMemo2: TDBMemo;
    Label29: TLabel;
    Label22: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    Label7: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    Label13: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    Panel2: TPanel;
    DBEdit22: TDBEdit;
    DBEdit30: TDBEdit;
    Label21: TLabel;
    SQLClienteReceituarioCLRCA7PERTODANP: TStringField;
    SQLClienteReceituarioCLRCA7PERTOEANP: TStringField;
    SQLClienteReceituarioCLRCA7PERTOADI: TStringField;
    ppReportJoias: TppReport;
    ppDetailBand3: TppDetailBand;
    BDEPipe: TppBDEPipeline;
    DBMemo1: TDBMemo;
    ppLabel110: TppLabel;
    ppDBText73: TppDBText;
    ppLabel111: TppLabel;
    ppDBText74: TppDBText;
    ppLabel112: TppLabel;
    ppDBText75: TppDBText;
    ppLabel113: TppLabel;
    ppDBText76: TppDBText;
    ppLabel130: TppLabel;
    ppDBText96: TppDBText;
    ppLabel155: TppLabel;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppLabel115: TppLabel;
    ppDBText77: TppDBText;
    ppLabel116: TppLabel;
    ppDBText78: TppDBText;
    ppLabel117: TppLabel;
    ppDBText79: TppDBText;
    ppLabel118: TppLabel;
    ppDBText80: TppDBText;
    ppLabel119: TppLabel;
    ppDBText81: TppDBText;
    LblFoneEmpresa1: TppLabel;
    LblNomeEmpresa1: TppLabel;
    ppLabel114: TppLabel;
    LblEndEmpresa1: TppLabel;
    ppReportRelogios: TppReport;
    ppDetailBand2: TppDetailBand;
    ppLabel23: TppLabel;
    ppDBText37: TppDBText;
    ppLabel24: TppLabel;
    ppDBText38: TppDBText;
    ppLabel25: TppLabel;
    ppDBText39: TppDBText;
    ppLabel26: TppLabel;
    ppDBText40: TppDBText;
    ppLabel27: TppLabel;
    ppDBText41: TppDBText;
    ppLabel58: TppLabel;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLabel59: TppLabel;
    ppDBText44: TppDBText;
    ppLabel60: TppLabel;
    ppDBText45: TppDBText;
    ppLabel61: TppLabel;
    ppDBText46: TppDBText;
    ppLabel62: TppLabel;
    ppDBText47: TppDBText;
    ppLabel63: TppLabel;
    ppDBText48: TppDBText;
    LblFoneEmpresa2: TppLabel;
    LblNomeEmpresa2: TppLabel;
    ppLabel66: TppLabel;
    LblEndEmpresa2: TppLabel;
    ppLabel70: TppLabel;
    ppDBText49: TppDBText;
    ppLabel71: TppLabel;
    ppDBText50: TppDBText;
    ppLabel72: TppLabel;
    ppDBText51: TppDBText;
    ppLabel73: TppLabel;
    ppDBText52: TppDBText;
    ppReportOculos: TppReport;
    ppDetailBand4: TppDetailBand;
    ppLabel52: TppLabel;
    ppDBText53: TppDBText;
    ppLabel64: TppLabel;
    ppDBText54: TppDBText;
    ppLabel65: TppLabel;
    ppDBText55: TppDBText;
    ppLabel67: TppLabel;
    ppDBText56: TppDBText;
    ppLabel68: TppLabel;
    ppDBText57: TppDBText;
    ppLabel69: TppLabel;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppLabel74: TppLabel;
    ppDBText60: TppDBText;
    ppLabel75: TppLabel;
    ppDBText61: TppDBText;
    ppLabel76: TppLabel;
    ppDBText62: TppDBText;
    ppLabel77: TppLabel;
    ppDBText63: TppDBText;
    ppLabel78: TppLabel;
    ppDBText64: TppDBText;
    LblFoneEmpresa3: TppLabel;
    LblNomeEmpresa3: TppLabel;
    ppLabel81: TppLabel;
    LblEndEmpresa3: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppLabel109: TppLabel;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppLabel124: TppLabel;
    ppDBText92: TppDBText;
    ppLabel79: TppLabel;
    ppDBText93: TppDBText;
    ppLabel134: TppLabel;
    ppDBText97: TppDBText;
    ppLabel135: TppLabel;
    ppDBText98: TppDBText;
    SQLClienteReceituarioCLRCDDATARECBTO: TDateTimeField;
    Label30: TLabel;
    DataRetirada: TDBDateEdit;
    Label31: TLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel93: TppLabel;
    Report: TCrpe;
    TblOS: TTable;
    TblOSCLRCICOD: TIntegerField;
    TblOSCLIEA13ID: TStringField;
    TblOSClienteCalcField: TStringField;
    TblOSEndCliCalcField: TStringField;
    TblOSFoneCliCalcField: TStringField;
    TblOSCLRCDCAD: TDateTimeField;
    TblOSCLRCCTIPOOS: TStringField;
    TblOSCLRCA7LONGODESF: TStringField;
    TblOSCLRCA7LONGOEESF: TStringField;
    TblOSCLRCA7LONGODCIL: TStringField;
    TblOSCLRCA7LONGOECIL: TStringField;
    TblOSCLRCA7LONGODEIX: TStringField;
    TblOSCLRCA7LONGOEEIX: TStringField;
    TblOSCLRCA7LONGODDNP: TStringField;
    TblOSCLRCA7LONGOEDNP: TStringField;
    TblOSCLRCA7PERTODESF: TStringField;
    TblOSCLRCA7PERTOEESF: TStringField;
    TblOSCLRCA7PERTODCIL: TStringField;
    TblOSCLRCA7PERTOECIL: TStringField;
    TblOSCLRCA7PERTODEIX: TStringField;
    TblOSCLRCA7PERTOEEIX: TStringField;
    TblOSCLRCA7PERTODDNP: TStringField;
    TblOSCLRCA7PERTOEDNP: TStringField;
    TblOSCLRCA7PERTODANP: TStringField;
    TblOSCLRCA7PERTOEANP: TStringField;
    TblOSCLRCA7PERTOADI: TStringField;
    TblOSVENDICOD: TIntegerField;
    TblOSVendedorCalcField: TStringField;
    TblOSCLRCDENTREGA: TDateTimeField;
    TblOSCLRCDDATARECBTO: TDateTimeField;
    TblOSCLRCA30LENTES: TStringField;
    TblOSCLRCA30ARMACAO: TStringField;
    TblOSCLRCA30COR: TStringField;
    TblOSCLRCA15MARCA: TStringField;
    TblOSCLRCA15CAIXA: TStringField;
    TblOSCLRCA15PULSEIRA: TStringField;
    TblOSCLRCA15MOSTRADOR: TStringField;
    TblOSCLRCA254SOLICIT: TStringField;
    TblOSCLRCA254REALIZA: TStringField;
    TblOSCLRCN3VLRTOTAL: TBCDField;
    TblOSCLRCN3VLRSINAL: TBCDField;
    TblOSCLRCN3VLRSALDO: TBCDField;
    TblOSEmpresa: TStringField;
    TblOSEmpresaEndereco: TStringField;
    TblOSEmpresaFone: TStringField;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit31: TDBEdit;
    SQLClienteReceituarioBairroCliCalcField: TStringField;
    BtnConsulta: TConerBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ConerBtn1Click(Sender: TObject);
    procedure SQLClienteReceituarioPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure SQLClienteReceituarioBeforePost(DataSet: TDataSet);
    procedure SQLClienteReceituarioCalcFields(DataSet: TDataSet);
    procedure SQLClienteReceituarioNewRecord(DataSet: TDataSet);
    procedure ControlarActions (DataSource: TDataSource);
    procedure DSSQLClienteReceituarioStateChange(Sender: TObject);
    procedure DBRadioTipoOSChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure SQLClienteReceituarioCLRCN3VLRTOTALChange(Sender: TField);
    procedure GeraTabelaTempOS;
    procedure GeraImpressaoNaoFiscalJoias;
    procedure GeraImpressaoNaoFiscalRelogios;
    procedure GeraImpressaoNaoFiscalOculos;
    procedure DSSQLClienteReceituarioDataChange(Sender: TObject;
      Field: TField);
    procedure BtnConsultaClick(Sender: TObject);
  private
    GerandoOS : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaReceituario: TFormTelaReceituario;

implementation

uses TelaFechamentoVenda, DataModulo, UnitLibrary, TelaDadosCheque,
  IMPNAOFISCAL;

{$R *.dfm}

procedure TFormTelaReceituario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SQLClienteReceituario.State in dsEditModes then
    SQLClienteReceituario.Cancel;
  Action := caFree ;
end;

procedure TFormTelaReceituario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape : begin
                  if SQLClienteReceituario.State in dsEditModes then
                    if Pergunta('NAO', 'Este receituário está sendo editado ou cadastrado, tem certeza que deseja sair da tela?') then
                      begin
                        SQLClienteReceituario.Cancel;
                      end
                    else
                      Exit;
                  Close;
                end ;
    VK_Return : if not (TObject((Sender as TForm).ActiveControl).ClassType = TDBMemo) then
                  Perform(Wm_NextDlgCtl, 0, 0) ;
  end ;
end;

procedure TFormTelaReceituario.FormCreate(Sender: TObject);
begin
  SQLClienteReceituario.Close ;
  SQLClienteReceituario.MacroByName('MFiltro').Value :=  'CLIEA13ID = "' + ClienteVenda + '"' ;
  SQLClienteReceituario.Open ;
end ;

procedure TFormTelaReceituario.ConerBtn1Click(Sender: TObject);
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from EMPRESA') ;
  DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
  DM.SQLTemplate.Open ;

  GeraTabelaTempOS; // Alimenta a Tabela Temporaria...

{  Declaracao.Lines.Clear ;
  Declaracao.Lines.Add('DECLARO QUE RECEBI DE ' + DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').AsString + ', A MERCADORIA') ;
  Declaracao.Lines.Add('DISCRIMINADA NA PRESENTE ORDEM DE SERVIÇO EM PERFEITAS CONDIÇÕES DE USO.') ;

  Assinatura.Caption := DM.SQLTemplate.FieldByName('EMPRA60CID').AsString + ', ' +
                        FormatDateTime('dd/mm/yyyy', Now) +
                        '              --------------------------------------------------' ;}

  if SQLClienteReceituarioCLRCCTIPOOS.Value = 'J' then
    begin
      if DM.SQLTerminalAtivo.FieldByName('TERMA30MODIMPNFISC').Value = 'BEMATECH MP-20 CI' then
        GeraImpressaoNaoFiscalJoias
      else
        begin
          LblNomeEmpresa1.Caption  := Trim(DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').AsString);
          LblEndEmpresa1.Caption   := Trim(DM.SQLTemplate.FieldByName('EMPRA60END').AsString);
          LblFoneEmpresa1.Caption  := Trim(DM.SQLTemplate.FieldByName('EMPRA20FONE').AsString);
          ppReportJoias.Print;
        end;
    end;
  if SQLClienteReceituarioCLRCCTIPOOS.Value = 'R' then
    begin
      if DM.SQLTerminalAtivo.FieldByName('TERMA30MODIMPNFISC').Value = 'BEMATECH MP20 CI' then
        GeraImpressaoNaoFiscalRelogios
      else
        begin
          LblNomeEmpresa2.Caption  := Trim(DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').AsString);
          LblEndEmpresa2.Caption   := Trim(DM.SQLTemplate.FieldByName('EMPRA60END').AsString);
          LblFoneEmpresa2.Caption  := Trim(DM.SQLTemplate.FieldByName('EMPRA20FONE').AsString);
          ppReportRelogios.Print;
        end;
    end;
  if SQLClienteReceituarioCLRCCTIPOOS.Value = 'O' then
    begin
      if DM.SQLTerminalAtivo.FieldByName('TERMA30MODIMPNFISC').Value = 'BEMATECH MP-20 CI' then
        GeraImpressaoNaoFiscalOculos
      else
        begin
          LblNomeEmpresa3.Caption  := Trim(DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').AsString);
          LblEndEmpresa3.Caption   := Trim(DM.SQLTemplate.FieldByName('EMPRA60END').AsString);
          LblFoneEmpresa3.Caption  := Trim(DM.SQLTemplate.FieldByName('EMPRA20FONE').AsString);
          ppReportOculos.Print;
        end;
    end;
  LabelNovo.SetFocus;
end;

procedure TFormTelaReceituario.SQLClienteReceituarioPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  if (E is EDatabaseError) then
  begin
    if (E is EDBEngineError) then
    begin
      with E as EDBEngineError do
      begin
        if Errors[0].ErrorCode = DBIERR_KEYVIOL then
        begin
          if (DataSet.Tag in [1,2,3]) then
          begin
            DM.CodigoAutomatico('CLIENTERECEITUARIO', DSSQLClienteReceituario, DataSet, 0, 0);
            Action := DaRetry ;
          end ;
       end
       else ShowMessage('Problemas ao gravar o Receituário :' + #13 + Errors[0].Message) ;
      end ;
    end ;
  end ;
end;

procedure TFormTelaReceituario.SQLClienteReceituarioBeforePost(
  DataSet: TDataSet);
begin
  case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                DM.CodigoAutomatico('CLIENTERECEITUARIO', DSSQLClienteReceituario, DataSet, 0, 0);
  end;
end;

procedure TFormTelaReceituario.SQLClienteReceituarioCalcFields(
  DataSet: TDataSet);
begin
  SQLClienteReceituarioClienteCalcField.Value  := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + DataSet.FieldByName('CLIEA13ID').AsString + '"') + ' ' +
                                                  SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA10CODANT', '"' + DataSet.FieldByName('CLIEA13ID').AsString + '"') ;
  SQLClienteReceituarioEndCliCalcField.Value   := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60ENDRES', '"' + DataSet.FieldByName('CLIEA13ID').AsString + '"') ;
  SQLClienteReceituarioFoneCliCalcField.Value  := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA15FONE1', '"' + DataSet.FieldByName('CLIEA13ID').AsString + '"') ;
  SQLClienteReceituarioBairroCliCalcField.Value:= SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60BAIRES', '"' + DataSet.FieldByName('CLIEA13ID').AsString + '"') ;
  SQLClienteReceituarioVendedorCalcField.Value := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', DataSet.FieldByName('VENDICOD').AsString) ;
end;

procedure TFormTelaReceituario.SQLClienteReceituarioNewRecord(
  DataSet: TDataSet);
begin
  SQLClienteReceituarioCLIEA13ID.Value      := ClienteVenda ;
  SQLClienteReceituarioCLRCDCAD.Value       := Date ;
  SQLClienteReceituarioCLRCDENTREGA.Value   := Date ;
  SQLClienteReceituarioCLRCCTIPOOS.Value    := 'O' ;
  SQLClienteReceituarioCLRCN3VLRSALDO.Value := 0 ;
  SQLClienteReceituarioCLRCN3VLRSINAL.Value := 0 ;
  SQLClienteReceituarioCLRCN3VLRTOTAL.Value := 0 ;
end;

procedure TFormTelaReceituario.ControlarActions(DataSource: TDatasource);
begin
  if DataSource.State in DsEditModes then
    begin
      BtnRegistroAnterior.Action := nil;
      BtnRegistroAnterior.Enabled := False;
      BtnProximoRegistro.Action := nil;
      BtnProximoRegistro.Enabled := False;
      LabelNovo.Action := nil;
      LabelNovo.Enabled := False;
      LabelExcluir.Action := nil;
      LabelExcluir.Enabled := False;
    end
   else
   begin
     BtnRegistroAnterior.Action := actAnterior;
     BtnProximoRegistro.Action := actProximo;
     LabelNovo.Action := actNovo;
     LabelExcluir.Action := actExcluir;
     BotCanc.Action := actCancelar;
   end;
end;

procedure TFormTelaReceituario.DSSQLClienteReceituarioStateChange(
  Sender: TObject);
begin
  ControlarActions(DSSQLClienteReceituario);
end;

procedure TFormTelaReceituario.DBRadioTipoOSChange(Sender: TObject);
begin
  if DBRadioTipoOS.Value = 'O' then
    begin
      FormTelaReceituario.Height := 450;
      PanelOculos.Visible  := True;
      PanelOculos.Update;
      PanelRelogio.Visible := False;
      PanelRelogio.Update;
    end;
  if DBRadioTipoOS.Value = 'R' then
    begin
      FormTelaReceituario.Height := 375;
      PanelOculos.Visible  := False;
      PanelOculos.Update;
      PanelRelogio.Visible := True;
      PanelRelogio.Update;
    end;
  if DBRadioTipoOS.Value = 'J' then
    begin
      FormTelaReceituario.Height := 300;
      PanelRelogio.Visible := False;
      PanelRelogio.Update;
      PanelOculos.Visible  := False;
      PanelOculos.Update;
    end;
end;

procedure TFormTelaReceituario.FormActivate(Sender: TObject);
begin
  RxLabel1.Caption := 'Ordem de Serviço Nº '+ FormatFloat('######000000',SQLClienteReceituarioCLRCICOD.AsFloat)+ ' em '+ FormatDateTime('dd/mm/yyyy',SQLClienteReceituarioCLRCDCAD.AsDateTime);
  RxLabel1.Update;
  LabelNovo.SetFocus;
end;

procedure TFormTelaReceituario.actNovoExecute(Sender: TObject);
begin
  SQLClienteReceituario.Append;
  DBEdit24.SetFocus;
end;

procedure TFormTelaReceituario.SQLClienteReceituarioCLRCN3VLRTOTALChange(
  Sender: TField);
begin
  if not GerandoOS then
    SQLClienteReceituarioCLRCN3VLRSALDO.Value    := SQLClienteReceituarioCLRCN3VLRTOTAL.Value - SQLClienteReceituarioCLRCN3VLRSINAL.Value;
end;
procedure TFormTelaReceituario.GeraTabelaTempOS;
var
  I : Integer;
begin
  GerandoOS := True;
  try
    TblOS.Close;
    TblOS.DeleteTable;
    TblOS.CreateTable;
  except
    TblOS.CreateTable;
  end;
    TblOS.Open;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from EMPRESA') ;
  DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
  DM.SQLTemplate.Open ;

  TblOS.Append;
  For I := 0 To SQLClienteReceituario.FieldCount - 1 do
    begin
      if TblOS.FindField(SQLClienteReceituario.Fields[I].FieldName) <> nil then
        TblOS.FieldByName(SQLClienteReceituario.Fields[I].FieldName).AsVariant := SQLClienteReceituario.Fields[I].AsVariant;
    end;
  TblOsEmpresa.AsString          := Trim(DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').AsString);
  TblOsEmpresaEndereco.AsString  := Trim(DM.SQLTemplate.FieldByName('EMPRA60END').AsString);
  TblOsEmpresaFone.AsString      := Trim(DM.SQLTemplate.FieldByName('EMPRA20FONE').AsString);
  TblOs.Post;
  TblOs.Close;
  GerandoOS := False;
end;

procedure TFormTelaReceituario.GeraImpressaoNaoFiscalJoias;
begin
  TblOs.Open;
  AbrirPortaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Ordem de Servico'+chr(10),3,0,0,1,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,' **  Joias  ** ' +chr(10),3,0,0,1,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Dados da Empresa
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresa.AsString+chr(10),3,0,0,0,1);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresaEndereco.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresaFone.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // OS Numero, Data e Atendente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'O.S.Numero '+Format('%.6d',[TblOSCLRCICOD.AsInteger])+chr(10),3,0,0,1,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Emissao/Prev..: '+FormatDateTime('dd/mm/yyyy',TblOSCLRCDCAD.AsDateTime)+' / '+FormatDateTime('dd/mm/yyyy',TblOSCLRCDENTREGA.AsDateTime)+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Atendente.....: '+TblOSVendedorCalcField.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Dados do Cliente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Dados do Cliente:'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSClienteCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEndCliCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSFoneCliCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Servico Solicitado
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Servico Solicitado:'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSCLRCA254SOLICIT.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Valores Total, Sinal e Saldo
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Total.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRTOTAL.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Sinal.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRSINAL.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Saldo.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRSALDO.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Assinatura Cliente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'________________________________________'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSClienteCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Mensagem Final
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'* PRAZO DE RETIRADA DE PRODUTOS EM 90 DIAS *'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
end;

procedure TFormTelaReceituario.GeraImpressaoNaoFiscalRelogios;
begin
  TblOs.Open;
  AbrirPortaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Ordem de Servico'+chr(10),3,0,0,1,1);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,' ** Relogios ** '+chr(10),3,0,0,1,1);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Dados da Empresa
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresa.AsString+chr(10),3,0,0,0,1);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresaEndereco.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresaFone.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // OS Numero, Data e Atendente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'O.S.Numero '+Format('%.6d',[TblOSCLRCICOD.AsInteger])+chr(10),3,0,0,1,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Emissao/Prev..: '+FormatDateTime('dd/mm/yyyy',TblOSCLRCDCAD.AsDateTime)+' / '+FormatDateTime('dd/mm/yyyy',TblOSCLRCDENTREGA.AsDateTime)+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Atendente.....: '+TblOSVendedorCalcField.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Dados do Cliente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Dados do Cliente:'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSClienteCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEndCliCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSFoneCliCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Marca, Caixa, Pulseira e Mostrador
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Detalhes do Produto:'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Marca.....: '+TblOSCLRCA15MARCA.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Caixa.....: '+TblOSCLRCA15CAIXA.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Pulseira..: '+TblOSCLRCA15PULSEIRA.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Mostrador.: '+TblOSCLRCA15MOSTRADOR.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Servico Solicitado
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Servico Solicitado:'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSCLRCA254SOLICIT.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Valores Total, Sinal e Saldo
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Total.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRTOTAL.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Sinal.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRSINAL.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Saldo.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRSALDO.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Assinatura Cliente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'________________________________________'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSClienteCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Mensagem Final
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'* PRAZO DE RETIRADA DE PRODUTOS EM 90 DIAS *'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
end;

procedure TFormTelaReceituario.GeraImpressaoNaoFiscalOculos;
var
 A1,B1,C1,D1,E1,F1,A2,B2,C2,D2,E2,F2,A3,B3,C3,D3,E3,F3,A4,B4,C4,D4,E4,F4 : String;
begin
  TblOs.Open;
  AbrirPortaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Ordem de Servico'+chr(10),3,0,0,1,1);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,' *** Oculos *** '+chr(10),3,0,0,1,1);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Dados da Empresa
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresa.AsString+chr(10),3,0,0,0,1);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresaEndereco.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEmpresaFone.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // OS Numero, Data e Atendente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'O.S.Numero '+Format('%.6d',[TblOSCLRCICOD.AsInteger])+chr(10),3,0,0,1,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Emissao/Prev..: '+FormatDateTime('dd/mm/yyyy',TblOSCLRCDCAD.AsDateTime)+' / '+FormatDateTime('dd/mm/yyyy',TblOSCLRCDENTREGA.AsDateTime)+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Atendente.....: '+TblOSVendedorCalcField.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Dados do Cliente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Dados do Cliente:'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSClienteCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSEndCliCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSFoneCliCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Lente, Armacao e Cor
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Detalhes do Produto:'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Lente...: '+TblOSCLRCA30LENTES.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Armacao.: '+TblOSCLRCA30ARMACAO.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Cor.....: '+TblOSCLRCA30COR.AsString+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Grade
  // Legenda Linha  = 1,2,3,4...
  // Legenda Coluna = A,B,C,D...
  // Exemplo Linha 1 + Coluna A = Variavel 1A
  A1 := Preenche(TblOS.FieldByName('CLRCA7LONGODESF').AsString,'',5,2);
  B1 := Preenche(TblOS.FieldByName('CLRCA7LONGODCIL').AsString,'',5,2);
  C1 := Preenche(TblOS.FieldByName('CLRCA7LONGODEIX').AsString,'',5,2);
  D1 := Preenche(TblOS.FieldByName('CLRCA7LONGODDNP').AsString,'',5,2);
  E1 := Preenche(E1,'',5,2);
  F1 := Preenche(F1,'',5,2);
  A2 := Preenche(TblOS.FieldByName('CLRCA7LONGOEESF').AsString,'',5,2);
  B2 := Preenche(TblOS.FieldByName('CLRCA7LONGOECIL').AsString,'',5,2);
  C2 := Preenche(TblOS.FieldByName('CLRCA7LONGOEEIX').AsString,'',5,2);
  D2 := Preenche(TblOS.FieldByName('CLRCA7LONGOEDNP').AsString,'',5,2);
  E2 := Preenche(E2,'',5,2);
  F2 := Preenche(F2,'',5,2);
  A3 := Preenche(TblOS.FieldByName('CLRCA7PERTODESF').AsString,'',5,2);
  B3 := Preenche(TblOS.FieldByName('CLRCA7PERTODCIL').AsString,'',5,2);
  C3 := Preenche(TblOS.FieldByName('CLRCA7PERTODEIX').AsString,'',5,2);
  D3 := Preenche(TblOS.FieldByName('CLRCA7PERTODDNP').AsString,'',5,2);
  E3 := Preenche(TblOS.FieldByName('CLRCA7PERTODANP').AsString,'',5,2);
  F3 := Preenche(F3,'',5,2);
  A4 := Preenche(TblOS.FieldByName('CLRCA7PERTOEESF').AsString,'',5,2);
  B4 := Preenche(TblOS.FieldByName('CLRCA7PERTOECIL').AsString,'',5,2);
  C4 := Preenche(TblOS.FieldByName('CLRCA7PERTOEEIX').AsString,'',5,2);
  D4 := Preenche(TblOS.FieldByName('CLRCA7PERTOEDNP').AsString,'',5,2);
  E4 := Preenche(TblOS.FieldByName('CLRCA7PERTOEANP').AsString,'',5,2);
  F4 := Preenche(TblOS.FieldByName('CLRCA7PERTOADI').AsString,'',5,2);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'---------------------------------------------'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'      |  | ESF | CIL | EIX | DNP | ANP | ADI |'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'---------------------------------------------'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'      |OD|'+A1+'|'+B1+'|'+C1+'|'+D1+'|'+E1+'|'+F1+'|'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Longe |--|-----|-----|-----|-----|-----|-----|'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'      |OE|'+A2+'|'+B2+'|'+C2+'|'+D2+'|'+E2+'|'+F2+'|'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'---------------------------------------------|'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'      |OD|'+A3+'|'+B3+'|'+C3+'|'+D3+'|'+E3+'|'+F3+'|'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Perto |--|-----|-----|-----|-----|-----|-----|'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'      |OE|'+A4+'|'+B4+'|'+C4+'|'+D4+'|'+E4+'|'+F4+'|'+chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'---------------------------------------------'+chr(10),2,0,0,0,0);
  // Servico Solicitado
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Servico Solicitado:'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSCLRCA254SOLICIT.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Valores Total, Sinal e Saldo
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Total.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRTOTAL.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Sinal.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRSINAL.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Saldo.....: R$ '+FormatFloat('#,##0.00',TblOSCLRCN3VLRSALDO.AsFloat)+chr(10),3,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Assinatura Cliente
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'________________________________________'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,TblOSClienteCalcField.AsString+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  // Mensagem Final
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'* PRAZO DE RETIRADA DE PRODUTOS EM 90 DIAS *'+Chr(10),2,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
end;

procedure TFormTelaReceituario.DSSQLClienteReceituarioDataChange(
  Sender: TObject; Field: TField);
begin
  RxLabel1.Caption := 'Ordem de Serviço Nº '+ FormatFloat('######000000',SQLClienteReceituarioCLRCICOD.AsFloat)+ ' em '+ FormatDateTime('dd/mm/yyyy',SQLClienteReceituarioCLRCDCAD.AsDateTime);
  RxLabel1.Update;
end;

procedure TFormTelaReceituario.BtnConsultaClick(Sender: TObject);
var InputString: string;
    CodigoOS : Integer;
begin
  InputString:= inputbox( 'Informe o Nº da Ordem de Serviço?', '','' );
  if ( InputString <> '' ) then
    begin
      try
        CodigoOS := StrToInt(InputString);
      except
        Showmessage('Você digitou um Código Inválido!');
        Application.ProcessMessages;
      end;
    end;
  if CodigoOS > 0 then
    begin
      SQLClienteReceituario.Close ;
      SQLClienteReceituario.MacroByName('MFiltro').Value :=  'CLRCICOD = "' + IntToStr(CodigoOS) + '"' ;
      SQLClienteReceituario.Open ;
    end;
end;

end.
