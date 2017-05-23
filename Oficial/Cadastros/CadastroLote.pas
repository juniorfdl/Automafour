unit CadastroLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroLote = class(TFormCadastroTEMPLATE)
    SQLTemplateLOTEA30NRO: TStringField;
    SQLTemplateLOTEDVECTO: TDateTimeField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroLote: TFormCadastroLote;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroLote.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'LOTE';
end;

procedure TFormCadastroLote.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (SQLTemplate.State in [DsInsert]) then
    begin
      if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','"' + SQLTemplateLOTEA30NRO.AsString + '"') <> '' then
        begin
          Informa('Número de lote já existe !');
          Abort;
        end;
    end;
end;

procedure TFormCadastroLote.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  if SQLLocate('MOVIMENTOESTOQUE','LOTEA30NRO','LOTEA30NRO','"'+ SQLTemplateLOTEA30NRO.AsString +'"') <> '' then
    begin
      Informa('Este lote já foi utilizado, portanto não pode ser excluído!');
      Abort;
      Exit;
    end;
  inherited;
end;

procedure TFormCadastroLote.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateLOTEDVECTO.AsString := FormatDateTime('dd/mm/yyyy',Now);
end;

end.
