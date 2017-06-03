unit CadastroPlanoPagamentoParcela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroPlanoPagamentoParcela = class(TFormCadastroTEMPLATE)
    SQLTemplatePLPGICOD: TIntegerField;
    SQLTemplatePLPPINROPARC: TIntegerField;
    SQLTemplatePLPPINRODIAS: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPlanoPagamentoParcela: TFormCadastroPlanoPagamentoParcela;

implementation

{$R *.dfm}

procedure TFormCadastroPlanoPagamentoParcela.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PLANOPAGAMENTOPARCELA';
end;

procedure TFormCadastroPlanoPagamentoParcela.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PLPGICOD').Value:=DataSet.DataSource.DataSet.FindField('PLPGICOD').Value;
end;

end.
