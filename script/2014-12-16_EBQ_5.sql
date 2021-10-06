CREATE GENERATOR GEN_MATRICULAS_ID;

CREATE TABLE MATRICULAS(
    CODIGO      INTEGER NOT NULL,
    CLASSE      INTEGER,
    MEMBRO      INTEGER,
    ALUNO       VARCHAR(50) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    INICIO      TIMESTAMP,
    FIM         TIMESTAMP,
    USERINSERT  INTEGER,
    DATAINSERT  TIMESTAMP,
    USERUPDATE  INTEGER,
    DATAUPDATE  TIMESTAMP
);

ALTER TABLE MATRICULAS ADD CONSTRAINT PK_MATRICULAS PRIMARY KEY (CODIGO);

ALTER TABLE MATRICULAS ADD CONSTRAINT FK_MATRICULAS_1 FOREIGN KEY (CLASSE) REFERENCES CLASSES (CODIGO);

ALTER TABLE MATRICULAS ADD CONSTRAINT FK_MATRICULAS_2 FOREIGN KEY (MEMBRO) REFERENCES MEMBROS (FICHANUMERO);

CREATE OR ALTER TRIGGER MATRICULAS_BI FOR MATRICULAS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_matriculas_id,1);
end;