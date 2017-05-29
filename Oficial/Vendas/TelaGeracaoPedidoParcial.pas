unit TelaGeracaoPedidoParcial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, MemTable, Grids, DBGrids, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaPedidoParcial = class(TFormTelaGeralModalTemplate)
    DBGridItens: TDBGrid;
    TblQtde: TMemoryTable;
    TblQtdePRODICOD: TIntegerField;
    TblQtdePRODA60DESCR: TStringField;
    TblQtdePVITN3VLRUNIT: TBCDField;
    TblQtdePVITN3QUANT: TBCDField;
    TblQtdeVlrTotalItem: TBCDField;
    TblQtdeQTDEATENDIDO: TBCDField;
    DSTblQtde: TDataSource;
    BtnOk: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    TblQtdeCLIEA13ID: TStringField;
    TblQtdeVENDICOD: TIntegerField;
    TblQtdePLRCICOD: TIntegerField;
    TblQtdePDVDA13ID: TStringField;
    TblQtdeROTAICOD: TIntegerField;
    procedure BtnOkClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaPedidoParcial: TFormTelaPedidoParcial;

implementation

{$R *.dfm}

procedure TFormTelaPedidoParcial.BtnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := MROK;
end;

procedure TFormTelaPedidoParcial.BtnFecharTelaClick(Sender: TObject);
begin
  inherited;
  ModalResult := MRCancel;
end;

end.
