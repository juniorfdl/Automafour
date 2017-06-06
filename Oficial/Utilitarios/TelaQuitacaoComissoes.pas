unit TelaQuitacaoComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Mask, ToolEdit, DB, DBTables,
  RxQuery, Buttons, jpeg, ExtCtrls, ComCtrls, CheckLst, CurrEdit, DBClient,
  Provider, Grids, DBGrids, StrUtils, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaQuitacaoComissoes = class(TFormTelaGeralTEMPLATE)
    SQLComissao: TRxQuery;
    pnCentral: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    chkPeriodo: TCheckBox;
    chlVendedor: TCheckListBox;
    ProgressBar: TProgressBar;
    Panel1: TPanel;
    BtnVisualizar: TSpeedButton;
    chkCUPOM: TCheckBox;
    chkNF: TCheckBox;
    chkMANUTENCAO: TCheckBox;
    SQLComissaoVENDICOD: TIntegerField;
    SQLComissaoCUPOA13ID: TStringField;
    SQLComissaoVDCOICOD: TIntegerField;
    SQLComissaoVDCON2TOTVENDVISTA: TFloatField;
    SQLComissaoVDCON2TOTVENDPRAZO: TFloatField;
    SQLComissaoVDCOINROVEND: TIntegerField;
    SQLComissaoVDCON2VENDMEDIA: TFloatField;
    SQLComissaoVDCON3QTDVEND: TFloatField;
    SQLComissaoVDCON2VLRCOMISS: TFloatField;
    SQLComissaoVDCODEMIS: TDateTimeField;
    SQLComissaoPENDENTE: TStringField;
    SQLComissaoREGISTRO: TDateTimeField;
    SQLComissaoVDCODESTORNO: TDateTimeField;
    SQLComissaoVDCON3VLRESTORNO: TFloatField;
    SQLComissaoCLIEA13ID: TStringField;
    SQLComissaoVDCOA5TIPODOC: TStringField;
    SQLComissaoVDCOCDEBCRED: TStringField;
    SQLComissaoVDCON2PERCOMISSAO: TFloatField;
    Panel2: TPanel;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    Label1: TLabel;
    ceValorLimitePorUsuario: TCurrencyEdit;
    SQLTotais: TRxQuery;
    SQLTotaisVENDA60NOME: TStringField;
    SQLTotaisTOTALVISTA: TFloatField;
    SQLTotaisTOTALPRAZO: TFloatField;
    SQLTotaisTOTALCOMISSAO: TFloatField;
    dspTotais: TDataSetProvider;
    CdsTotais: TClientDataSet;
    DsCdsTotais: TDataSource;
    DBGridTotais: TDBGrid;
    CdsTotaisVENDA60NOME: TStringField;
    CdsTotaisTOTALVISTA: TFloatField;
    CdsTotaisTOTALPRAZO: TFloatField;
    CdsTotaisTOTALCOMISSAO: TFloatField;
    BtAtualizar: TSpeedButton;
    SQLTotaisSEL: TStringField;
    CdsTotaisSEL: TStringField;
    SQLTotaisVENDICOD: TIntegerField;
    CdsTotaisVENDICOD: TIntegerField;
    lblStatus: TLabel;
    SQLComissaoVDCOCSTATUS: TStringField;
    SQLComissaoVDCON3VLRQUITADO: TFloatField;
    CdsTotaisValoTotal: TFloatField;
    Label2: TLabel;
    SQLTotaisTOTALPARCIAL: TFloatField;
    CdsTotaisTOTALPARCIAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BtAtualizarClick(Sender: TObject);
    procedure DBGridTotaisCellClick(Column: TColumn);
    procedure DBGridTotaisDblClick(Sender: TObject);
    procedure DBGridTotaisKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridTotaisDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure SQLTotaisCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaQuitacaoComissoes: TFormTelaQuitacaoComissoes;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaQuitacaoComissoes.FormCreate(Sender: TObject);
begin
  inherited;
  AbreFechaDataset(SQLVendedor);
  SQLVendedor.First;

  while not SQLVendedor.Eof do
    begin
      chlVendedor.Items.Add(SQLVendedorVENDICOD.AsString + ' - ' + SQLVendedorVENDA60NOME.AsString);
      SQLVendedor.Next;
    end;

  BtAtualizar.Click;
end;

procedure TFormTelaQuitacaoComissoes.BtAtualizarClick(Sender: TObject);
Var StSelecao, StTipo : String;
begin
  inherited;
  CdsTotais.Close;

  StSelecao := '0=0 and ';

  if chkPeriodo.Checked then
    StSelecao := MontaDataSQL('VC.VDCODEMIS', De.Date, Ate.Date) + ' and ';

  StTipo := '(';

  if chkCUPOM.Checked then
    StTipo := StTipo + ' VC.VDCOA5TIPODOC = "CP" or';

  if chkNF.Checked then
    StTipo := StTipo + ' VC.VDCOA5TIPODOC = "NF" or';

  if chkMANUTENCAO.Checked then
    StTipo := StTipo + ' VC.VDCOA5TIPODOC = "MN"';

  if StTipo <> '(' then
    StSelecao := StSelecao + StTipo + ') and ';

  StSelecao := StSelecao + ' (VC.VDCOCSTATUS = "A" or VC.VDCOCSTATUS = "L" or VC.VDCOCSTATUS is null) and ';

  StSelecao := Copy(StSelecao, 1, Length(StSelecao)-4);

  SQLTotais.Close;
  SQLTotais.MacroByName('MFiltro').AsString := StSelecao;
  SQLTotais.Open;

  CdsTotais.AppendData(dspTotais.Data, False);
end;

procedure TFormTelaQuitacaoComissoes.DBGridTotaisCellClick(
  Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'SEL' then
    begin
      Column.Grid.DataSource.DataSet.Edit;
      if Column.Field.AsString = 'S' then
        Column.Field.Clear
      else
        Column.Field.AsString := 'S';
      Column.Grid.DataSource.DataSet.Post;
    end;
end;

procedure TFormTelaQuitacaoComissoes.DBGridTotaisDblClick(Sender: TObject);
begin
  inherited;
  CdsTotais.Edit;
  if CdsTotaisSEL.AsString = 'S' then
    CdsTotaisSEL.Clear
  else
    CdsTotaisSEL.AsString := 'S';
  CdsTotais.Post;
end;

procedure TFormTelaQuitacaoComissoes.DBGridTotaisKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    DBGridTotaisDblClick(Sender);
end;

procedure TFormTelaQuitacaoComissoes.DBGridTotaisDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'SEL' then
    begin
      DBGridTotais.Canvas.TextRect(Rect, 0, 0, ' ');
      if Column.Field.AsString = 'S' then
        DrawFrameControl(DBGridTotais.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK + DFCS_CHECKED)
      else
        DrawFrameControl(DBGridTotais.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
    end;

  if CdsTotaisSEL.AsString = 'S' then
    DBGridTotais.Canvas.Brush.Color := $00FBDABB;

  if gdSelected in State then
    DBGridTotais.Canvas.Font.Color  := DBGridTotais.Font.Color;    
end;

procedure TFormTelaQuitacaoComissoes.BtnVisualizarClick(Sender: TObject);
Var StMSGVendedor, StMSGValor, StTipo, StSelecao: String;
    DoTotalBaixadoUsuario : Double;
begin
  inherited;
  lblStatus.Caption := 'Preparando Dados...';
  CdsTotais.First;
  while not CdsTotais.Eof do
    begin
      if CdsTotaisSEL.AsString = '' then
        begin
          CdsTotais.Next;
          Continue;
        end;

      SQLComissao.Close;
      SQLComissao.DataSource := DsCdsTotais;
      SQLComissao.MacroByName('MFiltro').AsString := AnsiReplaceStr(SQLTotais.MacroByName('MFiltro').AsString, 'VC.', '');
      SQLComissao.Open;

      SQLComissao.First;
      while not SQLComissao.Eof do
        begin
          StMSGVendedor     := 'Efetuando Baixas de ' + SQLComissaoVENDICOD.AsString;
          lblStatus.Caption := StMSGVendedor;

          DoTotalBaixadoUsuario := DoTotalBaixadoUsuario + SQLComissaoVDCON2VLRCOMISS.AsFloat;
          //Se o Valor a Ser Baixa for menor ou igual ao limite baixa
          SQLComissao.Edit;
          if DoTotalBaixadoUsuario <= ceValorLimitePorUsuario.Value then
            begin
               SQLComissaoVDCON3VLRQUITADO.AsFloat := SQLComissaoVDCON2VLRCOMISS.AsFloat;
               SQLComissaoVDCOCSTATUS.AsString     := 'Q'; //Quitado
            end
          else
            begin
               SQLComissaoVDCON3VLRQUITADO.AsFloat := DoTotalBaixadoUsuario - ceValorLimitePorUsuario.Value;
               SQLComissaoVDCOCSTATUS.AsString     := 'L'; //Liquidado Parcial
               SQLComissao.Post;
               StMSGValor := 'Total Parcial: ' + FormatFloat('#,##0.00', DoTotalBaixadoUsuario);
               DoTotalBaixadoUsuario := 0;
               Break;
            end;
          SQLComissao.Post;
          SQLComissao.Next;
          StMSGValor := 'Total Parcial: ' + FormatFloat('#,##0.00', DoTotalBaixadoUsuario);
          lblStatus.Caption := StMSGVendedor + #13 + StMSGValor;
        end;
      CdsTotais.Next;
    end;

    BtAtualizar.Click;
end;

procedure TFormTelaQuitacaoComissoes.SQLTotaisCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CdsTotaisValoTotal.AsFloat := CdsTotaisTOTALCOMISSAO.AsFloat - CdsTotaisTOTALPARCIAL.AsFloat; 
end;

end.
