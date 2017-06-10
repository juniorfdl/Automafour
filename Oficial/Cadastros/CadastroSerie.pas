unit CadastroSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBActns, ActnList, ImgList,
  DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, RxLookup, ToolEdit, RxDBComb,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroSerie = class(TFormCadastroTEMPLATE)
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateSERIINRONF: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    Label12: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    DSSQLEmpresa: TDataSource;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    ArqExecImpr: TFilenameEdit;
    SQLTemplateSERIA100PATHEXEIMP: TStringField;
    Label3: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    SQLTemplateSERIA2TIPONOTA: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateSERIA5CODChange(Sender: TField);
    procedure ArqExecImprChange(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSerie: TFormCadastroSerie;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroSerie.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'SERIE';
  SQLEmpresa.Open;
end;

procedure TFormCadastroSerie.SQLTemplateSERIA5CODChange(Sender: TField);
begin
  inherited;
{  if TField(Sender).AsString <>  '' then
    begin
      if SQLLocate('NOTAFISCAL','SERIA5COD','SERIA5COD','''' + TField(Sender).AsString + '''') <> '' then
        begin
          Informa('Esta série já foi utilizada, portanto não pode ser alterada!');
          Abort;
        end;
    end; }
end;

procedure TFormCadastroSerie.ArqExecImprChange(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
    SQLTemplate.Edit ;

  SQLTemplateSERIA100PATHEXEIMP.Value := ArqExecImpr.Text ;
end;

procedure TFormCadastroSerie.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if SQLTemplateEMPRICOD.AsString = '' then
    begin
      Informa('Erro: O campo Empresa é Obrigatório!');
      Abort;
      Exit;
    end;
  if SQLTemplateSERIA5COD.AsString = '' then
    begin
      Informa('Erro: O campo Série é Obrigatório!');
      Abort;
      Exit;
    end;
  if SQLTemplateSERIA2TIPONOTA.AsString = '' Then
    begin
      Informa('Erro: O Tipo de documento fiscal é Obrigatório!');
      Abort;
      Exit;
    end;
  if SQLTemplate.State in ([dsInsert]) Then
  begin
    If SQLLocate('SERIE','SERIA5COD','SERIA5COD',''''+SQLTemplateSERIA5COD.AsString+'''') <> '' Then
    Begin
      Informa('Esta Série Já Existe!');
      Abort;
      Exit;
    End;
  End;

  inherited;
end;

end.


