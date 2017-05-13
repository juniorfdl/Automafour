unit CadastroMarca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMarca = class(TFormCadastroTEMPLATE)
    SQLTemplateMARCICOD: TIntegerField;
    SQLTemplateMARCA60DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLMarcaAux: TRxQuery;
    SQLMarcaAuxMARCICOD: TIntegerField;
    SQLMarcaAuxMARCA60DESCR: TStringField;
    DBCheckBox3: TDBCheckBox;
    SQLTemplateLISTARMOBILE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMarca: TFormCadastroMarca;

implementation

uses UnitLibrary;

{$R *.DFM}

procedure TFormCadastroMarca.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'MARCA' ;
end;

procedure TFormCadastroMarca.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateMARCA60DESCR.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descri��o deve ser preenchido!') ;
      Abort ;
    end;
  // Testar se a Marca ja existe!!!
  SQLMarcaAux.Close;
  SQLMarcaAux.MacroByName('Descricao').Value := 'MARCA60DESCR = ' + '"' + SQLTemplateMARCA60DESCR.Value + '"';
  SQLMarcaAux.Open;
  If not SQLMarcaAux.IsEmpty Then
    Begin
      Beep ;
      ShowMessage('Esta Marca j� est� cadastrada!');
      Abort;
    End;
end;

end.
