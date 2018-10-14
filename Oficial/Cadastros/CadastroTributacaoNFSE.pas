unit CadastroTributacaoNFSE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask,
  AdvPanel, Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFormCadastroTributacaoNFSE = class(TFormCadastroTEMPLATE)
    SQLTemplateID: TIntegerField;
    SQLTemplateCODIGO_TRIBUTACAO: TStringField;
    SQLTemplateSUBITEM: TStringField;
    SQLTemplateALIQUOTA: TFloatField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateDESCRICAO_SERVICO: TStringField;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTributacaoNFSE: TFormCadastroTributacaoNFSE;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroTributacaoNFSE.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TRIBUTACAO_NFSE' ;
end;

procedure TFormCadastroTributacaoNFSE.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateDESCRICAO_SERVICO.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;

end;

end.
