unit CadastroUnidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, DBCtrls, Db, DBTables, RxQuery, Menus, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBActns,
  ActnList, ImgList, EDBNum, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroUnidade = class(TFormCadastroTEMPLATE)
    SQLTemplateUNIDICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateUNIDA5DESCR: TStringField;
    SQLUnidadeAux: TRxQuery;
    SQLUnidadeAuxUNIDICOD: TIntegerField;
    SQLUnidadeAuxUNIDA5DESCR: TStringField;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    SQLTemplateUNIDA15DESCR: TStringField;
    SQLTemplateUNIDCFRAC: TStringField;
    SQLTemplateUNIDN3FATORCONV: TFloatField;
    DBCheckFrac: TDBCheckBox;
    DBMgFixaVarejo: TEvDBNumEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUnidade: TFormCadastroUnidade;

implementation

uses UnitLibrary;

{$R *.DFM}

procedure TFormCadastroUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'UNIDADE';
end;

procedure TFormCadastroUnidade.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateUNIDA5DESCR.AsString = SQLTemplateUNIDA15DESCR.AsString Then
    begin
      Informa('O campo Descrição deve ser DIFERENTE da SIGLA!') ;
      Abort ;
    end;

  if SQLTemplateUNIDN3FATORCONV.Value <= 0.00 Then
    begin
      Informa('O campo Fator Conversao deve ser preenchido com Valor Maior que Zero!') ;
      Abort ;
    end;

  // Testar se a Unidade ja existe!!!
  SQLUnidadeAux.Close;
  SQLUnidadeAux.MacroByName('Descricao').Value := 'UNIDA5DESCR = ' + '"' + SQLTemplateUNIDA5DESCR.Value + '"';
  SQLUnidadeAux.Open;
  If (not SQLUnidadeAux.IsEmpty) and (dstemplate.State = dsinsert) Then
    Begin
      Beep ;
      ShowMessage('Esta Unidade já está cadastrada!');
      Abort;
    End;
end;

procedure TFormCadastroUnidade.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateUNIDCFRAC.Value := 'N';
  SQLTemplateUNIDN3FATORCONV.Value := 1;
end;

end.
