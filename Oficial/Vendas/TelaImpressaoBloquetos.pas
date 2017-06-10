unit TelaImpressaoBloquetos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, FileCtrl, Grids, DBGrids, Buttons,
  jpeg, ExtCtrls, DBCtrls, DBTables, DB, RxQuery, RXCtrls, ShellApi,
  Placemnt, UCrpe32, ppDB, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppDBBDE, ppBands, ppCache, ppCtrls, ppPrnabl, ppStrtch,
  ppRichTx, ppBarCod, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaImpressaoBloquetos = class(TFormTelaGeralTEMPLATE)
    DBGrid1: TDBGrid;
    ListArquivos: TFileListBox;
    ComboArquivos: TFilterComboBox;
    SQLContasReceber: TRxQuery;
    DSSQLContasReceber: TDataSource;
    TblDuplicatas: TTable;
    TblDuplicatasEMPRICOD: TIntegerField;
    TblDuplicatasCTRCA13ID: TStringField;
    TblDuplicatasCLIEA13ID: TStringField;
    TblDuplicatasCLIEA14CGC: TStringField;
    TblDuplicatasCLIEA20IE: TStringField;
    TblDuplicatasCLIEA11CPF: TStringField;
    TblDuplicatasCLIEA10RG: TStringField;
    TblDuplicatasCLIEA60RAZAOSOC: TStringField;
    TblDuplicatasCLIEA60NOMEFANT: TStringField;
    TblDuplicatasCLIEA15FONE1: TStringField;
    TblDuplicatasCLIEA15FONE2: TStringField;
    TblDuplicatasCLIEA15FAX: TStringField;
    TblDuplicatasCLIEA60ENDRES: TStringField;
    TblDuplicatasCLIEA60BAIRES: TStringField;
    TblDuplicatasCLIEA60CIDRES: TStringField;
    TblDuplicatasCLIEA2UFRES: TStringField;
    TblDuplicatasCLIEA8CEPRES: TStringField;
    TblDuplicatasCLIEA60ENDCOB: TStringField;
    TblDuplicatasCLIEA60BAICOB: TStringField;
    TblDuplicatasCLIEA60CIDCOB: TStringField;
    TblDuplicatasCLIEA2UFCOB: TStringField;
    TblDuplicatasCLIEA8CEPCOB: TStringField;
    TblDuplicatasNOFIA13ID: TStringField;
    TblDuplicatasCTRCN2DESCFIN: TFloatField;
    TblDuplicatasCTRCN2VLR: TFloatField;
    TblDuplicatasCTRCDVENC: TDateTimeField;
    TblDuplicatasCTRCINROPARC: TIntegerField;
    TblDuplicatasCTRCDEMIS: TDateTimeField;
    TblDuplicatasCTRCA30NRODUPLICBANCO: TStringField;
    TblDuplicatasExtensoLin1: TStringField;
    TblDuplicatasExtensoLin2: TStringField;
    TblDuplicatasEndPagto: TStringField;
    TblDuplicatasLocPagto: TStringField;
    TblDuplicatasNumeroParcelas: TIntegerField;
    TblDuplicatasTotalDocumento: TFloatField;
    TblDuplicatasInstrucoes: TStringField;
    Label10: TLabel;
    PanelIntrucoes: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    EditLocalPagto: TEdit;
    EditEndPagto: TEdit;
    MemoInst: TMemo;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberVALORTOTAL: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCLIEA14CGC: TStringField;
    SQLContasReceberCLIEA20IE: TStringField;
    SQLContasReceberCLIEA11CPF: TStringField;
    SQLContasReceberCLIEA10RG: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCLIEA60NOMEFANT: TStringField;
    SQLContasReceberCLIEA15FONE1: TStringField;
    SQLContasReceberCLIEA15FONE2: TStringField;
    SQLContasReceberCLIEA15FAX: TStringField;
    SQLContasReceberCLIEA60ENDRES: TStringField;
    SQLContasReceberCLIEA60BAIRES: TStringField;
    SQLContasReceberCLIEA60CIDRES: TStringField;
    SQLContasReceberCLIEA2UFRES: TStringField;
    SQLContasReceberCLIEA8CEPRES: TStringField;
    SQLContasReceberCLIEA60ENDCOB: TStringField;
    SQLContasReceberCLIEA60BAICOB: TStringField;
    SQLContasReceberCLIEA60CIDCOB: TStringField;
    SQLContasReceberCLIEA2UFCOB: TStringField;
    SQLContasReceberCLIEA8CEPCOB: TStringField;
    SQLTotais: TRxQuery;
    SQLTotaisTOTALDOCUMENTO: TFloatField;
    SQLTotaisNROPARCELAS: TIntegerField;
    SQLTotaisCTRCA30NRODUPLICBANCO: TStringField;
    FormStorage: TFormStorage;
    RadioEndereco: TRadioGroup;
    Report: TCrpe;
    ppFaturaUnificada: TppReport;
    dsTblDuplicatas: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    SQLContasReceberDUPLA13ID: TStringField;
    DSSQLDuplicatas: TDataSource;
    SQLDuplicatas: TRxQuery;
    SQLDuplicatasDUPLA13ID: TStringField;
    SQLDuplicatasEMPRICOD: TIntegerField;
    SQLDuplicatasTERMICOD: TIntegerField;
    SQLDuplicatasDUPLICOD: TIntegerField;
    SQLDuplicatasCLIEA13ID: TStringField;
    SQLDuplicatasDUPLDEMIS: TDateTimeField;
    SQLDuplicatasDUPLN3VLR: TFloatField;
    SQLDuplicatasDUPLDVENC: TDateTimeField;
    SQLDuplicatasDUPLA254HIST: TStringField;
    SQLDuplicatasDUPLA60LOCALPAGTO: TStringField;
    SQLDuplicatasDUPLA254DOCS: TStringField;
    PipeCabDuplicata: TppBDEPipeline;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppDBText10: TppDBText;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppDBText11: TppDBText;
    ppLabel1: TppLabel;
    ppLogo: TppImage;
    PipeEmpresa: TppBDEPipeline;
    dsSQLEmpresa: TDataSource;
    ppLabel6: TppLabel;
    ppShape5: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText12: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    ppLine6: TppLine;
    Pipe: TppBDEPipeline;
    ppDBBarCode1: TppDBBarCode;
    ppPropaganda: TppRichText;
    BtFatura: TRxSpeedButton;
    ButtonImp: TRxSpeedButton;
    procedure ButtonImpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtFaturaClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaImpressaoBloquetos: TFormTelaImpressaoBloquetos;

implementation

uses ExtensoLib, DataModulo;

{$R *.dfm}

procedure TFormTelaImpressaoBloquetos.ButtonImpClick(Sender: TObject);
begin
  inherited;
  if ComboArquivos.Text = '' then
    begin
      ShowMessage('Você deve selecionar um bloqueto !');
      ComboArquivos.SetFocus;
      Abort;
    end;
  try
    TblDuplicatas.Close;
    TblDuplicatas.DeleteTable;
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  except
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  end;

  SQLContasReceber.First;

  while not SQLContasReceber.Eof do
    begin
      TblDuplicatas.Append;
      TblDuplicatasEMPRICOD.AsString              := SQLContasReceberEMPRICOD.AsString;
      TblDuplicatasCTRCA13ID.AsString             := SQLContasReceberCTRCA13ID.AsString;
      TblDuplicatasCLIEA13ID.AsString             := SQLContasReceberCLIEA13ID.AsString;
      TblDuplicatasNOFIA13ID.AsString             := SQLContasReceberNOFIA13ID.AsString;
      TblDuplicatasCTRCN2VLR.AsString             := SQLContasReceberCTRCN2VLR.AsString;
      TblDuplicatasCTRCDEMIS.AsString             := SQLContasReceberCTRCDEMIS.AsString;
      TblDuplicatasCTRCDVENC.AsString             := SQLContasReceberCTRCDVENC.AsString;
      TblDuplicatasCTRCINROPARC.AsString          := SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCN2DESCFIN.AsString         := SQLContasReceberCTRCN2DESCFIN.AsString;
      TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := dm.SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"'+SQLContasReceberNOFIA13ID.AsString+'"')+
                                                     '-'+SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCLIEA14CGC.AsString            := SQLContasReceberCLIEA14CGC.AsString;
      TblDuplicatasCLIEA20IE.AsString             := SQLContasReceberCLIEA20IE.AsString;
      TblDuplicatasCLIEA11CPF.AsString            := SQLContasReceberCLIEA11CPF.AsString;
      TblDuplicatasCLIEA10RG.AsString             := SQLContasReceberCLIEA10RG.AsString;
      TblDuplicatasCLIEA60RAZAOSOC.AsString       := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblDuplicatasCLIEA60NOMEFANT.AsString       := SQLContasReceberCLIEA60NOMEFANT.AsString;
      TblDuplicatasCLIEA15FONE1.AsString          := SQLContasReceberCLIEA15FONE1.AsString;
      TblDuplicatasCLIEA15FONE2.AsString          := SQLContasReceberCLIEA15FONE2.AsString;
      TblDuplicatasCLIEA15FAX.AsString            := SQLContasReceberCLIEA15FAX.AsString;
      if RadioEndereco.ItemIndex = 0 then
        begin
          TblDuplicatasCLIEA60ENDRES.AsString     := SQLContasReceberCLIEA60ENDRES.AsString;
          TblDuplicatasCLIEA60BAIRES.AsString     := SQLContasReceberCLIEA60BAIRES.AsString;
          TblDuplicatasCLIEA60CIDRES.AsString     := SQLContasReceberCLIEA60CIDRES.AsString;
          TblDuplicatasCLIEA2UFRES.AsString       := SQLContasReceberCLIEA2UFRES.AsString;
          TblDuplicatasCLIEA8CEPRES.AsString      := SQLContasReceberCLIEA8CEPRES.AsString;
        end
      else
        begin
          TblDuplicatasCLIEA60ENDRES.AsString     := SQLContasReceberCLIEA60ENDCOB.AsString;
          TblDuplicatasCLIEA60BAIRES.AsString     := SQLContasReceberCLIEA60BAICOB.AsString;
          TblDuplicatasCLIEA60CIDRES.AsString     := SQLContasReceberCLIEA60CIDCOB.AsString;
          TblDuplicatasCLIEA2UFRES.AsString       := SQLContasReceberCLIEA2UFCOB.AsString;
          TblDuplicatasCLIEA8CEPRES.AsString      := SQLContasReceberCLIEA8CEPCOB.AsString;
        end;
      TblDuplicatasLocPagto.AsString              := EditLocalPagto.Text;
      TblDuplicatasEndPagto.AsString              := EditEndPagto.Text;
      ValorExtenso(VExt,TblDuplicatasCTRCN2VLR.Value, '', '', 02, 85, '*',3);
      TblDuplicatasExtensoLin1.AsString           := VExt[0];
      TblDuplicatasExtensoLin2.AsString           := VExt[1];

      if SQLTotais.Locate('CTRCA30NRODUPLICBANCO',TblDuplicatasCTRCA30NRODUPLICBANCO.AsString,[]) then
        TblDuplicatasTotalDocumento.AsFloat         := SQLTotaisTOTALDOCUMENTO.AsFloat
      else
        TblDuplicatasTotalDocumento.AsFloat         := SQLContasReceberCTRCN2VLR.AsFloat;

      TblDuplicatasInstrucoes.AsString            := MemoInst.Lines.Text;

      TblDuplicatas.Post;
      SQLContasReceber.Next;
    end;
//    ShellExecute(0,'Open',PChar(Dm.PathAplicacao + '\Bloquetos\' + ComboArquivos.Text),Pchar(Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString),PChar(Dm.PathAplicacao + '\Bloquetos'),SW_HIDE);
    TblDuplicatas.Close;
    Report.ReportTitle := 'Emissão de Documentos';
    Report.ReportName := Dm.PathAplicacao + '\Bloquetos\' + ComboArquivos.Text;
    Report.Execute;
end;

procedure TFormTelaImpressaoBloquetos.FormActivate(Sender: TObject);
begin
  inherited;
  if DirectoryExists(DM.PathAplicacao + '\Bloquetos') then
    begin
      ListArquivos.Directory := DM.PathAplicacao + '\Bloquetos';
      ComboArquivos.Clear;
      ComboArquivos.Items := ListArquivos.Items;
      ComboArquivos.Update;
      ComboArquivos.ItemIndex := 0;
    end;
end;

procedure TFormTelaImpressaoBloquetos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  TblDuplicatas.Close;
  Action := CaFree;
end;

procedure TFormTelaImpressaoBloquetos.BtFaturaClick(Sender: TObject);
begin
  inherited;
  try
    TblDuplicatas.Close;
    TblDuplicatas.DeleteTable;
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  except
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  end;

  SQLDuplicatas.Close;
  SQLDuplicatas.MacroByName('MFiltro').Value := 'DUPLA13ID = '+ '"' + SQLContasReceberDUPLA13ID.AsString + '"';
  SQLDuplicatas.Open;

  SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      TblDuplicatas.Append;
      TblDuplicatasEMPRICOD.AsString              := SQLContasReceberEMPRICOD.AsString;
      TblDuplicatasCTRCA13ID.AsString             := SQLContasReceberCTRCA13ID.AsString;
      TblDuplicatasCLIEA13ID.AsString             := SQLContasReceberCLIEA13ID.AsString;
      TblDuplicatasNOFIA13ID.AsString             := SQLContasReceberNOFIA13ID.AsString;
      TblDuplicatasCTRCN2VLR.AsString             := SQLContasReceberCTRCN2VLR.AsString;
      TblDuplicatasCTRCDEMIS.AsString             := SQLContasReceberCTRCDEMIS.AsString;
      TblDuplicatasCTRCDVENC.AsString             := SQLContasReceberCTRCDVENC.AsString;
      TblDuplicatasCTRCINROPARC.AsString          := SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCN2DESCFIN.AsString         := SQLContasReceberCTRCN2DESCFIN.AsString;
      TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := dm.SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"'+SQLContasReceberNOFIA13ID.AsString+'"')+
                                                     '-'+SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCLIEA14CGC.AsString            := SQLContasReceberCLIEA14CGC.AsString;
      TblDuplicatasCLIEA20IE.AsString             := SQLContasReceberCLIEA20IE.AsString;
      TblDuplicatasCLIEA11CPF.AsString            := SQLContasReceberCLIEA11CPF.AsString;
      TblDuplicatasCLIEA10RG.AsString             := SQLContasReceberCLIEA10RG.AsString;
      TblDuplicatasCLIEA60RAZAOSOC.AsString       := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblDuplicatasCLIEA60NOMEFANT.AsString       := SQLContasReceberCLIEA60NOMEFANT.AsString;
      TblDuplicatasCLIEA15FONE1.AsString          := SQLContasReceberCLIEA15FONE1.AsString;
      TblDuplicatasCLIEA15FONE2.AsString          := SQLContasReceberCLIEA15FONE2.AsString;
      TblDuplicatasCLIEA15FAX.AsString            := SQLContasReceberCLIEA15FAX.AsString;
      if RadioEndereco.ItemIndex = 0 then
        begin
          TblDuplicatasCLIEA60ENDRES.AsString     := SQLContasReceberCLIEA60ENDRES.AsString;
          TblDuplicatasCLIEA60BAIRES.AsString     := SQLContasReceberCLIEA60BAIRES.AsString;
          TblDuplicatasCLIEA60CIDRES.AsString     := SQLContasReceberCLIEA60CIDRES.AsString;
          TblDuplicatasCLIEA2UFRES.AsString       := SQLContasReceberCLIEA2UFRES.AsString;
          TblDuplicatasCLIEA8CEPRES.AsString      := SQLContasReceberCLIEA8CEPRES.AsString;
        end
      else
        begin
          TblDuplicatasCLIEA60ENDRES.AsString     := SQLContasReceberCLIEA60ENDCOB.AsString;
          TblDuplicatasCLIEA60BAIRES.AsString     := SQLContasReceberCLIEA60BAICOB.AsString;
          TblDuplicatasCLIEA60CIDRES.AsString     := SQLContasReceberCLIEA60CIDCOB.AsString;
          TblDuplicatasCLIEA2UFRES.AsString       := SQLContasReceberCLIEA2UFCOB.AsString;
          TblDuplicatasCLIEA8CEPRES.AsString      := SQLContasReceberCLIEA8CEPCOB.AsString;
        end;
      TblDuplicatasLocPagto.AsString              := EditLocalPagto.Text;
      TblDuplicatasEndPagto.AsString              := EditEndPagto.Text;
      ValorExtenso(VExt,TblDuplicatasCTRCN2VLR.Value, '', '', 02, 85, '*',3);
      TblDuplicatasExtensoLin1.AsString           := VExt[0];
      TblDuplicatasExtensoLin2.AsString           := VExt[1];

      if SQLTotais.Locate('CTRCA30NRODUPLICBANCO',TblDuplicatasCTRCA30NRODUPLICBANCO.AsString,[]) then
        TblDuplicatasTotalDocumento.AsFloat         := SQLTotaisTOTALDOCUMENTO.AsFloat
      else
        TblDuplicatasTotalDocumento.AsFloat         := SQLContasReceberCTRCN2VLR.AsFloat;

      TblDuplicatasInstrucoes.AsString            := MemoInst.Lines.Text;

      TblDuplicatas.Post;
      SQLContasReceber.Next;
    end;
  ppFaturaUnificada.Print;
  TblDuplicatas.Close;
  SQLDuplicatas.Close;
end;

procedure TFormTelaImpressaoBloquetos.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppLogo.Picture.LoadFromFile('Bmp\Logo PDV.jpg');
  ppPropaganda.LoadFromFile('Boleto Propaganda.txt');
end;

end.
