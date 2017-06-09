unit CadastroNotaFiscalCartaCorrecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, UnitLibrary, FMTBcd, DBClient, Provider, SqlExpr, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel, pcnConversao, ACBrBase,
  pcnRetConsReciNFe, ACBrDFe, ACBrNFe, ACBrNFeDANFEClass, ACBrNFeDANFeRLClass,
  ACBrMail, ToolEdit, RXDBCtrl;

type
  TFormCadastroNotaFiscalCartaCorrecao = class(TFormCadastroTEMPLATE)
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateCCEINSEQEVENTO: TIntegerField;
    SQLTemplateCCETXCORRECAO: TBlobField;
    SQLTemplateCCEA1CENVIADO: TStringField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBMemo2: TDBMemo;
    EnviarCarta: TMenuItem;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrMail1: TACBrMail;
    ImrprimirCartaCorrecao: TMenuItem;
    Button4: TRxSpeedButton;
    Label4: TLabel;
    SQLTemplateCCEA5CODRETORNO: TStringField;
    DBEdit28: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBDateEdit;
    SQLTemplateCCEDEMISSAO: TDateTimeField;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
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
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    SQLEmpresaEMPRCLUCROREAL: TStringField;
    SQLEmpresaEMPRN2VLRFUNDOPROMO: TBCDField;
    SQLEmpresaEMPRA15REGJUNTA: TStringField;
    SQLEmpresaEMPRIUFCODFED: TIntegerField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    SQLEmpresaEMPRA100CERTIFSERIE: TStringField;
    SQLEmpresaEMPRA35CERTIFSENHA: TStringField;
    SQLEmpresaEMPRIFORMAEMISDANFE: TIntegerField;
    SQLEmpresaEMPRIFORMAEMISNFE: TIntegerField;
    SQLEmpresaEMPRA100CAMINHOLOGO: TStringField;
    SQLEmpresaEMPRA100CAMINHOXML: TStringField;
    SQLEmpresaEMPRA100CAMINHODANFES: TStringField;
    SQLEmpresaEMPRA2WSUF: TStringField;
    SQLEmpresaEMPRIWSAMBIENTE: TIntegerField;
    SQLEmpresaEMPRA1VISUALIZAMSG: TStringField;
    SQLEmpresaEMPRA100PROXYHOST: TStringField;
    SQLEmpresaEMPRIPROXYPORTA: TIntegerField;
    SQLEmpresaEMPRA50PROXYUSUARIO: TStringField;
    SQLEmpresaEMPRA50PROXYSENHA: TStringField;
    SQLEmpresaEMPRA50EMAILHOST: TStringField;
    SQLEmpresaEMPRIEMAILPORTA: TIntegerField;
    SQLEmpresaEMPRA50EMAILSENHA: TStringField;
    SQLEmpresaEMPRA1SSL: TStringField;
    SQLEmpresaEMPRA60EMAILCOPIA: TStringField;
    SQLEmpresaEMPRA1TSL: TStringField;
    SQLEmpresaEMPRA75EMAILUSUARIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure EnviarCartaClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImrprimirCartaCorrecaoClick(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Inicia_NFe;

  end;

var
  FormCadastroNotaFiscalCartaCorrecao: TFormCadastroNotaFiscalCartaCorrecao;

implementation

uses pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT, pcnNFe,
  StatusNFe, pcnEventoNFe;

{$R *.dfm}

procedure TFormCadastroNotaFiscalCartaCorrecao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CCE';
end;

procedure TFormCadastroNotaFiscalCartaCorrecao.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateNOFIA13ID.Value      := DSMasterTemplate.DataSet.Fieldbyname('NOFIA13ID').Value;
end;

procedure TFormCadastroNotaFiscalCartaCorrecao.Inicia_NFe();
Var
  Ok : Boolean;
begin
  {$IFDEF ACBrNFeOpenSSL}
    ACBrNFe1.Configuracoes.Certificados.Certificado  := sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFe1.Configuracoes.Certificados.Senha        := sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ELSE}
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie  := sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
  {$ENDIF}

  ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(sqlEmpresa.FieldByName('EMPRIFORMAEMISNFE').AsInteger+1));

  ACBrNFe1.Configuracoes.Arquivos.PathSalvar    := sqlEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathNFe       := sqlEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathEvento    := sqlEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathInu       := sqlEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;

  ACBrNFe1.Configuracoes.WebServices.UF         := sqlEmpresa.FieldByName('EMPRA2WSUF').AsString;
  ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(sqlEmpresa.FieldByName('EMPRIWSAMBIENTE').AsInteger+1));
  ACBrNFe1.Configuracoes.WebServices.Visualizar := sqlEmpresa.FieldByName('EMPRA1VISUALIZAMSG').AsString = 'S';
  ACBrNFe1.Configuracoes.WebServices.ProxyHost  := sqlEmpresa.FieldByName('EMPRA100PROXYHOST').AsString;

  if sqlEmpresa.FieldByName('EMPRIPROXYPORTA').AsInteger > 0 then
    ACBrNFe1.Configuracoes.WebServices.ProxyPort  := IntToStr(sqlEmpresa.FieldByName('EMPRIPROXYPORTA').AsInteger);

  ACBrNFe1.Configuracoes.WebServices.ProxyUser  := sqlEmpresa.FieldByName('EMPRA50PROXYUSUARIO').AsString;
  ACBrNFe1.Configuracoes.WebServices.ProxyPass  := sqlEmpresa.FieldByName('EMPRA50PROXYSENHA').AsString;

  ACBrNFe1.DANFE.PathPDF    := sqlEmpresa.FieldByName('EMPRA100CAMINHODANFES').AsString;
  ACBrNFe1.DANFE.Logo       := sqlEmpresa.FieldByName('EMPRA100CAMINHOLOGO').AsString;
  ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(sqlEmpresa.FieldByName('EMPRIFORMAEMISDANFE').AsInteger+1));
end;

procedure TFormCadastroNotaFiscalCartaCorrecao.EnviarCartaClick(
  Sender: TObject);
var  Point: TBookmark;
    Comando: String;
    Cnpj:String;
    Chave, idLote, nSeqEvento, Correcao, sXML : string;
begin
  inherited;
  CNPJ  := SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',DSMasterTemplate.DataSet.Fieldbyname('EMPRICOD').AsString);
  Chave := DSMasterTemplate.DataSet.FieldByName('NOFIA44CHAVEACESSO').AsString;
  nSeqEvento := SQLTemplateCCEINSEQEVENTO.AsString;
  Correcao   := SQLTemplateCCETXCORRECAO.AsString;
  idLote     := FormatDateTime('yymmddhhmm', NOW);
  sXML       := Chave+'-nfe.xml';

  if not Pergunta('SIM','Confirma o envio da solicitação de correção desta NF-e?'+#13+#10+#13+#10+
                  'CNPJ Emitente: '+ CNPJ+#13+#10+
                  'Série: '+DSMasterTemplate.DataSet.FieldByName('SERIA5COD').asstring+#13+#10+
                  'Nota Fiscal: '+ DSMasterTemplate.DataSet.FieldByName('NOFIINUMERO').asstring ) then Exit;

  {Pega Configs Iniciais}
  Inicia_NFe;

  {Carta Correção com ACBR}
  ACBrNFe1.EventoNFe.Evento.Clear;
  with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe := Chave;
      infEvento.CNPJ   := CNPJ;
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := StrToInt(nSeqEvento);
      infEvento.detEvento.xCorrecao := Correcao;
    end;

  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  {Grava Retorno da Sefaz}
  DSMasterTemplate.DataSet.Edit;
  DSMasterTemplate.DataSet.FieldByName('NOFIA5CODRETORNO').Value   := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
  DSMasterTemplate.DataSet.FieldByName('NOFITRETORNO').Value       := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
  DSMasterTemplate.DataSet.FieldByName('NOFIA15PROTOCOLO').Value   := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
  DSMasterTemplate.DataSet.post;

  SQLTemplate.Edit;
  SQLTemplateCCEA1CENVIADO.Value       := 'S';
  SQLTemplateCCEDEMISSAO.Value         := Now;
  SQLTemplateCCEA5CODRETORNO.AsVariant := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
  SQLTemplate.Post;

  ImrprimirCartaCorrecao.Click;

end;

procedure TFormCadastroNotaFiscalCartaCorrecao.Button3Click(
  Sender: TObject);
begin
  inherited;
  EnviarCarta.Click;
end;

procedure TFormCadastroNotaFiscalCartaCorrecao.FormShow(Sender: TObject);
begin
  inherited;
  sqlEmpresa.Close;
  sqlEmpresa.MacroByName('MEmpresa').Value := 'EMPRICOD='+DSMasterTemplate.DataSet.FieldByName('EMPRICOD').AsString;
  sqlEmpresa.Open;
end;

procedure TFormCadastroNotaFiscalCartaCorrecao.ImrprimirCartaCorrecaoClick(
  Sender: TObject);
var PathPastaMensal_nfe , PathPastaMensal_cce : string;
begin
  inherited;
  {Pega Configs Iniciais}
  Inicia_NFe;

  PathPastaMensal_nfe := FormatDateTime('yyyymm',DSMasterTemplate.DataSet.FieldByName('NOFIDEMIS').Value);
  PathPastaMensal_cce := FormatDateTime('yyyymm',SQLTemplate.FieldByName('CCEDEMISSAO').Value);

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(ACBrNFe1.Configuracoes.Arquivos.PathSalvar +'\'+PathPastaMensal_nfe+'\'+
                                     DSMasterTemplate.DataSet.FieldByName('NOFIA44CHAVEACESSO').AsString+'-NFe.xml');

  ACBrNFe1.EventoNFe.Evento.Clear;
  ACBrNFe1.EventoNFe.LerXML(ACBrNFe1.Configuracoes.Arquivos.PathSalvar +'\'+PathPastaMensal_cce+'\110110'+
                            DSMasterTemplate.DataSet.FieldByName('NOFIA44CHAVEACESSO').AsString+'01-procEventoNFe.xml') ;
  ACBrNFe1.ImprimirEvento;
end;

procedure TFormCadastroNotaFiscalCartaCorrecao.ACBrNFe1StatusChange(
  Sender: TObject);
begin
  inherited;
  try frmStatusNFe.Close; except Application.ProcessMessages;  end;

  case ACBrNFe1.Status of
    stIdle :
      begin
        Application.ProcessMessages;
      end;
    stNFeStatusServico :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Verificando Status do servico...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeRecepcao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando dados da NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeRetRecepcao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Recebendo dados da NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeConsulta :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeCancelamento :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando cancelamento de NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeInutilizacao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando pedido de Inutilização...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeRecibo :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando Recibo de Lote...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeCadastro :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando Cadastro...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeEmail :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando Email...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeCCe :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando Carta de Correção...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeEvento :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando Evento...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
  end;
  Application.ProcessMessages;
end;

procedure TFormCadastroNotaFiscalCartaCorrecao.Button4Click(
  Sender: TObject);
begin
  inherited;
  ImrprimirCartaCorrecao.Click;
end;

end.
