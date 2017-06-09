unit CadastroNotaFiscalReferenciada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroNotaFiscalReferenciada = class(TFormCadastroTEMPLATE)
    Panel8: TPanel;
    Label1: TLabel;
    CmbTipoNota: TRxDBComboBox;
    Panel4: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel7: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    CmbModeloNF: TRxDBComboBox;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateNFREFID: TIntegerField;
    SQLTemplateTIPO: TStringField;
    SQLTemplateCHAVEACESSO: TStringField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateNUMERO: TStringField;
    SQLTemplateMODELO: TStringField;
    SQLTemplateUF: TStringField;
    SQLTemplateTIPO_DOCUMENTO: TStringField;
    SQLTemplateCNPJ_CPF: TStringField;
    SQLTemplateNUMERO_ECF: TIntegerField;
    SQLTemplateNUMERO_COO: TIntegerField;
    SQLTemplateMODELO_ECF: TStringField;
    CmbTipoDocumento: TRxDBComboBox;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    SQLTemplateDATAEMISSAO: TDateTimeField;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateNUMERO_SERIE: TStringField;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateIE: TStringField;
    ComboUFRes: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure CmbTipoNotaChange(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNotaFiscalReferenciada: TFormCadastroNotaFiscalReferenciada;

implementation

{$R *.DFM}

procedure TFormCadastroNotaFiscalReferenciada.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'NOTAFISCALREFERENCIADA';
end;

procedure TFormCadastroNotaFiscalReferenciada.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('NOFIA13ID').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('NOFIA13ID').Value;
end;

procedure TFormCadastroNotaFiscalReferenciada.CmbTipoNotaChange(
  Sender: TObject);
begin
  inherited;
  Panel4.Visible := False;
  Panel6.Visible := False;
  Panel7.Visible := False;
  SQLTemplateTIPO_DOCUMENTO.Text  := '';
  SQLTemplateMODELO.AsString      := '';
  CmbModeloNF.Enabled             := True;
  CmbTipoDocumento.Enabled        := True;
  CmbModeloNF.Color               := clWhite;
  CmbTipoDocumento.Color          := clWhite;
  DBEdit8.Visible                 := False;
  Label17.visible                 := False;

  if cmbTipoNota.ItemIndex = 0 then
  begin
    Panel4.Visible := True;
  End Else if cmbTipoNota.ItemIndex = 1 then
  Begin
    Panel4.Visible := True;
  End Else if cmbTipoNota.ItemIndex = 2 Then
  begin
    Panel6.Visible := True;
    CmbModeloNF.Color               := clGray;
    CmbTipoDocumento.Color          := clGray;
    CmbTipoDocumento.Enabled        := False;
    CmbModeloNF.Enabled             := False;
    SQLTemplateTIPO_DOCUMENTO.AsString  := '1';
    SQLTemplateMODELO.AsString          := '01';
  End Else if cmbTipoNota.ItemIndex = 3 Then
  Begin
    Panel6.Visible := True;
    DBEdit8.Visible                 := True;
    Label17.visible                 := True;

  End Else if cmbTipoNota.ItemIndex = 4 Then
  Begin
    SQLTemplateMODELO.AsString      := '2D';
    Panel7.Visible := True;
  End;
end;

procedure TFormCadastroNotaFiscalReferenciada.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  Panel4.Visible := False;
  Panel6.Visible := False;
  Panel7.Visible := False;
  CmbModeloNF.Enabled             := True;
  CmbTipoDocumento.Enabled        := True;
  CmbModeloNF.Color               := clWhite;
  CmbTipoDocumento.Color          := clWhite;
  DBEdit8.Visible                 := False;
  Label17.visible                 := False;

  if cmbTipoNota.ItemIndex = 0 then
  begin
    Panel4.Visible := True;
  End Else if cmbTipoNota.ItemIndex = 1 then
  Begin
    Panel4.Visible := True;
  End Else if cmbTipoNota.ItemIndex = 2 Then
  begin
    Panel6.Visible := True;
    CmbModeloNF.Color               := clGray;
    CmbTipoDocumento.Color          := clGray;
    CmbTipoDocumento.Enabled        := False;
    CmbModeloNF.Enabled             := False;
  End Else if cmbTipoNota.ItemIndex = 3 Then
  Begin
    Panel6.Visible := True;
    DBEdit8.Visible                 := True;
    Label17.visible                 := True;

  End Else if cmbTipoNota.ItemIndex = 4 Then
  Begin
    Panel7.Visible := True;
  End;
end;

end.
