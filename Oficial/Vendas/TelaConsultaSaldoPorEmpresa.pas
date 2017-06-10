unit TelaConsultaSaldoPorEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Grids, DBGrids, StdCtrls, Buttons, jpeg,
  ExtCtrls, DBCtrls, DB, DBTables, MemTable, RxQuery, RxLookup, Mask,
  ToolEdit, CurrEdit, RXCtrls, Serial, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaSaldoPorEmpresa = class(TFormTelaGeralTEMPLATE)
    Panel4: TPanel;
    Label1: TLabel;
    Codigo: TEdit;
    DBGridGrade: TDBGrid;
    TblSaldoEmpresa: TMemoryTable;
    DSTblSaldoEmpresa: TDataSource;
    TblSaldoEmpresaEmpresa: TStringField;
    TblSaldoEmpresaCor: TStringField;
    TblSaldoEmpresaTotal: TFloatField;
    TblSaldoEmpresaQtd1: TFloatField;
    TblSaldoEmpresaQtd2: TFloatField;
    TblSaldoEmpresaQtd3: TFloatField;
    TblSaldoEmpresaQtd4: TFloatField;
    TblSaldoEmpresaQtd5: TFloatField;
    TblSaldoEmpresaQtd6: TFloatField;
    TblSaldoEmpresaQtd7: TFloatField;
    TblSaldoEmpresaQtd8: TFloatField;
    TblSaldoEmpresaQtd9: TFloatField;
    TblSaldoEmpresaQtd10: TFloatField;
    TblSaldoEmpresaQtd11: TFloatField;
    TblSaldoEmpresaQtd12: TFloatField;
    TblSaldoEmpresaQtd13: TFloatField;
    TblSaldoEmpresaQtd14: TFloatField;
    TblSaldoEmpresaQtd15: TFloatField;
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    SQLProdutoGradePRODN3VLRVENDA: TFloatField;
    SQLProdutoGradePRODN3VLRCOMPRA: TFloatField;
    SQLProdutoGradePRODN3VLRCUSTO: TFloatField;
    SQLProdutoOldView: TRxQuery;
    SQLProdutoOldViewEMPRICOD: TIntegerField;
    SQLProdutoOldViewCORICOD: TIntegerField;
    SQLProdutoOldViewEMPRA60RAZAOSOC: TStringField;
    SQLProdutoOldViewCORA30DESCR: TStringField;
    SQLProdutoOldViewPSLDN3QTDE: TFloatField;
    SQLProdutoOldViewGRADICOD: TIntegerField;
    SQLProdutoOldViewGRTMICOD: TIntegerField;
    SQLGradeTamanho: TRxQuery;
    SQLProdutoGradeGRADICOD: TIntegerField;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLGradeTamanhoPENDENTE: TStringField;
    SQLGradeTamanhoREGISTRO: TDateTimeField;
    ComboProduto: TRxDBLookupCombo;
    DSSQLProdutoAux: TDataSource;
    SQLProdutoAux: TRxQuery;
    SQLProdutoAuxPRODICOD: TIntegerField;
    SQLProdutoAuxPRODA60DESCR: TStringField;
    SQLProdutoAuxPRODA60REFER: TStringField;
    Panel1: TPanel;
    LbVenda: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    LBMarca: TRxLabel;
    SQLProdutoGradeMARCICOD: TIntegerField;
    TimerLeitorConsulta: TTimer;
    LabelLeitor: TLabel;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD2: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE2: TIntegerField;
    SQLProdutoPRODA60DESCR2: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoPSLDN3QTDE: TFloatField;
    SQLProdutoEMPRICOD: TIntegerField;
    SQLProdutoGradePRODIAGRUPGRADE: TIntegerField;
    SQLProdutoGradePRODA60CODBAR: TStringField;
    procedure CodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ComboProdutoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerLeitorConsultaTimer(Sender: TObject);
    procedure SerialAfterReceive(Sender: TObject; data: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaSaldoPorEmpresa: TFormTelaConsultaSaldoPorEmpresa;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaConsultaSaldoPorEmpresa.CodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
  Empresa,Cor, CodTemp:String;
  Posicao,I:Integer;
  Soma, SomaE: Double;
  Qtd : array [1..15] of Double;
  QtdE: array [1..15] of Double;
begin
  inherited;
  if (Key=VK_RETURN)  and (Codigo.Text <> '') then
    begin
      if EncontrouProduto(Codigo.Text,SQLProdutoGrade) then
        begin
          ComboProduto.Value := SQLProdutoGradePRODIAGRUPGRADE.AsString;
          ComboProduto.Refresh;
          LbVenda.Caption  := FormatFloat('#,##0.00', SQLProdutoGradePRODN3VLRVENDA.asFloat);
          LbVenda.Update;
          LBMarca.Caption  := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR', SQLProdutoGradeMARCICOD.AsString );
          LbMarca.Update;
          If Not TblSaldoEmpresa.Active Then TblSaldoEmpresa.Open;
          While TblSaldoEmpresa.RecordCount>0 Do
            TblSaldoEmpresa.Delete;
          SQLGradeTamanho.Close;
          SQLGradeTamanho.ParamByName('GRADICOD').asInteger := SQLProdutoGradeGRADICOD.asInteger;
          SQLGradeTamanho.Open;
          SQLGradeTamanho.First;
          I:=0;
          if not SQLGradeTamanho.IsEmpty then
            begin
              While Not SQLGradeTamanho.Eof Do
                Begin
                  Inc(I);
                  TblSaldoEmpresa.FindField('Qtd'+IntToStr(I)).DisplayLabel := SQLGradeTamanhoGRTMA5DESCR.asString;
                  SQLGradeTamanho.Next;
                End;
            end
          else
            begin
              for I:=0 to TblSaldoEmpresa.FieldCount - 1 do
                begin
                  if Pos('Qtd',TblSaldoEmpresa.Fields[I].FieldName) > 0 then
                    TblSaldoEmpresa.Fields[I].DisplayLabel := ' ';
                end;
              I := 0;
            end;
          inc(I);
          If (I<15) and (I>0) Then
            For I:=I To 15 Do
              TblSaldoEmpresa.FindField('Qtd'+IntToStr(I)).DisplayLabel := ' ';
          SQLGradeTamanho.Close;
          SQLProduto.ParamByName('PRODIAGRUPGRADE').asInteger := SQLProdutoGradePRODIAGRUPGRADE.asInteger;
          SQLProduto.Open;
          SQLProduto.First;Empresa:='';Cor:='';
          Soma  := 0;
          For I:=1 to 15 Do
            Qtd[I]  := 0;
          While Not SQLProduto.Eof Do
            Begin
              If (Empresa<>SQLProdutoEMPRICOD.AsString) or (Cor<>SQLProdutoCORICOD.AsString) Then
                Begin
                  TblSaldoEmpresa.Append;
                  If (Empresa<>SQLProdutoEMPRICOD.AsString) Then
                    Begin
                      TblSaldoEmpresaEmpresa.asString := SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',SQLProdutoEMPRICOD.AsString);
                      SomaE := 0;
                      For I:=1 to 15 Do
                        QtdE[I] := 0;
                    End;
                  TblSaldoEmpresaCor.asString := SQLProdutoCORA30DESCR.AsString;
                  Empresa := SQLProdutoEMPRICOD.AsString;
                  Cor     := SQLProdutoCORICOD.AsString;
                End
              Else
                TblSaldoEmpresa.Edit;
              TblSaldoEmpresaTotal.asFloat := TblSaldoEmpresaTotal.asFloat + SQLProdutoPSLDN3QTDE.asFloat;
              Posicao:=PosicaoGrade(SQLProdutoGRADICOD.asInteger,SQLProdutoGRTMICOD.asInteger);
              TblSaldoEmpresa.FindField('Qtd'+IntToStr(Posicao)).asFloat := SQLProdutoPSLDN3QTDE.asFloat;
              TblSaldoEmpresa.Post;
              Soma  := Soma  + SQLProdutoPSLDN3QTDE.asFloat;
              SomaE := SomaE + SQLProdutoPSLDN3QTDE.asFloat;
              Qtd[Posicao] := Qtd[Posicao]  + SQLProdutoPSLDN3QTDE.asFloat;
              QtdE[Posicao]:= QtdE[Posicao] + SQLProdutoPSLDN3QTDE.asFloat;
              SQLProduto.Next;
              If (Empresa<>SQLProdutoEMPRICOD.AsString) or SQLProduto.Eof Then
                Begin
                  TblSaldoEmpresa.Append;
                  TblSaldoEmpresaEmpresa.asString := '------------------------------------------------------------';
                  TblSaldoEmpresaCor.asString := 'SubTotal===>';
                  TblSaldoEmpresaTotal.asFloat := SomaE;
                  For I:=1 to 15 Do
                    TblSaldoEmpresa.FindField('Qtd'+IntToStr(I)).asFloat:=QtdE[I];
                  TblSaldoEmpresa.Post;
                  TblSaldoEmpresa.Append;
                  TblSaldoEmpresa.Post;
                End;
            End;
          SQLProduto.Close;
          If TblSaldoEmpresa.RecordCount>0 Then
            Begin
              TblSaldoEmpresa.Append;
              TblSaldoEmpresaEmpresa.asString := '____________________________________________________________';
              TblSaldoEmpresaCor.asString := 'Total Geral===>';
              TblSaldoEmpresaTotal.asFloat := Soma;
              For I:=1 to 15 Do
                TblSaldoEmpresa.FindField('Qtd'+IntToStr(I)).asFloat:=Qtd[I];
              TblSaldoEmpresa.Post;
            End;
          DBGridGrade.Visible:=True;
        End
      Else
        begin
          ComboProduto.Value := '';
          Lbvenda.Caption    := '';
          LBMarca.Caption    := '';
          Lbvenda.Update;
          LBMarca.Update;
          DBGridGrade.Visible:=False;
        End;
    End;
end;

procedure TFormTelaConsultaSaldoPorEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  SQLProdutoAux.Open;
  // VERIFICA LEITOR DE COD DE BARRAS PRESENTE
{  if LeitorCodigoBarras <> '' then
    begin
      try
        if AbrirPortaLEITOR(LeitorCodigoBarras,PortaLeitorCodigoBarras) then
          begin
            TimerLeitorConsulta.Enabled := True;
            LabelLeitor.Visible := True;
          end;
      except
        on E:Exception do
          begin
            Informa('Problemas ao habilitar leitor de código de barras, ANOTE O ERRO:' + #13 + E.Message);
            TimerLeitorConsulta.Enabled := False;
            LabelLeitor.Visible := False;
          end;
      end;
    end;}
end;

procedure TFormTelaConsultaSaldoPorEmpresa.ComboProdutoChange(
  Sender: TObject);
var
  Enter : Word;
begin
  inherited;
  Enter := Vk_Return;
  Codigo.Text := ComboProduto.Value;
  CodigoKeyDown(Sender,Enter,[ssCtrl]);
end;

procedure TFormTelaConsultaSaldoPorEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  Codigo.SetFocus;
end;

procedure TFormTelaConsultaSaldoPorEmpresa.TimerLeitorConsultaTimer(
  Sender: TObject);
begin
  inherited;
  ShowMessage('Verifica se tem algum dado no Buffer do Leitor...');
{  if Serial.PortIsOpen then
    begin
      Serial.GetData;
      ShowMessage('O Leitor Retornou: '+ Serial.GetData);
      Serial.FlushRX;
      Serial.FlushTX;
      Application.ProcessMessages;
    end
  else
   ShowMessage('O Leitor Retornou: Porta Serial Fechada');} //#ver
end;

procedure TFormTelaConsultaSaldoPorEmpresa.SerialAfterReceive(
  Sender: TObject; data: String);
var
  Enter : Word;
begin
  inherited;
  if data <> '' then
    begin
      Enter := Vk_Return;
//      Codigo.Text := TrataCodigoLidoPelaSerial(data); #ver
      ShowMessage('O Leitor Retornou: '+ Codigo.Text);
      CodigoKeyDown(Sender,Enter,[ssCtrl]);
    end;
end;

procedure TFormTelaConsultaSaldoPorEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // DESABILITAR LEITOR
{  if LeitorCodigoBarras <> '' then
    begin
      try
        FecharPortaLEITOR(LeitorCodigoBarras,PortaLeitorCodigoBarras);
        TimerLeitorConsulta.Enabled := False;
      except
        on E:Exception do
          begin
            Informa('Problemas ao desabilitar leitor de código de Barras, ANOTE O ERRO:' + #13 + E.Message);
            LabelLeitor.Visible := False;
          end;
      end;
    end;}
end;

end.
