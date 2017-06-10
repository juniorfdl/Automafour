unit RelatorioTemplate;

interface

uses
  DbiProcs, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Db, DBTables, StdCtrls, Buttons, Mask, ToolEdit,
  Placemnt, Printers, ConerBtn, ExtCtrls, DBCtrls, RxLookup, jpeg, ImgList,
  UCrpe32, RxQuery, RXCtrls, VarSys, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;
type
  TFormRelatorioTEMPLATE = class(TForm)
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    SQLEmpresa: TQuery;
    DSSQLEmpresa: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    Progresso: TProgressBar;
    FormStorageTemplate: TFormStorage;
    SQLEmpresaCodNomeEmpresaCalcField: TStringField;
    BatchMove: TBatchMove;
    ScrollBox: TScrollBox;
    PanelCentro: TPanel;
    BtnVisualizar: TSpeedButton;
    EmpresaGroup: TGroupBox;
    Label1: TLabel;
    IncluirEmpresa: TSpeedButton;
    ExcluirEmpresa: TSpeedButton;
    Label2: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    ListaEmpresas: TListBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LblTituloTela: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TblTemporariaAfterPost(DataSet: TDataSet);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure SQLEmpresaCalcFields(DataSet: TDataSet);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure IncluirEmpresaClick(Sender: TObject);
    procedure ExcluirEmpresaClick(Sender: TObject);
  private
    { Private declarations }
    NomeInd, CampoInd, TipoInd : string ;
    Pos1,Pos2                  : integer ;
  public
    { Public declarations }
    procedure BatchExec(Query : TQuery; Table : TTable) ;
    function  SQLDeLista(Combo:TRxDbLookupCombo; Lista:TListBox; Aspas, TabelaNaQuery, CampoNaQuery:string) : String ;
    procedure AjustaCaminhoCrystal();
    procedure ListaTerminal(Lista:TRxCheckListBox;Empresa:String);
    procedure ListaSeries(Lista:TRxCheckListBox;Empresa:String);
    function  MontaSQLdeListaTerminal(Lista:TRxCheckListBox) : String;
    function  MontaSQLdeListaSeries(Lista:TRxCheckListBox) : String;

    function  TerminaisSelecionados(ListaBox : TRxCheckListBox) : String;
    function  SetaParametrosCrystalReport(ReportName,ReportTitle : String; Report : TCrpe) : Boolean;
  end;

var
  FormRelatorioTEMPLATE: TFormRelatorioTEMPLATE;

implementation

uses UnitLibrary, DataModulo, FormResources, DataModuloTemplate;

{$R *.DFM}

//Fabiano

function TFormRelatorioTEMPLATE.TerminaisSelecionados(ListaBox : TRxCheckListBox) : String;
Var I : Integer;
begin
  Result := '';
  for I := 0 to ListaBox.Items.Count - 1 do
      if ListaBox.Checked[I] then
         Result := Result + ListaBox.Items.Strings[I] + ', ';

  if Result <> '' then
     begin
        for I := Length(Result) downto 0 do
            if Result[I] = ',' then
               begin
                  Result := Copy(Result, 0, I -1 );
                  Break;
               end;
     end;
end;

//
procedure TFormRelatorioTEMPLATE.AjustaCaminhoCrystal();
var
 I : Integer;
begin
  for I:= 0 to ComponentCount -1 do
    begin
      if (Components[i].ClassType = Tcrpe) then
        begin
        TCrpe(Components[i]).Tables.Retrieve;
        TCrpe(Components[i]).Tables[0].Path := Dm.PathRelatorios;
        if TCrpe(Components[i]).Tables[0].Test then
          begin
           TCrpe(Components[i]).Tables.Propagate := True;
           TCrpe(Components[i]).Tables.Send;
          end
        else
          begin
            Informa('Verifique as configurações do Alias para relatórios!');
            Break;
            Exit;
          end;
        end;
    end;

end;
procedure TFormRelatorioTEMPLATE.FormCreate(Sender: TObject);
var i      : integer ;
    Tabela : TObject;
begin
  LblTituloTela.Caption := Caption ;
  De.Date  := Date ;
  Ate.Date := Date ;
  if (not UsuarioMaster) and (Tag = 0) then
    begin
      // Filtra Empresa
      SQLEmpresa.Close;
      SQLEmpresa.SQL.Clear;
      SQLEmpresa.SQL.Add('SELECT * FROM EMPRESA WHERE EMPRICOD = ' + IntToStr(EmpresaCorrente));
      SQLEmpresa.SQL.Add('Order BY EMPRICOD');
      ComboEmpresa.DisplayEmpty := 'Selecione uma Empresa...';
    end;
  SQLEmpresa.Open;
  if (not UsuarioMaster) and (Tag = 0) then
    ComboEmpresa.KeyValue := SQLEmpresaEMPRICOD.Value;

  if (UsuarioMaster) and (sqlempresa.RecordCount = 1) then
    ComboEmpresa.KeyValue := SQLEmpresaEMPRICOD.Value;

  //Abrir tabelas automaticamente
  {for i := 0 to ComponentCount - 1 do
    begin
      if (Components[i].ClassType = TTable) then
        if (Components[i] as TTable).Tag <> 1 then
        begin
          if (Components[i] as TTable).Name <> 'TblTemporaria' then
            (Components[i] as TTable).Active  := true
          else
            (Components[i] as TTable).Active  := false ;
        end ;
    end ;}
end;

procedure TFormRelatorioTEMPLATE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    TblTemporaria.Close ;
  except
    Application.ProcessMessages;
  end ;

  Action := CAFree ;
end;

procedure TFormRelatorioTEMPLATE.ExecutarBtnClick(Sender: TObject);
var i       : integer ;
    NomeArq : string ;
begin
  FormStorageTemplate.IniFileName := Application.Title + '.ini' ;
  FormStorageTemplate.IniSection  := Name ;
  FormStorageTemplate.Active      := true ;

  if not UsuarioMaster then
    if (ComboEmpresa.Value = 'Todas') and (ListaEmpresas.Items.Count = 0) then
      begin
        Informa('Por favor selecione uma empresa!');
        ComboEmpresa.SetFocus;
        Abort;
      end;
  if De.Date > Ate.Date then
  begin
    Informa('A data inicial deve ser menor ou igual a final!');
    De.Setfocus;
    Abort;
  end ;

  if TblTemporaria.TableName <> '' then
  begin
    TblTemporaria.Close ;
    try
      TblTemporaria.DeleteTable ;
      TblTemporaria.CreateTable ;
    except
      on E:Exception do
        begin
          if pos('Table is busy',E.Message) > 0 then
            Informa('A tabela já está sendo usada por outro relatório, por favor feche todos relatórios e tente novamente.');
          TblTemporaria.CreateTable ;
        end;
    end ;
    TblTemporaria.Open ;
    Progresso.Position := 0 ;
  end ;
end;

procedure TFormRelatorioTEMPLATE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return : Perform(WM_NextDlgCtl,0,0) ;
  end ;
end;

procedure TFormRelatorioTEMPLATE.TblTemporariaAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(TblTemporaria.handle) ;
end;

procedure TFormRelatorioTEMPLATE.BtnFecharTelaClick(Sender: TObject);
begin
  Close ;
end;

procedure TFormRelatorioTEMPLATE.SQLEmpresaCalcFields(DataSet: TDataSet);
begin
  SQLEmpresaCodNomeEmpresaCalcField.Value := SQLEmpresaEMPRICOD.AsString + '-' +
                                             SQLEmpresaEMPRA60NOMEFANT.AsString ;
end;

procedure TFormRelatorioTEMPLATE.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  PanelCentro.Left := ((Sender as TForm).Width - PanelCentro.Width) Div 2 ;
  PanelCentro.Top  := ((Sender as TForm).Height - PanelCentro.Height) Div 2 ;

  BtnFecharTela.Left := (Sender as TForm).Width - (BtnFecharTela.Width + 15) ;
  BtnFecharTela.Update;
end;

procedure TFormRelatorioTEMPLATE.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized ;
end;

procedure TFormRelatorioTEMPLATE.BatchExec(Query : TQuery; Table : TTable) ;
begin
  BatchMove.Source      := Query ;
  BatchMove.Destination := Table ;
  BatchMove.Execute ;
end ;

procedure TFormRelatorioTEMPLATE.IncluirEmpresaClick(Sender: TObject);
var i : integer ;
begin
  if ComboEmpresa.Value <> 'Todas' then
  begin
    for i := 0 to ListaEmpresas.Items.Count-1 do
      if ListaEmpresas.Items.Strings[i] = ComboEmpresa.Text then
        exit ;

    ListaEmpresas.Items.Add(ComboEmpresa.Text) ;
  end ;
end;

procedure TFormRelatorioTEMPLATE.ExcluirEmpresaClick(Sender: TObject);
begin
  if ListaEmpresas.Items.Count > 0 then
    ListaEmpresas.Items.Delete(ListaEmpresas.ItemIndex) ;
end;

function  TFormRelatorioTEMPLATE.SQLDeLista(Combo:TRxDbLookupCombo; Lista:TListBox; Aspas, TabelaNaQuery, CampoNaQuery:string) : String ;
var i   : integer ;
    CampoEmpresa,
    SQL : string ;
begin
  if CampoNaQuery = '' then
    CampoEmpresa := Combo.LookupField
  else
    CampoEmpresa := CampoNaQuery;

  if TabelaNaQuery <> '' then
    TabelaNaQuery := TabelaNaQuery + '.' ;

  if Lista.Items.Count = 0 then
  begin
    if (Combo.Text <> '') and (Combo.Text <> 'Todas')then
      SQL := TabelaNaQuery + CampoEmpresa + ' = ' + Aspas + Combo.Value + Aspas
    else
      SQL := '0=0' ;
  end
  else begin
    SQL := '' ;
    for I:=0 To Lista.Items.Count-1 Do
    begin
      if I = Lista.Items.Count-1 Then
        SQL := SQL + TabelaNaQuery + CampoEmpresa + ' = ' + Aspas + Copy(Lista.Items[I],1,Pos('-',Lista.Items[I]) - 1) + Aspas
      else
        SQL := SQL + TabelaNaQuery + CampoEmpresa + ' = ' + Aspas + Copy(Lista.Items[I],1,Pos('-',Lista.Items[I]) - 1) + Aspas + ' or '
    end ;
  end ;

  SQLDeLista := SQL ;
end ;
procedure TFormRelatorioTEMPLATE.ListaTerminal(Lista:TRxCheckListBox;Empresa:String);
{=========================================================
== ESTA FUNCAO ADCIONA EM UM LISTBOX OS TERMINAIS       ==
== DA EMPRESA SELECIONADA.                              ==
== PARA UTILIZA-LA BASTA ADICIONAR NO FORM UM LISTBOX   ==
== E SETAR A EMPRESA.                                   ==
== AUTOR: JONAS LOSS.                                   ==
== CRIAÇÃO: 20/03/2003.                                 ==
==========================================================}
var
  QueryTerminal : TRxQuery;
  I : Integer;
begin
  QueryTerminal := TRxQuery.Create(DM);
  QueryTerminal.DatabaseName := 'DB';
  QueryTerminal.Close;
  QueryTerminal.SQL.Clear;
  QueryTerminal.SQL.Add('SELECT TERMICOD, TERMA60DESCR FROM TERMINAL');
  QueryTerminal.SQL.Add(' WHERE TERMCTIPO = ''C'' ');

  if Empresa <> '' then
    QueryTerminal.SQL.Add(' and EMPRICOD = ' + Empresa);

  if FileExists('Terminal.cfg') then
    QueryTerminal.SQL.Add(' and ECFA13ID <> ''''');

  QueryTerminal.Open;
  if not QueryTerminal.IsEmpty then
    begin
      QueryTerminal.First;
      Lista.Items.Clear;
      I := 0;
      while not QueryTerminal.Eof do
        begin
          Lista.Items.Add(QueryTerminal.FieldByName('TERMICOD').AsString + ' - ' + QueryTerminal.FieldByName('TERMA60DESCR').AsString);
          Lista.Checked[I] := True;
          Inc(I);
          QueryTerminal.Next;
        end;
    end
  else
    begin
      Application.MessageBox(Pchar('Não existe nehum terminal cadastrado para a empresa selecionada! ' + #13 +'Empresa: ' + Empresa),'Atenção',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONEXCLAMATION);
    end;
  QueryTerminal.Close;  
  QueryTerminal.Free;  
end;

function TFormRelatorioTEMPLATE.MontaSQLdeListaTerminal(Lista:TRxCheckListBox) : String;
{=========================================================
== ESTA FUNCAO RETORNA UM SQL COM O ARRAY DE TERMINAIS  ==
== SELECIONADOS A SEREM FILTRADOS NO RELATORIO.         ==
== PARA UTILIZA-LA BASTA CRIAR UMA MACRO NO SQL E       ==
== ADICIONAR O RESULTADO NESTA MACRO.                   ==
== AUTOR: JONAS LOSS.                                   ==
== CRIAÇÃO: 20/03/2003.                                 ==
==========================================================}
var
 I : integer;
 SQL : String;
begin
  SQL := '';
  for i := 0 to Lista.Items.Count - 1 do
    begin
      if Lista.Checked[i] then
        if SQL = '' then
          SQL := SQL + Copy(Lista.Items[i],1,Pos('-',Lista.Items[i])- 2)
        else
          SQL := SQL + ',' + Copy(Lista.Items[i],1,Pos('-',Lista.Items[i])- 2);
    end;
    Result := '(' + SQL + ')';
end;

function TFormRelatorioTEMPLATE.SetaParametrosCrystalReport(ReportName,ReportTitle : String; Report : TCrpe) : Boolean;
begin
  Result := False;
  try
    if FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\' + ReportName) then
      begin
        Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\' + ReportName;
        Report.ReportTitle       := ReportTitle;
        Report.WindowStyle.Title := ReportTitle;
        Result := True;
      end
    else
      begin
        Informa('Report não Encontrado!');
        Result := False;
      end;
  except
      Informa('Problemas no Componente Report!');
      Result := False;
  end;    
end;

procedure TFormRelatorioTEMPLATE.ListaSeries(Lista:TRxCheckListBox;Empresa:String);
{=========================================================
== ESTA FUNCAO ADCIONA EM UM LISTBOX as SERIES       ==
== DA EMPRESA SELECIONADA.                              ==
== PARA UTILIZA-LA BASTA ADICIONAR NO FORM UM LISTBOX   ==
== E SETAR A EMPRESA.                                   ==
== AUTOR: JUDIMAR BRESCANSIN                            ==
== CRIAÇÃO: 20/03/2003.                                 ==
==========================================================}
var
  QueryTerminal : TRxQuery;
  I : Integer;
begin
  QueryTerminal := TRxQuery.Create(DM);
  QueryTerminal.DatabaseName := 'DB';
  QueryTerminal.Close;
  QueryTerminal.SQL.Clear;
  QueryTerminal.SQL.Add('SELECT seria5cod FROM SERIE');

  if Empresa <> '' then
    QueryTerminal.SQL.Add(' WHERE EMPRICOD = ' + Empresa);

  QueryTerminal.Open;
  if not QueryTerminal.IsEmpty then
    begin
      QueryTerminal.First;
      Lista.Items.Clear;
      I := 0;
      while not QueryTerminal.Eof do
        begin
          Lista.Items.Add(QueryTerminal.FieldByName('SERIA5COD').AsString );
          Lista.Checked[I] := True;
          Inc(I);
          QueryTerminal.Next;
        end;
    end
  else
    begin
      Application.MessageBox(Pchar('Não existe nenhuma serie cadastrada para a empresa selecionada! ' + #13 +'Empresa: ' + Empresa),'Atenção',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONEXCLAMATION);
    end;
  QueryTerminal.Close;
  QueryTerminal.Free;
end;

function TFormRelatorioTEMPLATE.MontaSQLdeListaSeries(Lista:TRxCheckListBox) : String;
{=========================================================
== ESTA FUNCAO RETORNA UM SQL COM O ARRAY DE TERMINAIS  ==
== SELECIONADOS A SEREM FILTRADOS NO RELATORIO.         ==
== PARA UTILIZA-LA BASTA CRIAR UMA MACRO NO SQL E       ==
== ADICIONAR O RESULTADO NESTA MACRO.                   ==
== AUTOR: JONAS LOSS.                                   ==
== CRIAÇÃO: 20/03/2003.                                 ==
==========================================================}
var
 I : integer;
 SQL : String;
begin
  SQL := '';
  for i := 0 to Lista.Items.Count - 1 do
    begin
      if Lista.Checked[i] then
        if SQL = '' then
          SQL := SQL + ''''+Lista.Items[i]+''''
        else
          SQL := SQL + ',' + ''''+Lista.Items[i]+'''';
    end;
    Result := '(' + SQL + ')';
end;


end.
