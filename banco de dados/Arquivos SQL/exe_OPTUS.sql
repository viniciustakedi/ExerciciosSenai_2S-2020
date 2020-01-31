CREATE DATABASE OPTUS;
USE OPTUS;

CREATE TABLE TipoUsuario (
	IdTipoUsuario	INT PRIMARY KEY IDENTITY,
	Titulo			VARCHAR(200)
);

CREATE TABLE Usuario (
	IdUsuario		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200),
	IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Artista (
	IdArtista		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200)
);

CREATE TABLE Estilo (
	IdEstilo		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200) UNIQUE
);

CREATE TABLE Albuns (
	IdAlbum			INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200),
	DataLancamento	DATE,
	QtdMinutos		VARCHAR (200),
	Visualisacao	VARCHAR (200),
	IdArtista		INT FOREIGN KEY REFERENCES Artista (IdArtista),
	IdEstilo		INT FOREIGN KEY REFERENCES Estilo (IdEstilo)
);




--DML LINGUAGEM DE MANIPULAÇÃO DE DADOS

-- COMANDO DE INSERIR DADOS
INSERT INTO	Estilo (Nome)
VALUES	('Pagode'),('Samba'),('Rock'),('Rap'),('Funk'),('Pop');

INSERT INTO Artista (Nome)
VALUES	('Ferrugem'),('Post Malone'),('MC Kevin');

INSERT INTO Albuns (Nome, DataLancamento, QtdMinutos, Visualisacao, IdArtista, IdEstilo)
VALUES	('Estilo tropical', '19/03/2020', '234', '2.190', 6, 1); 

INSERT INTO TipoUsuario (Titulo)
VALUES	('Administrador'), ('Comum');

INSERT INTO Usuario (Nome, IdTipoUsuario)
VALUES	('ADM', 1), ('Roberto', 2), ('Gary', 2), ('Finn', 2), ('Kleber', 2), ('Rolindo', 2);

--Update para alterar dados
UPDATE			Estilo
SET				Nome = 'Samba'
WHERE			IdEstilo = 2 

--APAGAR DADOS 
DELETE FROM		Estilo 
WHERE			IdEstilo = 6;

DELETE FROM		Albuns
WHERE			IdAlbum = 1;

--APAGAR TODOS OS DADOS DA TABELA	
TRUNCATE TABLE	Usuario;
TRUNCATE TABLE	Albuns;

--DQL PARA FAZER A CONSULTA DE DADOS (linguagem de consulta de dados)

--OPTUS DQL (EXERCICIOS QUE PROFESSORES PEDIRAM HOJE (31/01/2020) COMEÇO
SELECT * FROM Albuns WHERE IdArtista = 2;											--selecionar os albuns do mesmo artista

SELECT * FROM Albuns WHERE DataLancamento = '19/03/2020';							--Selecionar albuns lançados na mesma data

SELECT IdArtista, Nome, IdEstilo FROM Albuns WHERE IdEstilo = '8';					--Selecionar os artistas do mesmo estilo musical

SELECT Nome, IdArtista, DataLancamento FROM Albuns ORDER BY DataLancamento DESC;	--Selecionar albuns e artistas e ordenar a data de lançamento em ordem decrescente

--FIM EXERCICIOS PEDIDOS DIA 31/01/2020


--SELECT * FROM (PARA SELECIONAR TODAS AS INFORMAÇÕES DA TABELA)
SELECT * FROM Estilo;
SELECT * FROM Artista;
SELECT * FROM Albuns;
SELECT * FROM Usuario;
SELECT * FROM TipoUsuario;

--SELECT "Nome" FROM Artista (para selecionar algo especifico da tabela)
SELECT Nome FROM Artista;

--SELECT "Nome, DataLancamento" FROM "Albuns" (para selecionar mais de um item que vc deseja na tabela)
SELECT Nome, DataLancamento FROM Albuns;

--Operadores < > = 

--SELECT * FROM "Albuns" WHERE "IdAlbum = 1" (para procurar por ids iguais nas tabelas)
SELECT * FROM Albuns WHERE IdAlbum = 2;

SELECT * FROM Albuns WHERE IdAlbum > 2;

--OR/OU
SELECT	Nome, QtdMinutos FROM Albuns WHERE (DataLancamento IS NULL) OR (Visualisacao IS NULL);

--LIKE=COMO | COMPARAÇÃO DE TEXTO
SELECT		IdAlbum, Nome FROM Albuns
WHERE		Nome LIKE 'Pagode%'		--começo da frase

SELECT		IdAlbum, Nome FROM Albuns
WHERE		Nome LIKE '%Pagode'		--fim da frase

SELECT		IdAlbum, Nome FROM Albuns
WHERE		Nome LIKE '%Pagode%'	--meio da frase

--ORDENAÇÃO 
SELECT		Nome FROM Albuns
ORDER BY	Nome;

SELECT		IdAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY	QtdMinutos;

-- Ordenação inveretida (Do maior para o menor)
SELECT		IdAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY	QtdMinutos DESC;

SELECT		IdAlbum, Nome, DataLancamento FROM Albuns 
ORDER BY	DataLancamento ASC;

--count
SELECT COUNT (IdAlbum) FROM Albuns;