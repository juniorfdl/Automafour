unit TelaCadastroRapidoProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBTables, RxQuery, ExtCtrls,
  Buttons, jpeg, DBActns, ActnList, RxLookup, EDBNum, RxDBComb, IniFiles;

type
  TFormTelaCadastroRapidoProduto = class(TForm)
    ActionList: TActionList;
    actAnterior: TDataSetPrior;
    actNovo: TDataSetInsert;
    actAlterar: TDataSetEdit;
    actGravar: TDataSetPost;
    actCancelar: TDataSetCancel;
    actProximo: TDataSetNext;
    actLookup: TAction;
    Image2: TImage;
    BtnRegistroAnterior: TSpeedButton;
    BtnProximoRegistro: TSpeedButton;
    Bevel1: TBevel;
    LabelNovo: TSpeedButton;
    LabelAlterar: TSpeedButton;
    LabelGravar: TSpeedButton;
    LabelCancelar: TSpeedButton;
    BtnFecharTela: TSpeedButton;
    SQLProduto: TRxQuery;
    UpdateSQLProduto: TUpdateSQL;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODA255DESCRTEC: TStringField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3PESOBRUTO: TFloatField;
    SQLProdutoPRODN3PESOLIQ: TFloatField;
    SQLProdutoPRODN3CAPACEMBAL: TFloatField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODDULTALTER: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3VLRCUSTOMED: TFloatField;
    SQLProdutoPRODN3PERCIPI: TFloatField;
    SQLProdutoPRODN3PERCMARGLUCR: TFloatField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TFloatField;
    SQLProdutoPRODN2COMISPRAZO: TFloatField;
    SQLProdutoPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TFloatField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODDULTATUALIZ: TDateTimeField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoPRODICODETIQBAL: TIntegerField;
    SQLProdutoPRODIDIASVALIDADE: TIntegerField;
    SQLProdutoPRODN3VLRCOMPRAMED: TFloatField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEditProduto: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SQLIcms: TRxQuery;
    SQLIcmsICMSICOD: TIntegerField;
    SQLIcmsICMSA60DESCR: TStringField;
    SQLIcmsICMSN2ALIQUOTA: TFloatField;
    DSSQLIcms: TDataSource;
    Label1: TLabel;
    Shape4: TShape;
    ComboICMS: TRxDBLookupCombo;
    Label34: TLabel;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    DSSQLUnidade: TDataSource;
    Label9: TLabel;
    ComboUnidade: TRxDBLookupCombo;
    Label18: TLabel;
    DBEditVlrVenda: TEvDBNumEdit;
    GroupBox2: TGroupBox;
    Label25: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    DBEdit22: TEvDBNumEdit;
    DBEdit28: TDBEdit;
    DBEdit32: TDBEdit; 
    GroupBox4: TGroupBox;
    DBEdit13: TDBMemo;
    Label13: TLabel;
    ComboOrigem: TRxDBComboBox;
    DSSQLProduto: TDataSource;
    Shape1: TShape;
    ComboProduto: TRxDBLookupCombo;
    Label6: TLabel;
    Label8: TLabel;
    DBEditVlrCompra: TEvDBNumEdit;
    DBEditVlrCusto: TEvDBNumEdit;
    Label10: TLabel;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    GroupBox1: TGroupBox;
    SQLProdutoPRODBIMAGEM: TBlobField;
    ImageProduto: TImage;
    procedure SQLProdutoNewRecord(DataSet: TDataSet);
    procedure SQLProdutoAfterPost(DataSet: TDataSet);
    procedure SQLProdutoBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function  AbandonarSemSalvar(Tabela:TDataSet) : Boolean;
    procedure ControlarActions(DataSource: TDatasource);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DSSQLProdutoDataChange(Sender: TObject; Field: TField);
    procedure SQLProdutoPRODA60DESCRChange(Sender: TField);
    procedure ComboProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnFecharTelaClick(Sender: TObject);
  private
    { Private declarations }
  public
  EanOK : Boolean;
  CodigoBarra,
  CodEAN,
  Referencia,
  CodBarras : String;
  UltProdutoCombo : TIniFile;
    { Public declarations }
  end;
var
  FormTelaCadastroRapidoProduto: TFormTelaCadastroRapidoProduto;

implementation

uses DataModulo, UnitCheckoutLibrary, UnitLibrary;

{$R *.dfm}


procedure TFormTelaCadastroRapidoProduto.SQLProdutoNewRecord(DataSet: TDataSet);
begin
  SQLProdutoPRODCATIVO.asString          := 'S';
  SQLProdutoPRODCGERACOMIS.asString      := 'S';
  SQLProdutoPRODCSERVICO.asString        := 'N';
  SQLProdutoPRODCTIPOBAIXA.asString      := 'P';
  SQLProdutoPRODN3PESOBRUTO.asFloat      := 0;
  SQLProdutoPRODN3PESOLIQ.asFloat        := 0;
  SQLProdutoPRODN3CAPACEMBAL.asFloat     := 1;
  SQLProdutoPRODN2COMISVISTA.asFloat     := 0;
  SQLProdutoPRODN3VLRCOMPRA.asFloat      := 0;
  SQLProdutoPRODN3VLRCUSTO.asFloat       := 0;
  SQLProdutoPRODN3VLRVENDA.asFloat       := 0;
  SQLProdutoPRODN3QTDEBAIXA.asFloat      := 0;
  SQLProdutoPRODN3VLRVENDAPROM.asFloat   := 0;
  SQLProdutoPRODN3VLRCUSTOMED.asFloat    := 0;
  SQLProdutoPRODN3PERCIPI.asFloat        := 0;
  SQLProdutoPRODN3PERCMARGLUCR.asFloat   := 0;
  SQLProdutoPRODN2COMISPRAZO.asFloat     := 0;
  SQLProdutoPRODDCAD.asDateTime          := Date;
  ComboProduto.Value                     := '';
  DBEditProduto.SetFocus;
end;

procedure TFormTelaCadastroRapidoProduto.SQLProdutoAfterPost(DataSet: TDataSet);
begin
  try
    SQLProduto.ApplyUpdates;
  except
    on E:Exception do
      begin
        SQLProduto.CancelUpdates;
        Informa('Problemas ao gravar o produto, ANOTE O ERRO: ' + E.Message);
        Abort;
      end;
  end;
end;

procedure TFormTelaCadastroRapidoProduto.SQLProdutoBeforePost(DataSet: TDataSet);
begin
  if SQLProdutoICMSICOD.AsVariant = null then
    begin
      Informa('Você deve informar o icms deste produto!');
      ComboICMS.SetFocus;
      Abort;
    end;
  if SQLProdutoUNIDICOD.AsVariant = null then
    begin
      Informa('Você deve informar a unidade deste produto!');
      ComboUnidade.SetFocus;
      Abort;
    end;

  if DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now;
  if DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S';
  if DataSet.State in [DsEdit] then
    SQLProdutoPRODDULTALTER.AsDateTime := Now;  
  case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                begin
                  DataSet.FindField('PRODICOD').AsInteger :=
                  DM.ProximoCodigoUnico('PRODUTO', SQLProduto,nil,0);
                end;
  end ;
  SQLProdutoPRODIAGRUPGRADE.AsInteger := SQLProdutoPRODICOD.AsInteger;
  // GERA CODIGO DE BARRAS
  if (Trim(SQLProdutoPRODA60CODBAR.AsString)='') then
    begin
      CodEAN := SQLLocate('EMPRESA','EMPRICOD','EMPRA15CODEAN',EmpresaPadrao);
      if CodEAN <> '' then
        begin
          try
            StrToInt(CodEan);
            EanOK := True;
          except
            Informa('O Campo cód. EAN no cadastro de empresa está incorreto, por favor verifique!');
            EanOK := False;
          end;
        end;
      if (CodEan <> '') and (EanOK) then
        CodigoBarra := GeraCodigoBarras(CodEan + Format('%.3d',[SQLProdutoPRODICOD.asInteger]))
      else
        CodigoBarra := GeraCodigoBarras(Format('%.3d',[SQLProdutoPRODICOD.asInteger]));

      SQLProdutoPRODA60CODBAR.asString := CodigoBarra + DigitVerifEAN(CodigoBarra);

    end;
  DM.SQLConfigGeral.Close;
  DM.SQLConfigGeral.Open;
  if (DM.SQLConfigGeralCFGECTESTEANPROD.AsString = 'S') and
     (SQLProduto.FieldByName('PRODA60CODBAR').AsString <> '') and
     (CodBarras <> SQLProduto.FieldByName('PRODA60CODBAR').AsString) then
    begin
       DM.SQLTemplate.Close;
       DM.SQLTemplate.SQL.Clear;
       DM.SQLTemplate.SQl.Add('SELECT (PRODA60CODBAR) FROM PRODUTO WHERE PRODA60CODBAR = ' + '"' + SQLProduto.FieldByName('PRODA60CODBAR').AsString + '" AND PRODICOD <>'+SQLProduto.FieldByName('PRODICOD').asString);
       DM.SQLTemplate.Open;
       if DM.SQLTemplate.RecordCount > 0 then
         begin
          if not Pergunta('NAO','Este código de barras já foi cadastrado para outro produto, deseja continuar ?') then
            begin
              SQLProduto.FieldByName('PRODA60CODBAR').FocusControl;
              Abort;
            end ;
         end;
    end;

  if (DM.SQLConfigGeralCFGECTESTREFPROD.AsString = 'S') and
     (SQLProduto.FieldByName('PRODA60REFER').AsString <> '') and
     (Referencia <> SQLProduto.FieldByName('PRODA60REFER').AsString) then
    begin
       DM.SQLTemplate.Close;
       DM.SQLTemplate.SQL.Clear;
       DM.SQLTemplate.SQl.Add('SELECT (PRODA60REFER) FROM PRODUTO WHERE PRODA60REFER = ' + '"' +SQLProduto.FieldByName('PRODA60REFER').AsString + '" AND PRODICOD <>'+SQLProduto.FieldByName('PRODICOD').asString);
       DM.SQLTemplate.Open;
       if DM.SQLTemplate.RecordCount > 0 then
         begin
          if not Pergunta('NAO','Esta referência já foi cadastrada para outro produto, deseja continuar ?') then
            begin
              SQLProduto.FieldByName('PRODA60REFER').FocusControl;
              Abort;
            end;
         end;
    end;
  SQLProdutoPRODA255DESCRTEC.AsString := UpperCase(SQLProdutoPRODA255DESCRTEC.AsString);
end;
function TFormTelaCadastroRapidoProduto.AbandonarSemSalvar(Tabela:TDataSet) : Boolean;
begin
  Result := True;
  if Tabela <> nil then
    if (Tabela.State in dsEditModes) then
      begin
        if Application.MessageBox('Existem dados não gravados. Deseja sair mesmo assim?',
          'Pergunta',MB_YesNo+MB_IconQuestion) = Id_Yes then
          Tabela.Cancel
        else
          Result := False;
      end;
end;
procedure TFormTelaCadastroRapidoProduto.ControlarActions(DataSource: TDatasource);
begin
  if DataSource.State in DsEditModes then
    begin
      BtnRegistroAnterior.Action := nil;
      BtnRegistroAnterior.Enabled := False;
      BtnProximoRegistro.Action := nil;
      BtnProximoRegistro.Enabled := False;
      LabelNovo.Action := nil;
      LabelNovo.Enabled := False;
      LabelAlterar.Action := nil;
      LabelAlterar.Enabled := False;
    end
   else
   begin
     BtnRegistroAnterior.Action := actAnterior;
     BtnProximoRegistro.Action := actProximo;
     LabelNovo.Action := actNovo;
     LabelAlterar.Action := actAlterar;
   end;
end;

procedure TFormTelaCadastroRapidoProduto.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl, 0, 0);
//  if Key = VK_F3 then
//    LabelRetornar.Click;
end;

procedure TFormTelaCadastroRapidoProduto.FormCreate(Sender: TObject);
begin
  if not SQLProduto.Active then SQLProduto.Open;
  if not SQLIcms.Active then SQLIcms.Open;
  if not SQLUnidade.Active then SQLUnidade.Open;
  UltProdutoCombo := TIniFile.Create(ExtractFilePath(Application.ExeName) + FormTelaCadastroRapidoProduto.Caption + '.ini');
  ComboProduto.Value := UltProdutoCombo.ReadString('COMBOPRODUTO','ComboProduto_Value','0');
end;

procedure TFormTelaCadastroRapidoProduto.FormActivate(Sender: TObject);
begin
  ComboProduto.Value := SQLProdutoPRODICOD.AsString;
end;

procedure TFormTelaCadastroRapidoProduto.DSSQLProdutoDataChange(
  Sender: TObject; Field: TField);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  // Mostra Imagem Associada ao Produto
  if SQLProdutoPRODBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLProduto.CreateBlobStream(SQLProdutoPRODBIMAGEM,bmRead);
    JPEGImage := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ImageProduto.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ImageProduto.Picture:=nil;

  ComboProduto.Enabled := not (SQLProduto.State in [DsInsert]);
end;

procedure TFormTelaCadastroRapidoProduto.SQLProdutoPRODA60DESCRChange(
  Sender: TField);
begin
  If Sender.DataSet.FindField('PRODA30ADESCRREDUZ').asString='' Then
    Sender.DataSet.FindField('PRODA30ADESCRREDUZ').asString := Sender.asString;
end;

procedure TFormTelaCadastroRapidoProduto.ComboProdutoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormTelaCadastroRapidoProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  UltProdutoCombo := TIniFile.Create(ExtractFilePath(Application.ExeName)+ FormTelaCadastroRapidoProduto.Caption + '.ini');
  if ComboProduto.Value <> '' then
    begin
      UltProdutoCombo.WriteString('COMBOPRODUTO','ComboProduto_Value',ComboProduto.Value);
    end;
  if AbandonarSemSalvar(SQLProduto) then
    begin
      SQLProduto.Cancel;
      SQLProduto.CancelUpdates;
      Close;
    end
  else
    Abort;
end;

procedure TFormTelaCadastroRapidoProduto.BtnFecharTelaClick(
  Sender: TObject);
begin
  Close;
end;

end.


