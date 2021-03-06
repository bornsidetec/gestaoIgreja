CREATE GENERATOR GEN_CLASSES_ID;

CREATE TABLE CLASSES (
    CODIGO          INTEGER NOT NULL,
    CATEGORIA       INTEGER,
    DESCRICAO       VARCHAR(50) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CAPACIDADE      INTEGER,
    IDADEINICIAL    INTEGER,
    IDADEFINAL      INTEGER,
    USERINSERT      INTEGER,
    DATAINSERT      TIMESTAMP,
    USERUPDATE      INTEGER,
    DATAUPDATE      TIMESTAMP
);

ALTER TABLE CLASSES ADD CONSTRAINT PK_CLASSES PRIMARY KEY (CODIGO);

ALTER TABLE CLASSES ADD CONSTRAINT FK_CLASSES_1 FOREIGN KEY (CATEGORIA) REFERENCES CATEGORIASCLASSE (CODIGO);

CREATE OR ALTER TRIGGER CLASSES_BI FOR CLASSES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_classes_id,1);
end;