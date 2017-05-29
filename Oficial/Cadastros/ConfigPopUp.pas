unit ConfigPopUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables;

type
  TFormConfigPopUp = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    ExibirPopTarefa: TCheckBox;
    GroupBox3: TGroupBox;
    ComboTimePopUp: TComboBox;
    Label1: TLabel;
    SQLPopUP: TQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboTimePopUpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigPopUp: TFormConfigPopUp;

implementation

uses UnitLibrary, Principal, DataModulo;

{$R *.dfm}

procedure TFormConfigPopUp.SpeedButton1Click(Sender: TObject);
Var Min : string;
begin
  if not SQLPopUP.Active then SQLPopUP.Open;
  SQLPopUP.Edit;
  Min := ComboTimePopUp.text[1];
  Min := Min + ComboTimePopUp.text[2];
  FormPrincipal.TimeLembrete.Interval := StrToInt(Min) * 60000;
  if ExibirPopTarefa.Checked then
    SQLPopUP.ParamByName('CFGCCEXIBIRPOPTARE').AsString := 'S'
  else
    SQLPopUP.ParamByName('CFGCCEXIBIRPOPTARE').AsString := 'N';
  SQLPopUP.ParamByName('POPTEMPO').AsString := Min;
  SQLPopUP.Post;
  Close;
end;

procedure TFormConfigPopUp.FormCreate(Sender: TObject);
begin
   if not SQLPopUP.Active then SQLPopUP.Open;

   if SQLPopUP.ParamByName('CFGCCEXIBIRPOPTARE').AsString = 'S' then
     ExibirPopTarefa.checked := true
   else
     ExibirPopTarefa.checked := false;
   ComboTimePopUp.text := SQLPopUp.ParamByName('POPTEMPO').AsString + ' Minutos';
end;

procedure TFormConfigPopUp.ComboTimePopUpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    informa('Escolha uma opção na lista.');
    ComboTimePopUp.text := SQLPopUP.ParamByName('POPTEMPO').asstring+' Minutos';
end;

end.
