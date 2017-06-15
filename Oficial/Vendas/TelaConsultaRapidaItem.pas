unit TelaConsultaRapidaItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls,
  DBCtrls, RXCtrls, Placemnt, RxQuery, Mask, ToolEdit, CurrEdit, RxDBComb,
  RxLookup, TFlatSpeedButtonUnit, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvSmoothPanel;

type
  TFormTelaConsultaRapidaItem = class(TForm)
    DSTemplate: TDataSource;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODN3PESOBRUTO: TFloatField;
    SQLProdutoPRODN3PESOLIQ: TFloatField;
    SQLProdutoPRODN3CAPACEMBAL: TFloatField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    FormStorage: TFormStorage;
    SQLProdutoTAMANHOLOOKUP: TStringField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoSaldoEmpresa: TFloatField;
    SQLGeral: TRxQuery;
    SQLCOR: TTable;
    SQLMarca: TTable;
    SQLGradeTamanho: TTable;
    SQLCORCORICOD: TIntegerField;
    SQLCORCORA30DESCR: TStringField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoMarcaLookup: TStringField;
    SQLProdutoCorLookup: TStringField;
    TblGrupo: TTable;
    TblSubGrupo: TTable;
    TblVariacao: TTable;
    TblUnidade: TTable;
    SQLProdutoGrupoLookup: TStringField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoSubGrupoLookup: TStringField;
    SQLProdutoVariacaoLookup: TStringField;
    SQLProdutoUnidadeLookup: TStringField;
    RxLabel10: TRxLabel;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    dsSQLMarcaCombo: TDataSource;
    SQLMarcaCombo: TRxQuery;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    SQLProdutoPRODDPREVCOMPRA: TDateTimeField;
    SQLProdutoPRODDULTCOMPRA: TDateTimeField;
    SQLProdutoPRODN3QTDULTCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRVENDA2: TFloatField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    ScrollBoxPrincipal: TScrollBox;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    LblNomeSistema: TRxLabel;
    VALOR: TEdit;
    EditDescTecnica: TEdit;
    EditRef: TEdit;
    ComboMarca: TRxDBLookupCombo;
    EditPrateleira: TEdit;
    LblBonusTroca: TRxLabel;
    RxLabel22: TRxLabel;
    RxLabel23: TRxLabel;
    RxLabel24: TRxLabel;
    RxLabel25: TRxLabel;
    DBGridLista: TDBGrid;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvSmoothPanel3: TAdvSmoothPanel;
    ScrollBoxEsquerda: TScrollBox;
    ScrollBoxDireita: TScrollBox;
    DBText8: TDBText;
    DBText10: TDBText;
    DBMemo1: TDBMemo;
    DBText3: TDBText;
    DBText11: TDBText;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    btFalta: TFlatSpeedButton;
    lbVerFoto: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    DBText9: TDBText;
    DBText2: TDBText;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    DBText1: TDBText;
    DBText7: TDBText;
    RxLabel13: TRxLabel;
    RxLabel14: TRxLabel;
    DBText14: TDBText;
    DBText12: TDBText;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    DBText15: TDBText;
    DBText13: TDBText;
    RxLabel17: TRxLabel;
    RxLabel18: TRxLabel;
    EditRua: TEdit;
    EditPav: TEdit;
    SQLProdutoPRODN2VLRVENDA2835D: TFloatField;
    SQLProdutoPRODN2VLRVENDA283542D: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLProdutoCalcFields(DataSet: TDataSet);
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure lbVerFotoClick(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure EditDescTecnicaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btFaltaClick(Sender: TObject);
    procedure EditPrateleiraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPavKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRuaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    BlobStream : TStream;
    JPEGImage  : TJPEGImage;
  end;

var
  FormTelaConsultaRapidaItem: TFormTelaConsultaRapidaItem;

implementation

uses TelaItens, UnitLibrary, DataModulo, TelaFotoExpandida, VarSys;

{$R *.DFM}

procedure TFormTelaConsultaRapidaItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaConsultaRapidaItem.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    begin
      FormTelaItens.EntradaDados.SelectAll;
      CodigoProduto := '';
      Close;
    end;
end;

procedure TFormTelaConsultaRapidaItem.FormCreate(Sender: TObject);
var vtamanho, I : Integer;
var Filtro : String;
begin
  {Ajustar paineis na Tela}
  Width    := Screen.Width;
  Height   := Screen.Height;
  ScrollBoxEsquerda.Width := (Screen.Width - ScrollBoxPrincipal.Width) div 2;

  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;

  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;

  if not CodRapido then
    begin
      CodigoProduto := '' ;
      if (FormTelaItens.EntradaDados.Text <> '') then
        begin
          if not FileExists('OrdenarPorCor.txt') then
            begin
              SQLProduto.Close ;
              SQLProduto.SQL.Clear ;
              SQLProduto.SQL.Add('Select * from PRODUTO') ;
              SQLProduto.SQL.Add('Where PRODCATIVO = ''S'' and ') ;
              if not FileExists('ProcuraContendo.txt') then
                begin
                  if Pos('*', FormTelaItens.EntradaDados.Text) > 0 then
                    SQLProduto.SQL.Add('PRODA60DESCR like ''%' + Copy(FormTelaItens.EntradaDados.Text, 2, Length(FormTelaItens.EntradaDados.Text)) + '%''')
                  else
                    SQLProduto.SQL.Add('PRODA60DESCR like ''' + FormTelaItens.EntradaDados.Text + '%''') ;
                end
              else
                begin
                  vtamanho   := length(FormTelaItens.EntradaDados.Text)+1 ;
                  FormTelaItens.EntradaDados.Text := Trim(FormTelaItens.EntradaDados.Text)+' ' ;
                  Filtro   := '%';
                  For I := 1 to vtamanho do
                    begin
                      If Copy(FormTelaItens.EntradaDados.Text,I,1)=' ' then
                        Filtro := Filtro+'%'
                      else
                        Filtro := Filtro+copy(FormTelaItens.EntradaDados.Text,I,1);
                    end;
                  SQLProduto.SQL.Add('PRODA60DESCR like ''' + Filtro + '''') ;
                end;

              SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER') ;
              SQLProduto.Open ;
            end
          else
            begin
           {   SQLProduto.Close ;
              SQLProduto.SQL.Clear ;
              SQLProduto.SQL.Add('Select P.*, C.CORA30DESCR from PRODUTO P LEFT JOIN COR C ON C.CORICOD = P.CORICOD ') ;
              SQLProduto.SQL.Add('Where P.PRODCATIVO = ''S'' and ') ;

              vtamanho   := length(FormTelaItens.EntradaDados.Text)+1 ;
              FormTelaItens.EntradaDados.Text := Trim(FormTelaItens.EntradaDados.Text)+' ' ;
              Filtro   := '%';
              For I := 1 to vtamanho do
                begin
                  If Copy(FormTelaItens.EntradaDados.Text,I,1)=' ' then
                    Filtro := Filtro+'%'
                  else
                    Filtro := Filtro+copy(FormTelaItens.EntradaDados.Text,I,1);
                end;

              SQLProduto.SQL.Add('PRODA60DESCR like ''' + Filtro + '''') ; }

              SQLProduto.Close ;
              SQLProduto.SQL.Clear ;
              SQLProduto.SQL.Add('Select P.*, C.CORA30DESCR from PRODUTO P LEFT JOIN COR C ON C.CORICOD = P.CORICOD ') ;
              SQLProduto.SQL.Add('Where P.PRODCATIVO = ''S'' and ') ;

              if not FileExists('ProcuraContendo.txt') then
                begin
                  if Pos('*', FormTelaItens.EntradaDados.Text) > 0 then
                    SQLProduto.SQL.Add('PRODA60DESCR like ''%' + Copy(FormTelaItens.EntradaDados.Text, 2, Length(FormTelaItens.EntradaDados.Text)) + '%''')
                  else
                    SQLProduto.SQL.Add('PRODA60DESCR like ''' + FormTelaItens.EntradaDados.Text + '%''') ;
                end
              else
                begin
                  vtamanho   := length(FormTelaItens.EntradaDados.Text)+1 ;
                  FormTelaItens.EntradaDados.Text := Trim(FormTelaItens.EntradaDados.Text)+' ' ;
                  Filtro   := '%';
                  For I := 1 to vtamanho do
                    begin
                      If Copy(FormTelaItens.EntradaDados.Text,I,1)=' ' then
                        Filtro := Filtro+'%'
                      else
                        Filtro := Filtro+copy(FormTelaItens.EntradaDados.Text,I,1);
                    end;
                  SQLProduto.SQL.Add('PRODA60DESCR like ''' + Filtro + '''') ;
                end;

              SQLProduto.SQL.Add('order by P.PRODA60DESCR, C.CORA30DESCR') ;
              SQLProduto.Open ;
            end;
        end;
    end
  else
    begin
      CodigoProduto := '' ;
      SQLProduto.Close ;
      SQLProduto.SQL.Clear ;
      SQLProduto.SQL.Add('Select * from PRODUTO') ;
      SQLProduto.SQL.Add('Where PRODCATIVO = ''S'' and PRODCRAPIDO = ''S''') ;
      SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER') ;
      SQLProduto.Open ;
    end;
  if not SQLCOR.Active then SQLCOR.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  if not SQLGradeTamanho.Active then SQLGradeTamanho.Open;
  if not SQLMarcaCombo.Active then SQLMarcaCombo.Open;
end;

procedure TFormTelaConsultaRapidaItem.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) then
  begin
    CodigoProduto := SQLProduto.FieldByName('PRODICOD').AsString;
    FormTelaConsultaRapidaItem.ModalResult := MrOK;
  end ;
end;

procedure TFormTelaConsultaRapidaItem.SQLProdutoCalcFields(
  DataSet: TDataSet);
begin
  SQLProdutoSaldoEmpresa.Value := 0 ;
  if FileExists('MostraSaldo.txt') then
    begin
      SQLGeral.Close ;
      SQLGeral.SQL.Clear ;
      SQLGeral.SQL.Add('select PSLDN3QTDE from PRODUTOSALDO') ;
      SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
      SQLGeral.SQL.Add('and   PRODICOD = ' + SQLProdutoPRODICOD.AsString) ;
      SQLGeral.Open ;
      if not SQLGeral.Eof then
        SQLProdutoSaldoEmpresa.Value := SQLGeral.FieldByName('PSLDN3QTDE').Value ;
    end ;
end;

procedure TFormTelaConsultaRapidaItem.VALORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN : EditDescTecnica.SetFocus;
    VK_DOWN   : EditPrateleiraKeyDown(Sender,Enter,Shift);
  end;
end;

procedure TFormTelaConsultaRapidaItem.EditRefKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN : ComboMarca.SetFocus;
    VK_DOWN   : EditPrateleiraKeyDown(Sender,Enter,Shift);
  end;
end;

procedure TFormTelaConsultaRapidaItem.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  if SQLProdutoPRODBIMAGEM.BlobSize <> 0 then
    begin
      lbVerFoto.Enabled := True;
      lbVerFoto.Update;
    end
  else
    begin
      lbVerFoto.Enabled := False;
      lbVerFoto.Update;
    end;
end;

procedure TFormTelaConsultaRapidaItem.lbVerFotoClick(Sender: TObject);
begin
  // Abrir Tela Cheia com a Foto Grande
  if (SQLProdutoPRODBIMAGEM.BlobSize <> 0) and (lbVerFoto.Enabled) then
    begin
      Application.CreateForm(TFormTelaFotoExpandida,FormTelaFotoExpandida);
      BlobStream := SQLProduto.CreateBlobStream(SQLProdutoPRODBIMAGEM,bmRead);
      JPEGImage  := TJPEGImage.Create;
      try
        JPEGImage.LoadFromStream(BlobStream);
        FormTelaFotoExpandida.Foto.Picture.Assign(JPEGImage);
      finally
        BlobStream.Free;
        JPEGImage.Free;
      end;
      FormTelaFotoExpandida.ShowModal;
    end;
end;

procedure TFormTelaConsultaRapidaItem.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) or
     ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = '') and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) then
    begin
      with (Sender as TDBGrid).Canvas do
        begin
          Brush.Color := clRed;
          FillRect(Rect);
          TextOut(Rect.Left, Rect.Top,Column.Field.Text);
        end;
    end;
end;

procedure TFormTelaConsultaRapidaItem.FormActivate(Sender: TObject);
begin
  if not SQLProduto.IsEmpty then
    DBGridLista.SetFocus;
end;

procedure TFormTelaConsultaRapidaItem.EditDescTecnicaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN : EditRef.SetFocus;
    VK_DOWN   : EditPrateleiraKeyDown(Sender,Enter,Shift);
  end;

end;

procedure TFormTelaConsultaRapidaItem.ComboMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
     VK_RETURN :
        begin
          If (Sender as TRxDBLookupCombo).IsDropDown Then
            begin
              (Sender as TRxDBLookUpCombo).CloseUp(True);
              Application.ProcessMessages;
            end;
          Perform(Wm_NextDlgCtl, 0, 0) ;
         end;
     VK_DOWN   : EditPrateleiraKeyDown(Sender,Enter,Shift);
   end;
end;

procedure TFormTelaConsultaRapidaItem.btFaltaClick(Sender: TObject);
var xQtdeMinima : string;
begin
  xQtdeMinima := InputBox('Lanças Faltas!','Informar Quantidade Minima?','');
  dm.zConsulta.Close;
  dm.zConsulta.sql.Text := 'Select * from produtosaldo where prodicod = ' + SQLProdutoPRODICOD.AsString + ' and empricod = ' + EmpresaPadrao;
  dm.zConsulta.Open;
  if Pergunta('NAO', '* * * CONFIRMA O LANÇAMENTO DA FALTA? * * *') then
    begin
      if not dm.zConsulta.IsEmpty then
        begin
          dm.zConsulta.edit;
          dm.zConsulta.fieldbyname('PSLDN3QTDMIN').AsFloat := StrToFloat(xQtdeMinima);
          dm.zConsulta.post;
        end;
    end;
end;

procedure TFormTelaConsultaRapidaItem.EditPrateleiraKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var Filtro, FiltroRef : string;
var I, vtamanho : integer;
begin
  case key of
    VK_RETURN :
        begin
          // Monta Filtro SQL para executar a pesquisa de produto
          Filtro := '';
          if (Valor.Text <> '') then
            begin
              if not FileExists('ProcuraContendo.txt') then
                begin
                  if Pos('*', Valor.Text) > 0 then
                    Filtro := 'PRODA60DESCR like ''%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%'''
                  else
                    Filtro := 'PRODA60DESCR like ''' + Valor.Text + '%''';
                end
              else
                begin
                  vtamanho   := length(Valor.Text)+1 ;
                  Valor.Text := Trim(Valor.Text)+' ' ;
                  Filtro   := '%';
                  For I := 1 to vtamanho do
                    begin
                      If Copy(Valor.Text,I,1)=' ' then
                        Filtro := Filtro+'%'
                      else
                        Filtro := Filtro+copy(Valor.Text,I,1);
                    end;
                  Filtro := 'PRODA60DESCR like ''' + Filtro + '''';
                end;
            end;

          if (EditDescTecnica.Text <> '') then
            if (Filtro = '') then
              begin
                Filtro := 'PRODA255DESCRTEC like ''%' + Copy(EditDescTecnica.Text, 2, Length(EditDescTecnica.Text)) + '%''';
              end
            else
              begin
                Filtro := Filtro + ' and PRODA255DESCRTEC like ''%' + Copy(EditDescTecnica.Text, 2, Length(EditDescTecnica.Text)) + '%''';
              end;

          if (EditRef.Text <> '') then
            if (Filtro = '') then
              begin
                if not FileExists('ProcuraContendo.txt') then
                  begin
                    if Pos('*', Valor.Text) > 0 then
                      Filtro := 'PRODA60REFER like ''' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%'''
                    else
                      Filtro := 'PRODA60REFER like ''%' + EditRef.Text + '%''';
                  end
                else
                  begin
                    vtamanho   := length(EditRef.Text)+1 ;
                    EditRef.Text := Trim(EditRef.Text)+' ' ;
                    FiltroRef   := '%';
                    For I := 1 to vtamanho do
                      begin
                        If Copy(EditRef.Text,I,1)=' ' then
                          FiltroRef := FiltroRef + '%'
                        else
                          FiltroRef := FiltroRef + copy(EditRef.Text,I,1);
                      end;
                    Filtro := 'PRODA60REFER like ''' + FiltroRef + '''';
                  end;
              end
            else
              begin
                if not FileExists('ProcuraContendo.txt') then
                  begin
                    if Pos('*', Valor.Text) > 0 then
                      Filtro := Filtro + ' and PRODA60REFER like ''' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%'''
                    else
                      Filtro := Filtro + ' and PRODA60REFER like ''%' + EditRef.Text + '%''';
                  end
                else
                  begin
                    vtamanho     := length(EditRef.Text)+1 ;
                    EditRef.Text := Trim(EditRef.Text)+' ' ;
                    FiltroRef    := FiltroRef + '%';
                    For I := 1 to vtamanho do
                      begin
                        If Copy(EditRef.Text,I,1)=' ' then
                          FiltroRef := FiltroRef + '%'
                        else
                          FiltroRef := FiltroRef + copy(EditRef.Text,I,1);
                      end;
                    Filtro := Filtro + ' and PRODA60REFER like ''' + FiltroRef + '''';
                  end;
              end;

          if (EditPav.Text <> '') then
            if (Filtro = '') then
              begin
                Filtro := 'PRODA15APAVIM like ''%' + Copy(EditPav.Text, 1, Length(EditPav.Text)) + '%''';
              end
            else
              begin
                Filtro := Filtro + ' and PRODA15APAVIM like ''%' + Copy(EditPav.Text, 1, Length(EditPav.Text)) + '%''';
              end;

          if (EditRua.Text <> '') then
            if (Filtro = '') then
              begin
                Filtro := 'PRODA15RUA like ''%' + Copy(EditRua.Text, 1, Length(EditRua.Text)) + '%''';
              end
            else
              begin
                Filtro := Filtro + ' and PRODA15RUA like ''%' + Copy(EditRua.Text, 1, Length(EditRua.Text)) + '%''';
              end;

          if (EditPrateleira.Text <> '') then
            if (Filtro = '') then
              begin
                Filtro := 'PRODA15PRATEL like ''%' + Copy(EditPrateleira.Text, 1, Length(EditPrateleira.Text)) + '%''';
              end
            else
              begin
                Filtro := Filtro + ' and PRODA15PRATEL like ''%' + Copy(EditPrateleira.Text, 1, Length(EditPrateleira.Text)) + '%''';
              end;

          if (ComboMarca.Value <> '') then
            if (Filtro = '') then
              Filtro :=  'MARCICOD = '+ ComboMarca.Value
            else
              Filtro :=  Filtro + ' and MARCICOD = '+ ComboMarca.Value;

          // Final do Filtro SQL
          if Filtro <> '' then
            begin
              SQLProduto.Close ;
              SQLProduto.SQL.Clear ;
              SQLProduto.SQL.Add('Select * from PRODUTO') ;
              SQLProduto.SQL.Add('Where PRODCATIVO = ''S'' and') ;
              SQLProduto.SQL.Add(Filtro);
              SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER');
              SQLProduto.Open ;
              if not SQLProduto.IsEmpty then
                DBGridLista.SetFocus;
            end
          else
            valor.SetFocus;
        end;
  end ;
end;

procedure TFormTelaConsultaRapidaItem.EditPavKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN : EditRua.SetFocus;
    VK_DOWN   : EditPrateleiraKeyDown(Sender,Enter,Shift);
  end;
end;

procedure TFormTelaConsultaRapidaItem.EditRuaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN : EditPrateleira.SetFocus;
    VK_DOWN   : EditPrateleiraKeyDown(Sender,Enter,Shift);
  end;

end;

end.

