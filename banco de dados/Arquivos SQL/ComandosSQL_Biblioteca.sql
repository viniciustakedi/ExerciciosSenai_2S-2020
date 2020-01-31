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

--INSERIR DADOS NA TABELE
INSERT INTO Autores (NomeAutor)
VALUES ('Pericles');

INSERT INTO Generos (Nome)
VALUES ('Terror'), ('Romance'), ('Suspense'), ('Comedia'), ('Geek');

INSERT INTO Livros (Titulo, IdAutor, IdGenero)
VALUES ('Quando as luzes se apagam', 5, 1), ('Romeu e Juliet', 4, 2), ('O misterio do trem', 3 , 3), ('O garoto que queria ser comediante', 2, 4), ('Matematica basica', 1, 5);

--Mudar nome de um genero
UPDATE			Generos
SET				Nome = 'Comedia romantica'
WHERE			IdGenero = 4 

--Alterar genero de um livro
UPDATE			Livros
SET				IdGenero = 4
WHERE			IdLivro= 2

--Apagar um autor
DELETE FROM Autores
WHERE		IdAutor = 6

--Exercicios dia 31/01/2020
SELECT NomeAutor FROM Autores						--Selecionar todos os autores
	
SELECT Nome FROM Generos							--Selecionar todos os generos

SELECT Titulo FROM Livros							--Selecionar todos os livros

SELECT Titulo, IdAutor FROM Livros					--Selecionar todos os livros e seus respectivos autores

SELECT Titulo, IdGenero FROM Livros					--Selecionar todos os livros e seus respectivos generos

SELECT Titulo, IdGenero, IdAutor FROM Livros		--Selecionar todos os livros e seus respectivos generos e autores