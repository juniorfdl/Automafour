unit TelaConsultaRapidaVendedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RXCtrls, EWall;

type
  TFormTelaConsultaRapidaVendedor = class(TForm)
    LblNomeSistema: TRxLabel;
    DSTemplate: TDataSource;
    SQLVendedor: TQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    VALOR: TEdit;
    DBGridLista: TDBGrid;
    SQLVendedorVENDCATIVO: TStringField;
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRapidaVendedor: TFormTelaConsultaRapidaVendedor;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens;

{$R *.DFM}

procedure TFormTelaConsultaRapidaVendedor.VALORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN :
        begin
          if Valor.Text = '' then
          begin
            DBGridLista.Setfocus ;
            exit ;
          end ;
          SQLVendedor.Close ;
          SQLVendedor.SQL.Clear ;
          SQLVendedor.SQL.Add('select * from VENDEDOR') ;
          SQLVendedor.SQL.Add('where') ;
          if Pos('*', Valor.Text) > 0 then
            SQLVendedor.SQL.Add('VENDA60NOME like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"')
          else
            SQLVendedor.SQL.Add('VENDA60NOME like "' + Valor.Text + '%"') ;
          SQLVendedor.Open ;

          SQLVendedor.First ;
          if not SQLVendedor.EOF then
            DBGridLista.Setfocus ;
        end ;
    VK_DOWN :
        begin
          DSTemplate.DataSet.Next;
          DBGridLista.SetFocus;
        end;
    VK_UP:
        begin
          DSTemplate.DataSet.Prior;
          DBGridLista.SetFocus;
        end;
  end ;
end;

procedure TFormTelaConsultaRapidaVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaConsultaRapidaVendedor.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    if SQLVendedor.FieldByName('VENDICOD').AsString <> '' then
    begin
      VendedorVenda := SQLVendedor.FieldByName('VENDICOD').Value ;
    end ;
    Close ;
  end ;
end;

procedure TFormTelaConsultaRapidaVendedor.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
  SQLVendedor.Open ;
end;

procedure TFormTelaConsultaRapidaVendedor.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close ;
end;

procedure TFormTelaConsultaRapidaVendedor.FormActivate(Sender: TObject);
begin
  if FormTelaFechamentoVenda.Visible then
    if (FormTelaFechamentoVenda.EntradaDados.Text <> '') and (not IsNumeric(FormTelaFechamentoVenda.EntradaDados.Text, 'INTEGER')) then
      begin
        VALOR.Text := FormTelaFechamentoVenda.EntradaDados.Text ;
        VALORKeyDown(Sender, Enter
        , [ssAlt]) ;
      end ;
end;

end.
