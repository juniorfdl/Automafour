unit CadastroCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBTables, DBActns, ActnList, RxQuery, Menus,
  StdCtrls, Mask, AdvPanel, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls;

type
  TFormCadastroCidade = class(TFormCadastroTEMPLATE)
    SQLTemplateID: TStringField;
    SQLTemplateNOME: TStringField;
    SQLTemplateSIGLA: TStringField;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    MnImporta: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MnImportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCidade: TFormCadastroCidade;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormCadastroCidade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CIDADE';
end;

procedure TFormCadastroCidade.MnImportaClick(Sender: TObject);
var  Texto : TextFile;
     Linha, I, ContadorCampos, Cont, Tamanho : integer;
     Info, sCampo, CodIBGE, xCidade, xSigla : String;
begin
  inherited;
  if not FileExists('Cidades.csv') then
    begin
      ShowMessage('ERRO: Não foi localizado a arquivo Cidades.csv, na pasta Gestao');
      Abort;
      Exit;
    end
  else
    begin
      try
        AssignFile(Texto,'Cidades.csv');
      except
        ShowMessage('ERRO: Não foi possível abrir o arquivo Cidades.csv, na pasta Gestao');
        Abort;
        Exit;
      end;

      SQLTemplate.DisableControls;
      sqlTemplate.Open;

      AssignFile(Texto,'cidades.csv');
      Reset(Texto);

      {pula 1 linha do titulo}
      Readln(Texto,Info);

      Linha := 0;
      while not EOF(Texto) do
        begin
          Readln(Texto,Info);
          Linha := Linha +1;
          LabelRegistros.Caption := 'Importando Linha => ' + intToStr(Linha);
          LabelRegistros.update;
          application.ProcessMessages;
          sCampo:= '';
          ContadorCampos := 1;
          for i:= 1 to Length(Info) do
            begin
              if Info[i] = ';' then
                begin
                  Case ContadorCampos of
                     1 : CodIBGE := trim(sCampo);
                     2 : xCidade := trim(sCampo);
                     3 : xSigla  := trim(sCampo);
                  end;
                  sCampo:= '';
                  ContadorCampos := ContadorCampos+1;
                  Continue;
                end
              else
                sCampo:= sCampo + Info[i];
            end;

            {testa se existe a cidade, se nao inclui}
            dm.SQLTemplate.Close;
            dm.SQLTemplate.SQL.Text := 'select * from CIDADE where ID = '''+CodIBGE+'''' ;
            dm.SQLTemplate.Open;
            if dm.SQLTemplate.IsEmpty then
              begin
                sqlTemplate.Append;
                sqlTemplateID.AsString       := CodIBGE;
                sqlTemplateNOME.AsString     := UpperCase(xCidade);
                sqlTemplateSIGLA.AsString    := UpperCase(xSigla);
                try
                  SQLTemplate.Post;
                except
                  SQLTemplate.Cancel;
                  Application.ProcessMessages;
                end;
              end;  
        end;
      SQLTemplate.Close;
      SQLTemplate.EnableControls;
      SQLTemplate.Open;
      ShowMessage('Conversão de Cidades concluída com sucesso !');
   end;
end;

end.
