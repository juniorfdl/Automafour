unit TelaLembreteTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, RxDBComb, ExtCtrls, RxQuery, Grids,
  DBGrids, DBCtrls, Mask, Buttons, dateutils, dbcgrids, ConerBtn;

type
  TFormTelaLembreteTarefa = class(TForm)
    Panel1: TPanel;
    SQLTarefa: TRxQuery;
    DSLembrete: TDataSource;
    btAceitar: TConerBtn;
    btRecusar: TConerBtn;
    BTAdiar: TConerBtn;
    BTAbrir: TConerBtn;
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
    BtOK: TConerBtn;
    pnMais: TPanel;
    pnBotoes: TPanel;
    btAdioOK: TConerBtn;
    btAdioCancela: TConerBtn;
    pnBottom: TPanel;
    pnAdiamento: TPanel;
    DBMemoMotivo: TDBMemo;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CboReaviso: TComboBox;
    pnMotivoCanc: TPanel;
    Label3: TLabel;
    DBMemoMotivoCancelamento: TDBMemo;
    pnLegenda: TPanel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    CKTerminadas: TCheckBox;
    procedure BtOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGridTarefaAvisoDblClick(Sender: TObject);
    procedure DSLembreteDataChange(Sender: TObject; Field: TField);
    procedure BTAdiarClick(Sender: TObject);
    procedure btAdioOKClick(Sender: TObject);
    procedure btAdioCancelaClick(Sender: TObject);
    procedure DBMemoMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure DSLembreteStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTarefaAfterScroll(DataSet: TDataSet);
    procedure btRecusarClick(Sender: TObject);
    procedure btAceitarClick(Sender: TObject);
    procedure DBCtrlGridTarefaAvisoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure BTAbrirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CKTerminadasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaLembreteTarefa: TFormTelaLembreteTarefa;

implementation

uses DataModulo, Principal, TelaConsultaTarefa, FormResources, UnitLibrary, VarSYS;

{$R *.dfm}

procedure TFormTelaLembreteTarefa.BtOKClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaLembreteTarefa.FormCreate(Sender: TObject);
begin
  SQLTarefa.Close;
  SQLTarefa.MacroByName('MUsuarioDest').AsString := 'USUAICODDEST = ' + IntToStr(UsuarioCorrente);
  SQLTarefa.MacroByName('MStatus').AsString := 'TARECSTATUS <> "T"';
  SQLTarefa.Open;
  pnMais.Visible := False;
end;

procedure TFormTelaLembreteTarefa.DBCtrlGridTarefaAvisoDblClick(Sender: TObject);
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

procedure TFormTelaLembreteTarefa.DSLembreteDataChange(Sender: TObject;
  Field: TField);
begin
  DBTextPrazoConclusao.Visible := SQLTarefaTAREDPRAZOMAX.Value <> 0;
  lblPrazoConclusao.Visible    := SQLTarefaTAREDPRAZOMAX.Value <> 0;
  if FormatDateTime('mm/dd/yy',Now) > FormatDateTime('mm/dd/yy',SQLTarefaTAREDPRAZOMAX.Value) then
    lblObs.Caption := 'Esta tarefa estourou o prazo máximo de conclusão.'
  else
    lblObs.Caption := '';

  BTAdiar.Enabled   := not SQLTarefaTAREA30TITULO.IsNull;
  BTAbrir.Enabled   := not SQLTarefaTAREA30TITULO.IsNull;
  btRecusar.Enabled := not SQLTarefaTAREA30TITULO.IsNull;
  btAceitar.Enabled := not SQLTarefaTAREA30TITULO.IsNull;
end;

procedure TFormTelaLembreteTarefa.BTAdiarClick(Sender: TObject);
begin
    SQLTarefa.Edit;
    pnAdiamento.Visible  := True;
    pnMotivoCanc.Visible := False;
    pnMais.Visible       := True;
end;

procedure TFormTelaLembreteTarefa.btAdioOKClick(Sender: TObject);
var Data : TDate;
    Hora : TTime;
begin
  if DBMemoMotivo.Field.FieldName = 'TAREA60MOTIVOADIO' then
     begin
       if SQLTarefaTAREDPRAZOMAX.Value <> 0 then
         begin
           if CboReaviso.Text <> '' then
             begin
               SQLTarefa.Edit;
               pnMais.Visible := False;
               SQLTarefa.Post;
             end
           else
             if Length(SQLTarefaTAREA60MOTIVOADIO.AsString) < 5  then
               begin
                 Informa('Você deve informar um motivo para o adiamento da tarefa.' + Char(#13) + 'Tente novamente');
                 SQLTarefa.Cancel;
               end
             else
               SQLTarefa.Post;
         end;
       CboReaviso.ItemIndex := - 1;
       BTAdiar.Enabled := False;
     end;
    if DBMemoMotivo.Field.FieldName = 'TAREA254MOTIVOCANCEL' then
       begin
         if SQLTarefaTAREA254MOTIVOCANCEL.IsNull then
           begin
             Informa('Você deve informar um motivo para Recusar a Tarefa.');
             SQLTarefa.Cancel;
           end
         else
           SQLTarefa.Post;
       end;
  SQLTarefa.Close;
  SQLTarefa.MacroByName('MUsuarioDest').AsString := 'USUAICODDEST = ' + IntToStr(UsuarioCorrente);
  SQLTarefa.Open;
  DBCtrlGridTarefaAviso.SetFocus;
end;

procedure TFormTelaLembreteTarefa.btAdioCancelaClick(Sender: TObject);
begin
  pnMais.Visible := False;
  SQLTarefa.Cancel;
  CboReaviso.ItemIndex := 0;
end;

procedure TFormTelaLembreteTarefa.DBMemoMotivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key)
end;

procedure TFormTelaLembreteTarefa.DSLembreteStateChange(Sender: TObject);
begin
  BtOK.Enabled := not (SQLTarefa.State in dsEditModes);
end;

procedure TFormTelaLembreteTarefa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormTelaLembreteTarefa.SQLTarefaAfterScroll(DataSet: TDataSet);
begin
  if pnMais.Visible then
    begin
      pnMais.Visible := False;
      SQLTarefa.Cancel;
    end;
end;

procedure TFormTelaLembreteTarefa.btRecusarClick(Sender: TObject);
begin
  if (SQLTarefaTARECSTATUS.AsString <> 'I') or (SQLTarefaTARECSTATUS.AsString <> 'T') then
    begin
      SQLTarefa.Edit;
      SQLTarefaTARECSTATUS.AsString := 'R';
      pnMotivoCanc.Visible := True;
      pnAdiamento.Visible  := False;
      pnMais.Visible       := True;
    end
  else
    ShowMessage('Operação Cancelada!');
end;

procedure TFormTelaLembreteTarefa.btAceitarClick(Sender: TObject);
begin
  if (SQLTarefaTARECSTATUS.AsString <> 'I') or (SQLTarefaTARECSTATUS.AsString <> 'T') then
    begin
      SQLTarefa.Edit;
      SQLTarefaTARECSTATUS.AsString := 'A';
      SQLTarefa.Post;
    end
  else
    ShowMessage('Operação Cancelada!');
end;

procedure TFormTelaLembreteTarefa.DBCtrlGridTarefaAvisoPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  if FormatDateTime('mm/dd/yy',Now) > FormatDateTime('mm/dd/yy',SQLTarefaTAREDPRAZOMAX.Value) then
    begin
      DBTitulo.font.Color := clRed;
      lbStatus.Font.Color := clRed;
    end
  else
    begin
      DBTitulo.font.Color := clGreen;
      lbStatus.Font.Color := clGreen;
    end;
  if FormatDateTime('mm/dd/yy',Now) = FormatDateTime('mm/dd/yy',SQLTarefaTAREDPRAZOMAX.Value) then
    begin
      DBTitulo.font.Color := clBlack;
      lbStatus.Font.Color := clBlack;
    end;
  if SQLTarefaTAREDTERMINO.AsString <> '' then
    begin
      DBTitulo.font.Color := clBlue;
      lbStatus.Font.Color := clBlue;
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

procedure TFormTelaLembreteTarefa.BTAbrirClick(Sender: TObject);
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

procedure TFormTelaLembreteTarefa.FormShow(Sender: TObject);
begin
  DBCtrlGridTarefaAviso.SetFocus;
end;

procedure TFormTelaLembreteTarefa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then close;
end;

procedure TFormTelaLembreteTarefa.CKTerminadasClick(Sender: TObject);
begin
  SQLTarefa.Close;
  SQLTarefa.MacroByName('MUsuarioDest').AsString := 'USUAICODDEST = ' + IntToStr(UsuarioCorrente);
  if CKTerminadas.Checked then
    SQLTarefa.MacroByName('MStatus').AsString := 'TARECSTATUS = "T"'
  else
    SQLTarefa.MacroByName('MStatus').AsString := 'TARECSTATUS <> "T"';
  SQLTarefa.Open;
end;

end.
