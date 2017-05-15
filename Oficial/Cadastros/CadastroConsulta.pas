unit CadastroConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, DBLists, FormResources, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppStrtch,
  ppRichTx, ppCache, ppBands, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroConsulta = class(TFormCadastroTEMPLATE)
    SQLTemplateCONSA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCONSICOD: TIntegerField;
    SQLTemplateCONSA60DESCR: TStringField;
    SQLTemplateCONSA255TABELAS: TStringField;
    SQLTemplateCONSA255CAMPOS: TStringField;
    SQLTemplateCONSA255JOINS: TStringField;
    SQLTemplateCONSA255ORDEM: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BtnAddTabela: TSpeedButton;
    BtnDelTabela: TSpeedButton;
    GroupBox1: TGroupBox;
    ComboTabela: TComboBox;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboJoin1: TComboBox;
    ComboJoin2: TComboBox;
    BtnAddJoin: TSpeedButton;
    BtnDelJoin: TSpeedButton;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    ComboFiltro: TComboBox;
    ComboOperacao: TComboBox;
    BtnAddFiltro: TSpeedButton;
    BtnDelFiltro: TSpeedButton;
    BtnParenteses: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox4: TGroupBox;
    ComboOrdenar: TComboBox;
    BtnAddOrdem: TSpeedButton;
    BtnDelOrdem: TSpeedButton;
    GroupBox5: TGroupBox;
    ComboCampos: TComboBox;
    BtnAddCampo: TSpeedButton;
    BtnDelCampo: TSpeedButton;
    Button4: TRxSpeedButton;
    Button5: TRxSpeedButton;
    Button6: TRxSpeedButton;
    TabSheet5: TTabSheet;
    DBGrid1: TDBGrid;
    Button7: TRxSpeedButton;
    SQLConsulta: TRxQuery;
    DSSQLConsulta: TDataSource;
    DatabaseItems: TDatabaseItems;
    DatabaseItemsNAME: TStringField;
    DBMemoTabelas: TDBMemo;
    TableItems: TTableItems;
    TableItemsNAME: TStringField;
    DBMemoJoins: TDBMemo;
    DBMemoFiltros: TDBMemo;
    DBMemoCampos: TDBMemo;
    DBMemoOrdem: TDBMemo;
    PanelAniversario: TPanel;
    LIntervalo: TLabel;
    CDI: TComboBox;
    CMI: TComboBox;
    CDF: TComboBox;
    CMF: TComboBox;
    PanelValor: TPanel;
    Label7: TLabel;
    LabelE: TLabel;
    EditValor1: TMaskEdit;
    EditValor2: TMaskEdit;
    MalaDiretaCliente: TMenuItem;
    TblMalaDiretaCli: TTable;
    TblMalaDiretaCliCLIEA13ID: TStringField;
    TblMalaDiretaCliCLIEA60RAZAOSOC: TStringField;
    TblMalaDiretaCliCLIEA60ENDRES: TStringField;
    TblMalaDiretaCliCLIEA60BAIRES: TStringField;
    TblMalaDiretaCliCLIEA60CIDRES: TStringField;
    TblMalaDiretaCliCLIEA2UFRES: TStringField;
    TblMalaDiretaCliCLIEA8CEPRES: TStringField;
    TblMalaDiretaCliCONTATO: TStringField;
    ListagemdeCliente1: TMenuItem;
    SQLTemplateCONSA255FILTROS: TStringField;
    TblMalaDiretaCliCLIEA15FONE: TStringField;
    MnEnviarEmail: TMenuItem;
    MalaDireta1: TMenuItem;
    ReportMalaDireta: TppReport;
    PipeMalaDireta: TppDBPipeline;
    DSTblMalaDiretaCli: TDataSource;
    ppDetailBand1: TppDetailBand;
    ppTextoMalaDireta: TppRichText;
    TblMalaDiretaCliCLIEA30OUTROSDOC: TStringField;
    TblMalaDiretaCliCLIEDNASC: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnAddTabelaClick(Sender: TObject);
    procedure DBMemoTabelasDblClick(Sender: TObject);
    procedure BtnDelTabelaClick(Sender: TObject);
    procedure DBMemoTabelasClick(Sender: TObject);
    procedure ComboOperacaoChange(Sender: TObject);
    procedure ComboJoin2Change(Sender: TObject);
    procedure BtnAddJoinClick(Sender: TObject);
    procedure DBMemoJoinsDblClick(Sender: TObject);
    procedure DBMemoJoinsClick(Sender: TObject);
    procedure BtnDelJoinClick(Sender: TObject);
    procedure DBMemoFiltrosClick(Sender: TObject);
    procedure DBMemoFiltrosDblClick(Sender: TObject);
    procedure BtnAddFiltroClick(Sender: TObject);
    procedure BtnDelFiltroClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BtnParentesesClick(Sender: TObject);
    procedure ComboCamposChange(Sender: TObject);
    procedure DBMemoCamposClick(Sender: TObject);
    procedure DBMemoCamposDblClick(Sender: TObject);
    procedure BtnAddCampoClick(Sender: TObject);
    procedure BtnDelCampoClick(Sender: TObject);
    procedure BtnAddOrdemClick(Sender: TObject);
    procedure BtnDelOrdemClick(Sender: TObject);
    procedure ComboOrdenarChange(Sender: TObject);
    procedure DBMemoOrdemClick(Sender: TObject);
    procedure DBMemoOrdemDblClick(Sender: TObject);
    procedure CMIChange(Sender: TObject);
    procedure CMFChange(Sender: TObject);
    procedure MalaDiretaClienteClick(Sender: TObject);
    procedure ComboTabelaChange(Sender: TObject);
    procedure ListagemdeCliente1Click(Sender: TObject);
    procedure MnEnviarEmailClick(Sender: TObject);
    procedure MalaDireta1Click(Sender: TObject);
  private
    { Private declarations }
    Function  VerificaPonto(Valor:String):string ;
    Function  ValorCampo(Combo:TComboBox;Valor:String):String;
    Procedure CarregaCampos(Combo:TComboBox);
    Procedure ExecutarConsulta;
    procedure MontaBancoMala ;
  public
    { Public declarations }
  end;

var
  FormCadastroConsulta: TFormCadastroConsulta;

implementation

uses DataModulo, UnitLibrary, TelaEnvioEmailGeral;

{$R *.dfm}
Function TFormCadastroConsulta.VerificaPonto(Valor:String):string ;
var
  V:String;
Begin
  V:=Valor;
  if Pos(',',V) > 0 then
  V[Pos(',',V)] := '.' ;
  VerificaPonto:=V;
End;
Function TFormCadastroConsulta.ValorCampo(Combo:TComboBox;Valor:String):String;
Begin
  DM.SQLTemplate.SQL.Text:='Select * From '+Copy(Combo.Text,1,POS('.',Combo.Text)-1);
  DM.SQLTemplate.FieldDefs.Clear;
  DM.SQLTemplate.FieldDefs.Update;
  Case DM.SQLTemplate.FieldDefs.Find(Copy(Combo.Text,POS('.',Combo.Text)+1,Length(Combo.Text))).DataType Of
    ftString,
    ftMemo : Result := '"'+Valor+'"';
    ftDateTime : Result := '"'+FormatDateTime('mm/dd/yyyy hh:nn:ss',StrToDate(Valor))+'"';
  Else
    Result := VerificaPonto(Valor);
  End;
End;
Procedure TFormCadastroConsulta.CarregaCampos(Combo:TComboBox);
Var
  I,J:Integer;
Begin
  Combo.Items.Clear;
  J:=1;
  For I:=1 To Length(SQLTemplateCONSA255TABELAS.AsString) Do
    Begin
      If (SQLTemplateCONSA255TABELAS.asString[I]=',') or (I = Length(SQLTemplateCONSA255TABELAS.asString)) Then
        Begin
          If I = Length(SQLTemplateCONSA255TABELAS.asString) Then
            TableItems.TableName:=Copy(SQLTemplateCONSA255TABELAS.asString,J,I-J+1)
          Else
            TableItems.TableName:=Copy(SQLTemplateCONSA255TABELAS.asString,J,I-J);
          J:=I+4;
          TableItems.Open;
          TableItems.First;
          While Not TableItems.Eof Do
            Begin
              Combo.Items.Add(TableItems.TableName+'.'+TableItemsNAME.AsString);
              TableItems.Next;
            End;
          TableItems.Close;
        End;
    End;
End;
Procedure TFormCadastroConsulta.ExecutarConsulta;
Begin
  SQLConsulta.Close;
  If Trim(SQLTemplateCONSA255CAMPOS.asString)<>'' Then
    SQLConsulta.MacroByName('MCampos').asString  := SQLTemplateCONSA255CAMPOS.asString
  Else
    Begin
      ShowMessage('Você não adicionou campos ao resultado!');
      Exit;
    End;
  If Trim(SQLTemplateCONSA255TABELAS.asString)<>'' Then
    SQLConsulta.MacroByName('MTabelas').asString := SQLTemplateCONSA255TABELAS.asString
  Else
    Begin
      ShowMessage('Você não adicionou Tabelas á consulta!');
      Exit;
    End;
  If (POS(',',SQLTemplateCONSA255TABELAS.asString)<>0) AND (Trim(SQLTemplateCONSA255JOINS.asString)<>'') Then
    SQLConsulta.MacroByName('MJoins').asString   := SQLTemplateCONSA255JOINS.asString
  Else
    Begin
      If (POS(',',SQLTemplateCONSA255TABELAS.asString)<>0) Then
        Begin
          ShowMessage('Você tem mais de uma tabela e não fez joins!');
          Exit;
        End
      Else
        SQLConsulta.MacroByName('MJoins').asString := '0=0';
    End;
  If Trim(SQLTemplateCONSA255FILTROS.asString)<>'' Then
    SQLConsulta.MacroByName('MFiltros').asString := SQLTemplateCONSA255FILTROS.asString
  Else
    SQLConsulta.MacroByName('MFiltros').asString := '0=0';
  If Trim(SQLTemplateCONSA255ORDEM.asString)<>'' Then
    SQLConsulta.MacroByName('MOrdem').asString := 'order by '+ #13#10 + SQLTemplateCONSA255ORDEM.asString
  Else
    SQLConsulta.MacroByName('MOrdem').asString := '';
  //ShowMessage(SQLConsulta.RealSQL.Text);
  SQLConsulta.Open;
End;
procedure TFormCadastroConsulta.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CONSULTA';
  DatabaseItems.Open;
  DatabaseItems.First;
  ComboTabela.Items.Clear;
  While Not DatabaseItems.Eof Do
    Begin
      ComboTabela.Items.Add(DatabaseItemsNAME.asString);
      DatabaseItems.Next;
    End;
  ComboTabela.ItemIndex := -1;

{  if (Application.Title <> 'Gestao Loja') then
  begin
    MalaDiretaCliente.Visible := false ;
  end ;}
end;

procedure TFormCadastroConsulta.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name = 'Button3' Then
    Begin
      PagePrincipal.ActivePage := PagePrincipal.Pages[2];
      CarregaCampos(ComboJoin1);
      ComboJoin2.Items:=ComboJoin1.Items;
    End;
  If (Sender as TRxSpeedButton).Name = 'Button4' Then
    Begin
      PagePrincipal.ActivePage := PagePrincipal.Pages[3];
      CarregaCampos(ComboFiltro);
    End;
  If (Sender as TRxSpeedButton).Name = 'Button5' Then
     Begin
       PagePrincipal.ActivePage := PagePrincipal.Pages[4];
       CarregaCampos(ComboCampos);
     End;
  If (Sender as TRxSpeedButton).Name = 'Button6' Then
    Begin
      PagePrincipal.ActivePage := PagePrincipal.Pages[5];
      CarregaCampos(ComboOrdenar);
    End;
  If (Sender as TRxSpeedButton).Name = 'Button7' Then
    Begin
      PagePrincipal.ActivePage := PagePrincipal.Pages[6];
      ExecutarConsulta;
    End;
end;

procedure TFormCadastroConsulta.BtnAddTabelaClick(Sender: TObject);
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) and
     (DBMemoTabelas.Lines.IndexOf(ComboTabela.Text+', ')=-1) and
     (DBMemoTabelas.Lines.IndexOf(ComboTabela.Text)=-1) Then
    Begin
      If Trim(SQLTemplateCONSA255TABELAS.asString)='' Then
        SQLTemplateCONSA255TABELAS.asString := ComboTabela.Text
      Else
        SQLTemplateCONSA255TABELAS.asString := SQLTemplateCONSA255TABELAS.asString + ', ' + #13#10 + ComboTabela.Text;
      ComboTabela.ItemIndex:=-1;
      BtnAddTabela.Enabled := False;
    End;
end;

procedure TFormCadastroConsulta.DBMemoTabelasDblClick(Sender: TObject);
begin
  inherited;
  BtnDelTabela.Enabled := DBMemoTabelas.SelText <> '';
end;

procedure TFormCadastroConsulta.BtnDelTabelaClick(Sender: TObject);
Var
  Conteudo:String;
  Posicao:Integer;
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) Then
    Begin
      Conteudo := SQLTemplateCONSA255TABELAS.asString;
      Posicao  := POS(DBMemoTabelas.SelText,Conteudo);
      If (Posicao = 1) OR ((Posicao + DBMemoTabelas.SelLength -1) <> Length(Conteudo)) Then
        Delete(Conteudo,Posicao,DBMemoTabelas.SelLength + 2)
      Else
        Delete(Conteudo,Posicao - 4,DBMemoTabelas.SelLength + 4);
      SQLTemplateCONSA255TABELAS.asString := Conteudo;
      BtnDelTabela.Enabled := False;
    End;
end;

procedure TFormCadastroConsulta.DBMemoTabelasClick(Sender: TObject);
begin
  inherited;
  BtnDelTabela.Enabled := False;
end;

procedure TFormCadastroConsulta.ComboOperacaoChange(Sender: TObject);
begin
  inherited;
  If (Sender is TComboBox) and ((Sender as TComboBox).Name='ComboOperacao') Then
    Begin
      LabelE.Visible     := (ComboOperacao.ItemIndex = 5);
      EditValor2.Visible := (ComboOperacao.ItemIndex = 5);
      PanelValor.Visible       := (ComboOperacao.ItemIndex <> 8);
      PanelAniversario.Visible := (ComboOperacao.ItemIndex = 8);
    End;
  BtnAddFiltro.Enabled :=
  (ComboFiltro.ItemIndex<>-1) and
  (ComboOperacao.ItemIndex<>-1) and
  ((ComboOperacao.ItemIndex=8) or ((EditValor1.Text<>'') and ((ComboOperacao.ItemIndex<>5) or (EditValor2.Text<>'')))) and
  ((ComboOperacao.ItemIndex<>8) or ((CDI.ItemIndex<>-1) and (CMI.ItemIndex<>-1) and (CDF.ItemIndex<>-1) and (CMF.ItemIndex<>-1)));
end;

procedure TFormCadastroConsulta.ComboJoin2Change(Sender: TObject);
begin
  inherited;
  BtnAddJoin.Enabled := (ComboJoin1.ItemIndex<>-1) and (ComboJoin2.ItemIndex<>-1);
end;

procedure TFormCadastroConsulta.BtnAddJoinClick(Sender: TObject);
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) and
     (DBMemoJoins.Lines.IndexOf(ComboJoin1.Text+'='+ComboJoin2.Text+' AND ')=-1) and
     (DBMemoJoins.Lines.IndexOf(ComboJoin1.Text+'='+ComboJoin2.Text)=-1) Then
    Begin
      If Trim(SQLTemplateCONSA255JOINS.asString)='' Then
        SQLTemplateCONSA255JOINS.asString := ComboJoin1.Text+'='+ComboJoin2.Text
      Else
        SQLTemplateCONSA255JOINS.asString := SQLTemplateCONSA255JOINS.asString + ' AND ' + #13#10 + ComboJoin1.Text+'='+ComboJoin2.Text;
      ComboJoin1.ItemIndex:=-1;
      ComboJoin2.ItemIndex:=-1;
      BtnAddJoin.Enabled  := False;
    End;
end;

procedure TFormCadastroConsulta.DBMemoJoinsDblClick(Sender: TObject);
begin
  inherited;
  BtnDelJoin.Enabled := DBMemoJoins.SelText <> '';
  If BtnDelJoin.Enabled Then
    DBMemoJoins.SelLength := DBMemoJoins.SelLength + 4;
end;

procedure TFormCadastroConsulta.DBMemoJoinsClick(Sender: TObject);
begin
  inherited;
  BtnDelJoin.Enabled := False;
end;

procedure TFormCadastroConsulta.BtnDelJoinClick(Sender: TObject);
Var
  Conteudo:String;
  Posicao:Integer;
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) Then
    Begin
      Conteudo := SQLTemplateCONSA255JOINS.asString;
      Posicao  := POS(DBMemoJoins.SelText,Conteudo);
      If (Posicao = 1) OR ((Posicao + DBMemoJoins.SelLength -1) <> Length(Conteudo)) Then
        Delete(Conteudo,Posicao,DBMemoJoins.SelLength + 5)
      Else
        Delete(Conteudo,Posicao - 7,DBMemoJoins.SelLength + 7);
      SQLTemplateCONSA255JOINS.asString := Conteudo;
      BtnDelJoin.Enabled := False;
    End;
end;

procedure TFormCadastroConsulta.DBMemoFiltrosClick(Sender: TObject);
begin
  inherited;
  BtnDelFiltro.Enabled := False;
  BtnParenteses.Enabled := False;
end;

procedure TFormCadastroConsulta.DBMemoFiltrosDblClick(Sender: TObject);
Var
  Cont:Integer;

begin
  inherited;
  Cont := 0;
  BtnDelFiltro.Enabled  := DBMemoFiltros.SelText <> '';
  If Copy(SQLTemplateCONSA255FILTROS.asString,DBMemoFiltros.SelStart+DBMemoFiltros.SelLength+1,4) = 'LIKE' Then
    While Cont < 2 Do
      Begin
        DBMemoFiltros.SelLength:=DBMemoFiltros.SelLength+1;
        If DBMemoFiltros.SelText[DBMemoFiltros.SelLength]='"' Then
          Inc(Cont);
      End;
  BtnParenteses.Enabled := DBMemoFiltros.SelText <> '';
end;

procedure TFormCadastroConsulta.BtnAddFiltroClick(Sender: TObject);
Const
  Dias = '"01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"';
Var
  OpCampo:String;
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) Then
    Begin
      Case ComboOperacao.ItemIndex Of
        //Igual
        0:OpCampo := ComboFiltro.Text + '='+ ValorCampo(ComboFiltro,EditValor1.Text);
        //Maior
        1:OpCampo := ComboFiltro.Text + '>'+ ValorCampo(ComboFiltro,EditValor1.Text);
        //Maior ou Igual
        2:OpCampo := ComboFiltro.Text + '>='+ ValorCampo(ComboFiltro,EditValor1.Text);
        //Menor
        3:OpCampo := ComboFiltro.Text + '<'+ ValorCampo(ComboFiltro,EditValor1.Text);
        //Menor ou Igual
        4:OpCampo := ComboFiltro.Text + '<='+ ValorCampo(ComboFiltro,EditValor1.Text);
        //Entre
        5:OpCampo := '(' + ComboFiltro.Text + '>=' + ValorCampo(ComboFiltro,EditValor1.Text) + ')AND(' + ComboFiltro.Text + '<=' + ValorCampo(ComboFiltro,EditValor2.Text)+')';
        //Contendo
        6:OpCampo := ComboFiltro.Text + ' LIKE "%'+ EditValor1.Text + '%"';
        //Diferente
        7:OpCampo := ComboFiltro.Text + '<>'+ ValorCampo(ComboFiltro,EditValor1.Text);
        //Aniversï¿½rio
        8:If (CMI.ItemIndex) = (CMF.ItemIndex) Then
            OpCampo := '((EXTRACT(MONTH FROM '+ComboFiltro.Text+')="'+IntToStr(CMI.ItemIndex+1)+'")AND(EXTRACT(DAY FROM '+ComboFiltro.Text+') IN ('+Copy(Dias,((CDI.ItemIndex+1)*5)-4,((CDF.ItemIndex-CDI.ItemIndex)*5)+4)+')))'
          Else
            If (CMF.ItemIndex)-(CMI.ItemIndex)=1 Then
              OpCampo := '((EXTRACT(MONTH FROM '+ComboFiltro.Text+')="'+IntToStr(CMI.ItemIndex+1)+'")AND(EXTRACT(DAY FROM '+ComboFiltro.Text+') IN ('+Copy(Dias,((CDI.ItemIndex+1)*5)-4,Length(Dias))+'))) OR ((EXTRACT(MONTH FROM '+ComboFiltro.Text+')="'+IntToStr(CMF.ItemIndex+1)+'")AND(EXTRACT(DAY FROM '+ComboFiltro.Text+') IN ('+Copy(Dias,1,((CDF.ItemIndex+1)*5)-1)+')))'
            Else
              If (CMF.ItemIndex)-(CMI.ItemIndex)=2 Then
                OpCampo := '((EXTRACT(MONTH FROM '+ComboFiltro.Text+')="'+IntToStr(CMI.ItemIndex+1)+'")AND(EXTRACT(DAY FROM '+ComboFiltro.Text+') IN ('+Copy(Dias,((CDI.ItemIndex+1)*5)-4,Length(Dias))+'))) OR (EXTRACT(MONTH FROM '+ComboFiltro.Text+')='+Copy(Dias,((CMI.ItemIndex+2)*5)-4,(((CMF.ItemIndex)-(CMI.ItemIndex+1))*5)-1)+') OR ((EXTRACT(MONTH FROM '+ComboFiltro.Text+')="'+IntToStr(CMF.ItemIndex+1)+'") AND (EXTRACT(DAY FROM '+ComboFiltro.Text+') IN ('+Copy(Dias,1,((CDF.ItemIndex+1)*5)-1)+')))'
              Else
                OpCampo := '((EXTRACT(MONTH FROM '+ComboFiltro.Text+')="'+IntToStr(CMI.ItemIndex+1)+'")AND(EXTRACT(DAY FROM '+ComboFiltro.Text+') IN ('+Copy(Dias,((CDI.ItemIndex+1)*5)-4,Length(Dias))+'))) OR (EXTRACT(MONTH FROM '+ComboFiltro.Text+') IN ('+Copy(Dias,((CMI.ItemIndex+2)*5)-4,(((CMF.ItemIndex)-(CMI.ItemIndex+1))*5)-1)+')) OR ((EXTRACT(MONTH FROM '+ComboFiltro.Text+')="'+IntToStr(CMF.ItemIndex+1)+'") AND (EXTRACT(DAY FROM '+ComboFiltro.Text+') IN ('+Copy(Dias,1,((CDF.ItemIndex+1)*5)-1)+')))';
      End;
      If (DBMemoFiltros.Lines.IndexOf(OpCampo)=-1) Then
        Begin
          If Trim(SQLTemplateCONSA255FILTROS.asString)='' Then
            SQLTemplateCONSA255FILTROS.asString := OpCampo
          Else
            SQLTemplateCONSA255FILTROS.asString := SQLTemplateCONSA255FILTROS.asString + #13#10 + OpCampo;
          ComboFiltro.ItemIndex:=-1;
          ComboOperacao.ItemIndex:=-1;
          EditValor1.Text:='';
          EditValor2.Text:='';
          BtnAddFiltro.Enabled  := False;
        End;
    End;
end;

procedure TFormCadastroConsulta.BtnDelFiltroClick(Sender: TObject);
Var
  Conteudo:String;
  Posicao:Integer;
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) Then
    Begin
      Conteudo := SQLTemplateCONSA255FILTROS.asString;
      Posicao  := POS(DBMemoFiltros.SelText,Conteudo);
      If (Posicao = 1) OR ((Posicao + DBMemoFiltros.SelLength -1) <> Length(Conteudo)) Then
        Delete(Conteudo,Posicao,DBMemoFiltros.SelLength)
      Else
        Delete(Conteudo,Posicao - 2,DBMemoFiltros.SelLength + 2);
      SQLTemplateCONSA255FILTROS.AsString := Conteudo;
      BtnDelFiltro.Enabled := False;
    End;
end;

procedure TFormCadastroConsulta.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  If Trim(SQLTemplateCONSA255FILTROS.asString)<>'' Then
    SQLTemplateCONSA255FILTROS.asString := SQLTemplateCONSA255FILTROS.asString + #13#10 + 'AND';
end;

procedure TFormCadastroConsulta.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  If Trim(SQLTemplateCONSA255FILTROS.asString)<>'' Then
    SQLTemplateCONSA255FILTROS.asString := SQLTemplateCONSA255FILTROS.asString + #13#10 + 'OR';
end;

procedure TFormCadastroConsulta.BtnParentesesClick(Sender: TObject);
Var
  Conteudo:String;
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) Then
    Begin
      Conteudo := SQLTemplateCONSA255FILTROS.asString;
      SQLTemplateCONSA255FILTROS.asString :=
      Copy(Conteudo,1,POS(DBMemoFiltros.SelText,Conteudo)-1)+
      '('+DBMemoFiltros.SelText+')'+
      Copy(Conteudo,POS(DBMemoFiltros.SelText,Conteudo)+DBMemoFiltros.SelLength,Length(Conteudo)-DBMemoFiltros.SelLength);
    End;
end;

procedure TFormCadastroConsulta.ComboCamposChange(Sender: TObject);
begin
  inherited;
  BtnAddCampo.Enabled:=(ComboCampos.ItemIndex<>-1);
end;

procedure TFormCadastroConsulta.DBMemoCamposClick(Sender: TObject);
begin
  inherited;
  BtnDelCampo.Enabled := False;
end;

procedure TFormCadastroConsulta.DBMemoCamposDblClick(Sender: TObject);
begin
  inherited;
  BtnDelCampo.Enabled  := DBMemoCampos.SelText <> '';
end;

procedure TFormCadastroConsulta.BtnAddCampoClick(Sender: TObject);
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) and
     (DBMemoCampos.Lines.IndexOf(ComboCampos.Text+', ')=-1) and
     (DBMemoCampos.Lines.IndexOf(ComboCampos.Text)=-1) Then
    Begin
      If Trim(SQLTemplateCONSA255CAMPOS.asString)='' Then
        SQLTemplateCONSA255CAMPOS.asString := ComboCampos.Text
      Else
        SQLTemplateCONSA255CAMPOS.asString := SQLTemplateCONSA255CAMPOS.asString + ', ' + #13#10 + ComboCampos.Text;
      ComboCampos.ItemIndex:=-1;
      BtnAddCampo.Enabled := False;
    End;
end;

procedure TFormCadastroConsulta.BtnDelCampoClick(Sender: TObject);
Var
  Conteudo:String;
  Posicao:Integer;
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) Then
    Begin
      Conteudo := SQLTemplateCONSA255CAMPOS.asString;
      Posicao  := POS(DBMemoCampos.SelText,Conteudo);
      If (Posicao = 1) OR ((Posicao + DBMemoCampos.SelLength -1) <> Length(Conteudo)) Then
        Delete(Conteudo,Posicao,DBMemoCampos.SelLength + 2)
      Else
        Delete(Conteudo,Posicao - 4,DBMemoCampos.SelLength + 4);
      SQLTemplateCONSA255CAMPOS.asString := Conteudo;
      BtnDelCampo.Enabled := False;
    End;
end;

procedure TFormCadastroConsulta.BtnAddOrdemClick(Sender: TObject);
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) and
     (DBMemoOrdem.Lines.IndexOf(ComboOrdenar.Text+', ')=-1) and
     (DBMemoOrdem.Lines.IndexOf(ComboOrdenar.Text)=-1) Then
    Begin
      If Trim(SQLTemplateCONSA255ORDEM.asString)='' Then
        SQLTemplateCONSA255ORDEM.asString := ComboOrdenar.Text
      Else
        SQLTemplateCONSA255ORDEM.asString := SQLTemplateCONSA255ORDEM.asString + ', ' + #13#10 + ComboOrdenar.Text;
      ComboOrdenar.ItemIndex:=-1;
      BtnAddOrdem.Enabled := False;
    End;
end;

procedure TFormCadastroConsulta.BtnDelOrdemClick(Sender: TObject);
Var
  Conteudo:String;
  Posicao:Integer;
begin
  inherited;
  If (SQLTemplate.State in dsEditModes) Then
    Begin
      Conteudo := SQLTemplateCONSA255ORDEM.asString;
      Posicao  := POS(DBMemoOrdem.SelText,Conteudo);
      If (Posicao = 1) OR ((Posicao + DBMemoOrdem.SelLength -1) <> Length(Conteudo)) Then
        Delete(Conteudo,Posicao,DBMemoOrdem.SelLength + 2)
      Else
        Delete(Conteudo,Posicao - 4,DBMemoOrdem.SelLength + 4);
      SQLTemplateCONSA255ORDEM.asString := Conteudo;
      BtnDelOrdem.Enabled := False;
    End;
end;

procedure TFormCadastroConsulta.ComboOrdenarChange(Sender: TObject);
begin
  inherited;
  BtnAddOrdem.Enabled:=(ComboOrdenar.ItemIndex<>-1);
end;

procedure TFormCadastroConsulta.DBMemoOrdemClick(Sender: TObject);
begin
  inherited;
  BtnDelOrdem.Enabled := False;
end;

procedure TFormCadastroConsulta.DBMemoOrdemDblClick(Sender: TObject);
begin
  inherited;
  BtnDelOrdem.Enabled  := DBMemoOrdem.SelText <> '';
end;

procedure TFormCadastroConsulta.CMIChange(Sender: TObject);
Var
  UltimoDiaMes,I:Integer;
begin
  Inherited;
  If CMI.ItemIndex<>-1 Then
    Begin
      Try
        UltimoDiaMes:=StrToInt(FormatDateTime('dd',StrToDate('31/'+CMI.Text+'/2000')));
      Except
        Try
          UltimoDiaMes:=StrToInt(FormatDateTime('dd',StrToDate('30/'+CMI.Text+'/2000')));
        Except
          Try
            UltimoDiaMes:=StrToInt(FormatDateTime('dd',StrToDate('29/'+CMI.Text+'/2000')));
          Except
          End;
        End;
      End;
      CDI.Items.Clear;
      For I:=1 To UltimoDiaMes Do
        CDI.Items.Add(Format('%.2d',[I]));
      If CMF.ItemIndex=-1 Then
        Begin
          CMF.ItemIndex:=CMI.ItemIndex;
          CDF.Items.Clear;
          CDF.Items:=CDI.Items;
        End;
    End;
  CDI.Enabled:=CMI.ItemIndex<>-1;
  CDF.Enabled:=(CMF.ItemIndex<>-1)and(CMF.ItemIndex>=CMF.ItemIndex);
end;

procedure TFormCadastroConsulta.CMFChange(Sender: TObject);
Var
  UltimoDiaMes,I:Integer;
begin
  inherited;
  CDF.Enabled:=(CMF.ItemIndex<>-1)and(CMF.ItemIndex>=CMF.ItemIndex);
  If CMF.ItemIndex<>-1 Then
    Begin
      If CMF.ItemIndex<CMI.ItemIndex Then
        Begin
          CMF.ItemIndex:=CMI.ItemIndex;
          Exit;
        End;
      Try
        UltimoDiaMes:=StrToInt(FormatDateTime('dd',StrToDate('31/'+CMF.Text+'/2000')));
      Except
        Try
          UltimoDiaMes:=StrToInt(FormatDateTime('dd',StrToDate('30/'+CMF.Text+'/2000')));
        Except
          Try
            UltimoDiaMes:=StrToInt(FormatDateTime('dd',StrToDate('29/'+CMF.Text+'/2000')));
          Except
          End;
        End;
      End;
      CDF.Items.Clear;
      For I:=1 To UltimoDiaMes Do
        CDF.Items.Add(Format('%.2d',[I]));
    End;
end;

procedure TFormCadastroConsulta.MalaDiretaClienteClick(Sender: TObject);
begin
  inherited;
  //INICIO MALA DIRETA
  if Pos('CLIEA13ID', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA13ID(Cï¿½digo Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60RAZAOSOC', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60RAZAOSOC(Nome Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60ENDRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60ENDRES(Endereï¿½o Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60BAIRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60BAIRES(Bairro Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60CIDRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60CIDRES(Cidade Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA2UFRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA2UFRES(UF Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA8CEPRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA8CEPRES(Cep Cliente) !') ;
    exit ;
  end ;
  if PagePrincipal.ActivePage <> PagePrincipal.Pages[6] then
  begin
    ShowMessage('Execute a consulta antes clicando em resultado !') ;
    exit ;
  end ;

  MontaBancoMala ;

  if FileExists('EtiquetasMalaDireta.exe') then
    WinExec(Pchar(DM.PathAplicacao + 'EtiquetasMalaDireta.exe ETQ'),sw_Show)
  else
    Informa('Programa para impressão de etiquetas não encontrado !') ;
end;

procedure TFormCadastroConsulta.ComboTabelaChange(Sender: TObject);
begin
  inherited;
  BtnAddTabela.Enabled := (ComboTabela.ItemIndex <> - 1) ;
end;

procedure TFormCadastroConsulta.MontaBancoMala ;
begin
  TblMalaDiretaCli.Close ;
  if TblMalaDiretaCli.Exists then
    TblMalaDiretaCli.DeleteTable ;
  TblMalaDiretaCli.CreateTable ;
  TblMalaDiretaCli.Open ;

  SQLConsulta.First ;
  while not SQLConsulta.EOF do
  begin
    TblMalaDiretaCli.Append ;
    TblMalaDiretaCliCLIEA13ID.AsVariant       := SQLConsulta.FieldByName('CLIEA13ID').AsVariant ;
    TblMalaDiretaCliCLIEA60RAZAOSOC.AsVariant := SQLConsulta.FieldByName('CLIEA60RAZAOSOC').AsVariant ;
    TblMalaDiretaCliCLIEA60ENDRES.AsVariant   := SQLConsulta.FieldByName('CLIEA60ENDRES').AsVariant ;
    TblMalaDiretaCliCLIEA60BAIRES.AsVariant   := SQLConsulta.FieldByName('CLIEA60BAIRES').AsVariant ;
    TblMalaDiretaCliCLIEA60CIDRES.AsVariant   := SQLConsulta.FieldByName('CLIEA60CIDRES').AsVariant ;
    TblMalaDiretaCliCLIEA2UFRES.AsVariant     := SQLConsulta.FieldByName('CLIEA2UFRES').AsVariant ;
    TblMalaDiretaCliCLIEA8CEPRES.AsVariant    := SQLConsulta.FieldByName('CLIEA8CEPRES').AsVariant ;
    TblMalaDiretaCliCLIEA15FONE.AsVariant     := SQLConsulta.FieldByName('CLIEA15FONE1').AsVariant ;
    TblMalaDiretaCliCLIEA30OUTROSDOC.AsString := SQLConsulta.FieldByName('CLIEA30OUTROSDOC').AsString ;
    TblMalaDiretaCliCLIEDNASC.AsString        := SQLConsulta.FieldByName('CLIEDNASC').AsString ;

    if SQLConsulta.FindField('CLCOA60NOME') <> nil then
      TblMalaDiretaCliCONTATO.AsVariant := SQLConsulta.FieldByName('CLCOA60NOME').AsVariant ;
    TblMalaDiretaCli.Post ;

    SQLConsulta.Next ;
  end ;

  TblMalaDiretaCli.Close ;
end ;

procedure TFormCadastroConsulta.ListagemdeCliente1Click(Sender: TObject);
begin
  inherited;
  //INICIO MALA DIRETA
  if Pos('CLIEA13ID', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA13ID(Cï¿½digo Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60RAZAOSOC', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60RAZAOSOC(Nome Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60ENDRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60ENDRES(Endereï¿½o Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60BAIRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60BAIRES(Bairro Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60CIDRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60CIDRES(Cidade Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA2UFRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA2UFRES(UF Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA8CEPRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA8CEPRES(Cep Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA15FONE1', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA15FONE1(Fone1 Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEDNASC', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEDNASC(Nascimento Cliente) !') ;
    exit ;
  end ;

  if PagePrincipal.ActivePage <> PagePrincipal.Pages[6] then
  begin
    ShowMessage('Execute a consulta antes clicando em resultado !') ;
    exit ;
  end ;

  MontaBancoMala ;

  if FileExists('EtiquetasMalaDireta.exe') then
    WinExec(Pchar(DM.PathAplicacao + 'EtiquetasMalaDireta.exe REL'),sw_Show)
  else
    Informa('Programa para impressão de listagem não foi encontrada !') ;
end;

procedure TFormCadastroConsulta.MnEnviarEmailClick(Sender: TObject);
begin
  inherited;
  if (SQLConsulta.FindField('CLIEA60EMAIL') <> nil) and (SQLConsulta.FindField('CLIEA60EMAIL').AsVariant <> null) then
    begin
      Dm.DSEmail.DataSet := SQLConsulta;
      CriaFormulario(TFormTelaEnvioEmailGeral,'FormTelaEnvioEmailGeral',False,False,False,'');
    end
  else
    begin
      Application.MessageBox('O Campo CLIENTE.CLIEA60EMAIL não foi selecionado ou não possui dados, Impossível continuar !','Informaï¿½ï¿½o',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;
end;

procedure TFormCadastroConsulta.MalaDireta1Click(Sender: TObject);
begin
  inherited;
  //INICIO MALA DIRETA
  if Pos('CLIEA13ID', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA13ID(Código Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60RAZAOSOC', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60RAZAOSOC(Nome Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60ENDRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60ENDRES(Endereço Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60BAIRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60BAIRES(Bairro Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA60CIDRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA60CIDRES(Cidade Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA2UFRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA2UFRES(UF Cliente) !') ;
    exit ;
  end ;
  if Pos('CLIEA8CEPRES', SQLTemplateCONSA255CAMPOS.Value) = 0 then
  begin
    ShowMessage('É necessário incluir o Campo CLIENTE.CLIEA8CEPRES(Cep Cliente) !') ;
    exit ;
  end ;
  if PagePrincipal.ActivePage <> PagePrincipal.Pages[6] then
  begin
    ShowMessage('Execute a consulta antes clicando em resultado !') ;
    exit ;
  end ;

  MontaBancoMala ;

  if Dm.SQLConfigCrediario.fieldbyname('CFCRA254PATHMALADIRETA').AsString <> '' then
    begin
      if FileExists(Dm.SQLConfigCrediario.fieldbyname('CFCRA254PATHMALADIRETA').AsString) then
        begin
          ppTextoMalaDireta.LoadFromFile(Dm.SQLConfigCrediario.fieldbyname('CFCRA254PATHMALADIRETA').AsString);
          ReportMalaDireta.Print;
        end
      else
        begin
          Informa('O arquivo configurado para impressão de mala direta não existe no diretório especificado...' + #13
                  + 'Por favor verifique nas configurações de crediário!');
          exit;
        end;
    end
  else
    begin
      Informa('Não existe nenhum arquivo de mala direta configurado para impressão, verifique nas configurações de crediário !');
    end;
end;

end.

