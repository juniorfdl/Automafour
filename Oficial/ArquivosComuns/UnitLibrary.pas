unit UnitLibrary;

interface

uses Variants, MemTable, Menus, Stdctrls, Classes, Windows, Forms, WinINet,
     RxQuery, DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls,
     Registry, CommDlg, Messages, Graphics,IniFiles, FileCtrl, Math, DateUtils;
type
  TInfoRetornoUser = record
  CampoRetorno : string;
  CodUsuarioAutenticado  : integer;
  NomeUsuarioAutenticado : string;
  ModalResult            : TModalResult;
end;
type
  TinfoRetornoUltCompra = record
  UltimaCompra          : String;
  OrigemCompra          : String;
  Documento             : String;
end;
const
  ScreenWidth : Longint  = 800 ;
  ScreenHeight : Longint = 600 ;
var
  Enter,Esc,F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12 : Word;
  WBookmark         : TBookmark ;
  VarCriaNovaNota,
  DelContrLista,
  MoviCaixConcluido,
  RetornoConsulta,
  ConsultandoPlano,
  AtualizarPedidos,
  EnviouNumerariosECF, ProcuraProdutoPelaRef08Char, Gravou, ImpValeTroco, CpfOK, CodRapido, ImpCupomAutomatico, PDV_OffLine : boolean;
  UltimoCodigo,
  NumerarioAtual,
  TerminalAtual,
  TerminalAnterior,
  NumerarioVista,
  NumerarioPrazo,
  PlanoVenda,
  TermPVImp,
  VendedorVenda,
  CodPVImp,
  ConvenioVenda,
  TipoVenda,
  CodUsuarioAutorizouOperacao,
  NroOrdemCompraConvenio,
  CodProxCntRecTemp, CodProxCupomTemp, CodProxMovCxTemp,
  NumItem, ProxCod, CodNextPreVenda,
  NroViasTEF, vCLIEINDIACHQSJURO, CodMesa, CodConta, ProdutoAgrupGrade_MovDiv, VelocECFAtual : Integer  ;
  CodiProduto,
  CodiCli,
  EstadoFechVendaAnt,
  CodigoProduto,
  CodigoBarrasProduto,
  ClienteAtual,
  TerminalModo, OrigemVenda,
  EmpresaPadrao,
  EmpresaPadraoPedidosCompra,
  ECFAtual,
  Ecf_CNFV,
  ImpNaoFiscalAtual,
  PortaImpNaoFiscalAtual,
  LeitorCodigoBarras,
  PortaLeitorCodigoBarras,
  TecladoReduzidoModelo,
  NroCupomFiscal,
  PedidosImportados,
  Ecf_CNFNV,
  Ecf_ID,
  PortaECFAtual,
  TributoTaxaCrediario,
  CamImprMatr,
  NomeLogo,
  TipoPadraoNumerarioAtual,TipoPadrao,
  Versao,
  OrigemPedidoFechamento,
  BotDef,
  EtiquetaProduto,
  EtiquetaPedidoCompra,
  EtiquetaNotaCompra,
  EtiquetaPedidoVenda,
  EtiquetaNotaVenda,
  EtiquetaMovDiversos,
  TipoDescItem,
  TipoDescFech,
  EmpresaAtualNome,
  TerminalAtualNome,
  UsuarioAtualNome,
  UsuarioAutorizouOperacao,
  NumerarioVistaDescr,
  DescrLivreProd, Densidade, Medida, Espessura, Tecido,
  ClienteVenda,
  NomeClienteVenda,
  ClienteDependente,
  ClienteDependenteNome,
  EnderecoClienteVenda,
  CidadeClienteVenda,
  FoneClienteVenda,
  BairroClienteVenda,
  DocumentoClienteVenda,
  CPFCGCClienteVenda,
  PlacaCliente,
  KmCliente,
  NomeVendedorVenda,
  ObsCupom,
  EmailCliente,
  ClienteRecto,
  EstadoFechVenda,
  ObservItem,
  WhoCallDiversos,
  CupomDigitacaoCheque,
  CupomVendaConsig,
  NumCopias,
  TerminalAtualData,
  IDPedido,
  IDChequeEmitido,
  IDChequeRecebido,
  TipoEtiqueta,
  OBSImpressaoCupom,
  MensagemVenda,
  TipoPlanoContas, TxtReciboECF, CodMotoboy, UsaTablet, ImpressoraCaixaPath, Enter_Vazio, TeleQuitado, TabInicial, F2_AUTOMATICO, DetalhesVenda, ParceiroNome, ParceiroPath, MostraCodigoBarras,
  NotaGaucha,GravarDisplaySequencial,GravarCupomCancelado,TipoHistoricoPadrao, ImprimeDadosClienteCupom, DataAniversario, Porta, TabelaMaisTerminal, IDReimprimir, ProdutoComplemento, SolicitaDataEntrega,
  OrdemGrupo, OrdemProduto, FiltraTerminal, Servidor_HostName, Servidor_Database, NroViasImpVenda : String;
  PercDesqMaxUsario, PercDesqMaxUsarioAutenticado, VlrDescPromoImportado,
  VlrBonusTroca,
  VlrLivreProd,
  ValorDiminuirAcresc,
  DescPercItem,
  DescValItem,
  ValorLimite,
  TotalProdGrade,
  TotalDescGrade,
  VarValorTroco,
  VarValorRecebido, PerJuroPlanoAoMes, Vlr_Total_Pis, Vlr_Total_Cofins, AliqOlhoImpostoSimples :  Double ;
  LogTotaliz        : TextFile ;
  //VARIAVEIS DE RETORNO DO CODIGO PRIMARIO DAS TELAS
  ProdutoCodigoRet,
  CupomOrigemTroca,
  ClienteEspecifico, ClienteCodigoRet  : string ;
  DataEntregaVenda,
  HoraEntrega1,
  HoraEntrega2,
  NomeSolicitante, NotaCompraNumero, NotaCompraProduto  : string ;
  //VARIAVEIS
  VersaoSistema,
  NomeClienteRec,
  EnderecoClienteRec,
  BairroCLienteRec,
  CidadeClienteRec,
  EstadoClienteRec,
  FoneClienteRec   : string ;
  NroUltItem : Integer;
  DataAtualizacaoEstoque, DataNotaCompra : TDateTime;

procedure Informa(Texto:string) ;
function RetornarNomeComputador : String ;
function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind : string) : string ;
function AutenticaUsuario(UserNameDefault, CAMPO : String; var InfoRetorno:TInfoRetornoUser) : String;
function ExecSql(xsql: string; Tipo: Integer = 0): TQuery;
function Pergunta(BotaoDefault, Texto:string) : boolean ;
procedure InformaErro(Texto:string; Abortar: Boolean; SetarFoco: TWinControl) ;

implementation

uses DataModulo, TelaAutenticaUsuario;

procedure InformaErro(Texto:string; Abortar: Boolean; SetarFoco: TWinControl) ;
begin
  Application.MessageBox(PChar(Texto), PChar('Erro ' + Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_ICONINFORMATION + MB_SETFOREGROUND);
  if SetarFoco <> nil then
    SetarFoco.SetFocus;
  if Abortar then
    Abort;
end ;

function Pergunta(BotaoDefault, Texto:string) : boolean ;
begin
  if AnsiUpperCase(BotaoDefault) = 'SIM' then
  begin
    if Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON1) = IdYes then
      Pergunta := true
    else
      Pergunta := false ;
  end
  else
    if Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
      Pergunta := true
    else
      Pergunta := false ;
end ;

function ExecSql(xsql: string; Tipo: Integer = 0): TQuery;
begin
  try
    if tipo = 0 then
    begin
      Result := TQuery.Create(nil);
      Result.DatabaseName := 'DB';
      Result.SQL.Text := xsql;
      Result.Open;
    end
    else begin
      DM.DB.Execute(xsql);
      Result := nil;
    end;
  except
    on e: exception do
      ShowMessage('Erro sql: ' + xsql + ' - ' + e.Message);
  end;
end;

function AutenticaUsuario(UserNameDefault, CAMPO : String; var InfoRetorno:TInfoRetornoUser) : String;
var
  SQLUsuario : TQuery;
  UserName :String;
  Password : String;
  ContUser : Integer;
  UsuarioOK, SenhaOK : Boolean;
begin
  SQLUsuario := TQuery.Create(DM);
  SQLUsuario.DatabaseName := 'DB';
  UserName := '';
  Password := '';
  ContUser := 0;
  // While (ContUser < 3) and (MResult <> MrCancel) do
  while (ContUser < 3) do
    begin
      // PassWord := InputBoxMask('Autenticação de Usuário','Digite a sua senha de usuário :','');
      Application.CreateForm(TFormTelaAutenticaUsuario, FormTelaAutenticaUsuario);
      FormTelaAutenticaUsuario.ShowModal ;
      if (FormTelaAutenticaUsuario.ModalResult = MrOK) and (FormTelaAutenticaUsuario.EditSenha.Text<>'') then
        Password := FormTelaAutenticaUsuario.EditSenha.Text;
      if (FormTelaAutenticaUsuario.ModalResult = MrCancel) then
        begin
          ContUser := 3; // Sai da Rotina
          Exit;
        end;
          
      FormTelaAutenticaUsuario.Close;
      FormTelaAutenticaUsuario.Free;
      SQLUsuario.Close;
      SQLUsuario.SQL.Clear;
      SQLUsuario.SQL.Add('SELECT * FROM USUARIO WHERE USUAA5SENHA = ' + '"' + UpperCase(Password) + '"');
      SQLUsuario.Open;
      if SQLUsuario.IsEmpty then
        begin
          ShowMessage('Senha Inválida!');
          Inc(ContUser);
        end
      else
        begin
          if SQLUsuario.RecordCount > 1 then
            begin
              ShowMessage('Existe mais de um usuario com a mesma senha!');
              Inc(ContUser);
            end
          else
            begin
              UserName := SQLUsuario.fieldbyname('USUAA60LOGIN').Value;
              SenhaOK  := True;
              ContUser := 3;
            end;
        end;
    end;
    if not SQLUsuario.IsEmpty then
      begin
        AutenticaUsuario                   := SQLUsuario.FieldByName(CAMPO).AsString;
        InfoRetorno.CampoRetorno           := SQLUsuario.FieldByName(CAMPO).FieldName;
        InfoRetorno.CodUsuarioAutenticado  := SQLUsuario.FieldByName('USUAICOD').AsInteger;
        InfoRetorno.NomeUsuarioAutenticado := SQLUsuario.FieldByName('USUAA60LOGIN').AsString;
        InfoRetorno.ModalResult            := MrOk;
      end;
  SQLUsuario.Destroy;
  CodUsuarioAutorizouOperacao := InfoRetorno.CodUsuarioAutenticado;
  UsuarioAutorizouOperacao    := InfoRetorno.NomeUsuarioAutenticado;
  Password := '';
  ContUser := 0;
end;

procedure Informa(Texto:string) ;
begin
  Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_ICONINFORMATION + MB_SETFOREGROUND);
end ;

function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind : string) : string ;
var
  MyQuery : TQuery ;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TQuery.Create(DM);
    if DM.DataBaseName = '' then
      MyQuery.DatabaseName := 'DB'
    else
      MyQuery.DatabaseName := DM.DataBaseName;
    MyQuery.Close ;
    MyQuery.SQL.Clear ;
    MyQuery.SQL.Add('select ' + CampoRetorno + ' from ' + Tabela) ;
    MyQuery.SQL.Add('where  ' + CampoProcura + ' = ' + ValorFind) ;
    MyQuery.Open ;
    if not MyQuery.EOF then
      SQLLocate := MyQuery.FieldByName(CampoRetorno).AsString
    else
      SQLLocate := '' ;
    MyQuery.Destroy ;
  end
  else
    ValorFind := '' ;
end ;

function RetornarNomeComputador : String ;
var
  Texto : TextFile;
  Registro : TRegistry ;
  IniFile  : TIniFile ;
  Str, Info : string ;
begin
  Registro := TRegistry.Create ;
  try
    Registro.RootKey := HKEY_LOCAL_MACHINE ;
    Registro.Openkey('System\CurrentControlSet\Services\VXD\VNETSUP', false) ;
    Result := Registro.Readstring('ComputerName') ;
    if Result = '' then
      begin
        Registro.RootKey := HKEY_LOCAL_MACHINE ;
        Registro.Openkey('SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName', false) ;
        Result := Registro.Readstring('ComputerName') ;
      end;
    if (Result = '') and FileExists('Terminal.txt') then
    begin
      AssignFile(Texto,'Terminal.txt');
      Reset(Texto);
      Readln(Texto,Info);
      CloseFile(Texto);
      Result := Info;
    end ;
  except
    ShowMessage('Não foi possível encontrar o nome do computador! Por favor entre em contato com o suporte!');
  end;
end;

end.
