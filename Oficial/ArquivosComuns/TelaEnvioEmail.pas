unit TelaEnvioEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons,
  jpeg, DBCtrls, DB, DBTables, RxQuery, Grids, DBGrids, ImgList, RXCtrls,
  ComCtrls, StrUtils, RxRichEd, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  ACBrBase, ACBrMail;

type
  TFormTelaEnvioGeracaoEmail = class(TFormTelaGeralTEMPLATE)
    SQLCliente: TRxQuery;
    SQLClienteDependente: TRxQuery;
    PageControl: TPageControl;
    Filtro: TTabSheet;
    DBGridLista: TDBGrid;
    Button1: TRxSpeedButton;
    Button2: TRxSpeedButton;
    Button3: TRxSpeedButton;
    ImageList1: TImageList;
    Email: TTabSheet;
    SQLGeraMail: TRxQuery;
    SQLGeraMailMAILTREMETENTE: TStringField;
    SQLGeraMailMAILTDESTINO: TStringField;
    SQLGeraMailMAILTASSUNTO: TStringField;
    SQLGeraMailMAILTMENSAGEM: TMemoField;
    SQLGeraMailMAILDDATA: TDateTimeField;
    SQLGeraMailMAILTPATHANEXO: TStringField;
    SQLGeraMailMAILCSTATUS: TStringField;
    EnviaEmail: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SQLTemp: TRxQuery;
    SQLGeraMailMAILICOD: TIntegerField;
    Panel4: TPanel;
    LabelEnviar: TLabel;
    LabelEnviado: TLabel;
    Panel5: TPanel;
    ButtonAnexar: TSpeedButton;
    LabelAnexo: TLabel;
    OpenDialog: TOpenDialog;
    ButtonLimparAnexo: TSpeedButton;
    SQLConfigEmail: TRxQuery;
    DSSQLGeraMail: TDataSource;
    DSSQLCliente: TDataSource;
    DSSQLClienteDependente: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    ButtonEnviarEmail: TSpeedButton;
    ButtonGeraEmail: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    Label3: TLabel;
    EditAssunto: TEdit;
    Panel3: TPanel;
    GroupPeriodoIni: TGroupBox;
    Label2: TLabel;
    ComboDiaIni: TComboBox;
    ComboMesIni: TComboBox;
    GroupPeriodoFin: TGroupBox;
    Label1: TLabel;
    ComboDiaFin: TComboBox;
    ComboMesFin: TComboBox;
    SpeedButton1: TSpeedButton;
    RadioEmail: TRadioGroup;
    GroupBox1: TGroupBox;
    MemoTags: TMemo;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA60URL: TStringField;
    SQLClienteCLIEN2RENDA: TFloatField;
    SQLClienteCLIEN2LIMITECRED: TFloatField;
    SQLClienteCLIEA60NOMEPAI: TStringField;
    SQLClienteCLIEA60NOMEMAE: TStringField;
    SQLClienteCLIEDNASC: TDateTimeField;
    SQLClienteCLIECESTADOCIVIL: TStringField;
    SQLClienteTPCLICOD: TIntegerField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLClientePROFICOD: TIntegerField;
    SQLClienteVENDICOD: TIntegerField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteTPRCICOD: TIntegerField;
    SQLClientePLRCICOD: TIntegerField;
    SQLClienteDependenteCLIEA13ID: TStringField;
    SQLClienteDependenteEMPRICOD: TIntegerField;
    SQLClienteDependenteCLIEICOD: TIntegerField;
    SQLClienteDependenteCLIEA5FISJURID: TStringField;
    SQLClienteDependenteCLIEA14CGC: TStringField;
    SQLClienteDependenteCLIEA20IE: TStringField;
    SQLClienteDependenteCLIEA11CPF: TStringField;
    SQLClienteDependenteCLIEA10RG: TStringField;
    SQLClienteDependenteCLIEA60RAZAOSOC: TStringField;
    SQLClienteDependenteCLIEA60NOMEFANT: TStringField;
    SQLClienteDependenteCLIEA60CONTATO: TStringField;
    SQLClienteDependenteCLIEA15FONE1: TStringField;
    SQLClienteDependenteCLIEA15FONE2: TStringField;
    SQLClienteDependenteCLIEA15FAX: TStringField;
    SQLClienteDependenteCLIEA30OUTROSDOC: TStringField;
    SQLClienteDependenteCLIECSEXO: TStringField;
    SQLClienteDependenteCLIEA60PROFISSAO: TStringField;
    SQLClienteDependenteCLIEA60ENDRES: TStringField;
    SQLClienteDependenteCLIEA60BAIRES: TStringField;
    SQLClienteDependenteCLIEA60CIDRES: TStringField;
    SQLClienteDependenteCLIEA2UFRES: TStringField;
    SQLClienteDependenteCLIEA8CEPRES: TStringField;
    SQLClienteDependenteCLIEA60EMAIL: TStringField;
    SQLClienteDependenteCLIEA60URL: TStringField;
    SQLClienteDependenteCLIEN2RENDA: TFloatField;
    SQLClienteDependenteCLIEN2LIMITECRED: TFloatField;
    SQLClienteDependenteCLIEA60NOMEPAI: TStringField;
    SQLClienteDependenteCLIEA60NOMEMAE: TStringField;
    SQLClienteDependenteCLIEDNASC: TDateTimeField;
    SQLClienteDependenteCLIECESTADOCIVIL: TStringField;
    SQLClienteDependenteCLIEA60CONJUGE: TStringField;
    SQLClienteDependenteCLIEA60CONJUGEMAE: TStringField;
    SQLClienteDependenteCLIEN2CONJUGERENDA: TFloatField;
    SQLClienteDependenteCLIEDNASCCONJUGE: TDateTimeField;
    SQLClienteDependenteCLIEA60CONJUGEEMPR: TStringField;
    SQLClienteDependenteCLIEA15CONJFONEMPR: TStringField;
    SQLClienteDependenteCLIEA60EMPRESA: TStringField;
    SQLClienteDependenteCLIEA60ENDEMPRESA: TStringField;
    SQLClienteDependenteCLIEA60BAIEMPRESA: TStringField;
    SQLClienteDependenteCLIEA60CIDEMPRESA: TStringField;
    SQLClienteDependenteCLIEA2UFEMPRESA: TStringField;
    SQLClienteDependenteCLIEA8CEPEMPRESA: TStringField;
    SQLClienteDependenteCLIEDAMISEMPRESA: TDateTimeField;
    SQLClienteDependenteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteDependenteBANCA5COD: TStringField;
    SQLClienteDependenteCLIEA5AGENCIA: TStringField;
    SQLClienteDependenteCLIEA10CONTA: TStringField;
    SQLClienteDependenteCLIEA60TITULAR: TStringField;
    SQLClienteDependenteCLIEDABERTCONTA: TDateTimeField;
    SQLClienteDependenteCLIETOBS: TStringField;
    SQLClienteDependenteTPCLICOD: TIntegerField;
    SQLClienteDependenteMTBLICOD: TIntegerField;
    SQLClienteDependentePROFICOD: TIntegerField;
    SQLClienteDependenteVENDICOD: TIntegerField;
    SQLClienteDependenteCLIEDCAD: TDateTimeField;
    SQLClienteDependenteCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteDependenteCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteDependenteCLIEA254PATHFOTO: TStringField;
    SQLClienteDependenteCLIECRECAVISATRASO: TStringField;
    SQLClienteDependenteCLIEA30NATURALIDADE: TStringField;
    SQLClienteDependenteCLIECRECEBECARTAO: TStringField;
    SQLClienteDependenteCLIEDENVCARTIMP: TDateTimeField;
    SQLClienteDependenteCLIEDRETCARTIMP: TDateTimeField;
    SQLClienteDependenteCLIEDENVCARTCLI: TDateTimeField;
    SQLClienteDependenteCLIEA10CODCONV: TStringField;
    SQLClienteDependenteCLIEA10CODANT: TStringField;
    SQLClienteDependenteCLIEA20NROCARTCRED: TStringField;
    SQLClienteDependentePENDENTE: TStringField;
    SQLClienteDependenteREGISTRO: TDateTimeField;
    SQLClienteDependenteCLIEA35NROCARTCRED: TStringField;
    SQLClienteDependenteCLIEA60EMAILCONJUG: TStringField;
    SQLClienteDependenteCLIEDCASAMENTO: TDateTimeField;
    SQLClienteDependenteTPRCICOD: TIntegerField;
    SQLClienteDependenteCLIEA60ENDCOB: TStringField;
    SQLClienteDependenteCLIEA60BAICOB: TStringField;
    SQLClienteDependenteCLIEA60CIDCOB: TStringField;
    SQLClienteDependenteCLIEA2UFCOB: TStringField;
    SQLClienteDependenteCLIEA8CEPCOB: TStringField;
    SQLClienteDependentePLRCICOD: TIntegerField;
    SQLClienteDependenteCLIEA30TEMPOMORADIA: TStringField;
    SQLClienteDependenteCLIECCASAPROPRIA: TStringField;
    SQLClienteDependenteCLIEA30LOCALIMOV1: TStringField;
    SQLClienteDependenteCLIEA30LOCALIMOV2: TStringField;
    SQLClienteDependenteCLIEA30MODVEICULO: TStringField;
    SQLClienteDependenteCLIEA30TIPOIMOV1: TStringField;
    SQLClienteDependenteCLIEA30TIPOIMOV2: TStringField;
    SQLClienteDependenteCLIEA4ANOVEICULO: TStringField;
    SQLClienteDependenteCLIEA60IMOB: TStringField;
    SQLClienteDependenteCLIEA8PLACAVEICULO: TStringField;
    SQLClienteDependenteCLIECSTATUSIMOV1: TStringField;
    SQLClienteDependenteCLIECSTATUSIMOV2: TStringField;
    SQLClienteDependenteCLIEIDIAVCTOCARTAO: TIntegerField;
    SQLClienteDependenteCLIEN2VLRALUGUEL: TFloatField;
    SQLClienteDependenteCLDPICOD: TIntegerField;
    SQLClienteDependenteCLDPA60NOME: TStringField;
    SQLClienteDependenteCLDPA15PARENTESCO: TStringField;
    SQLClienteDependenteCLDPCAUTORIZADO: TStringField;
    SQLClienteDependenteCLDPDNASC: TDateTimeField;
    SQLClienteDependenteCLDPA10RG: TStringField;
    SQLClienteDependenteCLDPA11CPF: TStringField;
    SQLClienteDependenteCLDPA15FONE: TStringField;
    SQLClienteDependenteCLDPA60EMAIL: TStringField;
    EditMensagem: TRxRichEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    EditDiretorio: TDirectoryEdit;
    BtExecutar: TSpeedButton;
    SQLClienteCLIEA60CONJUGE: TStringField;
    SQLClienteCLIEDNASCCONJUGE: TDateField;
    SQLClienteCLIEDCASAMENTO: TDateField;
    ACBrMail: TACBrMail;
    SQLConfigEmailEMPRA50EMAILHOST: TStringField;
    SQLConfigEmailEMPRIEMAILPORTA: TIntegerField;
    SQLConfigEmailEMPRA50EMAILSENHA: TStringField;
    SQLConfigEmailEMPRA1SSL: TStringField;
    SQLConfigEmailEMPRA60EMAILCOPIA: TStringField;
    SQLConfigEmailEMPRA1TSL: TStringField;
    SQLConfigEmailEMPRA75EMAILUSUARIO: TStringField;
    SQLConfigEmailEMPRA60NOMEFANT: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonGeraEmailClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EnviaEmailEnter(Sender: TObject);
    procedure ButtonEnviarEmailClick(Sender: TObject);
    procedure SMTPConnectionFailed(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ButtonAnexarClick(Sender: TObject);
    procedure ButtonLimparAnexoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function  VerificaTags(Texto : String) : String;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
  EmailEnviado : Integer;
  Anexo : String;
  Arquivo : TextFile;
    { Public declarations }
  end;

var
  FormTelaEnvioGeracaoEmail: TFormTelaEnvioGeracaoEmail;

implementation

uses DataModulo, UnitLibrary, WaitWindow;

{$R *.dfm}

procedure TFormTelaEnvioGeracaoEmail.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SQLCliente.Close;
  if RadioEmail.ItemIndex < 0 then
    begin
      Application.MessageBox('Você deve selecionar um tipo de Email para ativar o filtro','Informa',MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL);
      RadioEmail.SetFocus;
      Abort;
    end;
  Case RadioEmail.ItemIndex of
  0 : begin
        SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From Cliente.ClIEDCASAMENTO)';
        SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From Cliente.ClIEDCASAMENTO)';
        SQLCliente.MacroByName('MesInicial').Value := ComboMesIni.Text ;
        SQLCliente.MacroByName('MesFinal').Value   := ComboMesFin.Text ;
        SQLCliente.MacroByName('DiaInicial').Value := ComboDiaIni.Text ;
        SQLCliente.MacroByName('DiaFinal').Value   := ComboDiaFin.Text ;
        SQLCliente.MacroByName('MFiltroEmail').Value := 'Cliente.CLIEA60EMAIL is not null or Cliente.CLIEA60EMAILCONJUG is not null';
        DBGridLista.DataSource := DSSQLCliente;
        SQLCliente.Open;
      end;
  1 : begin
        SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From Cliente.CLIEDNASCCONJUGE)';
        SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From Cliente.CLIEDNASCCONJUGE)';
        SQLCliente.MacroByName('MesInicial').Value := ComboMesIni.Text ;
        SQLCliente.MacroByName('MesFinal').Value   := ComboMesFin.Text ;
        SQLCliente.MacroByName('DiaInicial').Value := ComboDiaIni.Text ;
        SQLCliente.MacroByName('DiaFinal').Value   := ComboDiaFin.Text ;
        SQLCliente.MacroByName('MFiltroEmail').Value := 'Cliente.CLIEA60EMAIL is not null';
        DBGridLista.DataSource := DSSQLCliente;
        SQLCliente.Open;
      end;
  2 : begin
        SQLClienteDependente.Close;
        SQLClienteDependente.MacroByName('MFiltroMes').Value := 'Extract(Month From ClienteDependente.CLDPDNASC)';
        SQLClienteDependente.MacroByName('MFiltroDia').Value := 'Extract(Day From ClienteDependente.CLDPDNASC)';
        SQLClienteDependente.MacroByName('MesInicial').Value := ComboMesIni.Text ;
        SQLClienteDependente.MacroByName('MesFinal').Value   := ComboMesFin.Text ;
        SQLClienteDependente.MacroByName('DiaInicial').Value := ComboDiaIni.Text ;
        SQLClienteDependente.MacroByName('DiaFinal').Value   := ComboDiaFin.Text ;
        SQLClienteDependente.MacroByName('MFiltroEmail').Value  := 'Cliente.CLIEA60EMAIL is not null';
        DBGridLista.DataSource := DSSQLClienteDependente;
        SQLClienteDependente.Open;
      end;
  3 : begin
        SQLCliente.Close;
        SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From Cliente.CLIEDNASC)';
        SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From Cliente.CLIEDNASC)';
        SQLCliente.MacroByName('MesInicial').Value := ComboMesIni.Text ;
        SQLCliente.MacroByName('MesFinal').Value   := ComboMesFin.Text ;
        SQLCliente.MacroByName('DiaInicial').Value := ComboDiaIni.Text ;
        SQLCliente.MacroByName('DiaFinal').Value   := ComboDiaFin.Text ;
        SQLCliente.MacroByName('MFiltroEmail').Value := 'Cliente.CLIEA60EMAIL is not null';
        DBGridLista.DataSource := DSSQLCliente;
        SQLCliente.Open;
      end;
  4 : begin
        SQLCliente.Close;
        SQLCliente.MacroByName('MFiltroMes').Value := 'Extract(Month From Cliente.CLIEDNASC)';
        SQLCliente.MacroByName('MFiltroDia').Value := 'Extract(Day From Cliente.CLIEDNASC)';
        SQLCliente.MacroByName('MesInicial').Value := ComboMesIni.Text ;
        SQLCliente.MacroByName('MesFinal').Value   := ComboMesFin.Text ;
        SQLCliente.MacroByName('DiaInicial').Value := ComboDiaIni.Text ;
        SQLCliente.MacroByName('DiaFinal').Value   := ComboDiaFin.Text ;
        SQLCliente.MacroByName('MFiltroEmail').Value := 'Cliente.CLIEA60EMAILCONJUG is not null';
        DBGridLista.DataSource := DSSQLCliente;
        SQLCliente.Open;
      end;
  5 : begin
        SQLClienteDependente.Close;
        SQLClienteDependente.MacroByName('MFiltroMes').Value := 'Extract(Month From Cliente.CLIEDNASC)';
        SQLClienteDependente.MacroByName('MFiltroDia').Value := 'Extract(Day From Cliente.CLIEDNASC)';
        SQLClienteDependente.MacroByName('MesInicial').Value := ComboMesIni.Text ;
        SQLClienteDependente.MacroByName('MesFinal').Value   := ComboMesFin.Text ;
        SQLClienteDependente.MacroByName('DiaInicial').Value := ComboDiaIni.Text ;
        SQLClienteDependente.MacroByName('DiaFinal').Value   := ComboDiaFin.Text ;
        SQLClienteDependente.MacroByName('MFiltroEmail').Value  := 'ClienteDependente.CLDPA60EMAIL is not null';
        DBGridLista.DataSource := DSSQLClienteDependente;
        SQLClienteDependente.Open;
      end;
  6 : begin
        SQLCliente.Close;
        SQLCliente.SQL.Clear;
        SQLCliente.sql.Add('Select * from Cliente Where CLIEA60EMAIL is not null and CLIEA60EMAIL <> ""');
        DBGridLista.DataSource := DSSQLCliente;
        SQLCliente.Open;
      end;
  end;
end;

procedure TFormTelaEnvioGeracaoEmail.Button1Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 0;
end;

procedure TFormTelaEnvioGeracaoEmail.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  EditAssunto.Text := '';
  EditMensagem.Lines.Clear;
end;

procedure TFormTelaEnvioGeracaoEmail.Button2Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 1;
  With SQLGeraMail do
    begin
      SQLGeraMail.Close;
      SQLGeraMail.SQL.Clear;
      SQLGeraMail.SQL.Add('SELECT * FROM EMAIL WHERE MAILCSTATUS = "N"');
      SQLGeraMail.Open;
    end;
  With SQLTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT Count(MAILICOD) FROM EMAIL WHERE MAILCSTATUS = "N"');
      Open;
    end;
  LabelEnviar.Caption := IntToStr(SQLTemp.FieldByName('Count').AsInteger) + ' Mensagen(s) à enviar ';
  LabelEnviar.Update;
end;

procedure TFormTelaEnvioGeracaoEmail.ButtonGeraEmailClick(Sender: TObject);
Var
I : Integer;
begin
  inherited;
  if not SQLGeraMail.Active then SQLGeraMail.Open;

  With SQLTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(MAILICOD) FROM EMAIL');
      Open;
    end;
  I:=0;
  if SQLTemp.FieldByName('MAX').AsFloat > 0 then
    I := SQLTemp.FieldByName('MAX').AsInteger
  else
    I := 1;
{
A - Para o titular e conjugê em data de casamento
B - Para o titular em data de aniversário do conjugê
C - Para o titular em data de aniversário dos dependentes
D - Para o titular em seu aniversário
E - Para o conjugê em data de aniversário do titular
F - Para os dependentes em data de aniversário do titular
  }
  case RadioEmail.ItemIndex of
    0 : begin
          if not SQLCliente.Active then SQLCliente.Open;
          SQLCliente.First;

          if SQLCliente.IsEmpty then
            begin
              Application.MessageBox('Nenhum Filtro foi selecionado, não é possível gerar a lista !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
              Abort;
            end;
          While not SQLCliente.Eof do
            begin
              SQLGeraMail.Append;
              SQLGeraMail.FieldByName('MAILICOD').AsInteger := I;
              Inc(I);
              SQLGeraMail.FieldByName('MAILTREMETENTE').AsString := LowerCase(SQLConfigEmail.FieldByName('EMPRA75EMAILUSUARIO').AsString);

              if SQLCliente.FieldByName('CLIEA60EMAIL').AsString <> '' then
                if SQLCliente.FieldByName('CLIEA60EMAILCONJUG').AsString <> '' then
                   SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(SQLCliente.FieldByName('CLIEA60EMAIL').AsString + ';' + SQLCliente.FieldByName('CLIEA60EMAILCONJUG').AsString)
                else
                  SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(SQLCliente.FieldByName('CLIEA60EMAIL').AsString)
              else
                if SQLCliente.FieldByName('CLIEA60EMAILCONJUG').AsString <> '' then
                  SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(SQLCliente.FieldByName('CLIEA60EMAILCONJUG').AsString)
                else
                  Continue;

              SQLGeraMail.FieldByName('MAILTASSUNTO').AsString   := VerificaTags(EditAssunto.Text);
              SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString  := VerificaTags(EditMensagem.Text);
              SQLGeraMail.FieldByName('MAILDDATA').AsDateTime    := Now;
              if Anexo <> '' then
                SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString := Anexo;
              SQLGeraMail.FieldByName('MAILCSTATUS').AsString    := 'N';
              SQLGeraMail.Post;
              SQLCliente.Next;
            end;
        end;
  1,3 : begin
          if not SQLCliente.Active then SQLCliente.Open;
          SQLCliente.First;


          if SQLCliente.IsEmpty then
            begin
              Application.MessageBox('Nenhum Filtro foi selecionado, não é possível gerar a lista !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
              Abort;
            end;

          While not SQLCliente.Eof do
            begin
              SQLGeraMail.Append;
              SQLGeraMail.FieldByName('MAILICOD').AsInteger := I;
              Inc(I);
              SQLGeraMail.FieldByName('MAILTREMETENTE').AsString := LowerCase(SQLConfigEmail.FieldByName('EMPRA75EMAILUSUARIO').AsString);
              SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(SQLCliente.FieldByName('CLIEA60EMAIL').AsString) ;
              SQLGeraMail.FieldByName('MAILTASSUNTO').AsString   := VerificaTags(EditAssunto.Text);
              SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString  := VerificaTags(EditMensagem.Text);
              SQLGeraMail.FieldByName('MAILDDATA').AsDateTime    := Now;
              if Anexo <> '' then
                SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString := Anexo;
              SQLGeraMail.FieldByName('MAILCSTATUS').AsString    := 'N';
              SQLGeraMail.Post;
              SQLCliente.Next;
            end;
         end;
    2 : begin
          if not SQLClienteDependente.Active then SQLClienteDependente.Open;
          SQLClienteDependente.First;

          if SQLClienteDependente.IsEmpty then
            begin
              Application.MessageBox('Nenhum Filtro foi selecionado, não é possível gerar a lista !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
              Abort;
            end;
          While not SQLClienteDependente.Eof do
            begin
              SQLGeraMail.Append;
              SQLGeraMail.FieldByName('MAILICOD').AsInteger := I;
              Inc(I);
              SQLGeraMail.FieldByName('MAILTREMETENTE').AsString := LowerCase(SQLConfigEmail.FieldByName('EMPRA75EMAILUSUARIO').AsString);
              SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(SQLClienteDependente.FieldByName('CLIEA60EMAIL').AsString) ;
              SQLGeraMail.FieldByName('MAILTASSUNTO').AsString   := VerificaTags(EditAssunto.Text);
              SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString  := VerificaTags(EditMensagem.Text);
              SQLGeraMail.FieldByName('MAILDDATA').AsDateTime    := Now;
              if Anexo <> '' then
                SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString := Anexo;
              SQLGeraMail.FieldByName('MAILCSTATUS').AsString    := 'N';
              SQLGeraMail.Post;
              SQLClienteDependente.Next;
            end;
         end;
    4 : begin
          if not SQLCliente.Active then SQLCliente.Open;
          SQLCliente.First;

          if SQLCliente.IsEmpty then
            begin
              Application.MessageBox('Nenhum Filtro foi selecionado, não é possível gerar a lista !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
              Abort;
            end;
          While not SQLCliente.Eof do
            begin
              SQLGeraMail.Append;
              SQLGeraMail.FieldByName('MAILICOD').AsInteger := I;
              Inc(I);
              SQLGeraMail.FieldByName('MAILTREMETENTE').AsString := LowerCase(SQLConfigEmail.FieldByName('EMPRA75EMAILUSUARIO').AsString);
              SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(SQLCliente.FieldByName('CLIEA60EMAILCONJUG').AsString);
              SQLGeraMail.FieldByName('MAILTASSUNTO').AsString   := VerificaTags(EditAssunto.Text);
              SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString  := VerificaTags(EditMensagem.Text);
              SQLGeraMail.FieldByName('MAILDDATA').AsDateTime    := Now;
              if Anexo <> '' then
                SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString := Anexo;
              SQLGeraMail.FieldByName('MAILCSTATUS').AsString    := 'N';
              SQLGeraMail.Post;
              SQLCliente.Next;
            end;
        end;

    5 : begin
          if not SQLClienteDependente.Active then SQLClienteDependente.Open;
          SQLClienteDependente.First;

          if SQLClienteDependente.IsEmpty then
            begin
              Application.MessageBox('Nenhum Filtro foi selecionado, não é possível gerar a lista !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
              Abort;
            end;
          While not SQLClienteDependente.Eof do
            begin
              SQLGeraMail.Append;
              SQLGeraMail.FieldByName('MAILICOD').AsInteger := I;
              Inc(I);
              SQLGeraMail.FieldByName('MAILTREMETENTE').AsString := LowerCase(SQLConfigEmail.FieldByName('EMPRA75EMAILUSUARIO').AsString) ;
              SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(SQLClienteDependente.FieldByName('CLDPA60EMAIL').AsString) ;
              SQLGeraMail.FieldByName('MAILTASSUNTO').AsString   := VerificaTags(EditAssunto.Text);
              SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString  := VerificaTags(EditMensagem.Text);
              SQLGeraMail.FieldByName('MAILDDATA').AsDateTime    := Now;
              if Anexo <> '' then
                SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString := Anexo;
              SQLGeraMail.FieldByName('MAILCSTATUS').AsString    := 'N';
              SQLGeraMail.Post;
              SQLClienteDependente.Next;
            end;
         end;

    6 : begin
          if not SQLCliente.Active then SQLCliente.Open;
          SQLCliente.First;

          if SQLCliente.IsEmpty then
            begin
              Application.MessageBox('Nenhum Filtro foi selecionado, não é possível gerar a lista !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
              Abort;
            end;
          While not SQLCliente.Eof do
            begin
              SQLGeraMail.Append;
              SQLGeraMail.FieldByName('MAILICOD').AsInteger := I;
              Inc(I);
              SQLGeraMail.FieldByName('MAILTREMETENTE').AsString := LowerCase(SQLConfigEmail.FieldByName('EMPRA75EMAILUSUARIO').AsString);
              SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(SQLCliente.FieldByName('CLIEA60EMAIL').AsString);
              SQLGeraMail.FieldByName('MAILTASSUNTO').AsString   := VerificaTags(EditAssunto.Text);
              SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString  := VerificaTags(EditMensagem.Text);
              SQLGeraMail.FieldByName('MAILDDATA').AsDateTime    := Now;
              if Anexo <> '' then
                SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString := Anexo;
              SQLGeraMail.FieldByName('MAILCSTATUS').AsString    := 'N';
              SQLGeraMail.Post;
              SQLCliente.Next;
            end;
        end;

   end;
  With SQLGeraMail do
    begin
      SQLGeraMail.Close;
      SQLGeraMail.SQL.Clear;
      SQLGeraMail.SQL.Add('SELECT * FROM EMAIL WHERE MAILCSTATUS = "N"');
      SQLGeraMail.Open;
    end;
  Informa('Lista Gerada Com Sucesso!');
  Button2.Click;
end;

procedure TFormTelaEnvioGeracaoEmail.Button3Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 2;
  With SQLGeraMail do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT * FROM EMAIL WHERE MAILCSTATUS = "S"');
      Open;
    end;
end;

procedure TFormTelaEnvioGeracaoEmail.EnviaEmailEnter(Sender: TObject);
begin
  inherited;
  if not SQLGeraMail.Active then
    SQLGeraMail.Open;
end;

procedure TFormTelaEnvioGeracaoEmail.ButtonEnviarEmailClick(Sender: TObject);
begin
  inherited;
  if SQLConfigEmail.FieldByName('EMPRA50EMAILHOST').AsString = '' then
    begin
      Application.MessageBox('Informe o Servidor de Email no Cad.Empresa...','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  if SQLConfigEmail.FieldByName('EMPRIEMAILPORTA').AsString = '' then
    begin
      Application.MessageBox('Informe a Porta de comunicação no Cad.Empresa...','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  if SQLConfigEmail.FieldByName('EMPRA75EMAILUSUARIO').AsString = '' then
    begin
      Application.MessageBox('Informe o Email do Rementente no Cad.Empresa...','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  With SQLTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT Count(MAILICOD) FROM EMAIL WHERE MAILCSTATUS = "N"');
      Open;
    end;
  LabelEnviar.Caption := IntToStr(SQLTemp.FieldByName('Count').AsInteger) + ' Mensagen(s) à enviar ';
  LabelEnviar.Update;

  ACBrMail.Clear;
  try
    ACBrMail.From     := SQLConfigEmailEMPRA75EMAILUSUARIO.AsString;
    ACBrMail.FromName := SQLConfigEmailEMPRA60NOMEFANT.AsString;
    ACBrMail.Host     := SQLConfigEmailEMPRA50EMAILHOST.AsString;
    ACBrMail.Port     := SQLConfigEmailEMPRIEMAILPORTA.AsString;
    ACBrMail.Username := SQLConfigEmailEMPRA75EMAILUSUARIO.AsString;
    ACBrMail.Password := SQLConfigEmailEMPRA50EMAILSENHA.AsString;
    ACBrMail.Subject  := SQLGeraMail.FieldByName('MAILTASSUNTO').AsString;
    ACBrMail.IsHTML   := True;
    ACBrMail.Body.Text:= SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString;

    if SQLConfigEmailEMPRA1SSL.Value = 'S' then
      ACBrMail.SetSSL := true
    else
      ACBrMail.SetSSL := false;

    if SQLConfigEmailEMPRA1TSL.Value = 'S' then
      ACBrMail.SetTLS := true
    else
      ACBrMail.SetTLS := false;


    if SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString <> '' then
      ACBrMail.AddAttachment(SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString,'Anexo');

    EmailEnviado := 0;
    SQLGeraMail.First;
    while not SQLGeraMail.Eof do
      begin
        SQLGeraMail.Edit;
        try
          Application.ProcessMessages;
          ACBrMail.AddAddress(SQLGeraMail.FieldByName('MAILTDESTINO').AsString,'');
          ACBrMail.Send;
          SQLGeraMail.FieldByName('MAILCSTATUS').AsString := 'S';
        except
          SQLGeraMail.FieldByName('MAILCSTATUS').AsString := 'N';
          Showmessage('Falha ao enviar email');
          Application.ProcessMessages;
        end;
        SQLGeraMail.Post;
        Inc(EmailEnviado);
        LabelEnviado.Caption := IntToStr(EmailEnviado) + ' Mensagem(s) enviada(s) ';
        LabelEnviado.Update;
        SQLGeraMail.Next;
        Application.ProcessMessages;
    end;
    Application.MessageBox('Término de Enivo das Mensagem(s)','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
  except
     on E : Exception do
        begin
//            Informa('Ocorreu um erro ao enviar o(s) email(s), informe a messagem abaixo para o suporte:' + #13 +
//                    E.Message + #13 + E.ClassName);
//            Abort;
        end;
  end;
end;

procedure TFormTelaEnvioGeracaoEmail.SMTPConnectionFailed(Sender: TObject);
begin
  inherited;
  Application.MessageBox('Não foi possível conectar com o servidor !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
  Abort;
end;

procedure TFormTelaEnvioGeracaoEmail.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  With SQLTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM EMAIL WHERE MAILCSTATUS = "N"');
      ExecSQL;
    end;
  With SQLTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT Count(MAILICOD) FROM EMAIL WHERE MAILCSTATUS = "N"');
      Open;
    end;
  LabelEnviar.Caption := IntToStr(SQLTemp.FieldByName('Count').AsInteger) + ' Mensagen(s) à enviar ';
  LabelEnviar.Update;
  ShowMessage('Lista apagada com sucesso');
  SQLGeraMail.Close;
end;

procedure TFormTelaEnvioGeracaoEmail.ButtonAnexarClick(Sender: TObject);
begin
  inherited;
  OpenDialog.Execute;
  Anexo := OpenDialog.FileName;
  LabelAnexo.Caption := OpenDialog.FileName;
  LabelAnexo.Update;
end;

procedure TFormTelaEnvioGeracaoEmail.ButtonLimparAnexoClick(
  Sender: TObject);
begin
  inherited;
  Anexo := '';
  LabelAnexo.Caption := 'Caminho/Nome do arquivo anexo...';
  LabelAnexo.Update;
end;

procedure TFormTelaEnvioGeracaoEmail.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigEmail.close;
  SQLConfigEmail.macrobyname('Mfiltro').Value := 'EMPRICOD='+DM.SQLEmpresaEMPRICOD.AsString;
  SQLConfigEmail.open;
  PageControl.ActivePageIndex := 0;
  PageControl.TabHeight := 1;
  PageControl.TabWidth  := 1;
end;

function TFormTelaEnvioGeracaoEmail.VerificaTags(Texto : String) : String;
var
 Str : String;
begin
 Str := Texto;
 if (Pos('<NomeTitular>',Str) > 0) then
   begin
     if SQLClienteCLIEA60RAZAOSOC.AsString <> '' then
       Str := AnsiReplaceStr(Str,'<NomeTitular>',SQLClienteCLIEA60RAZAOSOC.AsString)
     else
       Str := AnsiReplaceStr(Str,'<NomeTitular>','');
   end;
 if Pos('<NomeConjuge>',Str) > 0 then
   begin
     if SQLClienteCLIEA60CONJUGE.AsString <> '' then
       Str := AnsiReplaceStr(Str,'<NomeConjuge>',SQLClienteCLIEA60CONJUGE.AsString)
     else
       Str := AnsiReplaceStr(Str,'<NomeConjuge>','');
   end;
 if Pos('<Hoje>',Str) > 0 then
   begin
     STR := AnsiReplaceStr(Str,'<Hoje>',FormatDateTime('dd/mm/yyyy',Date));
   end;
 if Pos('<NascTitular>',Str) > 0 then
   begin
     if SQLClienteCLIEDNASC.AsVariant <> Null then
       STR := AnsiReplaceStr(Str,'<NascTitular>',FormatDateTime('dd/mm',SQLClienteCLIEDNASC.AsDateTime))
     else
       STR := AnsiReplaceStr(Str,'<NascTitular>','');
   end;
 if Pos('<NascConjuge>',Str) > 0 then
   begin
     if SQLClienteCLIEDNASCCONJUGE.AsVariant <> Null then
       STR := AnsiReplaceStr(Str,'<NascConjuge>',FormatDateTime('dd/mm',SQLClienteCLIEDNASCCONJUGE.AsDateTime))
     else
       STR := AnsiReplaceStr(Str,'<NascConjuge>','');
   end;
 if Pos('<DataCasamento>',Str) > 0 then
   begin
     if SQLClienteCLIEDCASAMENTO.AsVariant <> Null then
       STR := AnsiReplaceStr(Str,'<DataCasamento>',FormatDateTime('dd/mm',SQLClienteCLIEDCASAMENTO.AsDateTime))
     else
       STR := AnsiReplaceStr(Str,'<DataCasamento>','');
   end;
 VerificaTags := STR;
end;
procedure TFormTelaEnvioGeracaoEmail.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Sender as TForm).ActiveControl.ClassType = TRxRichEdit then
    Exit;
  inherited;
end;

procedure TFormTelaEnvioGeracaoEmail.SpeedButton3Click(Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
begin
  inherited;
  if not SQLCliente.Active then
    begin
      ShowMessage('É necessário primeiro realizar o filtro nos clientes...');
      Exit;
    end;
  if SQLCliente.IsEmpty then
    begin
      ShowMessage('Nenhum cliente foi encontrado...');
      Exit;
    end;

  CaminhoNomeArquivo := EditDiretorio.Text + '\Email_Cliente.txt';
  AssignFile(Arquivo,CaminhoNomeArquivo);
  Rewrite(Arquivo);
  Reset(Arquivo);
  Append(Arquivo);
  // Criar Proximas Linhas
  SQLCliente.First;
  Linha := '';
  While not SQLCliente.Eof Do
    begin
      Linha := Linha + LowerCase(SQLClienteCLIEA60EMAIL.AsString) + ';' ;
      SQLCliente.Next;
    end;
  // Gravar uma vez todos os email
  Writeln(Arquivo,Linha);

  // Fechar Arquivo
  CloseFile(Arquivo);
end;

end.
