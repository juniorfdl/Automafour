unit CadastroImportaDadosCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroImportaDadosCampos = class(TFormCadastroTEMPLATE)
    SQLTemplateIDCAICOD: TIntegerField;
    SQLTemplateIMDAICOD: TIntegerField;
    SQLTemplateIDCAA30CAMPO: TStringField;
    SQLTemplateIDCAIPOSICAO: TIntegerField;
    SQLTemplateIDCAITAMANHO: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    ComboCampo: TComboBox;
    Label5: TLabel;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA60URL: TStringField;
    SQLClienteCLIEN2RENDA: TBCDField;
    SQLClienteCLIEA60NOMEPAI: TStringField;
    SQLClienteCLIEA60NOMEMAE: TStringField;
    SQLClienteCLIEDNASC: TDateTimeField;
    SQLClienteCLIECESTADOCIVIL: TStringField;
    SQLClienteCLIEA60CONJUGE: TStringField;
    SQLClienteCLIEA60CONJUGEMAE: TStringField;
    SQLClienteCLIEN2CONJUGERENDA: TBCDField;
    SQLClienteCLIEDNASCCONJUGE: TDateTimeField;
    SQLClienteCLIEA60CONJUGEEMPR: TStringField;
    SQLClienteCLIEA15CONJFONEMPR: TStringField;
    SQLClienteCLIEA60EMPRESA: TStringField;
    SQLClienteCLIEA60ENDEMPRESA: TStringField;
    SQLClienteCLIEA60BAIEMPRESA: TStringField;
    SQLClienteCLIEA60CIDEMPRESA: TStringField;
    SQLClienteCLIEA2UFEMPRESA: TStringField;
    SQLClienteCLIEA8CEPEMPRESA: TStringField;
    SQLClienteCLIEDAMISEMPRESA: TDateTimeField;
    SQLClienteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteCLIETOBS: TStringField;
    SQLClienteCLIEA30NATURALIDADE: TStringField;
    SQLClienteCLIEA10CODANT: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEN2LIMITECRED: TBCDField;
    SQLClienteBANCA5COD: TStringField;
    SQLClienteCLIEA5AGENCIA: TStringField;
    SQLClienteCLIEA10CONTA: TStringField;
    SQLClienteCLIEA60TITULAR: TStringField;
    SQLClienteCLIEDABERTCONTA: TDateTimeField;
    SQLClienteTPCLICOD: TIntegerField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLClientePROFICOD: TIntegerField;
    SQLClienteVENDICOD: TIntegerField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteCLIEA254PATHFOTO: TStringField;
    SQLClienteCLIECRECAVISATRASO: TStringField;
    SQLClienteCLIECRECEBECARTAO: TStringField;
    SQLClienteCLIEDENVCARTIMP: TDateTimeField;
    SQLClienteCLIEDRETCARTIMP: TDateTimeField;
    SQLClienteCLIEDENVCARTCLI: TDateTimeField;
    SQLClienteCLIEA10CODCONV: TStringField;
    SQLClienteCLIEA20NROCARTCRED: TStringField;
    SQLClientePENDENTE: TStringField;
    SQLClienteREGISTRO: TDateTimeField;
    SQLClienteCLIEA35NROCARTCRED: TStringField;
    SQLClienteCLIEA60EMAILCONJUG: TStringField;
    SQLClienteCLIEDCASAMENTO: TDateTimeField;
    SQLClienteTPRCICOD: TIntegerField;
    SQLClienteCLIEA60ENDCOB: TStringField;
    SQLClienteCLIEA60BAICOB: TStringField;
    SQLClienteCLIEA60CIDCOB: TStringField;
    SQLClienteCLIEA2UFCOB: TStringField;
    SQLClienteCLIEA8CEPCOB: TStringField;
    SQLClientePLRCICOD: TIntegerField;
    SQLClienteCLIEA30TEMPOMORADIA: TStringField;
    SQLClienteCLIECCASAPROPRIA: TStringField;
    SpeedButton1: TSpeedButton;
    EditArq: TEdit;
    Label6: TLabel;
    OpenDialog: TOpenDialog;
    Button4: TButton;
    Memo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SQLClienteBeforePost(DataSet: TDataSet);
    procedure SQLClienteNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  Arquivo : TextFile;
  public
    { Public declarations }
  end;

var
  FormCadastroImportaDadosCampos: TFormCadastroImportaDadosCampos;

implementation

uses FormResources, DataModulo, WaitWindow;

{$R *.dfm}

procedure TFormCadastroImportaDadosCampos.FormCreate(Sender: TObject);
var
I : Integer;
begin
  inherited;
  Tabela := 'IMPORTADADOSCAMPOS';
  if DSMasterTemplate.DataSet.FieldByName('IMDAA30TABELA').AsString = 'CLIENTE' then
    begin
      for I := 0 to SQLCliente.FieldCount -1 do
        begin
         ComboCampo.Items.Add(SQLCliente.Fields[I].DisplayLabel);
        end; 
    end;
end;

procedure TFormCadastroImportaDadosCampos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateIMDAICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('IMDAICOD').AsInteger;
end;

procedure TFormCadastroImportaDadosCampos.Button4Click(Sender: TObject);
begin
  inherited;
  OpenDialog.Execute;
  EditArq.Text := OpenDialog.FileName;
end;

procedure TFormCadastroImportaDadosCampos.SpeedButton1Click(
  Sender: TObject);
var
  Texto,Result : String;
  STR : Integer;
begin
  inherited;
  SQLTemplate.Close;
  SQLTemplate.Open;
  SQLCliente.Open;
  if not SQLTemplate.IsEmpty then
    begin
      if EditArq.Text <> '' then
        begin
          if FileExists(EditArq.Text) then
            begin
              AssignFile(Arquivo,EditArq.Text);
              Reset(Arquivo);
              Dm.DB.StartTransaction;
              DSTemplate.DataSet.DisableControls;
              MakeWindowMessage('Aguarde importando registros!');
              while not Eof(Arquivo) do
                begin
                  ReadLn(Arquivo,Texto);
                  SQLTemplate.First;
                  SQLCliente.Append;
                  While not SQLTemplate.Eof do
                    begin
                      Result := Copy(Texto,SQLTemplateIDCAIPOSICAO.Value,SQLTemplateIDCAITAMANHO.Value);
                      if (SQLTemplateIDCAA30CAMPO.AsString = 'CLIEA11CPF') or (SQLTemplateIDCAA30CAMPO.AsString = 'CLIEA10RG') then
                        begin
                          for STR := 0 to Length(Result) -1 do
                            begin
                              try
                                StrToInt(Result[STR]);
                              except
                                Delete(Result,STR,1);
                              end;
                            end;
                        end;
                      if Result <> '' then
                        SQLCliente.FieldByName(SQLTemplateIDCAA30CAMPO.AsString).AsString := Result;
                      SQLTemplate.Next;
                      Application.ProcessMessages;
                    end;
                  SQLCliente.Post;
                  Application.ProcessMessages;
                end;
              CloseFile(Arquivo);
              try
                Dm.DB.Commit;
              except
                on E:Exception do
                  begin
                    Dm.DB.Rollback;
                    ShowMessage(E.Message);
                  end;
              end;
              DSTemplate.DataSet.EnableControls;
              DestroyWindow;
            end
          else
            begin
              ShowMessage('Arquivo não existe !');
              Abort;
            end;
        end
      else
        begin
          ShowMessage('Nenhum arquivo foi selecionado !');
          Abort;
        end;
    end
  else
    begin
      ShowMessage('Nenhum campo foi selecionado !');
      Abort;
    end;
end;

procedure TFormCadastroImportaDadosCampos.SQLClienteBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  Dm.CodigoAutomatico('CLIENTE',DSTemplate,SQLCliente,2,0);
end;

procedure TFormCadastroImportaDadosCampos.SQLClienteNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLClienteEMPRICOD.AsInteger := EmpresaCorrente;
end;

procedure TFormCadastroImportaDadosCampos.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if Dm.LocateByDisplayLabel(SQLCliente,ComboCampo.Text)<> '' then
    SQLTemplateIDCAA30CAMPO.AsString := Dm.LocateByDisplayLabel(SQLCliente,ComboCampo.Text)
  else
    begin
      ShowMessage('Campo não existe!');
      Abort;
    end;

  inherited;
end;

end.
