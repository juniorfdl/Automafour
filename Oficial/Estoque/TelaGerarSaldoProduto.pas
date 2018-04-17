unit TelaGerarSaldoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  RXCtrls, ComCtrls, DB, DBTables, RxQuery, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaGerarSaldoProduto = class(TFormTelaGeralTEMPLATE)
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    Progress: TProgressBar;
    LabelDiversos: TRxSpeedButton;
    Label1: TLabel;
    procedure LabelDiversosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGerarSaldoProduto: TFormTelaGerarSaldoProduto;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaGerarSaldoProduto.LabelDiversosClick(Sender: TObject);
var
  xsql:String;
  i : integer;
begin
  inherited;
  dm.SQLEmpresa.Open;
  i := DM.SQLEmpresaEMPRICOD.AsInteger;

  xSql := ' INSERT INTO PRODUTOSALDO(empricod, prodicod, psldn3qtde, psldn3qtdmin, psldn3qtdmax) '
  +' SELECT '+dm.SQLEmpresaEMPRICOD.AsString+', A.prodicod, 0, 0, 0 FROM PRODUTO A '
  +' LEFT JOIN PRODUTOSALDO B ON B.prodicod = A.prodicod '
  +' AND B.empricod = '+dm.SQLEmpresaEMPRICOD.AsString+' WHERE B.prodicod IS NULL ';

  ExecSql(xsql,1);
  MessageDlg('Processo executado com sucesso!', mtInformation, [mbOK], 0);

  {SQLEmpresa.OPen ;
  DM.SQLProduto.Open ;
  DM.SQLProdutoSaldo.Open ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Count(*) as Contador from PRODUTOSALDO') ;
  DM.SQLTemplate.Open ;
  Progress.Max := SQLRecCount('PRODUTO', '') ; // DM.SQLTemplate.FieldByName('Contador').Value ;

  Progress.Position := 0;
  while not DM.SQLProduto.EOF do
  begin
    SQLEmpresa.First;
    while not SQLEmpresa.EOF do
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select PSLDN3QTDE from PRODUTOSALDO');
      DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + SQLEmpresaEMPRICOD.AsString);
      DM.SQLTemplate.SQL.Add('and   PRODICOD = ' + DM.SQLProduto.FieldByName('PRODICOD').AsString);
      DM.SQLTemplate.Open;
      if DM.SQLTemplate.EOF then
      begin
        DM.SQLProdutoSaldo.Append;
        DM.SQLProdutoSaldoEMPRICOD.Value     := SQLEmpresaEMPRICOD.Value;
        DM.SQLProdutoSaldoPRODICOD.Value     := DM.SQLProduto.FieldByName('PRODICOD').Value;
        DM.SQLProdutoSaldoPSLDN3QTDE.Value   := 0;
        DM.SQLProdutoSaldoPSLDN3QTDMIN.Value := 0;
        DM.SQLProdutoSaldoPSLDN3QTDMAX.Value := 0;
        DM.SQLProdutoSaldo.Post;
      end;

      SQLEmpresa.Next;
    end ;

    DM.SQLProduto.Next ;
    Progress.Position := Progress.Position + 1 ;
  end ;
  Progress.Position := 0 ;}
end;

end.
