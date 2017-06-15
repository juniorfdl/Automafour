unit TelaConsultaRapidaCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, ExtCtrls, StdCtrls, CartaoCredito,
  Buttons, Mask, ToolEdit, AdvGlowButton;

type
  TFormTelaConsultaRapidaCupom = class(TForm)
    DSSQLCupom: TDataSource;
    SQLCupom: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA60RAZAOSOC: TStringField;
    SQLCupomVENDA60NOME: TStringField;
    SQLCupomPLRCA60DESCR: TStringField;
    DBGridLista: TDBGrid;
    PanelDescricao: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    De: TDateEdit;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomVLRLIQ: TFloatField;
    SQLCupomCLIENTECNPJ: TStringField;
    btTransmite: TAdvGlowButton;
    BtInutilizarNFCE: TAdvGlowButton;
    SQLCupomCHAVEACESSO: TStringField;
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtInutilizarNFCEClick(Sender: TObject);
    procedure btTransmiteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ProvedorCartao, NomeNumerarioCartao : string;
    TempoLimite, TempoIntervalo: Integer;
    RetornoCartao : TInfoRetorno;
    DadosImpressora : TInfoImpressao;
  end;

var
  FormTelaConsultaRapidaCupom: TFormTelaConsultaRapidaCupom;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormTelaConsultaRapidaCupom.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then  ModalResult := mrOk;
  if Key = VK_ESCAPE then  ModalResult := mrCancel;
end;

procedure TFormTelaConsultaRapidaCupom.DeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      SQLCupom.Close;
      SQLCupom.MacroByName('DataEmissao').Value  := 'Cupom.CUPODEMIS = ''' + FormatDateTime('mm/dd/yyyy',de.Date) + '''';
      SQLCupom.MacroByName('Empresa').Value      := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
      SQLCupom.Open;
      DBGridLista.SetFocus;
    end;
end;

procedure TFormTelaConsultaRapidaCupom.BtInutilizarNFCEClick(
  Sender: TObject);
var ano, Modelo, Serie, Justificativa, NumeroInicial, NumeroFinal : string;
begin
  if (copy(ECFAtual,1,4) = 'NFCE')  then
    begin
      ano    := FormatDateTime('yyyy',now);
      Modelo := '65';
      Serie  := dm.SQLTerminalAtivo.FieldByName('TERMICOD').AsString;
      Justificativa := 'Falha no processo de geração desta NFCe!';

      if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
        exit;
      if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroFinal)) then
        exit;

      try
        dm.ACBrNFe.WebServices.Inutiliza(dm.SQLEmpresaEMPRA14CGC.AsString,
                                         Justificativa,
                                         StrToInt(Ano),
                                         StrToInt(Modelo),
                                         StrToInt(Serie),
                                         StrToInt(NumeroInicial),
                                         StrToInt(NumeroFinal));

        ShowMessage('Numeração Inutilizada.');
      except
        ShowMessage('Inutilização Ok.');
      end;  
    end;
end;

procedure TFormTelaConsultaRapidaCupom.btTransmiteClick(
  Sender: TObject);
begin
  ModalResult := mrOk ;
end;

end.
