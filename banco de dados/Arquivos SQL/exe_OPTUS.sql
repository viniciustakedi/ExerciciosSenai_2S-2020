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
	Nome			VARCHAR (200)
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

