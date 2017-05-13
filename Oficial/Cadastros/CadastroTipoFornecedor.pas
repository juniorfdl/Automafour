unit CadastroTipoFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, FormResources, VarSys, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTipoFornecedor = class(TFormCadastroTEMPLATE)
    SQLTemplateTPFRICOD: TIntegerField;
    SQLTemplateTPFRA60DESCR: TStringField;
    SQLTemplateTPCUICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton9: TSpeedButton;
    DBEdit33: TDBEdit;
    SQLTemplateTipoCustoLookUp: TStringField;
    SQLTipoCusto: TRxQuery;
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTipoFornecedor: TFormCadastroTipoFornecedor;

implementation

uses DataModulo, CadastroTipoCusto;

{$R *.DFM}

procedure TFormCadastroTipoFornecedor.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPCUICOD');
  FieldOrigem := 'TPCUICOD' ;
//  CriaFormulario(TFormCadastroTipoCusto,'FormCadastroTipoCusto',False,True,'');
end;

procedure TFormCadastroTipoFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela:='TipoFornecedor';
end;

end.
