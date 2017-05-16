{
+------------------------------------------------------------------------------+
|               ALTERAÇÕES EFETUADAS NO CADASTRO TEMPLATE                      |
+----------------+-------------+-----------------------------------------------+
|    DATA/HORA   | PROGRAMADOR |    ALTERACOES FEITAS                          |
+----------------+-------------+-----------------------------------------------+
|25-09-2001 12:42| MARCOS      | COLOCADO UM TESTE NA INCLUSAO DOS CAMPOS      |
|                |             | PARA PESQUISA NO COMBOORDEM PARA NÃO INCLUIR  |
|                |             | CAMPOS CUJO DisplayLabel SEJA IGUAL AO        |
|                |             | FieldName                                     |
+----------------+-------------+-----------------------------------------------+
|03-10-2001 15:50| GUSTAVO E   | CONSERTO DA ROTINA QUE DA FOCO NO PRIMEIRO    |
|                | MARCOS      | OBJETO QUE PODE GANHAR FOCO NO TPanel         |
|                |             | PanelCodigoDescricao                          |
+----------------+-------------+-----------------------------------------------+
|07-10-2001 18:00| GUSTAVO     | CONSERTO DO CADASTRO QUANDO É DETALHE         |
|                |             | CRIACAO DE UMA VARIAVEL FIELDORIGEM QUE DEVE  |
|                |             | CONTER O NOME DO CAMPO CORRESPONDENTE AO      |
|                |             | FIELDLOOKUP AO CHAMAR TELA COM RETORNO        |
+----------------+-------------+-----------------------------------------------+
|09-10-2001 18:00| GUSTAVO     | NO BEFORE INSERT SELECIONA ALTERA O SQL DO    |
|                |             | SQLTEMPLATE PARA NAO SELECIONAR NADA          |
|                |             | PARA AGILIZAR A INCLUSÃO DE REGISTROS         |
+----------------+-------------+-----------------------------------------------+
|01-11-2001 10:00| GUSTAVO     | EXCLUSAO DE REGISTROS NAS TABELAS FILHAS      |
|                |             | ( C A S C A D E )                             |
+----------------+-------------+-----------------------------------------------+
|20-11-2001 10:00| MARCOS      | FOI INCLUIDA A COLUNA ORDENAR POR NA PAGINA DE|
|                |             | CONSULTA                                      |
+----------------+-------------+-----------------------------------------------+
}

unit CadastroTEMPLATE;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, ComCtrls, Grids, DBGrids, Db, Menus, DBCtrls,
  DBTables, Jpeg, Mask, RxLookup, MemTable, RxQuery, Placemnt, IniFiles, VarSys,
  ConerBtn, RxGIF, RXCtrls, RxDBComb, DBActns, ActnList, FormResources,
  ImgList, TypInfo, AdvPanel, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TProtectDBGrid = Class(TDBGrid);
  TFormCadastroTEMPLATE = class(TForm)
    DSTemplate: TDataSource;
    PopupMenuDiversos: TPopupMenu;
    PopupMenuImpressao: TPopupMenu;
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    Button1: TRxSpeedButton;
    Button2: TRxSpeedButton;
    Button3: TRxSpeedButton;
    SQLTemplate: TRxQuery;
    SQLCount: TRxQuery;
    PanelFundoDados: TPanel;
    Panel5: TPanel;
    PagePrincipal: TPageControl;
    TabSheetConsulta: TTabSheet;
    DBGridLista: TDBGrid;
    PanelProcura: TPanel;
    PanelIndice: TPanel;
    TabSheetDadosPrincipais: TTabSheet;
    PanelMaster: TPanel;
    DSMasterTemplate: TDataSource;
    ActionList1: TActionList;
    actCancelar: TDataSetCancel;
    actExcluir: TDataSetDelete;
    actAlterar: TDataSetEdit;
    actNovo: TDataSetInsert;
    actProximo: TDataSetNext;
    actGravar: TDataSetPost;
    actAnterior: TDataSetPrior;
    actLookup: TAction;
    PanelCodigoDescricao: TPanel;
    SQLExcluiDetalhes: TRxQuery;
    MemoDetalhes: TMemo;
    UpdateSQLTemplate: TUpdateSQL;
    PanelEditProcura: TPanel;
    PanelBetween: TPanel;
    acImprimir: TAction;
    AdvPanelIndice: TAdvPanel;
    LblProcurarPor: TLabel;
    LblOrdenarPor: TLabel;
    LabelOperador: TLabel;
    ComboOrdem: TComboBox;
    ComboOrder: TComboBox;
    ComboAscDesc: TComboBox;
    ComboOperador: TComboBox;
    AdvPanelEditProcura: TAdvPanel;
    LabelValorProcura: TLabel;
    EditProcura: TMaskEdit;
    AdvPanel1: TAdvPanel;
    LabelEntre: TLabel;
    EditEntre: TMaskEdit;
    LabelEEntre: TLabel;
    EditE: TMaskEdit;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxPanelCabecalho: TScrollBox;
    Panel1: TPanel;
    LabelTitulo: TLabel;
    LabelStatus: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    PanelLeft: TPanel;
    LabelDataHoraAlteracao: TLabel;
    LabelRegistros: TLabel;
    BtnFecharTela: TSpeedButton;
    LabelRetornar: TSpeedButton;
    LabelDiversos: TRxSpeedButton;
    LabelImpressao: TRxSpeedButton;
    LabelExcluir: TSpeedButton;
    LabelCancelar: TSpeedButton;
    LabelGravar: TSpeedButton;
    LabelAlterar: TSpeedButton;
    LabelNovo: TSpeedButton;
    BtnProximoRegistro: TSpeedButton;
    BtnRegistroAnterior: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PagePrincipalChange(Sender: TObject);
    procedure DBGridListaDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LabelRetornarClick(Sender: TObject);
    procedure LabelImpressaoClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLCountBeforeOpen(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure EditProcuraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actAlterarUpdate(Sender: TObject);
    procedure ComboOrdemClick(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure ComboOrdemExit(Sender: TObject);
    procedure ComboOperadorChange(Sender: TObject);
    procedure ComboAscDescExit(Sender: TObject);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    NovoRegistro,DesabilitouControles : Boolean;
    FieldRetorno : TField;
    FieldRetOrigem : String;
    EditRetorno : TEdit;
    BotaoAnterior:TrxSpeedButton;
    procedure BotoesDetalhe(Habilita:Boolean) ;
    procedure AtualizaLabels (DataSet: TDataSet);
    procedure AtualizaBotoes(Sender : TObject);
    procedure DbMemoKeypressTemplate(Sender : TObject; Var Key : Char);
    procedure ControlarActions (DataSource: TDataSource);
    procedure ExcluirDetalhes;
  public
    { Public declarations }
    Tabela, ClausulaEspecial : String;
    SomenteLeitura,btNovo,btAlterar,btExcluir : Boolean;
    CoresAntigas : TStringList;
    procedure ContarRegistros(DataSet: TDataSet);
    procedure VerificarCamposObrigatorios(DataSet: TDataSet);
    procedure DesabilitarBotoes(Novo,Alterar,Gravar,Cancelar,Excluir : Boolean);

  protected
    IniFile : TIniFile;
    CampoAutoIncremento, CampoID : Integer;
    function  AbandonarSemSalvar(Tabela:TDataSet) : Boolean;
  end;

var
  FormCadastroTEMPLATE: TFormCadastroTEMPLATE;

implementation

uses DataModulo, DataModuloTemplate, UnitLibrary;

{$R *.DFM}

(*------------------------------------------------------------------------------
Nome da Procedure: TFormCadastroTEMPLATEACTION.BotoesDetalhe
Propósito da Procedure: Controla a habilitação dos botões do PanelBarra
Programador: Fabio Humberto Rodrigues                       Data: 04/09/2001

Comentários Adicionais:
------------------------------------------------------------------------------*)
procedure TFormCadastroTEMPLATE.BotoesDetalhe(Habilita:Boolean);
Var
  I : Integer;
begin
  for I:=0 to PanelBarra.ControlCount-1 do
    if (PanelBarra.Controls[I] is TRxSpeedButton) Then
      If ((PanelBarra.Controls[I] as TRxSpeedButton).Tag in [0,2,10]) then
        If Not Habilita or ((PanelBarra.Controls[I] as TRxSpeedButton).Tag=0) Then
          (PanelBarra.Controls[I] as TRxSpeedButton).Enabled := Habilita
        Else
          (PanelBarra.Controls[I] as TRxSpeedButton).Enabled := Habilita and
            (DSTemplate.DataSet<>Nil) and Not (DSTemplate.DataSet.IsEmpty)
      Else
        (PanelBarra.Controls[I] as TRxSpeedButton).Enabled :=
          (DSTemplate.DataSet<>Nil) and Not (DSTemplate.DataSet.IsEmpty);
end;
(*------------------------------------------------------------------------------
Nome da Procedure: TFormCadastroTEMPLATEACTION.AbandonarSemSalvar
Propósito da Procedure: Ao fechar o form, verifica se existem informações não
                        salvas.
Programador: Fabio Humberto Rodrigues                       Data: 04/09/2001

Comentários Adicionais:
------------------------------------------------------------------------------*)
function TFormCadastroTEMPLATE.AbandonarSemSalvar(Tabela:TDataSet) : Boolean;
begin
  Result := True;
  if Tabela <> nil then
    if (Tabela.State in dsEditModes) then
      begin
        if Application.MessageBox('Existem dados não gravados. Deseja sair mesmo assim?',
          'Pergunta',MB_YesNo+MB_IconQuestion) = Id_Yes then
          Tabela.Cancel
        else
          Result := False;
      end;
end;
(*------------------------------------------------------------------------------
Nome da Procedure: TFormCadastroTEMPLATEACTION.AtualizaBotoes
Propósito da Procedure:
Programador: Fabio Humberto Rodrigues                       Data: 04/09/2001

Comentários Adicionais:
------------------------------------------------------------------------------*)
procedure TFormCadastroTEMPLATE.AtualizaBotoes(Sender : TObject);
var
  I : Integer;
begin
  for I := 0 to PanelBarra.ControlCount-1 do
    if (PanelBarra.Controls[I] is TRxSpeedButton) then
      begin
        (PanelBarra.Controls[I] as TRxSpeedButton).Down       := False ;
        (PanelBarra.Controls[I] as TRxSpeedButton).Font.Color := clBlack ;
        (PanelBarra.Controls[I] as TRxSpeedButton).Repaint ;
      end;

  (Sender as TRxSpeedButton).Down       := True;
  (Sender as TRxSpeedButton).Font.Color := clNavy ;
  (Sender as TRxSpeedButton).Repaint ;
end;
(*------------------------------------------------------------------------------
Nome da Procedure: TFormCadastroTEMPLATEACTION.AtualizaLabels
Propósito da Procedure:Atualiza informações ao usuário e habilitação de botões
Programador: Fabio Humberto Rodrigues                       Data: 04/09/2001

Comentários Adicionais:
------------------------------------------------------------------------------*)
procedure TFormCadastroTEMPLATE.AtualizaLabels(DataSet: TDataSet);
var
  DataSetOk : Boolean;
  Status: string;
Begin
  DataSetOk := TRxQuery(DataSet).Active;

  LabelDiversos.Enabled := (PopupMenuDiversos.Items.Count > 0) and
    (not (TRxQuery(DataSet).State in dsEditModes));
  LabelImpressao.Enabled := (PopupMenuImpressao.Items.Count > 0) and
    (not (TRxQuery(DataSet).State in dsEditModes));

  LabelRetornar.Enabled := (LabelRetornar.Visible) and (DataSetOk) and
    (DataSet.Active) and (Not (TRxQuery(DataSet).IsEmpty) and (DataSet.State in [DsBrowse]));

  if PagePrincipal.ActivePage.Name <> 'TabSheetDetalhe' then
    BotoesDetalhe(DataSetOk and not (TRxQuery(DataSet).State
    in dsEditModes));
  if DataSetOK then
    begin
      case TRxQuery(DataSet).State of
        dsBrowse   : Status := 'Visualizando';
        dsInsert   : Status := 'Inserindo';
        dsEdit     : Status := 'Alterando';
        dsInactive : Status := 'Inativo';
      end;
      LabelStatus.Caption := 'Status: ' + Status;
    end
  else
    LabelStatus.Caption := 'Status: Inativo';
End;
(*------------------------------------------------------------------------------
Nome da Procedure: TFormCadastroTEMPLATEACTION.DesabilitarBotoes
Propósito da Procedure: Desabilitar os botoes que não devem ser acessados em
determinadas situações.
Programador: Jonas Batista Loss.                       Data: 04/09/2001
Comentários Adicionais:
Ex.: Quando uma nota de compra estiver encerrada e o cadastro de itens da nota
for acessado. Não dever ser permitada a manipulacação dos itens daquela nota.
------------------------------------------------------------------------------*)
procedure TFormCadastroTEMPLATE.DesabilitarBotoes(Novo,Alterar,Gravar,Cancelar,Excluir : Boolean);
begin
  DesabilitouControles := False;
  if Novo then
    begin
      LabelNovo.Action := Nil;
      DesabilitouControles := True;
    end
  else
    LabelNovo.Action := actNovo;
  if Alterar then
    begin
      LabelAlterar.Action := Nil;
      DesabilitouControles := True;
    end
  else
    LabelAlterar.Action := actAlterar;
  if Gravar then
    begin
      LabelGravar.Action := Nil;
      DesabilitouControles := True;
    end
  else
    LabelGravar.Action := actGravar;
  if Cancelar then
    begin
      LabelCancelar.Action := Nil;
      DesabilitouControles := True;
    end
  else
    LabelCancelar.Action := actCancelar;
  if Excluir then
    begin
      LabelExcluir.Action := Nil;
      DesabilitouControles := True;
    end
  else
    LabelExcluir.Action := actExcluir;

  LabelNovo.Enabled     := not Novo;
  LabelAlterar.Enabled  := not Alterar;
  LabelGravar.Enabled   := not Gravar;
  LabelCancelar.Enabled := not Cancelar;
  LabelExcluir.Enabled  := not Excluir;
  Application.ProcessMessages;
end;
(*------------------------------------------------------------------------------
Nome da Procedure: TFormCadastroTEMPLATEACTION.FormCreate
Propósito da Procedure: Configura os campos automaticamente
Programador: Fabio Humberto Rodrigues                       Data: 04/09/2001

Comentários Adicionais:
------------------------------------------------------------------------------*)
procedure TFormCadastroTEMPLATE.FormCreate(Sender: TObject);
var
  I           : Integer;
  PageControl : TPageControl;
  Key         : Char;
begin
  BotaoAnterior := Button1;

  if not bRetaguarda then
    begin
      Width  := 760 ;
      Height := 505 ;
    end ;

  If DSTemplate.DataSet = Nil Then
    Begin
      ShowMessage('Erro Interno: DSTemplate.DataSet = Null');
      Exit;
    End
  Else
    Begin
      If DSTemplate.DataSet.Tag in [1,2,3] Then
        Begin
          CampoAutoIncremento := DM.EncontraCampo(DSTemplate.DataSet, 1);
          If DSTemplate.DataSet.Tag in [2,3] Then
            CampoID := DM.EncontraCampo(DSTemplate.DataSet, 2);
        End;
    End;

  FieldRetorno    := FieldLookup;
  FieldRetOrigem  := FieldOrigem;
  FieldLookup     := Nil;
  FieldOrigem     := '';
  EditRetorno     := EditLookup;
  EditLookup      := Nil;

  If DSMasterSys<>Nil Then
    Begin
      DSMasterTemplate.DataSet := DSMasterSys.DataSet;
      TRxQuery(DSTemplate.DataSet).DataSource:=DSMasterSys;
    End;
  DSMasterSys  := Nil;
  PagePrincipal.TabHeight  :=1;
  PagePrincipal.TabWidth   :=1;

  PagePrincipal.ActivePage := TabSheetConsulta;
  Button1.Down := True;
  Button1.Font.Color := clNavy ;
  Button1.Repaint;

  ActiveControl := EditProcura;

  For I:=0 To ComponentCount-1 Do
    Begin
      if (Components[I] is TDBMemo) then
        (Components[I] as TDBMemo).OnKeyPress := DbMemoKeypressTemplate ;

{      if (Components[I] is TRxDBLookupCombo) and ((Components[I] as TRxDBLookupCombo).DataSource = DSTemplate) Then
        begin
          if DSTemplate.DataSet.FindField((Components[I] as TRxDBLookupCombo).DataField)<>Nil Then
            begin
              if (Not DSTemplate.DataSet.FindField((Components[I] as TRxDBLookupCombo).DataField).Visible) then
                begin
                  (Components[I] as TRxDBLookupCombo).Color    :=clWhite;
                  (Components[I] as TRxDBLookupCombo).Ctl3D    := False;
                end;
            end;
        end;}

      if (Components[I] is TDBEdit) and
        ((Components[I] as TDBEdit).DataSource = DSTemplate) Then
        Begin
          if (Components[I] as TDBEdit).Tag = 1 then
            (Components[I] as TDBEdit).CharCase := ecLowerCase
          else
            (Components[I] as TDBEdit).CharCase := ecUpperCase;

          If DSTemplate.DataSet.FindField((Components[I] as TDBEdit).DataField)<>Nil Then
            Begin
              If (Not DSTemplate.DataSet.FindField((Components[I] as TDBEdit).DataField).Visible) then
                Begin
                  (Components[I] as TDBEdit).ReadOnly :=True;
                  (Components[I] as TDBEdit).TabStop  :=False;
                  (Components[I] as TDBEdit).Color    :=$00F7F0EA;
                  (Components[I] as TDBEdit).Update;
                End;
            End
          Else
            ShowMessage('Erro Interno: O componente '+(Components[I] as TDBEdit).Name+' está apontando para um campo que não existe ou para TDataSource errado!');
        End;

{      if (Components[I] is TDBEdit) and ((Components[I] as TDBEdit).DataSource = DSMasterTemplate) and (DSMasterTemplate.DataSet<>Nil) Then
        Begin
          (Components[I] as TDBEdit).ReadOnly :=True;
          (Components[I] as TDBEdit).TabStop  :=False;
          (Components[I] as TDBEdit).Color    :=$00E0E0E0;
          (Components[I] as TDBEdit).Update;
        End;}

      if (Components[I] is TField) then
        begin
          case (Components[I] as TField).DataType of
         ftDateTime:begin
                    if (Components[I] as TDateTimeField).DisplayFormat = '' then
                      (Components[I] as TDateTimeField).DisplayFormat := 'dd/mm/yyyy hh:mm:ss';
                    if (Components[I] as TDateTimeField).EditMask = '' then
                      (Components[I] as TDateTimeField).EditMask := '!00/00/0000 00:00:00;1;_';
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
                    2: begin
                        (Components[I] as TFloatField).DisplayFormat := '#,##0.00';
                        (Components[I] as TFloatField).EditFormat    := '0.00';
                       end;
                    3:Begin
                        (Components[I] as TFloatField).DisplayFormat := '#,###0.000';
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
          ftBCD:  Case (Components[I] as TBCDField).Size of
                    0:Begin
                        (Components[I] as TBCDField).DisplayFormat := '#,##0.00';
                        (Components[I] as TBCDField).EditFormat    := '0.00';
                      end ;
                    1:begin
                        (Components[I] as TBCDField).DisplayFormat := '#,##0.0';
                        (Components[I] as TBCDField).EditFormat    := '0.0';
                      end ;
                  2,3:Begin
                        (Components[I] as TBCDField).DisplayFormat := '#,##0.00';
                        (Components[I] as TBCDField).EditFormat    := '0.00';
                      end ;
                    4:begin
                        (Components[I] as TBCDField).DisplayFormat := '#,##0.0000';
                        (Components[I] as TBCDField).EditFormat    := '0.0000';
                      end ;
                    5:begin
                        (Components[I] as TBCDField).DisplayFormat := '#,##0.00000';
                        (Components[I] as TBCDField).EditFormat    := '0.00000';
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
  IniFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+Application.Title+'.ini');
  If ComboOrdem.Items.Count>0 Then
    Begin
      ComboOrdem.ItemIndex := StrToInt(IniFile.ReadString(Name,'ComboOrdem_ItemIndex','0'));
      ComboOrdemClick(ComboOrdem);
    End;

  ComboOrder.Items.Clear;
  ComboOrder.Items := ComboOrdem.Items ;
  If ComboOrder.Items.Count > 0 Then
    ComboOrder.ItemIndex := StrToInt(IniFile.ReadString(Name,'ComboOrder_ItemIndex','0'));
  ComboOperador.ItemIndex := StrToInt(IniFile.ReadString(Name,'ComboOperador_ItemIndex','0'));
  ComboOperador.OnChange(ComboOperador);
  ComboAscDesc.ItemIndex := StrToInt(IniFile.ReadString(Name,'ComboAscDesc_ItemIndex','0'));
end;

procedure TFormCadastroTEMPLATE.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i : integer ;
begin
  If AbandonarSemSalvar(DSTemplate.DataSet) then
    Begin
      If IniFile <> Nil Then
        Begin
          IniFile.WriteString(Name,'ComboOrdem_ItemIndex',IntToStr(ComboOrdem.ItemIndex));
          IniFile.WriteString(Name,'ComboOrder_ItemIndex',IntToStr(ComboOrder.ItemIndex));
          IniFile.WriteString(Name,'ComboOperador_ItemIndex',IntToStr(ComboOperador.ItemIndex));
          IniFile.WriteString(Name,'ComboAscDesc_ItemIndex',IntToStr(ComboAscDesc.ItemIndex));
        End;
      IniFile.Free ;
      Action := CaFree ;
      TForm(Sender) := nil;
    End
  Else
    Abort ;
end;

procedure TFormCadastroTEMPLATE.FormShow(Sender: TObject);
begin
  AtualizaLabels (SQLTemplate);
end;

procedure TFormCadastroTEMPLATE.PagePrincipalChange(Sender: TObject);
begin
  Resize;
  If PagePrincipal.ActivePage = TabSheetDadosPrincipais Then
    Begin
      DSTemplate.DataSet.DisableControls;
      DSTemplate.DataSet.EnableControls;
    End;
end;

procedure TFormCadastroTEMPLATE.DBGridListaDblClick(Sender: TObject);
var
  I:Integer;
begin
  If Not (Sender as TDBGrid).DataSource.DataSet.IsEmpty Then
    begin
      for I:=0 To PanelBarra.ControlCount-1 do
        if (PanelBarra.Controls[I] is TRxSpeedButton) and ((PanelBarra.Controls[I] as TRxSpeedButton).Tag = PagePrincipal.ActivePage.PageIndex + 1) then
          Begin
            (PanelBarra.Controls[I] as TRxSpeedButton).Click;
            Break;
          end ;
    end;
end;

procedure TFormCadastroTEMPLATE.FormResize(Sender: TObject);
begin
  if PagePrincipal.ActivePage = TabSheetConsulta then
    begin
      EditProcura.Width := PanelEditProcura.Width - 80;
      EditEntre.Width := Trunc(((PanelBetween.Width - LabelEEntre.Width) - 6) / 2);
      EditE.Width := EditEntre.Width;
      LabelEEntre.Left := EditEntre.Width + 5;
      EditE.Left := EditEntre.Width + LabelEEntre.Width + 6;
      EditEntre.Update;
      EditE.Update;
      EditProcura.Update;
      LabelEEntre.Update;
      if Width - (BtnFecharTela.Width + 10) < (LabelRetornar.Left+LabelRetornar.Width) Then
        BtnFecharTela.Left:= (LabelRetornar.Left + LabelRetornar.Width)
      else
        BtnFecharTela.Left:= Width - (BtnFecharTela.Width + 40);
      BtnFecharTela.Update;
    end;
end;

procedure TFormCadastroTEMPLATE.FormKeyPress(Sender: TObject;
  var Key: Char);
  function FormataData(Text : string) : string;
  begin
    Result := Copy(Text,4,2)+'/'+
              Copy(Text,1,2)+'/'+
              Copy(Text,7,4)+'"';
  end;
var
  Clausula, ColunaOrdem, ColunaOrdenar, Ordenar, Operador, Texto :String;
  Objeto : TComponent;
  I : Integer;
begin
  if Key = char(13) Then
    begin
      Objeto := (Sender as TForm).ActiveControl;
      if (((Objeto as TObject).Name = 'EditProcura') or
           ((Objeto as TObject).Name = 'EditE')) and
           (ComboOrdem.ItemIndex <> -1) Then
        begin
          if TRxQuery(DSTemplate.DataSet).Active then TRxQuery(DSTemplate.DataSet).Close;
          if Pos('ORDER BY',TRxQuery(DSTemplate.DataSet).SQL.Text) <> 0 Then
            TRxQuery(DSTemplate.DataSet).SQL.Text := Copy(TRxQuery(DSTemplate.DataSet).SQL.Text,1,Pos('ORDER BY',TRxQuery(DSTemplate.DataSet).SQL.Text)-1);
          //******************************************************************//
          // MÉTODO DE ORDENAÇÃO CRESCENTE OU DECRESCENTE - 27/09/2002        //
          //******************************************************************//
          case ComboAscDesc.ItemIndex of
            0 : Ordenar := ' ASC';
            1 : Ordenar := ' DESC';
          end;
          //******************************************************************//
          // ATRIBUI A VARIÁVEL A COLUNA PARA ORDENAÇÃO - 27/09/2002          //
          //******************************************************************//
          if ComboOrder.Text <> '' then
            ColunaOrdenar := ComboOrder.Text
          else
            ColunaOrdenar := ComboOrdem.Text;
          //******************************************************************//
          // ATRIBUI A VARIÁVEL O OPERADOR DA CONSULTA - 27/09/2002           //
          //******************************************************************//
          case ComboOperador.ItemIndex of
            0 : Operador := ' >= ';
            1 : Operador := ' = ' ;
            2 : Operador := ' <= ';
            3 : Operador := ' BETWEEN ';
          end;
          //******************************************************************//
          // INÍCIO DA PESQUISA - 27/09/2002                                  //
          //******************************************************************//
          if (((Trim(EditProcura.Text) = '') and
               (ComboOperador.ItemIndex <> 3)) or
              ((Trim(EditEntre.Text) = '') and
               (Trim(EditE.Text) = '') and
               (ComboOperador.ItemIndex = 3))) then
            begin
              TRxQuery(DSTemplate.DataSet).MacroByName('MFiltro').Value := '0=0';
              TRxQuery(DSTemplate.DataSet).SQL.ADD('ORDER BY ' + DSTemplate.DataSet.FindField(DM.LocateByDisplayLabel(DSTemplate.DataSet,ColunaOrdenar)).FieldName + Ordenar);
            end
          else
            begin
              Clausula := '';
              ColunaOrdem := DM.LocateByDisplayLabel(DSTemplate.DataSet,ComboOrdem.Text);
              Clausula := ColunaOrdem;
              case DSTemplate.DataSet.FindField(ColunaOrdem).DataType of
                FtInteger            : if ComboOperador.ItemIndex = 3 then
                                         Clausula := Clausula + Operador + EditEntre.Text + ' AND ' + EditE.Text
                                       else
                                         Clausula := Clausula + Operador + EditProcura.Text;
                FtString,ftMemo      : if Copy(EditProcura.Text,1,1) = '*' then
                                         Clausula := Clausula + ' LIKE "%' + Copy(EditProcura.Text,2,Length(EditProcura.Text)-1) + '%"'
                                       else
                                         if ComboOperador.ItemIndex = 3 then
                                           Clausula := Clausula + Operador + ' "' + EditEntre.Text + '" AND "' + EditE.Text + '"'
                                         else
                                           Clausula := Clausula + ' LIKE "' + EditProcura.Text + '%"';

{                FtString,ftMemo      : begin
                                         Texto := '%';
                                         For I := 1 to (length(EditProcura.Text)+1) do
                                           begin
                                             If Copy((EditProcura.Text+' '),I,1)=' ' then
                                               Texto := Texto +'%'
                                             else
                                               Texto := Texto+copy(EditProcura.Text,I,1);
                                           end;
                                         Clausula := Clausula + ' LIKE "' + Texto + '"';
                                       end;
}
                ftFloat,ftCurrency,
                ftBCD                : if ComboOperador.ItemIndex = 3 then
                                         Clausula := Clausula + Operador + DM.VerificaPonto(EditEntre.Text) + ' AND ' + DM.VerificaPonto(EditE.Text)
                                       else
                                         Clausula := Clausula + Operador + DM.VerificaPonto(EditProcura.Text);
                FtDateTime           : if Pos('HORA',DSTemplate.DataSet.FindField(ColunaOrdem).FieldName) <> 0 then
                                         begin
                                           if ComboOperador.ItemIndex = 3 then
                                             Clausula := Clausula + Operador + ' "12/30/1899 ' + EditEntre.Text + ':00" AND "12/30/1899 ' + EditE.Text + ':00"'
                                           else
                                             Clausula := Clausula + Operador + ' "12/30/1899 ' + EditProcura.Text + ':00"';
                                         end
                                       else
                                         begin
                                           if ComboOperador.ItemIndex = 3 then
                                             Clausula := Clausula + Operador + ' "' + FormataData(EditEntre.Text) + ' AND "' + FormataData(EditE.Text)
                                           else
                                             Clausula := Clausula + Operador + ' "' + FormataData(EditProcura.Text);
                                         end;
              end ;

              if (Tabela = 'CLIENTE') and (ColunaOrdem = 'CLIEA15FONE1') and (EditProcura.Text <> '') Then
                begin
                  EditProcura.Text := Trim(EditProcura.Text)+' ' ;
                  Clausula   := '%';
                  For I := 1 to length(EditProcura.Text)+1 do
                    begin
                      If Copy(EditProcura.Text,I,1)=' ' then
                        Clausula := Clausula+'%'
                      else
                        Clausula := Clausula+copy(EditProcura.Text,I,1);
                    end;
                  Clausula := 'CLIEA15FONE1 like "' + Clausula + '"';
                end;
              if (Tabela = 'PRODUTO') and (ColunaOrdem = 'PRODA60DESCR') and (EditProcura.Text <> '') and (FileExists(DM.PathAplicacao+'ProcuraContendo.txt')) Then
                begin
                  EditProcura.Text := Trim(EditProcura.Text)+' ' ;
                  Clausula   := '%';
                  For I := 1 to length(EditProcura.Text)+1 do
                    begin
                      If Copy(EditProcura.Text,I,1)=' ' then
                        Clausula := Clausula+'%'
                      else
                        Clausula := Clausula+copy(EditProcura.Text,I,1);
                    end;
                  Clausula := 'PRODA60DESCR like "' + Clausula + '"';
                end;

              if (Tabela = 'PRODUTO') and (ColunaOrdem = 'PRODA60CODBAR') and (EditProcura.Text <> '') Then
                begin
                  dm.SQLTemplate.close;
                  dm.SQLTemplate.sql.clear;
                  dm.SQLTemplate.sql.add('Select * from ProdutoBarras Where PRBAA15BARRAS = "'+EditProcura.Text+'"');
                  dm.SQLTemplate.open;
                  if not dm.SQLTemplate.IsEmpty then
                    Clausula := 'PRODICOD = '+ dm.SQLTemplate.FieldByName('PRODICOD').AsString
                  else
                    begin
                      dm.SQLTemplate.close;
                      dm.SQLTemplate.sql.clear;
                      dm.SQLTemplate.sql.add('Select * from Produto Where PRODA60CODBAR = "'+EditProcura.Text+'"');
                      dm.SQLTemplate.open;
                      if not dm.SQLTemplate.IsEmpty then
                        Clausula := 'PRODIAGRUPGRADE = '+ dm.SQLTemplate.FieldByName('PRODIAGRUPGRADE').AsString
                    end;
                  dm.SQLTemplate.close;
                end;
              if (Tabela = 'PRODUTO') and (ColunaOrdem = 'PRODICOD') and (EditProcura.Text <> '') Then
                begin
                  dm.SQLTemplate.close;
                  dm.SQLTemplate.sql.clear;
                  dm.SQLTemplate.sql.add('Select * from Produto Where PRODICOD = "'+EditProcura.Text+'"');
                  dm.SQLTemplate.open;
                  if not dm.SQLTemplate.IsEmpty then
                    Clausula := 'PRODICOD = '+ dm.SQLTemplate.FieldByName('PRODIAGRUPGRADE').AsString;
                  dm.SQLTemplate.close;
                end;
              TRxQuery(DSTemplate.DataSet).MacroByName('MFiltro').Value := Clausula;
              TRxQuery(DSTemplate.DataSet).SQL.ADD(' ORDER BY ' + DSTemplate.DataSet.FindField(DM.LocateByDisplayLabel(DSTemplate.DataSet,ColunaOrdenar)).FieldName + Ordenar);
            end ;

         { if (TRxQuery(DSTemplate.DataSet).IsEmpty) and (Tabela = 'CLIENTE') and (ColunaOrdem = 'CLIEA15FONE1') and (EditProcura.Text <> '') then
            begin
              dm.SQLTemplate.close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.add('Select * from CLIENTE Where CLIEA15FONE2 = "'+EditProcura.Text+'"');
              dm.SQLTemplate.open;
              if not dm.SQLTemplate.IsEmpty then
                Clausula := 'CLIEA13ID = "'+ dm.SQLTemplate.FieldByName('CLIEA13ID').AsString + '"';
              dm.SQLTemplate.close;
             TRxQuery(DSTemplate.DataSet).Close;
             TRxQuery(DSTemplate.DataSet).MacroByName('MFiltro').Value := Clausula;
             TRxQuery(DSTemplate.DataSet).Open;
            end; }

          TRxQuery(DSTemplate.DataSet).Open;
        End;

      If (Objeto is TRxDBLookUpCombo) AND (Objeto as TRxDBLookUpCombo).IsDropDown Then
      Begin
        (Objeto as TRxDBLookUpCombo).CloseUp(True);
        Application.ProcessMessages;
      End;

      If (Objeto is TDBMemo) Then Exit;
      if (Objeto is TDBGrid) then
        if (Objeto.Name='DBGridLista') then
          begin
            Button2.Click;
            Key:=CHR(0);Exit;
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
      if Visible then
        Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TFormCadastroTEMPLATE.LabelRetornarClick(Sender: TObject);
begin
  If (FieldRetorno<>Nil) and (FieldRetOrigem<>'') Then
    Begin
      If Not (PagePrincipal.ActivePage=TabSheetDadosPrincipais) Then
        Button2.Click;
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
      If Not (PagePrincipal.ActivePage=TabSheetDadosPrincipais) Then
        Button2.Click;
      EditRetorno.Text := DSTemplate.DataSet.Fields[0].asString;
      EditRetorno := Nil;
    End;

  Close;
end;

procedure TFormCadastroTEMPLATE.LabelImpressaoClick(Sender: TObject);
begin
  //PopupMenuImpressao.Popup(LabelImpressao.Left+10,PanelCabecalho.Height+50);
end;

procedure TFormCadastroTEMPLATE.SQLTemplateBeforePost(DataSet: TDataSet);
var CodigoProdutoFornecedor: integer;
    Erro: boolean;
    FiltroAnterior, NovoFiltro : string;
begin
  VerificarCamposObrigatorios (DataSet);
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  Erro := True;
  Case DataSet.State Of
    DsInsert: begin
                if Tabela = '' then
                begin
                  ShowMessage('A variável Tabela está sem valor!') ;
                  exit ;
                end ;
                NovoRegistro:=True;
                if not FileExists('ProdutoFornecedorManual.txt') then
                  begin
                    if (DataSet.Tag in [1,2,3]) then
                      DM.CodigoAutomatico(Tabela, DSTemplate, DataSet, CampoAutoIncremento, CampoID);
                  end
                else
                  begin
                    if (Tabela = 'FORNECEDOR') or (Tabela = 'PRODUTO') then
                      begin
                        if (Tabela = 'FORNECEDOR') then
                          begin
                            if Pergunta('Sim','Deseja Incluir um Fornecedor Manualmente?') then
                              begin
                                while Erro do
                                  begin
                                    Erro := False;
                                    DataSet.FieldByName('FORNICOD').AsString := InputBox('Incluir Código Fornecedor','Digite o Codigo do Fornecedor Manualmente!','');
                                    try
                                      CodigoProdutoFornecedor := StrToInt(DataSet.FieldByName('FORNICOD').AsString);
                                    except
                                      Application.ProcessMessages;
                                      ShowMessage('Erro! O Codigo Invalido! Verfique!') ;
                                      Erro := True;
                                    end;
                                    // Testa se codigo ja existe em outro fornecedor
                                    try
                                      if CodigoProdutoFornecedor = StrToInt(SQLLocate('FORNECEDOR','FORNICOD','FORNICOD',DataSet.FieldByName('FORNICOD').AsString)) then
                                        begin
                                          Application.ProcessMessages;
                                          ShowMessage('Codigo ja foi utilizado para outro Fornecedor! Verfique!') ;
                                          Erro := True;
                                        end;
                                    except
                                      Application.ProcessMessages;
                                    end;
                                  end;
                              end
                            else
                              if (DataSet.Tag in [1,2,3]) then
                                DM.CodigoAutomatico(Tabela, DSTemplate, DataSet, CampoAutoIncremento, CampoID);
                          end;
                        if (Tabela = 'PRODUTO') then
                          begin
                            if Pergunta('Sim','Deseja Incluir um Produto Manualmente?') then
                              begin
                                while Erro do
                                  begin
                                    Erro := False;
                                    DataSet.FieldByName('PRODICOD').AsString := InputBox('Incluir Código Produto','Digite o Codigo do Produto Manualmente!','');
                                    try
                                      CodigoProdutoFornecedor := StrToInt(DataSet.FieldByName('PRODICOD').AsString);
                                    except
                                      Application.ProcessMessages;
                                      ShowMessage('Erro! O Codigo Invalido! Verfique!') ;
                                      Erro := True;
                                    end;
                                    // Testa se codigo ja existe em outro produto
                                    try
                                      if CodigoProdutoFornecedor = StrToInt(SQLLocate('PRODUTO','PRODICOD','PRODICOD',DataSet.FieldByName('PRODICOD').AsString)) then
                                        begin
                                          Application.ProcessMessages;
                                          ShowMessage('Codigo ja foi utilizado para outro produto! Verfique!') ;
                                          Erro := True;
                                        end;
                                    except
                                      Application.ProcessMessages;
                                    end;
                                  end;
                              end
                            else
                              if (DataSet.Tag in [1,2,3]) then
                                DM.CodigoAutomatico(Tabela, DSTemplate, DataSet, CampoAutoIncremento, CampoID);
                          end;
                      end
                    else
                      if (DataSet.Tag in [1,2,3]) then
                        DM.CodigoAutomatico(Tabela, DSTemplate, DataSet, CampoAutoIncremento, CampoID);
                  end;
              end;
  Else
    NovoRegistro:=False;
  end;

  FiltroAnterior := SQLTemplate.MacroByName('MFiltro').asString;
  NovoFiltro     := DM.ClausulaFiltro(TABELA,SQLTemplate);
  if (NovoFiltro <> '') then
    SQLTemplate.MacroByName('MFiltro').asString := NovoFiltro
  else
    SQLTemplate.MacroByName('MFiltro').asString := FiltroAnterior;
end;

procedure TFormCadastroTEMPLATE.SQLTemplatePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
Var
  ID, FiltroAnterior, NovoFiltro : string;
begin
  Case DataSet.State Of
    DsInsert:
      Begin
        Case DataSet.Tag Of
          1:DataSet.Fields[CampoAutoIncremento].asInteger:=DataSet.Fields[CampoAutoIncremento].asInteger + 1;
          2:Begin
              DataSet.Fields[CampoAutoIncremento].asInteger:=DataSet.Fields[CampoAutoIncremento].asInteger + 1;
              ID:=Format('%.3d',[EmpresaCorrente])+Format('%.9d',[DataSet.Fields[CampoAutoIncremento].asInteger]);
              DataSet.Fields[CampoID].asString:=ID+DM.DigitVerifEAN(ID);
            End;
          3:Begin
              DataSet.Fields[CampoAutoIncremento].AsInteger:=DataSet.Fields[CampoAutoIncremento].AsInteger + 1;
              ID:=Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.Fields[CampoAutoIncremento].asInteger]);
              DataSet.Fields[CampoID].asString:=ID+DM.DigitVerifEAN(ID);
            End;
         End;
      if pos('PRIMARY or UNIQUE KEY',E.Message) > 0 then
          begin
            // ShowMessage('Registro Invalido! Verifique Duplicidade!');
            // Action:=daAbort;
            Action:=DaRetry;
          end
        else
          Action:=DaRetry;
      End;
  end;

  FiltroAnterior := SQLTemplate.MacroByName('MFiltro').asString;
  NovoFiltro     := DM.ClausulaFiltro(TABELA,SQLTemplate);
  if (NovoFiltro <> '') then
    SQLTemplate.MacroByName('MFiltro').asString := NovoFiltro
  else
    SQLTemplate.MacroByName('MFiltro').asString := FiltroAnterior;
end;

procedure TFormCadastroTEMPLATE.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  If DSTemplate.DataSet<>Nil Then
    Case DSTemplate.DataSet.Tag Of
      2:If DataSet.FindField('EMPRICOD')<>Nil Then
          DataSet.FindField('EMPRICOD').Value   := EmpresaCorrente ;
      3:Begin
          If DataSet.FindField('EMPRICOD')<>Nil Then
            DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
          If DataSet.FindField('TERMICOD')<>Nil Then
            DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
        End;
    End;
end;

procedure TFormCadastroTEMPLATE.SQLTemplateAfterScroll(DataSet: TDataSet);
begin
  If (Not (DSTemplate.DataSet.State in dsEditModes)) and
     ((DSTemplate.DataSet.FindField('REGISTRO')<>Nil) and
      (DSTemplate.DataSet.FindField('REGISTRO')<>Nil) and
      (DSTemplate.DataSet.FindField('REGISTRO').asVariant<>Null) and
      (DSTemplate.DataSet.FindField('REGISTRO').asVariant<>Null)) Then
    begin
      LabelDataHoraAlteracao.Caption := 'Última alteração em '+
      LongDayNames[DayOfWeek(DSTemplate.DataSet.FindField('REGISTRO').asVariant)] + ', '+
      FormatDateTime('dd/mm/yyyy',DSTemplate.DataSet.FindField('REGISTRO').asDateTime)+
      ' às '+FormatDateTime('hh:nn:ss',DSTemplate.DataSet.FieldByName('REGISTRO').asDateTime);
    end
  Else
    LabelDataHoraAlteracao.Caption := '';
  // Redesenha o Grid por causa do Zebrado
  // DBGridLista.Repaint;
end;

procedure TFormCadastroTEMPLATE.SQLTemplateAfterOpen(DataSet: TDataSet);
begin
  If Not DSTemplate.DataSet.IsEmpty Then
    If Pos('ORDER BY',TRxQuery(DSTemplate.DataSet).SQL.Text)<>0 Then
      LabelRegistros.Caption := FormatFloat('#,##0',DSTemplate.DataSet.RecordCount) + ' Registro(s) Encontrado(s)'
    Else
      Begin
        LabelRegistros.Caption := 'Tecle F6 para contar Registro(s)';
      End
  else
    Begin
      LabelRegistros.Caption := 'Nenhum Registro Encontrado';
      LabelDataHoraAlteracao.Caption := '';
    End;
end;

procedure TFormCadastroTEMPLATE.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  If Field=Nil Then
    AtualizaLabels(TDataSource(Sender).DataSet);
end;

procedure TFormCadastroTEMPLATE.SQLCountBeforeOpen(DataSet: TDataSet);
begin
  SQLCount.Params:=SQLTemplate.Params;
end;

procedure TFormCadastroTEMPLATE.DSTemplateStateChange(Sender: TObject);
var
  I: Integer;
  ControleDB : TComponent;
  ptrPropInfo : PPropInfo;
begin
  if CoresAntigas <> Nil then
     for I := 0 to CoresAntigas.Count -1 do
         begin
            ControleDB := FindComponent(Copy(CoresAntigas.Strings[I], 0, Pos(';', CoresAntigas.Strings[I])-1));
            if ControleDB <> Nil then
               begin
                 ptrPropInfo := GetPropInfo(ControleDB, 'Color');
                 if (ptrPropInfo <> Nil) then
                    SetPropValue(ControleDB, 'Color', StringToColor(Copy(CoresAntigas.Strings[I], Pos(';', CoresAntigas.Strings[I]) + 1, Length(CoresAntigas.Strings[I]) - Pos(';', CoresAntigas.Strings[I]) + 1)));
               end;
         end;
  for I := 0 To ComponentCount -1 do
    begin
      if (Components[I] is TRxDbComboBox) and
        (TRxDBComboBox(Components[I]).DataSource = DSTemplate) then
        (Components[I] as TRxDbComboBox).Enabled := (DSTemplate.DataSet.State in dsEditModes);
      if (Components[I] is TDbEdit) then
        if (Components[I] as TDbEdit).Color = $00BFD8D8 then
          (Components[I] as TDbEdit).Color := $00BFD8D8;
    end;
  ControlarActions(TDataSource(Sender));
end;

procedure TFormCadastroTEMPLATE.Button1Click(Sender: TObject);
begin
  If (Sender as TRxSpeedButton).Tag <> 3 Then
    BotaoAnterior := (Sender as TRxSpeedButton) ;
  case (Sender as TRxSpeedButton).Tag of
    0:begin
        PagePrincipal.ActivePage := TabSheetConsulta;
        If PanelProcura.Visible Then EditProcura.SetFocus;
      end ;
    1:begin
        PagePrincipal.ActivePage := TabSheetDadosPrincipais;
        PagePrincipal.OnChange(PagePrincipal);
      end ;
  end ;

  If (Sender as TRxSpeedButton).Tag=3 Then
    BotaoAnterior.Click;
  PanelCodigoDescricao.Visible:=(PagePrincipal.ActivePage <> TabSheetConsulta);
  // Adilson - Coloquei aqui a rotina que atualiza os botoes pra resolver o problema de clicar
  // no botao e nao mostrar no form que o botao foi pressionado...
  // A rotina AtualizaBotoes estava antes do if acima.
  AtualizaBotoes(Sender) ;
end;

procedure TFormCadastroTEMPLATE.FormActivate(Sender: TObject);
begin
  if DataSetLookup <> nil then
    begin
      DataSetLookup.Close;
      DataSetLookup.Open;
    end;
  if bRetaguarda then
    WindowState := wsMaximized ;
end;

procedure TFormCadastroTEMPLATE.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  if (MatrizFilial='F') AND (TabelaNaLista(Tabela)) and not FileExists('AlteraProdutoFilial.txt') then
  //     (MatrizFilial='F') AND (Tabela = 'PRODUTO') and not FileExists('AlteraProdutoFilial.txt') then
    begin
      Application.MessageBox('Esta tabela não pode ser alterada na Filial !','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;
    end ;
  if (LabelNovo.Enabled = False) and (LabelNovo.Action = nil) and Self.Active then
    begin
     { Application.MessageBox('Controles Desabilitados, Operação Cancelada !','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;}
    end ;

  if SQLTemplate.Active then SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').asString:=SQLTemplate.Fields[0].FieldName + ' IS NULL';
  SQLTemplate.Open;
  if (PagePrincipal.ActivePage <> TabSheetDadosPrincipais) Then Button2.Click;
end;

procedure TFormCadastroTEMPLATE.EditProcuraKeyPress(Sender: TObject;
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


procedure TFormCadastroTEMPLATE.EditProcuraKeyDown(Sender: TObject;
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

procedure TFormCadastroTEMPLATE.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  if (MatrizFilial='F') AND (TabelaNaLista(Tabela)) and not FileExists('AlteraProdutoFilial.txt') then
//     (MatrizFilial='F') AND (Tabela = 'PRODUTO') and not FileExists('AlteraProdutoFilial.txt') then
    begin
      Application.MessageBox('Uma filial não pode excluir estas informações !','Advanced Control Informa...',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL) ;
      Abort ;
    end ;
  if (LabelExcluir.Enabled = False) and (LabelExcluir.Action = nil) and Self.Active then
    begin
      Application.MessageBox('Controles Desabilitados, Operação Cancelada !','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;
    end ;
  Button1.Click;
  If Application.MessageBox(PCHAR('Você esta prestes a excluir o item selecionado!'+CHR(13)+'Tem certeza que deseja excluí-lo?'),'Atenção',MB_YesNo+MB_IconQuestion+MB_SYSTEMMODAL)=Id_No Then
    Abort
  Else
    Begin
      DM.RegistraExclusao(TABELA,SQLTemplate);
      If MemoDetalhes.Lines.Count>0 Then
        ExcluirDetalhes;
    End;
end;

procedure TFormCadastroTEMPLATE.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroTEMPLATE.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F6 then
   ContarRegistros(actGravar.DataSource.DataSet);
 if (Key = VK_F3) and (LabelRetornar.Visible = True) then
   LabelRetornar.Click;
end;
(*------------------------------------------------------------------------------
Nome da Procedure: TFormCadastroTEMPLATEACTION.ContarRegistros
Propósito da Procedure: Contar o número de registros visíveis da tabela
                        especificada.
Programador: Fabio Humberto Rodrigues                       Data: 04/09/2001

Comentários Adicionais:
------------------------------------------------------------------------------*)
procedure TFormCadastroTEMPLATE.ContarRegistros(DataSet: TDataSet);
var
  I, Y: Integer;
  SQL : String;
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
  if pos('ORDER',SQLCount.SQL.Text) > 0 then
    begin
      SQL := SQLCount.SQL.Text;
      y   := length(SQL) - pos('ORDER',SQL);
      Delete(SQL,pos('ORDER',SQL),Y);
      SQLCount.SQL.Text := SQL;
    end;
  SQLCount.Open;
  LabelRegistros.Caption := FormatFloat('#,##0',SQLCount.FindField('CONTADOR').asInteger) +
  ' registro(s) encontrado(s)';
  SQLCount.Close;
end;

procedure TFormCadastroTEMPLATE.actAlterarUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := actExcluir.Enabled;
end;


procedure TFormCadastroTEMPLATE.VerificarCamposObrigatorios (
  DataSet: TDataSet);
var
  I, Field: Integer;
  ptrPropInfo : PPropInfo;
  Controle    : TWinControl;
  CorErro     : TColor;
begin
//  CorErro := $00D7D7FF;
  CorErro := $00BFD8D8;
  for i := 0 to TRXQuery(DataSet).FieldCount -1 do
  if (TRXQuery(DataSet).Fields[I].ConstraintErrorMessage <> '') then
    if (TRXQuery(DataSet).Fields[I].IsNull) or (Trim(TRXQuery(DataSet).Fields[I].AsString) = '') then
     begin
       if (TRXQuery(DataSet).Fields[I].ConstraintErrorMessage = '1') then
         begin
           for Field := 0 to TRXQuery(DataSet).FieldCount -1 do
               begin
                  if (TRXQuery(DataSet).Fields[Field].ConstraintErrorMessage = '1') and
                     (TRXQuery(DataSet).Fields[Field].IsNull) then
                     begin
                        TRXQuery(DataSet).Fields.Fields[Field].FocusControl;
                        ptrPropInfo := GetPropInfo(ActiveControl, 'Color');
                        if (ptrPropInfo <> Nil) then
                           begin
                              if CoresAntigas = nil then
                                 CoresAntigas := TStringList.Create;
                              Controle := ActiveControl;
                              Perform(Wm_NextDlgCtl,0,0);
                              CoresAntigas.Add(Controle.Name + ';' + ColorToString(GetPropValue(Controle, 'Color')));
                              SetPropValue(Controle, 'Color', CorErro);
                           end;
                     end;
               end;
           TRXQuery(DataSet).Fields[I].FocusControl;
           ptrPropInfo := GetPropInfo(ActiveControl, 'DataField');
           if ptrPropInfo <> Nil then
              if GetPropValue(ActiveControl, 'DataField') = TRXQuery(DataSet).Fields[I].FieldName then
                 SetPropValue(ActiveControl, 'Color', CorErro);
           raise Exception.Create('O campo ''' +
             TRXQuery(DataSet).Fields[I].DisplayLabel + ''' deve ser preenchido.' + #13 +
             'Verifique também os Campos destacados.');
         end
       else
         begin
           raise Exception.Create((TRXQuery(DataSet).Fields[I].ConstraintErrorMessage));
         end;
     end;
end;

procedure TFormCadastroTEMPLATE.DbMemoKeypressTemplate(Sender : TObject; Var Key : Char);
begin
  Key := AnsiUpperCase(Key)[1] ;

end ;

procedure TFormCadastroTEMPLATE.ControlarActions(DataSource: TDatasource);
begin
  if DataSource.State in DsEditModes then
    begin
      BtnRegistroAnterior.Action := nil;
      BtnRegistroAnterior.Enabled := False;
      BtnProximoRegistro.Action := nil;
      BtnProximoRegistro.Enabled := False;
      LabelNovo.Action := nil;
      LabelNovo.Enabled := False;
      LabelAlterar.Action := nil;
      LabelAlterar.Enabled := False;
      LabelExcluir.Action := nil;
      LabelExcluir.Enabled := False;
      if DataSource.State = dsInsert then
        Try (FindNextControl((PanelCodigoDescricao as TWinControl), true, true, False)).SetFocus; Except End;
    end
  else
    begin
     //Controla Acesso
     btNovo    := False; // Liberado
     btAlterar := False;
     btExcluir := False;

     if DM.VerificaBloqueioJanela(Self.Name) and (Self.Active) and (not UsuarioMaster) then
        begin
          DM.SQLTemplate.Close;
          DM.SQLTemplate.SQL.Text := ' select * from USUARIOPERMISSOES ' +
                                     ' where USUAICOD = ' + IntToStr(UsuarioCorrente) +
                                     ' and USPEA60NOMETELA = "' + Self.Name + '"';
          DM.SQLTemplate.Open;

          if not DM.SQLTemplate.IsEmpty then
             begin
                btNovo     := (DM.SQLTemplate.FieldByName('USPECINCLUSAO').AsString = 'N');
                btAlterar  := (DM.SQLTemplate.FieldByName('USPECALTERACAO').AsString = 'N');
                btExcluir  := (DM.SQLTemplate.FieldByName('USPECEXCLUSAO').AsString = 'N');
                if DM.SQLTemplate.FieldByName('USPECLEITURA').AsString = 'S' then
                   begin
                      btNovo    := True; // Bloqueado
                      btAlterar := True;
                      btExcluir := True;
                   end;
                if DM.SQLTemplate.FieldByName('USPECACESSOTOTAL').AsString = 'S' then
                   begin
                      btNovo    := False;
                      btAlterar := False;
                      btExcluir := False;
                   end;
             end;
       end;

     BtnRegistroAnterior.Action := actAnterior;
     BtnProximoRegistro.Action := actProximo;

     if not btNovo then
        LabelNovo.Action := actNovo
     else
        LabelNovo.Action := nil;

     LabelNovo.Enabled := (LabelNovo.Action <> nil);

     if not btAlterar then
        LabelAlterar.Action := actAlterar
     else
        LabelAlterar.Action := nil;

     LabelAlterar.Enabled := (LabelAlterar.Action <> nil);

     if not btExcluir then
        LabelExcluir.Action := actExcluir
     else
        LabelExcluir.Action := nil;

     LabelExcluir.Enabled := (LabelExcluir.Action <> nil);

   end;
end;

procedure TFormCadastroTEMPLATE.ExcluirDetalhes;
Var
  I:Integer;
Begin
  For I:=0 To MemoDetalhes.Lines.Count-1 Do
    If Trim(MemoDetalhes.Lines[I])<>'' Then
      Begin
        SQLExcluiDetalhes.MacroByName('MTabela').AsString   := MemoDetalhes.Lines[I];
        SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro(TABELA,SQLTemplate);
        SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
        if SQLExcluiDetalhes.MacroByName('MTabela').AsString = 'REDUCAOZDIAFORMA' then
          SQLExcluiDetalhes.MacroByName('MFiltro').asString := copy(SQLExcluiDetalhes.MacroByName('MFiltro').asString,1,25); 
        SQLExcluiDetalhes.Open;
        SQLExcluiDetalhes.First;
        While Not SQLExcluiDetalhes.Eof Do
          Begin
            DM.RegistraExclusao(MemoDetalhes.Lines[I],SQLExcluiDetalhes);
            SQLExcluiDetalhes.Next;
          End;
        SQLExcluiDetalhes.Close;
        SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
        SQLExcluiDetalhes.ExecSQL;
      End;
End;

procedure TFormCadastroTEMPLATE.ComboOrdemClick(Sender: TObject);
Var
  I: Integer;
  CampoOrdem: TField;
begin
  EditProcura.Text :='';
  EditEntre.Text := '';
  EditE.Text := '';
  CampoOrdem := DSTemplate.DataSet.FindField(DM.LocateByDisplayLabel(DSTemplate.DataSet,ComboOrdem.Text));
  If CampoOrdem <> Nil Then
    Begin
      Case CampoOrdem.DataType Of
        ftAutoInc,
        ftInteger,
        ftString,
        ftMemo,
        ftFloat    : begin
                       EditProcura.EditMask := '';
                       EditEntre.EditMask := '';
                       EditE.EditMask := '';
                     end;
        ftDateTime : begin
                       if POS('HORA',CampoOrdem.FieldName) > 0 Then
                         begin
                           EditProcura.EditMask := '!99:00;1;_';
                           EditEntre.EditMask := '!99:00;1;_';
                           EditE.EditMask := '!99:00;1;_';
                         end
                       else
                         begin
                           EditProcura.EditMask := '!99/00/0000;1;_';
                           EditEntre.EditMask := '!99/00/0000;1;_';
                           EditE.EditMask := '!99/00/0000;1;_';
                         end;
                     end;
      End;
      If CampoOrdem.DataType in [ftString,ftMemo] Then
        EditProcura.MaxLength:=CampoOrdem.Size
      Else
        EditProcura.MaxLength:=0;
    End ;
end;

procedure TFormCadastroTEMPLATE.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  if (MatrizFilial='F') AND (TabelaNaLista(Tabela)) and (not FileExists('AlteraProdutoFilial.txt')) then
//     (MatrizFilial='F') AND (Tabela = 'PRODUTO') and not FileExists('AlteraProdutoFilial.txt') then
    begin
      Application.MessageBox('Atenção... Uma filial não pode alterar estas informações !','Advanced Control Informa...',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL) ;
      Abort ;
    end ;
  if (LabelAlterar.Enabled = False) and (LabelAlterar.Action = nil)  and Self.Active then
    begin
      Application.MessageBox('Controles Desabilitados, Operação Cancelada !','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;
    end ;

  If (PagePrincipal.ActivePage = TabSheetConsulta) Then Button2.Click;
end;

procedure TFormCadastroTEMPLATE.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  If NovoRegistro Then
    Begin
      SQLTemplate.Close;
      SQLTemplate.Open;
    End;
end;

procedure TFormCadastroTEMPLATE.ComboOrdemExit(Sender: TObject);
begin
  ComboOrder.ItemIndex := ComboOrdem.ItemIndex;
end;

procedure TFormCadastroTEMPLATE.ComboOperadorChange(Sender: TObject);
begin
  PanelBetween.Visible := ComboOperador.ItemIndex = 3;
  if PanelBetween.Visible then
    begin
      PanelBetween.BringToFront;
      PanelBetween.Update;
    end;
end;

procedure TFormCadastroTEMPLATE.ComboAscDescExit(Sender: TObject);
begin
  if PanelBetween.Visible then
    EditEntre.SetFocus;
end;

procedure TFormCadastroTEMPLATE.SQLTemplateBeforeOpen(DataSet: TDataSet);
begin
  if not UsuarioMaster then
    if (SQLTemplate.FindField('EMPRICOD') <> nil) and (Pos('(%MEmpresa)',SQLTemplate.SQL.Text) > 0) then
      begin
        SQLTemplate.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + IntToStr(EmpresaCorrente);
      end;
end;

procedure TFormCadastroTEMPLATE.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if gdSelected in State then
     begin
       TDBGrid(Sender).Canvas.Brush.Color := clBlack;
       TDBGrid(Sender).Canvas.Font.Color := clWhite;
     end
   else
      begin
         if Odd((TProtectDBGrid(Sender).DataLink).ActiveRecord) then
            TDBGrid(Sender).Canvas.Brush.Color := $00EBEBEB  {cor linha diferente}
         else
            TDBGrid(Sender).Canvas.Brush.Color := TDBGrid(Sender).Color;

         TDBGrid(Sender).Canvas.Font.Color := clBlack;
      end;

   TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
