unit RelatorioProdutoCadastrado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioProdutoCadastrado = class(TFormRelatorioTEMPLATE)
    SQLProduto: TRxQuery;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoGRTMA5DESCR: TStringField;
    SQLProdutoGRUPA60DESCR: TStringField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    TblTemporariaPRODDCAD: TDateTimeField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaGRTMA5DESCR: TStringField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaCORA30DESCR: TStringField;
    TblTemporariaPRODIAGRUPGRADE: TIntegerField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutoCadastrado: TFormRelatorioProdutoCadastrado;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioProdutoCadastrado.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLProduto.Close;
  SQLProduto.MacroByName('MData').Value := 'PRODUTO.PRODDCAD >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                           'PRODUTO.PRODDCAD <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLProduto.Open;
  if not SQLProduto.IsEmpty then
    begin
      BatchExec(SQLProduto,TblTemporaria);
      if SetaParametrosCrystalReport('Produtos Cadastrados.rpt','Relatório de Produtos Cadastrados',Report) then
        begin
          // AjustaCaminhoCrystal;
          //SETAR FORMULAS NO RPT
          Report.Formulas.Retrieve;
          //--------------------------------------------------------------------------\\
          Report.Formulas.Name         := 'Emissao';
          Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
          //--------------------------------------------------------------------------\\
          Report.Formulas.Name         := 'PeriodoEmissao';
          Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                                FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
          //--------------------------------------------------------------------------\\
          Report.Formulas.Send;
          Report.Execute;
        end;
    end
  else
    Informa('Nenhum Registro Encontrado!');  
end;

end.
