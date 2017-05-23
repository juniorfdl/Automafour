unit TelaLancamentoGradeNota;

interface

uses
  VarSYS, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  Grids, DBGrids, DB, MemTable, DBTables, RxQuery, Mask, EDBNum, ToolEdit,
  CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaLancamentoGradeNota = class(TFormTelaGeralTEMPLATE)
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradeGRADICOD: TIntegerField;
    SQLProdutoGradeGRTMICOD: TIntegerField;
    SQLProdutoGradeCORICOD: TIntegerField;
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
    DSTblQtde: TDataSource;
    TblQtdeTotal: TFloatField;
    Panel4: TPanel;
    Label23: TLabel;
    Label1: TLabel;
    DBEdit25: TEvDBNumEdit;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    Panel6: TPanel;
    DBGridListaGrade: TDBGrid;
    Panel5: TPanel;
    Label5: TLabel;
    EditTotal: TCurrencyEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label11: TLabel;
    DBVlrCompra: TEvDBNumEdit;
    Label17: TLabel;
    DBIcmPerc: TEvDBNumEdit;
    Label18: TLabel;
    DBIPIPerc: TEvDBNumEdit;
    DBMGVarejo: TEvDBNumEdit;
    Label58: TLabel;
    Label36: TLabel;
    DBVlrVenda: TEvDBNumEdit;
    TblDados: TMemoryTable;
    TblDadosIcmPerc: TFloatField;
    TblDadosDescPerc: TFloatField;
    TblDadosIPIPerc: TFloatField;
    TblDadosFretePerc: TFloatField;
    TblDadosSubstPerc: TFloatField;
    TblDadosDespPerc: TFloatField;
    TblDadosDifIcmPerc: TFloatField;
    TblDadosMGVarejo: TFloatField;
    TblDadosVlrVenda: TFloatField;
    dsTblDados: TDataSource;
    TblDadosVlrCompra: TFloatField;
    TblDadosPercReducao: TFloatField;
    TblDadosBaseCalcIcm: TFloatField;
    BtnOk: TSpeedButton;
    Label6: TLabel;
    TblDadosCST: TStringField;
    dbCST: TDBEdit;
    Label3: TLabel;
    dbBaseIcms: TEvDBNumEdit;
    procedure FormCreate(Sender: TObject);
    procedure TblQtdeField1Change(Sender: TField);
    procedure BtnOkClick(Sender: TObject);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure DBGridListaGradeEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TblDadosBeforeDelete(DataSet: TDataSet);
    procedure DBMGVarejoExit(Sender: TObject);
    procedure dbCSTExit(Sender: TObject);
  private
    PISPerc, CofinsPerc, EncargosPerc, EncargosValor : Extended;
    Calculando, MontandoGrade:Boolean;
    Function EncontraTamanho(TAM:Integer):Integer;
    Procedure CalculaCustoMedio;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaLancamentoGradeNota: TFormTelaLancamentoGradeNota;

implementation

uses CadastroNotaCompraItem, DataModulo, CadastroTEMPLATE;

{$R *.dfm}

Function TFormTelaLancamentoGradeNota.EncontraTamanho(TAM:Integer):Integer;
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

procedure TFormTelaLancamentoGradeNota.FormCreate(Sender: TObject);
Var
  DataSet:TDataSet;
  I,Posicao,CorAnt:Integer;
begin
  inherited;
  if not DM.SQLConfigVenda.active then
    DM.SQLConfigVenda.open;

  EncargosPerc := DM.SQLConfigVenda.fieldbyname('CFVEN2PERCENCARG').Value;
  PISPerc      := DM.SQLConfigVenda.fieldbyname('CFVEN2PERCPIS').Value;
  CofinsPerc   := DM.SQLConfigVenda.fieldbyname('CFVEN2PERCCOFINS').Value;

  {Faz Ligacao a tela de lanc itens da nota}
  DataSet := SQLProdutoGrade.DataSource.DataSet;
  DataSet.DisableControls;

  MontandoGrade:=True;
  if not SQLCor.Active then SQLCor.Open;
  If Not TblQtde.Active Then
    TblQtde.Open;

  SQLProdutoGrade.Open;
  SQLProdutoGrade.First; CorAnt := 0;

  If Not TblDados.Active Then
    TblDados.Open;
  TblDados.Append;
  TblDadosVlrCompra.Value     := DataSet.FindField('NOCIN3VLREMBAL').AsVariant;
  TblDadosPercReducao.Value   := DataSet.FindField('NOCIN2PREDBC').asVariant;
  TblDadosBaseCalcIcm.Value   := DataSet.FindField('NOCIN2VBC').asVariant;
  TblDadosCST.Value           := DataSet.FindField('NOCIA3CSTICMS').asVariant;
  if TblDadosCST.Value = '' then  TblDadosCST.Value := '102';
  TblDadosIcmPerc.Value       := DataSet.FindField('NOCIN3PERCICMS').asVariant;
  TblDadosDescPerc.Value      := DataSet.FindField('NOCIN3PERCDESC').asVariant;
  TblDadosIPIPerc.Value       := DataSet.FindField('NOCIN3PERCIPI').asVariant;
  TblDadosFretePerc.Value     := DataSet.FindField('NOCIN3PERCFRETE').asVariant;
  TblDadosSubstPerc.Value     := DataSet.FindField('NOCIN2PERCSUBST').asVariant;
  TblDadosDespPerc.Value      := DataSet.FindField('NOCIN2PERCDESP').asVariant;
  TblDadosDifIcmPerc.Value    := DataSet.FindField('NOCIN2PERCDIFICM').asVariant;
  TblDadosMGVarejo.Value      := DataSet.FindField('NOCIN2MGVENDA').asVariant;
  TblDadosVlrVenda.Value      := DataSet.FindField('NOCIN2VLRVENDA').asVariant;
  TblDados.Post;

  DataSet.EnableControls;

  SQLGradeTamanho.ParamByName('GRADICOD').Value:= SQLProdutoGrade.FindField('GRADICOD').Value;
  SQLGradeTamanho.Open;
  While Not SQLProdutoGrade.Eof Do
    Begin
      If SQLProdutoGrade.FindField('CORICOD').asInteger <> CorAnt Then
        Begin
          CorAnt := SQLProdutoGrade.FindField('CORICOD').asInteger;
          TblQtde.Append;
          TblQtde.FindField('CORICOD').Value:=SQLProdutoGrade.FindField('CORICOD').asInteger;
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
  DBGridListaGrade.Columns[0].Width:=150;
  DBGridListaGrade.Columns[0].Color:=$00E0E0E0;
  DBGridListaGrade.Columns[DBGridListaGrade.Columns.Count-1].Color:=$00E0E0E0;
  For I := 1 To DBGridListaGrade.Columns.Count-1 Do
    Begin
      DBGridListaGrade.Columns[I].Width:=(820 - 248) DIV (DBGridListaGrade.Columns.Count-1);
      DBGridListaGrade.Columns[I].Title.Alignment := taRightJustify;
    End;
  TblQtde.First;
end;

procedure TFormTelaLancamentoGradeNota.TblQtdeField1Change(Sender: TField);
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
      If Sender.DataSet.State in DsEditModes Then
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
      SQLProdutoGrade.DataSource.DataSet.FindField('NOCIN3QTDEMBAL').AsVariant:=EditTotal.Value;
      Calculando := False;
   End;
end;

procedure TFormTelaLancamentoGradeNota.BtnOkClick(Sender: TObject);
Var
  I:Integer;
  DataSet:TDataSet;
  NOCIN3QTDBONIF,
  NOCIN3CAPEMBAL,
  NOCIN3VLRUNIT,
  NOCIN3PERCICMS,
  NOCIN3VLRICMS,
  NOCIN3PERCDESC,
  NOCIN3VLRDESC,
  NOCIN3PERCIPI,
  NOCIN3VLRIPI,
  NOCIN3PERCFRETE,
  NOCIN3VLRFRETE,
  NOCIN2PERCSUBST,
  NOCIN3VLRSUBST,
  NOCIN2PERCDESP,
  NOCIN2PERCDIFICM,
  NOCIN2MGVENDA,
  NOCIN2VLRVENDA,
  NOCIN2MGVENDA2,
  NOCIN2VLRVENDA2,
  NOCIN2PREDBC,
  NOCIN2VBC           : Double;
  NOCIA3CSTICMS       : string;
begin
  inherited;
  DM.GerandoNotaCompra := True;

  {Faz Ligacao a tela de lanc itens da nota}
  DataSet := SQLProdutoGrade.DataSource.DataSet;
  TblQtde.First;
  DataSet.DisableControls;

  NOCIN3VLRUNIT     := TblDadosVlrCompra.AsFloat;
  NOCIA3CSTICMS     := TblDadoscst.asstring;
  NOCIN3QTDBONIF    := DataSet.FindField('NOCIN3QTDBONIF').asFloat;
  NOCIN3CAPEMBAL    := DataSet.FindField('NOCIN3CAPEMBAL').asFloat;
  NOCIN2PREDBC      := TblDadosPercReducao.AsFloat;
  NOCIN3PERCDESC    := TblDadosDescPerc.asFloat;
  NOCIN3VLRDESC     := DataSet.FindField('NOCIN3VLRDESC').asFloat;
  NOCIN3PERCIPI     := TblDadosIPIPerc.asFloat;
  NOCIN3VLRIPI      := DataSet.FindField('NOCIN3VLRIPI').asFloat;
  NOCIN3PERCFRETE   := TblDadosFretePerc.asFloat;
  NOCIN3VLRFRETE    := DataSet.FindField('NOCIN3VLRFRETE').asFloat;
  NOCIN2PERCSUBST   := TblDadosSubstPerc.asFloat;
  NOCIN3VLRSUBST    := DataSet.FindField('NOCIN3VLRSUBST').asFloat;
  NOCIN2PERCDIFICM  := TblDadosDifIcmPerc.asFloat;
  NOCIN2PERCDESP    := TblDadosDespPerc.AsFloat;
  NOCIN2MGVENDA     := TblDadosMGVarejo.asFloat;
  NOCIN2VLRVENDA    := TblDadosVlrVenda.asFloat;
  NOCIN2MGVENDA2    := DataSet.FindField('NOCIN2MGVENDA2').asFloat;
  NOCIN2VLRVENDA2   := DataSet.FindField('NOCIN2VLRVENDA2').asFloat;

  While Not TblQtde.Eof Do
    Begin
      For I:=1 To 15 Do
        Begin
          If TblQtde.FindField(IntToStr(I)).asFloat<>0 Then
            Begin
              If Not (DataSet.State in DsEditModes) Then
                DataSet.Append;
              DataSet.FindField('PRODICOD').Value            := TblQtde.FindField('Cod'+IntToStr(I)).Value;
              DataSet.FindField('NOCIN3VLRUNIT').asFloat     := NOCIN3VLRUNIT;
              DataSet.FindField('NOCIN3QTDEMBAL').Value      := TblQtde.FindField(IntToStr(I)).Value;
              DataSet.FindField('NOCIN3CAPEMBAL').asFloat    := NOCIN3CAPEMBAL;
              DataSet.FindField('NOCIA3CSTICMS').asString    := NOCIA3CSTICMS;
              DataSet.FindField('NOCIN3QTDBONIF').asFloat    := NOCIN3QTDBONIF;
              if not TblDadoscst.AsInteger in ([30, 40, 41, 50, 60, 102]) then
                begin
                  DataSet.FindField('NOCIN2VBC').asFloat         := NOCIN3VLRUNIT * (NOCIN3CAPEMBAL*TblQtde.FindField(IntToStr(I)).Value);
                  DataSet.FindField('NOCIN3PERCICMS').asFloat    := NOCIN3PERCICMS;
                end
              else
                begin
                  NOCIN2VBC         := 0;
                  NOCIN3PERCICMS    := 0;
                  NOCIN3VLRICMS     := 0;
                end;

              DataSet.FindField('NOCIN3VLRSUBST').asFloat    := NOCIN3VLRSUBST;
              DataSet.FindField('NOCIN3VLRDESC').asFloat     := NOCIN3VLRDESC;
              DataSet.FindField('NOCIN2PREDBC').asFloat      := NOCIN2PREDBC;
              DataSet.FindField('NOCIN2PERCSUBST').asFloat   := NOCIN2PERCSUBST;
              DataSet.FindField('NOCIN3PERCIPI').asFloat     := NOCIN3PERCIPI;
              DataSet.FindField('NOCIN3PERCFRETE').asFloat   := NOCIN3PERCFRETE;
              DataSet.FindField('NOCIN2PERCDIFICM').asFloat  := NOCIN2PERCDIFICM;
              DataSet.FindField('NOCIN3PERCDESC').asFloat    := NOCIN3PERCDESC;
              DataSet.FindField('NOCIN2PERCDESP').asFloat    := NOCIN2PERCDESP;
              DataSet.FindField('UNIDICOD').asString         := dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
              DataSet.Post;
            End;
        End;
      TblQtde.Next;
    End;
  DataSet.EnableControls;
  DataSet.Close;
  DM.GerandoNotaCompra := False;
  DataSet.Open;
  Close;
end;

procedure TFormTelaLancamentoGradeNota.TblQtdeBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaLancamentoGradeNota.TblQtdeCalcFields(
  DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade Then Exit;
  { COR
  if DataSet.FieldByName('CORICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('COR',['CORICOD'],[DataSet.FieldByName('CORICOD').AsString],1) Then
        begin
          DataSet.FieldByName('CorLookup').AsVariant    := DM.SQLTemplate.FindField('CORA30DESCR').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('CorLookup').asString := MensagemLookUp ;
        end;
    end
  else
    begin
      DataSet.FieldByName('CorLookup').AsVariant  := Null;
    end ;
  }

  TblQtde.FindField('Total').asFloat:=0;
  For I:=1 To 15 Do
    TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
end;

procedure TFormTelaLancamentoGradeNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If SQLProdutoGrade.DataSource.DataSet.State in dsEditModes Then
    SQLProdutoGrade.DataSource.DataSet.Cancel;

  DM.GerandoNotaCompra := False;
  DM.IncluindoGrade := False;
  inherited;
end;

procedure TFormTelaLancamentoGradeNota.TblQtdeBeforeDelete(
  DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaLancamentoGradeNota.DBGridListaGradeEnter(Sender: TObject);
begin
  inherited;
  DBGridListaGrade.SelectedIndex := 1 ;
end;

procedure TFormTelaLancamentoGradeNota.FormActivate(Sender: TObject);
begin
  inherited;
  DBVlrCompra.SetFocus;
end;

procedure TFormTelaLancamentoGradeNota.CalculaCustoMedio;
begin
  // Calcula Custo Medio
{  try
    dm.VlrCustoNovoGradeCompra :=   SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                             (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat));

    valorIpi     := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN3PERCIPI').asFloat)/100;
    valorSubst   := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN2PERCSUBST').asFloat)/100;
    valorFrete   := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN3PERCFRETE').asFloat)/100;
    valorDespesa := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN2PERCDESP').asFloat)/100;
    valordifIcms := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN2PERCDIFICM').asFloat)/100;

    PISValor      := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * PISPerc)/100;
    CofinsValor   := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * CofinsPerc)/100;
    EncargosValor := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * EncargosValor)/100;

    dm.vlr := SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat +
                                                       valorIpi + valorSubst  + valorFrete + valorDespesa + valordifIcms +
                                                       valorPIS + valorCofins + ValorEncargos;

  except
    dm.VlrCustoNovoGradeCompra := 0;
  end; }
end;

procedure TFormTelaLancamentoGradeNota.TblDadosBeforeDelete(
  DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaLancamentoGradeNota.DBMGVarejoExit(Sender: TObject);
var Denominador : Double;
begin
  inherited;
  tbldados.edit;
  Denominador := TblDadosIPIPerc.asFloat          +
                 TblDadosSubstPerc.asFloat        +
                 TblDadosFretePerc.asFloat        +
                 TblDadosDespPerc.asFloat         +
                 TblDadosDifIcmPerc.asFloat       +
                 Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsFloat  +
                 Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsFloat     +
                 Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat  +
                 TblDadosMGVarejo.asFloat ;

  TblDadosVlrVenda.Value := TblDadosVlrCompra.AsFloat *  (1+(TblDadosMGVarejo.asFloat/100));

  tbldados.post;
end;

procedure TFormTelaLancamentoGradeNota.dbCSTExit(Sender: TObject);
begin
  inherited;
  if tbldadoscst.AsString = '' then
    begin
      showmessage('Obrigatorio informar a CST de ICMs');
      dbCST.setfocus;
    end;
end;

end.
