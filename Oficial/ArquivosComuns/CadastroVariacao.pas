unit CadastroVariacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroVariacao = class(TFormCadastroTEMPLATE)
    SQLTemplateSUBGICOD: TIntegerField;
    SQLTemplateVARIICOD: TIntegerField;
    SQLTemplateVARIA60DESCR: TStringField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateGRUPICOD: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVariacao: TFormCadastroVariacao;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormCadastroVariacao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'VARIACAO';
end;

procedure TFormCadastroVariacao.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateGRUPICOD.Value := SqlTemplate.DataSource.DataSet.FieldByName('GRUPICOD').Value;
  SQLTemplateSUBGICOD.Value := SqlTemplate.DataSource.DataSet.FieldByName('SUBGICOD').Value;
end;

procedure TFormCadastroVariacao.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateVARIA60DESCR.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
end;

end.
