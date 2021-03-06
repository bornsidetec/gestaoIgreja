CREATE GENERATOR GEN_FREQUENCIAEBQ_ID;

CREATE TABLE FREQUENCIAEBQ(
    CODIGO        INTEGER NOT NULL,
    DIARIOEBQ     INTEGER,
    MATRICULA     INTEGER
);

ALTER TABLE FREQUENCIAEBQ ADD CONSTRAINT PK_FREQUENCIAEBQ PRIMARY KEY (CODIGO);

ALTER TABLE FREQUENCIAEBQ ADD CONSTRAINT FK_FREQUENCIAEBQ_1 FOREIGN KEY (DIARIOEBQ) REFERENCES DIARIOEBQ (CODIGO);

ALTER TABLE FREQUENCIAEBQ ADD CONSTRAINT FK_FREQUENCIAEBQ_2 FOREIGN KEY (MATRICULA) REFERENCES MATRICULAS (CODIGO);

CREATE OR ALTER TRIGGER FREQUENCIAEBQ_BI FOR FREQUENCIAEBQ
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_frequenciaebq_id,1);
end;