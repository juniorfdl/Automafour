unit CadastroClassificacaoFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroClassificacaoFiscal = class(TFormCadastroTEMPLATE)
    SQLTemplateCLFSICOD: TIntegerField;
    SQLTemplateCLFSA30DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClassificacaoFiscal: TFormCadastroClassificacaoFiscal;

implementation

uses UnitLibrary;

{$R *.DFM}

procedure TFormCadastroClassificacaoFiscal.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateCLFSA30DESCR.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
end;

procedure TFormCadastroClassificacaoFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ClassificacaoFiscal' ;
end;

end.
