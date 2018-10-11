CREATE trigger tg_prevenda_au0 for prevenda
active after update position 0
AS
begin
  if (NEW.prvdcimport = 'S') then
  BEGIN
    UPDATE mesa
      SET mesacstatus = 'F'
    WHERE mesaicod = NEW.mesaicod AND COALESCE(mesacstatus, 'P') = 'P';
  END
end;