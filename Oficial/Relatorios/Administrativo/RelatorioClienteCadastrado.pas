unit RelatorioClienteCadastrado ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32,
  Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioClienteCadastrado = class(TFormRelatorioTEMPLATE)
    SQLCliente: TRxQuery;
    Report: TCrpe;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    RadioOrdem: TRadioGroup;
    CheckPeriodo: TCheckBox;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCLIEICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA15FONE1: TStringField;
    TblTemporariaCLIEA15FONE2: TStringField;
    TblTemporariaCLIEA60ENDRES: TStringField;
    TblTemporariaCLIEA60BAIRES: TStringField;
    TblTemporariaCLIEA60CIDRES: TStringField;
    TblTemporariaCLIEA2UFRES: TStringField;
    TblTemporariaCLIEA8CEPRES: TStringField;
    TblTemporariaCLIEDCAD: TDateTimeField;
    CheckDependente: TCheckBox;
    SQLClienteDependente: TRxQuery;
    TblClienteDependente: TTable;
    SQLClienteDependenteCLIEA13ID: TStringField;
    SQLClienteDependenteCLDPICOD: TIntegerField;
    SQLClienteDependenteCLDPA60NOME: TStringField;
    SQLClienteDependenteCLDPA15PARENTESCO: TStringField;
    SQLClienteDependenteCLDPCAUTORIZADO: TStringField;
    SQLClienteDependenteCLDPDNASC: TDateTimeField;
    SQLClienteDependenteCLDPA10RG: TStringField;
    SQLClienteDependenteCLDPA11CPF: TStringField;
    SQLClienteDependentePENDENTE: TStringField;
    SQLClienteDependenteREGISTRO: TDateTimeField;
    SQLClienteDependenteCLDPA15FONE: TStringField;
    SQLClienteDependenteCLDPA60EMAIL: TStringField;
    TblClienteDependenteCLIEA13ID: TStringField;
    TblClienteDependenteCLDPICOD: TIntegerField;
    TblClienteDependenteCLDPA60NOME: TStringField;
    TblClienteDependenteCLDPA15PARENTESCO: TStringField;
    TblClienteDependenteCLDPCAUTORIZADO: TStringField;
    TblClienteDependenteCLDPDNASC: TDateTimeField;
    TblClienteDependenteCLDPA10RG: TStringField;
    TblClienteDependenteCLDPA11CPF: TStringField;
    TblClienteDependentePENDENTE: TStringField;
    TblClienteDependenteREGISTRO: TDateTimeField;
    TblClienteDependenteCLDPA15FONE: TStringField;
    TblClienteDependenteCLDPA60EMAIL: TStringField;
    GroupBox2: TGroupBox;
    SQLTipoCliente: TRxQuery;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    DSSQLTipoCliente: TDataSource;
    ComboTipoCliente: TRxDBLookupCombo;
    GroupRotas: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    InlcuirRota: TSpeedButton;
    ExcluirRota: TSpeedButton;
    ComboRota: TRxDBLookupCombo;
    ListaRotas: TListBox;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    DSSQLRota: TDataSource;
    SQLClienteROTAICOD: TIntegerField;
    TblTemporariaROTAICOD: TIntegerField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    TblTemporariaCLIEA14CGC: TStringField;
    TblTemporariaCLIEA20IE: TStringField;
    TblTemporariaCLIEA60NOMEFANT: TStringField;
    TblTemporariaCLIEA60CONTATO: TStringField;
    Label7: TLabel;
    ComboVendedor: TRxDBLookupCombo;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    EditUF: TEdit;
    Label8: TLabel;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    TblTemporariaCLIEA11CPF: TStringField;
    TblTemporariaCLIEA10RG: TStringField;
    CheckSimples: TCheckBox;
    CheckInativos: TCheckBox;
    function  SQLDeListaRota(ListaRota:TListBox) : String ;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InlcuirRotaClick(Sender: TObject);
    procedure ExcluirRotaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioClienteCadastrado: TFormRelatorioClienteCadastrado;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioClienteCadastrado.ExecutarBtnClick(
  Sender: TObject);
var
  i : integer ;
begin
  inherited;
  SQLCliente.Close ;

  SQLCliente.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CLIENTE', '') ;

  if not CheckPeriodo.Checked then
    SQLCliente.MacrobyName('MData').Value := 'CLIEDCAD >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                             'CLIEDCAD <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ''''
  else
    SQLCliente.MacrobyName('MData').Value := '0=0';

  if CheckInativos.Checked then
    SQLCliente.MacrobyName('MInativos').Value := 'CLIECATIVO = ''S'''
  else
    SQLCliente.MacrobyName('MInativos').Value := '0=0';

  if ComboTipoCliente.Value <> '' then
    SQLCliente.MacrobyName('MTipoCliente').Value := 'TPCLICOD = ' + ComboTipoCliente.Value
  else
    SQLCliente.MacrobyName('MTipoCliente').Value := '0=0';

  SQLCliente.MacrobyName('MRota').Value           := SQLDeListaRota(ListaRotas) ;

  if ComboVendedor.Value <> '' then
    SQLCliente.MacrobyName('MVendedor').Value := 'VENDICOD = ' + ComboVendedor.Value
  else
    SQLCliente.MacrobyName('MVendedor').Value := '0=0';

  if EditUF.Text <> '' then
    SQLCliente.MacrobyName('MEstado').Value := 'CLIEA2UFRES = ''' + EditUF.Text + ''''
  else
    SQLCliente.MacrobyName('MEstado').Value := '0=0';
  case RadioOrdem.ItemIndex of
    0 : SQLCliente.MacrobyName('MOrdem').Value := ' ORDER BY CLIEA60RAZAOSOC';
    1 : SQLCliente.MacrobyName('MOrdem').Value := ' ORDER BY CLIEA60CIDRES';
    2 : SQLCliente.MacrobyName('MOrdem').Value := ' ORDER BY ROTAICOD';
  end;

  SQLCliente.Open;
  if SQLCliente.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  TblTemporaria.Close;
//  TblTemporaria.AddIndex('ID','CLIEA13ID',[ixPrimary]);
  TblTemporaria.Open;

  while not SQLCliente.Eof do
    begin
      TblTemporaria.Append;
      for i := 0 to SQLCliente.FieldCount-1 do
        if SQLCliente.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLCliente.Fields[i].FieldName).AsVariant := SQLCliente.Fields[i].AsVariant;

      if SQLClienteCLIEA11CPF.Value <> '' then TblTemporariaCLIEA14CGC.Value := SQLClienteCLIEA11CPF.Value;
      if SQLClienteCLIEA10RG.Value  <> '' then TblTemporariaCLIEA20IE.Value  := SQLClienteCLIEA10RG.Value;
      TblTemporaria.Post;
      SQLCliente.Next;
    end;

  if CheckDependente.Checked then
    begin
      try
        TblClienteDependente.Close;
        TblClienteDependente.DeleteTable;
        TblClienteDependente.CreateTable;
      except
        TblClienteDependente.CreateTable;
      end;
      BatchExec(SQLClienteDependente,TblClienteDependente);
    end;

  //BatchExec(SQLCliente, TblTemporaria) ;
  if CheckSimples.Checked then
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Clientes Cadastrados Simples.rpt'
  else
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Clientes Cadastrados.rpt';

  Report.ReportTitle        := 'Relatório de Clientes Cadastrados';
  Report.WindowStyle.Title  := 'Relatório de Clientes Cadastrados';

  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '''';

  Report.SectionFormat.Retrieve;
  if not CheckSimples.Checked then
  begin
    if CheckDependente.Checked then
      begin
        Report.SectionFormat.Section  := 'GF1';
        Report.SectionFormat.Suppress := cFalse;
      end
    else
      begin
        Report.SectionFormat.Section  := 'GF1';
        Report.SectionFormat.Suppress := cTrue;
      end;
    Report.SectionFormat.Send;
  end;
  case RadioOrdem.ItemIndex of
    0 : Report.Records.Cr.SortFields.Field := 'CLIEA60RAZAOSOC';
    1 : Report.Records.Cr.SortFields.Field := 'CLIEA60CIDRES';
    2 : Report.Records.Cr.SortFields.Field := 'ROTAICOD';
  end;

  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormRelatorioClienteCadastrado.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTipoCliente.Open;
  SQLRota.Open;
  SQLVendedor.Open;
end;

procedure TFormRelatorioClienteCadastrado.InlcuirRotaClick(
  Sender: TObject);
var i : integer;
begin
  inherited;
  if ComboRota.Value <> 'Todas' then
  begin
    for i := 0 to ListaRotas.Items.Count-1 do
      if ListaRotas.Items.Strings[i] = ComboRota.Text then
        exit ;

    ListaRotas.Items.Add(ComboRota.Text) ;
  end ;
end;

procedure TFormRelatorioClienteCadastrado.ExcluirRotaClick(
  Sender: TObject);
begin
  inherited;
  if ListaRotas.Items.Count > 0 then
    ListaRotas.Items.Delete(ListaRotas.ItemIndex) ;
end;

function TFormRelatorioClienteCadastrado.SQLDeListaRota(ListaRota:TListBox) : String ;
var i   : integer ;
    SQLRota : string ;
begin
  if ListaRota.Items.Count = 0 then
  begin
    if (ComboRota.Text <> '') and (ComboRota.Text <> 'Todas')then
      SQLRota := 'RotaIcod = ' + '''' + ComboRota.Value + ''''
    else
      SQLRota := '0=0' ;
  end
  else begin
    SQLRota := '' ;
    for I:=0 To ListaRota.Items.Count-1 Do
    begin
      if I = ListaRota.Items.Count-1 Then
        SQLRota := SQLRota + 'RotaIcod = ' + '''' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + ''''
      else
        SQLRota := SQLRota + 'RotaIcod = ' + '''' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '''' + ' or '
    end ;
  end ;

  SQLDeListaRota := SQLRota ;
end ;

end.
