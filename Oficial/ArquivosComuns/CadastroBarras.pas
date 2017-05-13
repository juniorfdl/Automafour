unit CadastroBarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  RXCtrls, ExtCtrls, Buttons, jpeg, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroBarras = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRBAA15BARRAS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePRODCIMPETIQCDBAR: TStringField;
    Label112: TLabel;
    ComboImpEtqBarras: TRxDBComboBox;
    SQLBarrasPdvs: TRxQuery;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    function EnviaBarrasPDVs(Tipo : string) : boolean;
  public
    { Public declarations }
  end;

var
  FormCadastroBarras: TFormCadastroBarras;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroBarras.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('PRODICOD').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('PRODICOD').Value ;
  SQLTemplate.FieldByName('PRODCIMPETIQCDBAR').Value := 'N';
end;

procedure TFormCadastroBarras.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUTOBARRAS' ;
end;

procedure TFormCadastroBarras.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQl.Add('SELECT PRODICOD FROM PRODUTO WHERE PRODA60CODBAR = "' + SQLTemplate.FieldByName('PRBAA15BARRAS').AsString +'"');
  DM.SQLTemplate.Open;
  if DM.SQLTemplate.RecordCount > 0 then
    begin
      if not Pergunta('NAO','Aten��o! Este c�digo de barras j� foi cadastrado para o produto '+DM.SQLTemplate.Fieldbyname('PRODICOD').AsString +chr(13)+
                      'Deseja Prosseguir?') then
        begin
          SQLTemplate.FieldByName('PRBAA15BARRAS').FocusControl;
          Abort;
        end ;
    end
  else
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQl.Add('SELECT PRODICOD FROM PRODUTOBARRAS WHERE PRBAA15BARRAS = "' + SQLTemplate.FieldByName('PRBAA15BARRAS').AsString + '" AND PRODICOD <>'+SQLTemplate.FieldByName('PRODICOD').asString);
      DM.SQLTemplate.Open;
      if DM.SQLTemplate.RecordCount > 0 then
        begin
          if not Pergunta('NAO','Aten��o! Este c�digo de barras j� foi cadastrado para o produto '+DM.SQLTemplate.Fieldbyname('PRODICOD').AsString +chr(13)+
                          'Deseja Prosseguir?') then
            begin
              SQLTemplate.FieldByName('PRBAA15BARRAS').FocusControl;
              Abort;
            end ;
        end;
    end;
end;

procedure TFormCadastroBarras.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  EnviaBarrasPDVs('N');
end;

function TFormCadastroBarras.EnviaBarrasPDVs(Tipo : string) : boolean ;
var i : integer;
begin
  {Atualiza a tabela BarrasPDVs}

  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from Terminal where TERMCTIPO = "C"';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
    begin
      while not dm.sqlconsulta.eof do
        begin
          SQLBarrasPdvs.close;
          SQLBarrasPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+SQLTemplatePRODICOD.AsString+
                                                        ' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString+
                                                        ' and PRBAA15BARRAS="'+SQLTemplatePRBAA15BARRAS.Value+'"' ;
          SQLBarrasPdvs.Open;
          if SQLBarrasPdvs.IsEmpty then
            SQLBarrasPdvs.append
          else
            SQLBarrasPdvs.edit;
          {Alimenta Campos}
          SQLBarrasPdvs.fieldbyname('TERMICOD').AsString    := dm.SQLConsulta.fieldbyname('TERMICOD').AsString;
          SQLBarrasPdvs.fieldbyname('PRODICOD').AsString    := SQLTemplatePRODICOD.AsString;
          SQLBarrasPdvs.fieldbyname('PRBAA15BARRAS').Value  := SQLTemplatePRBAA15BARRAS.Value;
          SQLBarrasPdvs.fieldbyname('EXCLUIR').AsString     := Tipo;
          SQLBarrasPdvs.Post;
          {PULA Terminal}
          dm.sqlconsulta.next;
        end;
    end;
end;

procedure TFormCadastroBarras.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  EnviaBarrasPDVs('S');

  inherited;
end;

end.
