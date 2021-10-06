insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Redes', 1, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Redes', 2, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Redes', 3, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Redes', 4, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Redes', 5, 'N', 'N');

insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Setores', 1, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Setores', 2, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Setores', 3, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Setores', 4, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Setores', 5, 'N', 'N');

insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Areas', 1, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Areas', 2, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Areas', 3, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Areas', 4, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Areas', 5, 'N', 'N');

insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Celulas', 1, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Celulas', 2, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Celulas', 3, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Celulas', 4, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Celulas', 5, 'N', 'N');

insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Movimento > Relatorio Semanal', 1, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Movimento > Relatorio Semanal', 2, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Movimento > Relatorio Semanal', 3, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Movimento > Relatorio Semanal', 4, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Celulas > Movimento > Relatorio Semanal', 5, 'N', 'N');

--------------------------------------------------------------------------------

CREATE GENERATOR GEN_REDES_ID;

CREATE TABLE REDES (
    CODIGO      INTEGER NOT NULL,
    NOME        VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    COR         VARCHAR(50) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PASTOR      INTEGER NOT NULL,
    OBSERVACAO  BLOB SUB_TYPE 1 SEGMENT SIZE 32762 CHARACTER SET WIN1252,
    USERINSERT  INTEGER NOT NULL,
    DATAINSERT  TIMESTAMP NOT NULL,
    USERUPDATE  INTEGER,
    DATAUPDATE  TIMESTAMP
);

ALTER TABLE REDES ADD CONSTRAINT PK_REDES PRIMARY KEY (CODIGO);

ALTER TABLE REDES ADD CONSTRAINT FK_REDES_1 FOREIGN KEY (PASTOR) REFERENCES MEMBROS (FICHANUMERO) ON UPDATE CASCADE;

/* Trigger: REDES_BI */
CREATE OR ALTER TRIGGER REDES_BI FOR REDES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_redes_id,1);
end;


--------------------------------------------------------------------------------

CREATE GENERATOR GEN_AREAS_ID;

CREATE TABLE AREAS (
    CODIGO      INTEGER NOT NULL,
    NOME        VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    REDE       INTEGER NOT NULL,
    SUPERVISOR  INTEGER NOT NULL,
    OBSERVACAO  BLOB SUB_TYPE 1 SEGMENT SIZE 32762 CHARACTER SET WIN1252,
    USERINSERT  INTEGER NOT NULL,
    DATAINSERT  TIMESTAMP NOT NULL,
    USERUPDATE  INTEGER,
    DATAUPDATE  TIMESTAMP
);


ALTER TABLE AREAS ADD CONSTRAINT PK_AREAS PRIMARY KEY (CODIGO);

ALTER TABLE AREAS ADD CONSTRAINT FK_AREAS_1 FOREIGN KEY (REDE) REFERENCES REDES (CODIGO) ON UPDATE CASCADE;
ALTER TABLE AREAS ADD CONSTRAINT FK_AREAS_2 FOREIGN KEY (SUPERVISOR) REFERENCES MEMBROS (FICHANUMERO) ON UPDATE CASCADE;

/* Trigger: AREAS_BI */
CREATE OR ALTER TRIGGER AREAS_BI FOR AREAS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_areas_id,1);
end;

--------------------------------------------------------------------------------

CREATE GENERATOR GEN_SETORES_ID;

CREATE TABLE SETORES (
    CODIGO       INTEGER NOT NULL,
    NOME         VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    AREA         INTEGER NOT NULL,
    SUPERVISOR   INTEGER NOT NULL,
    OBSERVACAO   BLOB SUB_TYPE 1 SEGMENT SIZE 32762 CHARACTER SET WIN1252,
    USERINSERT   INTEGER NOT NULL,
    DATAINSERT   TIMESTAMP NOT NULL,
    USERUPDATE   INTEGER,
    DATAUPDATE   TIMESTAMP
);

ALTER TABLE SETORES ADD CONSTRAINT PK_SETORES PRIMARY KEY (CODIGO);

ALTER TABLE SETORES ADD CONSTRAINT FK_SETORES_1 FOREIGN KEY (AREA) REFERENCES AREAS (CODIGO) ON UPDATE CASCADE;
ALTER TABLE SETORES ADD CONSTRAINT FK_SETORES_2 FOREIGN KEY (SUPERVISOR) REFERENCES MEMBROS (FICHANUMERO) ON UPDATE CASCADE;

/* Trigger: SETORES_BI */
CREATE OR ALTER TRIGGER SETORES_BI FOR SETORES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_setores_id,1);
end;

--------------------------------------------------------------------------------

CREATE GENERATOR GEN_CELULAS_ID;

CREATE TABLE CELULAS (
    CODIGO          INTEGER NOT NULL,
    NOME            VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    LOGO            BLOB SUB_TYPE 1 SEGMENT SIZE 32762 CHARACTER SET WIN1252,
    SETOR           INTEGER NOT NULL,
    LIDER           INTEGER NOT NULL,
    AUXILIAR        INTEGER NOT NULL,
    ANFITRIAO       INTEGER NOT NULL,
    ENDRUA          VARCHAR(50) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ENDNUMERO       VARCHAR(6) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ENDBAIRRO       VARCHAR(50) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ENDCOMPLEMENTO  VARCHAR(30) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ENDCIDADE       VARCHAR(50) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ENDESTADO       VARCHAR(2) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ENDCEP          VARCHAR(8) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    DIASEMANA       INTEGER,
    HORA            VARCHAR(5) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    INAUGURACAO     TIMESTAMP,
    OBSERVACAO      BLOB SUB_TYPE 1 SEGMENT SIZE 32762 CHARACTER SET WIN1252,
    USERINSERT      INTEGER NOT NULL,
    DATAINSERT      TIMESTAMP NOT NULL,
    USERUPDATE      INTEGER,
    DATAUPDATE      TIMESTAMP
);

ALTER TABLE CELULAS ADD CONSTRAINT PK_CELULAS PRIMARY KEY (CODIGO);

ALTER TABLE CELULAS ADD CONSTRAINT FK_CELULAS_1 FOREIGN KEY (SETOR) REFERENCES SETORES (CODIGO) ON UPDATE CASCADE;
ALTER TABLE CELULAS ADD CONSTRAINT FK_CELULAS_2 FOREIGN KEY (LIDER) REFERENCES MEMBROS (FICHANUMERO) ON UPDATE CASCADE;
ALTER TABLE CELULAS ADD CONSTRAINT FK_CELULAS_3 FOREIGN KEY (AUXILIAR) REFERENCES MEMBROS (FICHANUMERO) ON UPDATE CASCADE;
ALTER TABLE CELULAS ADD CONSTRAINT FK_CELULAS_4 FOREIGN KEY (ANFITRIAO) REFERENCES MEMBROS (FICHANUMERO) ON UPDATE CASCADE;

/* Trigger: CELULAS_BI */
CREATE OR ALTER TRIGGER CELULAS_BI FOR CELULAS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_celulas_id,1);
end;

--------------------------------------------------------------------------------

CREATE GENERATOR GEN_RELATORIOSCELULA_ID;

CREATE TABLE RELATORIOSCELULA (
    CODIGO     INTEGER NOT NULL,
    DATA       TIMESTAMP NOT NULL,
    CELULA     INTEGER NOT NULL,
    PRESENTES  INTEGER NOT NULL,
    VISITAS    INTEGER,
    DECISOES   INTEGER,
    OFERTA     NUMERIC(15,2),
    USERINSERT  INTEGER NOT NULL,
    DATAINSERT  TIMESTAMP NOT NULL,
    USERUPDATE  INTEGER,
    DATAUPDATE  TIMESTAMP
);

ALTER TABLE RELATORIOSCELULA ADD CONSTRAINT PK_RELATORIOSCELULA PRIMARY KEY (CODIGO);

ALTER TABLE RELATORIOSCELULA ADD CONSTRAINT FK_RELATORIOSCELULA_1 FOREIGN KEY (CELULA) REFERENCES CELULAS (CODIGO) ON UPDATE CASCADE;

/* Trigger: RELATORIOSCELULA_BI */
CREATE OR ALTER TRIGGER RELATORIOSCELULA_BI FOR RELATORIOSCELULA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_relatorioscelula_id,1);
end;

--------------------------------------------------------------------------------

CREATE GENERATOR GEN_MULTIPLICACOES_ID;

CREATE TABLE MULTIPLICACOES (
    CODIGO       INTEGER NOT NULL,
    DATA         TIMESTAMP NOT NULL,
    CELULA       INTEGER NOT NULL,
    CELULAFILHA  INTEGER,
    STATUS       SMALLINT
);

ALTER TABLE MULTIPLICACOES ADD CONSTRAINT PK_MULTIPLICACOES PRIMARY KEY (CODIGO);

ALTER TABLE MULTIPLICACOES ADD CONSTRAINT FK_MULTIPLICACOES_1 FOREIGN KEY (CELULA) REFERENCES CELULAS (CODIGO) ON UPDATE CASCADE;
ALTER TABLE MULTIPLICACOES ADD CONSTRAINT FK_MULTIPLICACOES_2 FOREIGN KEY (CELULAFILHA) REFERENCES CELULAS (CODIGO) ON UPDATE CASCADE;

/* Trigger: MULTIPLICACOES_BI */
CREATE OR ALTER TRIGGER MULTIPLICACOES_BI FOR MULTIPLICACOES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_multiplicacoes_id,1);
end;
