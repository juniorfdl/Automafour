unit TelaItensVendaConsignacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, Grids, DBGrids, Buttons;

type
  TFormTelaItensVendaConsignacao = class(TForm)
    PanelTop: TPanel;
    PanelClient: TPanel;
    DBGridLista: TDBGrid;
    DSTblItensVendaConsig: TDataSource;
    TblItensVendaConsig: TTable;
    TblItensVendaConsigReferencia: TStringField;
    TblItensVendaConsigDescricao: TStringField;
    TblItensVendaConsigQtde: TFloatField;
    TblItensVendaConsigLote: TStringField;
    TblItensVendaConsigProduto: TIntegerField;
    LabelConfirmar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure LabelConfirmarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaItensVendaConsignacao: TFormTelaItensVendaConsignacao;

implementation

{$R *.dfm}

procedure TFormTelaItensVendaConsignacao.FormCreate(Sender: TObject);
begin
  if TblItensVendaConsig.Exists then
     begin
      TblItensVendaConsig.Close;
      TblItensVendaConsig.DeleteTable;
      TblItensVendaConsig.CreateTable;
    end
  else
    TblItensVendaConsig.CreateTable;
  TblItensVendaConsig.Open;  

  if not TblItensVendaConsig.Active then TblItensVendaConsig.Open;
end;

procedure TFormTelaItensVendaConsignacao.LabelConfirmarClick(
  Sender: TObject);
begin
  if TblItensVendaConsig.State in DsEditModes then
    TblItensVendaConsig.Post;
  FormTelaItensVendaConsignacao.ModalResult := MrOK;
end;

procedure TFormTelaItensVendaConsignacao.SpeedButton1Click(
  Sender: TObject);
begin
  FormTelaItensVendaConsignacao.ModalResult := MrCancel;
end;

end.
