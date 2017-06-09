unit TelaProdutoNaoEncontrado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  Buttons, DB, DBTables, MemTable, RxQuery, RXCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaProdutoNaoEncontrado = class(TForm)
    RxLabel1: TRxLabel;
    LblMsg: TRxLabel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RetornoCampoUsuario : String;
  end;

var
  FormTelaProdutoNaoEncontrado: TFormTelaProdutoNaoEncontrado;

implementation

uses DataModulo, UnitLibrary, UnSoundPlay;

{$R *.dfm}

procedure TFormTelaProdutoNaoEncontrado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaProdutoNaoEncontrado.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var   InfoRetornoUser    : TInfoRetornoUser;
begin
  if (Key = VK_Return) or (Key = VK_Escape) then
    begin
      if DM.SQLUsuario.FieldByName('USUACPRODNOTFOUND').AsString <> 'S' then
        begin
          RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPRODNOTFOUND',InfoRetornoUser);
          if RetornoCampoUsuario = 'S' then
            Close;
        end
      else
        Close;
    end;
end;

procedure TFormTelaProdutoNaoEncontrado.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
end;

procedure TFormTelaProdutoNaoEncontrado.FormShow(Sender: TObject);
begin
  if FileExists('Produto Nao Encontrado.wav') then
    SoundPlay('Produto Nao Encontrado.wav',Sender);
end;

end.
