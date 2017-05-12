unit TelaConsultaTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids,
  DBGrids, ToolEdit, RXDBCtrl, jpeg, RxQuery, ConerBtn;

type
  TFormTelaConsultaTarefa = class(TForm)
    DSTemplate: TDataSource;
    PanelBarra: TPanel;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    SQLTemplate: TRxQuery;
    BtOK: TConerBtn;
    BtCancel: TConerBtn;
    Panel1: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    DBEdit4: TDBEdit;
    DBInicio: TDBDateEdit;
    DBTermino: TDBDateEdit;
    SQLTemplateTAREA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTAREICOD: TIntegerField;
    SQLTemplateTAREDDIGITACAO: TDateTimeField;
    SQLTemplateTAREDPRAZOMAX: TDateTimeField;
    SQLTemplateTAREDINICIO: TDateTimeField;
    SQLTemplateTAREDTERMINO: TDateTimeField;
    SQLTemplateUSUAICODORIG: TIntegerField;
    SQLTemplateUSUAICODDEST: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateTARECSTATUS: TStringField;
    SQLTemplateTAREA30TITULO: TStringField;
    SQLTemplateTARETSOLICITACAO: TMemoField;
    SQLTemplateTARETEXECUCAO: TMemoField;
    SQLTemplateTAREA254MOTIVOCANCEL: TMemoField;
    SQLTemplateTAREA60MOTIVOADIO: TMemoField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBDateEdit1: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure DBGridTarefaDblClick(Sender: TObject);
    procedure BtCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaTarefa: TFormTelaConsultaTarefa;

implementation

uses DataModulo, UnitLibrary, ComCtrls, dateutils;

{$R *.dfm}

procedure TFormTelaConsultaTarefa.FormCreate(Sender: TObject);
var SQL :string;
begin
    if not SQLTemplate.Active then SQLTemplate.Open;
    if (DM.CodTarefa <> '') then
      begin
        SQLTemplate.Close;
        SQLTemplate.SQL.Clear;
        SQL := 'SELECT * FROM TAREFA WHERE TAREA13ID = '''+dm.CodTarefa+'''';
        SQLTemplate.SQL.Add(SQL);
        SQLTemplate.Open;
      end;
   SQLTemplate.Close;
   SQLTemplate.Open;
end;

procedure TFormTelaConsultaTarefa.BtOKClick(Sender: TObject);
begin
  if not (SQLTemplate.State in DSeditmodes) then SQLTemplate.edit;
    begin
      if SQLTemplateTAREDINICIO.Value > 0 then
        SQLTemplateTARECSTATUS.Value := 'I';
      if SQLTemplateTAREDTERMINO.Value > 0 then
        SQLTemplateTARECSTATUS.Value := 'T';
      SQLTemplate.Post;
    end;
  FormTelaConsultaTarefa.ModalResult := MrOk;
end;

procedure TFormTelaConsultaTarefa.DBGridTarefaDblClick(Sender: TObject);
begin
  FormTelaConsultaTarefa.ModalResult := MrOk;
end;

procedure TFormTelaConsultaTarefa.BtCancelClick(Sender: TObject);
begin
  FormTelaConsultaTarefa.ModalResult := MrCancel;
end;

procedure TFormTelaConsultaTarefa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = Char(#27) then BtOK.Click;
end;

end.
