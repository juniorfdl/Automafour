unit TelaTipoDescontoItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, RXCtrls, Mask, ToolEdit, CurrEdit;

type
  TFormTelaTipoDescontoItem = class(TForm)
    DescValor: TRadioButton;
    LblNomeSistema: TRxLabel;
    DescPerc: TRadioButton;
    dxfLabel1: TRxLabel;
    EditDesconto: TCurrencyEdit;
    RxLabel1: TRxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditDescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DescValorClick(Sender: TObject);
    procedure DescPercClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTipoDescontoItem: TFormTelaTipoDescontoItem;

implementation

uses UnitLibrary, TelaItens;

{$R *.DFM}

procedure TFormTelaTipoDescontoItem.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_Escape : begin
                  TipoDescItem := '' ;
                  Close ;
                end ;
    VK_Return : begin
                   if DescValor.Checked Then
                   begin
                     TipoDescItem := 'VALOR' ;
                     TipoDescFech := 'VALOR' ;
                   end ;
                   if DescPerc.Checked Then
                   begin
                     TipoDescItem := 'PERCENTUAL' ;
                     TipoDescFech := 'PERCENTUAL' ;
                   end ;
                   EditDesconto.SetFocus;
                end ;
  end ;
end;

procedure TFormTelaTipoDescontoItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

procedure TFormTelaTipoDescontoItem.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
end;

procedure TFormTelaTipoDescontoItem.EditDescontoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_Return : begin
                  ModalResult := MrOK;
                  Close ;
                end;
  end;
end;

procedure TFormTelaTipoDescontoItem.DescValorClick(Sender: TObject);
begin
  EditDesconto.setfocus;
end;

procedure TFormTelaTipoDescontoItem.DescPercClick(Sender: TObject);
begin
  EditDesconto.setfocus;
end;

end.
