unit CadastroClienteHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, RXDBCtrl, dbcgrids,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroClienteHistorico = class(TFormCadastroTEMPLATE)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLHTICOD: TIntegerField;
    SQLTemplateCLHTDEMIS: TDateTimeField;
    SQLTemplateCLHTTHISTORICO: TMemoField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBDateEdit1: TDBDateEdit;
    MemoHist: TDBMemo;
    CtrlGridLista: TDBCtrlGrid;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBMemo3: TDBMemo;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    SQLTemplateCLHTDPROXCONTATO: TDateTimeField;
    Label10: TLabel;
    DBDateEdit2: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure CtrlGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteHistorico: TFormCadastroClienteHistorico;

implementation

{$R *.dfm}

procedure TFormCadastroClienteHistorico.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTEHISTORICO';
end;

procedure TFormCadastroClienteHistorico.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateCLIEA13ID.AsString   := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
  SQLTemplateCLHTDEMIS.AsDateTime := Date;
end;

procedure TFormCadastroClienteHistorico.CtrlGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    PagePrincipal.ActivePage := TabSheetDadosPrincipais;

end;

end.

