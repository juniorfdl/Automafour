unit TelaConsultaLiberacaoCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, RxQuery, Grids, DBGrids,
  Buttons, ConerBtn, DBCtrls, Mask;

type
  TFormTelaConsultaLiberacaoCredito = class(TForm)
    SQLLiberacao: TRxQuery;
    DSSQLLiberacao: TDataSource;
    Label13: TLabel;
    Label1: TLabel;
    SQLLiberacaoCATCA13ID: TStringField;
    SQLLiberacaoCLIEA13ID: TStringField;
    SQLLiberacaoEMPRICOD: TIntegerField;
    SQLLiberacaoTERMICOD: TIntegerField;
    SQLLiberacaoCATCICOD: TIntegerField;
    SQLLiberacaoCLDPICOD: TIntegerField;
    SQLLiberacaoCATCDAUTORIZACAO: TDateTimeField;
    SQLLiberacaoCATCN2LIMITE: TFloatField;
    SQLLiberacaoCATCN2VLRCREDITO: TFloatField;
    SQLLiberacaoUSUAICOD: TIntegerField;
    SQLLiberacaoCATCTOBS: TStringField;
    SQLLiberacaoCATCCSTATUS: TStringField;
    SQLLiberacaoPENDENTE: TStringField;
    SQLLiberacaoREGISTRO: TDateTimeField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLLiberacaoUSUAA60LOGIN: TStringField;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    SQLLiberacaoCLIEA60RAZAOSOC: TStringField;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    SQLDependente: TRxQuery;
    SQLDependenteCLIEA13ID: TStringField;
    SQLDependenteCLDPICOD: TIntegerField;
    SQLDependenteCLDPA60NOME: TStringField;
    SQLLiberacaoCLDPA60NOME: TStringField;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaLiberacaoCredito: TFormTelaConsultaLiberacaoCredito;

implementation

{$R *.dfm}

procedure TFormTelaConsultaLiberacaoCredito.BtnOKClick(Sender: TObject);
begin
  ModalResult := MrOk;
end;

procedure TFormTelaConsultaLiberacaoCredito.BtnCancelarClick(
  Sender: TObject);
begin
  ModalResult := MrCancel;
  Close;
end;

procedure TFormTelaConsultaLiberacaoCredito.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl,0,0);
end;

end.
