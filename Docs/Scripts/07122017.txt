CREATE TABLE CONFIG_RESTAURANTE
(
  ID INTEGER NOT NULL PRIMARY KEY,
  MESA integer NOT NULL,
  OBS VARCHAR(200)
);


CREATE OR ALTER procedure SP_GRAVAR_PEDIDO_ITEM_WEB
(pid integer, cod_usr integer, nr_mesa integer, valor decimal(18,2),
 qtd decimal(18,2), item integer, id_produto integer)
returns(id integer)
as
begin

  delete from prevendaitem
  where prvdicod = :pid and PVITIPOS > :item;

  update or insert into prevendaitem
  (TERMICOD,PRVDICOD,PVITIPOS,PRODICOD,PVITN3QTD,PVITN3VLRUNIT,PVITN3VLRCUSTUNIT,
   VENDICOD, PVITCSTATUS)
   values
   (1, :pid, :item, :id_produto, :qtd, :valor, :qtd * :valor, :cod_usr, 'A');

  id = pid;

  suspend;
end;

CREATE OR ALTER procedure SP_GRAVAR_PEDIDO_WEB(pid integer, cod_usr integer, nr_mesa integer, valor decimal(18,2))
returns(id integer)
as
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

  update or Insert into PREVENDA
    (TERMICOD, PRVDICOD, VENDICOD, PRVDN2TOTITENS,
     CLIENTEOBS, mesaicod)
  Values (1, :id, :cod_usr, :valor, 'Mesa: '||:nr_mesa, :nr_mesa);

  suspend;
end;