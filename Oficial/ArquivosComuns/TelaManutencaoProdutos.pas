unit TelaManutencaoProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, RxQuery, RxLookup, Grids, DBGrids, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaManutencaoProdutos = class(TFormTelaGeralTEMPLATE)
    SQLMarca: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLGrupo: TRxQuery;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    DSSQLSubGrupo: TDataSource;
    SQLVariacao: TRxQuery;
    DSSQLVariacao: TDataSource;
    SQLCor: TRxQuery;
    DSSQLCor: TDataSource;
    SQLUnidade: TRxQuery;
    DSSQLUnidade: TDataSource;
    SQLICMS: TRxQuery;
    DSSQLICMS: TDataSource;
    SQLConsulta: TRxQuery;
    DSSQLConsulta: TDataSource;
    RadioTipoFiltro: TRadioGroup;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODA30ADESCRREDUZ: TStringField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplatePRODA15CODANT: TStringField;
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGRTMICOD: TIntegerField;
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplateCLFSICOD: TIntegerField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplateMARCICOD: TIntegerField;
    SQLTemplateGRUPICOD: TIntegerField;
    SQLTemplateSUBGICOD: TIntegerField;
    SQLTemplateVARIICOD: TIntegerField;
    SQLTemplatePRODA30CODESTRUT: TStringField;
    SQLTemplatePRODA60CODBAR: TStringField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLTemplatePRODICODBALANCA: TIntegerField;
    SQLConsultaPRODA60DESCR: TStringField;
    SQLConsultaPRODN3VLRVENDA: TFloatField;
    SQLConsultaPRODN3VLRVENDAPROM: TFloatField;
    SQLConsultaPRODN3VLRCOMPRA: TFloatField;
    SQLConsultaPRODN3VLRCUSTO: TFloatField;
    SQLConsultaPRODN3VLRCUSTOMED: TFloatField;
    SQLConsultaPRODN3PERCIPI: TFloatField;
    SQLConsultaPRODN3PERCMARGLUCR: TFloatField;
    GroupFiltros: TGroupBox;
    GroupFiltroEst: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    FiltroGrupo: TRxDBLookupCombo;
    FiltroSubGrupo: TRxDBLookupCombo;
    FiltroVariacao: TRxDBLookupCombo;
    FiltroMarca: TRxDBLookupCombo;
    FiltroCor: TRxDBLookupCombo;
    FiltroUnidade: TRxDBLookupCombo;
    FiltroICMS: TRxDBLookupCombo;
    GroupFiltroEsp: TGroupBox;
    Label19: TLabel;
    EditFiltroEsp: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    GroupDescrPrinc: TGroupBox;
    Label2: TLabel;
    EditDescrPrinc: TEdit;
    GroupDescrReduz: TGroupBox;
    Label3: TLabel;
    EditDescrReduz: TEdit;
    ComboCampo: TComboBox;
    GroupMarca: TGroupBox;
    Label5: TLabel;
    ComboMarca: TRxDBLookupCombo;
    GroupCor: TGroupBox;
    Label9: TLabel;
    ComboCor: TRxDBLookupCombo;
    GroupUnidade: TGroupBox;
    Label10: TLabel;
    ComboUnidade: TRxDBLookupCombo;
    GroupEstrutura: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    GridLista: TDBGrid;
    SQLConsultaPENDENTE: TStringField;
    SQLConsultaREGISTRO: TDateTimeField;
    SQLConsultaCORA30DESCR: TStringField;
    SQLGradeTamanho: TRxQuery;
    DataSource1: TDataSource;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLGradeTamanhoPENDENTE: TStringField;
    SQLGradeTamanhoREGISTRO: TDateTimeField;
    SQLConsultaGRTMA5DESCR: TStringField;
    GroupICMS: TGroupBox;
    Label11: TLabel;
    ComboICMS: TRxDBLookupCombo;
    Label20: TLabel;
    EditSubstTribut: TEdit;
    GroupReferencia: TGroupBox;
    Label4: TLabel;
    EditRef: TEdit;
    EditMargemVarejo: TEdit;
    Label21: TLabel;
    SQLConsultaPRODA15APAVIM: TStringField;
    SQLConsultaPRODA15RUA: TStringField;
    SQLConsultaPRODA15PRATEL: TStringField;
    SQLConsultaPRODN3PESOBRUTO: TFloatField;
    SQLConsultaPRODN3PESOLIQ: TFloatField;
    SQLConsultaPRODN3CAPACEMBAL: TFloatField;
    SQLConsultaPRODDCAD: TDateTimeField;
    SQLConsultaPRODDULTALTER: TDateTimeField;
    SQLConsultaPRODDINIPROMO: TDateTimeField;
    SQLConsultaPRODDFIMPROMO: TDateTimeField;
    SQLConsultaPRODCATIVO: TStringField;
    SQLConsultaPRODCSERVICO: TStringField;
    SQLConsultaPRODCGERACOMIS: TStringField;
    SQLConsultaPRODN2COMISVISTA: TFloatField;
    SQLConsultaPRODN2COMISPRAZO: TFloatField;
    SQLConsultaPRODDIMOBOLIZ: TDateTimeField;
    SQLConsultaPRODICODPAI: TIntegerField;
    SQLConsultaPRODCTIPOBAIXA: TStringField;
    SQLConsultaPRODN3QTDEBAIXA: TFloatField;
    SQLConsultaPRODIORIGEM: TIntegerField;
    SQLConsultaPRODDULTATUALIZ: TDateTimeField;
    SQLConsultaPRODA60DIMENSAO: TStringField;
    SQLConsultaPRODISITTRIB: TIntegerField;
    SQLConsultaPRODITIPOPRODBALAN: TStringField;
    SQLConsultaPRODICODETIQBAL: TIntegerField;
    SQLConsultaPRODIDIASVALIDADE: TIntegerField;
    SQLConsultaPRODN3VLRCOMPRAMED: TFloatField;
    SQLConsultaPRODN3DOLARCUSTO: TFloatField;
    SQLConsultaPRODN3DOLARCOMPRA: TFloatField;
    SQLConsultaPRODN3DOLARVENDA: TFloatField;
    SQLConsultaPRODBIMAGEM: TBlobField;
    SQLConsultaPRODCSUBSTRIB: TStringField;
    SQLConsultaPRODCTEMNROSERIE: TStringField;
    SQLConsultaPRODA03GARANTIA: TStringField;
    SQLConsultaPRODA254COMPQUIMICA: TStringField;
    SQLConsultaPRODCTIPO: TStringField;
    SQLConsultaPRODN2PERCFRETE: TFloatField;
    SQLConsultaPRODN2PERDA: TFloatField;
    SQLConsultaPRODN2PIS: TFloatField;
    SQLConsultaPRODN3ALTURA: TFloatField;
    SQLConsultaPRODN3COMPRIMENTO: TFloatField;
    SQLConsultaPRODN3DIMENTOTAL: TFloatField;
    SQLConsultaPRODN3LARGURA: TFloatField;
    SQLConsultaPRODA30INF01ETQBARRAS: TStringField;
    SQLConsultaPRODA30INF02ETQBARRAS: TStringField;
    SQLConsultaCOLEICOD: TIntegerField;
    SQLConsultaPRODN2PERCDESP: TFloatField;
    SQLConsultaPRODN2PERCSUBST: TFloatField;
    SQLConsultaDECRICOD: TIntegerField;
    SQLConsultaPRODN3PERCMARGLUC2: TFloatField;
    SQLConsultaPRODN2PERCDIFICM: TFloatField;
    SQLConsultaPRODN3PERCMGLVFIXA: TFloatField;
    SQLConsultaPRODN3PERCMGLAFIXA: TFloatField;
    SQLConsultaPRODCPERMITETROCA: TStringField;
    SQLConsultaPRODDULTCOMPRA: TDateTimeField;
    SQLConsultaPRODDULTVENDA: TDateTimeField;
    SQLConsultaPRODIPRINCIPAL: TIntegerField;
    SQLConsultaPRODN3QTDULTCOMPRA: TFloatField;
    SQLConsultaPRODDPREVCOMPRA: TDateTimeField;
    SQLConsultaPRODCCOFINS: TStringField;
    SQLConsultaPRODCIMPRECEITA: TStringField;
    SQLConsultaPRODA30CULTURA: TStringField;
    SQLConsultaPRODA30DIAGNOST: TStringField;
    SQLConsultaPRODA30PRINCATV: TStringField;
    SQLConsultaPRODA10MEDIDA: TStringField;
    SQLConsultaPRODA30EPOCAPLIC: TStringField;
    SQLConsultaPRODA30EQUIPAMEN: TStringField;
    SQLConsultaPRODA30FITOTOXID: TStringField;
    SQLConsultaPRODA30CARENCIA: TStringField;
    SQLConsultaPRODA30TOXIDADE: TStringField;
    SQLConsultaPRODN3MULTIPLIC: TFloatField;
    SQLConsultaPRODN2DOSAGEM: TFloatField;
    SQLConsultaPRODTEXTENDIDO: TStringField;
    SQLConsultaPRODTOBSCOMPLEM: TStringField;
    SQLConsultaPRODN3VLRVENDA2: TFloatField;
    SQLConsultaPRODCIMPETIQCDBAR: TStringField;
    GroupNCM: TGroupBox;
    Label22: TLabel;
    ComboTabelaNCM: TRxDBLookupCombo;
    dsNCM: TDataSource;
    SQLNcm: TRxQuery;
    SQLNcmNCMICOD: TIntegerField;
    SQLNcmNCMA30CODIGO: TStringField;
    SQLNcmNCMA100DESCR: TStringField;
    SQLConsultaNCMICOD: TIntegerField;
    ckApenasProdutosSemNCM: TCheckBox;
    SQLConsultaPRODA255DESCRTEC: TMemoField;
    BtnFiltrar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Progress: TProgressBar;
    procedure ComboCampoChange(Sender: TObject);
    procedure RadioTipoFiltroClick(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EditFiltroEspKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLConsultaBeforePost(DataSet: TDataSet);
    procedure DSSQLGrupoDataChange(Sender: TObject; Field: TField);
    procedure DSSQLSubGrupoDataChange(Sender: TObject; Field: TField);
  private
  ClausulaSql : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaManutencaoProdutos: TFormTelaManutencaoProdutos;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaManutencaoProdutos.ComboCampoChange(Sender: TObject);
begin
  inherited;
  GroupDescrPrinc.Visible := ComboCampo.ItemIndex = 0;
  GroupDescrReduz.Visible := ComboCampo.ItemIndex = 1;
  GroupReferencia.Visible := ComboCampo.ItemIndex = 2;
  GroupMarca.Visible      := ComboCampo.ItemIndex = 3;
  GroupEstrutura.Visible  := ComboCampo.ItemIndex = 4;
  GroupCor.Visible        := ComboCampo.ItemIndex = 5;
  GroupUnidade.Visible    := ComboCampo.ItemIndex = 6;
  GroupICMS.Visible       := ComboCampo.ItemIndex = 7;
  GroupNCM.Visible        := ComboCampo.ItemIndex = 8;
end;

procedure TFormTelaManutencaoProdutos.RadioTipoFiltroClick(Sender: TObject);
begin
  inherited;
  GroupFiltroEsp.Visible := (RadioTipoFiltro.ItemIndex = 0) or (RadioTipoFiltro.ItemIndex = 1)
                         or (RadioTipoFiltro.ItemIndex = 2) or (RadioTipoFiltro.ItemIndex = 3)
                         or (RadioTipoFiltro.ItemIndex = 5);

  GroupFiltroEst.Visible := (RadioTipoFiltro.ItemIndex = 4);
end;

procedure TFormTelaManutencaoProdutos.BtnFiltrarClick(Sender: TObject);
begin
  inherited;
  SQLConsulta.Close;
  SQLConsulta.MacroByName('Referencia').Value := '0=0';
  SQLConsulta.MacroByName('DescrPrinc').Value := '0=0';
  SQLConsulta.MacroByName('DescrReduz').Value := '0=0';
  SQLConsulta.MacroByName('AgrupGrade').Value := '0=0';
  SQLConsulta.MacroByName('Grupo').Value      := '0=0';
  SQLConsulta.MacroByName('SubGrupo').Value   := '0=0';
  SQLConsulta.MacroByName('Variacao').Value   := '0=0';
  SQLConsulta.MacroByName('Marca').Value      := '0=0';
  SQLConsulta.MacroByName('Cor').Value        := '0=0';
  SQLConsulta.MacroByName('Unidade').Value    := '0=0';
  SQLConsulta.MacroByName('ICMS').Value       := '0=0';
  SQLConsulta.MacroByName('NCM').Value        := '0=0';

  Case RadioTipoFiltro.ItemIndex of
    0 : begin
          if Pos('*',EditFiltroEsp.Text) > 0 then
            begin
              ClausulaSql := EditFiltroEsp.Text;
              Delete(ClausulaSql,Pos('*',EditFiltroEsp.Text),1);
              SQLConsulta.MacroByName('Referencia').Value := 'PRODA60REFER Like ' + '''%' + EditFiltroEsp.Text + '%'''
            end
          else
            SQLConsulta.MacroByName('Referencia').Value := 'PRODA60REFER Like ' + '''' + EditFiltroEsp.Text + '%'''
        end;
    1 : begin
          if Pos('*',EditFiltroEsp.Text) > 0 then
            begin
              ClausulaSql := EditFiltroEsp.Text;
              Delete(ClausulaSql,Pos('*',EditFiltroEsp.Text),1);
              SQLConsulta.MacroByName('DescrPrinc').Value := 'PRODA60DESCR Like ' + '''%' + ClausulaSql + '%'''
            end
          else
            SQLConsulta.MacroByName('DescrPrinc').Value := 'PRODA60DESCR Like ' + '''' + EditFiltroEsp.Text + '%'''
        end;
    2 : begin
          if Pos('*',EditFiltroEsp.Text) > 0 then
            begin
              ClausulaSql := EditFiltroEsp.Text;
              Delete(ClausulaSql,Pos('*',EditFiltroEsp.Text),1);
              SQLConsulta.MacroByName('DescrReduz').Value := 'PRODA30DESCRREDUZ Like = ' + '''%' + EditFiltroEsp.Text + '%'''
            end
          else
            SQLConsulta.MacroByName('DescrReduz').Value := 'PRODA30DESCRREDUZ Like = ' + '''' + EditFiltroEsp.Text + '%'''
        end;
    3 : begin
          SQLConsulta.MacroByName('AgrupGrade').Value := 'PRODIAGRUPGRADE = ' + EditFiltroEsp.Text ;
        end;
    4 : begin
          if FiltroGrupo.Text <> '' then
            SQLConsulta.MacroByName('Grupo').Value    := 'GRUPICOD = ' + FiltroGrupo.Value;
          if FiltroSubGrupo.Text <> '' then
            SQLConsulta.MacroByName('SubGrupo').Value := 'SUBGICOD = ' + FiltroSubGrupo.Value;
          if FiltroVariacao.Text <> '' then
            SQLConsulta.MacroByName('Variacao').Value := 'VARIICOD = ' + FiltroVariacao.Value;
          if FiltroMarca.Text <> '' then
            SQLConsulta.MacroByName('Marca').Value    := 'MARCICOD = ' + FiltroMarca.Value;
          if FiltroCor.Text <> '' then
            SQLConsulta.MacroByName('Cor').Value      := 'CORICOD = ' + FiltroCor.Value;
          if FiltroUnidade.Text <> '' then
            SQLConsulta.MacroByName('Unidade').Value  := 'UNIDICOD = ' + FiltroUnidade.Value;
          if FiltroICMS.Text <> '' then
            SQLConsulta.MacroByName('ICMS').Value     := 'ICMSICOD = ' + FiltroICMS.Value;
        end;
    5 : begin
          SQLConsulta.MacroByName('AgrupGrade').Value := 'PRODICOD = ' + EditFiltroEsp.Text ;
        end;
  end;
    SQLConsulta.Open;

end;

procedure TFormTelaManutencaoProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLGrupo.Active then SQLGrupo.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  if not SQLUnidade.Active then SQLUnidade.Open;
  if not SQLICMS.Active then SQLICMS.Open;
  if not SQLCor.Active then SQLCor.Open;
  if not SQLNcm.Active then SQLNcm.Open;
end;

procedure TFormTelaManutencaoProdutos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
   if not Pergunta('NAO','Deseja realmente realizar esta alterção nos produtos selecionados ?') then
     Abort;
   case ComboCampo.ItemIndex of
     0 : begin
           if EditDescrPrinc.Text = '' then
             begin
               Informa('Não existe nenhum valor para o campo selecionado, ou o valor é inválido');
               EditDescrPrinc.SetFocus;
               Abort;
             end;
         end;
     1 : begin
           if EditDescrReduz.Text = '' then
             begin
               Informa('Não existe nenhum valor para o campo selecionado, ou o valor é inválido');
               EditDescrReduz.SetFocus;
               Abort;
             end;
         end;
     2 : begin
           if (EditRef.Text = '') and (EditMargemVarejo.Text = '') then
             begin
               Informa('Não existe nenhum valor para os campos selecionados, ou valor é inválido');
               EditRef.SetFocus;
               Abort;
             end;

         end;
     3 : begin
           if ComboMarca.Text = '' then
             begin
               Informa('Não existe nenhum valor para o campo selecionado, ou o valor é inválido');
               ComboMarca.SetFocus;
               Abort;
             end;

         end;
     4 : begin
           if (ComboGrupo.Text = '') or (ComboSubGrupo.Text = '') or (ComboVariacao.Text = '') then
             begin
               if not Pergunta('SIM','A estrutura '' Grupo/SubGrupo/Variação '' está incompleta !'+ #13 + 'Deseja continuar mesmo assim ?') then
                 begin
                   GroupEstrutura.SetFocus;
                   Abort;
                 end;  
             end;
         end;
     5 : begin
           if ComboCor.Text = '' then
             begin
               Informa('Não existe nenhum valor para o campo selecionado, ou o valor é inválido !');
               ComboCor.SetFocus;
               Abort;
             end;

         end;
     6 : begin
           if ComboUnidade.Text = '' then
             begin
               Informa('Não existe nenhum valor para o campo selecionado, ou o valor é inválido !');
               ComboUnidade.SetFocus;
               Abort;
             end;

         end;
     7 : begin
           if (ComboICMS.Text = '') and (EditSubstTribut.Text = '') then
             begin
               Informa('Não existe nenhum valor para os campos selecionados, ou o valor é inválido !');
               ComboICMS.SetFocus;
               Abort;
             end;
         end;
     8 : begin
           if (ComboTabelaNCM.Text = '') then
             begin
               Informa('Não existe nenhum valor para o campo selecionado, ou o valor é inválido !');
               ComboTabelaNCM.SetFocus;
               Abort;
             end;

         end;

   end;
   if SQLConsulta.IsEmpty then
     begin
       Informa('Não existem produtos selecionandos para efetuar a alteração !');
       Abort;
     end;
   SQLConsulta.DisableControls;
   SQLConsulta.Last;
   SQLConsulta.First;
   Progress.Min := 0;
   Progress.Max := SQLConsulta.RecordCount;
   Progress.Position := 0;
   ClausulaSql := SQLConsulta.RealSQL.Text;
   While not SQLConsulta.Eof do
     begin
       SQLConsulta.Edit;
       case ComboCampo.ItemIndex of
         0 : begin
               SQLConsulta.FieldByName('PRODA60DESCR').AsString := EditDescrPrinc.Text;
             end;
         1 : begin
               SQLConsulta.FieldByName('PRODA30ADESCRREDUZ').AsString := EditDescrReduz.Text;
             end;
         2 : begin
               if EditRef.Text <> '' then
                 SQLConsulta.FieldByName('PRODA60REFER').AsString := EditRef.Text;
               if EditMargemVarejo.Text <> '' then
                 SQLConsulta.FieldByName('PRODN3PERCMGLVFIXA').AsString := EditMargemVarejo.Text;
             end;
         3 : begin
               SQLConsulta.FieldByName('MARCICOD').AsString := ComboMarca.Value;
             end;
         4 : begin
               SQLConsulta.FieldByName('GRUPICOD').AsString := ComboGrupo.Value;
               SQLConsulta.FieldByName('SUBGICOD').AsString := ComboSubGrupo.Value;
               SQLConsulta.FieldByName('VARIICOD').AsString := ComboVariacao.Value;
             end;
         5 : begin
               SQLConsulta.FieldByName('CORICOD').AsString  := ComboCor.Value;
             end;
         6 : begin
               SQLConsulta.FieldByName('UNIDICOD').AsString := ComboUnidade.Value;
             end;
         7 : begin
               if ComboICMS.Value <> '' then
                 SQLConsulta.FieldByName('ICMSICOD').AsString := ComboICMS.Value;
               if EditSubstTribut.Text <> '' then
                 begin
                   SQLConsulta.FieldByName('PRODISITTRIB').AsString := EditSubstTribut.Text;
                   if EditSubstTribut.Text = '60' then
                     SQLConsulta.FieldByName('PRODCSUBSTRIB').AsString := 'S';
                 end;
             end;
         8 : begin
               if ComboTabelaNCM.Value <> '' then
                 begin
                   if ckApenasProdutosSemNCM.Checked then
                     begin
                       if SQLConsulta.FieldByName('NCMICOD').AsString = '' then
                         SQLConsulta.FieldByName('NCMICOD').AsString := ComboTabelaNCM.Value;
                     end
                   else
                     SQLConsulta.FieldByName('NCMICOD').AsString := ComboTabelaNCM.Value;
                 end;
             end;
       end;
       SQLConsulta.Post;
       SQLConsulta.Next;
       Progress.Position := Progress.Position +1;
       Progress.Update;
       Application.ProcessMessages;
     end;
     SQLConsulta.Close;
     SQLConsulta.EnableControls;
     ShowMessage('Alteração efetuada com sucesso !');
     Progress.Position := 0;
     Progress.Update;
end;

procedure TFormTelaManutencaoProdutos.EditFiltroEspKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
      BtnFiltrar.Click;
end;

procedure TFormTelaManutencaoProdutos.SQLConsultaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLConsultaPENDENTE.AsString   := 'S';
  SQLConsultaREGISTRO.AsDateTime := Now;
end;

procedure TFormTelaManutencaoProdutos.DSSQLGrupoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SQLSubGrupo.Close;
  SQLSubGrupo.Open;
end;

procedure TFormTelaManutencaoProdutos.DSSQLSubGrupoDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  SQLVariacao.Close;
  SQLVariacao.Open;
end;

end.
