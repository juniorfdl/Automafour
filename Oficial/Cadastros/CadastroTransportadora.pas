unit CadastroTransportadora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBCtrls, Db, DBTables, RxQuery, Menus, StdCtrls, Mask,
  VarSYS, FormResources, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBActns,
  ActnList, ImgList, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTransportadora = class(TFormCadastroTEMPLATE)
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplateTRANA60RAZAOSOC: TStringField;
    SQLTemplateTRANA60NOMEFANT: TStringField;
    SQLTemplateTRANA60END: TStringField;
    SQLTemplateTRANA60BAI: TStringField;
    SQLTemplateTRANA60CID: TStringField;
    SQLTemplateTRANA8CEP: TStringField;
    SQLTemplateTRANA2UF: TStringField;
    SQLTemplateTRANA14CGC: TStringField;
    SQLTemplateTRANA15IE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateTRANA20FONE: TStringField;
    SQLTemplateTRANA20FAX: TStringField;
    SQLTemplateTRANA60EMAIL: TStringField;
    SQLTemplateTRANA60CONTATO: TStringField;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    SQLTemplateTRANA11CPF: TStringField;
    SQLTemplateTRANICODMUNICIPIO: TIntegerField;
    Label120: TLabel;
    DBEdit49: TDBEdit;
    Label44: TLabel;
    ComboUFRes: TRxDBComboBox;
    Label75: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateTRANA5NROEND: TStringField;
    DBComboBox1: TDBComboBox;
    SQLCidades: TRxQuery;
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBEdit49Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTransportadora: TFormCadastroTransportadora;

implementation

uses //CadastroVeiculo, #ver
UnitLibrary;

{$R *.DFM}

procedure TFormCadastroTransportadora.SQLTemplateBeforePost(
  DataSet: TDataSet);
var  xErros:String;
begin
  inherited;
    xErros := '';
    if SQLTemplateTRANA60RAZAOSOC.Value = '' Then
    begin
      Beep;
      ShowMessage('O campo Razão Social deve ser preenchido!');
      Abort;
    end;
    if SQLTemplateTRANA60NOMEFANT.Value = '' Then
    begin
      Beep;
      ShowMessage('O campo Nome Fantasia deve ser preenchido!');
      Abort;
    end;
    if SQLTemplateTRANA2UF.Value = '' Then
    begin
      Beep;
      ShowMessage('O campo Estado deve ser preenchido!');
      Abort;
    end;

    if (SqlTemplate.FieldByName('TRANA14CGC').AsString = '') and (SqlTemplate.FieldByName('TRANA11CPF').AsString = '') then
      xErros:= xErros +  #13+#10+ 'Informe CNPJ ou CPF';

    If SQLTemplateTRANICODMUNICIPIO.AsString = '' then
      xErros := xErros + #13+#10+'Codigo do Municipio Não Cadastrado. Verifique!';

    If SQLTemplateTRANA60CID.AsString = '' then
      xErros := xErros + #13+#10+ 'Cidade Não Cadastrada. Verifique!';

    If SQLTemplateTRANA60END.AsString = '' then
      xErros := xErros +  #13+#10+'Endereço Não Cadastrada. Verifique!';

    If SQLTemplateTRANA60BAI.AsString = '' then
      xErros := xErros +  #13+#10+'Bairro Não Cadastrado. Verifique!';
    If SQLTemplateTRANA8CEP.AsString = '' then
      xErros := xErros +  #13+#10+'CEP Não Cadastrado. Verifique!';
    If SQLTemplateTRANA5NROEND.AsString = '' then
      xErros := xErros +  #13+#10+'Numero do Endereço Não Cadastrada. Verifique!';
    if (SQLTemplateTRANA14CGC.AsString <> '') And (SQLTemplateTRANA11CPF.AsString <> '') then
    begin
      Beep;
      ShowMessage('Preencha Somente CNPJ ou o CPF');
      Abort;
    end;

    if SqlTemplate.FieldByName('TRANA11CPF').AsString <> '' then
      if Length(SqlTemplate.FieldByName('TRANA11CPF').AsString) = 11 then
        begin
          if not ValidaCPF(SqlTemplate.FieldByName('TRANA11CPF').AsString) then
            begin
               Informa('O CPF digitado é inválido !');
              Abort;
            end;
        end Else
          begin
            Informa('O CPF digitado é inválido !');
            Abort;
          end;

    if SqlTemplate.FieldByName('TRANA14CGC').AsString <> '' then
      if Length(SqlTemplate.FieldByName('TRANA14CGC').AsString) = 14 then
        begin
          if not ValidaCGC(SqlTemplate.FieldByName('TRANA14CGC').AsString) then
            begin
               Informa('O CNPJ digitado é inválido !');
              Abort;
            end;
        end  Else
          begin
            Informa('O CNPJ digitado é inválido !');
            Abort;
          end;


      IF xErros <> '' Then
        ShowMessage('Atenção... Verifique os erros abaixo:'+#13+#10+xErros);

end;

procedure TFormCadastroTransportadora.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Transportadora' ;
end;

procedure TFormCadastroTransportadora.Button1Click(Sender: TObject);
begin
  inherited;
  {if TRxSpeedButton(Sender).Name = 'Button3' then
    begin
      TranspVeiculo := True;
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroVeiculo,
                     'FormCadastroVeiculo',
                     True,
                     False,True, 'Transportadora ' + SQLTemplateTRANA60RAZAOSOC.asString);
    end ; }

end;

procedure TFormCadastroTransportadora.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
  SQLCidades.SQL.Text := 'Select Distinct  CLIEA60CIDRES from CLIENTE order by CLIEA60CIDRES';
  SQLCidades.Prepare;
  SQLCidades.Open;
  DBComboBox1.Items.Clear;
  While Not SQLCidades.Eof do
  begin
    DBComboBox1.Items.Add(SQLCidades.Fieldbyname('CLIEA60CIDRES').AsString);
    SQLCidades.Next;
  end;
  SQLCidades.Close;
end;

procedure TFormCadastroTransportadora.DBEdit49Enter(Sender: TObject);
begin
  inherited;
  If SQLTemplate.State In ([dsInsert, dsEdit]) then
  begin
    if (DBComboBox1.Text <> '') and (SQLTemplateTRANICODMUNICIPIO.asstring = '') then
    begin
      SQLCidades.SQL.Text := 'Select DISTINCT CLIEIMUNICODFED from CLIENTE where (CLIEA60CIDRES = :xCidade) AND (CLIEIMUNICODFED IS NOT NULL)';
      SQLCidades.Prepare;
      SQLCidades.ParamByName('xCidade').asstring := DBComboBox1.Text;
      SQLCidades.Open;
      If SQLCidades.FieldByName('CLIEIMUNICODFED').AsString <> '' then
        SQLTemplateTRANICODMUNICIPIO.asstring := SQLCidades.FieldByName('CLIEIMUNICODFED').AsString;
      SQLCidades.Close;
    end;
  End;
end;

end.
