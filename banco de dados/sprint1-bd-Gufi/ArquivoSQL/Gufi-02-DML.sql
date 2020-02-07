-- DEFINE QUAL BANCO DE DADOS ESTÁ SENDO UTILIZADO
USE Ex_Gufi;

iNSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('ADMINISTRADOR'),('COMUM');

INSERT INTO TipoEvento (TituloTipoEvento)
VALUES ('C#'),('React'),('SQL');

INSERT INTO Instituicao (CNPJ,NomeFantasia,Endereco)
VALUES ('11111111111111','Escola SENAI de Informatica','Alamenda Barao de Limeira, 538');

INSERT INTO Usuario(NomeUsuario,Email,Senha,Genero,DataNascimento,IdTipoUsuario)
VALUES ('Administrador','adm@adm.com','adm123','Nao informado','06/02/2020',1),
('Carol','Carol@email.com','carol123','Feminino','06/02/2020',2),
('Saulo','Saulo@email.com','saulo123','Masculino','06/02/2020',2);

INSERT INTO Evento (NomeEvento,DataEvento,Descricao,AcessoLivre,IdInstituicao,IdTipoEvento)
VALUES ('Introducao C#','07/02/2020','Conhecimentos sobre os pilares da programacao orientada a object',1,1,1),
('Ciclo da Vida','07/02/2020','Como ultilizar o ciclo da vida com Reacts',0,1,2),
('Optimizacao de banco de dados','07/02/2020','Aplicacao de indices clusterizados e nao clusterizados',1,1,3);

INSERT INTO Presenca (Situacao, IdUsuario, IdEvento)
VALUES ('Confirmado',2,3),('Nao Confirmado',2,1),('Confirmado',3,2);


SELECT * FROM Evento
SELECT * FROM Usuario
SELECT * FROM Presenca
SELECT * FROM Evento