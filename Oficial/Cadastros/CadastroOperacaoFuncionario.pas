unit CadastroOperacaoFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroOperacaoFuncionario = class(TFormCadastroTEMPLATE)
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ComboTipoOperacao: TRxDBComboBox;
    Label2: TLabel;
    SQLTemplateOPFUICOD: TIntegerField;
    SQLTemplateOPFUA60DESCR: TStringField;
    SQLTemplateOPFUCTIPOOPERACAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOperacaoFuncionario: TFormCadastroOperacaoFuncionario;

implementation

{$R *.dfm}

procedure TFormCadastroOperacaoFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOFUNCIONARIO';
end;

procedure TFormCadastroOperacaoFuncionario.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('OPFUCTIPOOPERACAO').AsString := 'C';
end;

end.
