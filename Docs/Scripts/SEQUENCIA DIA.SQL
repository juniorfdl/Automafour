DROP trigger prevenda_bi0;
ALTER TABLE PREVENDA ADD SEQ_DIA INTEGER;
ALTER TABLE CUPOM ADD SEQ_DIA INTEGER;

REATE TABLE SEQUENCIAL (
    DATA        DATE NOT NULL,
    SEQUENCIAL  INTEGER
);

ALTER TABLE SEQUENCIAL ADD CONSTRAINT PK_SEQUENCIAL PRIMARY KEY (DATA);



CREATE OR ALTER trigger cupom_bi_SEQ_DIA for cupom
active before insert position 0
as
declare variable VSEQUENCIAL integer;
declare variable VULTIMADATA date;
begin
  VULTIMADATA = cast(extract(day from current_timestamp) || '.' || extract(month from current_timestamp) || '.' || extract(year from current_timestamp) as date);
  for select max(coalesce(SEQUENCIAL, 0))
      from SEQUENCIAL
      where cast(extract(day from DATA) || '.' || extract(month from DATA) || '.' || extract(year from DATA) as date)
      = :VULTIMADATA into :VSEQUENCIAL
  do
  begin
    if (VSEQUENCIAL is null) then
      VSEQUENCIAL = 1;
    else
      vsequencial = :vsequencial + 1;
    update or insert into SEQUENCIAL (DATA, SEQUENCIAL) values (:VULTIMADATA, :VSEQUENCIAL);
  end
  update CUPOM set NEW.SEQ_DIA = :VSEQUENCIAL;
end;

CREATE OR ALTER trigger prevenda_bi_SEQ_DIA for prevenda
active before insert position 0
as
declare variable VSEQUENCIAL integer;
declare variable VULTIMADATA date;
begin
  VULTIMADATA = cast(extract(day from current_timestamp) || '.' || extract(month from current_timestamp) || '.' || extract(year from current_timestamp) as date);
  for select max(coalesce(SEQUENCIAL, 0))
      from SEQUENCIAL
      where cast(extract(day from DATA) || '.' || extract(month from DATA) || '.' || extract(year from DATA) as date) = :VULTIMADATA
      into :VSEQUENCIAL
  do
  begin
    if (VSEQUENCIAL is null) then
      VSEQUENCIAL = 1;
    else
      vsequencial = :vsequencial + 1;
    update or insert into SEQUENCIAL (DATA, SEQUENCIAL) values (:VULTIMADATA, :VSEQUENCIAL);
  end
  update PREVENDA set NEW.SEQ_DIA = :VSEQUENCIAL;
end;
