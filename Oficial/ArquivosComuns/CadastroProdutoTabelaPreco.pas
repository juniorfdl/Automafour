unit CadastroProdutoTabelaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, RXDBCtrl, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroProdutoTabelaPreco = class(TFormCadastroTEMPLATE)
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit11: TDBEdit;
    SQLTabelaPreco: TRxQuery;
    SQLTabelaPrecoTPRCICOD: TIntegerField;
    SQLTabelaPrecoTPRCA60DESCR: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBDateEdit;
    DBEdit5: TDBDateEdit;
    SQLTemplateTPRCICOD: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateTPCPN3VLRVENDA: TFloatField;
    SQLTemplateTPCPN3MARGLUCR: TFloatField;
    SQLTemplateTPCPN3VLRVENDAPROM: TFloatField;
    SQLTemplateTPCPDINIPROMO: TDateTimeField;
    SQLTemplateTPCPDFIMPROMO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateTabelaPrecoLookUp: TStringField;
    SQLTabelaPrecoProdutoPdvs: TRxQuery;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoTabelaPreco: TFormCadastroProdutoTabelaPreco;

implementation

uses FormResources, CadastroTabelaPreco, DataModulo;

{$R *.dfm}

procedure TFormCadastroProdutoTabelaPreco.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='TABELAPRECOPRODUTO';
end;

procedure TFormCadastroProdutoTabelaPreco.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PRODICOD').Value   := DataSet.DataSource.DataSet.FindField('PRODICOD').Value;
  SQLTemplateTPCPN3MARGLUCR.asFloat     := 0;
  SQLTemplateTPCPN3VLRVENDA.asFloat     := 0;
  SQLTemplateTPCPN3VLRVENDAPROM.asFloat := 0;
end;

procedure TFormCadastroProdutoTabelaPreco.SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPRCICOD');
  FieldOrigem := 'TPRCICOD' ;
  CriaFormulario(TFormCadastroTabelaPreco,'FormCadastroTabelaPreco',False,True,True,'') ;
end;

procedure TFormCadastroProdutoTabelaPreco.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from Terminal where TERMCTIPO = "C"';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
    begin
      while not dm.sqlconsulta.eof do
        begin
          SQLTabelaPrecoProdutoPdvs.close;
          SQLTabelaPrecoProdutoPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+SQLTemplatePRODICOD.AsString+' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
          SQLTabelaPrecoProdutoPdvs.Open;
          if SQLTabelaPrecoProdutoPdvs.IsEmpty then
            begin
              SQLTabelaPrecoProdutoPdvs.append ;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('TPRCICOD').Value := SQLTemplateTPRCICOD.Value;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('TERMICOD').Value := dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('PRODICOD').Value := SQLTemplatePRODICOD.Value;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('EXCLUIR').Value  := 'N';
              try
                SQLTabelaPrecoProdutoPdvs.post;
              except
                SQLTabelaPrecoProdutoPdvs.cancel;
              end;
            end;
          {PULA Terminal}
          dm.sqlconsulta.next;
          Application.ProcessMessages;
        end;
    end;
end;

procedure TFormCadastroProdutoTabelaPreco.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from Terminal where TERMCTIPO = "C"';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
    begin
      while not dm.sqlconsulta.eof do
        begin
          SQLTabelaPrecoProdutoPdvs.close;
          SQLTabelaPrecoProdutoPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+SQLTemplatePRODICOD.AsString+' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
          SQLTabelaPrecoProdutoPdvs.Open;
          if SQLTabelaPrecoProdutoPdvs.IsEmpty then
            begin
              SQLTabelaPrecoProdutoPdvs.append ;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('TPRCICOD').Value := SQLTemplateTPRCICOD.Value;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('TERMICOD').Value := dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('PRODICOD').Value := SQLTemplatePRODICOD.Value;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('EXCLUIR').Value  := 'S';
              try
                SQLTabelaPrecoProdutoPdvs.post;
              except
                SQLTabelaPrecoProdutoPdvs.cancel;
              end;
            end
          else
            begin
              SQLTabelaPrecoProdutoPdvs.edit;
              SQLTabelaPrecoProdutoPdvs.fieldbyname('EXCLUIR').Value  := 'S';
              try
                SQLTabelaPrecoProdutoPdvs.post;
              except
                SQLTabelaPrecoProdutoPdvs.cancel;
              end;
            end;
          {PULA Terminal}
          dm.sqlconsulta.next;
          Application.ProcessMessages;
        end;
    end;
end;

end.
