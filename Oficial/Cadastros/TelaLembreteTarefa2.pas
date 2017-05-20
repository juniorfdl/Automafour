unit TelaLembreteTarefa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, RxDBComb, ExtCtrls, RxQuery, Grids,
  DBGrids, DBCtrls, Mask, Buttons, dateutils, dbcgrids, ConerBtn, RxRichEd,
  DBRichEd;

type
  TFormTelaLembreteTarefa2 = class(TForm)
    Panel1: TPanel;
    SQLTarefa: TRxQuery;
    DSLembrete: TDataSource;
    SQLTarefaTAREA13ID: TStringField;
    SQLTarefaEMPRICOD: TIntegerField;
    SQLTarefaTAREICOD: TIntegerField;
    SQLTarefaTAREDDIGITACAO: TDateTimeField;
    SQLTarefaTAREDPRAZOMAX: TDateTimeField;
    SQLTarefaTAREDINICIO: TDateTimeField;
    SQLTarefaTAREDTERMINO: TDateTimeField;
    SQLTarefaUSUAICODORIG: TIntegerField;
    SQLTarefaUSUAICODDEST: TIntegerField;
    SQLTarefaCLIEA13ID: TStringField;
    SQLTarefaTARECSTATUS: TStringField;
    SQLTarefaTAREA30TITULO: TStringField;
    SQLTarefaTARETSOLICITACAO: TMemoField;
    SQLTarefaTARETEXECUCAO: TMemoField;
    SQLTarefaTAREA254MOTIVOCANCEL: TMemoField;
    SQLTarefaPENDENTE: TStringField;
    SQLTarefaREGISTRO: TDateTimeField;
    SQLTarefaTAREA60MOTIVOADIO: TMemoField;
    Panel4: TPanel;
    DBCtrlGridTarefaAviso: TDBCtrlGrid;
    DBTitulo: TDBText;
    Image1: TImage;
    lbStatus: TLabel;
    lblPrazoConclusao: TLabel;
    DBTextPrazoConclusao: TDBText;
    lblObs: TLabel;
    pnLegenda: TPanel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    DBUsuario: TDBText;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLTarefaUSUARIODESTINO: TStringField;
    RxDDTarSolici: TRxDBRichEdit;
    RxDBTarExec: TRxDBRichEdit;
    BtOK: TConerBtn;
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGridTarefaAvisoDblClick(Sender: TObject);
    procedure DSLembreteDataChange(Sender: TObject; Field: TField);
    procedure DBMemoMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCtrlGridTarefaAvisoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaLembreteTarefa2: TFormTelaLembreteTarefa2;

implementation

uses DataModulo, Principal, TelaConsultaTarefa, FormResources, UnitLibrary, VarSYS;

{$R *.dfm}

procedure TFormTelaLembreteTarefa2.FormCreate(Sender: TObject);
begin
  SQLUsuario.Open;
  SQLTarefa.Close;
  SQLTarefa.MacroByName('MUsuarioDest').AsString := 'USUAICODORIG = ' + IntToStr(UsuarioCorrente);
  SQLTarefa.MacroByName('MStatus').AsString := 'TARECSTATUS <> "T"';
  SQLTarefa.Open;
end;

procedure TFormTelaLembreteTarefa2.DBCtrlGridTarefaAvisoDblClick(Sender: TObject);
begin
  DM.CodTarefa := SQLTarefaTAREA13ID.AsString;
  Application.CreateForm(TFormTelaConsultaTarefa,FormTelaConsultaTarefa);
  FormTelaConsultaTarefa.ShowModal;
  if FormTelaConsultaTarefa.ModalResult = MrOK then
    begin
      FormTelaConsultaTarefa.Close;
      SQLTarefa.Close;
      SQLTarefa.MacroByName('MUsuarioDest').AsString := 'USUAICODDEST = ' + IntToStr(UsuarioCorrente);
      SQLTarefa.Open;
    end;
end;

procedure TFormTelaLembreteTarefa2.DSLembreteDataChange(Sender: TObject;
  Field: TField);
begin
  DBTextPrazoConclusao.Visible := SQLTarefaTAREDPRAZOMAX.Value <> 0;
  lblPrazoConclusao.Visible    := SQLTarefaTAREDPRAZOMAX.Value <> 0;
  if FormatDateTime('mm/dd/yy',Now) > FormatDateTime('mm/dd/yy',SQLTarefaTAREDPRAZOMAX.Value) then
    lblObs.Caption := 'Esta tarefa estourou o prazo máximo de conclusão.'
  else
    lblObs.Caption := '';
end;

procedure TFormTelaLembreteTarefa2.DBMemoMotivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key)
end;

procedure TFormTelaLembreteTarefa2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormTelaLembreteTarefa2.DBCtrlGridTarefaAvisoPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  if FormatDateTime('mm/dd/yy',Now) > FormatDateTime('mm/dd/yy',SQLTarefaTAREDPRAZOMAX.Value) then
    begin
      DBTitulo.font.Color := clRed;
      DBUsuario.font.Color := clRed;
      lbStatus.Font.Color := clRed;
    end
  else  
    begin
      DBTitulo.font.Color := clGreen;
      DBUsuario.font.Color := clGreen;
      lbStatus.Font.Color := clGreen;
    end;

  if FormatDateTime('mm/dd/yy',Now) = FormatDateTime('mm/dd/yy',SQLTarefaTAREDPRAZOMAX.Value) then
    begin
      DBTitulo.font.Color := clBlack;
      DBUsuario.font.Color := clBlack;
      lbStatus.Font.Color := clBlack;
    end;
  if SQLTarefaTARECSTATUS.Value = '' then
    lbStatus.Caption := 'Aguardando';
  if SQLTarefaTARECSTATUS.Value = 'A' then
    lbStatus.Caption := 'Aceita';
  if SQLTarefaTARECSTATUS.Value = 'R' then
    lbStatus.Caption := 'Recusada';
  if SQLTarefaTARECSTATUS.Value = 'I' then
    lbStatus.Caption := 'Iniciada';
  if SQLTarefaTARECSTATUS.Value = 'T' then
    lbStatus.Caption := 'Terminada';
end;

procedure TFormTelaLembreteTarefa2.FormShow(Sender: TObject);
begin
  DBCtrlGridTarefaAviso.SetFocus;
end;

procedure TFormTelaLembreteTarefa2.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then close;
end;

procedure TFormTelaLembreteTarefa2.BtOKClick(Sender: TObject);
begin
  Close;

  
end;

end.
