unit TelaLancamentoGradeXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Grids, DBGrids, StdCtrls, Mask,
  ToolEdit, CurrEdit, DB, MemTable, DBTables, RxQuery, Buttons, jpeg,
  ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaLancamentoGradeXML = class(TFormTelaGeralModalTemplate)
    qry: TRxQuery;
    DsMasterTemplate: TDataSource;
    DSSQLMovimentoItem: TDataSource;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    TblQtde: TMemoryTable;
    TblQtdeCORICOD: TIntegerField;
    TblQtdeCorLookUp: TStringField;
    TblQtdeField1: TFloatField;
    TblQtdeBCDField2: TFloatField;
    TblQtdeBCDField3: TFloatField;
    TblQtdeBCDField4: TFloatField;
    TblQtdeBCDField5: TFloatField;
    TblQtdeBCDField6: TFloatField;
    TblQtdeBCDField7: TFloatField;
    TblQtdeBCDField8: TFloatField;
    TblQtdeBCDField9: TFloatField;
    TblQtdeBCDField10: TFloatField;
    TblQtdeBCDField11: TFloatField;
    TblQtdeBCDField12: TFloatField;
    TblQtdeBCDField13: TFloatField;
    TblQtdeBCDField14: TFloatField;
    TblQtdeBCDField15: TFloatField;
    TblQtdeCod1: TIntegerField;
    TblQtdeCod2: TIntegerField;
    TblQtdeCod3: TIntegerField;
    TblQtdeCod4: TIntegerField;
    TblQtdeCod5: TIntegerField;
    TblQtdeCod6: TIntegerField;
    TblQtdeCod7: TIntegerField;
    TblQtdeCod8: TIntegerField;
    TblQtdeCod9: TIntegerField;
    TblQtdeCod10: TIntegerField;
    TblQtdeCod11: TIntegerField;
    TblQtdeCod12: TIntegerField;
    TblQtdeCod13: TIntegerField;
    TblQtdeCod14: TIntegerField;
    TblQtdeCod15: TIntegerField;
    TblQtdeTotal: TFloatField;
    DSTblQtde: TDataSource;
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradeGRADICOD: TIntegerField;
    SQLProdutoGradeGRTMICOD: TIntegerField;
    SQLProdutoGradeCORICOD: TIntegerField;
    SQLProdutoGradePRODA60REFER: TStringField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    DSSQLProdutoGrade: TDataSource;
    Panel5: TPanel;
    Label5: TLabel;
    EditTotal: TCurrencyEdit;
    Panel6: TPanel;
    DBGridLista: TDBGrid;
    BtnOk: TSpeedButton;
    lbMarcaReferencia: TLabel;
    procedure DBGridListaEnter(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure TblQtdeField1Change(Sender: TField);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeCalcFields(DataSet: TDataSet);
    procedure TblQtdeNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Calculando, MontandoGrade:Boolean;
    Function EncontraTamanho(TAM:Integer):Integer;
  public
    { Public declarations }
    Qtde_Xml : Integer;
    xNOCPA13ID, xCFOPA5CODAUX, xNOCIA3CSTICMS, xNOCA3CSTIPI, xNOCA3CSTPIS, xNOCA3CSTCOFINS, xPDCPA13ID : String;
    CodigoProdutoCompra : Integer;
    xNOCIN3CAPEMBAL, xNOCIN3VLREMBAL, xNOCIN2VLRSEGURO, xNOCIN2VLRDESPESAS, xNOCIN3VLRDESC, xNOCIN3VLRFRETE, xNOCIN2VBC, xNOCIN3PERCICMS,
    xNOCIN3VLRICMS, xNOCIN2PMVAST, xNOCIN2VBCST, xNOCIN2PERCSUBST, xNOCIN3VLRSUBST, xNOCIN3PERCIPI, xNOCIN3VLRIPI, xNOCIN2BASEPIS,
    xNOCIN2PERCPIS, xNOCIN2VLRPIS, xNOCIN2BASECOFINS, xNOCIN2PERCCOFINS, xNOCIN2VLRCOFINS : Double;
  end;

var
  FormTelaLancamentoGradeXML: TFormTelaLancamentoGradeXML;

implementation

uses DataModulo, TelaImportadorXML;

{$R *.dfm}

Function TFormTelaLancamentoGradeXML.EncontraTamanho(TAM:Integer):Integer;
Var
  I:Integer;
Begin
  Result:=0;
  SQLGradeTamanho.First;
  I:=1;
  While Not SQLGradeTamanho.Eof Do
    Begin
      If SQLGradeTamanhoGRTMICOD.Value=TAM Then
        Begin
          Result:=I;
          Break;
        End;
      SQLGradeTamanho.Next;Inc(I);
    End;
End;


procedure TFormTelaLancamentoGradeXML.DBGridListaEnter(Sender: TObject);
begin
  inherited;
  DBGridLista.SelectedIndex := 1 ;
end;

procedure TFormTelaLancamentoGradeXML.BtnOkClick(Sender: TObject);
Var
  I:Integer;
  DataSet:TDataSet;
begin
  if Qtde_Xml <> EditTotal.Value then
    begin
      ShowMessage('A quantidade distribuida na grade nao fecha com a quantidade informado no xml! Verifique!');
      exit;
    end;

  inherited;
  TblQtde.First;
  While Not TblQtde.Eof Do
    Begin
      For I:=1 To 15 Do
        Begin
          If TblQtde.FindField(IntToStr(I)).asFloat<>0 Then
            Begin
              try
                qry.close;
                qry.sql.clear;
                qry.SQL.Add('INSERT INTO NOTACOMPRAITEM (NOCPA13ID, NOCIIITEM, PRODICOD, NOCIN3CAPEMBAL,');
                qry.SQL.Add('                            NOCIN3QTDEMBAL, NOCIN3QTDEPED, NOCIN3TOTPED, NOCIN3VLRDESC, NOCIN3PERCDESC,');
                qry.SQL.Add('                            NOCIN3VLRICMS, NOCIN3PERCICMS, NOCIN3VLRSUBST, NOCIN3VLRIPI, NOCIN3PERCIPI,');
                qry.SQL.Add('                            NOCIN3VLRCUSTOMED, NOCIN3VLRFRETE, PDCPA13ID, PCITIPOS, PENDENTE, REGISTRO,');
                qry.SQL.Add('                            NOCICALTPRECO, NOCIN2PERCDIFICM, NOCIN2PERCSUBST, CFOPA5CODAUX, ');
                qry.SQL.Add('                            NOCIN2PMVAST, NOCIN2VLRSEGURO, NOCIN2VLRDESPESAS, NOCN4COFINSQTD,');
                qry.SQL.Add('                            NOCA3CSTCOFINS, NOCIN2PERCCOFINS, NOCIN2VLRCOFINS, NOCN4COFINSREAL, NOCIN2BASECOFINS, ');
                qry.SQL.Add('                            NOCIN2VBC, NOCIN2VBCST, NOCIN2VBCSTRET, NOCIN2PREDBC, NOCIN2PREDBCST, NOCIA3CSTICMS,');
                qry.SQL.Add('                            NOCIN2VICMSSTRET, NOCIN2VCREDICMSSN, NOCA3CSTIPI, NOCN4QTDIPI, ');
                qry.SQL.Add('                            NOCN4UNDIPI, NOCIN2VBCIPI, NOCIN2PERCISS, NOCIN2BASEISS, NOCIN2VLRISS, NOCA3CSTPIS, ');
                qry.SQL.Add('                            NOCIN2VLRPIS, NOCIN2BASEPIS, NOCIN2PERCPIS, NOCN4PISREAL, NOCN4PISQTD, UNIDICOD,  ');
                qry.SQL.Add('                            NOCIN3VLREMBAL, NOCIN3VLRUNIT, NOCIN3PERCFRETE, NOCIN3QTDBONIF)  ');
                qry.SQL.Add('                    VALUES (:NOCPA13ID, :NOCIIITEM, :PRODICOD, :NOCIN3CAPEMBAL,');
                qry.SQL.Add('                            :NOCIN3QTDEMBAL, :NOCIN3QTDEPED, :NOCIN3TOTPED, :NOCIN3VLRDESC, :NOCIN3PERCDESC, ');
                qry.SQL.Add('                            :NOCIN3VLRICMS, :NOCIN3PERCICMS, :NOCIN3VLRSUBST, :NOCIN3VLRIPI, :NOCIN3PERCIPI, ');
                qry.SQL.Add('                            :NOCIN3VLRCUSTOMED, :NOCIN3VLRFRETE, :PDCPA13ID, :PCITIPOS, :PENDENTE, :REGISTRO,');
                qry.SQL.Add('                            :NOCICALTPRECO, :NOCIN2PERCDIFICM, :NOCIN2PERCSUBST, :CFOPA5CODAUX, ');
                qry.SQL.Add('                            :NOCIN2PMVAST, :NOCIN2VLRSEGURO, :NOCIN2VLRDESPESAS, :NOCN4COFINSQTD, ');
                qry.SQL.Add('                            :NOCA3CSTCOFINS, :NOCIN2PERCCOFINS, :NOCIN2VLRCOFINS, :NOCN4COFINSREAL, :NOCIN2BASECOFINS, ');
                qry.SQL.Add('                            :NOCIN2VBC, :NOCIN2VBCST, :NOCIN2VBCSTRET, :NOCIN2PREDBC, :NOCIN2PREDBCST, :NOCIA3CSTICMS, ');
                qry.SQL.Add('                            :NOCIN2VICMSSTRET, :NOCIN2VCREDICMSSN, :NOCA3CSTIPI, :NOCN4QTDIPI,  ');
                qry.SQL.Add('                            :NOCN4UNDIPI, :NOCIN2VBCIPI, :NOCIN2PERCISS, :NOCIN2BASEISS, :NOCIN2VLRISS, :NOCA3CSTPIS,');
                qry.SQL.Add('                            :NOCIN2VLRPIS, :NOCIN2BASEPIS, :NOCIN2PERCPIS, :NOCN4PISREAL, :NOCN4PISQTD, :UNIDICOD,');
                qry.SQL.Add('                            :NOCIN3VLREMBAL, :NOCIN3VLRUNIT, :NOCIN3PERCFRETE, :NOCIN3QTDBONIF)');

                qry.ParamByName('NOCPA13ID').AsString     := xNOCPA13ID;
                qry.ParamByName('NOCIIITEM').AsInteger    := dm.SeqItemCompra;
                qry.ParamByName('PCITIPOS').AsInteger     := dm.SeqItemCompra;
                qry.ParamByName('PRODICOD').AsInteger     := TblQtde.FindField('Cod'+IntToStr(I)).Value;
                qry.ParamByName('CFOPA5CODAUX').AsString  := xCFOPA5CODAUX;
                qry.ParamByName('NOCICALTPRECO').AsString := 'I';
                qry.ParamByName('NOCIN3QTDBONIF').AsFloat := 0.00;
                qry.ParamByName('PDCPA13ID').AsString     := xPDCPA13ID;

                qry.ParamByName('NOCIN3QTDEMBAL').AsFloat := TblQtde.FindField(IntToStr(I)).Value;
                qry.ParamByName('NOCIN3CAPEMBAL').AsFloat := xNOCIN3CAPEMBAL;
                qry.ParamByName('NOCIN3VLREMBAL').AsFloat := xNOCIN3VLREMBAL;
                qry.ParamByName('NOCIN3VLRUNIT').AsFloat  := xNOCIN3VLREMBAL / xNOCIN3CAPEMBAL;

                qry.ParamByName('NOCIN2VLRSEGURO').AsFloat   := xNOCIN2VLRSEGURO;
                qry.ParamByName('NOCIN2VLRDESPESAS').AsFloat := xNOCIN2VLRDESPESAS;
                if qry.ParamByName('NOCIN2VLRDESPESAS').IsNull then
                  qry.ParamByName('NOCIN2VLRDESPESAS').asfloat := 0.00;

                qry.ParamByName('NOCIN3VLRDESC').AsFloat     := xNOCIN3VLRDESC;
                qry.ParamByName('NOCIN3PERCDESC').AsFloat    := 0.00;

                qry.ParamByName('NOCIN2PERCDIFICM').AsFloat  := 0.00;
                qry.ParamByName('NOCIN3VLRFRETE').AsFloat    := xNOCIN3VLRFRETE;
                qry.ParamByName('NOCIN3PERCFRETE').AsFloat   := 0.00;

                qry.ParamByName('NOCIA3CSTICMS').AsString    := xNOCIA3CSTICMS;

                qry.ParamByName('NOCIN2VBC').AsFloat         := qry.ParamByName('NOCIN3VLRUNIT').AsFloat  * (qry.ParamByName('NOCIN3CAPEMBAL').AsFloat * qry.ParamByName('NOCIN3QTDEMBAL').AsFloat);
                qry.ParamByName('NOCIN3PERCICMS').AsFloat    := xNOCIN3PERCICMS;
                qry.ParamByName('NOCIN3VLRICMS').AsFloat     := (qry.ParamByName('NOCIN2VBC').AsFloat * qry.ParamByName('NOCIN3PERCICMS').AsFloat) / 100;

                qry.ParamByName('NOCIN2PMVAST').AsFloat      := xNOCIN2PMVAST;
                qry.ParamByName('NOCIN2VBCST').AsFloat       := xNOCIN2VBCST;
                qry.ParamByName('NOCIN2PERCSUBST').AsFloat   := xNOCIN2PERCSUBST;
                qry.ParamByName('NOCIN3VLRSUBST').AsFloat    := xNOCIN3VLRSUBST;
                qry.ParamByName('NOCIN2VBCSTRET').AsFloat    := 0.00;
                qry.ParamByName('NOCIN2PREDBC').AsFloat      := 0.00;
                qry.ParamByName('NOCIN2PREDBCST').AsFloat    := 0.00;
                qry.ParamByName('NOCIN2VICMSSTRET').AsFloat  := 0.00;
                qry.ParamByName('NOCIN2VCREDICMSSN').AsFloat := 0.00;

                if xNOCA3CSTIPI = '' then
                  qry.ParamByName('NOCA3CSTIPI').AsString := '02'
                else
                  qry.ParamByName('NOCA3CSTIPI').AsString := xNOCA3CSTIPI;
                qry.ParamByName('NOCIN2VBCIPI').AsFloat   := 0.00;
                qry.ParamByName('NOCN4QTDIPI').AsFloat    := 0.00;
                qry.ParamByName('NOCN4UNDIPI').AsFloat    := 0.00;
                qry.ParamByName('NOCIN3PERCIPI').AsFloat  := xNOCIN3PERCIPI;
                qry.ParamByName('NOCIN3VLRIPI').AsFloat   := xNOCIN3VLRIPI;

                qry.ParamByName('NOCA3CSTPIS').AsString     := xNOCA3CSTPIS;
                qry.ParamByName('NOCIN2BASEPIS').AsFloat    := xNOCIN2BASEPIS;
                qry.ParamByName('NOCIN2PERCPIS').AsFloat    := xNOCIN2PERCPIS;
                qry.ParamByName('NOCIN2VLRPIS').AsFloat     := xNOCIN2VLRPIS;
                qry.ParamByName('NOCN4PISQTD').AsFloat      := 0.000;
                qry.ParamByName('NOCN4PISREAL').AsFloat     := 0.00;

                qry.ParamByName('NOCA3CSTCOFINS').AsString  := xNOCA3CSTCOFINS;
                qry.ParamByName('NOCIN2BASECOFINS').AsFloat := xNOCIN2BASECOFINS;
                qry.ParamByName('NOCIN2PERCCOFINS').AsFloat := xNOCIN2PERCCOFINS;
                qry.ParamByName('NOCIN2VLRCOFINS').AsFloat  := xNOCIN2VLRCOFINS;
                qry.ParamByName('NOCN4COFINSQTD').AsFloat   := 0.000;
                qry.ParamByName('NOCN4COFINSREAL').AsFloat  := 0.00;

                qry.ParamByName('NOCIN2PERCISS').AsFloat    := 0.00;
                qry.ParamByName('NOCIN2BASEISS').AsFloat    := 0.00;
                qry.ParamByName('NOCIN2VLRISS').AsFloat     := 0.00;

                qry.ParamByName('NOCIN3VLRCUSTOMED').AsFloat  := qry.ParamByName('NOCIN3VLRUNIT').AsFloat;

                qry.ParamByName('NOCIN3QTDEPED').AsFloat  := 0.00;
                qry.ParamByName('NOCIN3TOTPED').AsFloat   := 0.00;

                qry.ParamByName('REGISTRO').AsString  := FormatDateTime('mm/dd/yyyy hh:nn:ss',Now);
                qry.ParamByName('PENDENTE').AsString  := 'S';

                // Adilson, removi pq tem q buscar do nosso cad.produto qry.ParamByName('UNIDICOD').AsInteger := getUnidadeId(cdsItensunidade.AsString);
                try
                  qry.ParamByName('UNIDICOD').AsString := dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD', IntToStr(dm.CodigoProdutoCompra) );
                except
                  ShowMessage('Erro: Falta Unidade para o Produto => '+IntToStr(dm.CodigoProdutoCompra));
                  FormTelaImportadorXML.fGravar := False ;
                end;

                qry.Prepare;
                qry.ExecSQL;
                dm.SeqItemCompra := dm.SeqItemCompra + 1;
              except
                ShowMessage('Falha ao gravar item na nota de compra!');
              end;
            End;
        End;
      TblQtde.Next;
    End;

  SQLProdutoGrade.Close;
  Close;
end;

procedure TFormTelaLancamentoGradeXML.TblQtdeField1Change(Sender: TField);
Var
  B:TBookMark;
begin
  inherited;
  If Not MontandoGrade and Not Calculando Then
    Begin
      Calculando := True;
      If TblQtde.FindField('Cod'+(Sender as TField).FieldName).asInteger=0 Then
        Begin
          ShowMessage('Esse produto não possui esta posição na grade!');
          Abort;
        End;
      Sender.DataSet.Post;
      B:=Sender.DataSet.GetBookmark;
      Sender.DataSet.DisableControls;
      Sender.DataSet.First;EditTotal.Value:=0;
      While Not Sender.DataSet.Eof Do
        Begin
          EditTotal.Value:=EditTotal.Value+Sender.DataSet.FindField('Total').AsFloat;
          Sender.DataSet.Next;
        End;
      Sender.DataSet.EnableControls;
      Sender.DataSet.GotoBookmark(B);
      Calculando := False;
   End;
end;

procedure TFormTelaLancamentoGradeXML.TblQtdeBeforeDelete(
  DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaLancamentoGradeXML.TblQtdeBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaLancamentoGradeXML.TblQtdeCalcFields(
  DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade Then Exit;
  TblQtde.FindField('Total').asFloat:=0;
  For I:=1 To 15 Do
    TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
end;

procedure TFormTelaLancamentoGradeXML.TblQtdeNewRecord(DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  For I:=1 to 15 Do
    Begin
      TblQtde.FindField(IntToStr(I)).Value:=0;
      TblQtde.FindField('Cod'+IntToStr(I)).Value:=0;
    End;
end;

procedure TFormTelaLancamentoGradeXML.FormCreate(Sender: TObject);
Var
  I,Posicao,CorAnt:Integer;
begin
  inherited;
  MontandoGrade:=True;
  If Not TblQtde.Active Then
    TblQtde.Open;
  SQLProdutoGrade.Close;
  SQLProdutoGrade.ParamByName('PRODIAGRUPGRADE').asInteger := dm.CodigoProdutoCompra;
  SQLProdutoGrade.Open;
  SQLProdutoGrade.First; CorAnt := 0;
  SQLGradeTamanho.ParamByName('GRADICOD').Value := SQLProdutoGrade.FindField('GRADICOD').Value;
  SQLGradeTamanho.Open;
  While Not SQLProdutoGrade.Eof Do
    Begin
      If SQLProdutoGrade.FindField('CORICOD').asInteger <> CorAnt Then
        Begin
          CorAnt := SQLProdutoGrade.FindField('CORICOD').asInteger;
          TblQtde.Append;
          TblQtde.FindField('CORICOD').Value := SQLProdutoGrade.FindField('CORICOD').asInteger;
          TblQtde.Post;
        End;
      Posicao:=EncontraTamanho(SQLProdutoGrade.FindField('GRTMICOD').Value);
      If (Posicao>0) and (Posicao<16) Then
        Begin
          TblQtde.Edit;
          TblQtde.FindField('Cod'+IntToStr(Posicao)).Value:=SQLProdutoGrade.FindField('PRODICOD').asInteger;
          TblQtde.Post;
          TblQtde.FindField(IntToStr(Posicao)).Visible      := True;
          TblQtde.FindField(IntToStr(Posicao)).DisplayLabel := SQLGradeTamanho.FindField('GRTMA5DESCR').asString;
        End;
      SQLProdutoGrade.Next;
    End;
  MontandoGrade:=False;
  DBGridLista.Columns[0].Width:=150;
  DBGridLista.Columns[0].ReadOnly := True;
  DBGridLista.Columns[0].Color:=$00E0E0E0;
  DBGridLista.Columns[DBGridLista.Columns.Count-1].Color:=$00E0E0E0;
  DBGridLista.Columns[DBGridLista.Columns.Count-1].ReadOnly:= True;
  For I := 1 To DBGridLista.Columns.Count-1 Do
    Begin
      DBGridLista.Columns[I].Width:=(820 - 248) DIV (DBGridLista.Columns.Count-1);
      DBGridLista.Columns[I].Title.Alignment := taRightJustify;
    End;
  TblQtde.First;
end;

end.
