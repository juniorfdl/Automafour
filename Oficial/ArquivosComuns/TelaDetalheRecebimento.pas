unit TelaDetalheRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, RxQuery;

type
  TFormTelaDetalheRecebimento = class(TForm)
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    Panel1: TPanel;
    SQLRecebimento: TQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoEmpresaLookup: TStringField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLRecebimentoCTRCA13IDCREDITO: TStringField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoTPLQICOD: TIntegerField;
    SQLRecebimentoNUMEICOD: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoUSUAICOD: TIntegerField;
    DSSQLRecebimento: TDataSource;
    DBGrid2: TDBGrid;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLRecebimentoTerminalLookup: TStringField;
    SQLRecebimentoUsuarioLookup: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDetalheRecebimento: TFormTelaDetalheRecebimento;

implementation

{$R *.dfm}

end.
