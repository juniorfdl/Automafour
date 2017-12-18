unit TelaAtualizaEstoquePDVs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, IniFiles, FileCtrl, RXCtrls, jpeg, ExtCtrls, ComCtrls,
  Placemnt, Mask, ToolEdit, IBCustomDataSet, IBUpdateSQL, DB, IBQuery,
  DBTables, RxQuery, Gauges, RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAtualizaEstoquePDVs = class(TForm)
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    PanelBarra: TPanel;
    FormStorage1: TFormStorage;
    SQLCupomItem: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMAX: TBCDField;
    SQLProdutoSaldoPENDENTE: TStringField;
    SQLProdutoSaldoREGISTRO: TDateTimeField;
    SQLMov: TRxQuery;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    ScrollBoxCentral: TScrollBox;
    PanelImp: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    BtnIniciar: TSpeedButton;
    Label7: TLabel;
    Label5: TLabel;
    BtnDesfaz: TSpeedButton;
    Label4: TLabel;
    Progress: TGauge;
    BtnDesfazDesfaz: TSpeedButton;
    BtMadameMix: TSpeedButton;
    EditHoraInicio: TEdit;
    EditHoraTermino: TEdit;
    DtBaseImp: TDateEdit;
    Memo1: TMemo;
    EditCaminho: TDirectoryEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    dsTerminal: TDataSource;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure BtnDesfazClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnDesfazDesfazClick(Sender: TObject);
    procedure BtMadameMixClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Arquivo : TextFile;
    CaminhoNomeArquivo : String;
    { Public declarations }
  end;

var
  FormTelaAtualizaEstoquePDVs: TFormTelaAtualizaEstoquePDVs;

implementation

uses DataModulo, Principal, UnitLibrary;

{$R *.DFM}

procedure TFormTelaAtualizaEstoquePDVs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormPrincipal.TimeLembrete.Enabled := True;
  Action := caFree;
end;

procedure TFormTelaAtualizaEstoquePDVs.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure TFormTelaAtualizaEstoquePDVs.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaAtualizaEstoquePDVs.BtnIniciarClick(Sender: TObject);
var TerminalAtual, NroEmpresas : Integer;
begin
  if DtBaseImp.Text = '  /  /    ' then
    begin
      ShowMessage('É necessário informar uma data base para atualização de estoque!');
      Exit;
    end;
  if Application.MessageBox(PChar('Atenção! Tem certeza que deseja realizar esta rotina?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdNo then
    Exit;

  // Movimentar o estoque de todos os produtos q foram vendidos no Terminal durante o dia Selecionado...
  EditHoraInicio.Text := FormatDateTime('hh:nn:ss', Now);
  EditHoraInicio.Update;
  Memo1.Lines.Add(DtBaseImp.Text);

  DataAtualizacaoEstoque := DtBaseImp.Date;

  DM.SQLTemplate.Close ;

  SQLCupomItem.Close;
  SQLCupomItem.SQL.Clear;
  SQLCupomItem.Sql.Add('Select CUPOMITEM.PRODICOD, CUPOM.TERMICOD, Sum(CUPOMITEM.CPITN3QTD) as Qtde, Sum(CUPOMITEM.CPITN3QTDTROCA) as QtdeTroca, Sum(CUPOMITEM.CPITN3VLRUNIT) as CustoUnitario ');
  SQLCupomItem.Sql.Add('From CUPOMITEM inner join CUPOM ON CUPOMITEM.CUPOA13ID = CUPOM.CUPOA13ID ' );
  SQLCupomItem.SQL.Add('Where CUPOM.TERMICOD = '+ QuotedStr(SQLTerminalTERMICOD.AsString) + ' and CUPOMITEM.EMPRICOD = '+EmpresaPadrao+' and CUPOMITEM.REGISTRO >= "'+FormatDateTime('mm/dd/yy 00:01:01', DtBaseImp.Date)+'" and CUPOMITEM.REGISTRO <= "'+FormatDateTime('mm/dd/yy 23:59:59', DtBaseImp.Date) +'" and (CUPOMITEM.CPITCSTATUS = "A" or CUPOMITEM.CPITCSTATUS = "C")');
  SQLCupomItem.Sql.Add('Group by CUPOMITEM.PRODICOD,CUPOM.TERMICOD');
  SQLCupomItem.Open;
  if SQLCupomItem.IsEmpty then
    begin
      ShowMessage('Atenção! Sem movimentos nesse dia!');
      Exit;
    end;
  Progress.Progress := 0;
  Progress.MaxValue := SQLCupomItem.RecordCount;
  SQLCupomItem.First;
  while not SQLCupomItem.eof do
    begin
      Progress.Progress := Progress.Progress+1;
      // Testa se ja existe o movimento pra nao fazer novamente
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Select Prodicod from MovimentoEstoque Where CUPOA13ID = "DT.'+FormatDateTime('dd/mm/yy',DtBaseImp.Date)+'"') ;
      DM.SQLTemplate.SQL.Add(' AND PRODICOD = '+SQLCupomItem.FindField('PRODICOD').AsString) ;
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.IsEmpty then
        begin
          //GRAVA O MOVIMENTO DE ESTOQUE E ATUALIZA SALDO DE ESTOQUE
          if SQLCupomItem.FindField('Qtde').Value > 0 then
            GravaMovimentoEstoque(DM.SQLProduto,
                                  DM.SQLProdutoFilho,
                                  DM.SQLProdutoSaldo,
                                  StrToInt(EmpresaPadrao),//Empresa
                                  SQLCupomItem.FindField('PRODICOD').asInteger,//Produto
                                  DM.SQLConfigVenda.FieldByName('OPESICODCUPOM').asInteger,//Operacao
                                  SQLCupomItem.Fieldbyname('Qtde').Value,
                                  'S',//ENTRADA/SAIDA
                                  FormatDateTime('mm/dd/yyyy',DtBaseImp.Date),
                                  SQLCupomItem.FindField('CustoUnitario').asString,
                                  'CUPOM',
                                  'DT.'+FormatDateTime('dd/mm/yy',DtBaseImp.Date),
                                  '')
          else
            GravaMovimentoEstoque(DM.SQLProduto,
                                  DM.SQLProdutoFilho,
                                  DM.SQLProdutoSaldo,
                                  StrToInt(EmpresaPadrao),//Empresa
                                  SQLCupomItem.FindField('PRODICOD').asInteger,//Produto
                                  DM.SQLConfigVenda.FieldByName('OPESICODTROCA').Value,//Operacao
                                  SQLCupomItem.fieldbyname('QtdeTroca').Value,
                                  'E',//ENTRADA/SAIDA
                                  FormatDateTime('mm/dd/yyyy',DtBaseImp.Date),
                                  SQLCupomItem.FindField('CustoUnitario').asString,
                                  'CUPOM',
                                  'DT.'+FormatDateTime('dd/mm/yy',DtBaseImp.Date),
                                  '');
        end;
      SQLCupomItem.Next;
    end;
  // Criar Arquivo Txt
  if EditCaminho.Text <> '' then
    begin
      try
        DeleteFile(EditCaminho.Text+'\DataBaixaEstoquePDVs.TXT');
      except
        Application.ProcessMessages;
      end;
      AssignFile(Arquivo,EditCaminho.Text+'\DataBaixaEstoquePDVs.TXT');
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);
      // Adiciona Linhas
      Writeln(Arquivo,Memo1.Lines.Text);
      // Fechar Arquivo
      CloseFile(Arquivo);
    end;
  EditHoraTermino.Text := FormatDateTime('hh:nn:ss', Now);
  EditHoraTermino.Update;
  SQLCupomItem.Close;
  ShowMessage('Atualização de Saldos concluido com sucesso!');
  // Congela o estoque do dia, apos a correcao dos movimentos de venda do dia anterior
  {if Application.MessageBox(PChar('Atenção! Tem certeza que deseja Congelar o Saldo do dia?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = Idyes then
    dm.AtualizaSaldoDiarioEstoque;}
end;

procedure TFormTelaAtualizaEstoquePDVs.BtnDesfazClick(Sender: TObject);
begin
  if DtBaseImp.Text = '  /  /    ' then
    begin
      ShowMessage('É necessário informar uma data base para atualização de estoque!');
      Exit;
    end;
  if Application.MessageBox(PChar('Atenção! Tem certeza que deseja desfazer o movimento de estoque do dia selecionado?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdNo then
    Exit;
  if Application.MessageBox(PChar('Atenção! Você Confirma essa operação?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdNo then
    Exit;

  // Movimentar o estoque de todos os produtos q foram vendidos no Terminal durante o dia Selecionado...
  EditHoraInicio.Text := FormatDateTime('hh:nn:ss', Now);
  EditHoraInicio.Update;
  Memo1.Lines.Delete(Memo1.Lines.IndexOf(DtBaseImp.Text));
  Memo1.Update;
  // Busca do Movimento Estoque para desfazer correto!
  SQLCupomItem.Close;
  SQLCupomItem.SQL.Clear;
  SQLCupomItem.Sql.Add('Select PRODICOD, Sum(MVESN3QTDSAIDA) as QtdeSaida, Sum(MVESN3QTDENTRADA) as QtdeEntrada From MovimentoEstoque ');
  SQLCupomItem.Sql.Add('Where EMPRICOD = '+EmpresaPadrao+' and CUPOA13ID = "DT.'+FormatDateTime('dd/mm/yy', DtBaseImp.Date)+'"');
  SQLCupomItem.Sql.Add('Group by PRODICOD');
  SQLCupomItem.Open;
  if SQLCupomItem.IsEmpty then
    begin
      ShowMessage('Não encontrado movimento no dia selecionado! Verifique!');
      Exit;
    end;
  Progress.Progress := 0;
  Progress.MaxValue := SQLCupomItem.RecordCount;
  SQLCupomItem.First;
  while not SQLCupomItem.eof do
    begin
      Application.ProcessMessages;
      Progress.Progress := Progress.Progress+1;
      //GRAVA O MOVIMENTO DE ESTOQUE E ATUALIZA SALDO DE ESTOQUE (Desfaz Movimento)
      if SQLCupomItem.fieldbyname('QtdeSaida').Value > 0 then
        GravaMovimentoEstoque(DM.SQLProduto,
                              DM.SQLProdutoFilho,
                              DM.SQLProdutoSaldo,
                              StrToInt(EmpresaPadrao),//Empresa
                              SQLCupomItem.FindField('PRODICOD').asInteger,//Produto
                              DM.SQLConfigVenda.FieldByName('OPESICODCANCCUPOM').asInteger,//Operacao
                              SQLCupomItem.FindField('QtdeSaida').Value,
                              'E',//ENTRADA/SAIDA
                              FormatDateTime('mm/dd/yyyy', DtBaseImp.Date),
                              '0',
                              'CUPOM',
                              'C.DT.'+FormatDateTime('dd/mm/yy', DtBaseImp.Date),
                              '')
      else
        GravaMovimentoEstoque(DM.SQLProduto,
                              DM.SQLProdutoFilho,
                              DM.SQLProdutoSaldo,
                              StrToInt(EmpresaPadrao),//Empresa
                              SQLCupomItem.FindField('PRODICOD').asInteger,//Produto
                              DM.SQLConfigVenda.FieldByname('OPESICODCANCTROCA').Value,//Operacao
                              SQLCupomItem.FindField('QtdeEntrada').Value,
                              'S',//ENTRADA/SAIDA
                              FormatDateTime('mm/dd/yyyy', DtBaseImp.Date),
                              '0',
                              'CUPOM',
                              'C.DT.'+FormatDateTime('dd/mm/yy', DtBaseImp.Date),
                              '');

      SQLCupomItem.Next;
    end;
  EditHoraTermino.Text := FormatDateTime('hh:nn:ss', Now);
  EditHoraTermino.Update;
  SQLCupomItem.Close;
  ShowMessage('Desfazimento do Estoque Concluido com sucesso!');
end;

procedure TFormTelaAtualizaEstoquePDVs.FormActivate(Sender: TObject);
var Info : string;
begin
  FormPrincipal.TimeLembrete.Enabled := False;

  if EditCaminho.Text <> '' then
    begin
      try
        AssignFile(Arquivo,EditCaminho.Text+'\DataBaixaEstoquePDVs.TXT');
        Reset(Arquivo);
        while not EOF(Arquivo) do
          begin
            Readln(Arquivo,Info);
            Memo1.Lines.Add(Info);
          end;
        CloseFile(Arquivo);
      except Application.ProcessMessages; end;
    end;
end;

procedure TFormTelaAtualizaEstoquePDVs.BtnDesfazDesfazClick(
  Sender: TObject);
begin
  if Application.MessageBox(PChar('Atenção! Tem certeza que deseja realizar esta rotina?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdNo then
    Exit;

  // Movimentar o estoque de todos os produtos q foram vendidos no Terminal durante o dia Selecionado...
  EditHoraInicio.Text := FormatDateTime('hh:nn:ss', Now);
  EditHoraInicio.Update;
  Memo1.Lines.Delete(Memo1.Lines.IndexOf(DtBaseImp.Text));
  Memo1.Update;
  // Busca do Movimento Estoque para desfazer correto!
  SQLmov.Close;
  SQLmov.SQL.Clear;
  SQLmov.Sql.Add('Select * From MovimentoEstoque Where EMPRICOD = '+EmpresaPadrao+' and CUPOA13ID = "C.DT.01/05/09"');
  SQLmov.Open;
  Progress.Progress := 0;
  Progress.MaxValue := SQLmov.RecordCount;
  SQLmov.First;
  while not SQLmov.eof do
    begin
      Application.ProcessMessages;
      Progress.Progress := Progress.Progress+1;
      SQLProdutoSaldo.Close;
      SQLProdutoSaldo.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLmov.fieldbyname('PRODICOD').AsString + ' and EMPRICOD = 1';
      SQLProdutoSaldo.Open;
      if not SQLProdutoSaldo.IsEmpty then
        begin
          SQLProdutoSaldo.Edit;
          if SQLmov.fieldbyname('MVESN3QTDENTRADA').Value > 0 then
            SQLProdutoSaldoPSLDN3QTDE.Value := SQLProdutoSaldoPSLDN3QTDE.Value - SQLmov.fieldbyname('MVESN3QTDENTRADA').Value
          else
            SQLProdutoSaldoPSLDN3QTDE.Value := SQLProdutoSaldoPSLDN3QTDE.Value + SQLmov.fieldbyname('MVESN3QTDSAIDA').Value;
          SQLProdutoSaldo.Post;
        end;
      SQLmov.Delete;
    end;
  EditHoraTermino.Text := FormatDateTime('hh:nn:ss', Now);
  EditHoraTermino.Update;
  SQLmov.Close;
  SQLProdutoSaldo.Close;
end;

procedure TFormTelaAtualizaEstoquePDVs.BtMadameMixClick(Sender: TObject);
var Produto : Integer;
    Qtde : Double;
begin
  if Application.MessageBox(PChar('Atenção! Tem certeza que deseja realizar esta rotina?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdNo then
    Exit;

  // Movimentar o estoque de todos os produtos q foram vendidos no Terminal durante o dia Selecionado...
  EditHoraInicio.Text := FormatDateTime('hh:nn:ss', Now);
  EditHoraInicio.Update;
  Memo1.Lines.Delete(Memo1.Lines.IndexOf(DtBaseImp.Text));
  Memo1.Update;
  // Busca do Movimento Estoque para desfazer correto!
  SQLmov.Close;
  SQLmov.Sql.Clear;
  SQLmov.Sql.Add('Select * From MovimentoEstoque Where CUPOA13ID = "DT.07/02/09"');
  SQLmov.Sql.Add('Order by PRODICOD');
  SQLmov.Open;
  Progress.Progress := 0;
  Progress.MaxValue := sqlMov.RecordCount;
  SQLmov.First;
  while not SQLmov.eof do
    begin
      Produto := SQLmov.fieldbyname('PRODICOD').Value;
      Qtde    := SQLmov.fieldbyname('MVESN3QTDSAIDA').Value;
      SQLMov.Next;
      // teste se o prox mov esta duplicado ou nao
      if (produto = SQLmov.fieldbyname('PRODICOD').Value) and (Qtde = SQLmov.fieldbyname('MVESN3QTDSAIDA').Value) then
        begin
          Application.ProcessMessages;
          Progress.Progress := Progress.Progress+1;
          SQLProdutoSaldo.Close;
          SQLProdutoSaldo.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLmov.fieldbyname('PRODICOD').AsString + ' and EMPRICOD = 1';
          SQLProdutoSaldo.Open;
          if not SQLProdutoSaldo.IsEmpty then
            begin
              SQLProdutoSaldo.Edit;
              SQLProdutoSaldoPSLDN3QTDE.Value := SQLProdutoSaldoPSLDN3QTDE.Value + SQLmov.fieldbyname('MVESN3QTDSAIDA').Value;
              SQLProdutoSaldo.Post;
            end;
          SQLmov.Delete;
        end;
    end;
  EditHoraTermino.Text := FormatDateTime('hh:nn:ss', Now);
  EditHoraTermino.Update;
  SQLmov.Close;
  SQLProdutoSaldo.Close;
end;

procedure TFormTelaAtualizaEstoquePDVs.FormShow(Sender: TObject);
begin
  if not SQLTerminal.Active then
    SQLTerminal.open;
end;

end.


