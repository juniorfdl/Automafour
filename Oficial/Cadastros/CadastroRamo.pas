unit CadastroRamo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  ExtCtrls, Buttons, jpeg, DBCtrls, VarSys, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroRamo = class(TFormCadastroTEMPLATE)
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SQLTemplateRAMOICOD: TIntegerField;
    SQLTemplateRAMOA30DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLRamoAux: TRxQuery;
    SQLRamoAuxRAMOICOD: TIntegerField;
    SQLRamoAuxRAMOA30DESCR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroRamo: TFormCadastroRamo;

implementation

uses CadastroSubRamo;

{$R *.dfm}

procedure TFormCadastroRamo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'RAMO';
end;

procedure TFormCadastroRamo.Button3Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroSubRamo,'FormCadastroSubRamo',True,False,True,'Ramo ' + SQLTemplateRAMOA30DESCR.Value);
    End;
end;

procedure TFormCadastroRamo.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateRAMOA30DESCR.Value = '' Then
    begin
      Beep ;
      ShowMessage('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
  // Testar se o Ramo ja existe!!!
  SQLRamoAux.Close;
  SQLRamoAux.MacroByName('Descricao').Value := 'RAMOA30DESCR = ' + '''' + SQLTemplateRAMOA30DESCR.Value + '''';
  SQLRamoAux.Open;
  If not SQLRamoAux.IsEmpty Then
    Begin
      Beep ;
      ShowMessage('Este Ramo já está Cadastrado!');
      Abort;
    End;
end;

end.
