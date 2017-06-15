unit RelatorioOrdensPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioOrdPecas = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    CheckTodas: TCheckBox;
    CheckAbertas: TCheckBox;
    CheckEncerradas: TCheckBox;
    CheckFinalizadas: TCheckBox;
    CheckProntas: TCheckBox;
    CheckCanceladas: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure CheckTodasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrdPecas: TFormRelatorioOrdPecas;

implementation

uses RelatorioOrdensListadas, RelatorioOrdensListagemPecas;

{$R *.dfm}

procedure TFormRelatorioOrdPecas.ExecutarBtnClick(Sender: TObject);
var txt:String;
begin
  inherited;
  FormListagemOrdemMec_Itens:= TFormListagemOrdemMec_Itens.Create(Self);
  with FormListagemOrdemMec_Itens do
  begin

    txt:= '';
    If CheckTodas.Checked       then txt := txt + ' and (o.Status <> ''C'') '
    else begin
      if CheckAbertas.Checked     then txt := txt + ' and (o.Status = ''A'') ';
      if CheckEncerradas.Checked  then txt := txt + ' and (o.Status = ''E'') ';
      if CheckFinalizadas.Checked then txt := txt + ' and (o.Status = ''F'') ';
      if CheckProntas.Checked     then txt := txt + ' and (o.Status = ''P'') ';
      if CheckCanceladas.Checked  then txt := txt + ' and (o.Status = ''C'') ';
    end;

    SQLOrdItens.SQL.Text := 'Select distinct(i.prodicod), sum(oritn3quant) , sum((i.oritn2vlrunit-i.oritn2vlrdesc) * i.oritn3quant) as Total, '+
    '(select p.proda60descr from produto p where p.prodicod = i.prodicod) as produto '+
    'from ord_mec_itens i '+
    'where i.ordid in (Select o.ordid from ord_mecanica o where ((o.data >= :xData) and (o.data <= :xDataFinal)) '+ txt +') '+
    'group by i.prodicod';

    SQLOrdItens.Close;
    SQLOrdItens.Prepare;
    SQLOrdItens.ParamByName('xdata').AsDateTime     := StrToDateTime(de.Text +' '+'00:00:00');
    SQLOrdItens.ParamByName('xDataFinal').AsDateTime:= StrToDateTime(Ate.Text+' '+'23:59:59');
    SQLOrdItens.Open;
    QRLabel3.Caption := de.Text;
    QRLabel5.Caption := ate.Text;



  end;
  FormListagemOrdemMec_Itens.QuickRep1.Preview;
  FormListagemOrdemMec_Itens.Free;
end;

procedure TFormRelatorioOrdPecas.CheckTodasClick(Sender: TObject);
begin
  inherited;
  CheckCanceladas.Checked := not CheckTodas.Checked;
  CheckAbertas.Checked    := CheckTodas.Checked;
  CheckEncerradas.Checked := CheckTodas.Checked;
  CheckFinalizadas.Checked:= CheckTodas.Checked;
  CheckProntas.Checked    := CheckTodas.Checked;
end;

end.
