unit CadastroAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup, RxDBComb,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroAgenda = class(TFormCadastroTemplate)
    Label5: TLabel;
    DBMemo1: TDBMemo;
    SQLAgendaHoje: TQuery;
    DSSQLTarefa: TDataSource;
    SQLAgendaVer: TQuery;
    Timer1: TTimer;
    SQLAgendaVerCOUNT: TIntegerField;
    SQLTemplateAGENA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateAGENICOD: TIntegerField;
    SQLTemplateAGENDCADASTRO: TDateTimeField;
    SQLTemplateAGENDCOMPROMISSO: TDateTimeField;
    SQLTemplateAGENHCOMPROMISSO: TStringField;
    SQLTemplateAGENDALERTA: TDateTimeField;
    SQLTemplateAGENHALERTA: TStringField;
    SQLTemplateAGENTCOMPROMISSO: TMemoField;
    SQLTemplateAGENDCONCLUSAO: TDateTimeField;
    SQLTemplateHELPA13ID: TStringField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTarefa: TQuery;
    SQLTarefaTAREA13ID: TStringField;
    SQLTarefaEMPRICOD: TIntegerField;
    SQLTarefaTERMICOD: TIntegerField;
    SQLTarefaTAREICOD: TIntegerField;
    SQLTarefaUSUAICOD: TIntegerField;
    SQLTarefaUSUAICODDEST: TIntegerField;
    SQLTarefaCLIEA13ID: TStringField;
    SQLTarefaTAREDDIGITACAO: TDateTimeField;
    SQLTarefaTAREDLEMBRETE: TDateTimeField;
    SQLTarefaTARETSOLICITACAO: TMemoField;
    SQLTarefaTAREDINICIO: TDateTimeField;
    SQLTarefaTARETEXECUCAO: TMemoField;
    SQLTarefaTAREDTERMINO: TDateTimeField;
    SQLTarefaREGISTRO: TDateTimeField;
    SQLTarefaTPTAICOD: TIntegerField;
    SQLTarefaTAREA30TITULO: TStringField;
    SQLTarefaHELPA13ID: TStringField;
    SQLTemplateTAREA13ID: TStringField;
    SQLTemplateCATEICOD: TIntegerField;
    SQLCategoria: TQuery;
    SQLTemplateCATEA30DESCR: TStringField;
    SQLTarefaTARECPENDENTE: TStringField;
    SQLTarefaTAREDPRAZOMAX: TDateTimeField;
    SQLTarefaTAREDULTAGEND: TDateTimeField;
    SQLTarefaTAREHLEMBRETE: TStringField;
    SQLTemplateAGENCSTATUS: TStringField;
    SQLTemplateAGENCALERTA: TStringField;
    SQLTemplateAGENA60ASSUNTO: TStringField;
    gboPrincipal: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    gboCompromisso: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    DBDataCompromisso: TDBEdit;
    DBHoraCompromisso: TDBEdit;
    gboAlerta: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    DBDataAlerta: TDBEdit;
    DBHoraAlerta: TDBEdit;
    MonthCalendar1: TMonthCalendar;
    btAlerta: TSpeedButton;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    DBComboStatus: TRxDBComboBox;
    Label10: TLabel;
    DBLookUpcategoria: TDBLookupComboBox;
    lblConclusao: TLabel;
    edbDataConclusao: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DBEdit2Exit(Sender: TObject);
    Procedure VerCompHoje();
    procedure MonthCalendar1Click(Sender: TObject);
    procedure edbDataConclusaoDblClick(Sender: TObject);
    procedure DBDataAlertaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBHoraAlertaExit(Sender: TObject);
    procedure DBHoraCompromissoDblClick(Sender: TObject);
    procedure DBHoraAlertaDblClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DBDataCompromissoDblClick(Sender: TObject);
    procedure DBDataAlertaDblClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure btAlertaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAgenda: TFormCadastroAgenda;
implementation

uses DataModulo, TelaConsultaTarefa, FormResources, TelaDadosCliente,
  //TelaConsultaCompromisso, TelaConsultaAtendimento,
  UnitLibrary;

{$R *.dfm}

Procedure TFormCadastroAgenda.VerCompHoje();
var HOJE,SQL,AMANHA : STRING;
    Year1, Month1, Day1: Word;

begin
    SQLAgendaHoje.Active := false;
    SQLAgendaHoje.SQL.Clear;
    DecodeDate(DATE, Year1, Month1, Day1);
    HOJE :=  CURRTOSTR(MONTH1)+ '/' + CURRTOSTR(DAY1) + '/' + CURRTOSTR(YEAR1);
    AMANHA :=  CURRTOSTR(MONTH1) + '/' + CURRTOSTR(DAY1+1) + '/' + CURRTOSTR(YEAR1);
    SQL := ('SELECT count(*) FROM AGENDA WHERE AGENDCOMPROMISSO = CAST ('''+HOJE+''' AS date)');
    SQLAgendaHoje.SQL.Add(SQL);
    SQLAgendaHoje.Active := TRUE;
    //msnpopup1.Text := '';  #ver
    if SQLAgendaHoje.FindField('count').AsInteger > 0 then
      begin
        //msnpopup1.Text := 'Você tem '+inttostr(SQLAgendaHoje.FindField('count').AsInteger)+' tarefas para hoje...';
        //MSNPopUp1.ShowPopUp;
      end;
end;

procedure TFormCadastroAgenda.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLTarefa.Active then  SQLTarefa.Active := true;
  MonthCalendar1.Date := date;
  TABELA := 'AGENDA';
  VerCompHoje();
  if Dm.PopFiltro = 'S' then
  begin
    SQLTemplate.close;
    SQLTemplate.MacroByName('MFiltro').AsString :=  'AGENDCOMPROMISSO <= '''+FORMATDATETIME('MM/DD/YYYY',Date)+''' AND AGENA25STATUS <> ''CONCLUÍDA''';
    SQLTemplate.Open;
    Dm.PopFiltro := '';
  end;


end;

procedure TFormCadastroAgenda.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
   if SQLTemplate.State in [dsInsert] then
      SQLTemplateAGENDCADASTRO.Value := Now;

   if SQLTemplate.State in dsEditModes then
      SQLTemplateAGENDCOMPROMISSO.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy',SQLTemplateAGENDCOMPROMISSO.AsDateTime));

   if (SQLTemplateAGENCALERTA.AsString = 'S') and (SQLTemplateAGENDALERTA.AsDateTime < Date) then
      begin
         Informa('Verifique a data do Alerta');
         SQLTemplateAGENDALERTA.FocusControl;
         Abort;
      end;
end;

procedure TFormCadastroAgenda.DBEdit2Exit(Sender: TObject);
var
tam,i: integer;
ver,data: string;
begin
  inherited;
  data := '';
  tam := length(SQLTemplateAGENDCOMPROMISSO.AsString)-9;
  ver := SQLTemplateAGENDCOMPROMISSO.AsString;
  for i:=1 to tam do
        begin
                data:=data+ver[i];
        end;
  MonthCalendar1.Date := strtodate(data);
end;

procedure TFormCadastroAgenda.MonthCalendar1Click(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    begin
      if DBDataCompromisso.Focused then
        begin
          DBDataCompromisso.Text := DateToStr(MonthCalendar1.Date);
          DBDataCompromisso.SetFocus;
        end
      else
        if DBDataAlerta.Focused then
          begin
            DBDataAlerta.Text := DateToStr(MonthCalendar1.Date);
            DBDataAlerta.SetFocus;
          end
        else
          begin
            DBDataCompromisso.SetFocus;
            DBDataCompromisso.Text := DateToStr(MonthCalendar1.Date);
          end;
    end
    else
      informa('Você deve estar no modo de ediçao para usar esta função.');

end;

procedure TFormCadastroAgenda.edbDataConclusaoDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    edbDataConclusao.Text := datetimetostr(now)
  else
    informa('Você deve estar no modo de ediçao para usar esta função.');

end;

procedure TFormCadastroAgenda.DBDataAlertaExit(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    if (DBDataAlerta.Text <> '  /  /    ') and (DBDataCompromisso.Text <> '  /  /    ') then
      if strtodate(DBDataAlerta.Text) < strtodate(DBDataCompromisso.Text) then
        begin
          informa('Atenção a data do alarme é anterior a data do compromisso.'+char(#13)+'Selecione outra data posterior.');
          DBDataAlerta.SetFocus;
        end;
end;

procedure TFormCadastroAgenda.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaConsultaCompromisso,'FormTelaConsultaCompromisso',false,false,'');
end;

procedure TFormCadastroAgenda.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  if DSTemplate.State in dseditmodes then
     SQLTemplateAGENCSTATUS.AsString := 'N';
  SQLTemplateAGENDCOMPROMISSO.AsDateTime := Now;
end;

procedure TFormCadastroAgenda.DBHoraAlertaExit(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    if SQLTemplateAGENDALERTA.IsNull then
       if not SQLTemplateAGENHALERTA.IsNull then
          begin
           SQLTemplateAGENDALERTA.Clear;
           Informa('Informe uma data para o alerta..');
           DBDataAlerta.SetFocus;
          end;
end;

procedure TFormCadastroAgenda.DBHoraCompromissoDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    DBHoraCompromisso.Text := TimeToStr(Time);

end;

procedure TFormCadastroAgenda.DBHoraAlertaDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    DBHoraAlerta.Text := TimeToStr(Time);

end;

procedure TFormCadastroAgenda.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  DBLookUpcategoria.Enabled := SQLTemplate.State in dseditmodes;
  if SQLTemplate.State in dseditmodes then
    if SQLTemplateAGENCSTATUS.AsString = 'C' then
       begin
         Informa('Você não pode alterar um item já Concluido.');
         SQLTemplate.Cancel;
       end;
end;

procedure TFormCadastroAgenda.DBDataCompromissoDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
     DBDataCompromisso.Text := DateToStr(Date);
end;

procedure TFormCadastroAgenda.DBDataAlertaDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    DBDataAlerta.Text := DateToStr(Date);
end;

procedure TFormCadastroAgenda.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  gboAlerta.Visible := (SQLTemplateAGENCALERTA.AsString = 'S');

end;

procedure TFormCadastroAgenda.btAlertaClick(Sender: TObject);
begin
  inherited;
  SQLTemplateAGENCALERTA.AsString := 'S';
end;

end.
