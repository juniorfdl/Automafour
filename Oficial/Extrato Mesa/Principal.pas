unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport,
  StdCtrls, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter,
  RXCtrls;

type
  TFormPrincipal = class(TForm)
    TblPedidoFinanceiro: TTable;
    TblPedidoFinanceiroPedICod: TStringField;
    TblPedidoFinanceiroVencimento: TDateField;
    TblPedidoFinanceiroValor: TFloatField;
    TblPreVendaItem: TTable;
    TblPedidoFinanceiroNumerario: TStringField;
    Memo: TMemo;
    ACBrPosPrinter: TACBrPosPrinter;
    TblPedidoFinanceiroTipopadrao: TStringField;
    lbEmpresa: TRxLabel;
    TblPreVendaItemTERMICOD: TIntegerField;
    TblPreVendaItemPRVDICOD: TIntegerField;
    TblPreVendaItemPVITIPOS: TIntegerField;
    TblPreVendaItemPRODICOD: TIntegerField;
    TblPreVendaItemDescricaoRed: TStringField;
    TblPreVendaItemPVITN3QTD: TFloatField;
    TblPreVendaItemPVITN3VLRUNIT: TFloatField;
    TblPreVendaItemPVITCSTATUS: TStringField;
    TblPreVendaItemVENDICOD: TIntegerField;
    TblPreVendaItemTotalItem: TFloatField;
    TblPreVendaItemMarcado: TBooleanField;
    TblPreVendaItemVendedor: TStringField;
    TblPreVendaItemMesaICod: TIntegerField;
    TblPreVendaItemContaICod: TIntegerField;
    TblPreVendaItemValorServico: TFloatField;
    TblPreVendaItemBORDA01: TStringField;
    TblPreVendaItemBORDA02: TStringField;
    TblPreVendaItemBORDA03: TStringField;
    TblPreVendaItemSABOR01: TStringField;
    TblPreVendaItemSABOR02: TStringField;
    TblPreVendaItemSABOR03: TStringField;
    TblPreVendaItemSABOR04: TStringField;
    TblPreVendaItemSABOR05: TStringField;
    TblPreVendaItemSABOR06: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses DataModulo;


{$R *.dfm}

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACBrPosPrinter.Device.Desativar;
  Action := cafree ;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
var Inifile: TInifile;
var ImpMarca, ImpCaixaPorta, ImpCaixaVeloc, EmpresaNome : String;
var Total : Double;
begin
  try
    memo.Lines.Clear;

    TblPreVendaItem.Open;

    IniFile             := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.ini');
    EmpresaNome         := IniFile.ReadString('IB_Software','EmpresaNome','');
    ImpMarca            := IniFile.ReadString('Restaurante','ImpMarca','DARUMA');
    ImpCaixaPorta       := IniFile.ReadString('Restaurante','ImpCaixaPorta','');
    ImpCaixaVeloc       := IniFile.ReadString('Restaurante','ImpCaixaVeloc','115200');
    IniFile.Free;

    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</ae><e>'+EmpresaNome+'</e>');
    memo.Lines.Add('</fn></ce>');
    memo.Lines.Add(' ');
    memo.Lines.Add('</ae><e>EXTRATO</e>');
    memo.Lines.Add(' ');
    memo.Lines.Add('</ae><e>MESA/COMANDA => '+TblPreVendaItemMesaICod.AsString+'/'+TblPreVendaItemContaICod.AsString+'</e></fn>');
    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add(' Descricao                                      ');
    memo.Lines.Add('       Quantidade     Valor Unit       Vlr.Total');
    memo.Lines.Add('------------------------------------------------');
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        memo.Lines.Add('</ae>'+TblPreVendaItemDescricaoRed.AsString);
        memo.Lines.Add('</ad>         '+FormatFloat('##00.00',TblPreVendaItemPVITN3QTD.Value)+'     '+FormatFloat('R$ ##0.00',TblPreVendaItemPVITN3VLRUNIT.Value)+'          '+ FormatFloat('R$ ##0.00',TblPreVendaItemTotalItem.Value)+'   </n>');
        Total := Total + TblPreVendaItemTotalItem.Value;
        TblPreVendaItem.Next;
      End;

    // Final Venda
    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add('</ad><n>TOTAL   R$ ' + FormatFloat('##0.00',Total)+'   </n>');
    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</corte_parcial>');

    if ImpMarca = 'EPSON'    then ACBrPosPrinter.Modelo := ppEscPosEpson;
    if ImpMarca = 'BEMATECH' then ACBrPosPrinter.Modelo := ppEscBematech;
    if ImpMarca = 'ELGIN'    then ACBrPosPrinter.Modelo := ppEscVox;
    if ImpMarca = 'DR700'    then ACBrPosPrinter.Modelo := ppEscDaruma;
    if ImpMarca = 'DR800'    then ACBrPosPrinter.Modelo := ppEscDaruma;

    ACBrPosPrinter.Device.Porta := ImpCaixaPorta;
    ACBrPosPrinter.Device.Baud  := StrToint(ImpCaixaVeloc);
    ACBrPosPrinter.Device.Desativar;
    ACBrPosPrinter.Device.Ativar;
    ACBrPosPrinter.Imprimir(Memo.Lines.Text);

    TblPreVendaItem.Close;
    Application.Terminate;
  except
//  on e : exception do showmessage('Ocorreu o seguinte erro: '+ e.message);
    TblPreVendaItem.Close;
    Application.Terminate;
  end;
end;

end.
