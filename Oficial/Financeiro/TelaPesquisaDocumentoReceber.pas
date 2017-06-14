unit TelaPesquisaDocumentoReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, RxLookup, StdCtrls,
  Buttons, jpeg, ExtCtrls, DBCtrls, VarSys, Placemnt, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaPesquisarDocumentoReceber = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    BtnFecharTela: TSpeedButton;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EditDocumento: TEdit;
    ComboEmpresa: TRxDBLookupCombo;
    DBGridLista: TDBGrid;
    DSSQLContasReceber: TDataSource;
    SQLContasReceber: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    btnAdicionar: TBitBtn;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    SpeedButton1: TSpeedButton;
    BtExecutar: TSpeedButton;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    SpeedButton2: TSpeedButton;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCTRCA15NOSSONUMERO: TStringField;
    ckBanrisul: TCheckBox;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    DSTblRecebimento: TDataSource;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditDocumentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Linha :Integer;
  public
    { Public declarations }
  end;

var
  FormTelaPesquisarDocumentoReceber: TFormTelaPesquisarDocumentoReceber;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaPesquisarDocumentoReceber.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  BtnFecharTela.Left := (Sender as TForm).Width - (BtnFecharTela.Width + 15) ;
  BtnFecharTela.Update;
end;

procedure TFormTelaPesquisarDocumentoReceber.BtnFecharTelaClick(
  Sender: TObject);
begin
  FormTelaPesquisarDocumentoReceber.ModalResult := MrCancel;
end;

procedure TFormTelaPesquisarDocumentoReceber.BtnAdicionarClick(
  Sender: TObject);
begin
  if not SQLContasReceber.IsEmpty then
  begin
    if not (SQLRecebimento.Locate('CTRCA13ID',SQLContasReceberCTRCA13ID.AsString,[])) then
    begin
      FormTelaPesquisarDocumentoReceber.ModalResult := MrOk
    end else
      begin
        Informa('Documento já selecionado!');
        Abort;
        Exit;
      end;
  end else
  begin
    Informa('Nenhum Documento Selecionado!');
    Abort;
    Exit;
  end;
  EditDocumento.setfocus;
end;

procedure TFormTelaPesquisarDocumentoReceber.FormCreate(Sender: TObject);
begin
  SQLEmpresa.Open;
  ComboEmpresa.Value := IntToStr(EmpresaCorrente);
  try
    SQLRecebimento.Open;
  except
  end;
end;

procedure TFormTelaPesquisarDocumentoReceber.EditDocumentoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    begin
      SQLContasReceber.Close;
      if ckBanrisul.Checked then  {16203465}
        begin
          SQLContasReceber.MacroByName('MDocumento').AsString := '(CR.CTRCA15NOSSONUMERO = "' + EditDocumento.Text + '") or (CR.CTRCA15NOSSONUMERO = "1520' + EditDocumento.Text + '") or (CR.CTRCA15NOSSONUMERO = "1620' + EditDocumento.Text + '")';
        end
      else
        SQLContasReceber.MacroByName('MDocumento').AsString := '(CR.CTRCA30NRODUPLICBANCO = "' + EditDocumento.Text + '") or (CR.CTRCA15NOSSONUMERO = "' + EditDocumento.Text + '")' ;

      SQLContasReceber.Open;
      if SQLContasReceber.IsEmpty then
        EditDocumento.SetFocus;
    end;
end;

procedure TFormTelaPesquisarDocumentoReceber.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BtnAdicionar.Click;
end;

procedure TFormTelaPesquisarDocumentoReceber.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=char(13) Then
    begin
      Perform(Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFormTelaPesquisarDocumentoReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLRecebimento.Close;
end;

end.
