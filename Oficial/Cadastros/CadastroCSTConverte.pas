unit CadastroCSTConverte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxDBComb, FormResources, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TCadastroCSTConverter = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label68: TLabel;
    ComboSitTrib: TRxDBComboBox;
    Label6: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label40: TLabel;
    ComboCRT: TRxDBComboBox;
    SQLTemplateTIPOEMPRESA: TIntegerField;
    SQLTemplateCSTSAIDA: TStringField;
    SQLTemplateCSTENTRADA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroCSTConverter: TCadastroCSTConverter;

implementation

{$R *.dfm}

procedure TCadastroCSTConverter.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela :=  'CSTCONVERTE';
end;

end.
