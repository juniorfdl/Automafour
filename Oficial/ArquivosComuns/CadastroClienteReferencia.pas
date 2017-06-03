 unit CadastroClienteReferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroClienteReferencia = class(TFormCadastroTEMPLATE)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLRFICOD: TIntegerField;
    SQLTemplateCLRFA254REFERENCIA: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteReferencia: TFormCadastroClienteReferencia;

implementation

{$R *.DFM}

procedure TFormCadastroClienteReferencia.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTEREFERENCIA' ;
end;

procedure TFormCadastroClienteReferencia.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('CLIEA13ID').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('CLIEA13ID').Value;
end;

end.
