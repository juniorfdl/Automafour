unit CadastroPlanodeContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroPlanodeContas = class(TFormCadastroTEMPLATE)
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePLCTICODREDUZ: TIntegerField;
    SQLTemplatePLCTINIVEL: TIntegerField;
    SQLTemplatePLCTA15CODPAI: TStringField;
    SQLTemplatePLCTA30CODEDIT: TStringField;
    SQLTemplatePLCTA60DESCR: TStringField;
    SQLTemplatePLCTCANALSINT: TStringField;
    SQLTemplatePLCTCTIPOSALDO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPlanodeContas: TFormCadastroPlanodeContas;

implementation

{$R *.DFM}

procedure TFormCadastroPlanodeContas.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PLANODECONTAS' ;
end;

end.
