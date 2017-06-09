unit TelaInutilizacaoNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, DBTables, RxQuery, ExtCtrls, Mask,
  ToolEdit, CurrEdit;

type
  TFormInutilizacaoNFe = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    DSSQLEmpresa: TDataSource;
    CbxEmpresa: TDBLookupComboBox;
    Label3: TLabel;
    edtSerie: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    edtInicial: TCurrencyEdit;
    edtFinal: TCurrencyEdit;
    edtJustificativa: TEdit;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    Function ExecAndWait(Comando: String ; WindowState: word):Boolean;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInutilizacaoNFe: TFormInutilizacaoNFe;

implementation

uses CadastroNotaFiscal;

{$R *.dfm}

procedure TFormInutilizacaoNFe.FormCreate(Sender: TObject);
begin
  SQLEmpresa.Open;
end;

procedure TFormInutilizacaoNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLEmpresa.Close;
  Action := caFree;
end;

procedure TFormInutilizacaoNFe.Button1Click(Sender: TObject);
var Comando:String;
begin
  Button1.Enabled := False;
  if (edtFinal.Value < edtInicial.Value) or (edtInicial.Value = 0) or (edtFinal.value = 0) then
  begin
    Showmessage('Verifique o intervalo de números de NF-e');
    Button1.Enabled := True;
    Exit;
  end;

  if CbxEmpresa.Text = '' then
  begin
    ShowMessage('Informe a Empresa');
    Button1.Enabled := True;
    Exit;
  end;

  If edtSerie.Text = '' then
  Begin
    Showmessage('Informe Série');
    Button1.Enabled := True;
    Exit;
  End;

    If edtJustificativa.Text = '' then
  Begin
    Showmessage('Informe a Justificativa');
    Button1.Enabled := True;
    Exit;
  End;


//  Comando:= 'javaw -jar C:\Unit\NFe\Atualy_NFe_Certo.jar I '+SQLEmpresaEMPRICOD.AsString+ ' '+edtInicial.Text + ' '+ edtFinal.Text + ' ' + edtSerie.Text + ' ' +SQLEmpresaEMPRA14CGC.AsString;
//  ExecAndWait(Comando, SW_SHOWNORMAL);

  //FormCadastroNotaFiscal.ACBrNFe1.WebServices.Inutiliza(SQLEmpresaEMPRA14CGC.AsString, edtJustificativa.Text, StrToInt(FormatDateTime('YYYY', Date)), 55, StrToInt(edtSerie.Text), StrToInt(edtInicial.Text), StrToInt(edtFinal.Text));

  ShowMessage('Inutilização Concluída.');
  Button1.Enabled := True;
end;

function TFormInutilizacaoNFe.ExecAndWait(Comando: String; WindowState: word):
boolean;
var
SUInfo: TStartupInfo;
ProcInfo: TProcessInformation;
CmdLine: string;
begin
  { Enclose filename in quotes to take care of long filenames with spaces. }

  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do
  begin
    cb:=2048;
    lpReserved:=NIL;
    lpDesktop:=NIL;
    lpTitle:=NIL;
    dwFlags:=STARTF_USESHOWWINDOW;
    wShowWindow:=SW_SHOWNORMAL;//SW_Hide; //para não aparecer na tela (background)!
    cbReserved2:=0;
    lpReserved2:=NIL;
  end;

  Result := CreateProcess(NIL,PChar(Comando), NIL, NIL, False, 0, NIL, nil , SUInfo, ProcInfo);
  { Wait for it to finish. }
  if Result then
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
end;


end.
