unit CadastroSubgrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, FormResources,
  VarSys, DBActns, ActnList, ImgList, EDBNum, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroSubgrupo = class(TFormCadastroTEMPLATE)
    SQLTemplateGRUPICOD: TIntegerField;
    SQLTemplateSUBGICOD: TIntegerField;
    SQLTemplateSUBGA60DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateSUBGN3MARGEM: TFloatField;
    DBMgFixaVarejo: TEvDBNumEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSubgrupo: TFormCadastroSubgrupo;

implementation

uses CadastroVariacao, DataModulo;

{$R *.DFM}

procedure TFormCadastroSubgrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'SUBGRUPO';
end;

procedure TFormCadastroSubgrupo.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateGRUPICOD.Value := SqlTemplate.DataSource.DataSet.FieldByName('GRUPICOD').Value;
end;

procedure TFormCadastroSubgrupo.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroVariacao,'FormCadastroVariacao',True,False,True,'SubGrupo ' + SQLTemplateSUBGA60DESCR.Value);
    End;
end;

end.
