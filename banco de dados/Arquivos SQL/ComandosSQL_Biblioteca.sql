--CRIAR BANCO DE DADOS
CREATE DATABASE Biblioteca_Tarde;

--comando "USE" para usar o banco de dados, pode ser executado varias vezes.
USE Biblioteca_Tarde;

--CRIAR TABELAS
CREATE TABLE Autores (
	IdAutor		INT PRIMARY KEY IDENTITY,
	NomeAutor	VARCHAR (200) NOT NULL
);

CREATE TABLE Generos (
	IdGenero	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR (200) NOT NULL
);

CREATE TABLE  Livros (
	IdLivro		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR (255) NOT NULL,
	IdAutor		INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;

-- para alterar/adicionar uma  nova coluna  "ALTER TABLE "NOME"
ALTER TABLE Generos 
ADD Descricao VARCHAR (255)

--ALTERAR TIPO DE DADO
ALTER TABLE Generos
ALTER COLUMN Descricao CHAR(100);

--EXCLUIR, PARA EXCLUIR USA "DROP TABLE" para tabelas, "DROP COLUMN" para colunas, "DROP DATABASE "NOME" para o banco de dados.