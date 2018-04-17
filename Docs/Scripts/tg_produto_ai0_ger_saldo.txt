CREATE OR ALTER trigger TG_PRODUTO_AI0_GER_SALDO for PRODUTO
active after insert position 0
AS
begin
  /* Trigger text */
  INSERT INTO PRODUTOSALDO (empricod, prodicod, psldn3qtde, psldn3qtdmin, psldn3qtdmax,REGISTRO)
  SELECT c.empricod, A.prodicod, 0, 0, 0, current_timestamp FROM PRODUTO A
  inner join empresa c on 0 = 0
  LEFT JOIN PRODUTOSALDO B ON B.prodicod = A.prodicod
   AND B.empricod = c.empricod
  WHERE
    B.prodicod IS NULL;

end
