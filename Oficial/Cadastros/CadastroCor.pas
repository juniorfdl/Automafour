unit CadastroCor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroCor = class(TFormCadastroTEMPLATE)
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplateCORA30DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLCorAux: TRxQuery;
    SQLCorAuxCORICOD: TIntegerField;
    SQLCorAuxCORA30DESCR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCor: TFormCadastroCor;

implementation

uses UnitLibrary;

{$R *.DFM}

procedure TFormCadastroCor.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'COR';
end;

procedure TFormCadastroCor.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateCORA30DESCR.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
  // Testar se a Cor ja existe!!!
  SQLCorAux.Close;
  SQLCorAux.MacroByName('Descricao').Value := 'CORA30DESCR = ' + '''' + SQLTemplateCORA30DESCR.Value + '''';
  SQLCorAux.Open;
  If not SQLCorAux.IsEmpty Then
    Begin
      Beep ;
      ShowMessage('Esta Cor já está cadastrada!');
      Abort;
    End;
end;

end.
