CREATE DATABASE Alura-PostgreSQL: comandos DML e DDL
    WITH
    OWNER = postgres
    ENCONDING = "UTF8"
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE IF NOT EXISTS academico.aluno (
    id SERIAL PRIMARY KEY;
    primeiro_nome VARCHAR(255) NOT NULL NOT NULL CHECK (coluna <> '');
    ultimo_nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL DEFAULT NOW()::Date
);

CREATE TEMPORARY TABLE a (
    coluna1 VARCHAR(255) NOT NULL CHECK(coluna1 <> ''),
    coluna2 VARCHAR(255) NOT NULL,
    UNIQUE (coluna1, coluna2)
);

INSERT INTO a VALUES ('a','c');
INSERT INTO a VALUES ('Vinicius','d');

ALTER TABLE a RENAME TO teste;

ALTER TABLE teste RENAME coluna1 TO primeira_coluna;
ALTER TABLE teste RENAME coluna2 TO segunda_coluna;

SELECT * FROM teste;