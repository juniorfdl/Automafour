unit RelatorioCurvaABCCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioCurvaABCCliente = class(TFormRelatorioTEMPLATE)
    SQLVendas: TRxQuery;
    SQLNotaFiscal: TRxQuery;
    Report: TCrpe;
    SQLVendasTOTALCLIENTE: TFloatField;
    SQLVendasCLIEA13ID: TStringField;
    SQLNotaFiscalTOTALCLIENTE: TFloatField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    TblTemporariaTOTALCLIENTE: TFloatField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaNOMECLIENTE: TStringField;
    CkTopN25: TCheckBox;
    chkCNPJ: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCurvaABCCliente: TFormRelatorioCurvaABCCliente;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioCurvaABCCliente.ExecutarBtnClick(Sender: TObject);
var
  I, RecordCount : Integer;
begin
  inherited;
  SQLVendas.Close;
  SQLNotaFiscal.Close;

  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '');
  SQLNotaFiscal.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL','');

  SQLNotaFiscal.MacroByName('MDataNF').Value   := 'NotaFiscal.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" and ' +
                                                  'NotaFiscal.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLVendas.MacroByName('MDataCupom').Value    := 'Cupom.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" and ' +
                                                  'Cupom.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  RecordCount := 0;
  try
    SqlVendas.Open;
    SqlVendas.First;
    RecordCount := RecordCount + SqlVendas.RecordCount;
  except
    Application.ProcessMessages;
  end;

  try
    SQLNotaFiscal.Open;
    SQLNotaFiscal.First;
    RecordCount := RecordCount + SQLNotaFiscal.RecordCount;
  except
    Application.ProcessMessages;
  end;

  if (SQLVendas.IsEmpty) and (SQLNotaFiscal.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  Progresso.Min := 0;
  Progresso.Max := RecordCount;
  Progresso.Position := 0;

  TblTemporaria.Open;
  if not SqlVendas.IsEmpty then
    while not SqlVendas.Eof do
      begin
        try
          TblTemporaria.Append;
          if chkCNPJ.Checked then
          begin
            if SQLLocate('CLIENTE','CLIEA13ID','CLIEA5FISJURID','"'+SQLVendasCLIEA13ID.AsString+'"') = 'F' then
              TblTemporariaCLIEA13ID.Value       := SQLLocate('CLIENTE','CLIEA13ID','CLIEA11CPF','"'+SQLVendasCLIEA13ID.AsString+'"')
            Else
              TblTemporariaCLIEA13ID.Value       := SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"'+SQLVendasCLIEA13ID.AsString+'"');
          End Else
            TblTemporariaCLIEA13ID.Value       := SQLVendasCLIEA13ID.Value;
          TblTemporariaNOMECLIENTE.Value     := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+SQLVendasCLIEA13ID.AsString+'"');
          TblTemporariaTOTALCLIENTE.AsFloat  := SQLVendasTOTALCLIENTE.AsFloat;
          TblTemporaria.Post;
        except
          Application.ProcessMessages;
        end;
        SqlVendas.Next;
        Progresso.Position := Progresso.Position + 1;
        Application.ProcessMessages;
      end;

  if not SQLNotaFiscal.IsEmpty then
    while not SQLNotaFiscal.Eof do
      begin
        if TblTemporaria.Locate('CLIEA13ID',SQLNotaFiscalCLIEA13ID.AsString,[]) then
          begin
            try
              TblTemporaria.Edit;
              TblTemporariaTOTALCLIENTE.AsFloat  := TblTemporariaTOTALCLIENTE.AsFloat  + SQLNotaFiscalTOTALCLIENTE.AsFloat;
              TblTemporaria.Post;
            except
              Application.ProcessMessages;
            end;
          end
        else
          begin
            try
              TblTemporaria.Append;
              if chkCNPJ.Checked then
              begin
                if SQLLocate('CLIENTE','CLIEA13ID','CLIEA5FISJURID','"'+SQLVendasCLIEA13ID.AsString+'"') = 'F' then
                  TblTemporariaCLIEA13ID.Value       := SQLLocate('CLIENTE','CLIEA13ID','CLIEA11CPF','"'+SQLNotaFiscalCLIEA13ID.AsString+'"')
                Else
                  TblTemporariaCLIEA13ID.Value       := SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
              End Else
                TblTemporariaCLIEA13ID.Value       := SQLVendasCLIEA13ID.Value;
              TblTemporariaNOMECLIENTE.Value     := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
              TblTemporariaTOTALCLIENTE.AsFloat  := SQLNotaFiscalTOTALCLIENTE.AsFloat;
              TblTemporaria.Post;
            except
              Application.ProcessMessages;
            end;
          end;
        SQLNotaFiscal.Next;
        Progresso.Position := Progresso.Position + 1;
        Application.ProcessMessages;
      end;
  if not CkTopN25.Checked then
    Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Clientes Vendas.rpt'
  else
    Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Curva ABC de Clientes Vendas TopN25.rpt';
  Report.ReportTitle       := 'Curva ABC de Clientes - Vendas';
  Report.WindowStyle.Title := 'Curva ABC de Clientes - Vendas';

  Progresso.Position := 0;
  // Setar formulas;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

end.
