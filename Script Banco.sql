CREATE DATABASE PROJETO1_DESKTOP;
USE PROJETO1_DESKTOP;
CREATE TABLE NIVEL(
	ID_NIVEL INT PRIMARY KEY NOT NULL,
    DESCRICAO VARCHAR(100)
);
CREATE TABLE USUARIO(
	ID_USUARIO INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	NOME VARCHAR(100),
    EMAIL VARCHAR(100),
    SENHA VARCHAR(100),
    ID_NIVEL INT,
    FOREIGN KEY (ID_NIVEL) REFERENCES NIVEL(ID_NIVEL)
);
INSERT INTO NIVEL(ID_NIVEL, DESCRICAO) VALUES (1, "ADMIN");
INSERT INTO NIVEL(ID_NIVEL, DESCRICAO) VALUES (2, "USUARIO");

SELECT * FROM NIVEL;