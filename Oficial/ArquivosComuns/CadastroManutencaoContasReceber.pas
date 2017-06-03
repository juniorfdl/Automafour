unit CadastroManutencaoContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroManutencaoContasReceber = class(TFormCadastroTEMPLATE)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroManutencaoContasReceber: TFormCadastroManutencaoContasReceber;

implementation

{$R *.dfm}

end.
