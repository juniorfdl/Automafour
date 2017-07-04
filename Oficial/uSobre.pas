unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Buttons, StdCtrls, ExtCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, DB, DBClient, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, IniFiles;

type
  TfSobre = class(TFormTelaGeralTEMPLATE)
    IdFTP1: TIdFTP;
    cdsDados: TClientDataSet;
    cdsDadosNome: TStringField;
    cdsDadosInformacao: TStringField;
    dsDados: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Informacao: TcxGridDBColumn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure VerificarAtualizacoes;
    procedure LerIni(CaminhoArq:String);
  public
    { Public declarations }
  end;

var
  fSobre: TfSobre;

implementation

{$R *.dfm}

procedure TfSobre.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  VerificarAtualizacoes;
end;

procedure TfSobre.VerificarAtualizacoes;
var
  CaminhoArq: string;
begin
  if cdsDados.Active then
    cdsDados.Close;

  cdsDados.CreateDataSet;

  IdFTP1.Disconnect();
  try
    IdFTP1.Connect;
    CaminhoArq := ExtractFilePath(Application.ExeName) + 'update.ini';
    IdFTP1.Get('update.ini', CaminhoArq, true, false);
    LerIni(CaminhoArq);
    IdFTP1.Quit;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfSobre.FormShow(Sender: TObject);
begin
  inherited;
  IdFTP1.Host := '200.98.202.84';
  idFTP1.Username := 'atualizacao';
  idFTP1.Password := 'automasystem';
  VerificarAtualizacoes;
end;

procedure TfSobre.SpeedButton2Click(Sender: TObject);
var
  nomeExe, CaminhoArq, CaminhoAplicacao: string;
begin
  inherited;

  if cdsDados.Locate('nome', 'Arquivo', []) then
    nomeExe := cdsDadosInformacao.AsString
  else Exit;

  IdFTP1.Disconnect();
  try
    IdFTP1.Connect;
    CaminhoArq := ExtractFilePath(Application.ExeName) + nomeExe;
    IdFTP1.Get(nomeExe, CaminhoArq + 'new', true, false);

    CaminhoAplicacao := Application.ExeName;

    if FileExists(CaminhoAplicacao) then
    begin
      RenameFile(CaminhoAplicacao, CaminhoAplicacao + FormatDateTime('ddmmyyyy_MMss', Date));
      RenameFile(CaminhoArq + 'new', CaminhoAplicacao);
    end;

    IdFTP1.Quit;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfSobre.LerIni(CaminhoArq:String);
var
  F: TIniFile;
begin
  if FileExists(CaminhoArq) then
  begin
    F := TIniFile.Create(CaminhoArq);
    cdsDados.InsertRecord(['Versão', F.ReadString('versao', 'numero', '')]);
    cdsDados.InsertRecord(['Data', F.ReadString('versao', 'data', '')]);
    cdsDados.InsertRecord(['Arquivo', F.ReadString('versao', 'arquivo', '')]);
    cdsDados.InsertRecord(['Observação', F.ReadString('versao', 'obs', '')]);
  end;
  F.Free;
  
end;

end.

