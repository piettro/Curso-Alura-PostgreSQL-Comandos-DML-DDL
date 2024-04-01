CREATE SEQUENCE i_build;

SELECT NEXTVAL('i_build');

CREATE TEMPORARY TABLE auto (
        id INTEGER PRIMARY KEY DEFAULT i_build,
        nome VARCHAR(30) NOT NULL
);

INSERT INTO auto (nome) VALUES ('Vinicius Dias');
INSERT INTO auto (id, nome) VALUES (2, 'Vinicius Dias');
INSERT INTO auto (nome) VALUES ('Outro nome');

SELECT * FROM auto;
