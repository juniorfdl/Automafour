unit RelatorioClientesPorCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, ppCtrls, ppPrnabl, ppClass, ppDB, ppBands,
  ppCache, StdCtrls, ppProd, ppReport, DB, ppComm, ppRelatv, ppDBPipe,
  ppDBBDE, DBTables, RxQuery, Buttons, jpeg, ExtCtrls, RxLookup, ppviewr,
  Mask, ToolEdit, ppStrtch, ppMemo, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioClienteporCidade = class(TFormTelaGeralTEMPLATE)
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteCLIEA10CODANT: TStringField;
    Pipe: TppBDEPipeline;
    DSSQLCliente: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    TblTipoCliente: TTable;
    TblTipoClienteTPCLICOD: TIntegerField;
    TblTipoClienteTPCLA30DESCR: TStringField;
    SQLClienteTPCLICOD: TIntegerField;
    DSTipoCliente: TDataSource;
    SQLClienteTipoCliente: TStringField;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    SQLCidade: TRxQuery;
    SQLCidadeCLIEA60CIDRES: TStringField;
    DSSQLCidade: TDataSource;
    PanelCentro: TPanel;
    BtnVisualizar: TSpeedButton;
    GroupBox1: TGroupBox;
    ComboTipoCliente: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    ComboCidade: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    ComboEstado: TComboBox;
    ppDBText11: TppDBText;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteROTAICOD: TIntegerField;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    InlcuirRota: TSpeedButton;
    ExcluirRota: TSpeedButton;
    ComboRota: TRxDBLookupCombo;
    ListaRotas: TListBox;
    DSSQLRota: TDataSource;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    PipeppField20: TppField;
    PipeppField21: TppField;
    TblRotaAux: TTable;
    TblRotaAuxROTAICOD: TIntegerField;
    TblRotaAuxROTAA60NOME: TStringField;
    SQLClienteROTAA60NOME: TStringField;
    PipeppField22: TppField;
    ppDBText14: TppDBText;
    RadioOrdem: TRadioGroup;
    Label3: TLabel;
    DataRevisaoINI: TDateEdit;
    SQLClienteCLIEDREVISAO: TDateTimeField;
    CLIEDREVISAO: TppField;
    ppDBText15: TppDBText;
    ppLabel15: TppLabel;
    SQLClienteCLIETOBS1: TBlobField;
    PipeppField23: TppField;
    ppDBMemo1: TppDBMemo;
    ppLabel16: TppLabel;
    SQLClienteCLIEA5NROENDRES: TStringField;
    PipeppField24: TppField;
    ppDBText16: TppDBText;
    DataRevisaoFim: TDateEdit;
    Label1: TLabel;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    function  SQLDeListaRota(ListaRota:TListBox) : String ;
    procedure InlcuirRotaClick(Sender: TObject);
    procedure ExcluirRotaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioClienteporCidade: TFormRelatorioClienteporCidade;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioClienteporCidade.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
  SQLCliente.Close ;
  SQLCliente.MacroByName('Rota').Value        := '0=0' ;
  SQLCliente.MacroByName('TipoCliente').Value := '0=0' ;
  SQLCliente.MacroByName('Cidade').Value      := '0=0' ;
  SQLCliente.MacroByName('Estado').Value      := '0=0' ;
  SQLCliente.MacroByName('DataRevisao').Value := '0=0' ;

  SQLCliente.MacroByName('Rota').Value := SQLDeListaRota(ListaRotas) ;

  if ComboTipoCliente.Value <> '' then
    SQLCliente.MacroByName('TipoCliente').Value := 'TPCLICOD = ' + ComboTipoCliente.KeyValue ;
  if ComboCidade.Value <> '' then
    SQLCliente.MacroByName('Cidade').Value := 'CLIEA60CIDRES = ' + '"' + ComboCIDADE.Value + '"';
  if ComboEstado.ItemIndex <> -1 then
    SQLCliente.MacroByName('Estado').Value := 'CLIEA2UFRES = ' + '"' + ComboEstado.Text + '"' ;

  if (DataRevisaoINI.Text <> '  /  /    ') and (DataRevisaoFim.Text <> '  /  /    ') then
    SQLCliente.MacrobyName('DataRevisao').Value := 'CLIEDREVISAO >= "' + FormatDateTime('mm/dd/yyyy', DataRevisaoINI.Date) + '" and ' +
                                                   'CLIEDREVISAO <= "' + FormatDateTime('mm/dd/yyyy', DataRevisaoFim.Date) ;

  case RadioOrdem.ItemIndex of
    0 : SQLCliente.MacroByName('ORDEM').Value := 'CLIEA13ID';
    1 : SQLCliente.MacroByName('ORDEM').Value := 'CLIEA60RAZAOSOC';
    2 : SQLCliente.MacroByName('ORDEM').Value := 'CLIEA60CIDRES';
    3 : SQLCliente.MacroByName('ORDEM').Value := 'ROTAICOD';
    4 : SQLCliente.MacroByName('ORDEM').Value := 'MTBLICOD';
    5 : SQLCliente.MacroByName('ORDEM').Value := 'CLIEA60BAIRES';
  end;

  SQLCliente.Open ;
  if SQLCliente.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  ppReport1.Print ;
end;

procedure TFormRelatorioClienteporCidade.FormCreate(Sender: TObject);
begin
  inherited;
  if not TblTipoCliente.Active then TblTipoCliente.Open;
  if not SQLCidade.Active then SQLCidade.Open;
  if not SQLRota.Active then SQLRota.Open;  
end;

procedure TFormRelatorioClienteporCidade.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  PanelCentro.Left := ((Sender as TForm).Width - PanelCentro.Width) Div 2 ;
  PanelCentro.Top  := ((Sender as TForm).Height - PanelCentro.Height) Div 2 ;
end;

procedure TFormRelatorioClienteporCidade.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReport1.PreviewForm.WindowState := wsMaximized;
//  TppViewer(ppReport1.PreviewForm).ZoomSetting := zsPageWidth;
end;

function TFormRelatorioClienteporCidade.SQLDeListaRota(ListaRota:TListBox) : String ;
var i   : integer ;
    SQLRota : string ;
begin
  if ListaRota.Items.Count = 0 then
  begin
    if (ComboRota.Text <> '') and (ComboRota.Text <> 'Todas')then
      SQLRota := 'Cliente.RotaIcod = ' + '"' + ComboRota.Value + '"'
    else
      SQLRota := '0=0' ;
  end
  else begin
    SQLRota := '' ;
    for I:=0 To ListaRota.Items.Count-1 Do
    begin
      if I = ListaRota.Items.Count-1 Then
        SQLRota := SQLRota + 'Cliente.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"'
      else
        SQLRota := SQLRota + 'Cliente.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"' + ' or '
    end ;
  end ;

  SQLDeListaRota := SQLRota ;
end ;

procedure TFormRelatorioClienteporCidade.InlcuirRotaClick(Sender: TObject);
var i : integer ;
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

procedure TFormRelatorioClienteporCidade.ExcluirRotaClick(Sender: TObject);
begin
  inherited;
  if ListaRotas.Items.Count > 0 then
    ListaRotas.Items.Delete(ListaRotas.ItemIndex) ;
end;

end.
