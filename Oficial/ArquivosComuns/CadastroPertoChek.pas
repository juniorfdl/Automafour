unit CadastroPertoChek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxDBComb, DBCtrls, DB, DBTables, DBActns,
  ActnList, ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg;

type
  TFormCadastroPertoChek = class(TFormCadastroTEMPLATE)
    SQLTemplatePERA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePERICOD: TIntegerField;
    SQLTemplatePERA30DESCR: TStringField;
    SQLTemplatePERA30MODELO: TStringField;
    SQLTemplatePERA5PORTA: TStringField;
    SQLTemplatePERA5VELOC: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label3: TLabel;
    ComboModelo: TRxDBComboBox;
    Label4: TLabel;
    ComboPorta: TRxDBComboBox;
    Label5: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPertoChek: TFormCadastroPertoChek;

implementation

{$R *.dfm}

procedure TFormCadastroPertoChek.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PERTOCHEK'; 
end;

end.
