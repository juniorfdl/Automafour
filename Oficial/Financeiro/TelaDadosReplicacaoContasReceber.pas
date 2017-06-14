unit TelaDadosReplicacaoContasReceber;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TFormTelaDadosReplicacaoContasReceber = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    MemoHist: TMemo;
    Label1: TLabel;
    EditNroDuplic: TEdit;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosReplicacaoContasReceber: TFormTelaDadosReplicacaoContasReceber;

implementation

{$R *.dfm}

end.
