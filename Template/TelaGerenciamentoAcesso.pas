unit TelaGerenciamentoAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, ExtCtrls, DB, DBTables, RxQuery, Buttons,
  ConerBtn, Grids, DBGrids, ImgList;

type
  TOperacao = (AtwDel,AtwIns);
  TFormTelaGerenciamentoAcesso = class(TForm)
    pnTitulo: TPanel;
    pnPrincipal: TPanel;
    pnEsquerdo: TPanel;
    pnDireito: TPanel;
    lblTituloClasse: TLabel;
    LabelTitulo: TLabel;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    lblJanelaAtiva: TLabel;
    lblTituloEstatico: TLabel;
    Panel1: TPanel;
    btOK: TConerBtn;
    btCancela: TConerBtn;
    SQLAcesso: TRxQuery;
    SQLAcessoUSPEICOD: TIntegerField;
    SQLAcessoCLASSICOD: TIntegerField;
    SQLAcessoUSUAICOD: TIntegerField;
    SQLAcessoUSPEA60NOMETELA: TStringField;
    SQLAcessoUSPECACESSOTOTAL: TStringField;
    SQLAcessoUSPECINCLUSAO: TStringField;
    SQLAcessoUSPECALTERACAO: TStringField;
    SQLAcessoUSPECEXCLUSAO: TStringField;
    SQLAcessoUSPECLEITURA: TStringField;
    SQLAcessoUSPEITIPO: TIntegerField;
    SQLAcessoPENDENTE: TStringField;
    SQLAcessoREGISTRO: TDateTimeField;
    SQLUsuarioCLASSA60DESCRICAO: TStringField;
    ImageListSelecao: TImageList;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioCLASSICOD: TIntegerField;
    SQLGeral: TRxQuery;
    lstUsuario: TListBox;
    Label1: TLabel;
    pnBotoes: TPanel;
    btAdicionaUsuario: TConerBtn;
    btRemoveUsuario: TConerBtn;
    lstUsuarioSel: TListBox;
    btGravar: TSpeedButton;
    btIncluir: TSpeedButton;
    btExcluir: TSpeedButton;
    btLeitura: TSpeedButton;
    btTotal: TSpeedButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLUsuarioAfterOpen(DataSet: TDataSet);
    procedure SQLAcessoBeforePost(DataSet: TDataSet);
    procedure lstUsuarioADDClick(Sender: TObject);
    procedure lstUsuarioSelDELDblClick(Sender: TObject);
    procedure lstUsuarioSelClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btTotalClick(Sender: TObject);
    procedure VerificaBanco;
    procedure VerificaGrupoBotao;
    procedure btLeituraClick(Sender: TObject);
    procedure MudaBotao(Sender: TObject; Estado : Boolean);
    procedure btRemoveUsuarioClick(Sender: TObject);
    procedure lstUsuarioClick(Sender: TObject);
    procedure lstUsuarioDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lstUsuarioDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    OP : TOperacao;
    UsuListIndex : Integer;
    CodigosExistentes : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGerenciamentoAcesso: TFormTelaGerenciamentoAcesso;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaGerenciamentoAcesso.FormCreate(Sender: TObject);
begin
    lstUsuario.Clear;
    lstUsuarioSel.Clear;

    DM.DB.StartTransaction;
    
    CodigosExistentes := '';
    lblJanelaAtiva.Caption := DM.JanelaAtiva.Caption;

    SQLGeral.Close;
    SQLGeral.RequestLive := False;
    SQLGeral.SQL.Text := 'select CLASSE.CLASSA60DESCRICAO,CLASSE.CLASSICOD,USUARIO.USUAICOD,USUARIO.USUAA60LOGIN from USUARIO ' +
                         'left outer join CLASSEUSUARIO on USUARIO.USUAICOD = CLASSEUSUARIO.USUAICOD ' +
                         'left outer join CLASSE on CLASSE.CLASSICOD = CLASSEUSUARIO.CLASSICOD ' +
                         'where USUARIO.USUAICOD in (select USUAICOD from USUARIOPERMISSOES where USPEA60NOMETELA = "' + DM.JanelaAtiva.Nome + '") ' +
                         'order by CLASSE.CLASSA60DESCRICAO, USUARIO.USUAA60LOGIN';

    SQLGeral.Open;

    SQLGeral.First;
    while not SQLGeral.Eof do
       begin
          lstUsuarioSel.Items.Add(SQLGeral.FieldByName('CLASSA60DESCRICAO').AsString + ' > ' + SQLGeral.FieldByName('USUAICOD').AsString + '-' + SQLGeral.FieldByName('USUAA60LOGIN').AsString);
          if CodigosExistentes = '' then
             CodigosExistentes := SQLGeral.FieldByName('USUAICOD').AsString
          else
             CodigosExistentes := CodigosExistentes + ', ' + SQLGeral.FieldByName('USUAICOD').AsString;
          SQLGeral.Next;
       end;

    SQLGeral.Close;
    SQLGeral.RequestLive := True;

    SQLUsuario.Close;
    if CodigosExistentes <> '' then
       SQLUsuario.MacroByName('MFiltro').AsString := ' USUARIO.USUAICOD not in (' + CodigosExistentes + ')';
    SQLUsuario.Open;
end;

procedure TFormTelaGerenciamentoAcesso.MudaBotao(Sender: TObject; Estado : Boolean);
begin
   if Estado then
      begin
        (Sender as TSpeedButton).Font.Color := clNavy;
        (Sender as TSpeedButton).Font.Style := [fsBold];
      end
   else
      begin
        (Sender as TSpeedButton).Font.Color := clWindowText;
        (Sender as TSpeedButton).Font.Style := [];
      end;

end;

procedure TFormTelaGerenciamentoAcesso.SQLUsuarioAfterOpen(
  DataSet: TDataSet);
begin
    SQLUsuario.First;

    while not SQLUsuario.Eof do
       begin
          lstUsuario.Items.Add(SQLUsuarioCLASSA60DESCRICAO.AsString + ' > ' + SQLUsuarioUSUAICOD.AsString + '-' + SQLUsuarioUSUAA60LOGIN.AsString);
          SQLUsuario.Next;
       end;
end;

procedure TFormTelaGerenciamentoAcesso.SQLAcessoBeforePost(
  DataSet: TDataSet);
begin
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Text := 'select max(USPEICOD) as Prox from USUARIOPERMISSOES';
    DM.SQLTemplate.Open;

    if DM.SQLTemplate.IsEmpty then
       SQLAcessoUSPEICOD.AsInteger := 1
    else
       SQLAcessoUSPEICOD.AsInteger := DM.SQLTemplate.FieldByName('Prox').AsInteger + 1;
    SQLAcessoPENDENTE.AsString := 'S';
    SQLAcessoREGISTRO.AsDateTime := Now;
end;

procedure TFormTelaGerenciamentoAcesso.lstUsuarioADDClick(Sender: TObject);
begin
    if lstUsuario.Selected[lstUsuario.ItemIndex] then
       begin
         lstUsuarioSel.Items.Add(lstUsuario.Items.Strings[lstUsuario.ItemIndex]);
         lstUsuario.Items.Delete(lstUsuario.ItemIndex);
         lstUsuarioSel.Selected[lstUsuarioSel.Items.Count - 1] := True;
         lstUsuarioSelClick(lstUsuarioSel);
       end;
    lstUsuarioClick(lstUsuario);
end;

procedure TFormTelaGerenciamentoAcesso.lstUsuarioSelDELDblClick(
  Sender: TObject);
Var IndexAntigo : Integer;
begin
    if lstUsuarioSel.ItemIndex > -1 then
       begin
         IndexAntigo := lstUsuarioSel.ItemIndex;
         lstUsuario.Items.Add(lstUsuarioSel.Items.Strings[lstUsuarioSel.ItemIndex]);
         lstUsuarioSel.Items.Delete(lstUsuarioSel.ItemIndex);

         if (IndexAntigo - 1) >= 0 then
            lstUsuarioSel.Selected[IndexAntigo - 1] := True
         else
            if (IndexAntigo) <= (lstUsuarioSel.Items.Count - 1) then
               lstUsuarioSel.Selected[IndexAntigo + 1] := True
            else
               if lstUsuario.Items.Count <> - 1 then
                  lstUsuario.Selected[lstUsuario.Items.Count - 1] := True;

         SQLGeral.Delete;
       end;
    lstUsuarioClick(lstUsuario);
    lstUsuarioSelClick(lstUsuarioSel);
end;

procedure TFormTelaGerenciamentoAcesso.lstUsuarioSelClick(Sender: TObject);
begin
  VerificaBanco;
  btRemoveUsuario.Enabled := lstUsuarioSel.ItemIndex > -1;
end;

procedure TFormTelaGerenciamentoAcesso.VerificaBanco;
Var CodUsuario : string;
    Pos1, Pos2, IndexBanco, BotoesBarra: Integer;
begin
    if lstUsuarioSel.ItemIndex > -1 then
       begin
        Pos1 := pos(' > ',lstUsuarioSel.Items.Strings[lstUsuarioSel.ItemIndex]) + 3;
        Pos2 := pos('-',lstUsuarioSel.Items.Strings[lstUsuarioSel.ItemIndex]) - Pos1;
        CodUsuario := copy(lstUsuarioSel.Items.Strings[lstUsuarioSel.ItemIndex],Pos1,Pos2);

        SQLGeral.Close;
        SQLGeral.SQL.Text := 'select * from USUARIOPERMISSOES where USUAICOD = ' + CodUsuario + ' and USPEA60NOMETELA = "' + DM.JanelaAtiva.Nome + '"';
        SQLGeral.Open;

        if not SQLGeral.IsEmpty then
           begin
              for IndexBanco := 4 to 8 do
                  begin
                    for BotoesBarra := 0 to pnBotoes.ControlCount - 1 do
                        begin
                          if pnBotoes.Controls[BotoesBarra].Tag = IndexBanco then
                             if SQLGeral.FieldByName(SQLAcesso.Fields.Fields[IndexBanco].DisplayName).AsString = 'S' then
                               (pnBotoes.Controls[BotoesBarra] as TSpeedButton).Down := True
                             else
                               (pnBotoes.Controls[BotoesBarra] as TSpeedButton).Down := False;
                        end;
                  end;
           end
        else
           begin
              if not SQLAcesso.Active then SQLAcesso.Active := True;
              SQLAcesso.Append;
              SQLAcessoUSUAICOD.AsInteger := StrToInt(CodUsuario);
              SQLAcessoUSPEA60NOMETELA.AsString := DM.JanelaAtiva.Nome;

              for IndexBanco := 4 to 8 do
                  begin
                    for BotoesBarra := 0 to pnBotoes.ControlCount - 1 do
                        begin
                          if pnBotoes.Controls[BotoesBarra].Tag = IndexBanco then
                             if (pnBotoes.Controls[BotoesBarra] as TSpeedButton).Down then
                                SQLAcesso.FieldByName(SQLAcesso.Fields.Fields[IndexBanco].DisplayName).AsString := 'S'
                             else
                                SQLAcesso.FieldByName(SQLAcesso.Fields.Fields[IndexBanco].DisplayName).AsString := 'N';
                        end;
                  end;
              SQLAcesso.Post;

              VerificaBanco;

              btLeitura.Down := True;
              btLeitura.Click;
           end;
       end;

    for BotoesBarra := 0 to pnBotoes.ControlCount - 1 do
        if pnBotoes.Controls[BotoesBarra].Tag <> 0 then
           begin
              MudaBotao(pnBotoes.Controls[BotoesBarra], (pnBotoes.Controls[BotoesBarra] as TSpeedButton).Down);
              if lstUsuarioSel.ItemIndex > -1 then
                 (pnBotoes.Controls[BotoesBarra] as TSpeedButton).Enabled := True
              else
                 (pnBotoes.Controls[BotoesBarra] as TSpeedButton).Enabled := False;
           end;

end;

procedure TFormTelaGerenciamentoAcesso.VerificaGrupoBotao;
Var BotoesBarra: Integer;
begin
    btLeitura.Down := False;
    btTotal.Down   := False;

    sqlGeral.Edit;
    sqlGeral.FieldByName('USPECACESSOTOTAL').AsString := 'N';
    sqlGeral.FieldByName('USPECLEITURA').AsString := 'N';
    sqlGeral.Post;

    if btGravar.Down  and btIncluir.Down and
       btExcluir.Down and not btTotal.Down
       then
         begin
           btTotal.Down := True;
           btTotal.Click;
           btLeitura.Down := False;
         end;

    if not btGravar.Down  and not btIncluir.Down and
       not btExcluir.Down and not btLeitura.Down
       then
         begin
           btLeitura.Down := True;
           btLeitura.Click;
           btTotal.Down := False;
         end;

    for BotoesBarra := 0 to pnBotoes.ControlCount - 1 do
       if pnBotoes.Controls[BotoesBarra].Tag <> 0 then
          MudaBotao(pnBotoes.Controls[BotoesBarra], (pnBotoes.Controls[BotoesBarra] as TSpeedButton).Down);
end;

procedure TFormTelaGerenciamentoAcesso.btGravarClick(Sender: TObject);
begin
    SQLGeral.Edit;
    if btGravar.Down then
       SQLGeral.FieldByName('USPECALTERACAO').AsString := 'S'
    else
       SQLGeral.FieldByName('USPECALTERACAO').AsString := 'N';
    SQLGeral.Post;

    VerificaGrupoBotao;
end;

procedure TFormTelaGerenciamentoAcesso.btIncluirClick(Sender: TObject);
begin
    SQLGeral.Edit;
    if btIncluir.Down then
       SQLGeral.FieldByName('USPECINCLUSAO').AsString := 'S'
    else
       SQLGeral.FieldByName('USPECINCLUSAO').AsString := 'N';
    SQLGeral.Post;

    MudaBotao(Sender,(Sender as TSpeedButton).Down);    

    VerificaGrupoBotao;
end;

procedure TFormTelaGerenciamentoAcesso.btExcluirClick(Sender: TObject);
begin
    SQLGeral.Edit;
    if btExcluir.Down then
       SQLGeral.FieldByName('USPECEXCLUSAO').AsString := 'S'
    else
       SQLGeral.FieldByName('USPECEXCLUSAO').AsString := 'N';
    SQLGeral.Post;

    MudaBotao(Sender,(Sender as TSpeedButton).Down);
        
    VerificaGrupoBotao;
end;

procedure TFormTelaGerenciamentoAcesso.btTotalClick(Sender: TObject);
begin
    if btTotal.Down then
       begin
          SQLGeral.Edit;
          SQLGeral.FieldByName('USPECACESSOTOTAL').AsString := 'S';
          SQLGeral.FieldByName('USPECLEITURA').AsString := 'N';
          SQLGeral.Post;

          if not btGravar.Down  then
             begin
               btGravar.Down := True;
               btGravar.Click;
             end;
          if not btIncluir.Down then
             begin
               btIncluir.Down := True;
               btIncluir.Click;
             end;
          if not btExcluir.Down then
             begin
               btExcluir.Down := True;
               btExcluir.Click;
             end;
       end
    else
       begin
          btLeitura.Down := True;
          MudaBotao(btLeitura,btLeitura.Down);

          SQLGeral.Edit;
          SQLGeral.FieldByName('USPECACESSOTOTAL').AsString := 'N';
          SQLGeral.FieldByName('USPECLEITURA').AsString := 'S';
          SQLGeral.Post;

          if btGravar.Down  then
             begin
               btGravar.Down := False;
               btGravar.Click;
             end;
          if btIncluir.Down then
             begin
               btIncluir.Down := False;
               btIncluir.Click;
             end;
          if btExcluir.Down then
             begin
               btExcluir.Down := False;
               btExcluir.Click;
             end;
       end;
    MudaBotao(Sender,(Sender as TSpeedButton).Down);
end;

procedure TFormTelaGerenciamentoAcesso.btLeituraClick(Sender: TObject);
begin
    btTotal.Down := False;
    btTotal.Click;
    MudaBotao(Sender,(Sender as TSpeedButton).Down);
end;

procedure TFormTelaGerenciamentoAcesso.btRemoveUsuarioClick(
  Sender: TObject);
begin
    if lstUsuarioSel.ItemIndex > -1 then
       begin
         lstUsuarioSel.Items.Delete(lstUsuarioSel.ItemIndex);
         SQLGeral.Delete;
       end;
    VerificaBanco;
end;

procedure TFormTelaGerenciamentoAcesso.lstUsuarioClick(Sender: TObject);
begin
   btAdicionaUsuario.Enabled := lstUsuario.ItemIndex > -1;
end;

procedure TFormTelaGerenciamentoAcesso.lstUsuarioDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFormTelaGerenciamentoAcesso.lstUsuarioDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
   if (Source as TListBox).ItemIndex <> -1 then
       if (Source = lstUsuario) and (Sender = lstUsuarioSel) then
          lstUsuarioADDClick(lstUsuario)
       else
           if (Source = lstUsuarioSel) and (Sender = lstUsuario) then
              lstUsuarioSelDELDblClick(lstUsuarioSel);
end;

end.
