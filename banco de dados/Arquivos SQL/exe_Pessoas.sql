CREATE DATABASE exe_pessoas
USE				exe_pessoas

--Criar tabela
CREATE TABLE Pessoas (
	IdPessoas		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200)
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
VALUES (1, 'S: 33129-3'),(2, 'S: 33431-0'),(3, 'S: 32344-1'),(4, 'S: 93293-1'),(6, 'S: 38218-9');

UPDATE	Telefones							--Mudar o telefone de uma pessoa especifica
SET		Numero = '27865833'
WHERE	IdPessoas = 6

INSERT INTO Email (IdPessoas, Descricao)	--Adicionar um email a uma pessoa especifica
VALUES (1, 'rafa@gmail.com');

DELETE FROM		Pessoas
WHERE			IdPessoas = 5

--FIM DML

--Começo DQL
SELECT * FROM Pessoas
SELECT * FROM Email
SELECT * FROM Telefones
SELECT * FROM Cnh

SELECT Descricao FROM Email WHERE IdPessoas = 1 ;  --Selecionar todos os emails de uma pessoa especifica

SELECT Numero FROM Telefones WHERE IdPessoas = 1 ;  -- Todos os telefones

SELECT * FROM CNH

--FIM DQL