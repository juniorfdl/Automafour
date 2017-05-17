unit CadastroSituacaoCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroSituacaoCheque = class(TFormCadastroTEMPLATE)
    SQLTemplateALINICOD: TIntegerField;
    SQLTemplateALINA30DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateALINCBLOQCLI: TStringField;
    SQLTemplateMTBLICOD: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    SQLMotivoBloqueio: TRxQuery;
    SQLTemplateMotivoBloqueioLookup: TStringField;
    GroupBox9: TGroupBox;
    RxDBLookupCombo7: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    SQLTemplateALINCCHEQDEV: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSituacaoCheque: TFormCadastroSituacaoCheque;

implementation

{$R *.dfm}

procedure TFormCadastroSituacaoCheque.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ALINEA' ;
end;

procedure TFormCadastroSituacaoCheque.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('ALINCBLOQCLI').Value := 'N' ;
end;

end.
