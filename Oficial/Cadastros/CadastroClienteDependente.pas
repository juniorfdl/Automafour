unit CadastroClienteDependente;

interface

uses
  VarSYS, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, ToolEdit, RXDBCtrl, RxDBComb, ppCtrls, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv,
  ppProd, ppReport, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroClienteDependente = class(TFormCadastroTEMPLATE)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLDPICOD: TIntegerField;
    SQLTemplateCLDPA60NOME: TStringField;
    SQLTemplateCLDPA15PARENTESCO: TStringField;
    SQLTemplateCLDPCAUTORIZADO: TStringField;
    SQLTemplateCLDPDNASC: TDateTimeField;
    SQLTemplateCLDPA10RG: TStringField;
    SQLTemplateCLDPA11CPF: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TRxDBComboBox;
    DBEdit6: TDBDateEdit;
    ImprimirAutorizaoCompra1: TMenuItem;
    ReportAutorizacao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    Texto: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    NomeDep: TppLabel;
    NomeTit: TppLabel;
    Data: TppLabel;
    SQLTemplateCLDPA15FONE: TStringField;
    SQLTemplateCLDPA60EMAIL: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Report: TCrpe;
    TblAutorizacaoDependente: TTable;
    TblAutorizacaoDependenteNomeTitular: TStringField;
    TblAutorizacaoDependenteNomeDependente: TStringField;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ImprimirAutorizaoCompra1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteDependente: TFormCadastroClienteDependente;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormCadastroClienteDependente.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('CLIEA13ID').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('CLIEA13ID').Value;
end;

procedure TFormCadastroClienteDependente.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTEDEPENDENTE' ;
end;

procedure TFormCadastroClienteDependente.ppHeaderBand1BeforePrint(
  Sender: TObject);
var
  NomeEmpresa : string ;
begin
  inherited;
  NomeDep.Caption := SQLTemplateCLDPA60NOME.Value ;
  NomeTit.Caption := DSMasterTemplate.DataSet.FieldByName('CLIEA60RAZAOSOC').Value ;

  NomeEmpresa := '' ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from EMPRESA') ;
  DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + IntToStr(EmpresaCorrente)) ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.EOF then
    NomeEmpresa := DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').AsString ;

  Data.Caption := DM.SQLTemplate.FieldByName('EMPRA60CID').AsString + ', _______/_______/______________';

  Texto.Caption := 'Autorizo sempre ' + SQLTemplateCLDPA60NOME.AsString +
                   ' à comprar em meu nome na loja ' +
                   NomeEmpresa ;
end ;

procedure TFormCadastroClienteDependente.ImprimirAutorizaoCompra1Click(
  Sender: TObject);
var
  TargetPrinter : string ;
begin
  inherited;
  if DM.SQLConfigGeralCFGEA255PATHREPORT.Value = '' then
  begin
    Informa('A localização dos relatórios não foi informada, esta autorização não será impressa!') ;
    exit ;
  end ;

  if FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Autorizacao de Compra.rpt') then
    begin
      TblAutorizacaoDependente.Close ;
      try
        TblAutorizacaoDependente.DeleteTable ;
      except
      end ;

      TblAutorizacaoDependente.CreateTable ;
      TblAutorizacaoDependente.Open ;
      TblAutorizacaoDependente.Append ;
      TblAutorizacaoDependenteNomeTitular.Value    := DSMasterTemplate.DataSet.FieldByName('CLIEA60RAZAOSOC').Value ;
      TblAutorizacaoDependenteNomeDependente.Value := SQLTemplateCLDPA60NOME.Value ;
      TblAutorizacaoDependente.Post ;

      if DM.SQLTerminalAtivo.Fieldbyname('TERMA60IMPAUTORIZCOM').AsString <> '' then
        begin
          TargetPrinter         := DM.SQLTerminalAtivo.Fieldbyname('TERMA60IMPAUTORIZCOM').Value ;
          Report.ReportName     := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Autorizacao de Compra.rpt' ;
          Report.Printer.Name   := Copy(TargetPrinter, 1, Pos(',', TargetPrinter)-1) ;
          Delete(TargetPrinter, 1, Pos(',', TargetPrinter)) ;
          Report.Printer.Driver := Copy(TargetPrinter, 1, Pos(',', TargetPrinter)-1) ;
          Delete(TargetPrinter, 1, Pos(',', TargetPrinter)) ;
          Report.Printer.Port   := TargetPrinter ;
        end;
      Report.Execute ;
    end
  else
    begin
      try
        TblAutorizacaoDependente.DeleteTable ;
      except
      end ;

      TblAutorizacaoDependente.CreateTable ;
      TblAutorizacaoDependente.Open ;
      TblAutorizacaoDependente.Append ;
      TblAutorizacaoDependenteNomeTitular.Value    := DSMasterTemplate.DataSet.FieldByName('CLIEA60RAZAOSOC').Value ;
      TblAutorizacaoDependenteNomeDependente.Value := SQLTemplateCLDPA60NOME.Value ;
      TblAutorizacaoDependente.Post ;
      ReportAutorizacao.PrinterSetup.DocumentName := 'Autorização de Compra' ;
      if DM.SQLTerminalAtivo.Fieldbyname('TERMA60IMPAUTORIZCOM').AsString <> '' then
        begin
          ReportAutorizacao.PrinterSetup.PrinterName  := DM.SQLTerminalAtivo.Fieldbyname('TERMA60IMPAUTORIZCOM').Value;
          ReportAutorizacao.DeviceType                := 'Printer';
        end
      else
        ReportAutorizacao.DeviceType := 'Screen'; 
      TblAutorizacaoDependente.Close ;
      ReportAutorizacao.Print ;
    end ;
end;

end.
