unit CartaoCredito;

interface

uses
  Windows, SysUtils, Forms, Dialogs, Controls, Classes, ECFCheckout, StdCtrls,
  DBTables;

type
  TInfoRetorno = record
    ValorTotal : string; {003-000}
    Moeda : string; {004-000}
    CMC7 : string; {005-000}
    TipoPessoa : string; {006-000}
    DocPessoa : string; {007-000}
    DataCheque : string; {008-000}
    StatusTransacao : string; {009-000}
    NomeRede : string; {010-000}
    TipoTransacao : string; {011-000}
    NroTransacao : string; {012-000}
    TimeStampHost : string; {015-000}
    DataComprovante : string; {022-000}
    HoraComprovante : string; {023-000}
    NroTransacaoCancelada : string; {025-000}
    TimeStampTransacaoCancelada : string; {026-000}
    Finalizacao : string; {027-000}
    QtdeLinhas : integer; {028-000}
    RetornoOperador : string; {030-000}
    Banco : string; {033-000}
    Agencia : string; {034-000}
    ContaCorrente : string; {036-000}
    Print : TStrings; {Obtém os resultados a serem impressos na ECF}
    TransacaoAutorizada : boolean; {Informa se a transação foi efetuada}
  end;

  TInfoImpressao = record
    ECFAtual : string;
    PortaECFAtual : string;
    TotNumECFImp : string;
    Ecf_Cnfv : string;
    Ecf_ID : string;
    NroCupomFiscal : string;
    DescricaoNumerario : string;
    ValorImp : double;
  end;
  TInfoOperacaoProvedor = record
    Administrativa  : Boolean;
    ConsultaCheque  : Boolean;
    PagamentoContas : Boolean;
    ValorOperacao   : Double;
  end;

  function AdjustPath(Path : string) : string;
  function DeleteText(Path : string) : boolean;
  function Ativo() : boolean;
  function LiberaCartao(Identificador, NroDocumento : string; ValorTotal : double) : TInfoRetorno;
  function FuncaoAdministrativa() : TInfoRetorno;
  function Confirma(NomeRede, NroTransacao, Finalizacao : string; Confirma : boolean) : TInfoRetorno;
  function ImprimeRetorno(Retorno : TInfoRetorno; InfoImpressora : TInfoImpressao; NroVias : integer; RePrint : boolean) : boolean;
  function TrataRetorno(Path,NroRetorno : string) : TInfoRetorno;
  procedure Delay(Seconds : integer);
var
  Return, SendDirectory, ReceiveDirectory, Campo001Send, Campo001Rec : string;
  Send, Receive,  TextRetornoCartoes : TextFile;
  ErroCampo001 : Boolean;
  Info : array of string;
  TipoOperacao : TInfoOperacaoProvedor;
implementation

uses WaitWindow, UnitLibrary, WindowsLibrary, DataModulo, DB, TelaFechamentoVenda, VarSYS ;

//****************************************************************************//
// MÉTODO QUE ALIMENTA AS VARIAVEIS SENDDIRECTORY E RECEIVEDIRETORY           //
//****************************************************************************//
function CarregaVariaveisTEF(Numerario : string) : string;
begin
end;

//****************************************************************************//
// MÉTODO QUE VERIFICA E AJUSTA O CAMINHO PASSADO PARA NÃO HAVER PROBLEMA DE  //
// DIRETÓRIOS INVÁLIDOS                                                       //
//****************************************************************************//

function AdjustPath(Path : string) : string;
begin
  Result := Path;
  if Result[Length(Result)] <> '\' then
    Result := Result + '\';
end;

//****************************************************************************//
// MÉTODO QUE VERIFICA A EXISTÊNCIA DO ARQUIVO PASSADO COMO PARÂMENTRO E      //
// APAGA-O POSTERIORMENTE                                                     //
//****************************************************************************//
function DeleteText(Path : string) : boolean;
begin
  Result := False;
  if FileExists(Path) then
    begin
      DeleteFile(Path);
      Result := True;
    end;
end;

//****************************************************************************//
// MÉTODO QUE PREPARA E CRIA UM ARQUIVO PARA POSTERIOR EDIÇÃO                 //
//****************************************************************************//
procedure PrepareText(var FileText : TextFile; Text : string);
begin
  Delay(1);
  AssignFile(FileText,Text);
  Rewrite(FileText);
  Reset(FileText);
end;

//****************************************************************************//
// MÉTODO QUE CONTROLA TODO O PROCESSO DE ESCRITA NO ARQUIVO JÁ CRIADO        //
//****************************************************************************//
procedure WriteText(var FileText : TextFile; Text : string);
begin
  Append(FileText);
  Writeln(FileText,Text);
  CloseFile(FileText);
end;

//****************************************************************************//
// MÉTODO QUE AGUARDA O TEMPO PASSADO POR PARÂMETRO EM SEGUNDOS. FUNCIONA COMO//
// O SLEEP, MAS COM A VANTAGEM DE NÃO TRANCAR A APLICAÇÃO                     //
//****************************************************************************//
procedure Delay(Seconds : integer);
var
  InitialTime : TTime;
  Hour, Minute, Second, MSecond : word;
begin
  InitialTime := Now;
  DecodeTime(Now - InitialTime,Hour,Minute,Second,MSecond);
  while ((Hour /3600) + (Minute / 60) + Second) < Seconds do
    begin
      DecodeTime(Now - InitialTime,Hour,Minute,Second,MSecond);
      Application.ProcessMessages;
    end;
end;

//****************************************************************************//
// MÉTODO QUE TRATA TODOS OS RETORNOS DO GERENCIADOR PADRÃO                   //
//****************************************************************************//
function TrataRetorno(Path,NroRetorno : string) : TInfoRetorno;
  function TrataString(Text : string) : string;
  begin
    Result := Text;
    while pos('"',Result) > 0 do
      Delete(Result,pos('"',Result),1);
  end;
var
  Return : string;
  Text : TextFile;
begin
  try
    Result.Print := TStringList.Create;
    AssignFile(Text,Path);
    Reset(Text);
     while not Eof(Text) do
      begin
        Application.ProcessMessages;
        Readln(Text,Return);
        case StrToInt(Copy(Return,1,3)) of
           3 : Result.ValorTotal := Trim(Copy(Return,10,Length(Return) - 9));
           4 : Result.Moeda := Trim(Copy(Return,10,Length(Return) - 9));
           5 : Result.CMC7 := Trim(Copy(Return,10,Length(Return) - 9));
           6 : Result.TipoPessoa := Trim(Copy(Return,10,Length(Return) - 9));
           7 : Result.DocPessoa := Trim(Copy(Return,10,Length(Return) - 9));
           8 : Result.DataCheque := Trim(Copy(Return,10,Length(Return) - 9));
           9 : begin
                 Result.StatusTransacao := Trim(Copy(Return,10,Length(Return) - 9));
                 Result.TransacaoAutorizada := False;
                 if (Result.StatusTransacao = '0') or (Result.StatusTransacao = 'P1') then
                   Result.TransacaoAutorizada := True;
               end;
          10 : Result.NomeRede := Trim(Copy(Return,10,Length(Return) - 9));
          11 : Result.TipoTransacao := Trim(Copy(Return,10,Length(Return) - 9));
          12 : Result.NroTransacao := Trim(Copy(Return,10,Length(Return) - 9));
          15 : Result.TimeStampHost := Trim(Copy(Return,10,Length(Return) - 9));
          22 : Result.DataComprovante := Trim(Copy(Return,10,Length(Return) - 9));
          23 : Result.HoraComprovante := Trim(Copy(Return,10,Length(Return) - 9));
          25 : Result.NroTransacaoCancelada := Trim(Copy(Return,10,Length(Return) - 9));
          26 : Result.TimeStampTransacaoCancelada := Trim(Copy(Return,10,Length(Return) - 9));
          27 : Result.Finalizacao := Trim(Copy(Return,10,Length(Return) - 9));
          28 : Result.QtdeLinhas := StrToInt(Trim(Copy(Return,10,Length(Return) - 9)));
          29 : Result.Print.Add(TrataString(Trim(Copy(Return,10,Length(Return) - 9))));
          30 : Result.RetornoOperador := Trim(Copy(Return,10,Length(Return) - 9));
          31 : Application.MessageBox(PChar(Trim(Copy(Return,10,Length(Return) - 9))),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
          33 : Result.Banco := Trim(Copy(Return,10,Length(Return) - 9));
          34 : Result.Agencia := Trim(Copy(Return,10,Length(Return) - 9));
          36 : Result.ContaCorrente := Trim(Copy(Return,10,Length(Return) - 9));
        end;
      end;
    CloseFile(Text);
  except
    Delay(1);
    Application.ProcessMessages;
  end;
  if Result.StatusTransacao = 'FF' then
    begin
      DeleteText(AdjustPath(SendDirectory)    + 'IntPos.001');
      DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.001');
      DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.sts');
      if not DirectoryExists(AdjustPath(ReceiveDirectory) + 'Backup') then
        CreateDir(AdjustPath(ReceiveDirectory) + 'Backup');
      try
        DeleteText(AdjustPath(ReceiveDirectory) + 'Backup\IntPos.001');
      except Application.ProcessMessages end;
    end;
end;

//****************************************************************************//
// COMO QUASE TODAS AS ROTINAS NECESSITAVAM DE MESMOS PROCESSOS FOI CRIADA    //
// ESTE MÉTODO                                                                //
//****************************************************************************//
function TransacaoPadrao(Info : array of string; Retorno : boolean) : TInfoRetorno;
var
  I : Integer;
begin
  if DirectoryExists(AdjustPath(SendDirectory)) then
    begin
      DeleteText(AdjustPath(SendDirectory) + 'IntPos.tmp');
      DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
      PrepareText(Send,AdjustPath(SendDirectory) + 'IntPos.tmp');
      for I := 0 to Length(Info) - 1 do
        WriteText(Send,Info[I]);
      Application.ProcessMessages;

      while not FileExists(AdjustPath(SendDirectory) + 'IntPos.tmp') do
        Application.ProcessMessages;
      while FileIsReadOnly(AdjustPath(SendDirectory) + 'IntPos.tmp') do
        Application.ProcessMessages;

      // Backup do Arquivo feito pela AC na pasta Rec, para pode testar se o file gerado é o mesmo recebido
      // o teste é feito lendo o campo 001-000 e comparando
      if not DirectoryExists(AdjustPath(SendDirectory)+'Backup') then
        CreateDir(AdjustPath(SendDirectory)+'Backup');
      try
        FileCopy(AdjustPath(SendDirectory) + 'Backup\IntPos.tmp', AdjustPath(SendDirectory) + 'IntPos.tmp');
      except
        Application.ProcessMessages;
      end;

      // Aguarda o Arquivo feito pelo AC = IntPos001.001 da pasta Rec\Backup, testar consistencia campo 001-000
      while not FileExists(AdjustPath(SendDirectory) + 'Backup\IntPos.tmp') do
        Application.ProcessMessages;
      while FileIsReadOnly(AdjustPath(SendDirectory) + 'Backup\IntPos.tmp') do
        Application.ProcessMessages;
      // Alimentar Variavel Campo0001Send
      Delay(1);
      // Vai ler o conteudo do arquivo e alimentar a variavel Campo001Send com a linha de controle 001-000
      AssignFile(TextRetornoCartoes,AdjustPath(SendDirectory) + 'Backup\IntPos.tmp');
      Reset(TextRetornoCartoes);
      while not Eof(TextRetornoCartoes) do
        begin
          Application.ProcessMessages;
          Readln(TextRetornoCartoes,Return);
          case StrToInt(Copy(Return,1,3)) of
            1 : Campo001Send := Return;
          end;
        end;
      CloseFile(TextRetornoCartoes);
      // Apagar os arqs da pasta Rec\Backup, pois nao serao mais utilizados nessa transacao.
      DeleteText(AdjustPath(SendDirectory) + '\Backup\IntPos.tmp');

      // Ao Renomear na pasta REc de IntPos.tmp para IntPos.001 abre a tela dos cartoes
      Rename(Send,AdjustPath(SendDirectory) + 'IntPos.001');

      if Retorno then
        begin
          ErroCampo001 := True;
          while ErroCampo001 do
            begin
              // Aguarda o Retorno feito pelo GP no IntPos001.001 na pasta Resp, para testar consistencia campo 001-000
              // Vai ficar no loop de erro enquanto o arq de resposta for diferente do arq enviado na origem dessa transacao
              // O teste é feito pela variavel Campo001Send que contem a informacao de controle do arq gerado na pasta Rec.
              while not FileExists(AdjustPath(ReceiveDirectory) + 'IntPos.001') do
                Application.ProcessMessages;
              while FileIsReadOnly(AdjustPath(ReceiveDirectory) + 'IntPos.001') do
                Application.ProcessMessages;

              // Testar pra ver se o arq. esta correto
              Delay(1);
              AssignFile(TextRetornoCartoes,AdjustPath(ReceiveDirectory) + 'IntPos.001');
              Reset(TextRetornoCartoes);
              while not Eof(TextRetornoCartoes) do
                begin
                  Application.ProcessMessages;
                  Readln(TextRetornoCartoes,Return);
                  case StrToInt(Copy(Return,1,3)) of
                    1 : Campo001Rec := Return;
                  end;
                end;
              CloseFile(TextRetornoCartoes);
              if Campo001Send <> Campo001Rec then
                begin
                  ErroCampo001 := True;
                  DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.001');
                  DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.tmp');
                end
              else
                ErroCampo001 := False;
            end;

          // Backup dos Arquivos de Retorno da pasta Resp
          if not DirectoryExists(AdjustPath(ReceiveDirectory)+'Backup') then
            CreateDir(AdjustPath(ReceiveDirectory)+'Backup');
          try
            FileCopy(AdjustPath(ReceiveDirectory) + 'Backup\IntPos.001', AdjustPath(ReceiveDirectory) + 'IntPos.001');
          except
            Application.ProcessMessages;
          end;

          Result := TrataRetorno(AdjustPath(ReceiveDirectory) + 'IntPos.001','1');
        end
      else
        Delay(1);

      Delay(1);
      if not (Result.QtdeLinhas > 0) then
        begin
          DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.001');
          DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.sts');
          if not DirectoryExists(AdjustPath(ReceiveDirectory) + 'Backup') then
            CreateDir(AdjustPath(ReceiveDirectory) + 'Backup');
          try
            DeleteText(AdjustPath(ReceiveDirectory) + 'Backup\IntPos.001');
          except Application.ProcessMessages end;
        end;
    end
  else
    Application.MessageBox('O diretório informado é inexistente! Operação Cancelada!','Atenção',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
end;

//****************************************************************************//
// MÉTODO QUE VERIFICA SE O GERENCIADOR PADRÃO ESTÁ ATIVO                     //
//****************************************************************************//
function Ativo() : boolean;
var
  Init : TTime;
  Other, Second : Word;
begin
  Result := False;
  try
    if (DirectoryExists(AdjustPath(SendDirectory)) and
        DirectoryExists(AdjustPath(ReceiveDirectory))) then
      begin
        DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
        DeleteText(AdjustPath(SendDirectory) + 'IntPos.tmp');
        DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.sts');
        PrepareText(Send,AdjustPath(SendDirectory) + 'IntPos.tmp');
        WriteText(Send,'000-000 = ATV');
        WriteText(Send,'001-000 = 1'+FormatDateTime('hhnn',now));
        WriteText(Send,'999-999 = 0');
        Application.ProcessMessages;
        Rename(Send,AdjustPath(SendDirectory) + 'IntPos.001');
        // Fica aguardando por 7 segundos a Resposta na pasta RESP
        Init := Now;
        repeat
          DecodeTime(Now - Init,Other,Other,Second,Other);
          if FileExists(AdjustPath(ReceiveDirectory) + 'IntPos.Sts') then
            begin
              Result := True;
              while FileIsReadOnly(AdjustPath(ReceiveDirectory) + 'IntPos.Sts') do Application.ProcessMessages;
              DeleteFile(AdjustPath(ReceiveDirectory) + 'IntPos.Sts');
              Application.ProcessMessages;
              Second := 8;
            end;
        until (Second > 6);
        if not Result then
          begin
            try
              if FileExists('Tef_Dial.txt') then
                begin
                  //ShowMessage('O Gerenciador Tef_Dial, não esta ativo e será ativado automaticamente!');
                  //WinExec(Pchar('C:\Tef_Dial\Tef_Dial.EXE'),sw_Show);
                  Result := True;
                end;
            except
              Result := False;
            end;
            try
              if FileExists('Tef_Disc.txt') then
                begin
                  ShowMessage('O Gerenciador Tef_Disc, não esta ativo e será ativado automaticamente!');
                  WinExec(Pchar('C:\Tef_Dial\Tef_Disc.EXE'),sw_Show);
                  Result := True;
                end;
            except
              Result := False;
            end;
          end;
      end
    else
      Application.MessageBox('O diretório informado é inexistente! Operação Cancelada!','Atenção',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
  except
    Application.ProcessMessages;
  end;
end;

//****************************************************************************//
// MÉTODO QUE EFETUA A LIBERAÇÃO DO CARTÃO OU CHEQUE PARA CRÉDITO OU DÉBITO   //
//****************************************************************************//
function LiberaCartao(Identificador, NroDocumento : string; ValorTotal : double) : TInfoRetorno;
  function TrataValor(Valor : double) : string;
  var
    Temp : string;
  begin
    Result := FormatFloat('##0.00',Valor);
    Temp := Copy(Result,Pos(',',Result) + 1,Length(Result) - Pos(',',Result));
    if Length(Temp) < 2 then
      Result := Result + '0';
    while Pos('.',Result) > 0 do
      Delete(Result,Pos('.',Result),1);
    while Pos(',',Result) > 0 do
      Delete(Result,Pos(',',Result),1);
  end;
begin
  SetLength(Info,5);
  Info[0] := '000-000 = ' + UpperCase(Identificador);
  Info[1] := '001-000 = 1'+ FormatDateTime('hhnn',now);
  Info[2] := '002-000 = ' + NroDocumento;
  Info[3] := '003-000 = ' + TrataValor(ValorTotal);
  Info[4] := '999-999 = 0';
  Result  := TransacaoPadrao(Info,True);
end;

//****************************************************************************//
// MÉTODO QUE ACIONA AS FUNÇÕES ADMINISTRATIVAS DO GERENCIADOR PADRÃO         //
//****************************************************************************//
function FuncaoAdministrativa() : TInfoRetorno;
begin
  SetLength(Info,3);
  Info[0] := '000-000 = ADM';
  Info[1] := '001-000 = 1'+FormatDateTime('hhnn',now);
  Info[2] := '999-999 = 0';
  Result := TransacaoPadrao(Info,True);
end;

//****************************************************************************//
// MÉTODO QUE EFETUA A CONFIRMAÇÃO OU NÃO DE VENDA E IMPRESSÃO DO CUPOM       //
//****************************************************************************//
function Confirma(NomeRede, NroTransacao, Finalizacao : string; Confirma : boolean) : TInfoRetorno;
begin
  SetLength(Info,6);
  if Confirma then
    Info[0] := '000-000 = CNF'
  else
    Info[0] := '000-000 = NCN';
  Info[1] := '001-000 = 1'+FormatDateTime('hhnn',now);
  Info[2] := '010-000 = ' + NomeRede;
  Info[3] := '012-000 = ' + NroTransacao;
  Info[4] := '027-000 = ' + Finalizacao;
  Info[5] := '999-999 = 0';
  Result := TransacaoPadrao(Info,False);
end;

//****************************************************************************//
// MÉTODO QUE EFETUA A IMPRESSÃO E CONFIRMAÇÃO OU NÃO DE VENDA E IMPRESSÃO DO //
// CUPOM                                                                      //
//****************************************************************************//
function ImprimeRetorno(Retorno : TInfoRetorno; InfoImpressora : TInfoImpressao; NroVias : integer; RePrint : boolean) : boolean;
var
  I, Linhas, INTPOS : integer;
  NoBreak : TextFile;
  X, AbreCupomTEF : boolean;
  Msg : String;
  Valor : Double;
begin
  if (copy(InfoImpressora.ECFAtual,1,4) = 'NFCE') then
    begin
      Application.Restore;
      if (Retorno.QtdeLinhas>0) then
        begin
          dm.ACBrPosPrinter.Device.Desativar;
          dm.ACBrPosPrinter.Device.Ativar;
          try
            dm.ACBrPosPrinter.Imprimir(Retorno.Print.Text);
            dm.ACBrPosPrinter.Imprimir('</corte_parcial>');
            Result := True;
          except
            Result := False;
          end;
          {Seg Via TEF}
          try
            dm.ACBrPosPrinter.Imprimir(Retorno.Print.Text);
            dm.ACBrPosPrinter.Imprimir('</corte_parcial>');
            Result := True;
          except
            Result := False;
          end;
        end;
      Exit;
    end;

  Application.Restore;
  // VERIFICA PENDENCIAS NAS ECFs
  if (InfoImpressora.ECFAtual <> '') and (InfoImpressora.PortaECFAtual <> '') then
    begin
      AbrirPortaECF(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
      try
        if not FechamentoRelatorioGerencial(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual) then
          begin
            FecharCNFV(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
          end;
      except
        Application.ProcessMessages;
      end;
      FecharPortaECF(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
    end;
  I := 0;
  X := RePrint;
  Result := False;
  AbreCupomTEF := False;
  if Retorno.QtdeLinhas > 0 then
    begin
      // Daruma_TEF_TravarTeclado('1'); // Travar

      if Retorno.RetornoOperador <> '' then
        MakeWindowMessage(Retorno.RetornoOperador)
      else
        if RePrint then
          MakeWindowMessage('Relatorio Gerencial!');

      // GRAVA DADOS DO CARTAO APROVADO
      Valor := 0;
      if Reprint then
        begin
          if Retorno.ValorTotal <> '' then
            begin
              try
                Valor := StrToFloat(Retorno.ValorTotal);
              except
                Valor := 0;
              end;
            end;
        end;
      while I < NroVias do
        begin
          repeat
            if not X then
              begin
                if AbreCupomTEF then
                  Result := True
                else
                  Result := AbrirCNFV(InfoImpressora.ECFAtual,
                                      InfoImpressora.PortaECFAtual,
                                      InfoImpressora.totnumecfimp[1],
                                      InfoImpressora.ecf_cnfv[1],
                                      InfoImpressora.Ecf_ID,
                                      InfoImpressora.NroCupomFiscal,
                                      InfoImpressora.DescricaoNumerario,
                                      InfoImpressora.ValorImp);

                AbreCupomTEF := True;
              end
            else
              begin
                AbreRelatorioGerencial(infoimpressora.ecfatual, infoimpressora.portaecfatual);
                for Linhas := 0 to Retorno.Print.Count - 1 do
                  begin
                    Result := RelatorioGerencial(InfoImpressora.ECFAtual,
                                                 InfoImpressora.PortaECFAtual,
                                                 Retorno.Print.Strings[Linhas] + Chr(10));
                    if not Result then
                      Break;
                  end;
              end;

            if not X then
              for Linhas := 0 to Retorno.Print.Count - 1 do
                begin
                  // VER SE É NECESSARIO COLOCAR UMA OBS PRA INFORMAR QUE É UMA REIMPRESSAO DO COMPROVANTE
                  if not Result then
                    if ((ECFAtual <> 'BEMATECH MP-25 FI') and (ECFAtual <> 'EPSON TERMICA'))  then
                      LinhaTextoLivre(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual, 'REIMPRESSAO DE COMPROVANTE' + Chr(10))
                    else
                      LinhaTextoLivre(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual, 'REIMPRESSAO DE COMPROVANTE!');

                  if ((ECFAtual <> 'BEMATECH MP-25 FI') and (ECFAtual <> 'EPSON TERMICA'))  then
                    Result := LinhaTextoLivre(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual, Retorno.Print.Strings[Linhas] + Chr(10))
                  else
                    begin
                      if Retorno.Print.Strings[Linhas] <> '' then
                        Result := LinhaTextoLivre(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual, Retorno.Print.Strings[Linhas])
                      else
                        Result := LinhaTextoLivre(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual,' ');
                    end;
                  if not Result then
                    Break;
                end;
            // COLOCAR ESPAÇO ENTRE UMA VIA E OUTRA
            // Cada CHR(10) é igual a uma linha em branco na impressora
            if Result then
              if (NroVias - I) > 1 then
                Result := LinhaTextoLivre(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual,
                                          Chr(10) + Chr(10) + Chr(10) + Chr(10) + Chr(10));
            // Fazer Picote do Papel
            // ShowMessage('Destacar o Papel!');

            // Daruma_TEF_TravarTeclado('0'); // Destravar
            if not Result then
              if Application.MessageBox('A impressora não responde. Possíveis problemas:' + #13 + #13 +
                                        'A impressora pode estar desligada!' + #13 +
                                        'Os cabos estão mal conectados ou com defeito!' + #13 +
                                        'A impressora pode estar sem papel!' + #13 +
                                        'A impressora não está preparada para imprimir!' + #13 +
                                        'Se não for nenhum dos itens acima contate seu revendedor!' + #13 + #13 +
                                        'Deseja tentar novamente?','Atenção',MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = ID_YES then
                begin
                  if Ativo then
                    begin
                      // testa o Gp. pra ver se esta Ativo
                    end;
                  // Daruma_TEF_TravarTeclado('1'); // Travar
                  Sleep(3000);
                  Result := True;
                  if Reprint then
                    begin
                      if X then
                        begin
                          X := True;
                          Result := FechamentoRelatorioGerencial(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
                        end;
                    end
                  else
                    begin
                      Result := FecharCNFV(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
                      X := True;
                    end;
                  I := -1;
                  Retorno.Print.Strings[0];
                end
              else
                begin
                  Sleep(2000);
                  if (not RePrint) or ((x) and (not Result)) then
                    begin
                      Msg := 'Transação (TEF) foi cancelada!' + #13 + #13 +
                             'Rede --> ' + Retorno.NomeRede + #13 +
                             'Documento(NSU) --> ' + Retorno.NroTransacao + #13;
                      if Retorno.ValorTotal <> ' ' then
                        begin
                          try
                            Valor := StrToFloat(Retorno.ValorTotal);
                          except
                            Valor := 0;
                          end;
                          if Valor > 0 then
                            Msg := Msg + 'Valor --> ' + FormatFloat('##0.00',Valor / 100);
                        end;
                      if Ativo then
                        begin
                          // testa o Gp. pra ver se esta Ativo
                        end;
                      Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,False);
                      Application.MessageBox(PChar(Msg),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_ICONINFORMATION + MB_SETFOREGROUND);
                      DestroyWindow();
                      // FECHA CUPOM ANTERIOR NO CASO DE DESISTENCIA DA IMPRESSAO DO COMPROVANTE TEF.
                      if (X) then
                        FechamentoRelatorioGerencial(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual)
                      else
                        FecharCNFV(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
                      // VERIFICA PENDENCIAS NA IMPRESSORA
                      if (InfoImpressora.ECFAtual <> '') and (InfoImpressora.PortaECFAtual <> '') and
                         (InfoImpressora.ECFAtual <> 'DARUMA FS345') then
                        begin
                          AbrirPortaECF(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
                          try
                            if not FechamentoRelatorioGerencial(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual) then
                              begin
                                FecharCNFV(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
                              end;
                          except
                            Application.ProcessMessages;
                          end;
                          FecharPortaECF(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
                        end;
                    end
                  else
                    begin
                      Application.MessageBox('Não foi possível efetuar a reimpressão do comprovante!' + #13 + #13 +
                                             'Possíveis problemas:' + #13 + #13 +
                                             'A impressora pode estar desligada!' + #13 +
                                             'Os cabos estão mal conectados ou com defeito!' + #13 +
                                             'A impressora pode estar sem papel!' + #13 +
                                             'A impressora não está preparada para imprimir!' + #13 +
                                             'Se não for nenhum dos itens acima contate seu revendedor!' + #13 +
                                             'Você poderá tentar novamente ou cancelar a venda através de uma função administrativa!' + #13,
                                             'Atenção',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONINFORMATION);
                      if Ativo then
                        begin
                          // testa o Gp. pra ver se esta Ativo
                        end;
                      Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,False);
                    end;
                    Result := False;
                    I := NroVias;
                    DestroyWindow();
                    Break;
                    // DeleteText(ExtractFilePath(Application.ExeName) + 'NoBreak.txt');
                end;
            if ((I + 1) = NroVias) then
              begin
                if not X then
                  Result := FecharCNFV(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual)
                else
                  Result := FechamentoRelatorioGerencial(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
              end;
          until Result;
          if Result then
            inc(I)
          else
            Break;
        end;

      if Result then
        begin
          if Ativo then
            begin
              // testa o Gp. pra ver se esta Ativo
            end;
          Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,True);
//          DeleteText(ExtractFilePath(Application.ExeName) + 'NoBreak.txt');
        end;
      if ((Retorno.RetornoOperador <> '') or
          (RePrint)) then
          DestroyWindow();
    end
  else
    begin
      if Retorno.RetornoOperador <> '' then
        Application.MessageBox(PChar(Retorno.RetornoOperador),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
      if Retorno.NomeRede = 'BANRISUL' then
        begin
          if Retorno.TransacaoAutorizada then
            Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,True)
          else
            Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,False);
        end;
    end;
end;

end.
