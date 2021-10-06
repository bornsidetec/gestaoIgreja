INSERT INTO PERMISSOES (MENU, DEPARTAMENTO, VISUALIZAR, EDITAR)
                VALUES ('Processos > Assembleia Geral', 1, 'S', 'S');
INSERT INTO PERMISSOES (MENU, DEPARTAMENTO, VISUALIZAR, EDITAR)
                VALUES ('Processos > Assembleia Geral', 2, 'N', 'N');
INSERT INTO PERMISSOES (MENU, DEPARTAMENTO, VISUALIZAR, EDITAR)
                VALUES ('Processos > Assembleia Geral', 3, 'N', 'N');
INSERT INTO PERMISSOES (MENU, DEPARTAMENTO, VISUALIZAR, EDITAR)
                VALUES ('Processos > Assembleia Geral', 4, 'N', 'N');
INSERT INTO PERMISSOES (MENU, DEPARTAMENTO, VISUALIZAR, EDITAR)
                VALUES ('Processos > Assembleia Geral', 5, 'N', 'N');

COMMIT WORK;

----------------------------------------------------------------------

CREATE GENERATOR GEN_ASSEMBLEIA_ID;

CREATE TABLE ASSEMBLEIA (
    CODIGO  INTEGER NOT NULL,
    ANO     INTEGER,
    DATA    TIMESTAMP
);

ALTER TABLE ASSEMBLEIA ADD CONSTRAINT PK_ASSEMBLEIA PRIMARY KEY (CODIGO);

/* Trigger: ASSEMBLEIA_BI */
CREATE OR ALTER TRIGGER ASSEMBLEIA_BI FOR ASSEMBLEIA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_assembleia_id,1);
end
