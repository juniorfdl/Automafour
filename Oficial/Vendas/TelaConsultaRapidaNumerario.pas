unit TelaConsultaRapidaNumerario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RXCtrls, EWall,
  RxQuery, AdvSmoothPanel;

type
  TFormTelaConsultaRapidaNumerario = class(TForm)
    DSTemplate: TDataSource;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    ScrollBoxPrincipal: TScrollBox;
    AdvSmoothPanel3: TAdvSmoothPanel;
    LblTituloTela: TRxLabel;
    VALOR: TEdit;
    DBGridLista: TDBGrid;
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRapidaNumerario: TFormTelaConsultaRapidaNumerario;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens;

{$R *.DFM}

procedure TFormTelaConsultaRapidaNumerario.VALORKeyDown(Sender: TObject;
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

          SQLNumerario.Close ;

          if Pos('*', Valor.Text) > 0 then
            SQLNumerario.MacroByName('MLike').Value := 'NUMEA30DESCR like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"'
          else
            SQLNumerario.MacroByName('MLike').Value := 'NUMEA30DESCR like "' + Valor.Text + '%"' ;

{          if EstadoFechVenda = TelaFechamentoVenda.InformandoNumerarioVista then
            SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "V"' ;

          if EstadoFechVenda = TelaFechamentoVenda.InformandoNumerarioPrazo then
            SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "P"' ;}

          SQLNumerario.Open ;

          SQLNumerario.First ;
          if not SQLNumerario.EOF then
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

procedure TFormTelaConsultaRapidaNumerario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaConsultaRapidaNumerario.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    if SQLNumerarioNUMEICOD.AsString <> '' then
    begin
      NumerarioAtual := SQLNumerarioNUMEICOD.Value ;
    end ;
    Close ;
  end ;
end;

procedure TFormTelaConsultaRapidaNumerario.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close ;
end;

procedure TFormTelaConsultaRapidaNumerario.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
  if not SQLNumerario.Active then SQLNumerario.Open;
end;

end.
