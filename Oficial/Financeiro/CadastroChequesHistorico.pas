unit CadastroChequesHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, RXDBCtrl, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroChequesHistorico = class(TFormCadastroTEMPLATE)
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateCHRHICOD: TIntegerField;
    SQLTemplateCHRHDDIGITACAO: TDateTimeField;
    SQLTemplateCHRHA255OBS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBDateEdit;
    DBEdit2: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroChequesHistorico: TFormCadastroChequesHistorico;

implementation

{$R *.dfm}

procedure TFormCadastroChequesHistorico.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CHEQUERECEBIDOHISTORICO' ;
end;

procedure TFormCadastroChequesHistorico.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('CTRCA13ID').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('CTRCA13ID').Value;
  SQLTemplateCHRHDDIGITACAO.Value := Date ;
end;

end.
