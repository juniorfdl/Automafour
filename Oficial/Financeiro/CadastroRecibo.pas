unit CadastroRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, FormResources, VarSys, RxDBComb, UCrpe32,
  RxLookup, ToolEdit, RXDBCtrl, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroRecibo = class(TFormCadastroTEMPLATE)
    SQLTemplateRECIA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateRECIICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateFUNCA13ID: TStringField;
    SQLTemplateRECIN2VLRBRUTO: TFloatField;
    SQLTemplateRECIN2VLRIRRF: TFloatField;
    SQLTemplateRECIN2VLRLIQUIDO: TFloatField;
    SQLTemplateRECIDEMISSAO: TDateTimeField;
    SQLTemplateRECITOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label8: TLabel;
    DBEdit8: TDBMemo;
    TableFuncionario: TTable;
    TableFornecedor: TTable;
    TableCliente: TTable;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLTemplateFORNA60RAZAOSOC: TStringField;
    SQLTemplateFUNCA60NOME: TStringField;
    SQLTemplateRECICTIPO: TStringField;
    ComboTipo: TRxDBComboBox;
    Label9: TLabel;
    PanelCliente: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    PanelFornecedor: TPanel;
    PanelFuncionario: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    BtnFuncionario: TSpeedButton;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    TabSheetRegistro: TTabSheet;
    GridReciboConta: TDBGrid;
    QueryReciboConta: TRxQuery;
    DSQueryReciboConta: TDataSource;
    SQLTemplateCLIEFORNFUNCA60N0ME: TStringField;
    MnFornecedor: TMenuItem;
    MnCliente: TMenuItem;
    TblRecibo: TTable;
    TblReciboRECIN2VLRBRUTO: TFloatField;
    TblReciboRECIN2VLRIRRF: TFloatField;
    TblReciboRECIN2VLRLIQUIDO: TFloatField;
    TblReciboRECIDEMISSAO: TDateTimeField;
    TblReciboRECITOBS: TStringField;
    TblReciboFUNCA11CPF: TStringField;
    TblReciboFUNCA14CNPJ: TStringField;
    TblReciboFUNCA15INSS: TStringField;
    TblReciboFUNCA60ENDRES: TStringField;
    TblReciboVeiculo: TStringField;
    TblReciboNome: TStringField;
    TblReciboValorExtenso: TStringField;
    SQLTemplateRECIA15NRO: TStringField;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    TblReciboNmero: TStringField;
    Report: TCrpe;
    TblReciboEndereco: TStringField;
    TblReciboCidade: TStringField;
    TblReciboEstado: TStringField;
    TblReciboCNPJ: TStringField;
    TblReciboEMPRA60RAZAOSOC: TStringField;
    TblReciboEMPRA60END: TStringField;
    TblReciboEMPRA60BAI: TStringField;
    TblReciboEMPRA60CID: TStringField;
    TblReciboEMPRA14CNPJ: TStringField;
    TblReciboEMPRA8CEP: TStringField;
    TblReciboEMPRA2UF: TStringField;
    TblReciboEMPRA60EMAIL: TStringField;
    TblReciboEMPRA60URL: TStringField;
    TblReciboEMPRA20FAX: TStringField;
    TblReciboEMPRA20FONE1: TStringField;
    TblReciboRECEA13ID: TStringField;
    SQLTemplateFORNA14CGC: TStringField;
    SQLTemplateFORNA11CPF: TStringField;
    QueryReciboContaRECOA13DOCORIGEM: TStringField;
    QueryReciboContaRECODBAIXA: TDateTimeField;
    QueryReciboContaRECON2VLRBAIXA: TFloatField;
    QueryReciboContaREGISTRO: TDateTimeField;
    QueryReciboContaPENDENTE: TStringField;
    BtnCliente: TSpeedButton;
    BtnFornecedor: TSpeedButton;
    TblReciboEMPRBLOGO: TBlobField;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    PanelPesquisa: TPanel;
    ComboCliente: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    DBDateEdit3: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateRECICTIPOChange(Sender: TField);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure MnFornecedorClick(Sender: TObject);
    procedure MnClienteClick(Sender: TObject);
    procedure GeraTabelaParadox;
    procedure PopupMenuImpressaoChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFuncionarioClick(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnFornecedorDblClick(Sender: TObject);
    procedure BtnFornecedorClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroRecibo: TFormCadastroRecibo;

implementation

uses CadastroCliente, CadastroFornecedor, CadastroFuncionario, UnitLibrary,
  ExtensoLib, DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormCadastroRecibo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'RECIBO';
  SQLCliente.Open;
end;

procedure TFormCadastroRecibo.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECICTIPO').AsString         := 'C';
  DataSet.FieldByName('RECIDEMISSAO').AsDateTime    := dm.DataBaseSistema;
  DataSet.FieldByName('RECIN2VLRBRUTO').AsFloat     := 0;
  DataSet.FieldByName('RECIN2VLRIRRF').AsFloat      := 0;
  DataSet.FieldByName('RECIN2VLRLIQUIDO').AsFloat   := 0;
end;

procedure TFormCadastroRecibo.Button3Click(Sender: TObject);
begin
  inherited;
  if not QueryReciboConta.Active then
    QueryReciboConta.Open;
  PagePrincipal.ActivePage := TabSheetRegistro;
end;

procedure TFormCadastroRecibo.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('RECICTIPO').AsVariant <> null then
    begin
      case DataSet.FieldByName('RECICTIPO').AsString[1] of
        'C' : DataSet.FieldByName('CLIEFORNFUNCA60N0ME').AsVariant := DataSet.FieldByName('CLIEA60RAZAOSOC').AsVariant;
        'F' : DataSet.FieldByName('CLIEFORNFUNCA60N0ME').AsVariant := DataSet.FieldByName('FORNA60RAZAOSOC').AsVariant;
        'U' : DataSet.FieldByName('CLIEFORNFUNCA60N0ME').AsVariant := DataSet.FieldByName('FUNCA60NOME').AsVariant;
      end;
    end;
end;

procedure TFormCadastroRecibo.SQLTemplateRECICTIPOChange(Sender: TField);
begin
  inherited;
  PanelCliente.Visible := DSTemplate.DataSet.FieldByName('RECICTIPO').AsString = 'C';
  PanelFornecedor.Visible := DSTemplate.DataSet.FieldByName('RECICTIPO').AsString = 'F';
  PanelFuncionario.Visible := DSTemplate.DataSet.FieldByName('RECICTIPO').AsString = 'U';
end;

procedure TFormCadastroRecibo.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field = nil then
    begin
      PanelCliente.Visible := DSTemplate.DataSet.FieldByName('RECICTIPO').AsString = 'C';
      PanelFornecedor.Visible := DSTemplate.DataSet.FieldByName('RECICTIPO').AsString = 'F';
      PanelFuncionario.Visible := DSTemplate.DataSet.FieldByName('RECICTIPO').AsString = 'U';
    end;
end;

procedure TFormCadastroRecibo.MnFornecedorClick(Sender: TObject);
begin
  inherited;
  if (SQLTemplateRECICTIPO.AsString = 'U') or (SQLTemplateRECICTIPO.AsString = 'F') then
    begin
      GeraTabelaParadox;
      DM.SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);
      TblRecibo.Open;
      TblRecibo.Append;
      TblReciboEMPRA60RAZAOSOC.AsString     := DM.SQLEmpresaEMPRA60RAZAOSOC.AsString;
      TblReciboEMPRA14CNPJ.AsString         := DM.SQLEmpresaEMPRA14CGC.AsString;
      TblReciboEMPRA20FAX.AsString          := DM.SQLEmpresaEMPRA20FAX.AsString;
      TblReciboEMPRA20FONE1.AsString        := DM.SQLEmpresaEMPRA20FONE.AsString;
      TblReciboEMPRA2UF.AsString            := DM.SQLEmpresaEMPRA2UF.AsString;
      TblReciboEMPRA60BAI.AsString          := DM.SQLEmpresaEMPRA60BAI.AsString;
      TblReciboEMPRA60CID.AsString          := DM.SQLEmpresaEMPRA60CID.AsString;
      TblReciboEMPRA60EMAIL.AsString        := DM.SQLEmpresaEMPRA60EMAIL.AsString;
      TblReciboEMPRA60END.AsString          := DM.SQLEmpresaEMPRA60END.AsString;
      TblReciboEMPRA60URL.AsString          := DM.SQLEmpresaEMPRA60URL.AsString;
      TblReciboEMPRA8CEP.AsString           := DM.SQLEmpresaEMPRA8CEP.AsString;
      TblReciboEMPRBLOGO.AsString           := DM.SQLEmpresaEMPRBLOGOTIPO.AsString;

      if SQLTemplateRECICTIPO.AsString = 'U' then
        begin
          TblReciboNome.AsString                := SQLTemplateFUNCA60NOME.AsString;
          TblReciboFUNCA11CPF.AsString          := SQlLocate('FUNCIONARIO','FUNCA13ID','FUNCA11CPF','"'+ SQLTemplateFUNCA13ID.AsString+'"');
          TblReciboFUNCA14CNPJ.AsString         := SQlLocate('FUNCIONARIO','FUNCA13ID','FUNCA14CNPJ','"'+ SQLTemplateFUNCA13ID.AsString+'"');
          TblReciboFUNCA15INSS.AsString         := SQlLocate('FUNCIONARIO','FUNCA13ID','FUNCA15INSS','"'+ SQLTemplateFUNCA13ID.AsString+'"');
          TblReciboFUNCA60ENDRES.AsString       := SQlLocate('FUNCIONARIO','FUNCA13ID','FUNCA60ENDRES','"'+ SQLTemplateFUNCA13ID.AsString+'"');
          TblReciboVeiculo.AsString             := SQLLocate('VEICULO','VEICA13ID','VEICA7PLACA','"' + SQlLocate('FUNCIONARIO','FUNCA13ID','VEICA13ID','"'+ SQLTemplateFUNCA13ID.AsString+'"')+ '"')
        end
      else
        begin
          TblReciboNome.AsString                := SQLTemplateFORNA60RAZAOSOC.AsString;
          TblReciboFUNCA14CNPJ.AsString         := SQLTemplateFORNA14CGC.AsString;
          TblReciboFUNCA11CPF.AsString          := SQLTemplateFORNA11CPF.AsString;
        end;

        TblReciboRECIDEMISSAO.AsString          := FormatDateTime('dd/mm/yyyy',dm.DataBaseSistema);
        TblReciboRECIN2VLRBRUTO.AsFloat         := SQLTemplateRECIN2VLRBRUTO.AsFloat;
        TblReciboRECIN2VLRIRRF.AsFloat          := SQLTemplateRECIN2VLRIRRF.AsFloat;
        TblReciboRECIN2VLRLIQUIDO.AsFloat       := SQLTemplateRECIN2VLRLIQUIDO.AsFloat;
        ValorExtenso(VExt,SQLTemplateRECIN2VLRLIQUIDO.AsFloat, '', '', 02, 85, '*',3);
        TblReciboValorExtenso.AsString          := VExt[0];
        TblReciboRECITOBS.AsString              := SQLTemplateRECITOBS.AsString;
        TblReciboNmero.AsString                 := SQLTemplateRECIA15NRO.AsString;
        TblRecibo.Post;
        
        Report.ReportName := '';
        if FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\ReciboFornecedor.rpt') then
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\ReciboFornecedor.rpt'
        else
          Informa('Arquivo para impressão de recibos não encontrado!');
        if Report.ReportName <> '' then
          begin
            Report.WindowStyle.Title := 'Emissão de Recibo';
            Report.ReportTitle       := 'Emissão de Recibo';
            Report.Execute;
         end;
    end;
end;

procedure TFormCadastroRecibo.MnClienteClick(Sender: TObject);
begin
  inherited;
    GeraTabelaParadox;
    DM.SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);
    TblRecibo.Open;
    TblRecibo.Append;
    TblReciboRECEA13ID.AsString           := SQLTemplateRECIA13ID.AsString;
    TblReciboNome.AsString                := SQLTemplateCLIEA60RAZAOSOC.AsString;
    TblReciboRECIDEMISSAO.AsString        := SQLTemplateRECIDEMISSAO.AsString;
    TblReciboRECIN2VLRBRUTO.AsFloat       := SQLTemplateRECIN2VLRBRUTO.AsFloat;
    TblReciboRECIN2VLRIRRF.AsFloat        := SQLTemplateRECIN2VLRIRRF.AsFloat;
    TblReciboRECIN2VLRLIQUIDO.AsFloat     := SQLTemplateRECIN2VLRLIQUIDO.AsFloat;
    ValorExtenso(VExt,SQLTemplateRECIN2VLRLIQUIDO.AsFloat, '', '', 02, 85, '*',3);
    TblReciboValorExtenso.AsString        := VExt[0];
    TblReciboRECITOBS.AsString            := SQLTemplateRECITOBS.AsString;
    TblReciboNmero.AsString               := SQLTemplateRECIA15NRO.AsString;
    TblReciboEndereco.AsString            := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60ENDRES','"' + SQLTemplateCLIEA13ID.AsString + '"');
    TblReciboCidade.AsString              := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES','"' + SQLTemplateCLIEA13ID.AsString + '"');
    TblReciboEstado.AsString              := SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"' + SQLTemplateCLIEA13ID.AsString + '"');
    TblReciboCNPJ.AsString                := SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"' + SQLTemplateCLIEA13ID.AsString + '"');
    TblReciboEMPRA60RAZAOSOC.AsString     := DM.SQLEmpresaEMPRA60RAZAOSOC.AsString;
    TblReciboEMPRA14CNPJ.AsString         := DM.SQLEmpresaEMPRA14CGC.AsString;
    TblReciboEMPRA20FAX.AsString          := DM.SQLEmpresaEMPRA20FAX.AsString;
    TblReciboEMPRA20FONE1.AsString        := DM.SQLEmpresaEMPRA20FONE.AsString;
    TblReciboEMPRA2UF.AsString            := DM.SQLEmpresaEMPRA2UF.AsString;
    TblReciboEMPRA60BAI.AsString          := DM.SQLEmpresaEMPRA60BAI.AsString;
    TblReciboEMPRA60CID.AsString          := DM.SQLEmpresaEMPRA60CID.AsString;
    TblReciboEMPRA60EMAIL.AsString        := DM.SQLEmpresaEMPRA60EMAIL.AsString;
    TblReciboEMPRA60END.AsString          := DM.SQLEmpresaEMPRA60END.AsString;
    TblReciboEMPRA60URL.AsString          := DM.SQLEmpresaEMPRA60URL.AsString;
    TblReciboEMPRA8CEP.AsString           := DM.SQLEmpresaEMPRA8CEP.AsString;
    TblReciboEMPRBLOGO.Value              := DM.SQLEmpresaEMPRBLOGOTIPO.Value;
    TblRecibo.Post;
    Report.ReportName := '';
    if FileExists(GetCurrentDir + '\Recibos\Emissao de Recibo Cliente.rpt') then
      Report.ReportName        := GetCurrentDir + '\Recibos\Emissao de Recibo Cliente.rpt'
    else
      if FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\ReciboCliente.rpt') then
        Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\ReciboCliente.rpt'
      else
        Informa('Arquivo para impressão de recibos não encontrado!');
    if Report.ReportName <> '' then
      begin
        Report.WindowStyle.Title := 'Emissão de Recibo';
        Report.ReportTitle       := 'Emissão de Recibo';
        Report.Execute;
     end;
end;
procedure TFormCadastroRecibo.GeraTabelaParadox;
begin
  TblRecibo.Close;
  try
    TblRecibo.DeleteTable;
    TblRecibo.CreateTable;
  except
    TblRecibo.CreateTable;
  end;
  TblRecibo.AddIndex('Recibo_Key','RECEA13ID',[IxPrimary]);
end;
procedure TFormCadastroRecibo.PopupMenuImpressaoChange(Sender: TObject;
  Source: TMenuItem; Rebuild: Boolean);
begin
  inherited;
  MnCliente.Enabled    := SQLTemplate.FieldByName('RECICTIPO').AsString = 'C';
  MnFornecedor.Enabled := SQLTemplate.FieldByName('RECICTIPO').AsString <> 'C';
end;

procedure TFormCadastroRecibo.DBEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if SQLTemplateRECICTIPO.AsString = 'U' then
  begin
    FieldLookup := DsTemplate.DataSet.FieldByName('FUNCA13ID');
    FieldOrigem := 'FUNCA13ID';
    CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,True,True,'');
  end;

end;

procedure TFormCadastroRecibo.BtnFuncionarioClick(Sender: TObject);
begin
  inherited;
  if SQLTemplateRECICTIPO.AsString = 'U' then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('FUNCA13ID');
      FieldOrigem := 'FUNCA13ID';
      CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,True,True,'');
    end;
end;

procedure TFormCadastroRecibo.DBEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if SQLTemplate.FieldByName('RECICTIPO').AsString = 'F' then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('FORNICOD');
      FieldOrigem := 'FORNICOD';
      CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,False,'');
    end;

end;

procedure TFormCadastroRecibo.DBEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if SQLTemplate.FieldByName('RECICTIPO').AsString = 'C' then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
      FieldOrigem := 'CLIEA13ID';
      CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
    end;
end;

procedure TFormCadastroRecibo.BtnClienteClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.FieldByName('RECICTIPO').AsString = 'C' then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
      FieldOrigem := 'CLIEA13ID';
      CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
    end;
end;

procedure TFormCadastroRecibo.BtnFornecedorDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.FieldByName('RECICTIPO').AsString = 'F' then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('FORNICOD');
      FieldOrigem := 'FORNICOD';
      CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,False,'');
    end;

end;

procedure TFormCadastroRecibo.BtnFornecedorClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.FieldByName('RECICTIPO').AsString = 'F' then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('FORNICOD');
      FieldOrigem := 'FORNICOD';
      CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,False,'');
    end;

end;

procedure TFormCadastroRecibo.SpeedButton1Click(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'CLIEA13ID = "' + ComboCliente.Value + '" ';

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));
  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        begin
          TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
        end;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incorreta, verifique!');
end;

end.
