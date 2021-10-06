insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Professores', 1, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Professores', 2, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Professores', 3, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Professores', 4, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Professores', 5, 'S', 'S');

insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Classes', 1, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Classes', 2, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Classes', 3, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Classes', 4, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Classes', 5, 'S', 'S');

insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Matriculas', 1, 'S', 'S');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Matriculas', 2, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Matriculas', 3, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Matriculas', 4, 'N', 'N');
insert into Permissoes (Menu, Departamento, Visualizar, Editar) Values ('Escola Biblica > Matriculas', 5, 'S', 'S');

--------------------------------------------------------------------------------

CREATE GENERATOR GEN_CATEGORIASCLASSE_ID;

CREATE TABLE CATEGORIASCLASSE(
    CODIGO        INTEGER NOT NULL,
    DESCRICAO     VARCHAR(50) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PRINCIPAL     CHAR(1) CHARACTER SET WIN1252 COLLATE WIN_PTBR
);

ALTER TABLE CATEGORIASCLASSE ADD CONSTRAINT PK_CATEGORIASCLASSE PRIMARY KEY (CODIGO);

CREATE OR ALTER TRIGGER CATEGORIASCLASSE_BI FOR CATEGORIASCLASSE
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_categoriasclasse_id,1);
end;

--------------------------------------------------------------------------------

insert into CategoriasClasse (Codigo, Descricao, Principal) values(1, 'Crianças', 'S');
insert into CategoriasClasse (Codigo, Descricao, Principal) values(2, 'Juniores', 'S');
insert into CategoriasClasse (Codigo, Descricao, Principal) values(3, 'Adolescentes', 'S');
insert into CategoriasClasse (Codigo, Descricao, Principal) values(4, 'Jovens', 'S');
insert into CategoriasClasse (Codigo, Descricao, Principal) values(5, 'Adultos', 'S');
insert into CategoriasClasse (Codigo, Descricao, Principal) values(6, 'Homens', 'S');
insert into CategoriasClasse (Codigo, Descricao, Principal) values(7, 'Mulheres', 'S');
insert into CategoriasClasse (Codigo, Descricao, Principal) values(8, 'Casais', 'S');
insert into CategoriasClasse (Codigo, Descricao, Principal) values(9, 'Novos Convertidos', 'S');

--------------------------------------------------------------------------------

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

--------------------------------------------------------------------------------

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

--------------------------------------------------------------------------------

CREATE GENERATOR GEN_PROFESSORES_ID;

CREATE TABLE PROFESSORES (
    CODIGO  INTEGER NOT NULL,
    MEMBRO  INTEGER,
    STATUS  INTEGER
);

ALTER TABLE PROFESSORES ADD CONSTRAINT UNQ1_PROFESSORES UNIQUE (MEMBRO);

ALTER TABLE PROFESSORES ADD CONSTRAINT PK_PROFESSORES PRIMARY KEY (CODIGO);

ALTER TABLE PROFESSORES ADD CONSTRAINT FK_PROFESSORES_1 FOREIGN KEY (MEMBRO) REFERENCES MEMBROS (FICHANUMERO);

CREATE OR ALTER TRIGGER PROFESSORES_BI FOR PROFESSORES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_professores_id,1);
end;

--------------------------------------------------------------------------------

CREATE GENERATOR GEN_DIARIOEBQ_ID;

CREATE TABLE DIARIOEBQ(
    CODIGO      INTEGER NOT NULL,
    CLASSE      INTEGER,
    PROFESSOR   INTEGER,
    DATA        TIMESTAMP,
    VISITANTES  INTEGER,
    BIBLIAS     INTEGER,
    REVISTAS    INTEGER,
    OFERTAS     NUMERIC(15,2),
    OBSERVACOES BLOB SUB_TYPE 1 SEGMENT SIZE 32762 CHARACTER SET WIN1252,
    USERINSERT  INTEGER,
    DATAINSERT  TIMESTAMP,
    USERUPDATE  INTEGER,
    DATAUPDATE  TIMESTAMP
);

ALTER TABLE DIARIOEBQ ADD CONSTRAINT PK_DIARIOEBQ PRIMARY KEY (CODIGO);

ALTER TABLE DIARIOEBQ ADD CONSTRAINT FK_DIARIOEBQ_1 FOREIGN KEY (CLASSE) REFERENCES CLASSES (CODIGO);

ALTER TABLE DIARIOEBQ ADD CONSTRAINT FK_DIARIOEBQ_2 FOREIGN KEY (PROFESSOR) REFERENCES PROFESSORES (CODIGO);

CREATE OR ALTER TRIGGER DIARIOEBQ_BI FOR DIARIOEBQ
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_diarioebq_id,1);
end;

--------------------------------------------------------------------------------

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

