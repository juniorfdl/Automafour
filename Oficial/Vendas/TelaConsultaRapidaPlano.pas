unit TelaConsultaRapidaPlano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RXCtrls, EWall,
  RxQuery, Placemnt, RXSwitch, AdvSmoothPanel;

type
  TFormTelaConsultaRapidaPlano = class(TForm)
    DSTemplate: TDataSource;
    SQLPlano: TQuery;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLPlanoRecebimentoPLRCN2TXJURO: TFloatField;
    SQLPlanoRecebimentoPLRCN2TXMULTA: TFloatField;
    SQLPlanoRecebimentoPLRCN2TXCRED: TFloatField;
    SQLPlanoRecebimentoPLRCN2PERCDESC: TFloatField;
    SQLPlanoRecebimentoPLRCCDFIX: TStringField;
    SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField;
    SQLPlanoRecebimentoPLRCN2PERCENTR: TFloatField;
    SQLPlanoRecebimentoPLRCCATIVO: TStringField;
    SQLPlanoRecebimentoPENDENTE: TStringField;
    SQLPlanoRecebimentoREGISTRO: TDateTimeField;
    SQLPlanoRecebimentoParcela: TRxQuery;
    SQLPlanoRecebimentoParcelaPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoParcelaPLRPINROPARC: TIntegerField;
    SQLPlanoRecebimentoParcelaPLRPINRODIAS: TIntegerField;
    SQLPlanoRecebimentoParcelaPENDENTE: TStringField;
    SQLPlanoRecebimentoParcelaREGISTRO: TDateTimeField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    FormStorage1: TFormStorage;
    SQLPlanoRecebimentoPLRCN2PERCACRESC: TFloatField;
    SQLPlanoPLRCFATCASH: TStringField;
    ScrollBoxPrincipal: TScrollBox;
    AdvSmoothPanel3: TAdvSmoothPanel;
    LblNomeSistema: TRxLabel;
    DBGridLista: TDBGrid;
    VALOR: TEdit;
    AdvSmoothPanel1: TAdvSmoothPanel;
    DBGrid2: TDBGrid;
    ckSimulador: TCheckBox;
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SwitchCalcularParcOff(Sender: TObject);
    procedure SwitchCalcularParcOn(Sender: TObject);
    procedure ckSimuladorClick(Sender: TObject);
  private
    { Private declarations }
  CalcularParcelas : Boolean;
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRapidaPlano: TFormTelaConsultaRapidaPlano;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens, DataModulo;

{$R *.DFM}

procedure TFormTelaConsultaRapidaPlano.VALORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN :
        begin
          if Valor.Text = '' then
          begin
            DBGridLista.Setfocus ;
            exit ;
          end ;

          SQLPlano.Close ;
          SQLPlano.SQL.Clear ;
          SQLPlano.SQL.Add('select * from PLANORECEBIMENTO') ;
          SQLPlano.SQL.Add('where') ;
          if Pos('*', Valor.Text) > 0 then
            SQLPlano.SQL.Add('PLRCA60DESCR like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"')
          else
            SQLPlano.SQL.Add('PLRCA60DESCR like "' + Valor.Text + '%"') ;
          SQLPlano.Open ;

          SQLPlano.First ;
          if not SQLPlano.EOF then
            DBGridLista.Setfocus ;
        end ;
    VK_DOWN :
        begin
          DSTemplate.DataSet.Next ;
          DBGridLista.SetFocus ;
        end;
    VK_UP:
        begin
          DSTemplate.DataSet.Prior ;
          DBGridLista.SetFocus ;
        end;
  end ;
end;

procedure TFormTelaConsultaRapidaPlano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ConsultandoPlano := False;
  Action := caFree ;
end;

procedure TFormTelaConsultaRapidaPlano.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    if SQLPlano.FieldByName('PLRCICOD').AsString <> '' then
    begin
      PlanoVenda := SQLPlano.FieldByName('PLRCICOD').Value ;
    end ;
    Close ;
  end ;
end;

procedure TFormTelaConsultaRapidaPlano.FormCreate(Sender: TObject);
begin
  SQLPlano.Open ;
  Caption := Application.Title;
  if ckSimulador.Checked then
    CalcularParcelas := True
  else
    CalcularParcelas := False;
end;

procedure TFormTelaConsultaRapidaPlano.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close ;
end;

procedure TFormTelaConsultaRapidaPlano.FormActivate(Sender: TObject);
begin
  if FormTelaFechamentoVenda.Visible then
    if (FormTelaFechamentoVenda.EntradaDados.Text <> '') and (not IsNumeric(FormTelaFechamentoVenda.EntradaDados.Text, 'INTEGER')) then
      begin
        VALOR.Text := FormTelaFechamentoVenda.EntradaDados.Text ;
        VALORKeyDown(Sender, Enter, [ssAlt]) ;
      end ;
end;

procedure TFormTelaConsultaRapidaPlano.DSTemplateDataChange(
  Sender: TObject; Field: TField);
var
  VlrJuro, VlrTxCred,VlrAcresc,VlrEntr,VlrEntrada,TotalVenda : Double;
begin
    if not ConsultandoPlano then ConsultandoPlano := True;
    if not CalcularParcelas then Exit;

    SQLPlanoRecebimento.Close ;
    SQLPlanoRecebimento.MacroByName('MFiltro').Value := 'PLRCICOD = ' + SQLPlanoPLRCICOD.AsString ;
    SQLPlanoRecebimento.Open ;
    SQLPlanoRecebimentoParcela.Close ;
    SQLPlanoRecebimentoParcela.MacroByName('MFiltro').Value := 'PLRCICOD = ' + SQLPlanoPLRCICOD.AsString ;
    SQLPlanoRecebimentoParcela.Open ;

    if SQLPlanoRecebimentoPLRCCDFIX.AsString = 'V' then Abort;

    if (SQLPlanoRecebimentoPLRCCDFIX.AsString <> 'S') and
       (SQLPlanoRecebimentoParcela.IsEmpty) then
      begin
        Informa('Este Plano não possui parcelas!') ;
        Abort ;
      end ;

    SQLPlanoRecebimento.First ;
    if not SQLPlanoRecebimento.EOF then
      begin
        //SUBTRAIR DESCONTO NO PLANO
        FormTelaFechamentoVenda.ValorTotalVenda.Value := (FormTelaItens.CurSubTotal.Value + FormTelaFechamentoVenda.VlrTxCrediario.Value - (VlrBonusTroca )) -
                                 ((FormTelaItens.CurSubTotal.Value + FormTelaFechamentoVenda.VlrTxCrediario.Value - (VlrBonusTroca)) *
                                  (SQLPlanoRecebimentoPLRCN2PERCDESC.AsFloat/100)) ;

        if (FormTelaFechamentoVenda.LblValorDescontoAcrescimo.Caption = 'DESCONTO') and (FormTelaFechamentoVenda.ValorDescontoAcrescimo.Value > 0 ) then
          FormTelaFechamentoVenda.ValorTotalVenda.Value := FormTelaFechamentoVenda.ValorTotalVenda.Value -
                                   FormTelaFechamentoVenda.ValorDescontoAcrescimo.Value ;

        VlrJuro    := SQLPlanoRecebimentoPLRCN2TXJURO.AsFloat;
        VlrTxCred  := SQLPlanoRecebimentoPLRCN2TXCRED.AsFloat;
        VlrEntrada := FormTelaFechamentoVenda.ValorEntrada.Value;
        TotalVenda := FormTelaFechamentoVenda.ValorTotalVenda.Value;
        SQLParcelasPrazoVendaTemp.Close;
        SQLParcelasPrazoVendaTemp.ParamByName('TerminalAtual').Value := TerminalAtual;
        CriaParcelas(SQLParcelasPrazoVendaTemp,
                     SQLPlanoRecebimento,
                     SQLPlanoRecebimentoParcela,
                     VlrEntrada,
                     0,
                     TiraPontoMilhar(TotalVenda),
                     SQLPlanoPLRCICOD.AsInteger,
                     Date,
                     'TpRecVistaTel', 'TpRecPrazoTel',Dm.SQLTerminalAtivo.FieldByName('TERMINUMEVISTA').AsString , Dm.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').AsString, 'Documento',
                     ValorDiminuirAcresc,
                     VlrJuro,
                     VlrAcresc,
                     VlrEntr,
                     VlrTxCred) ;
      if not SQLParcelasPrazoVendaTemp.Active then SQLParcelasPrazoVendaTemp.Open;                     
      end;
end;

procedure TFormTelaConsultaRapidaPlano.SwitchCalcularParcOff(
  Sender: TObject);
begin
  CalcularParcelas := False;
  DBGridLista.SetFocus;
  SQLParcelasPrazoVendaTemp.Close;
end;

procedure TFormTelaConsultaRapidaPlano.SwitchCalcularParcOn(
  Sender: TObject);
begin
  CalcularParcelas := True;
  DBGridLista.SetFocus;
end;

procedure TFormTelaConsultaRapidaPlano.ckSimuladorClick(Sender: TObject);
begin
  if ckSimulador.Checked then
    CalcularParcelas := True
  else
    CalcularParcelas := False;
end;

end.
