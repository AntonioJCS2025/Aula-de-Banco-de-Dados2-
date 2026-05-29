CREATE DATABASE LocadoraDB;

USE LocadoraDB;

CREATE TABLE Diretores (
id INT PRIMARY KEY IDENTITY,	
Nome VARCHAR (200) NOT NULL
);

CREATE TABLE Generos (
id INT PRIMARY KEY IDENTITY,	
Nome VARCHAR (200) NOT NULL UNIQUE
);

--DROP TABLE Filmes

--CREATE TABLE Filmes (
--Id INT PRIMARY KEY IDENTITY,
--Titulo VARCHAR (150) NOT NULL,
--Ano INT,
--IdDiretor INT,
--FOREIGN KEY ( IdDiretor )
	--REFERENCES Diretores (Id)
--);

CREATE TABLE Filmes (
id INT PRIMARY KEY IDENTITY,
Titulo VARCHAR (150) NOT NULL,
Ano INT,
IdDiretor INT,
FOREIGN KEY ( IdDiretor )
	REFERENCES Diretores (Id)
);

CREATE TABLE FilmesGenero (
id INT PRIMARY KEY IDENTITY,
IdFilme INT,
IdGenero INT,
FOREIGN KEY ( IdFilme )
	REFERENCES Filmes (Id),
FOREIGN KEY ( IdGenero )
	REFERENCES Generos (Id),
);