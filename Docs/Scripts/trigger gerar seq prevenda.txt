CREATE OR ALTER trigger prevenda_bi0 for prevenda
active before insert position 0
as
declare variable VULTIMADATA date;
declare variable SEQUENCIA integer;
begin
  VULTIMADATA = cast(extract(day from current_timestamp) || '.' || extract(month from current_timestamp) || '.' || extract(year from current_timestamp) as date);
  for select coalesce(max(SEQ_DIA), 0)
      from PREVENDA P
      where cast(extract(day from p.PDVDDHVENDA) || '.' ||
                 extract(month from p.PDVDDHVENDA) || '.' ||
                 extract(year from p.PDVDDHVENDA) as date) = :VULTIMADATA
      into :SEQUENCIA
  do
  begin
    update prevenda set new.seq_dia = :sequencia + 1;
  end
end;