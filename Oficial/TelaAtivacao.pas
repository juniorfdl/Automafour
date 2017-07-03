unit TelaAtivacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ConerBtn, RXCtrls, ExtCtrls, DB,
  DBTables, RxQuery;

type
  TFormTelaAtivacao = class(TForm)
    PanelDadosCliente: TPanel;
    RxLabel1: TRxLabel;
    BtLiberar: TConerBtn;
    Vlr01: TMaskEdit;
    Vlr02: TMaskEdit;
    Vlr03: TMaskEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Panel1: TPanel;
    RxLabel4: TRxLabel;
    procedure BtLiberarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAtivacao: TFormTelaAtivacao;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaAtivacao.BtLiberarClick(Sender: TObject);
var Dia, Mes, Ano : Integer;
begin
  Dia := StrToInt(FormatDateTime('dd',Now))+8;
  Mes := StrToInt(FormatDateTime('mm',Now))+9;
  Ano := StrToInt(FormatDateTime('yy',Now))+68;
  // A chave sera calculada assim: Dia + 08, Mes + 09, ano + 68
  if (IntToStr(Dia) = Vlr01.Text) and (IntToStr(Mes) = Vlr02.Text) and (IntToStr(Ano) = Vlr03.Text) then
    begin
      dm.SQLConfigGeral.Open;
      dm.SQLConfigGeral.Edit;
      dm.SQLConfigGeralCFGECBLOQ.Value := 'N';
      dm.SQLConfigGeralCFGEDBLOQ.Value := Date + 90;
      dm.SQLConfigGeral.Post;
      dm.SQLConfigGeral.close;
      dm.SQLConfigGeral.Open;
      ShowMessage('Sistema Liberado para usar mais 90 dias! Obrigado!');
      close;
    end
  else
    begin
      ShowMessage('Chave digitada é inválida! Tente Novamente!');
      Vlr01.SetFocus;
    end;
end;

end.
