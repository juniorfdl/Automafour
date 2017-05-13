unit CadastroDecreto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroDecreto = class(TFormCadastroTEMPLATE)
    SQLTemplateDECRICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateDECRA100DESCR: TStringField;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    ppReport1: TppReport;
    Pipe: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    Decretos1: TMenuItem;
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Decretos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroDecreto: TFormCadastroDecreto;

implementation

{$R *.DFM}

procedure TFormCadastroDecreto.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateDECRA100DESCR.Value = '' Then
    begin
      Beep ;
      ShowMessage('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
end;

procedure TFormCadastroDecreto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Decreto' ;
end;

procedure TFormCadastroDecreto.Decretos1Click(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

end.
