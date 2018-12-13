ALTER TABLE CUPOMITEM ADD EXC_CALC CHAR(1);

CREATE OR ALTER TRIGGER TG_CUPOMITEM_BIU0 FOR CUPOMITEM
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS
begin
  if (COALESCE(NEW.EXC_CALC, '') <> 'S') then
  begin
    NEW.total_item = round(NEW.CPITN3QTD * NEW.CPITN3VLRUNIT,2);
  end

  NEW.EXC_CALC = 'N';
end;

CREATE OR ALTER procedure SP_ACERTO_TOTAL_CUPOM
as
declare variable VCUPOA13ID char(13);
begin

  for select CUPOA13ID from (select
     CUPOM.CUPOA13ID,
     round(CUPOM.CUPON2TOTITENS -
     sum(round(TOTAL_ITEM,2)),2) as dif
   from CUPOM
   inner join CUPOMITEM on CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID
   where
    CUPOM.CUPODEMIS >= current_timestamp -1
   group by CUPOM.CUPOA13ID, CUPOM.CUPON2TOTITENS) dados
   where dados.dif < 0
  into :vCUPOA13ID do
  begin
    update CUPOMITEM set TOTAL_ITEM = (round(TOTAL_ITEM,2) - 0.01),
      EXC_CALC = 'S'
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
    update CUPOMITEM set TOTAL_ITEM = (round(TOTAL_ITEM,2) + 0.01), EXC_CALC = 'S'
    where CUPOA13ID = :vCUPOA13ID
     and CPITIPOS in (select MAX(CUPOMITEM.CPITIPOS)
        from CUPOMITEM where CUPOA13ID = :vCUPOA13ID);
  end
end;