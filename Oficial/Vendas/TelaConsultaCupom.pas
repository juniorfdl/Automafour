unit TelaConsultaCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, Placemnt, ToolEdit,
  RxMemDS, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaCupom = class(TFormTelaConsultaTemplate)
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCUPODEMIS: TDateTimeField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCUPON2TOTITENS: TFloatField;
    SQLTemplateCUPOCTIPOPADRAO: TStringField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLTemplateVENDA60NOME: TStringField;
    SQLTemplateTERMA60DESCR: TStringField;
    FormStorage: TFormStorage;
    Timer1: TTimer;
    SQLTemplateTotalGeral: TFloatField;
    SQLTemplateCUPON2JUROATRAS: TFloatField;
    SQLTemplateCUPON2MULTAATRAS: TFloatField;
    SQLTemplateCUPON3CREDTAXA: TFloatField;
    SQLTemplateCUPON2ACRESC: TFloatField;
    SQLTemplateCUPON2DESC: TFloatField;
    SQLTemplateCUPON3BONUSTROCA: TFloatField;
    SQLTemplateCUPOINRO: TIntegerField;
    De: TDateEdit;
    Label1: TLabel;
    Ate: TDateEdit;
    RxMemory: TRxMemoryData;
    RxMemoryRxCupom: TStringField;
    RxMemoryRxNumCOO: TStringField;
    CheckFiltro: TCheckBox;
    procedure LabelRetornarClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckFiltroClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AteExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
  Result : String;
  nCliente:String;
  Filtrou : Boolean;
  ArrayCupons : Array of String;
    { Public declarations }
  end;

var
  FormTelaConsultaCupom: TFormTelaConsultaCupom;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaConsultaCupom.LabelRetornarClick(Sender: TObject);
begin
  inherited;
  RxMemory.First;
  DM.Cupom     := '';
  Dm.PedidoObs := '';
  While not RxMemory.Eof do
  Begin
    DM.Cupom      := DM.Cupom + #39+RxMemoryRxCupom.AsString + #39;
    Dm.PedidoObs  := DM.PedidoObs + #39+RxMemoryRxNumCOO.AsString + #39;
    RxMemory.Next;
    If Not RxMemory.Eof then
    begin
      DM.Cupom      := DM.Cupom + ', ';
      Dm.PedidoObs  := DM.PedidoObs + ', ';
    End;
  End;
end;

procedure TFormTelaConsultaCupom.BtnFecharTelaClick(Sender: TObject);
begin
  inherited;
  DM.Cupom    := '';
  Dm.PedidoObs:= '';
end;

procedure TFormTelaConsultaCupom.FormCreate(Sender: TObject);
begin
  inherited;
  Dm.Cupom := '';
  Dm.PedidoObs:= '';

  if CheckFiltro.Checked then
    SQLTemplate.MacroByName('MData').Value := 'CUPODEMIS = ' + '"' + FormatDateTime('mm/dd/yyyy',Now)+ '"'
  else
    SQLTemplate.MacroByName('MData').Value := '0=0';
  RxMemory.EmptyTable;
  rxMemory.Open;
end;

procedure TFormTelaConsultaCupom.CheckFiltroClick(Sender: TObject);
begin
  inherited;
  if (CheckFiltro.Checked) then
    begin
      SQLTemplate.Close;
      SQLTemplate.MacroByName('Mdata').Value := 'CUPODEMIS = ' + '"' + FormatDateTime('mm/dd/yyyy',Now) + '"';
      SQLTemplate.Open;
      Filtrou := False;
    end;
end;

procedure TFormTelaConsultaCupom.Timer1Timer(Sender: TObject);
begin
  inherited;
  if (not CheckFiltro.Checked) and (not Filtrou) then
    begin
      SQLTemplate.Close;
      SQLTemplate.MacroByName('Mdata').Value := '0=0';
      SQLTemplate.Open;
      Filtrou := True;
    end;
end;

procedure TFormTelaConsultaCupom.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTotalGeral.Value := SQLTemplateCUPON2TOTITENS.Value +
                                 SQLTemplateCUPON3CREDTAXA.Value +
                                 SQLTemplateCUPON2ACRESC.Value -
                                 SQLTemplateCUPON2DESC.Value -
                                 SQLTemplateCUPON3BONUSTROCA.Value ;
 end;

procedure TFormTelaConsultaCupom.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var n:Integer;
begin
  inherited;
  if Key = vk_space then
  begin
      if RxMemory.Locate('rxCupom',SQLTemplateCUPOA13ID.Text,[]) Then
      Begin
        RxMemory.Delete;
        if rxMemory.IsEmpty then
          nCliente := '';
      End Else
      begin
        if nCliente = '' then
          nCliente := SQLTemplateCLIEA13ID.AsString;
        if SQLTemplateCLIEA13ID.AsString <> nCliente then
        Begin
          Showmessage('O Cliente não é igual ao mesmo do primeiro cupom selecionado.');
          Exit;
        end;
        RxMemory.Append;
        RxMemoryRxCupom.AsString := SQLTemplateCUPOA13ID.Text;
        RxMemoryRxNumCOO.AsString:= SQLTemplateCUPOINRO.Text;
        RxMemory.Post;
      End;
      SQLTemplate.Next;
  end;
end;

procedure TFormTelaConsultaCupom.AteExit(Sender: TObject);
begin
  inherited;
  if (De.Text <> '  /  /    ') and (de.Date <= ate.date) then
    begin
      SQLTemplate.Close;
      SQLTemplate.MacroByName('Mdata').Value := 'CUPODEMIS >= ' + '"' + FormatDateTime('mm/dd/yyyy',de.date) + '" '+
      'and CUPODEMIS <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.date) + '"';
    end else
      Showmessage('Verique o Intervalo de Datas');
end;

procedure TFormTelaConsultaCupom.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
 if RxMemory.Locate('rxCupom',SQLTemplateCUPOA13ID.Text,[]) Then
    DbgridLista.Canvas.Font.Color:= clRed // coloque aqui a cor desejada
 Else
    DbgridLista.Canvas.Font.Color:= clBlack; // coloque aqui a cor desejada
 DbgridLista.DefaultDrawDataCell(Rect, dbgridLista.columns[datacol].field, State);
end;

end.
