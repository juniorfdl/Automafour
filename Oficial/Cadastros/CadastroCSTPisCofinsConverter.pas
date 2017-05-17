unit CadastroCSTPisCofinsConverter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxDBComb, DB, DBTables, DBActns, ActnList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  Buttons, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TCadastroCSTPisCofinsConverte = class(TFormCadastroTEMPLATE)
    SQLTemplatePISCOFINS: TStringField;
    SQLTemplateCSTSAIDA: TStringField;
    SQLTemplateCSTENTRADA: TStringField;
    Label1: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    PanelPIS: TPanel;
    Label68: TLabel;
    Label6: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    RxDBComboBox13: TRxDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    PanelCOFINS: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    RxDBComboBox14: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplatePISCOFINSChange(Sender: TField);
    procedure RxDBComboBox2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroCSTPisCofinsConverte: TCadastroCSTPisCofinsConverte;

implementation

{$R *.dfm}

procedure TCadastroCSTPisCofinsConverte.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONVERTECSTPISCOFINS';
end;

procedure TCadastroCSTPisCofinsConverte.SQLTemplatePISCOFINSChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePISCOFINS.AsString = 'P' then
  begin
    PanelPIS.Visible    := True;
    PanelCofins.Visible := False;
    PanelCofins.Enabled := False;
    PanelPIS.Enabled    := True;
  End Else
  begin
    PanelPIS.Visible    := False;
    PanelCofins.Visible := True;
    PanelCofins.Enabled := True;
    PanelPIS.Enabled    := False;
  end;
end;

procedure TCadastroCSTPisCofinsConverte.RxDBComboBox2Exit(Sender: TObject);
begin
  inherited;
  if SQLTemplatePISCOFINS.AsString = 'P' then
  Begin
      if SQLTemplate.State in ([dsInsert, dsEdit]) then
        RxDBComboBox10.SetFocus
  End Else
  Begin
      if SQLTemplate.State in ([dsInsert, dsEdit]) then
        RxDBComboBox9.SetFocus
  End;
end;

end.
