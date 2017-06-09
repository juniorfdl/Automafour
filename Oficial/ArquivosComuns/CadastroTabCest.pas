unit CadastroTabCest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask,
  AdvPanel, Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFormCadastroTabCEST = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBMemoDescricao: TDBMemo;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    SQLTemplateCEST: TStringField;
    SQLTemplateNCM: TStringField;
    SQLTemplateDESCRICAO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    btImportarTabelaCestcsvdapastaGestao: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTabCEST: TFormCadastroTabCEST;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroTabCEST.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Cestncm';
end;

procedure TFormCadastroTabCEST.Button3Click(Sender: TObject);
var  Texto : TextFile;
     Linha, xtext, CdNCM, CdCEST, Descricao : String;
     LinhaNumero, i, nCampo : integer;
begin
  inherited;
  if not FileExists('Cest.csv') then
    begin
      ShowMessage('ERRO: Não foi localizado a arquivo Cest.csv, na Gestao');
      Abort;
      Exit;
    end
  else
    begin
      try
        AssignFile(Texto,'Cest.csv');
      except
        ShowMessage('ERRO: Não foi possível abrir o arquivo Cest.csv, na Gestao');
        Abort;
        Exit;
      end;

      SQLTemplate.DisableControls;

      Reset(Texto);
      // Pular Titulo do arquivo
      Readln(Texto,Linha);
      LinhaNumero := 1;
      while not EOF(Texto) do
        begin
          inc(LinhaNumero);
          LabelRegistros.Caption := 'Convertendo Codigos CEST ' + inttostr(LinhaNumero);
          LabelRegistros.update;
          Application.ProcessMessages;

          Readln(Texto,Linha);
          nCampo := 0;
          For i := 1 to Length(Linha) do
            begin
              if (Linha[i] = ';') then
                begin
                  if i >= 6 then
                    inc(nCampo);
                end
              else
                xText := xText + Linha[i];

              if Linha[i] = ';' then
                begin
                  Case nCampo of
                    1: CdCest         := xText;
                    2: CdNCM          := xText;
                    3: Descricao      := xtext;
                  End;
                  xText  := '';
                end;
            end;

            xText  := '';
            // Tenta achar o CEST
            if IsNumeric(cdCest,'INTEGER') then
              begin
                SQLTemplate.Close;
                SQLTemplate.macrobyname('MFiltro').value := 'CEST = ''' + CdCest +'''';
                SQLTemplate.Open;
                if SQLTemplate.IsEmpty then
                  begin
                    SQLTemplate.Append;
                    SQLTemplateCEST.AsString        := CdCEST;
                    SQLTemplateNCM.AsString         := CdNCM;
                    SQLTemplateDESCRICAO.Value      := UpperCase(Descricao);
                    SQLTemplatePENDENTE.Value       := 'S';
                    SQLTemplateREGISTRO.Value       := now;
                    SQLTemplate.Post;
                  end;
              end;
        end;
      SQLTemplate.EnableControls;
      ShowMessage('Concluido com Sucesso!');
      SQLTemplate.close;
      SQLTemplate.Open;
    end;
end;

end.
