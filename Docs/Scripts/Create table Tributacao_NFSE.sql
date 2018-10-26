CREATE TABLE TRIBUTACAO_NFSE (
    ID                 INTEGER NOT NULL,
    CODIGO_TRIBUTACAO  VARCHAR(15),
    SUBITEM            VARCHAR(10),
    ALIQUOTA           NUMERIC(15,3),
    DESCRICAO_SERVICO  VARCHAR(100)
);
ALTER TABLE TRIBUTACAO_NFSE ADD CONSTRAINT UNQ1_TRIBUTACAO_NFSE UNIQUE (CODIGO_TRIBUTACAO, SUBITEM, ALIQUOTA);
ALTER TABLE TRIBUTACAO_NFSE ADD CONSTRAINT PK_TRIBUTACAO_NFSE PRIMARY KEY (ID);