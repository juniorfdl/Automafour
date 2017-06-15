unit TelaMarcacaoConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  Mask, DB, Grids, DBGrids, RXDBCtrl, DBTables, RxQuery, RxDBComb, RxLookup,
  ComCtrls, ToolEdit, CurrEdit, Placemnt, Menus, RXCtrls, VarSys,FormResources,
  EDBNum, ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppViewr, ppPrintr,
  OleServer, ppStrtch, ppMemo, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;


type
  TFormTelaMarcacaoConsulta = class(TFormTelaGeralTEMPLATE)
    DSSQLAgendamento: TDataSource;
    TblCliente: TTable;
    TblClienteCLIEA13ID: TStringField;
    TblClienteCLIEA60RAZAOSOC: TStringField;
    TblClienteCLIEA11CPF: TStringField;
    TblClienteCLIEA15FONE1: TStringField;
    TblClienteCLIEA15FONE2: TStringField;
    TblClienteCLIEA15FAX: TStringField;
    TblClienteCLIEA60ENDRES: TStringField;
    TblClienteCLIEA60BAIRES: TStringField;
    TblClienteCLIEA60CIDRES: TStringField;
    TblClienteCLIEA2UFRES: TStringField;
    TblClienteCLIEA8CEPRES: TStringField;
    TblClienteCLIEA60EMAIL: TStringField;
    TblClienteCLIEA60EMPRESA: TStringField;
    TblClienteCLIEA15FONEEMPRESA: TStringField;
    TblClienteMTBLICOD: TIntegerField;
    TblClienteCLIEA254PATHFOTO: TStringField;
    TblClienteCLIEA10CODANT: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    PageControlDadosCliente: TPageControl;
    TabSheetPrincipal: TTabSheet;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    TabSheetConsulta: TTabSheet;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEDNASC: TDateTimeField;
    SQLClienteCLIEA60EMPRESA: TStringField;
    SQLClienteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLClienteCLIEA10CODANT: TStringField;
    TblMotivoBloqueio: TTable;
    TblMotivoBloqueioMTBLICOD: TIntegerField;
    TblMotivoBloqueioMTBLA60DESCR: TStringField;
    SQLClienteMotivoBloqueioDescr: TStringField;
    SQLDependente: TRxQuery;
    DSSQLDependente: TDataSource;
    SQLDependenteCLIEA13ID: TStringField;
    SQLDependenteCLDPICOD: TIntegerField;
    SQLDependenteCLDPA60NOME: TStringField;
    SQLDependenteCLDPA15PARENTESCO: TStringField;
    SQLDependenteCLDPCAUTORIZADO: TStringField;
    SQLDependenteCLDPA15FONE: TStringField;
    SQLDependenteCLDPA60EMAIL: TStringField;
    TabSheet1: TTabSheet;
    SQLAtendente: TRxQuery;
    DSSQLAtendente: TDataSource;
    SQLDependenteCLDPDNASC: TDateTimeField;
    SQLDependenteCLDPA10RG: TStringField;
    SQLDependenteCLDPA11CPF: TStringField;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    SQLEspecialidade: TRxQuery;
    SQLEspecialidadeESPEICOD: TIntegerField;
    SQLEspecialidadeESPEA60DESCR: TStringField;
    DSSQLEspecialidade: TDataSource;
    DSSQLAgendamentoConsulta: TDataSource;
    SQLAgendamentoConsulta: TRxQuery;
    TblClienteDependente: TTable;
    ComboEspecialidade: TRxDBLookupCombo;
    Label1: TLabel;
    Label22: TLabel;
    ComboProfissional: TRxDBLookupCombo;
    TblAtendente: TTable;
    TblProfissional: TTable;
    SQLProfissional: TRxQuery;
    DSSQLProfissional: TDataSource;
    SQLEspecialidadeESPEN3VLRCONSULTA: TFloatField;
    Panel1: TPanel;
    GridAgendamento: TRxDBGrid;
    TblClienteDependenteCLIEA13ID: TStringField;
    TblClienteDependenteCLDPICOD: TIntegerField;
    TblClienteDependenteCLDPA60NOME: TStringField;
    TblClienteDependenteCLDPA15PARENTESCO: TStringField;
    TblClienteDependenteCLDPCAUTORIZADO: TStringField;
    TblClienteDependenteCLDPDNASC: TDateTimeField;
    TblClienteDependenteCLDPA10RG: TStringField;
    TblClienteDependenteCLDPA11CPF: TStringField;
    TblClienteDependentePENDENTE: TStringField;
    TblClienteDependenteREGISTRO: TDateTimeField;
    TblClienteDependenteCLDPA15FONE: TStringField;
    TblClienteDependenteCLDPA60EMAIL: TStringField;
    SQLAgendamento: TRxQuery;
    SQLAgendamentoAGENICOD: TIntegerField;
    SQLAgendamentoCLIEA13ID: TStringField;
    SQLAgendamentoCLDPICOD: TIntegerField;
    SQLAgendamentoPROFICOD: TIntegerField;
    SQLAgendamentoAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoAGENCSTATUS: TStringField;
    SQLAgendamentoAGENINRORECIBO: TIntegerField;
    SQLAgendamentoUSUAICOD: TIntegerField;
    SQLAgendamentoESPEICOD: TIntegerField;
    SQLAgendamentoAGENA254OBS: TStringField;
    SQLAgendamentoAGENDDIGIT: TDateTimeField;
    SQLAgendamentoAGENICODAGRUP: TIntegerField;
    SQLAgendamentoProfissional: TStringField;
    SQLAgendamentoAtendente: TStringField;
    SQLAgendamentoClienteNome: TStringField;
    SQLAgendamentoDependenteNome: TStringField;
    SQLAgendamentoAGENN3VLRCONSULTA: TFloatField;
    SQLAgendamentoAGENN3VLRPAGO: TFloatField;
    EditDataBase: TDateEdit;
    BitBtn1: TBitBtn;
    CKHorariosLivres: TCheckBox;
    FormStorage: TFormStorage;
    MenuDiversos: TPopupMenu;
    MnCancelaSimples: TMenuItem;
    GroupBox11: TGroupBox;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    Label27: TLabel;
    DBEdit17: TDBEdit;
    Label28: TLabel;
    DBEdit20: TDBEdit;
    ComboStatus: TRxDBComboBox;
    Label26: TLabel;
    DBMemo2: TDBMemo;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    N1: TMenuItem;
    MnReimprimirRecibo: TMenuItem;
    N2: TMenuItem;
    ExtratodoPaciente1: TMenuItem;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    DSSQLMotivo: TDataSource;
    CKLivresdoDia: TCheckBox;
    SQLAgendamentoAGENDPAGO: TDateTimeField;
    ppBDEPipeline1: TppBDEPipeline;
    ppRecibo: TppReport;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    Extenso: TppLabel;
    ppLabel7: TppLabel;
    DataImpressao: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppLabel12: TppLabel;
    ppDBText8: TppDBText;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel31: TppLabel;
    ppExtrato: TppReport;
    ppDetailBand3: TppDetailBand;
    ppLbEmpresa: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText17: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBText20: TppDBText;
    ppDependente: TppDBText;
    ppLabel22: TppLabel;
    ppDBText19: TppDBText;
    ppLabel38: TppLabel;
    ppDBText24: TppDBText;
    ppStatus: TppLabel;
    N3: TMenuItem;
    MnHistoricoPaciente: TMenuItem;
    ppLabel51: TppLabel;
    SQLAgendamentoPacienteAgendado: TStringField;
    ppLb12Andar: TppLabel;
    MnReimprimirReciboCancelamento: TMenuItem;
    SQLAgendamentoDiaMarcacao: TStringField;
    SQLAgendamentoAGENIUSUATEND: TIntegerField;
    BtnGravarTitular: TBitBtn;
    BtnCancelTitular: TBitBtn;
    BtnGravarDependente: TBitBtn;
    BtnCancelDependente: TBitBtn;
    BtnRegistroAnterior: TSpeedButton;
    BtnProximoRegistro: TSpeedButton;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    TblEspecialidade: TTable;
    TblEspecialidadeESPEICOD: TIntegerField;
    TblEspecialidadeESPEA60DESCR: TStringField;
    TblEspecialidadeESPEN3VLRCONSULTA: TFloatField;
    SQLAgendamentoEspecialidade: TStringField;
    ppDBText5: TppDBText;
    SQLAgendamentoAGENIQTDE: TIntegerField;
    N4: TMenuItem;
    GerarRecibo1: TMenuItem;
    SQLAgendamentoTodos: TRxQuery;
    Label39: TLabel;
    DBEdit27: TDBEdit;
    Label40: TLabel;
    DBEdit28: TDBEdit;
    DSSQLAgendamentoTodos: TDataSource;
    SQLAgendamentoTodosAGENICOD: TIntegerField;
    SQLAgendamentoTodosCLIEA13ID: TStringField;
    SQLAgendamentoTodosCLDPICOD: TIntegerField;
    SQLAgendamentoTodosPROFICOD: TIntegerField;
    SQLAgendamentoTodosAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoTodosAGENCSTATUS: TStringField;
    SQLAgendamentoTodosAGENINRORECIBO: TIntegerField;
    SQLAgendamentoTodosUSUAICOD: TIntegerField;
    SQLAgendamentoTodosESPEICOD: TIntegerField;
    SQLAgendamentoTodosAGENA254OBS: TStringField;
    SQLAgendamentoTodosAGENICODAGRUP: TIntegerField;
    SQLAgendamentoTodosAGENDDIGIT: TDateTimeField;
    SQLAgendamentoTodosAGENN3VLRCONSULTA: TFloatField;
    SQLAgendamentoTodosAGENN3VLRPAGO: TFloatField;
    SQLAgendamentoTodosAGENDPAGO: TDateTimeField;
    SQLAgendamentoTodosAGENIUSUATEND: TIntegerField;
    SQLAgendamentoTodosAGENIQTDE: TIntegerField;
    ppLabel23: TppLabel;
    ppLabel50: TppLabel;
    ComboDependenteAutorizado: TRxDBComboBox;
    Label42: TLabel;
    Label43: TLabel;
    EditProcuraTitular: TEdit;
    ComboDependente: TRxDBLookupCombo;
    Label44: TLabel;
    Label45: TLabel;
    ComboAtendente: TRxDBLookupCombo;
    Label35: TLabel;
    MemoObs: TMemo;
    Label15: TLabel;
    DBEdit26: TDBEdit;
    Label46: TLabel;
    SQLDependenteIdade: TIntegerField;
    SQLConvenios: TRxQuery;
    SQLConveniosCONVICOD: TIntegerField;
    SQLConveniosCONVA60DESCR: TStringField;
    SQLConveniosCONVICONSULTALIVRE: TIntegerField;
    SQLConveniosCONVA06SIGLA: TStringField;
    SQLMotivoNaoAtendimento: TRxQuery;
    SQLMotivoNaoAtendimentoMONAICOD: TIntegerField;
    SQLMotivoNaoAtendimentoMONAA60DESCR: TStringField;
    DSSQLMotivoNaoAtend: TDataSource;
    SQLAgendamentoMONAICOD: TIntegerField;
    SQLAgendamentoTodosMONAICOD: TIntegerField;
    Label48: TLabel;
    DBEdit31: TDBEdit;
    TblMotivoNaoAtendimento: TTable;
    TblMotivoNaoAtendimentoMONAICOD: TIntegerField;
    TblMotivoNaoAtendimentoMONAA60DESCR: TStringField;
    SQLAgendamentoMotivoNAtendDescr: TStringField;
    TblProfissionalVENDICOD: TIntegerField;
    TblProfissionalVENDA60NOME: TStringField;
    TblProfissionalESPEICOD: TIntegerField;
    TblAtendenteUSUAICOD: TIntegerField;
    TblAtendenteUSUAA60LOGIN: TStringField;
    SQLProfissionalVENDICOD: TIntegerField;
    SQLProfissionalVENDA60NOME: TStringField;
    SQLProfissionalESPEICOD: TIntegerField;
    SQLAtendenteUSUAICOD: TIntegerField;
    SQLAtendenteUSUAA60LOGIN: TStringField;
    DBEdit32: TDBEdit;
    Label23: TLabel;
    DBEdit33: TDBEdit;
    SQLClienteCLIEA10RG: TStringField;
    Label33: TLabel;
    Label38: TLabel;
    DBEdit34: TDBEdit;
    Label49: TLabel;
    DBEdit35: TDBEdit;
    Label50: TLabel;
    DBEdit36: TDBEdit;
    Label36: TLabel;
    ComboProcuraClienteNome: TRxDBLookupCombo;
    ppLembreteMarcacao: TppReport;
    ppTitleBandLembrete: TppTitleBand;
    ppDBText28: TppDBText;
    ppDBText33: TppDBText;
    ppLabel70: TppLabel;
    ppEmpresaNomeLembrete: TppLabel;
    ppLabel79: TppLabel;
    ppFoneEmpresaLembrete: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBTextAss: TppDBText;
    ppLabel66: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    SQLAgendamentoConsultaAGENICOD: TIntegerField;
    SQLAgendamentoConsultaCLIEA13ID: TStringField;
    SQLAgendamentoConsultaCLDPICOD: TIntegerField;
    SQLAgendamentoConsultaPROFICOD: TIntegerField;
    SQLAgendamentoConsultaAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoConsultaAGENCSTATUS: TStringField;
    SQLAgendamentoConsultaAGENINRORECIBO: TIntegerField;
    SQLAgendamentoConsultaUSUAICOD: TIntegerField;
    SQLAgendamentoConsultaESPEICOD: TIntegerField;
    SQLAgendamentoConsultaAGENA254OBS: TStringField;
    SQLAgendamentoConsultaAGENICODAGRUP: TIntegerField;
    SQLAgendamentoConsultaAGENDDIGIT: TDateTimeField;
    SQLAgendamentoConsultaAGENN3VLRCONSULTA: TFloatField;
    SQLAgendamentoConsultaAGENN3VLRPAGO: TFloatField;
    SQLAgendamentoConsultaAGENDPAGO: TDateTimeField;
    SQLAgendamentoConsultaAGENIUSUATEND: TIntegerField;
    SQLAgendamentoConsultaAGENIQTDE: TIntegerField;
    SQLAgendamentoConsultaMONAICOD: TIntegerField;
    SQLAgendamentoConsultaDependenteNome: TStringField;
    SQLAgendamentoConsultaProfissional: TStringField;
    SQLAgendamentoConsultaClienteNome: TStringField;
    PipeAgendamentoConsulta: TppBDEPipeline;
    ppEmpresaFone: TppLabel;
    ppHistConsulta: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHistEmpresa: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppHistEmpresaFone: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppLabel27: TppLabel;
    ppDBText12: TppDBText;
    ppStatusHistConsulta: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    TblClienteCLIETOBS1: TBlobField;
    SQLClienteCLIETOBS1: TBlobField;
    BtnSimples: TSpeedButton;
    BtnDupla: TSpeedButton;
    BtnTripla: TSpeedButton;
    BtnAtendimento: TSpeedButton;
    BtNaoAtendido: TSpeedButton;
    LabelDiversos: TRxSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GridAgendamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSimplesClick(Sender: TObject);
    procedure BtnDuplaClick(Sender: TObject);
    procedure BtnTriplaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MnCancelaSimplesClick(Sender: TObject);
    procedure GridAgendamentoDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure MnReimprimirReciboClick(Sender: TObject);
    procedure ppReciboBeforePrint(Sender: TObject);
    procedure ExtratodoPaciente1Click(Sender: TObject);
    procedure SQLAgendamentoCalcFields(DataSet: TDataSet);
    procedure ppReciboCancelBeforePrint(Sender: TObject);
    procedure BtnAtendimentoClick(Sender: TObject);
    procedure ppStatusPrint(Sender: TObject);
    procedure MnHistoricoPacienteClick(Sender: TObject);
    procedure ppStatusHistConsultaPrint(Sender: TObject);
    procedure ppExtratoPreviewFormCreate(Sender: TObject);
    procedure ppHistConsultaPreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ComboEspecialidadeExit(Sender: TObject);
    procedure BtnGravarTitularClick(Sender: TObject);
    procedure BtnCancelTitularClick(Sender: TObject);
    procedure BtnGravarDependenteClick(Sender: TObject);
    procedure BtnCancelDependenteClick(Sender: TObject);
    procedure BtnProximoRegistroClick(Sender: TObject);
    procedure BtnRegistroAnteriorClick(Sender: TObject);
    procedure ComboDependenteExit(Sender: TObject);
    procedure BtNaoAtendidoClick(Sender: TObject);
    procedure ppTitleBandLembreteBeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppTitleBand2BeforePrint(Sender: TObject);

  private
    NRORECIBO: INTEGER;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaMarcacaoConsulta: TFormTelaMarcacaoConsulta;

implementation

uses DataModulo, DataModuloTemplate, ExtensoLib, ppForms, TelaMotivoNaoAtend,
  UnitLibrary ;

{$R *.dfm}

procedure TFormTelaMarcacaoConsulta.FormCreate(Sender: TObject);
begin
  inherited;
  if not TblProfissional.Active then TblProfissional.Open;
  if not TblMotivoBloqueio.Active then TblMotivoBloqueio.Open;
  if not TblMotivoNaoAtendimento.Active then TblMotivoNaoAtendimento.Open;
  if not SQLAtendente.Active then SQLAtendente.Open;
  if not SQLEspecialidade.Active then SQLEspecialidade.Open;
  if not SQLMotivoNaoAtendimento.Active then SQLMotivoNaoAtendimento.Open;
  SQLCliente.Close;
  SQLCliente.MacroByName('Valor').Value := '0=0';
  SQLCliente.Open;
  SQLDependente.Close;
  SQLDependente.Open;
end;

procedure TFormTelaMarcacaoConsulta.FormActivate(Sender: TObject);
begin
  inherited;
  EditDataBase.Text := FormatDateTime('dd/mm/yyyy', Now) ;
  ComboEspecialidade.SetFocus;
end;

procedure TFormTelaMarcacaoConsulta.GridAgendamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var CdCli : String;
begin
  inherited;
  if key = VK_Escape then
    begin
      if SQLAgendamentoCLIEA13ID.Value = '' then
        begin
          ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                      'Não existe consulta a ser cancelada neste horário...');
          abort;
        end;
      if ComboAtendente.Value = '' then
        begin
          ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                      'Você deve informar um Atendente...');
          ComboAtendente.SetFocus;
          abort;
        end;
      Case SQLAgendamentoAGENCSTATUS.AsString[1] of
        '1': begin
               if SQLAgendamentoAGENINRORECIBO.AsString = '' then
                 begin
                   if Application.MessageBox('Deseja cancelar está marcação SIMPLES','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
                     begin
                       SQLAgendamento.Edit;
                       SQLAgendamentoCLIEA13ID.Value            := '';
                       SQLAgendamentoCLDPICOD.AsString          := '';
                       SQLAgendamentoAGENCSTATUS.Value          := '0';
                       SQLAgendamentoAGENDDIGIT.AsString        := '';
                       SQLAgendamentoUSUAICOD.AsString          := '';
                       SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                       SQLAgendamentoAGENA254OBS.Value          := '';
                       SQLAgendamentoAGENDPAGO.AsString         := '' ;
                       SQLAgendamentoAGENN3VLRPAGO.AsString     := '' ;
                       SQLAgendamento.Post;
                     end;
                 end
               else
                 begin
                   ShowMessage('Marcação SIMPLES Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                               'Já foi gerado recibo para consulta...');
                 end;
             end;
        '2': begin
//               if (SQLAgendamentoAGENINRORECIBO.AsString = '') and (SQLAgendamentoAGENN3VLRCONSULTA.Value > 0) then
               if SQLAgendamentoAGENINRORECIBO.AsString = '' then
                 begin
                   if Application.MessageBox('Deseja cancelar está marcação DUPLA','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
                     begin
                        // TESTAR SE O CLIENTE É O MESMO NOS OUTROS HORÁRIOS...
                        CdCli := SQLAgendamentoCLIEA13ID.Value;
                        SQLAgendamento.Next;
                        if CdCli <> SQLAgendamentoCLIEA13ID.Value then
                          begin
                            ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                                        'Pacientes diferentes, Chamar CPD...');
                            PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                            GridAgendamento.SetFocus;
                            SQLAgendamento.Prior;
                            abort;
                          end;
                        SQLAgendamento.Prior;
                        // FIM DO TESTE DO CLIENTE
                        SQLAgendamento.Edit;
                        SQLAgendamentoCLIEA13ID.Value            := '';
                        SQLAgendamentoCLDPICOD.AsString          := '';
                        SQLAgendamentoAGENCSTATUS.Value          := '0';
                        SQLAgendamentoAGENDDIGIT.AsString        := '';
                        SQLAgendamentoUSUAICOD.AsString          := '';
                        SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                        SQLAgendamentoAGENA254OBS.Value          := '';
                        SQLAgendamentoAGENDPAGO.AsString         := '';
                        SQLAgendamentoAGENN3VLRPAGO.AsString     := '';
                        SQLAgendamento.Post;
                        SQLAgendamento.Next;
                        SQLAgendamento.Edit;
                        SQLAgendamentoCLIEA13ID.Value            := '';
                        SQLAgendamentoCLDPICOD.AsString          := '';
                        SQLAgendamentoAGENCSTATUS.Value          := '0';
                        SQLAgendamentoAGENDDIGIT.AsString        := '';
                        SQLAgendamentoUSUAICOD.AsString          := '';
                        SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                        SQLAgendamentoAGENA254OBS.Value          := '';
                        SQLAgendamentoAGENDPAGO.AsString         := '' ;
                        SQLAgendamentoAGENN3VLRPAGO.AsString     := '' ;
                        SQLAgendamento.Post;
                        SQLAgendamento.Prior;
                     end;
                 end
               else
                 begin
                   ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                               'Já foi gerado recibo para consulta, ou você não está no primeiro horário...');
                 end;
             end;
        '3': begin
//               if (SQLAgendamentoAGENINRORECIBO.AsString = '') and (SQLAgendamentoAGENN3VLRCONSULTA.Value > 0) then
               if SQLAgendamentoAGENINRORECIBO.AsString = '' then
                 begin
                   if Application.MessageBox('Deseja cancelar está marcação TRIPLA','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
                      begin
                        // TESTAR SE O CLIENTE É O MESMO NOS OUTROS HORÁRIOS...
                        CdCli := SQLAgendamentoCLIEA13ID.Value;
                        SQLAgendamento.Next;
                        if CdCli <> SQLAgendamentoCLIEA13ID.Value then
                          begin
                            ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                                        'Pacientes diferentes, Chamar CPD...');
                            PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                            GridAgendamento.SetFocus;
                            SQLAgendamento.Prior;
                            abort;
                          end;
                        SQLAgendamento.Next;
                        if CdCli <> SQLAgendamentoCLIEA13ID.Value then
                          begin
                            ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                                        'Pacientes diferentes, Chamar CPD...');
                            PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                            GridAgendamento.SetFocus;
                            SQLAgendamento.Prior;
                            SQLAgendamento.Prior;
                            abort;
                          end;
                        SQLAgendamento.Prior;
                        SQLAgendamento.Prior;
                        // FIM DO TESTE DO CLIENTE
                        SQLAgendamento.Edit;
                        SQLAgendamentoCLIEA13ID.Value            := '';
                        SQLAgendamentoCLDPICOD.AsString          := '';
                        SQLAgendamentoAGENCSTATUS.Value          := '0';
                        SQLAgendamentoAGENDDIGIT.AsString        := '';
                        SQLAgendamentoUSUAICOD.AsString          := '';
                        SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                        SQLAgendamentoAGENA254OBS.Value          := '';
                        SQLAgendamentoAGENDPAGO.AsString         := '' ;
                        SQLAgendamentoAGENN3VLRPAGO.AsString     := '' ;
                        SQLAgendamento.Post;
                        SQLAgendamento.Next;
                        SQLAgendamento.Edit;
                        SQLAgendamentoCLIEA13ID.Value            := '';
                        SQLAgendamentoCLDPICOD.AsString          := '';
                        SQLAgendamentoAGENCSTATUS.Value          := '0';
                        SQLAgendamentoAGENDDIGIT.AsString        := '';
                        SQLAgendamentoUSUAICOD.AsString          := '';
                        SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                        SQLAgendamentoAGENA254OBS.Value          := '';
                        SQLAgendamentoAGENDPAGO.AsString         := '' ;
                        SQLAgendamentoAGENN3VLRPAGO.AsString     := '' ;
                        SQLAgendamento.Post;
                        SQLAgendamento.Next;
                        SQLAgendamento.Edit;
                        SQLAgendamentoCLIEA13ID.Value            := '';
                        SQLAgendamentoCLDPICOD.AsString          := '';
                        SQLAgendamentoAGENCSTATUS.Value          := '0';
                        SQLAgendamentoAGENDDIGIT.AsString        := '';
                        SQLAgendamentoUSUAICOD.AsString          := '';
                        SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                        SQLAgendamentoAGENA254OBS.Value          := '';
                        SQLAgendamentoAGENDPAGO.AsString         := '' ;
                        SQLAgendamentoAGENN3VLRPAGO.AsString     := '' ;
                        SQLAgendamento.Post;
                        SQLAgendamento.Prior;
                        SQLAgendamento.Prior;
                        abort;
                     end;
                 end
               else
                 begin
                   ShowMessage('Marcação TRIPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                               'Já foi gerado recibo para consulta, ou você não está no primeiro horário...');
                   abort;
                 end;
             end;
       end;
    end;
  if key = VK_Return then EditProcuraTitular.SetFocus;
end;

procedure TFormTelaMarcacaoConsulta.BtnSimplesClick(Sender: TObject);
var Quant, DataAtual, Dependente, NroRecibo, VlrPago, DtPago, VlrConsulta, Codigo: String;
    Erro: Integer;
begin
  inherited;
  DataAtual := FormatDateTime('dd/mm/yyyy 00:00',Now);
  IF SQLAgendamentoAGENDMARCACAO.Value < StrToDateTime(DataAtual) THEN
    begin
      ShowMessage('Marcação SIMPLES Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você não pode marcar consulta com data anterior a hoje...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF SQLCliente.IsEmpty then
    begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar o Paciente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF SQLClienteMTBLICOD.AsString <> '' THEN
    begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'O Paciente está bloqueado! Verifique...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF SQLAgendamentoCLIEA13ID.VALUE <> '' THEN
    begin
      ShowMessage('Marcação SIMPLES Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Este horário já está reservado para outro Paciente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF ComboAtendente.Value = '' then
    begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar um Atendente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      ComboAtendente.SetFocus;
      abort;
    end;
    Quant := '1';
    // Marca 1 Consulta
    SQLAgendamento.Edit;
    SQLAgendamentoCLIEA13ID.Value        := SQLClienteCLIEA13ID.Value;
    SQLAgendamentoAGENDDIGIT.AsString    := FormatDateTime('dd/mm/yyyy', Now);
    SQLAgendamentoUSUAICOD.Value         := SQLAtendenteUSUAICOD.Value;
    SQLAgendamentoAGENIQTDE.Value        := StrToInt(Quant);
    SQLAgendamentoAGENN3VLRCONSULTA.Value:= SQLEspecialidadeESPEN3VLRCONSULTA.Value;
    SQLAgendamentoAGENCSTATUS.Value      := '1';
    SQLAgendamentoAGENA254OBS.Value      := MemoObs.Text;
    if (not SQLDependente.IsEmpty) and (ComboDependente.KeyValue <> NULL) then
      SQLAgendamentoCLDPICOD.Value       := ComboDependente.KeyValue;

    // Ver Melhor como ira funcionar o Recibo
    SQLAgendamentoAGENINRORECIBO.AsString := '';
    // SQLAgendamentoAGENINRORECIBO.Value := TblConfigGeralCFGGIULTNRORECIBO.Value;
    //SQLAgendamentoAGENN3VLRPAGO.Value  := SQLAgendamentoAGENN3VLRCONSULTA.Value;
    //SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);

    if DSSQLAgendamento.State in dsEditModes   then SQLAgendamento.Post;

    // MovimentaCaixaCredito;
    // Ver como vai funcionar a impressao do recibo
    //  ppRecibo.Print;
    if Pergunta('SIM','Deseja Imprimir Lembrete de Marcação?') then
      begin
        ppLembreteMarcacao.PrinterSetup.PrinterName  := DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').asString ;
        ppLembreteMarcacao.Print;
      end;
    PageControlDadosCliente.ActivePage:= TabSheetConsulta;
    EditProcuraTitular.SetFocus;
end;

procedure TFormTelaMarcacaoConsulta.BtnDuplaClick(Sender: TObject);
var Agrup,Contador : integer;
    Entra,PrimeiraConsulta : Boolean;
    Data1,Data2,DataAtual  : String;
begin
  inherited;
  DataAtual := FormatDateTime('dd/mm/yyyy 00:00',Now);
  IF SQLAgendamentoAGENDMARCACAO.Value < StrToDateTime(DataAtual) THEN
    begin
      ShowMessage('Marcação SIMPLES Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você não pode marcar consulta com data anterior a hoje...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF SQLCliente.IsEmpty then
    begin
      ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar o Paciente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF SQLClienteMTBLICOD.AsString <> '' THEN
    begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'O Paciente está bloqueado! Verifique...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF ComboAtendente.Value = '' then
    begin
      ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar o Atendente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      ComboAtendente.SetFocus;
      abort;
    end;
  Contador  := 1;
  Entra     := True;
  Data1 := FormatDateTime('dd/mm/yyyy',SQLAgendamentoAGENDMARCACAO.Value);
  While Contador < 3 do
    begin
      Data2 := FormatDateTime('dd/mm/yyyy',SQLAgendamentoAGENDMARCACAO.Value);
      IF (SQLAgendamentoCLIEA13ID.VALUE <> '') or (Data1<>Data2) THEN Entra := False;
      SQLAgendamento.Next;
      inc(Contador);
     end;
  SQLAgendamento.Prior;
  SQLAgendamento.Prior;
  If not Entra then
    begin
      ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Um dos horários está reservado para outro paciente...'+Chr(13)+
                  'Os horários escolhidos estão em dias diferentes...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      ComboAtendente.SetFocus;
      abort;
    end;
  // Testar se não tem algum horário marcado no meio dos registros...
    SQLAgendamentoTodos.Locate('AGENICOD',SQLAgendamentoAGENICOD.Value,[]);
    if (SQLAgendamentoTodosCLIEA13ID.Value = null) or (SQLAgendamentoTodosCLIEA13ID.Value = '')  then
      begin
        SQLAgendamentoTodos.Next;
        if SQLAgendamentoTodosCLIEA13ID.Value <> '' then
          begin
            ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                        'Um dos horários está reservado para outro paciente...');
            PageControlDadosCliente.ActivePage:= TabSheetConsulta;
            ComboAtendente.SetFocus;
            abort;
          end;
      end
    else
      begin
        ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                    'Um dos horários está reservado para outro paciente...');
        PageControlDadosCliente.ActivePage:= TabSheetConsulta;
        ComboAtendente.SetFocus;
        abort;
      end;
  // Fim do Teste de registros...
  // Marca 1 Consulta
  SQLAgendamento.Edit ;
  SQLAgendamentoCLIEA13ID.Value          := SQLClienteCLIEA13ID.Value ;
  SQLAgendamentoAGENDDIGIT.AsString      := FormatDateTime('dd/mm/yyyy', Now) ;
  SQLAgendamentoUSUAICOD.Value           := SQLAtendenteUSUAICOD.Value ;
  SQLAgendamentoAGENN3VLRCONSULTA.Value  := SQLEspecialidadeESPEN3VLRCONSULTA.Value ;
  SQLAgendamentoAGENCSTATUS.Value        := '2' ;
  SQLAgendamentoAGENA254OBS.Value        := MemoObs.Text;
  if (not SQLDependente.IsEmpty) and (ComboDependente.KeyValue <> NULL) then
    SQLAgendamentoCLDPICOD.Value := ComboDependente.KeyValue ;
  // Ver como vai funcionar o Recibo
  SQLAgendamentoAGENINRORECIBO.AsString := '';
  //SQLAgendamentoAGENINRORECIBO.Value := TblConfigGeralCFGGIULTNRORECIBO.Value;
  //SQLAgendamentoAGENN3VLRPAGO.Value  := SQLAgendamentoAGENN3VLRCONSULTA.Value;
  //SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);
  //if DSSQLAgendamento.State in dsEditModes   then SQLAgendamento.Post;
  // pprecibo.Print;
  // Fim Recibo
  Agrup := SQLAgendamentoAGENICOD.Value;
  // MovimentaCaixaCredito;

  // Marca 2 Consulta
  SQLAgendamento.Next;
  SQLAgendamento.Edit;
  SQLAgendamentoCLIEA13ID.Value        := SQLClienteCLIEA13ID.Value;
  SQLAgendamentoAGENDDIGIT.AsString    := FormatDateTime('dd/mm/yyyy', Now);
  SQLAgendamentoUSUAICOD.Value         := SQLAtendenteUSUAICOD.Value;
  SQLAgendamentoAGENN3VLRCONSULTA.Value:= 0;
  SQLAgendamentoAGENCSTATUS.Value      := '2' ;
  SQLAgendamentoAGENICODAGRUP.Value    := Agrup;
  SQLAgendamentoAGENA254OBS.Value      := MemoObs.Text;
  if (not SQLDependente.IsEmpty) and (ComboDependente.KeyValue <> NULL) then
    SQLAgendamentoCLDPICOD.Value := ComboDependente.KeyValue ;
  // Pegar Recibo Numero Consulta Anterior
  SQLAgendamentoAGENINRORECIBO.AsString := '';
  // SQLAgendamentoAGENINRORECIBO.Value := NRORECIBO;
  // SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);
  if DSSQLAgendamento.State in dsEditModes   then SQLAgendamento.Post;
  SQLAgendamento.Prior;
  if Pergunta('SIM','Deseja Imprimir Lembrete de Marcação Dupola?') then
    begin
      ppLembreteMarcacao.PrinterSetup.PrinterName  := DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').asString ;
      ppLembreteMarcacao.Print;
    end;
  PageControlDadosCliente.ActivePage:= TabSheetConsulta;
  EditProcuraTitular.SetFocus;
end;

procedure TFormTelaMarcacaoConsulta.BtnTriplaClick(Sender: TObject);
var agrup,Contador        : integer;
    Entra                 : Boolean;
    Data1,Data2,DataAtual : String;
begin
  inherited;
  DataAtual := FormatDateTime('dd/mm/yyyy 00:00',Now);
  IF SQLAgendamentoAGENDMARCACAO.Value < StrToDateTime(DataAtual) THEN
    begin
      ShowMessage('Marcação SIMPLES Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você não pode marcar consulta com data anterior a hoje...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF SQLCliente.IsEmpty then
    begin
      ShowMessage('Marcação TRIPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar o Paciente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF SQLClienteMotivoBloqueioDescr.AsString <> '' THEN
    begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'O Paciente está bloqueado! Verifique...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  IF ComboAtendente.Value = '' then
    begin
      ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar o Atendente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      ComboAtendente.SetFocus;
      abort;
    end;
  Contador := 1;
  Entra     := True;
  Data1 := FormatDateTime('dd/mm/yyyy',SQLAgendamentoAGENDMARCACAO.Value);
  While Contador < 4 do
    begin
      Data2 := FormatDateTime('dd/mm/yyyy',SQLAgendamentoAGENDMARCACAO.Value);
      IF (SQLAgendamentoCLIEA13ID.VALUE <> '') or (Data1<>Data2) THEN Entra := False;
      SQLAgendamento.Next;
      inc(Contador);
     end;
  SQLAgendamento.Prior;
  SQLAgendamento.Prior;
  SQLAgendamento.Prior;
  If not Entra then
    begin
      ShowMessage('Marcação TRIPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Um dos horários está reservado para outro paciente...'+Chr(13)+
                  'Os horários escolhidos estão em dias diferentes...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
      abort;
    end;
  // Testar se não tem algum horário marcado no meio dos registros...
  SQLAgendamentoTodos.Locate('AGENICOD',SQLAgendamentoAGENICOD.Value,[]);
  if (SQLAgendamentoTodosCLIEA13ID.Value = null) or (SQLAgendamentoTodosCLIEA13ID.Value = '')  then
    begin
      SQLAgendamentoTodos.Next;
      if SQLAgendamentoTodosCLIEA13ID.Value <> '' then
        begin
          ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                      'Um dos horários está reservado para outro paciente...');
          PageControlDadosCliente.ActivePage:= TabSheetConsulta;
          ComboAtendente.SetFocus;
          abort;
        end;
      SQLAgendamentoTodos.Next;
      if SQLAgendamentoTodosCLIEA13ID.Value <> '' then
        begin
          ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                      'Um dos horários está reservado para outro paciente...');
          PageControlDadosCliente.ActivePage:= TabSheetConsulta;
          ComboAtendente.SetFocus;
          abort;
        end;
    end
  else
    begin
      ShowMessage('Marcação DUPLA Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Um dos horários está reservado para outro paciente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      ComboAtendente.SetFocus;
      abort;
    end;
  // Fim do Teste de registros...

  SQLAgendamento.Edit;  // Marca 1 Consulta
  SQLAgendamentoCLIEA13ID.Value        := SQLClienteCLIEA13ID.Value;
  SQLAgendamentoAGENDDIGIT.AsString    := FormatDateTime('dd/mm/yyyy', Now);
  SQLAgendamentoUSUAICOD.Value         := SQLAtendenteUSUAICOD.Value;
  SQLAgendamentoAGENN3VLRCONSULTA.Value:= SQLEspecialidadeESPEN3VLRCONSULTA.Value*3;
  SQLAgendamentoAGENCSTATUS.Value      := '3';
  SQLAgendamentoAGENA254OBS.Value      := MemoObs.Text;
  if (not SQLDependente.IsEmpty) and (ComboDependente.KeyValue <> NULL) then
    SQLAgendamentoCLDPICOD.Value := ComboDependente.KeyValue ;
  // Ver como vai funcionar o Recibo
  SQLAgendamentoAGENINRORECIBO.AsString := '';
     //     SQLAgendamentoAGENINRORECIBO.Value := TblConfigGeralCFGGIULTNRORECIBO.Value;
     //     SQLAgendamentoAGENN3VLRPAGO.Value  := SQLAgendamentoAGENN3VLRCONSULTA.Value;
     //     SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);
     //     NRORECIBO := SQLAgendamentoAGENINRORECIBO.Value;
  if DSSQLAgendamento.State in dsEditModes   then SQLAgendamento.Post;
  // pprecibo.Print;
  Agrup := SQLAgendamentoAGENICOD.Value;
  // MovimentaCaixaCredito;
  SQLAgendamento.Next;  // Marca 2 Consulta
  SQLAgendamento.Edit;
  SQLAgendamentoCLIEA13ID.Value        := SQLClienteCLIEA13ID.Value;
  SQLAgendamentoAGENDDIGIT.AsString    := FormatDateTime('dd/mm/yyyy', Now);
  SQLAgendamentoUSUAICOD.Value         := SQLAtendenteUSUAICOD.Value;
  SQLAgendamentoAGENN3VLRCONSULTA.Value:= 0;
  SQLAgendamentoAGENCSTATUS.Value      := '3';
  SQLAgendamentoAGENICODAGRUP.Value    := Agrup;
  SQLAgendamentoAGENA254OBS.Value      := MemoObs.Text;
  if (not SQLDependente.IsEmpty) and (ComboDependente.KeyValue <> NULL) then
    SQLAgendamentoCLDPICOD.Value := ComboDependente.KeyValue ;
  // Ver como vai funcionar o Recibo
  SQLAgendamentoAGENINRORECIBO.AsString := '';
    //      SQLAgendamentoAGENINRORECIBO.Value := NRORECIBO;
    //      SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);
  if DSSQLAgendamento.State in dsEditModes   then SQLAgendamento.Post;
  Agrup := SQLAgendamentoAGENICOD.Value;
  SQLAgendamento.Next; // Marca 3 Consulta
  SQLAgendamento.Edit;
  SQLAgendamentoCLIEA13ID.Value        := SQLClienteCLIEA13ID.Value;
  SQLAgendamentoAGENDDIGIT.AsString    := FormatDateTime('dd/mm/yyyy', Now);
  SQLAgendamentoUSUAICOD.Value         := SQLAtendenteUSUAICOD.Value;
  SQLAgendamentoAGENN3VLRCONSULTA.Value:= 0;
  SQLAgendamentoAGENCSTATUS.Value      := '3';
  SQLAgendamentoAGENICODAGRUP.Value    := Agrup;
  SQLAgendamentoAGENA254OBS.Value      := MemoObs.Text;
  if (not SQLDependente.IsEmpty) and (ComboDependente.KeyValue <> NULL) then
    SQLAgendamentoCLDPICOD.Value := ComboDependente.KeyValue ;
  // Ver como vai funcionar o Recibo
  SQLAgendamentoAGENINRORECIBO.AsString := '';
  //     SQLAgendamentoAGENINRORECIBO.Value := NRORECIBO;
  //     SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);
  if DSSQLAgendamento.State in dsEditModes   then SQLAgendamento.Post;
  SQLAgendamento.Prior;
  SQLAgendamento.Prior;
  if Pergunta('SIM','Deseja Imprimir Lembrete de Marcação Tripla?') then
    begin
      ppLembreteMarcacao.PrinterSetup.PrinterName  := DM.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').asString ;
      ppLembreteMarcacao.Print;
    end;
  PageControlDadosCliente.ActivePage:= TabSheetConsulta;
  EditProcuraTitular.SetFocus;
end;

procedure TFormTelaMarcacaoConsulta.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SQLAgendamento.Close;
  SQLAgendamentoTodos.Close;
  if ComboEspecialidade.KeyValue = null then
    begin
      SQLAgendamento.MacroByName('Especialidade').Value := '0=0';
      SQLAgendamentoTodos.MacroByName('Especialidade').Value := '0=0';
    end
  else
    begin
      SQLAgendamento.MacroByName('Especialidade').Value := 'AGENDACONSULTA.ESPEICOD = ' + SQLEspecialidadeESPEICOD.AsString;
      SQLAgendamentoTodos.MacroByName('Especialidade').Value := 'AGENDACONSULTA.ESPEICOD = ' + SQLEspecialidadeESPEICOD.AsString;
    end;
  if ComboProfissional.KeyValue = null then
    begin
      SQLAgendamento.MacroByName('Profissional').Value  := '0=0';
      SQLAgendamentoTodos.MacroByName('Profissional').Value  := '0=0';
    end
  else
    begin
      SQLAgendamento.MacroByName('Profissional').Value  := 'AGENDACONSULTA.PROFICOD = ' + SQLProfissionalVENDICOD.AsString;
      SQLAgendamentoTodos.MacroByName('Profissional').Value  := 'AGENDACONSULTA.PROFICOD = ' + SQLProfissionalVENDICOD.AsString;
    end;
  if not CKHorariosLivres.Checked then
    SQLAgendamento.MacroByName('Cliente').Value := '0=0'
  else
    SQLAgendamento.MacroByName('Cliente').Value := 'AGENDACONSULTA.CLIEA13ID is null or '+'AGENDACONSULTA.CLIEA13ID = '+''''+'''';
  SQLAgendamento.MacroByName('Data').Value  := 'AGENDACONSULTA.AGENDMARCACAO >= ' + '''' + FormatDateTime('mm/dd/yyyy',StrToDate(EditDataBase.Text)) + '''';
  SQLAgendamentoTodos.MacroByName('Data').Value  := 'AGENDACONSULTA.AGENDMARCACAO >= ' + '''' + FormatDateTime('mm/dd/yyyy',StrToDate(EditDataBase.Text)) + '''';
  SQLAgendamento.Open;
  SQLAgendamentoTodos.Open;
  PageControlDadosCliente.ActivePage:= TabSheetConsulta;
  GridAgendamento.SetFocus;
end;

procedure TFormTelaMarcacaoConsulta.MnCancelaSimplesClick(Sender: TObject);
var CdCli : String;
begin
  inherited;
  IF ComboAtendente.Value = '' then
    begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar o Atendente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      ComboAtendente.SetFocus;
      abort;
    end;
  Case SQLAgendamentoAGENCSTATUS.AsString[1] of
    '1': begin
           if (SQLAgendamentoAGENINRORECIBO.AsString <> '') and (ComboAtendente.KeyValue <> null) then
             if Application.MessageBox('Deseja cancelar e imprimir recibo para está marcação SIMPLES','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
               begin
                 // MovimentaCaixaDebito;
                 //ppReciboCancel.Print;
                 SQLAgendamento.Edit;
                 SQLAgendamentoCLIEA13ID.Value             := '';
                 SQLAgendamentoCLDPICOD.AsString           := '';
                 SQLAgendamentoAGENCSTATUS.Value           := '0';
                 SQLAgendamentoAGENDDIGIT.AsString         := '';
                 SQLAgendamentoUSUAICOD.AsString           := '';
                 SQLAgendamentoAGENINRORECIBO.AsString     := '';
                 SQLAgendamentoAGENN3VLRCONSULTA.AsString  := '';
                 SQLAgendamentoAGENA254OBS.Value           := '';
                 SQLAgendamentoAGENN3VLRPAGO.AsString      := '';
                 SQLAgendamentoAGENDPAGO.AsString          := '';
                 SQLAgendamento.Post;
                 PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                 GridAgendamento.SetFocus;
               end
           else
             begin
               ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                           'Não foi gerado recibo para esta consulta...'+Chr(13)+
                           'Não foi selecionado o atendende...');
               PageControlDadosCliente.ActivePage:= TabSheetConsulta;
               GridAgendamento.SetFocus;
             end;
         end;
    '2': begin
           if (SQLAgendamentoAGENINRORECIBO.AsString <> '') and (ComboAtendente.KeyValue <> null)
             and (SQLAgendamentoAGENN3VLRCONSULTA.Value > 0) then
             if Application.MessageBox('Deseja cancelar e imprimir recibo para está marcação DUPLA','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
               begin
                 // TESTAR SE O CLIENTE É O MESMO NOS OUTROS HORÁRIOS...
                 CdCli := SQLAgendamentoCLIEA13ID.Value;
                 SQLAgendamento.Next;
                 if CdCli <> SQLAgendamentoCLIEA13ID.Value then
                   begin
                     ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                                 'Pacientes diferentes, Chamar CPD...');
                     PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                     GridAgendamento.SetFocus;
                     SQLAgendamento.Prior;
                     abort;
                   end;
                 SQLAgendamento.Prior;
                 // FIM DO TESTE DO CLIENTE
                 // MovimentaCaixaDebito;
                 // ppReciboCancel.Print;
                 SQLAgendamento.Edit;
                 SQLAgendamentoCLIEA13ID.Value            := '';
                 SQLAgendamentoCLDPICOD.AsString          := '';
                 SQLAgendamentoAGENCSTATUS.Value          := '0';
                 SQLAgendamentoAGENDDIGIT.AsString        := '';
                 SQLAgendamentoUSUAICOD.AsString          := '';
                 SQLAgendamentoAGENINRORECIBO.AsString    := '';
                 SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                 SQLAgendamentoAGENA254OBS.Value          := '';
                 SQLAgendamentoAGENN3VLRPAGO.AsString     := '';
                 SQLAgendamentoAGENDPAGO.AsString         := '';
                 SQLAgendamento.Post;
                 SQLAgendamento.Next;
                 SQLAgendamento.Edit;
                 SQLAgendamentoCLIEA13ID.Value            := '';
                 SQLAgendamentoCLDPICOD.AsString          := '';
                 SQLAgendamentoAGENCSTATUS.Value          := '0';
                 SQLAgendamentoAGENDDIGIT.AsString        := '';
                 SQLAgendamentoUSUAICOD.AsString          := '';
                 SQLAgendamentoAGENINRORECIBO.AsString    := '';
                 SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                 SQLAgendamentoAGENA254OBS.Value          := '';
                 SQLAgendamentoAGENN3VLRPAGO.AsString     := '';
                 SQLAgendamentoAGENDPAGO.AsString         := '';
                 SQLAgendamento.Post;
                 SQLAgendamento.Prior;
                 PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                 GridAgendamento.SetFocus;
               end
           else
             begin
               ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                           'Não foi gerado recibo para esta consulta...'+Chr(13)+
                           'Você não está posicionado na primeira consulta...'+Chr(13)+
                           'Não foi selecionado o atendende...');
               PageControlDadosCliente.ActivePage:= TabSheetConsulta;
               GridAgendamento.SetFocus;
             end;
         end;
    '3': begin
           if (SQLAgendamentoAGENINRORECIBO.AsString <> '') and (ComboAtendente.KeyValue <> null)
             and (SQLAgendamentoAGENN3VLRCONSULTA.Value > 0) then
             if Application.MessageBox('Deseja cancelar e imprimir recibo para está marcação TRIPLA','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
               begin
                 // TESTAR SE O CLIENTE É O MESMO NOS OUTROS HORÁRIOS...
                 CdCli := SQLAgendamentoCLIEA13ID.Value;
                 SQLAgendamento.Next;
                 if CdCli <> SQLAgendamentoCLIEA13ID.Value then
                   begin
                     ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                                 'Pacientes diferentes, Chamar CPD...');
                     PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                     GridAgendamento.SetFocus;
                     SQLAgendamento.Prior;
                     abort;
                   end;
                 SQLAgendamento.Next;
                 if CdCli <> SQLAgendamentoCLIEA13ID.Value then
                   begin
                     ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                                 'Pacientes diferentes, Chamar CPD...');
                     PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                     GridAgendamento.SetFocus;
                     SQLAgendamento.Prior;
                     SQLAgendamento.Prior;
                     abort;
                   end;
                 SQLAgendamento.Prior;
                 SQLAgendamento.Prior;
                 // FIM DO TESTE DO CLIENTE
                 // MovimentaCaixaDebito;
                 // ppReciboCancel.Print;
                 SQLAgendamento.Edit;
                 SQLAgendamentoCLIEA13ID.Value            := '';
                 SQLAgendamentoCLDPICOD.AsString          := '';
                 SQLAgendamentoAGENCSTATUS.Value          := '0';
                 SQLAgendamentoAGENDDIGIT.AsString        := '';
                 SQLAgendamentoUSUAICOD.AsString          := '';
                 SQLAgendamentoAGENINRORECIBO.AsString    := '';
                 SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                 SQLAgendamentoAGENA254OBS.Value          := '';
                 SQLAgendamentoAGENN3VLRPAGO.AsString     := '';
                 SQLAgendamentoAGENDPAGO.AsString         := '';
                 SQLAgendamento.Post;
                 SQLAgendamento.Next;
                 SQLAgendamento.Edit;
                 SQLAgendamentoCLIEA13ID.Value            := '';
                 SQLAgendamentoCLDPICOD.AsString          := '';
                 SQLAgendamentoAGENCSTATUS.Value          := '0';
                 SQLAgendamentoAGENDDIGIT.AsString        := '';
                 SQLAgendamentoUSUAICOD.AsString          := '';
                 SQLAgendamentoAGENINRORECIBO.AsString    := '';
                 SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                 SQLAgendamentoAGENA254OBS.Value          := '';
                 SQLAgendamentoAGENN3VLRPAGO.AsString     := '';
                 SQLAgendamentoAGENDPAGO.AsString         := '';
                 SQLAgendamento.Post;
                 SQLAgendamento.Next;
                 SQLAgendamento.Edit;
                 SQLAgendamentoCLIEA13ID.Value            := '';
                 SQLAgendamentoCLDPICOD.AsString          := '';
                 SQLAgendamentoAGENCSTATUS.Value          := '0';
                 SQLAgendamentoAGENDDIGIT.AsString        := '';
                 SQLAgendamentoUSUAICOD.AsString          := '';
                 SQLAgendamentoAGENINRORECIBO.AsString    := '';
                 SQLAgendamentoAGENN3VLRCONSULTA.AsString := '';
                 SQLAgendamentoAGENA254OBS.Value          := '';
                 SQLAgendamentoAGENN3VLRPAGO.AsString     := '';
                 SQLAgendamentoAGENDPAGO.AsString         := '';
                 SQLAgendamento.Post;
                 SQLAgendamento.Prior;
                 SQLAgendamento.Prior;
                 PageControlDadosCliente.ActivePage:= TabSheetConsulta;
                 GridAgendamento.SetFocus;
               end
           else
             begin
               ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                           'Não foi gerado recibo para esta consulta...'+Chr(13)+
                           'Você não está posicionado na primeira consulta...'+Chr(13)+
                           'Não foi selecionado o atendende...');
               PageControlDadosCliente.ActivePage:= TabSheetConsulta;
               GridAgendamento.SetFocus;
             end;
         end;
  End;
  PageControlDadosCliente.ActivePage:= TabSheetConsulta;
  GridAgendamento.SetFocus;
end;

procedure TFormTelaMarcacaoConsulta.GridAgendamentoDrawDataCell(
  Sender: TObject; const Rect: TRect; Field: TField;
  State: TGridDrawState);
begin
  inherited;
  if SQLAgendamentoCLIEA13ID.Value <> '' then
    GridAgendamento.Canvas.Brush.Color := ClBlue
  else
    GridAgendamento.Canvas.Brush.Color := CLBtnFace;
  GridAgendamento.Canvas.FillRect(Rect);
  GridAgendamento.DefaultDataCellDraw(Rect,Field,State);
end;

procedure TFormTelaMarcacaoConsulta.MnReimprimirReciboClick(
  Sender: TObject);
begin
  inherited;
  If Application.MessageBox('Deseja Reimprimir o Recibo','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
      if SQLAgendamentoAGENINRORECIBO.AsString<>'' then
        ppRecibo.Print
      else
        ShowMessage('Reimpressão Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                    'Ainda não foi gerado recibo para esta consulta...');
  PageControlDadosCliente.ActivePage:= TabSheetConsulta;
  GridAgendamento.SetFocus;
end;

procedure TFormTelaMarcacaoConsulta.ppReciboBeforePrint(Sender: TObject);
begin
  inherited;
  ValorExtenso(VExt,SQLAgendamentoAGENN3VLRPAGO.AsFloat,'', '', 02, 200, '*',3);
  Extenso.Caption := Vext[0];
  DataImpressao.Caption := 'Porto Alegre  '+FormatDateTime('dddddd',Now);
end;

procedure TFormTelaMarcacaoConsulta.ExtratodoPaciente1Click(
  Sender: TObject);
begin
  inherited;
  SQLAgendamento.Close;
  if not SQLCliente.IsEmpty then
    begin
      SQLAgendamentoConsulta.Close;
      SQLAgendamentoConsulta.MacroByName('Cliente').Value := 'CLIEA13ID = '+''''+SQLClienteCLIEA13ID.Value+'''';
      if ComboDependente.KeyValue <> null then
        SQLAgendamentoConsulta.MacroByName('Dependente').Value := 'CLDPICOD = ' + ComboDependente.KeyValue
      else
        SQLAgendamentoConsulta.MacroByName('Dependente').Value := 'CLDPICOD IS NULL';
      SQLAgendamentoConsulta.MacroByName('DataBase').Value     := 'AGENDMARCACAO >= ' + '''' + FormatDateTime('mm/dd/yyyy 00:00',now)+ '''';
      SQLAgendamentoConsulta.MacroByName('Status').Value       := 'AgencStatus > 0 and AgencStatus  < 4';
      SQLAgendamentoConsulta.MacroByName('Ordem').Value        := 'AGENDMARCACAO';
      SQLAgendamentoConsulta.Open;
      ppExtrato.print;
      SQLAgendamentoConsulta.Close;
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
    end;
end;

procedure TFormTelaMarcacaoConsulta.SQLAgendamentoCalcFields(
  DataSet: TDataSet);
var
  Dia : String;
  NomeDia : Word;
begin
  inherited;
  SQLAgendamentoPacienteAgendado.Value := SQLAgendamentoClienteNome.Value;
  if SQLAgendamentoDependenteNome.AsString <> '' then
    SQLAgendamentoPacienteAgendado.Value := SQLAgendamentoDependenteNome.Value;
  Dia := FormatDateTime('dddd',SQLAgendamentoAGENDMARCACAO.Value);
  NomeDia := DayOfWeek(SQLAgendamentoAGENDMARCACAO.AsDateTime);
  SQLAgendamentoDiaMarcacao.Value := ShortDayNames[NomeDia];
{  if (Dia = 'Segunda-Feira') or (Dia = 'segunda-feira') then
    SQLAgendamentoDiaMarcacao.Value := 'Seg';
  if (Dia = 'Terça-Feira') or (Dia = 'terça-feira') then
    SQLAgendamentoDiaMarcacao.Value := 'Ter';
  if (Dia = 'Quarta-Feira') or (Dia = 'quarta-feira') then
    SQLAgendamentoDiaMarcacao.Value := 'Qua';
  if (Dia = 'Quinta-Feira') or (Dia = 'quinta-feira') then
    SQLAgendamentoDiaMarcacao.Value := 'Qui';
  if (Dia = 'Sexta-Feira') or (Dia = 'sexta-feira') then
    SQLAgendamentoDiaMarcacao.Value := 'Sex';
  if (Dia = 'Sabado') or (Dia = 'sabado') then
    SQLAgendamentoDiaMarcacao.Value := 'Sab';
  if (Dia = 'Domingo') or (Dia = 'domingo') then
    SQLAgendamentoDiaMarcacao.Value := 'Dom';}
end;

procedure TFormTelaMarcacaoConsulta.ppReciboCancelBeforePrint(
  Sender: TObject);
begin
  inherited;
  //ValorExtenso(VExt,SQLAgendaCancelAGECN3VLRPAGO.AsFloat,'', '', 02, 200, '*',3);
  //ExtensoCanc.Caption := Vext[0];
  //DataImpressaoCanc.Caption := 'Porto Alegre  '+FormatDateTime('dddddd',SQLAgendaCancelAGECDCANC.Value);
end;

procedure TFormTelaMarcacaoConsulta.BtnAtendimentoClick(Sender: TObject);
begin
  inherited;
  IF ComboAtendente.Value = '' then
    begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar o Atendente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      ComboAtendente.SetFocus;
      abort;
    end;
  IF FormatDateTime('dd/mm/yyyy', SQLAgendamentoAGENDMARCACAO.Value)<>FormatDateTime('dd/mm/yyyy', Now) THEN
    Begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você só pode trocar para ATENDIDO consultas agendadas para hoje...');
      abort;
    End;
  Case SQLAgendamentoAGENCSTATUS.AsString[1] of
  '1': begin
         if Application.MessageBox('Deseja alterar este horário para ATENDIDO?','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
           begin
             if (SQLAgendamentoAGENN3VLRCONSULTA.Value>0) and (SQLAgendamentoAGENINRORECIBO.AsString = '') then
               begin
                  // ver como vai funcionar o Recibo Numero
                  SQLAgendamento.Edit;
                  //SQLAgendamentoAGENINRORECIBO.Value := TblConfigGeralCFGGIULTNRORECIBO.Value;
                  SQLAgendamentoAGENN3VLRPAGO.Value  := SQLAgendamentoAGENN3VLRCONSULTA.Value;
                  SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);
                  SQLAgendamentoAGENCSTATUS.Value    := '4';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  //MovimentaCaixaCredito; // gera mov no caixa
                  //ppRecibo.Print;
               end;
             if SQLAgendamentoAGENINRORECIBO.AsString <> '' then
               begin
                  SQLAgendamento.Edit;
                  SQLAgendamentoAGENCSTATUS.Value    := '4';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
               end;
           end;
       end;
  '2': begin
         if Application.MessageBox('Deseja alterar este horário para ATENDIDO?','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
           begin
             if (SQLAgendamentoAGENN3VLRCONSULTA.Value>0) and (SQLAgendamentoAGENINRORECIBO.AsString = '') then
               begin
                  // Ver como vai funcionar o Recibo
                  SQLAgendamento.Edit;
                  //SQLAgendamentoAGENINRORECIBO.Value := TblConfigGeralCFGGIULTNRORECIBO.Value;
                  SQLAgendamentoAGENN3VLRPAGO.Value  := SQLAgendamentoAGENN3VLRCONSULTA.Value;
                  SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);
                  SQLAgendamentoAGENCSTATUS.Value    := '5';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  //NRORECIBO := SQLAgendamentoAGENINRORECIBO.Value;
                  SQLAgendamento.Next;
                  SQLAgendamento.Edit;
                  //SQLAgendamentoAGENINRORECIBO.Value := NRORECIBO;
                  SQLAgendamentoAGENCSTATUS.Value    := '5';
                  SQLAgendamento.Post;
                  SQLAgendamento.Prior;
                  //MovimentaCaixaCredito; // gera mov no caixa
                  //ppRecibo.Print;
               end;
             if SQLAgendamentoAGENINRORECIBO.AsString <> '' then
               begin
                  SQLAgendamento.Edit;
                  SQLAgendamentoAGENCSTATUS.Value    := '5';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  SQLAgendamento.Next;
                  SQLAgendamento.Edit;
                  SQLAgendamentoAGENCSTATUS.Value    := '5';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  SQLAgendamento.Prior;
               end;
           end;
       end;
  '3': begin
         if Application.MessageBox('Deseja alterar este horário para ATENDIDO?','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
           begin
             if (SQLAgendamentoAGENN3VLRCONSULTA.Value>0) and (SQLAgendamentoAGENINRORECIBO.AsString = '') then
               begin
                  // ver como vai funcionar o Recibo
                  SQLAgendamento.Edit;
                  //SQLAgendamentoAGENINRORECIBO.Value := TblConfigGeralCFGGIULTNRORECIBO.Value;
                  SQLAgendamentoAGENN3VLRPAGO.Value  := SQLAgendamentoAGENN3VLRCONSULTA.Value;
                  SQLAgendamentoAGENDPAGO.AsString   := FormatDateTime('dd/mm/yyyy', Now);
                  SQLAgendamentoAGENCSTATUS.Value    := '6';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  //NRORECIBO := SQLAgendamentoAGENINRORECIBO.Value;
                  SQLAgendamento.Next;
                  SQLAgendamento.Edit;
                  //SQLAgendamentoAGENINRORECIBO.Value := NRORECIBO;
                  SQLAgendamentoAGENCSTATUS.Value    := '6';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  //NRORECIBO := SQLAgendamentoAGENINRORECIBO.Value;
                  SQLAgendamento.Next;
                  SQLAgendamento.Edit;
                  //SQLAgendamentoAGENINRORECIBO.Value := NRORECIBO;
                  SQLAgendamentoAGENCSTATUS.Value    := '6';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  SQLAgendamento.Prior;
                  SQLAgendamento.Prior;
                  //MovimentaCaixaCredito; // gera mov no caixa
                  //ppRecibo.Print;
               end;
             if SQLAgendamentoAGENINRORECIBO.AsString <> '' then
               begin
                  SQLAgendamento.Edit;
                  SQLAgendamentoAGENCSTATUS.Value    := '6';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  SQLAgendamento.Next;
                  SQLAgendamento.Edit;
                  SQLAgendamentoAGENCSTATUS.Value    := '6';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  SQLAgendamento.Next;
                  SQLAgendamento.Edit;
                  SQLAgendamentoAGENCSTATUS.Value    := '6';
                  SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                  SQLAgendamento.Post;
                  SQLAgendamento.Prior;
                  SQLAgendamento.Prior;
               end;
           end;
       end;
  End;
end;

procedure TFormTelaMarcacaoConsulta.ppStatusPrint(Sender: TObject);
begin
  inherited;
  Case SQLAgendamentoConsultaAGENCSTATUS.Value[1] of
    '1': ppStatus.Text := 'Simples';
    '2': ppStatus.Text := 'Dupla'  ;
    '3': ppStatus.Text := 'Tripla' ;
  End;
end;

procedure TFormTelaMarcacaoConsulta.MnHistoricoPacienteClick(
  Sender: TObject);
begin
  inherited;
  SQLAgendamento.Close;
  if not SQLCliente.IsEmpty then
    begin
      SQLAgendamentoConsulta.Close;
      SQLAgendamentoConsulta.MacroByName('Cliente').Value := 'CLIEA13ID = '+''''+SQLClienteCLIEA13ID.Value+'''';
      if ComboDependente.KeyValue <> null then
        SQLAgendamentoConsulta.MacroByName('Dependente').Value := 'CLDPICOD = ' + ComboDependente.KeyValue
      else
        SQLAgendamentoConsulta.MacroByName('Dependente').Value := 'CLDPICOD IS NULL';
      SQLAgendamentoConsulta.MacroByName('DataBase').Value     := 'AGENDMARCACAO <= ' + '''' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(EditDataBase.Text))+ '''';
      SQLAgendamentoConsulta.MacroByName('Status').Value       := 'AgencStatus > 0';
      SQLAgendamentoConsulta.MacroByName('Ordem').Value        := 'AGENDMARCACAO';
      SQLAgendamentoConsulta.Open;
      ppHistConsulta.print;
      SQLAgendamentoConsulta.Close;
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      EditProcuraTitular.SetFocus;
    end;
end;

procedure TFormTelaMarcacaoConsulta.ppStatusHistConsultaPrint(
  Sender: TObject);
begin
  inherited;
  Case SQLAgendamentoConsultaAGENCSTATUS.Value[1] of
    '1': ppStatusHistConsulta.Text := 'Simples' ;
    '2': ppStatusHistConsulta.Text := 'Dupla' ;
    '3': ppStatusHistConsulta.Text := 'Tripla' ;
    '4': ppStatusHistConsulta.Text := 'Simples(Atendido)';
    '5': ppStatusHistConsulta.Text := 'Dupla(Atendido)';
    '6': ppStatusHistConsulta.Text := 'Tripla(Atendido)';
  End;
end;

procedure TFormTelaMarcacaoConsulta.ppExtratoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppExtrato.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppExtrato.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaMarcacaoConsulta.ppHistConsultaPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppHistConsulta.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppHistConsulta.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaMarcacaoConsulta.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  if not BtnSimples.Visible then ppLb12Andar.Visible := True;
end;

procedure TFormTelaMarcacaoConsulta.ComboEspecialidadeExit(
  Sender: TObject);
begin
  inherited;
  if ComboEspecialidade.Value <> '' then
    begin
      SQLProfissional.Close;
      SQLProfissional.ParamByName('Especialidade').Value:=ComboEspecialidade.Value;
      SQLProfissional.Open;
      if SQLProfissional.IsEmpty then
        begin
          ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                      'Não existe nenhum profissional cadastrado para esta especialidade...');
          ComboEspecialidade.SetFocus;
        end;
    end;
end;

procedure TFormTelaMarcacaoConsulta.BtnGravarTitularClick(Sender: TObject);
begin
  inherited;
  if (DSSQLCliente.State in DSEditModes) then SQLCliente.Post;
end;

procedure TFormTelaMarcacaoConsulta.BtnCancelTitularClick(Sender: TObject);
begin
  inherited;
  if (DSSQLCliente.State in DSEditModes) then SQLCliente.Cancel;
end;

procedure TFormTelaMarcacaoConsulta.BtnGravarDependenteClick(
  Sender: TObject);
begin
  inherited;
  if (DSSQLDependente.State in DSEditModes) then SQLDependente.Post;
end;

procedure TFormTelaMarcacaoConsulta.BtnCancelDependenteClick(
  Sender: TObject);
begin
  inherited;
  if (DSSQLDependente.State in DSEditModes) then SQLDependente.Cancel;
end;

procedure TFormTelaMarcacaoConsulta.BtnProximoRegistroClick(
  Sender: TObject);
begin
  inherited;
  SQLDependente.Next;
end;

procedure TFormTelaMarcacaoConsulta.BtnRegistroAnteriorClick(
  Sender: TObject);
begin
  inherited;
  SQLDependente.Prior;
end;

procedure TFormTelaMarcacaoConsulta.ComboDependenteExit(Sender: TObject);
begin
  inherited;
  if ComboDependente.KeyValue <> null then
    begin
      if SQLDependenteCLDPCAUTORIZADO.Value <> 'S' then
        begin
          if Application.MessageBox('Este Dependente não está autorizado, Continua mesmo assim?','Informação!',Mb_YesNo+Mb_SystemModal+MB_ICONQUESTION)= IdNo then
            begin
              PageControlDadosCliente.ActivePage:= TabSheetConsulta;
              EditProcuraTitular.SetFocus;
              abort;
            end
          else
            begin
              PageControlDadosCliente.ActivePage:= TabSheetConsulta;
              ComboDependente.SetFocus;
            end;
        end;
    end;
end;

procedure TFormTelaMarcacaoConsulta.BtNaoAtendidoClick(Sender: TObject);
begin
  inherited;
  IF ComboAtendente.Value = '' then
    begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você deve informar o Atendente...');
      PageControlDadosCliente.ActivePage:= TabSheetConsulta;
      ComboAtendente.SetFocus;
      abort;
    end;
  IF FormatDateTime('dd/mm/yyyy', SQLAgendamentoAGENDMARCACAO.Value)<>FormatDateTime('dd/mm/yyyy', Now) THEN
    Begin
      ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                  'Você só pode trocar para NÃO ATENDIDO consultas agendadas para hoje...');
      abort;
    End;
  Case SQLAgendamentoAGENCSTATUS.AsString[1] of
  '1': begin
         if Application.MessageBox('Realmente deseja alterar este horário para Não Atendido?','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
           begin
             DM.AceitaMotivoNaoAtend := False;
             Application.CreateForm(TFormTelaMotivoNaoAtend,FormTelaMotivoNaoAtend);
             FormTelaMotivoNaoAtend.ShowModal;
             if DM.AceitaMotivoNaoAtend then
               begin
                 SQLAgendamento.Edit;
                 SQLAgendamentoAGENCSTATUS.Value    := '7';
                 SQLAgendamentoMONAICOD.AsString    := FormTelaMotivoNaoAtend.ComboMotivoNaoAtendimento.KeyValue;
                 SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                 SQLAgendamento.Post;
               end
             else
               begin
                 ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                             'Não foi escolhido nenhum motivo de Não Atendimento...');
                 GridAgendamento.SetFocus;
                 abort;
               end;
           end;
         GridAgendamento.SetFocus;
       end;
  '2': begin
         if Application.MessageBox('Realmente deseja alterar este horário para Não Atendido?','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
           begin
             DM.AceitaMotivoNaoAtend := False;
             Application.CreateForm(TFormTelaMotivoNaoAtend,FormTelaMotivoNaoAtend);
             FormTelaMotivoNaoAtend.ShowModal;
             if DM.AceitaMotivoNaoAtend then
               begin
                 SQLAgendamento.Edit;
                 SQLAgendamentoAGENCSTATUS.Value    := '8';
                 SQLAgendamentoMONAICOD.AsString    := FormTelaMotivoNaoAtend.ComboMotivoNaoAtendimento.KeyValue;
                 SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                 SQLAgendamento.Post;
                 SQLAgendamento.Next;
                 SQLAgendamento.Edit;
                 SQLAgendamentoAGENCSTATUS.Value    := '8';
                 SQLAgendamentoMONAICOD.AsString    := FormTelaMotivoNaoAtend.ComboMotivoNaoAtendimento.KeyValue;
                 SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                 SQLAgendamento.Post;
                 SQLAgendamento.Prior;
               end
             else
               begin
                 ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                             'Não foi escolhido nenhum motivo de Não Atendimento...');
                 GridAgendamento.SetFocus;
                 abort;
               end;
           end;
         GridAgendamento.SetFocus;
       end;
  '3': begin
         if Application.MessageBox('Realmente deseja alterar este horário para Não Atendido?','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idyes then
           begin
             DM.AceitaMotivoNaoAtend := False;
             Application.CreateForm(TFormTelaMotivoNaoAtend,FormTelaMotivoNaoAtend);
             FormTelaMotivoNaoAtend.ShowModal;
             if DM.AceitaMotivoNaoAtend then
               begin
                 SQLAgendamento.Edit;
                 SQLAgendamentoAGENCSTATUS.Value    := '9';
                 SQLAgendamentoMONAICOD.AsString    := FormTelaMotivoNaoAtend.ComboMotivoNaoAtendimento.KeyValue;
                 SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                 SQLAgendamento.Post;
                 SQLAgendamento.Next;
                 SQLAgendamento.Edit;
                 SQLAgendamentoAGENCSTATUS.Value    := '9';
                 SQLAgendamentoMONAICOD.AsString    := FormTelaMotivoNaoAtend.ComboMotivoNaoAtendimento.KeyValue;
                 SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                 SQLAgendamento.Post;
                 SQLAgendamento.Next;
                 SQLAgendamento.Edit;
                 SQLAgendamentoAGENCSTATUS.Value    := '9';
                 SQLAgendamentoMONAICOD.AsString    := FormTelaMotivoNaoAtend.ComboMotivoNaoAtendimento.KeyValue;
                 SQLAgendamentoAGENIUSUATEND.Value  := SQLAtendenteUSUAICOD.Value;
                 SQLAgendamento.Post;
                 SQLAgendamento.Prior;
                 SQLAgendamento.Prior;
               end
             else
               begin
                 ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                             'Não foi escolhido nenhum motivo de Não Atendimento...');
                 GridAgendamento.SetFocus;
                 abort;
               end;
           end;
         GridAgendamento.SetFocus;
       end;
  end;
end;

procedure TFormTelaMarcacaoConsulta.ppTitleBandLembreteBeforePrint(
  Sender: TObject);
begin
  inherited;
  ppEmpresaNomeLembrete.Caption := EmpresaAtualNome;
  ppFoneEmpresaLembrete.Caption := DM.SQLLocate('Empresa','EMPRICOD','EMPRA20FONE',EmpresaPadrao);
end;

procedure TFormTelaMarcacaoConsulta.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppLbEmpresa.caption   := EmpresaAtualNome;
  ppEmpresaFone.Caption := DM.SQLLocate('Empresa','EMPRICOD','EMPRA20FONE',EmpresaPadrao);
end;

procedure TFormTelaMarcacaoConsulta.ppTitleBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppHistEmpresa.caption     := EmpresaAtualNome;
  ppHistEmpresaFone.Caption := DM.SQLLocate('Empresa','EMPRICOD','EMPRA20FONE',EmpresaPadrao);
end;

end.
