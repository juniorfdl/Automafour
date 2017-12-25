ALTER PROCEDURE SP_GRAVAR_PEDIDO_WEB (
    PID INTEGER,
    COD_USR INTEGER,
    NR_MESA INTEGER,
    VALOR NUMERIC(15,2),
    OBS VARCHAR(60))
RETURNS (
    ID INTEGER)
AS
begin

  if (pid = 0) then
  begin
    for select Max(PRVDICOD) + 1 as Contador from PREVENDA
    into :id do begin end
  end
  else
   id = pid;

  if (coalesce(id,0) = 0) then
    id = 1;

  if (coalesce(OBS, '') = '') then
    OBS = 'Mesa: '||:nr_mesa;

  update or Insert into PREVENDA
    (TERMICOD, PRVDICOD, VENDICOD, PRVDN2TOTITENS,
     CLIENTEOBS, mesaicod, cliea13id, CLIENTENOME, PDVCPRECONCLU, PRVDCIMPORT)
  Values (11, :id, :cod_usr, :valor, trim(:OBS), :nr_mesa, '0010000000016',
  'CONSUMIDOR', 'S','N');

  suspend;
end;


ALTER PROCEDURE SP_GRAVAR_PEDIDO_ITEM_WEB(
    PID INTEGER,
    COD_USR INTEGER,
    NR_MESA INTEGER,
    VALOR NUMERIC(15,2),
    QTD NUMERIC(15,2),
    ITEM INTEGER,
    ID_PRODUTO INTEGER)
RETURNS (
    ID INTEGER)
AS
begin

  delete from prevendaitem
  where prvdicod = :pid and PVITIPOS > :item;

  update or insert into prevendaitem
  (TERMICOD,PRVDICOD,PVITIPOS,PRODICOD,PVITN3QTD,PVITN3VLRUNIT,PVITN3VLRCUSTUNIT,
   VENDICOD, PVITCSTATUS)
   values
   (11, :pid, :item, :id_produto, :qtd, :valor, :qtd * :valor, :cod_usr, 'A');

  id = pid;

  suspend;
end;