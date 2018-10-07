alter table CUPOMITEM add TOTAL_ITEM DECIMAL(18,2);

CREATE OR ALTER trigger tg_cupomitem_biu0 for cupomitem
active before insert or update position 0
AS
 declare variable vUPDATE_TOTITEM char(1);
begin
  vUPDATE_TOTITEM = COALESCE(rdb$get_context('USER_TRANSACTION', 'UPDATE_TOTITEM'), 'N');
  if (vUPDATE_TOTITEM <> 'S') then
  begin
    NEW.total_item = round(NEW.CPITN3QTD * NEW.CPITN3VLRUNIT,2);
  end
end;

UPDATE CUPOMITEM SET cupoa13id = cupoa13id;

execute block
as
 declare variable vCUPOA13ID CHAR(13);
begin
  rdb$set_context('USER_TRANSACTION', 'UPDATE_TOTITEM', 'S');
  for select CUPOA13ID from (select
     CUPOM.CUPOA13ID,
     round(CUPOM.CUPON2TOTITENS -
     sum(round(TOTAL_ITEM,2)),2) as dif
   from CUPOM
   inner join CUPOMITEM on CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID
   where
    CUPOM.CUPODEMIS > '01.09.2000'
    --  CUPOA13ID = '0010110029723'
   group by CUPOM.CUPOA13ID, CUPOM.CUPON2TOTITENS) dados
   where dados.dif < 0
  into :vCUPOA13ID do
  begin
    update CUPOMITEM set TOTAL_ITEM = (round(TOTAL_ITEM,2) - 0.01)
    where CUPOA13ID = :vCUPOA13ID
     and CPITIPOS in (select MAX(CUPOMITEM.CPITIPOS)
        from CUPOMITEM where CUPOA13ID = :vCUPOA13ID);
  end

  for select CUPOA13ID from (select
     CUPOM.CUPOA13ID,
     round(CUPOM.CUPON2TOTITENS -
     sum(round(TOTAL_ITEM,2)),2) as dif
   from CUPOM
   inner join CUPOMITEM on CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID
   where
    CUPOM.CUPODEMIS > '01.09.2000'
    --  CUPOA13ID = '0010110029723'
   group by CUPOM.CUPOA13ID, CUPOM.CUPON2TOTITENS) dados
   where dados.dif > 0
  into :vCUPOA13ID do
  begin
    update CUPOMITEM set TOTAL_ITEM = (round(TOTAL_ITEM,2) + 0.01)
    where CUPOA13ID = :vCUPOA13ID
     and CPITIPOS in (select MAX(CUPOMITEM.CPITIPOS)
        from CUPOMITEM where CUPOA13ID = :vCUPOA13ID);
  end
end;

COMMIT;

create procedure SP_ACERTO_TOTAL_CUPOM
as
 declare variable vCUPOA13ID CHAR(13);
begin
  rdb$set_context('USER_TRANSACTION', 'UPDATE_TOTITEM', 'S');
  for select CUPOA13ID from (select
     CUPOM.CUPOA13ID,
     round(CUPOM.CUPON2TOTITENS -
     sum(round(TOTAL_ITEM,2)),2) as dif
   from CUPOM
   inner join CUPOMITEM on CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID
   where
    CUPOM.CUPODEMIS >= current_timestamp -1
    --  CUPOA13ID = '0010110029723'
   group by CUPOM.CUPOA13ID, CUPOM.CUPON2TOTITENS) dados
   where dados.dif < 0
  into :vCUPOA13ID do
  begin
    update CUPOMITEM set TOTAL_ITEM = (round(TOTAL_ITEM,2) - 0.01)
    where CUPOA13ID = :vCUPOA13ID
     and CPITIPOS in (select MAX(CUPOMITEM.CPITIPOS)
        from CUPOMITEM where CUPOA13ID = :vCUPOA13ID);
  end

  for select CUPOA13ID from (select
     CUPOM.CUPOA13ID,
     round(CUPOM.CUPON2TOTITENS -
     sum(round(TOTAL_ITEM,2)),2) as dif
   from CUPOM
   inner join CUPOMITEM on CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID
   where
    CUPOM.CUPODEMIS >= current_timestamp -1
    --  CUPOA13ID = '0010110029723'
   group by CUPOM.CUPOA13ID, CUPOM.CUPON2TOTITENS) dados
   where dados.dif > 0
  into :vCUPOA13ID do
  begin
    update CUPOMITEM set TOTAL_ITEM = (round(TOTAL_ITEM,2) + 0.01)
    where CUPOA13ID = :vCUPOA13ID
     and CPITIPOS in (select MAX(CUPOMITEM.CPITIPOS)
        from CUPOMITEM where CUPOA13ID = :vCUPOA13ID);
  end
end;