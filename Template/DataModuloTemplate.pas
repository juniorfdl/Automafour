unit DataModuloTemplate;

interface

uses
  Variants, Windows, Messages, Classes, SysUtils, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, RxQuery, VarSys, DBLists, DateUtils, ExtCtrls, JPeg,
  ShellApi, Menus, BDE, TypInfo, IBDatabase, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdMessage, DBXpress, SqlExpr, MidasLib, cxClasses, cxGridStrs,
  IBCustomDataSet, IBQuery, IBSQL,
  ACBrBase, ACBrBAL, WaitWindow;     //uDebugEx , UnitLibrary, DataModulo, UnSoundPlay, , TelaSplash

type
  PJanelaAtiva = ^TJanelaAtiva;
  TJanelaAtiva = packed record
    Nome,
    Caption  : WideString;
    Bloqueio : Boolean;
  end;


  TDMTemplate = class(TDataModule)
    DB: TDatabase;
    SQLTemplate: TRxQuery;
    Campos: TTableItems;
    UpdateSQLExclusao: TUpdateSQL;
    SQLExclusao: TRxQuery;
    SQLExclusaoEXCLA13ID: TStringField;
    SQLExclusaoEMPRICOD: TIntegerField;
    SQLExclusaoEXCLICOD: TIntegerField;
    SQLExclusaoEXCLA60TABELA: TStringField;
    SQLExclusaoEXCLA255CHAVE: TStringField;
    SQLExclusaoEXCLA255VALOR: TStringField;
    SQLExclusaoPENDENTE: TStringField;
    SQLExclusaoREGISTRO: TDateTimeField;
    DSExclusao: TDataSource;
    DSListagem: TDataSource;
    DSEmail: TDataSource;
    SQLProdutoSaldoDia: TRxQuery;
    SQLProdutoSaldoDiaEMPRICOD: TIntegerField;
    SQLProdutoSaldoDiaPRODICOD: TIntegerField;
    SQLProdutoSaldoDiaPSDIDDATA: TDateTimeField;
    SQLProdutoSaldoDiaPSDIN3QTDE: TBCDField;
    SQLProdutoSaldoDiaPENDENTE: TStringField;
    SQLProdutoSaldoDiaREGISTRO: TDateTimeField;
    SQLProdutoSaldoAux: TRxQuery;
    UpdateSQLProdutoSaldo: TUpdateSQL;
    SQLProdutoSaldoAuxEMPRICOD: TIntegerField;
    SQLProdutoSaldoAuxPRODICOD: TIntegerField;
    SQLProdutoSaldoAuxPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoAuxPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoAuxPSLDN3QTDMAX: TBCDField;
    SQLProdutoSaldoAuxPENDENTE: TStringField;
    SQLProdutoSaldoAuxREGISTRO: TDateTimeField;
    SQLExclusaoUSUAA60LOGIN: TStringField;
    SQLAcesso: TRxQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLExclusaoBeforePost(DataSet: TDataSet);
    procedure SQLExclusaoNewRecord(DataSet: TDataSet);
    procedure SQLExclusaoBeforeInsert(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UsuarioAtual : integer ;
    DataBaseSistema : TDateTime;
    AtualizaLookup : Boolean;
    PathAplicacao, PathRelatorios, DataBaseName, TabelaExtra : String;
    JanelaAtiva : TJanelaAtiva;
    CorSelecaoGrid, CorLinhaDiferenteGrid : TColor;
    class procedure Commit;
    Function Acesso(Modulo:String):Integer;
    Function ClausulaFiltro(Tabela:String;SQL:TRxQuery):String;
    Procedure RegistraExclusao(Tabela:String;SQL:TRxQuery);
    Function DigitVerifEAN(Cod:string) : string ;
    Function VerificaPonto(Valor:String):String;
    Function ObtemValor(Field:TField):String;
    function ProcuraRegistro(Tabela:String;Chave,Valores:Array of String;NumCampos:Integer):Boolean;
    function EncontraCampo(DataSet:TDataSet; Tag: Integer):Integer;
    function MontaChave(DataSet:TDataSet):String;
    function ProximoCodigoUnico(Tabela:String;DataSet: TDataSet;MasterDataSource:TDataSource; CampoAutoIncremento : Integer):Integer;
    function ProximoCodigoPorEmpresa(Tabela:String;Campo:String):Integer;
    function ProximoCodigoPorEmpresaPorTerminal(Tabela:String;Campo:String):Integer;
    function LocateByDisplayLabel(DataSet : TDataSet; DisplayLabel : string) : String;
    procedure CodigoAutomatico(Tabela:String; DataSource:TDataSource;DataSet: TDataSet; CampoAutoIncremento : Integer; CampoID: Integer);
    function ProximoCodigoUnicoDetalhe(Tabela: String; DataSet: TDataSet;
      MasterDataSource: TDataSource;
      CampoAutoIncremento: Integer): Integer;
    function EncontraCampoDetalhe(DataSet: TDataSet): Integer;
    procedure AtualizaSaldoDiarioEstoque;
    function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind : string) : string ;
    Function VerificaBloqueioJanela(Janela:String):Boolean;
    function DateTimeToUNIXTime(DelphiTime : TDateTime): LongWord;
    function UNIXTimeToDateTime(UnixTime: LongWord): TDateTime;

    //Fabiano... funcao que identifica os erros, e recupera alguns.
    class procedure GlobalExceptionHandler(Sender: TObject; E: Exception);
    procedure TerminaEmail(Sender : TObject);
    Function PegaDadosTabela(E: Exception): Boolean;
    function VerificaTeclaPressionada(const Key: integer): boolean;
//

  end;

var
  //DMTemplate: TDMTemplate;
//Fabiano... variaveis da funcao de indentifica os erros
  TabelaTemp, TabelaErro : TTable;
  Query, QueryExec : TQuery;
  Tabela, UltUnitErro, Email: string;
  ComecouNome, AutoRecOK: Boolean;
//

implementation

uses TelaSplash, UnitLibrary;



{$R *.DFM}

class procedure TDMTemplate.Commit;
var
  TD : TTransactionDesc;
  i : integer;
begin
  TD.TransactionID  := i;
  TD.IsolationLevel := xilREADCOMMITTED;
{  try
    dm.SQLCON.StartTransaction( TD );
    dm.SQLCON.Commit( TD );
    i := i + 1 ;
  except
    dm.SQLCON.Rollback( TD );
  end;       }
end;

function TDMTemplate.VerificaTeclaPressionada(const Key: integer): boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;

procedure TDMTemplate.TerminaEmail(Sender : TObject);
begin
   //if Application.FindComponent('FormWait') <> Nil then
   //   DestroyWindow;
end;

Function TDMTemplate.PegaDadosTabela(E: Exception): Boolean;
Var I : Integer;
    OrigemComponents : TComponent;
begin
    if Screen.ActiveForm <> Nil then
       OrigemComponents := Screen.ActiveForm
    else
       if Screen.FormCount > 0 then
          begin
            if Screen.Forms[Screen.FormCount-1] <> Nil then
               OrigemComponents := Screen.Forms[Screen.FormCount-1]
            else
               OrigemComponents := self;
          end
       else
          OrigemComponents := self;

    if OrigemComponents.FindComponent(Copy(E.Message, 0,Pos(':', E.Message) - 1)) <> Nil then
       begin
         if (OrigemComponents.FindComponent(Copy(E.Message, 0,Pos(':', E.Message) - 1)).ClassType = TQuery) or
            (OrigemComponents.FindComponent(Copy(E.Message, 0,Pos(':', E.Message) - 1)).ClassType = TRxQuery) then
            begin
              Query := TQuery(OrigemComponents.FindComponent(Copy(E.Message, 0,Pos(':', E.Message) - 1)));

              if (Pos('left', Query.SQL.Text) > 0) and
                 (Pos('union', Query.SQL.Text) > 0) then
                 begin
                    Result := False;
                    Exit;
                 end;

              Tabela  := Copy(Query.SQL.Text, Pos('FROM', UpperCase(Query.SQL.Text)) + 5, Length(Query.SQL.Text));

              for I := 0 to Length(Tabela) do
                 begin
                   if (Tabela[I] in [' ', Chr(10), Chr(13)]) and ComecouNome then
                      begin
                         Tabela := Copy(Tabela, 0, I-1);
                         Break;
                      end;
                   if (Tabela[I] <> ' ') then
                      ComecouNome := True;
                 end;
            end
         else
           if (OrigemComponents.FindComponent(Copy(E.Message, 0,Pos(':', E.Message) - 1)).ClassType = TTable) then
              begin
                 TabelaErro := TTable(OrigemComponents.FindComponent(Copy(E.Message, 0,Pos(':', E.Message) - 1)));
                 Tabela     := '"' + TabelaErro.TableName + '"';
              end;
         Result := True;
      end;
end;

class procedure TDMTemplate.GlobalExceptionHandler(Sender: TObject; E: Exception);
var
  MapFileAddress: DWORD;
  UnitName,
  ProcedureName,
  LineNumber: string;

  //Alterado
  ImagemArquivo : String;
const
  CrLf = #10#13;

    function CaptureScreenRect(ARect: TRect; Arquivo: String): TJPegImage;
    // Captura a tela e salva-a em um JPEG
    var
       ScreenDC: HDC;
       Imagem  : TBitmap;
    begin
       Imagem := TBitmap.Create;
       with Imagem, ARect do
       begin
          Width := Right - Left;
          Height := Bottom - Top;
          ScreenDC := GetDC(0);
          try
             BitBlt(Canvas.Handle, 0, 0, Width, Height, ScreenDC, Left, Top, SRCCOPY);
          finally
             ReleaseDC(0, ScreenDC);
          end;
       end;

       try
          Result := TJPegImage.Create;
          Result.Assign(Imagem);
          Result.SaveToFile(Arquivo);
       finally
       end;
    end;

begin
      {AutoRecOK := False;  #ver
      MapFileAddress := GetMapAddressFromAddress(DWORD(ExceptAddr));
      UnitName := GetModuleNameFromAddress(MapFileAddress);
      ProcedureName := GetProcNameFromAddress(MapFileAddress);
      LineNumber := GetLineNumberFromAddress(MapFileAddress);

      Email := ' Data/Hora:  ' + FormatDateTime('dd/mm/yyyy hh:mm', Now) + CrLf +
               ' Empresa:    ' + EmpresaAtualNome + CrLf +
               ' Terminal:   ' + TerminalAtualNome + CrLf +
               ' Usuário:  ' + UsuarioAtualNome + CrLf +
               ' Computador: ' + RetornarNomeComputador + CrLf +
               ' Aplicação:  ' + Application.Title + CrLf +
               '---------------------------------------------------------------------' + CrLf +
               ' Erro: ' + CrLf + E.Message + CrLf + CrLf +
               ' Classe : ' + E.ClassName + CrLf +
               ' Arquivo : ' + UnitName + CrLf + CrLf +
               ' Procedimento : ' + ProcedureName;

      if Screen.ActiveForm <> Nil then
         Email := Email + CrLf + ' Tela : ' + Screen.ActiveForm.Name;

      if LineNumber <> '' then
         Email := Email + CrLf + ' Linha : ' + LineNumber;

     //AutoRecuperação : O Sistema tenta consertar o Erro.

     if (E.ClassType = EDatabaseError) or (E.ClassType = EDBEngineError) then
        begin
           if DM.PegaDadosTabela(E) and (UltUnitErro <> UnitName) then
              begin
                 Application.Minimize;
                 Application.Restore;
                 Informa('Foi detectado um erro no Sistema ' + Application.Title + '.' + #13 +
                         'Uma Auto-Recuperação será executada na tentativa de solucionar o problema.' + #13 +
                         'Caso o erro persista envie o erro para o Suporte.');
                 UltUnitErro := UnitName;
              end;
//           DM.AutoRecuperar(E);
        end;

      if AutoRecOK then
         Exit;

      if (E.ClassType = Exception) then
         begin
            Application.MessageBox(Pchar(Exception(E).Message), 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL);
            Exit;
         end;

      if Application.MessageBox(PChar(Email + Crlf + Crlf + ' Deseja reportar o erro?'), 'Erro', MB_YESNO + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL) = idYes  then
         begin
            ImagemArquivo := DM.PathAplicacao + 'Erro ' + UnitName + ' ' + FormatDateTime('ddmmyy hhmm', Now) + '.jpg';
            CaptureScreenRect(Screen.DesktopRect, ImagemArquivo);
            if VerConexaoInterNet then
               begin


                  if FileExists(ImagemArquivo) then
                     DeleteFile(ImagemArquivo);
               end
            else
               begin
                  ShellExecute(0, 'open', PChar('mailto:suporte@multistorers.com.br ?Subject=Relatorio de erros &Body=' + Email),'','', SW_SHOWNORMAL);
                  Informa('O Sistema criou um e-mail de erro para você, por favor anexe o arquivo "' + ImagemArquivo + '" ao e-mail e envie-o assim que puder.');
               end;
         end;  }
end;

//

//////////////////////////////////////////////// 21/09/2004

Function TDMTemplate.VerificaBloqueioJanela(Janela:String):Boolean;
Var SQLAntigo : String;
begin
   Result := False;
   SQLAntigo := SQLAcesso.SQL.Text;

   SQLAcesso.Close;
   SQLAcesso.SQL.Text := 'select distinct USPEA60NOMETELA from USUARIOPERMISSOES where USPEA60NOMETELA = ' + QuotedStr(Janela);
   SQLAcesso.Open;

   if not SQLAcesso.IsEmpty then
      Result := True;

   SQLAcesso.SQL.Text := SQLAntigo;
end;


Function TDMTemplate.Acesso(Modulo:String):Integer;
Var
  Classe:Integer;
  ControlaAcesso : Boolean;
Begin
//  ControlaAcesso := False;
  ControlaAcesso := True;
  Result         := 1;
  Exit;
  if FileExists('Acesso.dll') then
    Result:=1
  else
    begin
      try
        SQLTemplate.Close;
        SQLTemplate.SQL.Text:='Select * From ClasseUsuario Where USUAICOD='+IntToStr(UsuarioCorrente);
        SQLTemplate.Open;
        Classe:=SQLTemplate.FindField('CLASSICOD').asInteger;
        SQLTemplate.Close;
        SQLTemplate.SQL.Text:='Select * From ClasseModulo Where (CLASSICOD='+IntToStr(Classe)+') AND (CLMDA60NOME='''+Modulo+''')';
        SQLTemplate.Open;
        SQLTemplate.First;
        if not SQLTemplate.Eof then
          Result:=SQLTemplate.FindField('CLMDITIPO').asInteger
        else
          Result:=1;
        SQLTemplate.Close;
        ControlaAcesso := True;
      except
        Result:=1;
        ControlaAcesso := False;
        Application.ProcessMessages;
      end;
    end;
  if (Result=0) and (ControlaAcesso) then
    begin
      Application.MessageBox('Você não tem acesso a este módulo!',PCHAR(Application.Title),MB_Ok+MB_IconStop);
    end;
End;

Function TDMTemplate.ClausulaFiltro(Tabela:String;SQL:TRxQuery):String;
var
  Proximo : String;
begin
  Result := '';
  Campos.TableName := TABELA;
  Campos.Open;
  While Not Campos.Eof Do
    Begin
      If (Campos.FindField('VALCHECKS').asString='1') Then
        Begin
          Campos.Next;
          Proximo:='EOF';
          If Not Campos.Eof Then
            Begin
              Proximo:=Campos.FindField('VALCHECKS').asString;
              Campos.Prior;
            End;
          If (Proximo='EOF') or (Proximo<>'1') Then
            Begin
              If SQL.FindField(Campos.FindField('NAME').asString).asVariant=Null Then
                Result:= Result + Campos.FindField('NAME').asString + ' IS NULL'
              Else
                Result:= Result + ObtemValor(SQL.FindField(Campos.FindField('NAME').asString));
              Break;
            End
          Else
            Begin
              If SQL.FindField(Campos.FindField('NAME').asString).asVariant=Null Then
                Result:= Result + Campos.FindField('NAME').asString + ' IS NULL AND'
              Else
                Result:= Result + ObtemValor(SQL.FindField(Campos.FindField('NAME').asString))+ ' AND ';
            End;
        End;
      Campos.Next;
    End;
  Campos.Close;
End;

Procedure TDMTemplate.RegistraExclusao(Tabela:String;SQL:TRxQuery);
Var
  Proximo,Chave,Valores,Usuario:String;
begin
  Chave:=''; Valores:='';
  Campos.TableName:=TABELA;
  Campos.Open;
  While Not Campos.Eof Do
    Begin
      If (Campos.FindField('VALCHECKS').asString='1') Then
        Begin
          Campos.Next;
          Proximo:='EOF';
          If Not Campos.Eof Then
            Begin
              Proximo:=Campos.FindField('VALCHECKS').asString;
              Campos.Prior;
            End;
          If (Proximo='EOF') or (Proximo<>'1') Then
            Begin
              Chave  := Chave + Campos.FindField('NAME').asString;
              If SQL.FindField(Campos.FindField('NAME').asString).asVariant=Null Then
                Valores := Valores + 'NULL'
              Else
                Valores := Valores + SQL.FindField(Campos.FindField('NAME').asString).asString;
              Break;
            End
          Else
            Begin
              Chave := Chave + Campos.FindField('NAME').asString+';';
              If SQL.FindField(Campos.FindField('NAME').asString).asVariant=Null Then
                Valores := Valores + 'NULL|'
              Else
                Valores := Valores + SQL.FindField(Campos.FindField('NAME').asString).asString+'|';
            End;
        End;
      Campos.Next;
    End;
  Campos.Close;
  If not SQLExclusao.Active Then
    SQLExclusao.Open;
  SQLExclusao.Append;
  SQLExclusaoEXCLA255CHAVE.Value    := Chave;
  SQLExclusaoEXCLA255VALOR.Value    := Valores;
  SQLExclusaoEXCLA60TABELA.Value    := Tabela;
  Usuario := SQLLocate('USUARIO','USUAICOD','USUAA60LOGIN',IntToStr(UsuarioCorrente));
  SQLExclusao.FieldByName('USUAA60LOGIN').Value  := Usuario;
  SQLExclusaoREGISTRO.Value         := Now;
  SQLExclusaoPENDENTE.Value         := 'S';
  SQLExclusao.Post;
  try
   SQLExclusao.ApplyUpdates;
   SQLExclusao.CommitUpdates;
  except
   on E:Exception do
     begin
       ShowMessage('Problemas ao gravar exclusão, ERRO: ' + E.Message);
       SQLExclusao.CancelUpdates;
     end;
  end;
End;

Function TDMTemplate.DigitVerifEAN(Cod:string) : string ;
Var Digito     : string[1] ;
    DAux       : Double ;
    Par,
    Impar : Integer ;
    Str_Aux : string ;
begin
  DigitVerifEAN := '' ;

  {***********  CODIGO REDUZIDO DE PRODUTOS ***********}
  if Length(Cod) = 3 Then
  begin
    Impar := StrtoInt(Copy(Cod,1,1)) +
             StrtoInt(Copy(Cod,3,1)) ;

    Par := StrtoInt(Copy(Cod,2,1)) ;

    DAux := (Par*3) + Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN8 ***********}
  if Length(Cod) = 7 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN13 ***********}
  if Length(Cod) = 12 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  DUN14 ***********}
  if Length(Cod) = 13 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) +
             StrtoInt(Copy(Cod,13,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Impar*3)+Par ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;
end ;

Function TDMTemplate.VerificaPonto(Valor:String):String;
var
  V:String;
Begin
  V:=Valor;
  if Pos(',',V) > 0 then
    V[Pos(',',V)] := '.' ;
  VerificaPonto:=V;
End;

Function TDMTemplate.ObtemValor(Field:TField):String;
Begin
  If (Field.Value <> Null) Then
    Case Field.DataType of
      ftInteger:
        Result:=Field.FieldName+'='+Field.asString;
      ftString,ftMemo:
        Result:=Field.FieldName+'="'+Field.asString+'"';
      ftDateTime:
        If POS('HORA',Field.FieldName)<>0 Then
          Result:=Field.FieldName+'="12/30/1899 '+FormatDateTime('hh:nn:ss',Field.asDateTime)+'"'
        Else
          Result:=Field.FieldName+'="'+FormatDateTime('mm/dd/yyyy hh:nn:ss',Field.asDateTime)+'"';
      ftFloat:
        If Frac(Field.asFloat)=0 Then
           Result:=Field.FieldName+'='+VerificaPonto(FloatToStr(Field.asFloat))
        Else
          Result:=Field.FieldName+'='+VerificaPonto(FormatFloat('#,##0.000',Field.asFloat));
     End
  Else
    Result:=Field.FieldName+'=NULL';
End;

procedure TDMTemplate.CodigoAutomatico(Tabela:String; DataSource:TDataSource;DataSet: TDataSet; CampoAutoIncremento : Integer; CampoID: Integer);
Var
  ID:String;
begin
  Case DataSet.Tag Of
    1:Begin
        DataSet.Fields[CampoAutoIncremento].Value:=
        ProximoCodigoUnico(Tabela,DataSet,DataSet.DataSource,CampoAutoIncremento);
      End;
    2:Begin
        DataSet.Fields[CampoAutoIncremento].Value:=
        ProximoCodigoPorEmpresa(Tabela,DataSet.Fields[CampoAutoIncremento].FieldName);
        ID:=Format('%.3d',[EmpresaCorrente])+Format('%.9d',[DataSet.Fields[CampoAutoIncremento].asInteger]);
        DataSet.Fields[CampoID].asString:=ID+DigitVerifEAN(ID);
      End;
    3:Begin
        DataSet.Fields[CampoAutoIncremento].Value:=
           ProximoCodigoPorEmpresaPorTerminal(Tabela,DataSet.Fields[CampoAutoIncremento].FieldName);
        ID :=Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.Fields[CampoAutoIncremento].asInteger]);
        ID := ID+DigitVerifEAN(ID);
        DataSet.Fields[CampoID].asString:= ID;
      End;
   End;
end;


function TDMTemplate.LocateByDisplayLabel(DataSet : TDataSet; DisplayLabel : string) : String;
var
  I : integer ;
begin
  Result := '' ;
  for I := 0 to DataSet.FieldCount-1 do
    if DataSet.Fields[I].DisplayLabel = DisplayLabel then
    begin
      Result := DataSet.Fields[I].FieldName ;
      Break ;
    end ;
end ;

function TDMTemplate.ProximoCodigoPorEmpresa(Tabela:String;Campo:String):Integer;
Begin
  If SQLTemplate.Active Then
    SQLTemplate.Close;
  SQLTemplate.SQL.Clear;
  SQLTemplate.SQL.ADD('Select MAX('+Campo+') as ProximoCodigo from '+Tabela);
  SQLTemplate.SQL.ADD('Where');
  SQLTemplate.SQL.ADD('EMPRICOD='+IntToStr(EmpresaCorrente));
  SQLTemplate.Open;
  If SQLTemplate.FindField('ProximoCodigo').asVariant <> Null Then
    Result := SQLTemplate.FindField('ProximoCodigo').asInteger + 1
  Else
    Result:=1;
end;

function TDMTemplate.ProximoCodigoPorEmpresaPorTerminal(Tabela:String;Campo:String):Integer;
Begin
  If SQLTemplate.Active Then
    SQLTemplate.Close;
  SQLTemplate.SQL.Clear;
  SQLTemplate.SQL.ADD('Select MAX('+Campo+') as ProximoCodigo from '+Tabela);
  SQLTemplate.SQL.ADD('Where');
  SQLTemplate.SQL.ADD('EMPRICOD  ='+IntToStr(EmpresaCorrente)+' and ');
  SQLTemplate.SQL.ADD('TERMICOD ='+IntToStr(TerminalCorrente));
  SQLTemplate.Open;
  If SQLTemplate.FindField('ProximoCodigo').asVariant<>Null Then
    Result:=SQLTemplate.FindField('ProximoCodigo').asInteger+1
  Else
    Result:=1;
end;

function TDMTemplate.ProximoCodigoUnico(Tabela:String; DataSet: TDataSet;MasterDataSource:TDataSource; CampoAutoIncremento : Integer):Integer;
var
  I : Integer;
begin
  If SQLTemplate.Active Then
    SQLTemplate.Close;
  SQLTemplate.SQL.Clear;
  SQLTemplate.DataSource := MasterDataSource;
  SQLTemplate.SQL.ADD('Select MAX('+ DataSet.Fields[CampoAutoIncremento].FieldName +') as ProximoCodigo from '+ Tabela);
  If CampoAutoIncremento > 0 then
    Begin
      SQLTemplate.SQL.ADD('Where');
      For I := 0 to CampoAutoIncremento -1 do
        begin
          If I< CampoAutoIncremento -1 Then
            SQLTemplate.SQL.ADD(DataSet.Fields[I].FieldName +'=:'+ DataSet.Fields[I].FieldName +' and')
          Else
            SQLTemplate.SQL.ADD(DataSet.Fields[I].FieldName +'=:'+ DataSet.Fields[I].FieldName);
          SQLTemplate.Params[I].DataType := DataSet.Fields[I].DataType;
        end;
    End;
  SQLTemplate.Open;
  If SQLTemplate.FindField('ProximoCodigo').asVariant<>Null Then
    Result:=SQLTemplate.FindField('ProximoCodigo').asInteger+1
  Else
    Result:=1;
end;

function TDMTemplate.ProximoCodigoUnicoDetalhe(Tabela:String; DataSet: TDataSet;MasterDataSource:TDataSource; CampoAutoIncremento : Integer):Integer;
var
  I : Integer;
  ContTag1: Integer;
  FK: Boolean;
  Query: TQuery;
begin
  ContTag1 := 0;
  FK := False;
  try
    FreeAndNil(Query);
    Query := TQuery.Create(Query);
    Query.DatabaseName := 'DB';
    Query.SQL.Text := 'Select MAX('+ TRXQuery(DataSet).Fields[CampoAutoIncremento].
      FieldName +') as ProximoCodigo from '+ Tabela;
    for i := CampoAutoIncremento + 1 to TRXQuery(DataSet).FieldCount do
    begin
      if TRXQuery(DataSet).Fields[i].Tag = 1 then
      begin
        FK := True;
        Break;
      end;
    end;
    if FK then
    begin
               Query.Sql.Add(' WHERE ');
      for i := CampoAutoIncremento + 1 to TRXQuery(DataSet).FieldCount -1 do
      begin
        if TRXQuery(DataSet).Fields[i].Tag = 1 then
        begin
          Inc (ContTag1);
          if ContTag1 > 1 then
            Query.Sql.Add(' AND ');
          Query.SQL.ADD(TRXQuery(DataSet).Fields[I].FieldName +' = '+
            TRXQuery(DataSet).Fields[I].AsString);
        end;
      end;
    end;
    Query.Open;
    If Query.FieldbyName('ProximoCodigo').asVariant<>Null Then
      Result:= Query.FieldByName('ProximoCodigo').asInteger + 1
    Else
      Result:=1;
  finally
    FreeAndNil(Query);
  end;
end;

function TDMTemplate.MontaChave(DataSet:TDataSet):String;
Var
  I:Integer;
begin
  If DataSet <> Nil Then
    Begin
      Result:='';
      If DataSet.Fields.Count>0 Then
        Begin
          For I:=0 To DataSet.Fields.Count -1 Do
            Begin
              If DataSet.Fields[I].Tag = 1 Then
                 Result := Result + ObtemValor(DataSet.FindField(DataSet.Fields[I].FieldName))+' and '+CHR(13);
            End;
          Result := Copy(Result,1,Length(Result)-6);
        End
      Else
        ShowMessage('Erro Interno: Colocar Tag = 1 nos Campos da Chave Primária!');
    End;
end;

function TDMTemplate.EncontraCampo(DataSet:TDataSet; Tag: Integer):Integer;
var
  I : Integer;
begin
  Result := -1;
  For I := 0 to DataSet.FieldCount -1 do
    If (I = DataSet.FieldCount -1) OR
       ((DataSet.Fields[I].Tag = Tag) and (DataSet.Fields[I+1].Tag <> Tag)) then
      begin
        Result := I;
        Break;
      end;
  If Result=-1 Then
    ShowMessage('Erro Interno: Falta de Tag = 1 na Chave Primária');
end;

function TDMTemplate.EncontraCampoDetalhe(DataSet:TDataSet):Integer;
var
  I : Integer;
begin
  Result := -1;
  For I := 0 to DataSet.FieldCount -1 do
    If (I = DataSet.FieldCount -1) OR
       ((DataSet.Fields[I].Tag = 1) and (DataSet.Fields[I+1].Tag <> 1)) then
      begin
        Result := I-1;
        Break;
      end;
  If Result=-1 Then
    ShowMessage('Erro Interno: Falta de Tag = 1 na Chave Primária');
end;

Function TDMTemplate.ProcuraRegistro(Tabela:String;Chave,Valores:Array of String;NumCampos:Integer):Boolean;
Var
  I:Integer;
Begin
  If SQLTemplate.Active Then
    SQLTemplate.Close;
  SQLTemplate.SQL.Clear;
  SQLTemplate.SQL.Add('Select * From ' + Tabela);
  SQLTemplate.FieldDefs.Update;
  SQLTemplate.SQL.ADD('Where');
  For I:=0 To NumCampos-1 Do
    If I<NumCampos-1 Then
      Case SQLTemplate.FieldDefs.Find(Chave[I]).DataType Of
        ftInteger:  SQLTemplate.SQL.ADD(Chave[I]+'='+Valores[I]+' and ');
        ftString:   SQLTemplate.SQL.ADD(Chave[I]+'="'+Valores[I]+'" and ');
        ftDate:     SQLTemplate.SQL.ADD(Chave[I]+'="'+FormatDateTime('mm/dd/yyyy',StrToDateTime(Valores[I]))+'" and ');
        ftDateTime: SQLTemplate.SQL.ADD(Chave[I]+'="'+FormatDateTime('mm/dd/yyyy hh:nn:ss',StrToDateTime(Valores[I]))+'" and ');
      End
    Else
      Case SQLTemplate.FieldDefs.Find(Chave[I]).DataType Of
        ftInteger: SQLTemplate.SQL.ADD(Chave[I]+'='+Valores[I]);
        ftString:  SQLTemplate.SQL.ADD(Chave[I]+'="'+Valores[I]+'"');
        ftDate:     SQLTemplate.SQL.ADD(Chave[I]+'="'+FormatDateTime('mm/dd/yyyy',StrToDateTime(Valores[I]))+'"');
        ftDateTime: SQLTemplate.SQL.ADD(Chave[I]+'="'+FormatDateTime('mm/dd/yyyy hh:nn:ss',StrToDateTime(Valores[I]))+'"');
      End;
  Try
    SQLTemplate.Open;
    If ABS(SQLTemplate.RecordCount)>0 Then
      Result:=True
    Else
      Begin
        Result:=False;
        SQLTemplate.Close;
      End;
  Except
     on e: Exception do
     begin
      ShowMessage('Valores ou nomes de colunas incorretos na função ProcuraRegistro com a tabela '+Tabela
      //+#13+E.Message
      );
      Result:=False;
    end;
  End;
End;

procedure TDMTemplate.DataModuleCreate(Sender: TObject);
var
  Params : TStringList;
  I : Integer;
  stlAlias: TStringList;
  Erro : boolean;
begin
//  CorLinhaDiferenteGrid := $00BFD8D8;
//  CorSelecaoGrid    := $00E0C8B0;
  FormSplash := TFormSplash.Create(Application);
  FormSplash.Show;
  FormSplash.lbDados.Caption := 'Abrindo Banco de Dados Principal...'; FormSplash.lbDados.Update;

  {if LoadAndParseMapFile then  #ver
  begin
    Application.OnException := GlobalExceptionHandler;
  end;
  }

  try
    DB.Connected := True;
  except
    Application.ProcessMessages;
  end;

  if not DB.Connected then
    begin
      {Nao Conectado}
      FormSplash.lbDados.Caption := 'Falha ao conectar no Banco de Dados!';
      FormSplash.lbDados.Update;
      sleep(2000);
      Application.Terminate;
      Halt;
    end
  else
    begin
      {Conectado}
      Params := TStringList.Create;
      PathAplicacao  := ExtractFilePath(Application.ExeName);
      PathRelatorios := PathAplicacao+'Temp';

      {Tradução de mensagens e labels cxGrid}
      cxSetResourceString(@ScxGridGroupByBoxCaption, 'Arraste aqui as colunas para agrupar');
      cxSetResourceString(@ScxGridNoDataInfoText, 'Sem dados para serem exibidos.');

      {Conectando com o DBExpress, utilizando dados do BDE TDataBase}
      {stlAlias := TStringList.Create;  #ver
      try
        DB.Session.GetAliasParams('Easy_Gestao',stlAlias);

        try
          Zdb.Connected := False;
          Zdb.Database  := stlAlias.Values['SERVER NAME'];
          if Zdb.Database = '' then
            Zdb.Database := 'D:\Automafour\Easy2Solutions\Gestao\Dados\Dados.FDB';
            
          Zdb.Connected := True;
        except
          on e: Exception do
            begin
              MessageDlg('Falha na conexão com o Zeus DBExpress!'+#13 + e.Message, mtError,[mbOK],0);
              showmessage(Zdb.Database);
            end;
        end;
      finally
        stlAlias.free;
      end;}
    end;
end;

procedure TDMTemplate.SQLExclusaoBeforePost(DataSet: TDataSet);
begin
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                CodigoAutomatico('EXCLUSAO', DSExclusao, DataSet, 2, 0);
  end;
end;

procedure TDMTemplate.SQLExclusaoNewRecord(DataSet: TDataSet);
begin
  DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
end;

procedure TDMTemplate.SQLExclusaoBeforeInsert(DataSet: TDataSet);
begin
  If SQLExclusao.Active Then SQLExclusao.Close;
  SQLExclusao.MacroByName('MFiltro').asString:=SQLExclusao.Fields[0].FieldName + ' IS NULL';
  SQLExclusao.Open;
end;

procedure TDMTemplate.AtualizaSaldoDiarioEstoque;
  function UltiDiaMes(Mes, Ano : string) : integer ;
  var
    Present : TDateTime;
    Data    : TDateTime;
    WAno,
    WMes,
    WDia     :  Word;
  begin
    if (Length(Mes) = 2) or (Length(Mes) = 1) then
      Present := StrToDate('01/' + Mes + '/' + Ano) ;

    if Length(Mes) > 2 then
      Present := StrToDate(Mes) ;

    DecodeDate(Present, WAno, WMes, WDia);
    Present := Present + (32 - WDia);
    DecodeDate(Present, WAno, WMes, WDia);
    Present := EncodeDate(WAno, WMes, 01 ) -1;
    DecodeDate(Present, WAno, WMes, WDia);
    UltiDiaMes := WDia ;
  end;
var
  Str : String;
  I,DiasSemSaldo,REG: Integer;
  Result : TModalResult;
  Dias : TStringList;
  UltimaData : TDateTime;
begin
  SQLProdutoSaldoDia.Close;
  SQLProdutoSaldoDia.MacroByName('MFiltro').Value := 'EMPRICOD = ' + IntToStr(EmpresaCorrente);
  SQLProdutoSaldoDia.Open;
  SQLProdutoSaldoDia.First;
  UltimaData := SQLProdutoSaldoDiaPSDIDDATA.AsDateTime;
  if (not SQLProdutoSaldoDia.IsEmpty) then
    begin
      if SQLProdutoSaldoDiaPSDIDDATA.AsDateTime < DataAtualizacaoEstoque then  
        begin
          DiasSemSaldo := 0;
          Dias := TStringList.Create;
          UltimaData := IncDay(UltimaData,1);
          while UltimaData <= DataAtualizacaoEstoque do
            begin
              Inc(DiasSemSaldo);
              Dias.Add(LongDayNames[DayOfWeek(UltimaData)]);
              UltimaData := IncDay(UltimaData,1);
            end;
          Result := Application.MessageBox(Pchar('Existem ' + IntToStr(DiasSemSaldo) + ' dias em que o saldo diário não foi atualizado...' + #13 +'Deseja atualizar os dias anteriores com o saldo de hoje ?' + #13 + #13 + 'Dias sem atualização: ' + #13 + Dias.Text),Pchar('Atualização do saldo diário'),MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION);
          case Result of
            IdYes : begin
                      DB.StartTransaction;
                      SQLProdutoSaldoAux.Open;
                      SQLTemplate.Close;
                      SQLTemplate.SQL.Clear;
                      SQLTemplate.SQL.Add('SELECT COUNT(*) as Total FROM PRODUTOSALDO WHERE EMPRICOD = ' + IntToStr(EmpresaCorrente));
                      SQLTemplate.Open;
                      UltimaData := SQLProdutoSaldoDiaPSDIDDATA.AsDateTime;
                      UltimaData := IncDay(UltimaData,1);
                      while UltimaData <= DataAtualizacaoEstoque do
                        begin
                          MakeWindow(SQLTemplate.FieldByName('Total').AsInteger,'Gerando Saldo Diário de Estoque do Dia : ' + DateToStr(UltimaData));
                          SQLProdutoSaldoAux.First;
                          REG := 0;
                          While not SQLProdutoSaldoAux.Eof do
                            begin
                              SQLProdutoSaldoDia.Append;
                              SQLProdutoSaldoDiaEMPRICOD.AsInteger   := SQLProdutoSaldoAuxEMPRICOD.AsInteger;
                              SQLProdutoSaldoDiaPRODICOD.AsInteger   := SQLProdutoSaldoAuxPRODICOD.AsInteger;
                              SQLProdutoSaldoDiaPSDIDDATA.AsString   := FormatDateTime('dd/mm/yyyy',UltimaData);
                              SQLProdutoSaldoDiaPSDIN3QTDE.AsFloat   := SQLProdutoSaldoAuxPSLDN3QTDE.AsFloat;
                              SQLProdutoSaldoDiaPENDENTE.AsString    := 'S';
                              SQLProdutoSaldoDiaREGISTRO.AsDateTime  := DataAtualizacaoEstoque;
                              SQLProdutoSaldoDia.Post;
                              SQLProdutoSaldoAux.Next;
                              SetProgress(REG);
                              Inc(REG);
                            end;
                          DestroyWindow;
                          UltimaData := IncDay(UltimaData,1);
                        end;
                      try
                        MakeWindowMessage('Gravando Saldo Diário');
                        SQLProdutoSaldoDia.ApplyUpdates;
                        DB.Commit;
                      except
                        SQLProdutoSaldoDia.CancelUpdates;
                        DB.Rollback;
                        DestroyWindow;
                      end;
                      DestroyWindow;
                    end;
            IdNo  : begin
                      Application.MessageBox('O sistema não pode ser iniciado sem gravar o saldo diário de estoque, porfavor verifique as configurações do sistema e tente novamente','Informação',MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
                      Application.Terminate;
                    end;
          end;
        end;
    end
  else
    begin
      if SQLProdutoSaldoDia.IsEmpty then
        begin
          SQLTemplate.Close;
          SQLTemplate.SQL.Clear;
          SQLTemplate.SQL.Add('SELECT COUNT(*) as Total FROM PRODUTOSALDO WHERE EMPRICOD = ' + IntToStr(EmpresaCorrente));
          SQLTemplate.Open;
          MakeWindow(SQLTemplate.FieldByName('Total').AsInteger,'Gerando Saldo Diário de Estoque...');
          DB.StartTransaction;
          SQLProdutoSaldoAux.Open;
          SQLProdutoSaldoAux.First;
          I := 1;
          While not SQLProdutoSaldoAux.Eof do
            begin
              SQLProdutoSaldoDia.Append;
              SQLProdutoSaldoDiaEMPRICOD.AsInteger   := SQLProdutoSaldoAuxEMPRICOD.AsInteger;
              SQLProdutoSaldoDiaPRODICOD.AsInteger   := SQLProdutoSaldoAuxPRODICOD.AsInteger;
              SQLProdutoSaldoDiaPSDIDDATA.AsString   := FormatDateTime('dd/mm/yyyy',DataAtualizacaoEstoque);
              SQLProdutoSaldoDiaPSDIN3QTDE.AsFloat   := SQLProdutoSaldoAuxPSLDN3QTDE.AsFloat;
              SQLProdutoSaldoDiaPENDENTE.AsString    := 'S';
              SQLProdutoSaldoDiaREGISTRO.AsDateTime  := DataAtualizacaoEstoque;
              SQLProdutoSaldoDia.Post;
              SQLProdutoSaldoAux.Next;
              SetProgress(I);
              Inc(I);
            end;
          DestroyWindow;
          try
            MakeWindowMessage('Gravando saldo diário');
            SQLProdutoSaldoDia.ApplyUpdates;
            DB.Commit;
          except
            SQLProdutoSaldoDia.CancelUpdates;
            DB.Rollback;
            DestroyWindow;
            Application.Terminate;
          end;
          DestroyWindow;
        end;
    end;
end;

function TDMTemplate.SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind : string) : string ;
var
  MyQuery : TQuery ;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TQuery.Create(nil);
    if DataBaseName = '' then
      MyQuery.DatabaseName := 'DB'
    else
      MyQuery.DatabaseName := self.DataBaseName;
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

function TDMTemplate.DateTimeToUNIXTime(DelphiTime : TDateTime): LongWord;
begin
  Result := Round((DelphiTime - 25569) * 86400);
end;

function TDMTemplate.UNIXTimeToDateTime(UnixTime: LongWord): TDateTime;
begin
  Result := (UnixTime / 86400) + 25569;
end;

procedure TDMTemplate.DataModuleDestroy(Sender: TObject);
begin
  db.Connected  := False;
end;

end.
