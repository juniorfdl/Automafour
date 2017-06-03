unit TelaAtualizarSaldoDiarioProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ConerBtn, ExtCtrls, ComCtrls;

type
  TFormTelaAtualizarSaldoDiarioProduto = class(TForm)
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    Progress: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAtualizarSaldoDiarioProduto: TFormTelaAtualizarSaldoDiarioProduto;

implementation

{$R *.dfm}

end.
