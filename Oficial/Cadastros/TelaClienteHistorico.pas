unit TelaClienteHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dbcgrids, StdCtrls, DBCtrls, ToolEdit, RXDBCtrl, Mask,
  Buttons, jpeg, DB, DBTables, RxQuery, ImgList, DBActns, ActnList, DBGrids,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaClienteHistorico = class(TForm)
    ActionList1: TActionList;
    actAnterior: TDataSetPrior;
    actNovo: TDataSetInsert;
    actAlterar: TDataSetEdit;
    actGravar: TDataSetPost;
    actCancelar: TDataSetCancel;
    actExcluir: TDataSetDelete;
    actProximo: TDataSetNext;
    actLookup: TAction;
    ImageList1: TImageList;
    SQLTemplate: TRxQuery;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLHTICOD: TIntegerField;
    SQLTemplateCLHTDEMIS: TDateTimeField;
    SQLTemplateCLHTTHISTORICO: TMemoField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLTemplateCLIEA15FONE1: TStringField;
    SQLTemplateCLIEA15FONE2: TStringField;
    SQLTemplateCLIEA15FAX: TStringField;
    SQLTemplateCLHTDPROXCONTATO: TDateTimeField;
    DSTemplate: TDataSource;
    SQLCliente: TRxQuery;
    ScrollBoxFundo: TScrollBox;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    MemoHistorico: TDBMemo;
    Panel1: TPanel;
    CtrlGridHist: TDBCtrlGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel1: TBevel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBMemo1: TDBMemo;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    LabelCancelar: TSpeedButton;
    LabelGravar: TSpeedButton;
    LabelAlterar: TSpeedButton;
    LabelNovo: TSpeedButton;
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ControlarActions (DataSource: TDataSource);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  Cliente , Cupom, ContasReceber, Parcela : String;
    { Public declarations }
  end;

var
  FormTelaClienteHistorico: TFormTelaClienteHistorico;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaClienteHistorico.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if DataSet.FindField('REGISTRO') <> nil then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> nil then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.ADD('SELECT MAX(CLHTICOD) FROM CLIENTEHISTORICO WHERE CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''');
  DM.SQLTemplate.Open;
  if DM.SQLTemplate.IsEmpty then
    DataSet.FieldByName('CLHTICOD').AsInteger := 1
  else
    DataSet.FieldByName('CLHTICOD').AsInteger := DM.SQLTemplate.FieldByName('MAX').AsInteger + 1;

end;
procedure TFormTelaClienteHistorico.ControlarActions(DataSource: TDatasource);
begin
  if DataSource.State in DsEditModes then
    begin
      LabelNovo.Action := nil;
      LabelNovo.Enabled := False;
      LabelAlterar.Action := nil;
      LabelAlterar.Enabled := False;
    end
   else
   begin
     LabelAlterar.Action := actAlterar;
     LabelNovo.Action := actNovo;
   end;
end;

procedure TFormTelaClienteHistorico.DSTemplateStateChange(Sender: TObject);
begin
  ControlarActions(DSTemplate);
end;

procedure TFormTelaClienteHistorico.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  SQLTemplateCLHTDEMIS.AsDateTime := Date;
  if Cliente <> '' then
    SQLTemplateCLIEA13ID.AsString := Cliente;
  if Cupom <> '' then
    SQLTemplateCUPOA13ID.AsString := Cupom;
  if ContasReceber <> '' then
    SQLTemplateCTRCA13ID.AsString := ContasReceber;
  if Parcela <> '' then
    SQLTemplateCTRCINROPARC.AsString := Parcela;

end;

procedure TFormTelaClienteHistorico.SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  Case DataSet.State Of
    DsInsert:
      Begin
        Case DataSet.Tag Of
          1:DataSet.Fields[1].asInteger:=DataSet.Fields[1].asInteger + 1;
         End;
        Action:=DaRetry;
      End;
  end;

end;

procedure TFormTelaClienteHistorico.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  BtnFecharTela.Left := (Sender as TForm).Width - (BtnFecharTela.Width + 15) ;
  BtnFecharTela.Update;
end;

procedure TFormTelaClienteHistorico.FormCreate(Sender: TObject);
begin
  LabelTitulo.Caption := Caption ;
end;

procedure TFormTelaClienteHistorico.BtnFecharTelaClick(Sender: TObject);
begin
  Close ;
end;

procedure TFormTelaClienteHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaClienteHistorico.FormKeyPress(Sender: TObject;
  var Key: Char);
var
  Objeto : TComponent;
begin
  if (Key = Char(13)) then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      If (Objeto is TDBMemo) Then Exit;
      if (Objeto is TMemo) Then Exit;
      Perform(Wm_NextDlgCtl,0,0);
    end;
end;

end.
