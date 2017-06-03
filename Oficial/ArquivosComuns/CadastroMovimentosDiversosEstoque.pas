unit CadastroMovimentosDiversosEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit,
  VarSYS, FormResources, RXDBCtrl, RxDBComb, DBActns, ActnList, ImgList,
  RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroMovimentosDiversosEstoque = class(TFormCadastroTEMPLATE)
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateMOVDICOD: TIntegerField;
    SQLTemplateMOVDDMOVIMENTO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateMOVDA255OBS: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    Label3: TLabel;
    DBEdit3: TDBDateEdit;
    Label4: TLabel;
    DBEdit4: TDBMemo;
    SQLTemplateOperacaoEstoqueCalcField: TStringField;
    SQLTemplateMOVDCCONLUIDO: TStringField;
    ComboConcluido: TRxDBComboBox;
    Label5: TLabel;
    SQLOperacaoEstoque: TRxQuery;
    SQLItens: TRxQuery;
    SQLItensMOVDA13ID: TStringField;
    SQLItensMVDIIITEM: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensMVDIN3QTD: TBCDField;
    SQLItensLOTEA30NRO: TStringField;
    TblEmpresa: TTable;
    SQLTemplateEmpresaLookup: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLProdutoSerie: TRxQuery;
    SQLProdutoSeriePRODICOD: TIntegerField;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    SQLProdutoSeriePRSECSTATUS: TStringField;
    SQLProdutoSerieEMPRICOD: TIntegerField;
    SQLProdutoSerieEMPRICODDEST: TIntegerField;
    SQLProdutoSerieFORNICOD: TIntegerField;
    SQLProdutoSerieCLIEA13ID: TStringField;
    SQLProdutoSerieNOCPA13ID: TStringField;
    SQLProdutoSerieNOFIA13ID: TStringField;
    SQLProdutoSerieCUPOA13ID: TStringField;
    SQLProdutoSeriePDVDA13ID: TStringField;
    SQLProdutoSerieOSA13ID: TStringField;
    SQLProdutoSerieMOVDA13ID: TStringField;
    SQLProdutoSeriePENDENTE: TStringField;
    SQLProdutoSerieREGISTRO: TDateTimeField;
    DSSQLOperacaoEstoque: TDataSource;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLTemplateMOVDCTROCA: TStringField;
    SQLTemplateFORNICOD: TIntegerField;
    Label8: TLabel;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLTemplateCLIEA13ID: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    MnRelatorioItensMovtoDiverso: TMenuItem;
    MnEtiquetasCdBarras: TMenuItem;
    SQLTemplateEMPRICODDESTINO: TIntegerField;
    MnEncerraSequencia: TMenuItem;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ComboOperacao: TRxDBLookupCombo;
    AcessaOperacaoEstoque: TSpeedButton;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    ButtonEmpresa: TSpeedButton;
    DBEdit6: TDBEdit;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure AcessaOperacaoEstoqueClick(Sender: TObject);
    procedure ButtonEmpresaClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure MnRelatorioItensMovtoDiversoClick(Sender: TObject);
    procedure MnEtiquetasCdBarrasClick(Sender: TObject);
    procedure MnEncerraSequenciaClick(Sender: TObject);
  private
    { Private declarations }
    MovimentarEstoque, AbrirItens : boolean ;

  public
    { Public declarations }
  end;

var
  FormCadastroMovimentosDiversosEstoque: TFormCadastroMovimentosDiversosEstoque;

implementation

uses DataModulo, CadastroMovimentosDiversosEstoqueItem, UnitLibrary, WaitWindow,
     TelaConsultaEmpresa, TelaConsultaOperacaoEstoque, RelatorioMovtoDiversos,
  TelaEmissaoEtiquetasCodigoBarras;

{$R *.DFM}

procedure TFormCadastroMovimentosDiversosEstoque.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EMPRICOD').Value          := EmpresaPadrao;
  DataSet.FieldByName('EMPRICODDESTINO').Value   := EmpresaPadrao;
  DataSet.FieldByName('MOVDDMOVIMENTO').Value    := Date;
  DataSet.FieldByName('MOVDCCONLUIDO').Value     := 'N';
  DataSet.FieldByName('USUAICOD').AsInteger      := UsuarioCorrente;
  DataSet.FieldByName('USUAA60LOGIN').AsString   := UsuarioAtualNome;
  DataSet.FieldByName('MOVDCTROCA').AsString     := 'N';
end;

procedure TFormCadastroMovimentosDiversosEstoque.FormCreate(
  Sender: TObject);
begin
  inherited;
  Tabela := 'MOVIMENTODIVERSO';
  SQLCliente.Open;
end;

procedure TFormCadastroMovimentosDiversosEstoque.Button3Click(
  Sender: TObject);
begin
  inherited;
  if (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroMovimentosDiversosEstoqueItem,'FormCadastroMovimentosDiversosEstoqueItem',True,False,True,'Movimentos Diversos Nº ' + SQLTemplateMOVDA13ID.Value);
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoque.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.FieldByName('EMPRICODDESTINO').IsNull then
    begin
      Informa('Você deve informar uma empresa Destino do Movimento!');
      Abort;
    end;

  if SQLTemplateOperacaoEstoqueCalcField.AsString = MensagemLookUp then
    begin
      Informa('Operação de Estoque não encontrada !');
      Abort;
    end;

  if (Dataset.State = dsEdit) and (Dataset.FieldByName('MOVDCCONLUIDO') .Value = 'S') then
    MovimentarEstoque := true ;
end;

procedure TFormCadastroMovimentosDiversosEstoque.SQLTemplateAfterPost(
  DataSet: TDataSet);
var Tipo : string ;
begin
  inherited;
  if MovimentarEstoque then
    begin
      SQLItens.Close ;
      SQLItens.MacroByName('MFiltro').Value := 'MOVDA13ID = "' + DataSet.FieldByName('MOVDA13ID').AsString + '"';
      SQLItens.Open ;

      Tipo := SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCENTRADASAIDA', DataSet.FieldByName('OPESICOD').AsString);
      if Tipo = '' then
      begin
        Informa('Nesta Operação de Estoque não está configurada se o tipo de movimentação é ENTRADA ou SAÍDA');
        SQLTemplate.Edit;
        SQLTemplateMOVDCCONLUIDO.AsString := 'N';
        SQLTemplate.Post;
        Exit;
      end;

      MakeWindow(SQLItens.RecordCount, 'Aguarde, Atualizando Saldo dos Produtos!');
      SQLItens.First;
      while not SQLItens.EOF do
        begin
          GravaMovimentoEstoque(DM.SQLProduto,
                                DM.SQLProdutoFilho,
                                DM.SQLProdutoSaldo,
                                SQLTemplateEMPRICODDESTINO.AsInteger,
                                SQLItensPRODICOD.Value,
                                DataSet.FieldByName('OPESICOD').AsInteger,
                                SQLItensMVDIN3QTD.Value,
                                Tipo,
                                FormatDateTime('mm/dd/yyyy', Now),
                                '0', //Valor
                                'MOVIMENTOSDIVERSOS',
                                SQLTemplateMOVDA13ID.AsString,
                                SQLItensLOTEA30NRO.AsString);

          SQLItens.Next;
        end;
      DestroyWindow;

      if Tipo = 'S' then
        begin
          SQLItens.First;
          while not SQLItens.Eof do
            begin
              SQLProdutoSerie.Close;
              SQLProdutoSerie.MacroByName('MFiltro').AsString := 'MOVDA13ID = "' + SQLTemplateMOVDA13ID.AsString + '" AND PRODICOD = ' + SQLItensPRODICOD.AsString;
              SQLProdutoSerie.Open;
              if not SQLProdutoSerie.IsEmpty then
                begin
                  SQLProdutoSerie.First;
                  while not SQLProdutoSerie.Eof do
                    begin
                      GravaSaidaNroSerieProduto(SQLProdutoSeriePRSEA60NROSERIE.AsString,
                                                SQLProdutoSeriePRODICOD.AsString,
                                                'I',
                                                '',
                                                '',
                                                '',
                                                '',
                                                '',
                                                SQLTemplateMOVDA13ID.AsString);
                      SQLProdutoSerie.delete;
                    end;
                end;
              SQLItens.Next;
            end;
        end;
      if Tipo = 'E' then
        begin
          GravaEntradaNroSerieProduto('',SQLTemplateMOVDA13ID.AsString,'','');
        end;
    end;
  if AbrirItens then
    begin
      Button3.Click;
      AbrirItens := False;
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoque.DBEdit2KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaOperacaoEstoque.Click;
end;

procedure TFormCadastroMovimentosDiversosEstoque.BtnFecharTelaClick(
  Sender: TObject);
begin
  if (SQLTemplate.State = DsBrowse) and (SQLTemplate.FieldByName('MOVDCCONLUIDO') .Value = 'N') then
  begin
   if Pergunta('NAO','A movimentação de estoque somente será efetuada quando este movimento estiver com o campo concluído = "SIM" !' + #13 + 'Deseja concluir agora ?') then
     begin
       SQLTemplate.Edit;
       SQLTemplate.FieldByName('MOVDCCONLUIDO') .Value := 'S';
       Abort;
     end;  
  end;

  inherited;

end;

procedure TFormCadastroMovimentosDiversosEstoque.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  if SQLTemplateMOVDCCONLUIDO.AsString = 'S' then
    begin
      Informa('Esta movimentação já foi concluída, portanto, não pode ser alterada !');
      Abort;
    end;

{  if SQLTemplateEMPRICOD.AsString <> EmpresaPadrao then
    begin
      Informa('Esta movimentação foi realizada em outra Filial, portanto, não pode ser alterada !');
      Abort;
    end; }

  inherited;
{  if SQLTemplate.FieldByName('USUAICOD').AsInteger > 0 then
    if UsuarioCorrente <>  SQLTemplate.FieldByName('USUAICOD').AsInteger then
      begin
        Informa('Esta Operação foi iniciada por outro usuário, você não poderá modificar esta operação!');
        Abort;
      end;}
end;

procedure TFormCadastroMovimentosDiversosEstoque.AcessaOperacaoEstoqueClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('OPESICOD');
  FieldOrigem := 'OPESICOD' ;
  CriaFormulario(TFormTelaConsultaOperacaoEstoque,'FormTelaConsultaOperacaoEstoque', False,True,True,'') ;
end;

procedure TFormCadastroMovimentosDiversosEstoque.ButtonEmpresaClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('EMPRICODDESTINO');
  FieldOrigem := 'EMPRICOD' ;
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa', False,True,True,'') ;
end;

procedure TFormCadastroMovimentosDiversosEstoque.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  if SQLTemplateMOVDCCONLUIDO.AsString = 'S' then
    begin
      Informa('Esta movimentação já foi concluída, portanto, não pode ser excluida !');
      Abort;
    end;

 { if SQLTemplateEMPRICOD.AsString <> EmpresaPadrao then
    begin
      Informa('Esta movimentação foi realizada em outra Filial, portanto, não pode ser excluida !');
      Abort;
    end; }

 { if SQLTemplate.FieldByName('USUAICOD').AsInteger > 0 then
    if UsuarioCorrente <>  SQLTemplate.FieldByName('USUAICOD').AsInteger then
      begin
        Informa('Esta Operação foi iniciada por outro usuário, você não poderá modificar esta operação!');
        Abort;
      end;}
  inherited;
end;

procedure TFormCadastroMovimentosDiversosEstoque.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  ComboConcluido.Enabled := not (DSTemplate.DataSet.State in [DSInsert]);
end;

procedure TFormCadastroMovimentosDiversosEstoque.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  AbrirItens := True;
end;

procedure TFormCadastroMovimentosDiversosEstoque.MnRelatorioItensMovtoDiversoClick(
  Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioMotvoDiversos, 'FormRelatorioMotvoDiversos',False,False,False,'')
end;

procedure TFormCadastroMovimentosDiversosEstoque.MnEtiquetasCdBarrasClick(
  Sender: TObject);
begin
  inherited;
  EtiquetaMovDiversos := SQLTemplate.FindField('MOVDA13ID').asString;
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,True,'');
end;

procedure TFormCadastroMovimentosDiversosEstoque.MnEncerraSequenciaClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplate.IsEmpty then
    begin
      ShowMessage('Não foi encontrado nenhum movimento a ser encerrado!');
      exit;
    end;
  while not SQLTemplate.eof do
    begin
      if SQLTemplateMOVDCCONLUIDO.Value = 'N' then
        begin
          SQLTemplate.Edit;
          SQLTemplateMOVDCCONLUIDO.Value  := 'S';
          try
            SQLTemplate.Post;
          except
            SQLTemplate.Cancel;
          end;    
        end;
      SQLTemplate.Next;
    end;
end;

end.
