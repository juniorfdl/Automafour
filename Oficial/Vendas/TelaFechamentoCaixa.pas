unit TelaFechamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, StdCtrls, Buttons, ConerBtn,
  RXCtrls;

type
  TFormTelaFechamentoCaixa = class(TForm)
    DBGrid1: TDBGrid;
    DSSQLFechamentoCaixa: TDataSource;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    LblNomeSistema: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  IDFechamento : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaFechamentoCaixa: TFormTelaFechamentoCaixa;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaFechamentoCaixa.FormCreate(Sender: TObject);
begin
   if not DM.SQLFechamentoCaixa.Active then DM.SQLFechamentoCaixa.Open;
   if not DM.SQLNumerario.Active then DM.SQLNumerario.Open;
   if DSSQLFechamentoCaixa.DataSet = nil then
     DSSQLFechamentoCaixa.DataSet := DM.SQLFechamentoCaixa;
   DM.SQLNumerario.First;
   while not DM.SQLNumerario.Eof do
     begin
       if DM.SQLNumerarioNUMECATIVO.AsString = 'S' then
         begin
           DM.SQLFechamentoCaixa.Append;
           DM.SQLFechamentoCaixaFECXDDATAMOV.AsDateTime := Dm.SQLTerminalAtivo.FieldByName('TERMDSTATUSCAIXA').AsDateTime;
           DM.SQLFechamentoCaixaEMPRICOD.AsInteger      := StrToInt(EmpresaPadrao);
           DM.SQLFechamentoCaixaTERMICOD.AsInteger      := TerminalAtual;
           DM.SQLFechamentoCaixaNUMEICOD.AsInteger      := DM.SQLNumerarioNUMEICOD.AsInteger;
           DM.SQLFechamentoCaixaUSUAICOD.AsInteger      := Dm.UsuarioAtual;
           DM.SQLFechamentoCaixa.Post;
         end;
       DM.SQLNumerario.Next;
     end;
   DM.SQLFechamentoCaixa.Close;
   DM.SQLFechamentoCaixa.SQL.Clear;
   DM.SQLFechamentoCaixa.SQL.Add('SELECT * FROM FECHAMENTOCAIXA WHERE FECXDDATAMOV  = ' + '''' + FormatDateTime('mm/dd/yyyy',Dm.SQLTerminalAtivo.ParamByName('TERMDSTATUSCAIXA').AsDateTime)+ '''');
   DM.SQLFechamentoCaixa.Open;
end;

procedure TFormTelaFechamentoCaixa.BtnOKClick(Sender: TObject);
begin
  if DM.SQLFechamentoCaixa.State in DsEditModes then
     DM.SQLFechamentoCaixa.Post;
  Close;
end;

procedure TFormTelaFechamentoCaixa.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaFechamentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormTelaFechamentoCaixa.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then
    begin
      if DM.SQLFechamentoCaixa.State in [DSInsert] then
        DM.SQLFechamentoCaixa.Cancel;
    end;
end;

end.
