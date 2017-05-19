unit TelaCadastroTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, StdCtrls, DBCtrls, Mask, Buttons, jpeg,
  ExtCtrls, DateUtils, ToolEdit, RXDBCtrl;

type
  TFormTelaCadastroTarefa = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    LabelGravar: TSpeedButton;
    LabelCancelar: TSpeedButton;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    Panel1: TPanel;
    Label11: TLabel;
    Label6: TLabel;
    DBTituloTarefa: TDBEdit;
    DBCUsuarios: TDBLookupComboBox;
    Panel2: TPanel;
    Label9: TLabel;
    MemoDescTarefa: TDBMemo;
    SQLTemplate: TRxQuery;
    DSTemplate: TDataSource;
    DSSQLUsuarioDestino: TDataSource;
    SQLUsuarioDestino: TRxQuery;
    SQLUsuarioDestinoUSUAICOD: TIntegerField;
    SQLUsuarioDestinoUSUAA60LOGIN: TStringField;
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
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateTAREA60MOTIVOADIO: TMemoField;
    DBDatePrazoMax: TDBDateEdit;
    Label1: TLabel;
    LabelNovo: TSpeedButton;
    RxQuery1: TRxQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DataSource1: TDataSource;
    procedure DBTituloTarefaExit(Sender: TObject);
    procedure DBCUsuariosExit(Sender: TObject);
    procedure MemoDescTarefaKeyPress(Sender: TObject; var Key: Char);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
    procedure LabelCancelarClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LabelNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaCadastroTarefa: TFormTelaCadastroTarefa;

implementation

uses DataModulo, UnitLibrary, VarSYS;

{$R *.dfm}

procedure TFormTelaCadastroTarefa.DBTituloTarefaExit(Sender: TObject);
begin
  if DBTituloTarefa.Text = '' then
    begin
      informa('Você deve informar um titulo para a tarefa');
      DBTituloTarefa.SetFocus;
    end;
end;

procedure TFormTelaCadastroTarefa.DBCUsuariosExit(Sender: TObject);
begin
  inherited;
  if DBCUsuarios.Text = '' then
    begin
      Informa('Você deve informar um Usuário Destino para o envio da tarefa.');
      DBCUsuarios.SetFocus;
    end;
end;

procedure TFormTelaCadastroTarefa.MemoDescTarefaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  key := UpCase(key)
end;

procedure TFormTelaCadastroTarefa.SQLTemplateBeforePost(DataSet: TDataSet);
var
  Nova : TDateTime;
begin
  inherited;
  DM.CodigoAutomatico('TAREFA',DSTemplate,SQLTemplate,2,0);

  SQLTemplateTAREDDIGITACAO.AsString    := FormatDateTime('dd/mm/yyyy', Now);
  SQLTemplateTARECSTATUS.AsString       := '';  // A = Aceito, R = Recusado, I = Iniciado, T = Terminado, '' = Indefinido
  SQLTemplateREGISTRO.AsDateTime        := Now;
  SQLTemplatePENDENTE.AsString          := 'S';
end;

procedure TFormTelaCadastroTarefa.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateEMPRICOD.AsInteger      := EmpresaCorrente;
  SQLTemplateUSUAICODORIG.AsInteger  := UsuarioCorrente;
end;

procedure TFormTelaCadastroTarefa.FormCreate(Sender: TObject);
begin
  inherited;
  self.FormStyle := fsNormal;
  if not SQLTemplate.Active       then SQLTemplate.Open;
  if not SQLUsuarioDestino.Active then SQLUsuarioDestino.Open;
  SQLTemplate.Append;
end;

procedure TFormTelaCadastroTarefa.LabelGravarClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.Post;
end;

procedure TFormTelaCadastroTarefa.LabelCancelarClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.Cancel;
  Close;
end;

procedure TFormTelaCadastroTarefa.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  LabelGravar.Enabled   := SQLTemplate.State in DsEditModes;
  LabelCancelar.Enabled := SQLTemplate.State in DsEditModes;
end;

procedure TFormTelaCadastroTarefa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #27 then close;
end;

procedure TFormTelaCadastroTarefa.LabelNovoClick(Sender: TObject);
begin
  SQLTemplate.Append;
end;

end.
