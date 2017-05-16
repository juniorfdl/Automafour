unit CadastroOperacaoTesouraria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, DBCtrls, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroOperacaoTesouraria = class(TFormCadastroTEMPLATE)
    SQLTemplateOPTEICOD: TIntegerField;
    SQLTemplateOPTEA60DESCR: TStringField;
    SQLTemplateOPTECDEBCRED: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    ComboDebCred: TRxDBComboBox;
    SQLTemplatePLCTA15COD: TStringField;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    ComboPlanoContas: TRxDBLookupCombo;
    SQLPlanoContas: TRxQuery;
    DSSQLPlanoContas: TDataSource;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTICODREDUZ: TIntegerField;
    SQLPlanoContasPLCTINIVEL: TIntegerField;
    SQLPlanoContasPLCTA15CODPAI: TStringField;
    SQLPlanoContasPLCTA30CODEDIT: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLPlanoContasPLCTCANALSINT: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOperacaoTesouraria: TFormCadastroOperacaoTesouraria;

implementation

{$R *.dfm}

procedure TFormCadastroOperacaoTesouraria.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOTESOURARIA';
  SQLPlanoContas.Open;
end;

end.
