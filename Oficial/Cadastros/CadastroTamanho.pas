unit CadastroTamanho;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroTamanho = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGRTMICOD: TIntegerField;
    SQLTemplateGRTMA5DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTamanho: TFormCadastroTamanho;

implementation

uses UnitLibrary;

{$R *.DFM}

procedure TFormCadastroTamanho.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'GRADETAMANHO';
end;

procedure TFormCadastroTamanho.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateGRADICOD.Value := SqlTemplate.DataSource.DataSet.FieldByName('GRADICOD').Value;
end;

procedure TFormCadastroTamanho.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLCount.Close;
  SQLCount.SQL.Clear;
  SQLCount.SQL.ADD('SELECT COUNT(*) FROM GRADETAMANHO WHERE GRADICOD = ' + DSMasterTemplate.DataSet.FieldByName('GRADICOD').AsString);
  SQLCount.Open;
  if SQLCount.FieldByName('COUNT').AsFloat = 15 then
    begin
      Informa('O número máximo de tamanhos para uma grade é 15, e este número já foi alcançado...' + #13 +
              'A operação não será concluída, se desejar inicie uma nova grade!');
      Abort;        
    end;
end;

end.
