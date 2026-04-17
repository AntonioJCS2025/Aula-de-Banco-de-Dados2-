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
--DROP COLUMN Remover;

INSERT INTO Alunos(Nome, Idade, Email)
	VALUES ('Antonio', 25, 'joao@email.com');

INSERT INTO Alunos(Nome, Idade, Email)
	VALUES ('Luiza', 13, 'luiza@email.com'), 
	('Manoel', 32, 'manoel@email.com');

--Cuidade ao atualizar o UPDATE
--UPDATE Alunos
	--SET Idade = 19;

--UPDATE Alunos
	--SET Idade = 13
	--WHERE Nome = 'Luiza';

--UPDATE Alunos
	--SET Idade = 26
	--WHERE Nome = 'Manoel';

INSERT INTO Alunos(Nome, Idade, Email)
	VALUES ('Manoel', 32, 'manoel2@email.com');

UPDATE Alunos
	SET Idade = 32
	WHERE Nome = 'Manoel';