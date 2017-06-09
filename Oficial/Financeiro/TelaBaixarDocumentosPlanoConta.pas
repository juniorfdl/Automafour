unit TelaBaixarDocumentosPlanoConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls,
  RxLookup, ComCtrls, DB, DBTables, RxQuery, IniFiles, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaBaixarDocumentosPlanoConta = class(TFormTelaGeralModalTemplate)
    SQLPlanoContaCredito: TRxQuery;
    SQLPlanoContaCreditoPLCTA15COD: TStringField;
    SQLPlanoContaCreditoPLCTA60DESCR: TStringField;
    DSSQLPlanoContaCredito: TDataSource;
    DSSQLPlanoContaDebito: TDataSource;
    SQLPlanoContaDebito: TRxQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    SQLTipoLiquidacao: TRxQuery;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    DSSQLTipoLiquidacao: TDataSource;
    GroupBox13: TGroupBox;
    PageControl: TPageControl;
    TabCredito: TTabSheet;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    ComboContaCreditoPrincipal: TRxDBLookupCombo;
    ComboContaCreditoJuros: TRxDBLookupCombo;
    ComboContaCreditoMulta: TRxDBLookupCombo;
    ComboContaCreditoDesconto: TRxDBLookupCombo;
    TabDebito: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ComboContaDebitoPrincipal: TRxDBLookupCombo;
    ComboContaDebitoJuros: TRxDBLookupCombo;
    ComboContaDebitoMulta: TRxDBLookupCombo;
    ComboContaDebitoDesconto: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    ComboTipoLiquidacao: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    MemoHistorico: TMemo;
    Buttongerar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure ButtongerarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  PlanoContas : TIniFile;    
  end;

var
  FormTelaBaixarDocumentosPlanoConta: TFormTelaBaixarDocumentosPlanoConta;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaBaixarDocumentosPlanoConta.FormCreate(Sender: TObject);
begin
  inherited;
  SQLPlanoContaCredito.Open;
  SQLPlanoContaDebito.Open;
  SQLTipoLiquidacao.Open;

  PlanoContas := TIniFile.Create(ExtractFilePath(Application.ExeName)+ TForm(Sender).Caption + '.ini');
  ComboContaCreditoPrincipal.Value := PlanoContas.ReadString('COMBOCREDITOPRINCIPAL','ComboCreditoPrincipal_Value','0');
  ComboContaCreditoJuros.Value     := PlanoContas.ReadString('COMBOCREDITOJUROS'    ,'ComboCreditoJuros_Value','0');
  ComboContaCreditoMulta.Value     := PlanoContas.ReadString('COMBOCREDITOMULTA'    ,'ComboCreditoMulta_Value','0');
  ComboContaCreditoDesconto.Value  := PlanoContas.ReadString('COMBOCREDITODESCONTO' ,'ComboCreditoDesconto_Value','0');
  ComboContaDebitoPrincipal.Value  := PlanoContas.ReadString('COMBODebitoPRINCIPAL','ComboDebitoPrincipal_Value','0');
  ComboContaDebitoJuros.Value      := PlanoContas.ReadString('COMBODebitoJUROS'    ,'ComboDebitoJuros_Value','0');
  ComboContaDebitoMulta.Value      := PlanoContas.ReadString('COMBODebitoMULTA'    ,'ComboDebitoMulta_Value','0');
  ComboContaDebitoDesconto.Value   := PlanoContas.ReadString('COMBODebitoDESCONTO' ,'ComboDebitoDesconto_Value','0');
  
end;

procedure TFormTelaBaixarDocumentosPlanoConta.BtnFecharTelaClick(Sender: TObject);
begin
  inherited;
  FormTelaBaixarDocumentosPlanoConta.ModalResult := MrCancel;
end;

procedure TFormTelaBaixarDocumentosPlanoConta.ButtongerarClick(
  Sender: TObject);
begin
  inherited;
  if ComboTipoLiquidacao.Value = '' then
    begin
      ShowMessage('Você deve selecionar um tipo de liquidação !');
      ComboTipoLiquidacao.SetFocus;
      Exit;
    end;
  FormTelaBaixarDocumentosPlanoConta.ModalResult := MrOk;
end;

procedure TFormTelaBaixarDocumentosPlanoConta.FormClose(
  Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  try
    PlanoContas := TIniFile.Create(ExtractFilePath(Application.ExeName)+ TForm(Sender).Caption + '.ini');
    PlanoContas.WriteString('COMBOCREDITOPRINCIPAL','ComboCreditoPrincipal_Value',ComboContaCreditoPrincipal.Value);
    PlanoContas.WriteString('COMBOCREDITOJUROS'    ,'ComboCreditoJuros_Value',ComboContaCreditoJuros.Value);
    PlanoContas.WriteString('COMBOCREDITOMULTA'    ,'ComboCreditoMulta_Value',ComboContaCreditoMulta.Value);
    PlanoContas.WriteString('COMBOCREDITODESCONTO' ,'ComboCreditoDesconto_Value',ComboContaCreditoDesconto.Value);
    PlanoContas.WriteString('COMBODebitoPRINCIPAL','ComboDebitoPrincipal_Value',ComboContaDebitoPrincipal.Value);
    PlanoContas.WriteString('COMBODebitoJUROS'    ,'ComboDebitoJuros_Value',ComboContaDebitoJuros.Value);
    PlanoContas.WriteString('COMBODebitoMULTA'    ,'ComboDebitoMulta_Value',ComboContaDebitoMulta.Value);
    PlanoContas.WriteString('COMBODebitoDESCONTO' ,'ComboDebitoDesconto_Value',ComboContaDebitoDesconto.Value);
  except
    on E:Exception do
      begin
        Informa('Problemas ao gravar arquivo de inicialização, informe seu Revendedor. ANOTE O ERRO:' + #13 + E.Message);
      end;
  end;

end;

end.
