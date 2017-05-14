unit CadastroClienteContato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroClienteContato = class(TFormCadastroTEMPLATE)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLCOICOD: TIntegerField;
    SQLTemplateCLCOA60NOME: TStringField;
    SQLTemplateCLCOA15FONE: TStringField;
    SQLTemplateCLCOA15CELULAR: TStringField;
    SQLTemplateCLCOA60EMAIL: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
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
    SQLTemplateCLCOCENVIAMALA: TStringField;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEditRzSocial: TDBEdit;
    SQLTemplateCLCOA254OBS: TStringField;
    SQLTemplateCLCOA60DEPTO: TStringField;
    SQLTemplateCLCOA60SETOR: TStringField;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteContato: TFormCadastroClienteContato;

implementation

{$R *.DFM}

procedure TFormCadastroClienteContato.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTECONTATO' ;
end;

procedure TFormCadastroClienteContato.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('CLIEA13ID').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('CLIEA13ID').Value ;
end;

end.
