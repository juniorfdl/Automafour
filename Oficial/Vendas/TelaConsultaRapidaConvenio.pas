unit TelaConsultaRapidaConvenio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RXCtrls, EWall,
  RxQuery;

type
  TFormTelaConsultaRapidaConvenio = class(TForm)
    LblTituloTela: TRxLabel;
    DSTemplate: TDataSource;
    SQLConvenio: TRxQuery;
    SQLConvenioCONVICOD: TIntegerField;
    SQLConvenioCONVA60DESCR: TStringField;
    SQLConvenioCONVDVENC: TIntegerField;
    VALOR: TEdit;
    DBGridLista: TDBGrid;
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRapidaConvenio: TFormTelaConsultaRapidaConvenio;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens;

{$R *.DFM}

procedure TFormTelaConsultaRapidaConvenio.VALORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN :
        begin
          SQLConvenio.Close ;

          if Pos('*', Valor.Text) > 0 then
            SQLConvenio.MacroByName('MLike').Value := 'CONVA60DESCR like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"'
          else
            SQLConvenio.MacroByName('MLike').Value := 'CONVA60DESCR like "' + Valor.Text + '%"' ;

          SQLConvenio.Open ;

          SQLConvenio.First ;
          if not SQLConvenio.EOF then
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

procedure TFormTelaConsultaRapidaConvenio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaConsultaRapidaConvenio.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    if SQLConvenioCONVICOD.AsString <> '' then
    begin
      ConvenioVenda := SQLConvenioCONVICOD.Value ;
    end ;
    Close ;
  end ;
end;

procedure TFormTelaConsultaRapidaConvenio.FormCreate(Sender: TObject);
begin

  SQLConvenio.Open ;
end;

procedure TFormTelaConsultaRapidaConvenio.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close ;
end;

end.
