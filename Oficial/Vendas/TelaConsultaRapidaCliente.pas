unit TelaConsultaRapidaCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RxQuery,
  RXCtrls, DBActns, ActnList, EWall, Serial, Mask, DBCtrls;

type
  TFormTelaConsultaRapidaCliente = class(TForm)
    DSTemplate: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLDependentes: TRxQuery;
    SQLDependentesCLIEA13ID: TStringField;
    SQLDependentesCLDPA60NOME: TStringField;
    SQLDependentesCLDPA15PARENTESCO: TStringField;
    SQLDependentesCLDPCAUTORIZADO: TStringField;
    DSSQLDependentes: TDataSource;
    SQLClienteMTBLICOD: TIntegerField;
    SQLCliente1Aviso: TStringField;
    SQLCliente2Aviso: TStringField;
    SQLClienteSPCAviso: TStringField;
    SQLDependentesAutorizadoCalcField: TStringField;
    LblTituloTela: TRxLabel;
    TimerLeitor: TTimer;
    VALOR: TEdit;
    DBGridLista: TDBGrid;
    DBGridAutorizados: TDBGrid;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    SQLClienteTipoClienteCalc: TStringField;
    SQLClienteMotiBloqCalc: TStringField;
    SQLClienteTPCLICOD: TIntegerField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SQLClienteAfterScroll(DataSet: TDataSet);
    procedure SQLDependentesCalcFields(DataSet: TDataSet);
    procedure SQLClienteCalcFields(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure StatusCliente ;
    function VerificarAviso(Tipo : string) : String ;
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRapidaCliente: TFormTelaConsultaRapidaCliente;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens, DataModulo,
     LeitorCodigoBarrasCheckout;

{$R *.DFM}

procedure TFormTelaConsultaRapidaCliente.VALORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN :
        begin
          if Valor.Text = '' then
          begin
            DBGridLista.Setfocus;
            exit;
          end;
          if (Length(Valor.Text) = 13 ) and (IsNumeric(Valor.Text,'FLOAT')) then
            begin
              SQLCliente.Close ;
              SQLCliente.SQL.Clear ;
              SQLCliente.SQL.Add('select * from CLIENTE') ;
              SQLCliente.SQL.Add('where CLIECATIVO=''S'' and ') ;
              SQLCliente.SQL.Add('CLIEA13ID = ''' + Valor.Text + '''') ;
              SQLCliente.SQL.Add('order by CLIEA60RAZAOSOC') ;
              SQLCliente.Open ;
              SQLCliente.First ;
              if not SQLCliente.EOF then
                DBGridLista.Setfocus ;
            end
          else
            begin
              SQLCliente.Close ;
              SQLCliente.SQL.Clear ;
              SQLCliente.SQL.Add('select * from CLIENTE') ;
              SQLCliente.SQL.Add('where CLIECATIVO=''S'' and ') ;
              if Pos('*', Valor.Text) > 0 then
                SQLCliente.SQL.Add('CLIEA60RAZAOSOC like ''%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%''')
              else
                SQLCliente.SQL.Add('CLIEA60RAZAOSOC like ''' + Valor.Text + '%''') ;
              SQLCliente.SQL.Add('order by CLIEA60RAZAOSOC') ;
              SQLCliente.Open ;

              SQLCliente.First ;
              if SQLCliente.IsEmpty then
              begin
                SQLCliente.Close ;
                SQLCliente.SQL.Clear ;
                SQLCliente.SQL.Add('select * from CLIENTE') ;
                SQLCliente.SQL.Add('where CLIECATIVO=''S'' and ') ;
                if Pos('*', Valor.Text) > 0 then
                  SQLCliente.SQL.Add('CLIEA60NOMEFANT like ''%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%''')
                else
                  SQLCliente.SQL.Add('CLIEA60NOMEFANT like ''' + Valor.Text + '%''') ;
                SQLCliente.SQL.Add('order by CLIEA60NOMEFANT') ;
                SQLCliente.Open ;
              end ;
              SQLCliente.First ;
              if not SQLCliente.EOF then
                DBGridLista.Setfocus ;
            end;
        end ;
    VK_DOWN :
        begin
          if DSTemplate.DataSet.IsEmpty then
            DSTemplate.DataSet.Open;
          DSTemplate.DataSet.Next;
          DBGridLista.SetFocus;
        end;
    VK_UP:
        begin
          DSTemplate.DataSet.Prior;
          DBGridLista.SetFocus;
        end;
  end ;
end;

procedure TFormTelaConsultaRapidaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end ;

procedure TFormTelaConsultaRapidaCliente.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    if SQLCliente.FieldByName('CLIEA13ID').AsString <> '' then
    begin
      ClienteVenda := SQLCliente.FieldByName('CLIEA13ID').AsString ;
      ClienteRecto := SQLCliente.FieldByName('CLIEA13ID').AsString ;

      if Application.FindComponent('FormTelaFechamentoVenda') <> nil then
        if SQLCliente.FieldByName('CLIEA60NOMEFANT').AsString <> '' then
          FormTelaFechamentoVenda.LblNomeCliente.Caption := SQLCliente.FieldByName('CLIEA60NOMEFANT').AsString
        else
          FormTelaFechamentoVenda.LblNomeCliente.Caption := SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsString ;

      FormTelaConsultaRapidaCliente.ModalResult := MrOK;
    end;
  end;
end;

procedure TFormTelaConsultaRapidaCliente.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
  SQLDependentes.Open ;

  // VERIFICA LEITOR DE COD DE BARRAS PRESENTE
  if LeitorCodigoBarras <> '' then
    begin
      try
        if AbrirPortaLEITOR(LeitorCodigoBarras,PortaLeitorCodigoBarras) then
          begin
            FormTelaItens.TimerLeitor.Enabled := True;
          end;
      except
        on E:Exception do
          begin
            Informa('Problemas ao habilitar leitor de código de Barras, ANOTE O ERRO:' + #13 + E.Message);
          end;
      end;
    end;
end;

procedure TFormTelaConsultaRapidaCliente.StatusCliente ;
begin
  if SQLClienteMTBLICOD.AsString = '' then
    LblTituloTela.Font.Color := clWhite
  else
    LblTituloTela.Font.Color := clRed ;
end ;

procedure TFormTelaConsultaRapidaCliente.SQLClienteAfterScroll(
  DataSet: TDataSet);
begin
  StatusCliente ;
end;

procedure TFormTelaConsultaRapidaCliente.SQLDependentesCalcFields(
  DataSet: TDataSet);
begin
  if SQLDependentesCLDPCAUTORIZADO.Value = 'S' then
    SQLDependentesAutorizadoCalcField.Value := 'Sim'
  else
    SQLDependentesAutorizadoCalcField.Value := 'Não' ;
end;

function TFormTelaConsultaRapidaCliente.VerificarAviso(Tipo : string) : String ;
begin
  if Tipo = '1' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select Count(*) as Contador from CartaPrimeiroAviso') ;
      DM.SQLTemplate.SQL.Add('where CLIEA13ID = ''' + SQLClienteCLIEA13ID.Value + '''') ;
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
        VerificarAviso := DM.SQLTemplate.FieldByName('Contador').AsString ;
    end ;
  if Tipo = '2' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select Count(*) as Contador from CartaSegundoAviso') ;
      DM.SQLTemplate.SQL.Add('where CLIEA13ID = ''' + SQLClienteCLIEA13ID.Value + '''') ;
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
        VerificarAviso := DM.SQLTemplate.FieldByName('Contador').AsString ;
    end ;
  if Tipo = 'SPC' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select Count(*) as Contador from CartaAvisoSPC') ;
      DM.SQLTemplate.SQL.Add('where CLIEA13ID = ''' + SQLClienteCLIEA13ID.Value + '''') ;
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
        VerificarAviso := DM.SQLTemplate.FieldByName('Contador').AsString ;
    end ;
end ;

procedure TFormTelaConsultaRapidaCliente.SQLClienteCalcFields(
  DataSet: TDataSet);
begin
  SQLCliente1Aviso.Value   := VerificarAviso('1') ;
  SQLCliente2Aviso.Value   := VerificarAviso('2') ;
  SQLClienteSPCAviso.Value := VerificarAviso('SPC') ;
  SQLClienteTipoClienteCalc.Value := sqllocate('TIPOCLIENTE','TPCLICOD','TPCLA30DESCR', SQLClienteTPCLICOD.AsString);
  SQLClienteMotiBloqCalc.Value    := sqllocate('MOTIVOBLOQUEIO','MTBLICOD','MTBLA60DESCR', SQLClienteMTBLICOD.AsString);
end;

procedure TFormTelaConsultaRapidaCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close ;
end;

procedure TFormTelaConsultaRapidaCliente.FormActivate(Sender: TObject);
begin
  if Application.FindComponent('FormTelaFechamentoVenda') <> nil then
    if (FormTelaFechamentoVenda.EntradaDados.Text <> '') and (not IsNumeric(FormTelaFechamentoVenda.EntradaDados.Text, 'FLOAT')) then
      begin
        VALOR.Text := FormTelaFechamentoVenda.EntradaDados.Text ;
        VALORKeyDown(Sender, Enter, [ssAlt]) ;
        EXIT ;
      end ;
  if Application.FindComponent('FormTelaRecebimentoCrediario') <> nil then
    if Valor.Text <> '' then
      begin
        VALORKeyDown(Sender, Enter, [ssAlt]);
        EXIT;
      end;

  if FormTelaItens.Visible then
    if (FormTelaItens.EntradaDados.Text <> '') and (not IsNumeric(FormTelaItens.EntradaDados.Text, 'FLOAT')) then
      begin
        VALOR.Text := FormTelaItens.EntradaDados.Text ;
        VALORKeyDown(Sender, Enter, [ssAlt]) ;
      end ;
end;

end.
