unit CadastroGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, FormResources,
  VarSys, DBActns, ActnList, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroGrade = class(TFormCadastroTEMPLATE)
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGRADA30DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    DBGridTamanho: TDBGrid;
    Panel6: TPanel;
    Label3: TLabel;
    DBNavigator: TDBNavigator;
    SQLGradeTamanho: TRxQuery;
    DSSQLGradeTamanho: TDataSource;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLGradeTamanhoPENDENTE: TStringField;
    SQLGradeTamanhoREGISTRO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLGradeTamanhoNewRecord(DataSet: TDataSet);
    procedure SQLGradeTamanhoBeforePost(DataSet: TDataSet);
    procedure SQLGradeTamanhoPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLGradeTamanhoAfterPost(DataSet: TDataSet);
    procedure SQLGradeTamanhoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroGrade: TFormCadastroGrade;

implementation

uses CadastroTamanho, UnitLibrary, DataModulo ;

{$R *.DFM}

procedure TFormCadastroGrade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'GRADE' ;
end;

procedure TFormCadastroGrade.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroTamanho,'FormCadastroTamanho',True,False,True,'Grade: '+SQLTemplateGRADICOD.AsString+' - '+ SQLTemplateGRADA30DESCR.Value);
end;

procedure TFormCadastroGrade.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateGRADA30DESCR.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
end;

procedure TFormCadastroGrade.SQLGradeTamanhoNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLGradeTamanhoGRADICOD.AsInteger := SQLTemplateGRADICOD.AsInteger;
end;

procedure TFormCadastroGrade.SQLGradeTamanhoBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLCount.Close;
  SQLCount.SQL.Clear;
  SQLCount.SQL.ADD('SELECT COUNT(*) FROM GRADETAMANHO WHERE GRADICOD = ' + DataSet.FieldByName('GRADICOD').AsString);
  SQLCount.Open;
  if SQLCount.FieldByName('COUNT').AsFloat = 15 then
    begin
      Informa('O número máximo de tamanhos para uma grade é 15, e este número já foi alcançado...' + #13 +
              'A operação não será concluída, se desejar inicie uma nova grade!');
      Abort;        
    end;

  SQLGradeTamanhoPENDENTE.AsString   := 'S';
  SQLGradeTamanhoREGISTRO.AsDateTime := Now;
  if SQLGradeTamanho.State in [DsInsert] then
    begin
      SQLGradeTamanhoGRTMICOD.AsInteger :=  DM.ProximoCodigoUnico('GRADETAMANHO',DataSet,DSTemplate,1);
    end;
end;

procedure TFormCadastroGrade.SQLGradeTamanhoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if DataSet.State in [DsInsert] then
    begin
      DataSet.Fields[1].asInteger:=DataSet.Fields[1].asInteger + 1;
      Action := daRetry;
    end;  
end;

procedure TFormCadastroGrade.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not SQLGradeTamanho.Active then SQLGradeTamanho.Open;
end;

procedure TFormCadastroGrade.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  DBGridTamanho.ReadOnly := (SQLTemplate.State in dsEditModes);
end;

procedure TFormCadastroGrade.SQLGradeTamanhoAfterPost(DataSet: TDataSet);
begin
  inherited;
  SQLGradeTamanho.Close;
  SQLGradeTamanho.Open;
  SQLGradeTamanho.Last;
end;

procedure TFormCadastroGrade.SQLGradeTamanhoBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('GRADETAMANHO',SQLGradeTamanho);
end;

end.
