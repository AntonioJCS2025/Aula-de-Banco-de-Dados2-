CREATE DATABASE EscolaDB

USE EscolaDB;

--DROP TABLE Alunos;

CREATE TABLE Alunos( 
id INT IDENTITY(1,1),
Nome VARCHAR (200) NOT NULL,
Idade INT,
Email VARCHAR (200) UNIQUE,
Remover INT
);

ALTER TABLE Alunos 
DROP COLUMN Remover;

INSERT INTO Alunos(Nome, Idade, Email)
	VALUES ('Antonio', 25, 'joao@email.com' );