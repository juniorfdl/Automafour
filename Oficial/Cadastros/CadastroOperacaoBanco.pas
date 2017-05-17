unit CadastroOperacaoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroOperacaoBanco = class(TFormCadastroTEMPLATE)
    SQLTemplateOPBCICOD: TIntegerField;
    SQLTemplateOPBCA60DESCR: TStringField;
    SQLTemplateOPBCCTIPO: TStringField;
    SQLTemplateOPBCCALTSALDO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    SQLTemplatePLCTA15COD: TStringField;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    ComboPlanoContas: TRxDBLookupCombo;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTICODREDUZ: TIntegerField;
    SQLPlanoContasPLCTINIVEL: TIntegerField;
    SQLPlanoContasPLCTA15CODPAI: TStringField;
    SQLPlanoContasPLCTA30CODEDIT: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLPlanoContasPLCTCANALSINT: TStringField;
    DSSQLPlanoContas: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOperacaoBanco: TFormCadastroOperacaoBanco;

implementation

{$R *.dfm}

procedure TFormCadastroOperacaoBanco.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOBANCO' ;
  SQLPlanoContas.Open;
end;

end.
