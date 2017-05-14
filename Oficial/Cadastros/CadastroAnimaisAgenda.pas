unit CadastroAnimaisAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroAnimaisAgenda = class(TFormCadastroTEMPLATE)
    SQLTemplateANAGICOD: TIntegerField;
    SQLTemplateANIICOD: TIntegerField;
    SQLTemplateANAGDDATA: TDateTimeField;
    SQLTemplateANAGA200MOTIVO: TStringField;
    SQLTemplateAVISARANTES: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    ComboOrigem: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAnimaisAgenda: TFormCadastroAnimaisAgenda;

implementation

{$R *.dfm}

procedure TFormCadastroAnimaisAgenda.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Animais_Agenda';
end;

procedure TFormCadastroAnimaisAgenda.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('ANIICOD').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('ANIICOD').Value ;
End;

procedure TFormCadastroAnimaisAgenda.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateANAGDDATA.AsDateTime < now then
  begin
    ShowMessage('Data de Agendamento de Compromisso deve ser maior que o presente momento');
    Abort;
  end;

end;

end.


//  Label1.Caption := DateTimeToStr( StrToDateTime(MaskEdit1.Text) + (StrToint(MaskEdit2.Text)/1440) )
