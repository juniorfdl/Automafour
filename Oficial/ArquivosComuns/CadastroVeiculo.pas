unit CadastroVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  VarSys, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroVeiculo = class(TFormCadastroTEMPLATE)
    SQLTemplateVEICA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateVEICICOD: TIntegerField;
    SQLTemplateVEICA7PLACA: TStringField;
    SQLTemplateVEICA60DESCR: TStringField;
    SQLTemplateVEICA3OMARCA: TStringField;
    SQLTemplateVEICN3PESOSUPORTA: TBCDField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateVEICA3OMOTORISTA: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateVEICA3OMOTOCPF: TStringField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SQLTemplateVEICA2UFPLACA: TStringField;
    RemoverItemdaPlaca1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure RemoverItemdaPlaca1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVeiculo: TFormCadastroVeiculo;

implementation

{$R *.dfm}

procedure TFormCadastroVeiculo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'VEICULO';
  if TranspVeiculo then
    begin
      SQLTemplate.close;
      SQLTemplate.MacroByName('Transp').Value := 'TRANICOD = '+DSMasterTemplate.DataSet.FieldByName('TRANICOD').AsString ;
      SQLTemplate.open;
    end;
end;

procedure TFormCadastroVeiculo.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  if TranspVeiculo then
    DataSet.FieldByName('TRANICOD').Value := DataSet.DataSource.DataSet.FieldByName('TRANICOD').Value;
end;

procedure TFormCadastroVeiculo.RemoverItemdaPlaca1Click(Sender: TObject);
var xplaca : string;
begin
  inherited;
  sqltemplate.first;
  while not sqltemplate.Eof do
    begin
      sqltemplate.Edit;
      xplaca := SQLTemplateVEICA7PLACA.Value;
      try
        while pos('-',xplaca) > 0 do
          delete(xplaca,pos('-',xplaca),1);
        while pos(' ',xplaca) > 0 do
          delete(xplaca,pos(' ',xplaca),1);

        SQLTemplateVEICA7PLACA.Value := xplaca ;
        sqltemplate.post;
      except
        sqltemplate.cancel;
        Application.ProcessMessages;
      end;

      sqltemplate.Next;
    end;
  showmessage('Concluido!');
end;

end.
