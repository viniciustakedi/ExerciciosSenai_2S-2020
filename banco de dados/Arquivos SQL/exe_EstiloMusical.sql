CREATE DATABASE EstilosMusicais;
USE EstilosMusicais;

CREATE TABLE EstiloMusical(
	IdEstiloMusical INT PRIMARY KEY IDENTITY,
	NomeEstilo VARCHAR (200)
);

CREATE TABLE Artistas(
	IdArtista INT PRIMARY KEY IDENTITY,
	NomeArtista VARCHAR (255),
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstiloMusical (IdEstiloMusical)
);