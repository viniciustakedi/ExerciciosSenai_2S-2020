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

SELECT * FROM Estilo;
SELECT * FROM Artista;
SELECT * FROM Albuns;
SELECT * FROM Usuario;
SELECT * FROM TipoUsuario;

-- COMANDO DE INSERIR DADOS
INSERT INTO	Estilo (Nome)
VALUES ('Pagode'),('Samba'),('Rock'),('Rap'),('Funk'),('Pop');

INSERT INTO Artista (Nome)
VALUES ('Ferrugem'),('Post Malone'),('MC Kevin');

INSERT INTO Albuns (Nome, DataLancamento, QtdMinutos, Visualisacao, IdArtista, IdEstilo)
VALUES ('Pagode de fim de tarde', '19/03/2020', '140', '5.873.190', 3, 1); 

INSERT INTO TipoUsuario (Titulo)
VALUES ('Administrador'), ('Comum');

INSERT INTO Usuario (Nome, IdTipoUsuario)
VALUES ('ADM', 1), ('Roberto', 2), ('Gary', 2), ('Finn', 2), ('Kleber', 2), ('Rolindo', 2);

--Update para alterar dados
UPDATE	Estilo
SET		Nome = 'Samba'
WHERE	IdEstilo = 2 

UPDATE	Albuns
SET		Visualisacao = ''
WHERE	

--APAGAR DADOS 
DELETE FROM		Estilo 
WHERE			IdEstilo = 6;

DELETE FROM		Albuns
WHERE			IdAlbum = 1;

--APAGAR TODOS OS DADOS DA TABELA	
TRUNCATE TABLE	Usuario;
TRUNCATE TABLE	Albuns;
