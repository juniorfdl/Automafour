unit TelaConsultaTemplate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, RxLookup, DBGrids, DB,
  DBTables, RxQuery, Grids, Mask, IniFiles, VarSys, Variants,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaTemplate = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCentral: TPanel;
    PanelProcura: TPanel;
    EditProcura: TMaskEdit;
    PanelIndice: TPanel;
    LblProcurarPor: TLabel;
    LblOrdenarPor: TLabel;
    ComboOrdem: TComboBox;
    ComboOrder: TComboBox;
    DBGridLista: TDBGrid;
    DSTemplate: TDataSource;
    SQLTemplate: TRxQuery;
    DSMasterTemplate: TDataSource;
    SQLCount: TRxQuery;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    LabelRegistros: TLabel;
    LabelRetornar: TSpeedButton;
    LabelDataHoraAlteracao: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure EditProcuraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure ComboOrdemClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure LabelRetornarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FieldRetorno : TField;
    FieldRetOrigem : String;
    EditRetorno : TEdit;
    IniFile : TIniFile;
    procedure ContarRegistros(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  FormTelaConsultaTemplate: TFormTelaConsultaTemplate;

implementation

uses DataModulo;

{$R *.DFM}

procedure TFormTelaConsultaTemplate.ContarRegistros(DataSet: TDataSet);
var
  I, Y: Integer;
begin
  SQLCount.SQL.Text:=Copy(TRXQuery(DataSet).SQL.Text,1,Pos
    ('*',TRXQuery(DataSet).SQL.Text)-1)+ 'Count(*) as CONTADOR'+
    Copy(TRXQuery(DataSet).SQL.Text,Pos('*',TRXQuery(DataSet).SQL.Text)+1,
    Length(TRXQuery(DataSet).SQL.Text)-Pos('*',TRXQuery(DataSet).SQL.Text));
  if SQLCount.ParamCount > 0 then
  begin
    //Valoriza os parâmetros da Query
    for I := 0 to SQLCount.ParamCount -1 do
      for Y := 0 to TRxQuery(DataSet).FieldCount -1 do
        if SQLCount.Params[I].Name = TRxQuery(DataSet).Fields[Y].FieldName then
        begin
          if TRxQuery(DataSet).Fields[Y].Value = Null then
            SQLCount.Params[I].Value := 0
          else
            SQLCount.Params[I].Value := TRxQuery(DataSet).Fields[Y].Value;
          Continue;
        end;
  end;
  SQLCount.Open;
  LabelRegistros.Caption := FormatFloat('#,##0',SQLCount.FindField('CONTADOR').
    asInteger) + ' registro(s) encontrado(s)';
  SQLCount.Close;
end;

procedure TFormTelaConsultaTemplate.FormCreate(Sender: TObject);
var
  I           : Integer;
  Key         : Char;
begin

  if not bRetaguarda then
    begin
      Width  := 760 ;
      Height := 505 ;
    end ;

  If DSTemplate.DataSet = Nil Then
    Begin
      ShowMessage('Erro Interno: DSTemplate.DataSet = Null');
      Exit;
    End;

  FieldRetorno    := FieldLookup;
  FieldRetOrigem  := FieldOrigem;
  FieldLookup     := Nil;
  FieldOrigem     := '';
  EditRetorno     := EditLookup;
  EditLookup      := Nil;
  If DSMasterSys<>Nil Then
    Begin
      TRxQuery(DSTemplate.DataSet).DataSource:=DSMasterSys;
      DSMasterTemplate.DataSet := DSMasterSys.DataSet;
    End;
  DSMasterSys  := Nil;

  ActiveControl := EditProcura;

  For I:=0 To ComponentCount-1 Do
    Begin
      if (Components[I] is TDBEdit) and
        ((Components[I] as TDBEdit).DataSource = DSTemplate) Then
        Begin
          (Components[I] as TDBEdit).CharCase := ecUpperCase;
          If DSTemplate.DataSet.FindField((Components[I] as TDBEdit).DataField)<>Nil Then
            Begin
              If (Not DSTemplate.DataSet.FindField((Components[I] as TDBEdit).DataField).Visible) then
                Begin
                  (Components[I] as TDBEdit).ReadOnly :=True;
                  (Components[I] as TDBEdit).TabStop  :=False;
                  (Components[I] as TDBEdit).Color    :=$00E0E0E0;
                End;
            End
          Else
            ShowMessage('Erro Interno: O compenente '+(Components[I] as TDBEdit).Name+' está apontando para um campo que não existe ou para TDataSource errado!');
        End;

      if (Components[I] is TDBEdit) and ((Components[I] as TDBEdit).DataSource = DSMasterTemplate) and (DSMasterTemplate.DataSet<>Nil) Then
        Begin
          (Components[I] as TDBEdit).CharCase := ecUpperCase;
          (Components[I] as TDBEdit).ReadOnly :=True;
          (Components[I] as TDBEdit).TabStop  :=False;
          (Components[I] as TDBEdit).Color    :=$00E0E0E0;
        End;

      if (Components[I] is TField) then
        begin
          case (Components[I] as TField).DataType of
       ftDateTime:   begin
                       if (Components[I] as TDateTimeField).DisplayFormat = '' then
                         (Components[I] as TDateTimeField).DisplayFormat := 'dd/mm/yyyy hh:nn';
                       if (Components[I] as TDateTimeField).EditMask = '' then
                         (Components[I] as TDateTimeField).EditMask := '!99/99/0000 90:00;1;_';
                     end ;
            ftFloat:Case (Components[I] as TFloatField).Size of
                    0:Begin
                        (Components[I] as TFloatField).DisplayFormat := '#,##0.00';
                        (Components[I] as TFloatField).EditFormat    := '0.00';
                      end ;
                    1:begin
                        (Components[I] as TFloatField).DisplayFormat := '#,##0.0';
                        (Components[I] as TFloatField).EditFormat    := '0.0';
                      end ;
                    2:Begin
                        (Components[I] as TFloatField).DisplayFormat := '#,##0.00';
                        (Components[I] as TFloatField).EditFormat    := '0.00';
                      end ;
                    3:begin
                        (Components[I] as TFloatField).DisplayFormat := '#,##0.000';
                        (Components[I] as TFloatField).EditFormat    := '0.000';
                      end ;
                    4:begin
                        (Components[I] as TFloatField).DisplayFormat := '#,##0.0000';
                        (Components[I] as TFloatField).EditFormat    := '0.0000';
                      end ;
                    5:begin
                        (Components[I] as TFloatField).DisplayFormat := '#,##0.00000';
                        (Components[I] as TFloatField).EditFormat    := '0.00000';
                      end ;
                  end ;
          end ;
        end ;
    End;
  ComboOrdem.Items.Clear;
  For I:=0 To DSTemplate.DataSet.Fields.Count-1 Do
    If (DSTemplate.DataSet.Fields[I].FieldKind <> fkCalculated) and
       (DSTemplate.DataSet.Fields[I].FieldKind <> fkLookup) and
       (DSTemplate.DataSet.Fields[I].FieldName <> DSTemplate.DataSet.Fields[I].DisplayLabel) Then
      ComboOrdem.Items.Add(DSTemplate.DataSet.Fields[I].DisplayLabel);
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName)+Application.Title+'.ini');
  If ComboOrdem.Items.Count>0 Then
    Begin
      ComboOrdem.ItemIndex := StrToInt(IniFile.ReadString(Name,'ComboOrdem_ItemIndex','0'));
      ComboOrdemClick(ComboOrdem);
    End;

  ComboOrder.Items.Clear;
  ComboOrder.Items := ComboOrdem.Items ;
  If ComboOrder.Items.Count>0 Then
    ComboOrder.ItemIndex := StrToInt(IniFile.ReadString(Name,'ComboOrder_ItemIndex','0'));
end;

procedure TFormTelaConsultaTemplate.BtnFecharTelaClick(Sender: TObject);
begin
  Close ;
end;

procedure TFormTelaConsultaTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If IniFile <> Nil Then
      Begin
        IniFile.WriteString(Name,'ComboOrdem_ItemIndex',IntToStr(ComboOrdem.ItemIndex));
        IniFile.WriteString(Name,'ComboOrder_ItemIndex',IntToStr(ComboOrder.ItemIndex));
      End;
  IniFile.Free ;
  Application.ProcessMessages;
  Action := caFree ;
end;

procedure TFormTelaConsultaTemplate.FormKeyPress(Sender: TObject;
  var Key: Char);
var
  Clausula, ColunaOrdem:String;
  Objeto:TComponent;
  I:Integer;
begin
  if Key=char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      If ((Objeto as TObject).Name = 'EditProcura') and (ComboOrdem.ItemIndex<>-1) Then
        Begin
          TRxQuery(DSTemplate.DataSet).Close;
          If Pos('ORDER BY',TRxQuery(DSTemplate.DataSet).SQL.Text)<>0 Then
            TRxQuery(DSTemplate.DataSet).SQL.Text:=Copy(TRxQuery(DSTemplate.DataSet).SQL.Text,1,Pos('ORDER BY',TRxQuery(DSTemplate.DataSet).SQL.Text)-1);
          if Trim(EditProcura.text) = '' then
            TRxQuery(DSTemplate.DataSet).MacroByName('MFiltro').Value:= '0=0'
          else
            begin
              Clausula:='';
              ColunaOrdem:=DM.LocateByDisplayLabel(DSTemplate.DataSet,ComboOrdem.Text);
              Clausula := ColunaOrdem;
              Case DSTemplate.DataSet.FindField(ColunaOrdem).DataType Of
                FtInteger            : Clausula:=Clausula+' = '+EditProcura.Text;
                FtString,ftMemo      : If copy(EditProcura.Text,1,1)='*' Then
                                         Clausula:=Clausula+' LIKE ''%'+copy(EditProcura.Text,2,Length(EditProcura.Text)-1)+'%'''
                                       Else
                                         Clausula:=Clausula+' LIKE '''+EditProcura.Text+'%''';
                ftFloat              : Clausula:=Clausula+' >= '+ DM.VerificaPonto(EditProcura.Text);
                FtDateTime           : If Pos('HORA',DSTemplate.DataSet.FindField(ColunaOrdem).FieldName)<>0 Then
                                         Clausula:=Clausula+' >= ''12/30/1899 '+EditProcura.Text+':00'''
                                       Else
                                         Clausula:=Clausula+' >= '''+
                                         Copy(EditProcura.Text,4,2)+'/'+
                                         Copy(EditProcura.Text,1,2)+'/'+
                                         Copy(EditProcura.Text,7,4)+'''';
              end ;
              TRxQuery(DSTemplate.DataSet).MacroByName('MFiltro').Value := Clausula;
              if ComboOrder.Text <> '' then
                TRxQuery(DSTemplate.DataSet).SQL.ADD('ORDER BY ' + DSTemplate.DataSet.FindField(
                                                                   DM.LocateByDisplayLabel(DSTemplate.DataSet,ComboOrder.Text)).FieldName)
              else
                TRxQuery(DSTemplate.DataSet).SQL.ADD('ORDER BY ' + DSTemplate.DataSet.FindField(
                                                                   DM.LocateByDisplayLabel(DSTemplate.DataSet,ComboOrdem.Text)).FieldName);
            end ;
          TRxQuery(DSTemplate.DataSet).Open;
        End;

      if (Objeto is TDBGrid) then
        if (Objeto.Name='DBGridLista') then
          begin
            Key:=CHR(0);
            Exit;
          end
        Else
          begin
            if (Objeto as TDBGrid).SelectedIndex<(Objeto as TDBGrid).Columns.Count-1 then
              begin
                (Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex+1].Field.FocusControl;
                if ((Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex].ReadOnly) AND ((Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex].Field.FieldKind=fkCalculated) then
                  FormKeyPress(Sender,Key);
              End
            else
              Begin
                if (Objeto as TDBGrid).DataSource.DataSet.State in dsEditModes then
                begin
                  (Objeto as TDBGrid).DataSource.DataSet.Post;
                  (Objeto as TDBGrid).DataSource.DataSet.Next;
                end ;

                if not (Objeto as TDBGrid).DataSource.DataSet.Eof then
                  Begin
                    (Objeto as TDBGrid).DataSource.DataSet.Next;
                    (Objeto as TDBGrid).Columns[0].Field.FocusControl;
                  end
                else
                  if not ((Objeto as TDBGrid).ReadOnly) Then (Objeto as TDBGrid).DataSource.DataSet.Append;
              end;
            Key:=CHR(0);Exit;
          end;
      Key:=CHR(0);
      If Visible Then
        Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TFormTelaConsultaTemplate.FormResize(Sender: TObject);
begin
  EditProcura.Width := PanelProcura.Width - PanelIndice.Width - 2;
  EditProcura.Update;
  BtnFecharTela.Left := (Sender as TForm).Width - (BtnFecharTela.Width + 15) ;
  BtnFecharTela.Update;
end;

procedure TFormTelaConsultaTemplate.EditProcuraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Case Key Of
    VK_UP:
      Begin
        DBGridLista.SetFocus;
        If Not DSTemplate.DataSet.Bof Then
          DSTemplate.DataSet.Prior;
      End;
    VK_DOWN:
      Begin
        DBGridLista.SetFocus;
        If Not DSTemplate.DataSet.Eof Then
          DSTemplate.DataSet.Next;
      End;
  End;
end;

procedure TFormTelaConsultaTemplate.EditProcuraKeyPress(Sender: TObject;
  var Key: Char);
Var
  CampoOrdem:TField;
begin
  CampoOrdem := DSTemplate.DataSet.FindField(DM.LocateByDisplayLabel(DSTemplate.DataSet,ComboOrdem.Text));
  case CampoOrdem.DataType of
    FtInteger,
    FtDateTime:If ((Ord(Key)<48) or (Ord(Key)>57)) and (Ord(Key)<>8) Then Key:=#0;
  End;
  If (CampoOrdem.DataType in [ftString,ftMemo]) and (Length(EditProcura.Text)=EditProcura.MaxLength) and (Ord(Key)<>8) Then
    Key:=#0;
end;

procedure TFormTelaConsultaTemplate.ComboOrdemClick(Sender: TObject);
Var
  I: Integer;
  CampoOrdem: TField;
begin
  EditProcura.Text:='';
  CampoOrdem := DSTemplate.DataSet.FindField(DM.LocateByDisplayLabel(DSTemplate.DataSet,ComboOrdem.Text));
  If CampoOrdem<>Nil Then
    Begin
      Case CampoOrdem.DataType Of
        ftAutoInc,
        ftInteger,
        ftString,
        ftMemo,
        ftFloat    : EditProcura.EditMask:='';
        ftDateTime : If POS('HORA',CampoOrdem.FieldName)<>0 Then
                       EditProcura.EditMask:='!99:00;1;_'
                     Else
                       EditProcura.EditMask:='!99/00/0000;1;_';
      End;
      If CampoOrdem.DataType in [ftString,ftMemo] Then
        EditProcura.MaxLength:=CampoOrdem.Size
      Else
        EditProcura.MaxLength:=0;
    End ;
end;

procedure TFormTelaConsultaTemplate.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F6 then
   ContarRegistros(DSTemplate.DataSet);
 if Key = VK_F3 then
   if not SQLTemplate.IsEmpty then
     LabelRetornar.Click;  
end;

procedure TFormTelaConsultaTemplate.SQLTemplateAfterOpen(
  DataSet: TDataSet);
begin
  If Not DSTemplate.DataSet.IsEmpty Then
    If Pos('ORDER BY',TRxQuery(DSTemplate.DataSet).SQL.Text)<>0 Then
      LabelRegistros.Caption := FormatFloat('#,##0',DSTemplate.DataSet.RecordCount) + ' registro(s) encontrado(s)'
    Else
      Begin
        LabelRegistros.Caption := 'Tecle F6 para contar registro(s)';
      End
  else
    Begin
      LabelRegistros.Caption := 'Nenhum registro encontrado';
      LabelDataHoraAlteracao.Caption := '';
    End;
end;

procedure TFormTelaConsultaTemplate.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  If (Not (DSTemplate.DataSet.State in dsEditModes)) and
     ((DSTemplate.DataSet.FindField('DATAULTIMAALTERACAO')<>Nil) and
      (DSTemplate.DataSet.FindField('HORAULTIMAALTERACAO')<>Nil) and
      (DSTemplate.DataSet.FindField('DATAULTIMAALTERACAO').asVariant<>Null) and
      (DSTemplate.DataSet.FindField('HORAULTIMAALTERACAO').asVariant<>Null)) Then
    LabelDataHoraAlteracao.Caption := 'Última alteração em '+
    FormatDateTime('dd/mm/yyyy',DSTemplate.DataSet.FindField('DATAULTIMAALTERACAO').asDateTime)+
    ' às '+FormatDateTime('hh:nn',DSTemplate.DataSet.FieldByName('HORAULTIMAALTERACAO').asDateTime)
  Else
    LabelDataHoraAlteracao.Caption := '';
end;

procedure TFormTelaConsultaTemplate.LabelRetornarClick(Sender: TObject);
begin
  If (FieldRetorno<>Nil) and (FieldRetOrigem<>'') Then
    Begin
      If Not (FieldRetorno.DataSet.State in DsEditModes) Then
        Try
          FieldRetorno.DataSet.Edit;
          FieldRetorno.AsVariant:=DSTemplate.DataSet.FindField(FieldRetOrigem).asVariant;
        Except
          Application.ProcessMessages;
        End
      Else
        FieldRetorno.AsVariant:=DSTemplate.DataSet.FindField(FieldRetOrigem).asVariant;
      FieldRetorno:=Nil; FieldRetOrigem:='';
    End;

  If (EditRetorno<>Nil) and (FieldRetOrigem<>'') Then
    Begin
      EditRetorno.Text := DSTemplate.DataSet.Fields[0].asString;
      EditRetorno := Nil;
    End;

  Close;
end;

procedure TFormTelaConsultaTemplate.FormActivate(Sender: TObject);
begin
  EditProcura.SetFocus;    
end;

procedure TFormTelaConsultaTemplate.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_Return then
    begin
      If (FieldRetorno<>Nil) and (FieldRetOrigem<>'') Then
        Begin
          If Not (FieldRetorno.DataSet.State in DsEditModes) Then
            Try
              FieldRetorno.DataSet.Edit;
              FieldRetorno.AsVariant:=DSTemplate.DataSet.FindField(FieldRetOrigem).asVariant;
            Except
              Application.ProcessMessages;
            End
          Else
            FieldRetorno.AsVariant:=DSTemplate.DataSet.FindField(FieldRetOrigem).asVariant;
          FieldRetorno:=Nil; FieldRetOrigem:='';
        End;

      If (EditRetorno<>Nil) and (FieldRetOrigem<>'') Then
        Begin
          EditRetorno.Text := DSTemplate.DataSet.Fields[0].asString;
          EditRetorno := Nil;
        End;

      Close;
    end;
end;

end.
