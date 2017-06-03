unit CadastroFornecedorContato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroFornecedorContato = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateFOCOICOD: TIntegerField;
    SQLTemplateFOCOA60NOME: TStringField;
    SQLTemplateFOCOA15FONE: TStringField;
    SQLTemplateFOCOA15CELULAR: TStringField;
    SQLTemplateFOCOA60EMAIL: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateFOCOCENVIAMALA: TStringField;
    SQLTemplateFOCOA254OBS: TStringField;
    SQLTemplateFOCOA60DEPTO: TStringField;
    SQLTemplateFOCOA60SETOR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFornecedorContato: TFormCadastroFornecedorContato;

implementation

{$R *.DFM}

procedure TFormCadastroFornecedorContato.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FORNECEDORCONTATO' ;
end;

procedure TFormCadastroFornecedorContato.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('FORNICOD').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('FORNICOD').Value ;
end;

end.
