unit CadastroNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, EDBNum, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroNCM = class(TFormCadastroTEMPLATE)
    SQLTemplateNCMICOD: TIntegerField;
    SQLTemplateNCMA100DESCR: TStringField;
    SQLTemplateNCMA5UNIDADE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateNCMA30CODIGO: TStringField;
    Label38: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBMemoObs: TDBMemo;
    CorrigeNCMmenorque8digitos1: TMenuItem;
    SQLTemplateMVA: TFloatField;
    SQLTemplateALIQUOTAINTERNA: TFloatField;
    SQLTemplateNCMN2ALIQNAC: TFloatField;
    SQLTemplateNCMN2ALIQIMP: TFloatField;
    ImportarArquivoIBPTAtual1: TMenuItem;
    SQLTemplateNCMIEX_TIP: TIntegerField;
    SQLTemplateNCMITABELA: TIntegerField;
    N1: TMenuItem;
    FiltrarNCMssemAliquotasMedia1: TMenuItem;
    SQLTemplateCSTICMS: TIntegerField;
    SQLTemplateBASE_ICMS: TFloatField;
    SQLTemplateALIQ_ICMS: TFloatField;
    SQLTemplateBASE_ICMSST: TFloatField;
    SQLTemplateALIQ_ICMSST: TFloatField;
    SQLTemplateCSTPIS_COFINS_ENT: TStringField;
    SQLTemplateCSTPIS_COFINS: TStringField;
    SQLTemplateBASE_PIS_COFINS: TFloatField;
    SQLTemplateALIQ_PIS_REAL: TFloatField;
    SQLTemplateALIQ_PIS_PRESUMIDO: TFloatField;
    SQLTemplateALIQ_COFINS_REAL: TFloatField;
    SQLTemplateALIQ_COFINS_PRESUMIDO: TFloatField;
    ImportarArquivoSuperTributario: TMenuItem;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    SQLTemplateCPITN2IMPOSTOMED: TFloatField;
    SQLTemplateNFITN2IMPOSTOMED: TFloatField;
    SQLTemplateALIQESTADUAL: TFloatField;
    SQLTemplateALIQMUNICIPAL: TFloatField;
    SQLTemplateVIGENCIA_INI: TDateTimeField;
    SQLTemplateVIGENCIA_FIM: TDateTimeField;
    SQLTemplateCHAVE: TStringField;
    SQLTemplateVERSAO: TStringField;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    Label6: TLabel;
    Label27: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label28: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure CorrigeNCMmenorque8digitos1Click(Sender: TObject);
    procedure ImportarArquivoIBPTAtual1Click(Sender: TObject);
    procedure FiltrarNCMssemAliquotasMedia1Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure ImportarArquivoSuperTributarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNCM: TFormCadastroNCM;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroNCM.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'NCM';
end;

procedure TFormCadastroNCM.CorrigeNCMmenorque8digitos1Click(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.DisableControls;
  SQLTemplate.First;
  while not SQLTemplate.Eof do
    begin
      if (Length(SQLTemplateNCMA30CODIGO.Value) < 8) and (SQLTemplateNCMA30CODIGO.Value <> '') then
        begin
          SQLTemplate.Edit;
          if Length(SQLTemplateNCMA30CODIGO.Value) = 7 then
            SQLTemplateNCMA30CODIGO.Value := '0' + SQLTemplateNCMA30CODIGO.Value;
          if Length(SQLTemplateNCMA30CODIGO.Value) = 6 then
            SQLTemplateNCMA30CODIGO.Value := '00' + SQLTemplateNCMA30CODIGO.Value;
          if Length(SQLTemplateNCMA30CODIGO.Value) = 5 then
            SQLTemplateNCMA30CODIGO.Value := '000' + SQLTemplateNCMA30CODIGO.Value;
          SQLTemplate.Post;
        end;
      SQLTemplate.Next;
    end;
  SQLTemplate.EnableControls;
end;

procedure TFormCadastroNCM.ImportarArquivoIBPTAtual1Click(Sender: TObject);
var  Texto : TextFile;
     Linha, xText, CdNCM, exTipi, tabelaNBS, AliqNacional, AliqImportados, AliqMunicipal, AliqEstadual, Descricao,
     vigenciainicio,vigenciafim, chave : String;
     LinhaNumero, i, nCampo : integer;
begin
  inherited;
  if not FileExists('TabelaIbptaxRS16.2.A.csv') then
    begin
      ShowMessage('ERRO: Não foi localizado a arquivo TabelaIbptaxRS16.2.A.csv, na Gestao');
      Abort;
      Exit;
    end
  else
    begin
      try
        AssignFile(Texto,'TabelaIbptaxRS16.2.A.csv');
      except
        ShowMessage('ERRO: Não foi possível abrir o arquivo TabelaIbptaxRS16.2.A.csv, na Gestao');
        Abort;
        Exit;
      end;
      Reset(Texto);
      SQLTemplate.DisableControls;
      // Pular Titulo do arquivo
      Readln(Texto,Linha);
      LinhaNumero := 1;
      while not EOF(Texto) do
        begin
          inc(LinhaNumero);
          LabelRegistros.Caption := 'Convertendo NCMs ' + inttostr(LinhaNumero);
          LabelRegistros.update;
          Application.ProcessMessages;

          Readln(Texto,Linha);
          nCampo := 0;
          For i := 1 to Length(Linha) do
            begin
              if (Linha[i] = ';') then
                begin
                  if i >= 6 then
                    inc(nCampo);
                end
              else
                xText := xText + Linha[i];

              if Linha[i] = ';' then
                begin
                  Case nCampo of
                    1: CdNCM           := xText;
                    2: exTipi          := xText;
                    3: tabelaNBS       := xtext;
                    4: Descricao       := xtext;
                    5: AliqNacional    := xText;
                    6: AliqImportados  := xText;
                    7: AliqEstadual    := xText;
                    8: AliqMunicipal   := xText;
                    9: vigenciainicio  := xText;
                   10: vigenciafim     := xText;
                   11: chave           := xText;
                   12: versao          := xText;
                  End;
                  xText  := '';
                end;
            end;

            xText  := '';
            // Tenta achar o NCM
            if IsNumeric(cdNCM,'INTEGER') then
              begin
                SQLTemplate.Close;
                SQLTemplate.macrobyname('MFiltro').value := 'NCMA30CODIGO = "' + CdNCM +'"';
                SQLTemplate.Open;
                if not SQLTemplate.IsEmpty then
                  begin
                    SQLTemplate.Edit;
                    SQLTemplateNCMIEX_TIP.AsString    := exTipi;
                    SQLTemplateNCMITABELA.AsString    := tabelaNBS;
                    SQLTemplateNCMN2ALIQNAC.AsString  := TrocaPontoPorVirgula(AliqNacional);
                    SQLTemplateNCMN2ALIQIMP.AsString  := TrocaPontoPorVirgula(AliqImportados);
                    SQLTemplateALIQESTADUAL.AsString  := TrocaPontoPorVirgula(AliqEstadual);
                    SQLTemplateALIQMUNICIPAL.AsString := TrocaPontoPorVirgula(AliqMunicipal);
                    SQLTemplateVIGENCIA_INI.AsString  := vigenciainicio;
                    SQLTemplateVIGENCIA_FIM.AsString  := vigenciafim;
                    SQLTemplateVERSAO.AsString        := Versao;
                    SQLTemplateCHAVE.AsString         := chave;
                    SQLTemplate.Post;
                  end
                else
                  begin
                    SQLTemplate.Append;
                    SQLTemplateNCMA30CODIGO.AsString   := CdNCM;
                    SQLTemplateNCMA100DESCR.AsString   := UpperCase(Descricao);
                    SQLTemplateNCMIEX_TIP.AsString     := exTipi;
                    SQLTemplateNCMITABELA.AsString     := tabelaNBS;
                    SQLTemplateNCMN2ALIQNAC.AsString   := TrocaPontoPorVirgula(AliqNacional);
                    SQLTemplateNCMN2ALIQIMP.AsString   := TrocaPontoPorVirgula(AliqImportados);
                    SQLTemplateALIQESTADUAL.AsString   := TrocaPontoPorVirgula(AliqEstadual);
                    SQLTemplateALIQMUNICIPAL.AsString  := TrocaPontoPorVirgula(AliqMunicipal);
                    SQLTemplateVIGENCIA_INI.AsString   := vigenciainicio;
                    SQLTemplateVIGENCIA_FIM.AsString   := vigenciafim;
                    SQLTemplateVERSAO.AsString         := Versao;
                    SQLTemplateCHAVE.AsString          := chave;
                    SQLTemplate.Post;
                  end;
              end;
        end;
      SQLTemplate.EnableControls;
   end;
end;

procedure TFormCadastroNCM.FiltrarNCMssemAliquotasMedia1Click(
  Sender: TObject);
begin
  inherited;
  sqltemplate.close;
  sqltemplate.macrobyname('MFiltro').Value := 'NCMN2ALIQNAC is null or NCMN2ALIQIMP is null';
  sqltemplate.open;
end;

procedure TFormCadastroNCM.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTEMPLATENCMN2ALIQNAC.Value := 0;
  SQLTemplateNCMN2ALIQIMP.Value := 0;
end;

procedure TFormCadastroNCM.ImportarArquivoSuperTributarioClick(
  Sender: TObject);
var  Texto : TextFile;
     Info, Linha, sCampo, Produto, vUnidade, vNcm, vCSTICMS, vBASEICMSST, vALIQICMSST, vMVAInterna, vMVAOutros, vBASEICMS, vALIQICMS, vCSTPISCOFINSENT,
     vCSTPISCOFINS, vBASEPISCOFINS, vALIQPISREAL, vALIQPISPRESUMIDO, vALIQCOFINSREAL, vALIQCOFINSPRESUMIDO : string;
     LinhaNumero, i, ContadorCampos : integer;
begin
  inherited;
  if not FileExists('..\Super Tributario.csv') then
    begin
      ShowMessage('ERRO: Não foi localizado a arquivo Super Tributario.csv, na Gestao');
      Abort;
      Exit;
    end;

  AssignFile(Texto,'..\Super Tributario.csv');
  Reset(Texto);

  // Pular Titulo do arquivo
  Readln(Texto,Linha);

  LinhaNumero := 1;
  while not EOF(Texto) do
    begin
      inc(LinhaNumero);
      LabelRegistros.Caption := 'Consultando NCMs ' + inttostr(LinhaNumero);
      LabelRegistros.update;
      Application.ProcessMessages;

      {Alimenta Linha na Variavel}
      Readln(Texto,Linha);

      if (copy(Linha,1,7) = 'Sistema') then
        begin
          {Inicia alimentacao dos campos}
          ContadorCampos := 1;
          sCampo := '';
          for i:= 1 to Length(Linha) do
            begin
              if Linha[i] = ';' then
                begin
                  Case ContadorCampos of
                     5 : Produto                := trim(sCampo);
                     6 : vUnidade               := trim(sCampo);
                     7 : vNcm                   := trim(sCampo);
                     8 : vCSTICMS               := trim(sCampo);
                     9 : vBASEICMS              := trim(sCampo);
                    10 : vALIQICMS              := trim(sCampo);
                    11 : vMVAInterna            := trim(sCampo);
                    12 : vMVAOutros             := trim(sCampo);
                    13 : vBASEICMSST            := trim(sCampo);
                    14 : vALIQICMSST            := trim(sCampo);
                    16 : vCSTPISCOFINSENT       := trim(sCampo);
                    17 : vCSTPISCOFINS          := trim(sCampo);
                    18 : vBASEPISCOFINS         := trim(sCampo);
                    19 : vALIQPISREAL           := trim(sCampo);
                    20 : vALIQPISPRESUMIDO      := trim(sCampo);
                    21 : vALIQCOFINSREAL        := trim(sCampo);
                    22 : vALIQCOFINSPRESUMIDO   := trim(sCampo);
                  End;
                  sCampo:= '';
                  ContadorCampos := ContadorCampos+1;
                  Continue;
                end
              else
                sCampo:= sCampo + Linha[i];
            end;
        end;

      // Tenta achar o NCM
      if vNcm <> '' then
        begin
          SQLTemplate.Close;
          SQLTemplate.macrobyname('MFiltro').value := 'NCMA30CODIGO = "' + vNcm +'"';
          SQLTemplate.Open;
          if not SQLTemplate.IsEmpty then
            begin
              SQLTemplate.Edit;
              if SQLTEMPLATENCMN2ALIQNAC.IsNull then SQLTEMPLATENCMN2ALIQNAC.Value := 0;
              if SQLTemplateNCMN2ALIQIMP.IsNull then SQLTemplateNCMN2ALIQIMP.Value := 0;
              SQLTemplateNCMA5UNIDADE.Value                    := vUnidade;
              SQLTemplateMVA.AsString                          := TrocaPontoPorVirgula(vMVAInterna);
              if (vMVAInterna = '') and (vMVAOutros <> '') then
                SQLTemplateMVA.AsString                        := TrocaPontoPorVirgula(vMVAOutros);

              SQLTemplateCSTICMS.AsInteger                     := strtoint(vCSTICMS);
              SQLTemplateCSTPIS_COFINS.AsString                := vCSTPISCOFINS;
              SQLTemplateCSTPIS_COFINS_ENT.AsString            := vCSTPISCOFINSENT;
              SQLTemplateBASE_ICMS.AsString                    := TrocaPontoPorVirgula(vBASEICMS);
              SQLTemplateBASE_ICMSST.AsString                  := TrocaPontoPorVirgula(vBASEICMSST);
              SQLTemplateBASE_PIS_COFINS.AsString              := TrocaPontoPorVirgula(vBASEPISCOFINS);
              SQLTemplateALIQ_ICMS.AsString                    := TrocaPontoPorVirgula(vALIQICMS);
              SQLTemplateALIQ_ICMSST.AsString                  := TrocaPontoPorVirgula(vALIQICMSST);
              SQLTemplateALIQ_PIS_REAL.AsString                := TrocaPontoPorVirgula(vALIQPISREAL);
              SQLTemplateALIQ_PIS_PRESUMIDO.AsString           := TrocaPontoPorVirgula(vALIQPISPRESUMIDO);
              SQLTemplateALIQ_COFINS_REAL.AsString             := TrocaPontoPorVirgula(vALIQCOFINSREAL);
              SQLTemplateALIQ_COFINS_PRESUMIDO.AsString        := TrocaPontoPorVirgula(vALIQCOFINSPRESUMIDO);

              SQLTemplate.Post;
            end
          else
            begin  {Incluir o NCM do .CSV para o Banco de Dados}
              if length(vNcm) = 8 then
                begin
                  SQLTemplate.Append;
                  SQLTemplateNCMA100DESCR.Value  := Produto ;
                  if SQLTEMPLATENCMN2ALIQNAC.IsNull then SQLTEMPLATENCMN2ALIQNAC.Value := 0;
                  if SQLTemplateNCMN2ALIQIMP.IsNull then SQLTemplateNCMN2ALIQIMP.Value := 0;
                  SQLTemplateNCMA5UNIDADE.Value                    := vUnidade;
                  SQLTemplateMVA.AsString                          := TrocaPontoPorVirgula(vMVAInterna);
                  if (vMVAInterna = '') and (vMVAOutros <> '') then
                    SQLTemplateMVA.AsString                        := TrocaPontoPorVirgula(vMVAOutros);

                  SQLTemplateCSTICMS.AsInteger                     := strtoint(vCSTICMS);
                  SQLTemplateCSTPIS_COFINS.AsString                := vCSTPISCOFINS;
                  SQLTemplateCSTPIS_COFINS_ENT.AsString            := vCSTPISCOFINSENT;
                  SQLTemplateBASE_ICMS.AsString                    := TrocaPontoPorVirgula(vBASEICMS);
                  SQLTemplateBASE_ICMSST.AsString                  := TrocaPontoPorVirgula(vBASEICMSST);
                  SQLTemplateBASE_PIS_COFINS.AsString              := TrocaPontoPorVirgula(vBASEPISCOFINS);
                  SQLTemplateALIQ_ICMS.AsString                    := TrocaPontoPorVirgula(vALIQICMS);
                  SQLTemplateALIQ_ICMSST.AsString                  := TrocaPontoPorVirgula(vALIQICMSST);
                  SQLTemplateALIQ_PIS_REAL.AsString                := TrocaPontoPorVirgula(vALIQPISREAL);
                  SQLTemplateALIQ_PIS_PRESUMIDO.AsString           := TrocaPontoPorVirgula(vALIQPISPRESUMIDO);
                  SQLTemplateALIQ_COFINS_REAL.AsString             := TrocaPontoPorVirgula(vALIQCOFINSREAL);
                  SQLTemplateALIQ_COFINS_PRESUMIDO.AsString        := TrocaPontoPorVirgula(vALIQCOFINSPRESUMIDO);
                  SQLTemplate.Post;
                end;
            end;
        end;
    end;
  ShowMessage('Rotina concluida!');
end;

end.
