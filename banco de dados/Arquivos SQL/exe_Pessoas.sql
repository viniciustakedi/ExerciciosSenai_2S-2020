CREATE DATABASE exe_pessoas
USE				exe_pessoas

--Criar tabela
CREATE TABLE Pessoas (
	IdPessoas	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR (200)
);

CREATE TABLE Email (
	IdUsuario		INT PRIMARY KEY IDENTITY,
	Descricao		VARCHAR (200),
	IdPessoas		INT FOREIGN KEY REFERENCES Pessoas (IdPessoas)
);

CREATE TABLE Telefones (
	IdTelefone		INT PRIMARY KEY IDENTITY,
	Descricao		VARCHAR (200),
	Numero			INT,
	IdPessoas		INT FOREIGN KEY REFERENCES Pessoas (IdPessoas)
);

CREATE TABLE Cnh (
	IdCnh			INT PRIMARY KEY IDENTITY,
	Descricao		VARCHAR (200),
	IdPessoas		INT FOREIGN KEY REFERENCES Pessoas (IdPessoas)
);
--Fim da criação de tabela

--Começo DML LINGUAGEM DE MANIPULAÇÃO DE DADOS
INSERT INTO Pessoas (Nome)
VALUES ('Rafaela'), ('Aline'), ('Denilson'), ('Gabriela'), ('Jamelão'), ('Gary');

INSERT INTO Email (IdPessoas, Descricao)
VALUES (3, 'Deni@gmail.com'), (1, 'Rafinha@yahoo.com'), (2, 'Ventilador@bol.com.br'), (4, 'bibizinha322@gmail.com'), (5, 'saidarua@jamelao.net'), (6, 'mooncake@gmail.com');

INSERT INTO Telefones (IdPessoas, Numero)
VALUES (1, 119343-9938), (2, 112873-9874), (3, 119873-7733), (4, 118765-7633), (5, 118736-9082), (6, 119873-7663);

INSERT INTO Cnh (IdPessoas, Descricao)
VALUES ;


--Começo DQL

SELECT * FROM Pessoas
SELECT * FROM Email
SELECT * FROM Telefones
