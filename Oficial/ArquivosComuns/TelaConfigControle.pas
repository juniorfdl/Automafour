 unit TelaConfigControle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ConerBtn, Mask, ToolEdit, CurrEdit, ExtCtrls,
  ComCtrls;

type
  TFormTelaConfigControle = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edColuna: TCurrencyEdit;
    edLinha: TCurrencyEdit;
    LabelTitulo: TLabel;
    lblNomeControle: TLabel;
    PageControl: TPageControl;
    TabSheetControle: TTabSheet;
    TabSheetImpressao: TTabSheet;
    cboEstilo: TComboBox;
    Panel3: TPanel;
    Panel4: TPanel;
    ConerBtn1: TConerBtn;
    ConerBtn2: TConerBtn;
    ConerBtn3: TConerBtn;
    ConerBtn4: TConerBtn;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfigControle: TFormTelaConfigControle;

implementation


{$R *.dfm}

end.
